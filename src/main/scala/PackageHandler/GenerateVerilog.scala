package PackageHandler

import PackageHandler.Tx.PipelineHandler._
import PackageHandler.Rx.PipelineHandler._
import PackageHandler.Tx._
import PackageHandler.Rx._
import chisel3.emitVerilog

// generate PackageHandler module
object GenerateAllVerilog extends App {
  emitVerilog(new PackageHandler(), Array("--target-dir", "generated"))
  println("generate All Verilog successfully!")
}
// generate specific module (like TxAESEncrypter below, we can change it to other module)
object GenerateFunctionVerilog extends App {
  emitVerilog(new TxAESEncrypter(), Array("--target-dir", "generated"))
  println("generate Function Verilog successfully!")
}
