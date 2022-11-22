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

//val tdata  = Input(UInt(512.W))
//val tvalid = Input(Bool())
//val tlast  = Input(Bool())
//val tlen  = Input(UInt(16.W))
//val first_beat = Input(Bool())

class PackageFilterPipeline extends Module{

  val io = IO(new Bundle {
    val in = new RxPipelineAxisIO()
    val out = Flipped(new RxPipelineAxisIO())

    val extern_config = Input(new ExternConfig())
    val c2h_qid    = Output(UInt(6.W))
  })

// place to add filter logic; we need a pipeline

  // this reg is to find out whether current beat is the first beat of a packet.
  // attention: this is different from tuser_reg in PackageHandler,
  // which is associated with previous tuser state.
  val extern_config_reg = RegInit(0.U.asTypeOf(new ExternConfig()))
  extern_config_reg := io.extern_config

  val qid_mask_wrapper = Module(new SoftwareRegWrapper(32))
  qid_mask_wrapper.io.in_mask := extern_config_reg.c2h_sw_qid_mask
  qid_mask_wrapper.io.in_tlast := io.in.tvalid & io.in.tready & io.in.tlast

  val ip_filter = Module(new IPFilter())

  ip_filter.io.in.extern_config := extern_config_reg
  ip_filter.io.in.qid := qid_mask_wrapper.io.out_dec
  ip_filter.io.in.tvalid := io.in.tvalid
  ip_filter.io.in.tlast  := io.in.tlast
  ip_filter.io.in.tdata  := io.in.tdata
  ip_filter.io.in.tlen   := io.in.tlen
  io.in.tready           := ip_filter.io.in.tready
// add pipeline handler here
  io.out.tvalid := ip_filter.io.out.tvalid
  io.out.tlast  := ip_filter.io.out.tlast
  io.out.tdata  := ip_filter.io.out.tdata
  io.out.tlen   := ip_filter.io.out.tlen
  ip_filter.io.out.tready := io.out.tready

  io.c2h_qid := ip_filter.io.out.qid

}
