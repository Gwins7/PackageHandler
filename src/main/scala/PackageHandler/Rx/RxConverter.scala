package PackageHandler.Rx

import PackageHandler.Misc._
import chisel3._
import chisel3.util._

class RxConverter extends Module{
  val io = IO(new Bundle {
    val in = new CMACAxisIO()
    val out = Flipped(new RxPipelineAxisIO())

    val extern_config = Input(new ExternConfig())
  })
  /* calculate tlen and fill not-64-byte-aligned packets' content with 0. */
  val in_shake_hand = io.in.tvalid & io.in.tready
  val out_shake_hand = io.out.tready & io.out.tvalid
  val in_reg = RegEnable(Cat(io.in.tuser,io.in.tkeep,io.in.tdata,io.in.tvalid,io.in.tlast),1.U,in_shake_hand).asTypeOf(new RxConverterReg)
  val first_beat_reg = RegEnable(in_reg.tlast,true.B,in_shake_hand)
  val in_reg_used = RegInit(false.B)
  when (in_shake_hand){
    in_reg_used := true.B
  }.elsewhen(out_shake_hand){
    in_reg_used := false.B
  }
  val extern_config_reg = RegInit(0.U.asTypeOf(new ExternConfig()))
  extern_config_reg := io.extern_config

  val cal_tkeep = Mux(in_shake_hand,io.in.tkeep,in_reg.tkeep)
  val burst_size_cal = Module(new ReduceAddSync(64,8))
  for (i <- 0 until 64) burst_size_cal.io.in_vec(i) := cal_tkeep(i)
  val cur_burst_size = burst_size_cal.io.out_sum

  // count tlen
  val tlen_reg = RegInit(0.U(16.W))
  when (in_shake_hand) {
    when (first_beat_reg) {
      tlen_reg := cur_burst_size
    }.otherwise{
      tlen_reg := tlen_reg + cur_burst_size
    }
  }

  val keep_val = Wire(Vec(512,UInt(1.W)))
  for (i <- 0 until 512){
    keep_val(i) := in_reg.tkeep(i/8)
  }
//  val qid_mask_wrapper = Module(new SoftwareRegWrapper(32))
//  qid_mask_wrapper.io.in_mask :=  extern_config_reg.c2h_sw_qid_mask
//  qid_mask_wrapper.io.in_tlast := in_shake_hand & in_reg.tlast
//  io.out.rx_info.qid := qid_mask_wrapper.io.out_dec

  io.out.tuser  := in_reg.tuser
  io.out.tdata  := in_reg.tdata & keep_val.asTypeOf(UInt(512.W))
  io.out.tvalid := in_reg.tvalid & in_reg_used
  io.out.tlast  := in_reg.tlast
  io.in.tready  := io.out.tready | !in_reg_used
  io.out.rx_info := WireDefault(0.U.asTypeOf(new RxInfo))
  io.out.rx_info.tlen := Mux(first_beat_reg,cur_burst_size,tlen_reg + cur_burst_size)
  io.out.rx_info.qid := 0.U
  io.out.extern_config := extern_config_reg
}
