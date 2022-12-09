package PackageHandler.Rx

import PackageHandler.Misc._
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

class RxPipeline extends Module{

  val io = IO(new Bundle {
    val in  = new RxPipelineAxisIO()
    val out = Flipped(new RxPipelineAxisIO())
  })

// place to add filter logic; we need a pipeline

  // this reg is to find out whether current beat is the first beat of a packet.
  // attention: this is different from tuser_reg in PackageHandler,
  // which is associated with previous tuser state.

  // add pipeline handler here
//  val rx_aes_decrypter =   Module (new RxAESDecrypter())
  val rx_chksum_verifier = Module(new RxChksumVerifier())
  val rx_rss_hash_filter = Module(new RxHashFilter())
  val rx_match_filter    = Module(new RxMatchFilter())
  val rx_REsearcher      = Module(new RxRESearcher())
  io.in                     <> rx_chksum_verifier.io.in
//  io.in                     <> rx_aes_decrypter.io.in
//  rx_aes_decrypter.io.out   <> rx_chksum_verifier.io.in
  rx_chksum_verifier.io.out <> rx_rss_hash_filter.io.in
  rx_rss_hash_filter.io.out <> rx_match_filter.io.in
  rx_match_filter.io.out    <> rx_REsearcher.io.in
  rx_REsearcher.io.out      <> io.out
}
