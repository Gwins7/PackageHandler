package PackageHandler.Rx

import PackageHandler.Misc._
import chisel3._
import chisel3.util._

class RxPipelineHandler extends Module with NetFunc{
  val io = IO(new Bundle {
    val in = new RxPipelineAxisIO()
    val out = Flipped(new RxPipelineAxisIO())
  })
  val in_shake_hand  = io.in.tready  & io.in.tvalid
  val out_shake_hand = io.out.tready & io.out.tvalid
  val in_reg = RegEnable(Cat(io.in.rx_info.asUInt,io.in.tuser,io.in.tdata,io.in.tvalid,io.in.tlast),1.U,in_shake_hand).asTypeOf(new RxPipelineHandlerReg)

  val first_beat_reg = RegEnable(in_reg.tlast,true.B,in_shake_hand)
  val in_reg_used = RegInit(false.B)
  when (in_shake_hand){
    in_reg_used := true.B
  }.elsewhen(out_shake_hand){
    in_reg_used := false.B
  }

  io.out.tuser   := WireDefault(in_reg.tuser)
  io.out.tdata   := WireDefault(in_reg.tdata)
  io.out.tvalid  := WireDefault(in_reg.tvalid & in_reg_used)
  io.out.tlast   := WireDefault(in_reg.tlast)
  io.out.rx_info := WireDefault(in_reg.rx_info)
  io.in.tready   := WireDefault(io.out.tready | !in_reg_used)
  io.out.extern_config := io.in.extern_config

//  save the qid calculated in first beat and use it for whole packet
//  val cal_qid = WireDefault(in_reg.rx_info.qid)
//  val cur_packet_qid_reg = RegEnable(cal_qid,0.U(6.W),first_beat_reg)
//  io.out.rx_info.qid := Mux(first_beat_reg,cal_qid,cur_packet_qid_reg)
}

class RxChksumVerifier extends RxPipelineHandler {
/*
  Calculate chksum to be checked later
  attention: the real verification is in RxBufferFifo
 */
val cal_tdata = Mux(in_shake_hand,io.in.tdata,in_reg.tdata)
  // ip header (without existed checksum)
  val ip_chksum_cal = Module(new ReduceAddSync(10,32))
  for (i <- 0 until 10) {
    ip_chksum_cal.io.in_vec(i) := change_order_16(cal_tdata(16*i+127,16*i+112))
  }
  val ip_chksum_result = ip_chksum_cal.io.out_sum

  // tcp payload
  val tcp_pld_chksum_cal = Module(new ReduceAddSync(32,32))
  for (i <- 0 until 32) {
    tcp_pld_chksum_cal.io.in_vec(i) := change_order_16(cal_tdata(16*i+15,16*i))
  }
  val tcp_pld_chksum_result = tcp_pld_chksum_cal.io.out_sum

  // tcp header (attention: some information from ip header is needed) (without existed checksum)
  val tcp_hdr_chksum_cal = Module(new ReduceAddSync(32,32))
  for (i <- 0 until 32) {
    if (i==8 || i>=13) tcp_hdr_chksum_cal.io.in_vec(i) := change_order_16(cal_tdata(16*i+15,16*i))
    else if (i==11) tcp_hdr_chksum_cal.io.in_vec(i) := cal_tdata(16*i+15,16*i+8)
    else tcp_hdr_chksum_cal.io.in_vec(i) := 0.U
  }
  val tcp_hdr_chksum_result = tcp_hdr_chksum_cal.io.out_sum - 20.U // - ip header length

  val cal_ip_chksum = RegInit(0.U(32.W))
  val cal_tcp_chksum = RegInit(0.U(32.W))

  when (in_shake_hand) {
    when (first_beat_reg) {
      cal_ip_chksum := ip_chksum_result
      cal_tcp_chksum := tcp_hdr_chksum_result
    }.otherwise{
      cal_tcp_chksum := cal_tcp_chksum + tcp_pld_chksum_result
    }
  }
  io.out.rx_info.ip_chksum := Mux(first_beat_reg,ip_chksum_result,cal_ip_chksum)
  io.out.rx_info.tcp_chksum := Mux(first_beat_reg,tcp_hdr_chksum_result,cal_tcp_chksum + tcp_pld_chksum_result)

}
/*class IPFilter extends RxPipelineHandler {
  when (first_beat_reg){
    val src_ip   = change_order_32(in_reg.tdata(239,208))
    val dst_ip   = change_order_32(in_reg.tdata(271,240))
    val src_port = change_order_16(in_reg.tdata(287,272))
    val dst_port = change_order_16(in_reg.tdata(303,288))
//    cal_qid := 0.U
  }
  .elsewhen (io.in.extern_config.c2h_ipfilter_hash_seed === 1.U) {
    cal_qid := 1.U
  }
}
 */

// if we want to cal qid not only by the first beat but also by the whole packet,
// we need to add fifo in this pipeline, and use qid calculated in tlast beat