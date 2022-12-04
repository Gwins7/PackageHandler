package PackageHandler.Tx

import PackageHandler.Misc._
import chisel3._
import chisel3.util._

class TxPipelineHandler extends Module with NetFunc {
  val io = IO(new Bundle {
    val in = new TxPipelineAxisIO()
    val out = Flipped(new TxPipelineAxisIO())
  })
  val in_shake_hand = io.in.tvalid & io.in.tready
  val out_shake_hand = io.out.tready & io.out.tvalid

  val in_reg = RegEnable(Cat(io.in.tx_info.asUInt,io.in.tdata,io.in.tvalid,io.in.tlast),1.U,in_shake_hand).asTypeOf(new TxPipelineHandlerReg)
  val first_beat_reg = RegEnable(in_reg.tlast,true.B,in_shake_hand)
  val extern_config_reg = RegEnable(io.in.extern_config.asUInt,0.U,in_shake_hand).asTypeOf(new ExternConfig)

  val in_reg_used_reg = RegInit(false.B)
  when (in_shake_hand){
    in_reg_used_reg := true.B
  }.elsewhen(out_shake_hand){
    in_reg_used_reg := false.B
  }

  io.in.tready  := WireDefault(io.out.tready | !in_reg_used_reg)
  io.out.tdata  := WireDefault(in_reg.tdata)
  io.out.tvalid := WireDefault(in_reg.tvalid & in_reg_used_reg)
  io.out.tlast  := WireDefault(in_reg.tlast)
  io.out.tx_info := WireDefault(io.in.tx_info)
  io.out.extern_config := WireDefault(extern_config_reg)
}

class TxChksumGenerator extends TxPipelineHandler {
  val cal_tdata = Mux(in_shake_hand,io.in.tdata,in_reg.tdata)
  // ip header (without existed checksum)
  val ip_chksum_cal = Module(new ReduceAddSync(10,32))
  for (i <- 0 until 10) {
    if (i == 5) ip_chksum_cal.io.in_vec(i) := 0.U
    else ip_chksum_cal.io.in_vec(i) := change_order_16(cal_tdata(16*i+127,16*i+112))
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
    if (i==8 || (i>=13 && i!=25)) tcp_hdr_chksum_cal.io.in_vec(i) := change_order_16(cal_tdata(16*i+15,16*i))
    else if (i==11) tcp_hdr_chksum_cal.io.in_vec(i) := cal_tdata(16*i+15,16*i+8)
    else tcp_hdr_chksum_cal.io.in_vec(i) := 0.U
  }
  val tcp_hdr_chksum_result = tcp_hdr_chksum_cal.io.out_sum - 20.U // - ip header length

  val cal_ip_chksum_reg = RegInit(0.U(32.W))
  val cal_tcp_chksum_reg = RegInit(0.U(32.W))

  when (in_shake_hand) {
    when (first_beat_reg) {
      cal_ip_chksum_reg := ip_chksum_result
      cal_tcp_chksum_reg := tcp_hdr_chksum_result
    }.otherwise{
      cal_tcp_chksum_reg := cal_tcp_chksum_reg + tcp_pld_chksum_result
    }
  }
  io.out.tx_info.ip_chksum := Mux(first_beat_reg,ip_chksum_result,cal_ip_chksum_reg)
  io.out.tx_info.tcp_chksum := Mux(first_beat_reg,tcp_hdr_chksum_result,cal_tcp_chksum_reg + tcp_pld_chksum_result)
}

//class TxRC4Encrypter extends TxPipelineHandler {
//
//}