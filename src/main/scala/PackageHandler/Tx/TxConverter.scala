package PackageHandler.Tx

import PackageHandler.Misc._
import chisel3._
import chisel3.util._

class TxConverter extends Module{

  val io = IO(new Bundle {
    val in  = new QDMAAxisIO()
    val out = Flipped(new TxPipelineAxisIO())

    val extern_config = Input(new ExternConfig())
  })
  val true_tvalid = io.in.tvalid & !io.in.tuser

  val extern_config_reg = RegEnable(io.extern_config.asUInt,0.U,io.out.tready & io.out.tvalid).asTypeOf(new ExternConfig)

  io.out.extern_config   := extern_config_reg
  io.out.tx_info         := 0.U.asTypeOf(new TxInfo()) // Default
  io.out.tvalid          := true_tvalid
  io.out.tlast           := io.in.tlast
  io.out.tdata           := io.in.tdata
  io.in.tready           := io.out.tready

}