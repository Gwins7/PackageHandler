package PackageHandler

import chisel3._
import chisel3.util._
/*
  packet header example (512bit):
  6b0c0000 00000000 [511:447]
  00000000 09450839 [447:384]
  02500000 00000000 [383:320]
  00005000 e8030001 [319:256]
  0f0f0702 0f0fa218 [255:192]
  06400040 00013200 [191:128]
  00450008 eefe2e1f [127: 64]
  61e8a7a7 3b005452 [ 63:  0]
  (attention: here we use hardware order;
  to use network order we need to reverse by 8bit
 */
class PackageFilterPipeline() extends Module{

  val io = IO(new Bundle {
    val in = new RxPipelineAxisIO()
    val out = Flipped(new RxPipelineAxisIO())

    val in_sw_qid_mask = Input(UInt(32.W))
    val out_qid    = Output(UInt(6.W))
  })

// place to add filter logic; we need a pipeline
  io.in <> io.out

  // this reg is to find out whether current beat is the first beat of a packet.
  // attention: this is different from tuser_reg in PackageHandler,
  // which is associated with previous tuser state.
  val pld_first_beat_reg = RegInit(true.B)
  when (io.out.tvalid & io.out.tready) {
    pld_first_beat_reg := io.out.tlast
  }

  val qid_mask_wrapper = Module(new SoftwareRegWrapper(32))
  qid_mask_wrapper.io.in_mask := io.in_sw_qid_mask
  qid_mask_wrapper.io.in_tlast := io.in.tvalid & io.in.tready & io.in.tlast

  io.out_qid := qid_mask_wrapper.io.out_dec
}
