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

class RxPipeline extends Module{

  val io = IO(new Bundle {
    val in  = new RxPipelineAxisIO()
    val out = Flipped(new RxPipelineAxisIO())
  })

  // add pipeline handler here

  val rx_aes_decrypter =   Module (new RxAESDecrypter())
//    io.in                     <> rx_aes_decrypter.io.in
//    rx_aes_decrypter.io.out   <> io.out

  val rx_re_searcher = Module(new RxRESearcher(1))
  val rx_chksum_verifier = Module(new RxChksumVerifier())
  val rx_rss_hasher = Module(new RxRSSHasher())
  val rx_string_matcher    = Module(new RxStrMatcher())
  val rx_string_searcher      = Module(new RxStrSearcher())
  io.in <> rx_aes_decrypter.io.in
  rx_aes_decrypter.io.out   <> rx_chksum_verifier.io.in
  rx_chksum_verifier.io.out <> rx_rss_hasher.io.in
  rx_rss_hasher.io.out      <> rx_string_matcher.io.in
  rx_string_matcher.io.out  <> rx_string_searcher.io.in
  rx_string_searcher.io.out <> rx_re_searcher.io.in
  rx_re_searcher.io.out <> io.out
}



