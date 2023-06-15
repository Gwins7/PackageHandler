package PackageHandler.Rx.PipelineHandler

import chisel3._
import chisel3.util._

// match function
class RxStrMatcher extends RxPipelineHandler {
  // arg0: content; arg1: mask; arg2: place
  def compare(op:UInt,mask:UInt,src1:UInt,src2:UInt):UInt = {
    val a = src1 & mask
    val b = src2 & mask
    (op(0) & (a === b)) | (op(1) & (a > b)) | (op(2) & (a < b)) | (!op(0) & !op(1) & !op(2) & (a =/= b))
  }

  val match_op      = io.in.extern_config.op
  val match_content = io.in.extern_config.arg(0)
  val match_mask    = io.in.extern_config.arg(1)
  val match_place   = io.in.extern_config.arg(2) // start from 0

  val match_found = WireDefault(false.B)
  val match_found_reg = RegInit(false.B)
  val match_continue_reg = RegInit(false.B)
  val previous_tdata_reg = RegInit(0.U(24.W))

  // the byte position of this beat's last byte in the whole packet
  val true_tlen = Mux(in_reg.rx_info.tlen(15,6) === 0.U || in_reg.rx_info.tlen(5,0) =/= 0.U, // when tlen < 64 or tlen % 64 != 0
    Cat(in_reg.rx_info.tlen(15,6) + 1.U,0.U(6.W)),
    in_reg.rx_info.tlen)
  val cur_place = Cat(true_tlen(15,6) - 1.U,0.U(6.W)) // true_tlen - 64.U
  // ceil align 64; we assume that the padding 0 in the last beat won't interfere matching process
  // the match place in current beat (if it is in)
  val in_beat_place = match_place - cur_place

  when (match_place >= cur_place) {
    // start in current beat
    when (match_place <= true_tlen - 4.U) {
      // totally in current beat
      val in_beat_content = (in_reg.tdata >> (in_beat_place << 3.U))(31,0)
      match_found := compare(match_op(2,0),match_mask,change_order_32(in_beat_content),match_content)

    }.elsewhen (in_shake_hand && (match_place < true_tlen) && !in_reg.tlast) {
      // between current beat and next beat
      match_continue_reg := true.B
      previous_tdata_reg := in_reg.tdata(511, 488)

    }
  }.elsewhen (match_continue_reg) {
    val previous_tdata =
      (Fill(32, !match_place(1) & match_place(0)) & Cat(in_reg.tdata(7, 0), previous_tdata_reg(23, 0))) | // 61,62,63,0
        (Fill(32, match_place(1) & !match_place(0)) & Cat(in_reg.tdata(15, 0), previous_tdata_reg(23, 8))) | // 62,63, 0,1
        (Fill(32, match_place(1) & match_place(0)) & Cat(in_reg.tdata(23, 0), previous_tdata_reg(23, 16))) // 63, 0, 1,2
    match_found := compare(match_op(2,0),match_mask,change_order_32(previous_tdata),match_content)
  }

  when (in_shake_hand) {
    // found result
    when (match_continue_reg) {
      match_continue_reg := false.B
    }
    when(in_reg.tlast) {
      match_found_reg := false.B
    }.elsewhen(!match_found_reg) {
      match_found_reg := match_found
    }
  }
  when (match_op(3)) {
    io.out.rx_info.qid := Mux(match_found_reg | match_found,1.U,in_reg.rx_info.qid)
  }
}
