package PackageHandler.Rx.PipelineHandler

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
//  val extern_config_reg = RegEnable(io.in.extern_config.asUInt,0.U,in_shake_hand).asTypeOf(new ExternConfig)

  val first_beat_reg = RegEnable(in_reg.tlast,true.B,in_shake_hand)
  val in_reg_used_reg = RegInit(false.B) // used when pipeline is stuck
  when (in_shake_hand){
    in_reg_used_reg := true.B
  }.elsewhen(out_shake_hand){
    in_reg_used_reg := false.B //!
  }

  io.out.tuser   := WireDefault(in_reg.tuser)
  io.out.tdata   := WireDefault(in_reg.tdata)
  io.out.tvalid  := WireDefault(in_reg.tvalid & in_reg_used_reg)
  io.out.tlast   := WireDefault(in_reg.tlast)
  io.out.rx_info := WireDefault(in_reg.rx_info)
  io.in.tready   := WireDefault(io.out.tready | !in_reg_used_reg)
  io.out.extern_config := WireDefault(io.in.extern_config)
}

// 8 bit op:
// op = 00000000: do nothing
// op(3) : RxStrMatcher -> op(2,0): function(<(4),>(2),=(1),!=(0))
// op(4) : RxStrSearcher
// op(5) : RxRSSHasher
// op(6) : ChksumGenerator / ChksumVerifier (control in Tx/RxBufferFifo)
// op(7) : RxRESearcher

// notice:
// if we want to cal qid not only by the first beat but also by the whole packet,
// we need to add fifo in this pipeline, and use qid calculated in tlast beat