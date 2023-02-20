package PackageHandler


import PackageHandler.Rx._
import chisel3.emitVerilog

object GenerateAllVerilog extends App {
  emitVerilog(new PackageHandler(), Array("--target-dir", "generated"))
  println("generate All Verilog successfully!")
}

object GenerateREVerilog extends App {
  emitVerilog(new RxRESearcher(), Array("--target-dir", "generated"))
  println("generate RE Verilog successfully!")
}

