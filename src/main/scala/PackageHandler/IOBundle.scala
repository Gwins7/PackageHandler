package PackageHandler

import chisel3._
import chisel3.util._

class AxisIO extends Bundle{
  val tdata  = Input(UInt(512.W))
  val tvalid = Input(Bool())
  val tready = Output(Bool())
  val tlast  = Input(Bool())
}
class TxPipelineAxisIO extends AxisIO{
  val tx_info = Input(new TxInfo())
  val extern_config = Input(new ExternConfig())
}

class RxPipelineAxisIO extends AxisIO{
  val tuser = Input(Bool())
  val rx_info = Input(new RxInfo())
  val extern_config = Input(new ExternConfig())
}

class QDMAAxisIO extends AxisIO{
  val tuser = Input(Bool())
}

class CMACAxisIO extends QDMAAxisIO{
  val tkeep = Input(UInt(64.W))
}
