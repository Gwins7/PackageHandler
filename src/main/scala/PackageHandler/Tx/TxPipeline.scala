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

  val extern_config_reg = RegInit(0.U.asTypeOf(new ExternConfig()))
  extern_config_reg := io.extern_config

  val true_tvalid = io.in.tvalid & !io.in.tuser

  val chksum_generator = Module(new TxChksumGenerator())

  chksum_generator.io.in.extern_config := extern_config_reg
  chksum_generator.io.in.tx_info := 0.U.asTypeOf(new TxInfo()) // Default
  chksum_generator.io.in.tvalid := true_tvalid
  chksum_generator.io.in.tlast  := io.in.tlast
  chksum_generator.io.in.tdata  := io.in.tdata
  io.in.tready           := chksum_generator.io.in.tready

  // add pipeline handler here

  io.out <> chksum_generator.io.out
}
