package PackageHandler

import chisel3.emitVerilog

object GenerateVerilog extends App {
  emitVerilog(new PackageHandler(), Array("--target-dir", "generated"))
  println("generate Verilog successfully!")
}
