package PackageHandler

import chisel3._
import chisel3.util._

class RxPipelineHandlerReg extends Bundle {
  val tdata  = UInt(512.W)
  val tvalid = Bool()
  val tlast  = Bool()
  val tlen = UInt(16.W)
  val qid  = UInt(6.W)
}

class RxPipelineHandler extends Module with netfunc{
  val io = IO(new Bundle {
    val in = new RxPipelineHandlerIO()
    val out = Flipped(new RxPipelineHandlerIO())
  })
  val in_shake_hand  = io.in.tready  & io.in.tvalid
  val out_shake_hand = io.out.tready & io.out.tvalid
  val in_reg = RegEnable(Cat(io.in.tdata,io.in.tvalid,io.in.tlast,io.in.tlen,io.in.qid),0.U,in_shake_hand).asTypeOf(new RxPipelineHandlerReg)

  val first_beat_reg = RegEnable(in_reg.tlast,true.B,in_shake_hand)
  val in_reg_used = RegInit(false.B)
  when (in_shake_hand){
    in_reg_used := true.B
  }.elsewhen(out_shake_hand){
    in_reg_used := false.B
  }

  val cal_qid = WireDefault(in_reg.qid)
  val cur_packet_qid_reg = RegEnable(cal_qid,0.U(6.W),first_beat_reg)
  io.out.qid := WireDefault(Mux(first_beat_reg,cal_qid,cur_packet_qid_reg))

  io.out.tdata  := WireDefault(in_reg.tdata)
  io.out.tvalid := WireDefault(in_reg.tvalid)
  io.out.tlast  := WireDefault(in_reg.tlast)
  io.out.tlen   := WireDefault(in_reg.tlen)
  io.in.tready  := WireDefault(io.out.tready | !in_reg_used)
  io.out.extern_config := io.in.extern_config
}

class IPFilter extends RxPipelineHandler {
  when (first_beat_reg){
    val src_ip = change_order_32(in_reg.tdata(239,208))
    val dst_ip = change_order_32(in_reg.tdata(271,240))
//    cal_qid := 0.U
  }
  .elsewhen (io.in.extern_config.c2h_ipfilter_hash_seed === 1.U) {
    cal_qid := 1.U
  }
}

// if we want to cal qid not only by the first beat but also by the whole packet,
// we need to add fifo in this pipeline, and use qid calculated in tlast beat