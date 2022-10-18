package PackageHandler

import chisel3._
import chisel3.util._

/*
  input: a mask
  output: the LSB's decimal val
 */

class ArbitDecoder(width: Int) extends Module {
  val io = IO(new Bundle {
    val in_mask = Input(UInt(width.W))
    val out_dec = Output(UInt(unsignedBitLength(width).W))
  })
  val grant = VecInit.fill(width)(false.B)
  val notgranted = VecInit.fill(width)(false.B)
  grant(0) := io.in_mask(0)
  notgranted(0) := !grant(0)
  for (i <- 1 until width) {
    grant(i) := notgranted(i-1) & io.in_mask(i)
    notgranted(i) := notgranted(i-1) & !io.in_mask(i)
  }
  val resfun = grant.zipWithIndex.map((x) => (x._1,x._2.U))
                    .reduce((x,y) => (Mux(y._1 === true.B,y._1,x._1),Mux(y._1 === true.B,y._2,x._2)))
  io.out_dec := resfun._2.asUInt
}
