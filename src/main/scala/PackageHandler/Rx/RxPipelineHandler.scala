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
  val extern_config_reg = RegEnable(io.in.extern_config.asUInt,0.U,in_shake_hand).asTypeOf(new ExternConfig)

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
  io.out.extern_config := WireDefault(extern_config_reg)
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
class RxRSSHashFilter extends RxPipelineHandler {

  val hash_key = extern_config_reg.c2h_hash_seed // symmetric: fill(20,"h_6d5a".U), we just set 6d5a

  val cal_tdata = Mux(in_shake_hand,io.in.tdata,in_reg.tdata)
  val src_ip   = change_order_32(cal_tdata(239,208))
  val dst_ip   = change_order_32(cal_tdata(271,240))
  val src_port = change_order_16(cal_tdata(287,272))
  val dst_port = change_order_16(cal_tdata(303,288))
  val info = Cat(src_ip,dst_ip,src_port,dst_port) // 96 bits

  val cal_hash_key = Wire(Vec(96,UInt(32.W)))
  for (i <- 0 until 96) {
    if (i%16==15) cal_hash_key(i) := Mux(info(i),Cat(hash_key(15,0),hash_key(15,0)),0.U)
    else cal_hash_key(i) := Mux(info(i),Cat(hash_key(i%16,0),hash_key(15,0),hash_key(15,(i%16)+1)),0.U)
  }
  val hash_xor_sync = Module(new ReduceXorSync(96,32))
  val hash_xor_result = Wire(UInt(32.W))
  for (i <- 0 until 96) {
    hash_xor_sync.io.in_vec(i) := cal_hash_key(i)
  }
  hash_xor_result := hash_xor_sync.io.out_sum

  //  save the qid calculated in first beat and use it for whole packet
    val cal_qid = hash_xor_result(1,0) & extern_config_reg.c2h_hash_mask(1,0)
    val cur_packet_qid_reg = RegEnable(cal_qid,0.U,in_shake_hand & first_beat_reg)
    io.out.rx_info.qid := Mux(first_beat_reg,cal_qid,cur_packet_qid_reg)
}


// if we want to cal qid not only by the first beat but also by the whole packet,
// we need to add fifo in this pipeline, and use qid calculated in tlast beat