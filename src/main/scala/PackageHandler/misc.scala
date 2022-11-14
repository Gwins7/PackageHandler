package PackageHandler

import chisel3._
import chisel3.util._

class reduce_add_sync(vecnum: Int, width: Int) extends Module {

  val io = IO(new Bundle {
    val in_vec = Input(Vec(vecnum,UInt(width.W)))
    val out_sum = Output(UInt(width.W))
  })

  val vecnum_align_pow2 = Math.pow(2,log2Ceil(vecnum)).toInt

  val pipeline_cut_num = Math.pow(2,log2Ceil(vecnum_align_pow2)/2).toInt

  val vec_per_cut = vecnum_align_pow2 / pipeline_cut_num
  val cal_vec = Wire(Vec(pipeline_cut_num, Vec(vec_per_cut,UInt(width.W))))
  val cal_reg = Reg(Vec(pipeline_cut_num, UInt(width.W)))

  var k = 0;
    for (i <- 0 until pipeline_cut_num)
      for (j <- 0 until vec_per_cut){
      if (k < vecnum) {
        cal_vec(i)(j) := io.in_vec(k)
        k = k + 1
      }
      else cal_vec(i)(j) := 0.U
    }
    for (i <- 0 until pipeline_cut_num){
      cal_reg(i) := cal_vec(i).reduceTree(_+_)
    }

  io.out_sum := cal_reg.reduceTree(_+_)
}

