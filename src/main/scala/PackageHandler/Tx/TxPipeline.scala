package PackageHandler.Tx

import PackageHandler.Misc._
import chisel3._
import chisel3.util._

class TxPipeline extends Module{

  val io = IO(new Bundle {
    val in  = new TxPipelineAxisIO()
    val out = Flipped(new TxPipelineAxisIO())
  })
  // add pipeline handler here
  io.in <> io.out
//  val tx_chksum_generator = Module(new TxChksumGenerator())
//  io.in <> tx_chksum_generator.io.in
//  tx_chksum_generator.io.out <> io.out

}

//  val tx_aes_encrypter = Module(new TxAESEncrypter())
//  tx_chksum_generator.io.out <> tx_aes_encrypter.io.in
//  tx_aes_encrypter.io.out <> io.out