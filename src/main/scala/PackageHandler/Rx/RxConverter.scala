package PackageHandler.Rx

import PackageHandler.Misc._
import chisel3._
import chisel3.util._

class RxConverter extends Module with NetFunc {
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
  val in_reg_used_reg = RegInit(false.B)
  when (in_shake_hand){
    in_reg_used_reg := true.B
  }.elsewhen(out_shake_hand){
    in_reg_used_reg := false.B
  }

  // calculate valid len in this beat
  val cal_tkeep = Mux(in_shake_hand,io.in.tkeep,in_reg.tkeep)
  val burst_size_cal = Module(new ReduceAddSync(64,8))
  for (i <- 0 until 64) burst_size_cal.io.in_vec(i) := cal_tkeep(i)
  val cur_burst_size = burst_size_cal.io.out_sum

  // count tlen
  val tlen_reg = RegInit(0.U(16.W))
  when (in_shake_hand) {
      tlen_reg := Mux(first_beat_reg, cur_burst_size, tlen_reg + cur_burst_size)
    }
  // extend tkeep
  val keep_val = Wire(Vec(512,UInt(1.W)))
  for (i <- 0 until 512){
    keep_val(i) := in_reg.tkeep(i/8)
  }
  val pkt_type = Cat((change_order_16(io.in.tdata(111, 96)) === "h_0800".U) & (io.in.tdata(191, 184) === 6.U),
                      change_order_16(io.in.tdata(111, 96)) === "h_0800".U)
  val pkt_type_reg = RegEnable(pkt_type, 0.U(2.W), in_shake_hand && in_reg.tlast) // 2 bit: TCP / IPV4

  io.out.tuser  := in_reg.tuser
  io.out.tdata  := in_reg.tdata & keep_val.asUInt // we only use valid part of tdata
  io.out.tvalid := in_reg.tvalid & in_reg_used_reg
  io.out.tlast  := in_reg.tlast
  io.in.tready  := io.out.tready | !in_reg_used_reg
  io.out.rx_info := WireDefault(0.U.asTypeOf(new RxInfo))
  io.out.rx_info.tlen := Mux(first_beat_reg,cur_burst_size,tlen_reg + cur_burst_size)
  io.out.rx_info.pkt_type := pkt_type_reg
  io.out.rx_info.qid := 0.U
  io.out.extern_config := io.extern_config
}
