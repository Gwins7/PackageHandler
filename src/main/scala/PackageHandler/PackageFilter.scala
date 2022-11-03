package PackageHandler

import chisel3._
import chisel3.util._

class PackageFilter() extends Module{
  val io = IO(new Bundle {
    val in_tdata  = Input(UInt(512.W))
    val in_tvalid = Input(Bool())
    val in_tready = Output(Bool())
    val in_tlast  = Input(Bool())
    val in_tlen   = Input(UInt(16.W))

    val in_sw_qid_mask = Input(UInt(32.W))

    val out_tdata  = Output(UInt(512.W))
    val out_tvalid = Output(Bool())
    val out_tready = Input(Bool())
    val out_tlast  = Output(Bool())
    val out_tlen   = Output(UInt(16.W))

    val out_qid    = Output(UInt(6.W))
  })

// place to add filter logic
  io.out_tdata  := io.in_tdata
  io.out_tvalid := io.in_tvalid
  io.in_tready  := io.out_tready
  io.out_tlast  := io.in_tlast
  io.out_tlen   := io.in_tlen

  // this reg is to find out whether current beat is the first beat of a packet.
  // attention: this is different from tuser_reg in PackageHandler,
  // which is associated with previous tuser state.
  val pld_first_beat_reg = RegInit(true.B)
  when (io.out_tvalid & io.out_tready) {
    pld_first_beat_reg := io.out_tlast
  }

  val qid_mask_wrapper = Module(new SoftwareRegWrapper(32))
  qid_mask_wrapper.io.in_mask := io.in_sw_qid_mask
  qid_mask_wrapper.io.in_tlast := io.in_tlast

  io.out_qid := qid_mask_wrapper.io.out_dec
}
