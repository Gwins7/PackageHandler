package PackageHandler.Tx

import PackageHandler.Misc._
import chisel3._
import chisel3.util._

class TxPipeline extends Module{

  val io = IO(new Bundle {
    val in  = new QDMAAxisIO()
    val out = Flipped(new TxPipelineAxisIO())

    val extern_config = Input(new ExternConfig())
  })
  val true_tvalid = io.in.tvalid & !io.in.tuser

  val tx_chksum_generator = Module(new TxChksumGenerator())
  tx_chksum_generator.io.in.extern_config := io.extern_config
  tx_chksum_generator.io.in.tx_info := 0.U.asTypeOf(new TxInfo()) // Default
  tx_chksum_generator.io.in.tvalid := true_tvalid
  tx_chksum_generator.io.in.tlast  := io.in.tlast
  tx_chksum_generator.io.in.tdata  := io.in.tdata
  io.in.tready           := tx_chksum_generator.io.in.tready

  // add pipeline handler here
//  val tx_aes_encrypter = Module(new TxAESEncrypter())
//  tx_chksum_generator.io.out <> tx_aes_encrypter.io.in
//  tx_aes_encrypter.io.out <> io.out
  tx_chksum_generator.io.out <> io.out
}
