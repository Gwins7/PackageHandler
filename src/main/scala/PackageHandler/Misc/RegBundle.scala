package PackageHandler.Misc

import chisel3._
import chisel3.util._

class TxInfo extends Bundle {
  val ip_chksum = UInt(32.W)
  val tcp_chksum = UInt(32.W)
}

class TxPipelineHandlerReg extends Bundle {
  val tx_info = new TxInfo()
  val tdata  = UInt(512.W)
  val tvalid = Bool()
  val tlast  = Bool()
}

class RxInfo extends Bundle {
  val tlen   = UInt(16.W)
  val qid    = UInt(6.W)
  val ip_chksum = UInt(32.W)
  val tcp_chksum = UInt(32.W)
}

class RxConverterReg extends Bundle {
  val tuser  = Bool()
  val tkeep  = UInt(64.W)
  val tdata  = UInt(512.W)
  val tvalid = Bool()
  val tlast  = Bool()
}

class RxPipelineHandlerReg extends Bundle {
  val rx_info = new RxInfo()
  val tuser  = Bool()
  val tdata  = UInt(512.W)
  val tvalid = Bool()
  val tlast  = Bool()
}

class ExternConfig extends Bundle {
  val c2h_match_op   = UInt(16.W)
  val c2h_match_arg =  Vec(16,UInt(32.W))

//  val aes_key = UInt(128.W)
//  val round_time = UInt(4.W)
}