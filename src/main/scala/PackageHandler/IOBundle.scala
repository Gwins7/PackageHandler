package PackageHandler

import chisel3._
import chisel3.util._

class AxisIO extends Bundle{
  val tdata  = Input(UInt(512.W))
  val tvalid = Input(Bool())
  val tready = Output(Bool())
  val tlast  = Input(Bool())
}

class RxPipelineAxisIO extends AxisIO{
  val tlen   = Input(UInt(16.W))
}

class QDMAAxisIO extends AxisIO{
  val tuser = Input(Bool())
}

class CMACAxisIO extends AxisIO{
  val tkeep = Input(UInt(64.W))
  val tuser = Input(Bool())
}
