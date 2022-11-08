package PackageHandler

import chisel3._
import chisel3.util._

class reduce_add_64 extends Module {
  val io = IO(new Bundle {
    val in_vec = Input(UInt(64.W))
    val out_sum = Output(UInt(8.W))
  })
  val add_vec = Wire(Vec(64,UInt(8.W)))
  for (i <- 0 until 64) add_vec(i) := io.in_vec(i)
  io.out_sum := add_vec.reduceTree(_+_)
}
