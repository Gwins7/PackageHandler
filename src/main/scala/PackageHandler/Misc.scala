package PackageHandler

import chisel3._
import chisel3.util._

trait NetFunc {
  def change_order_16 (i: UInt): UInt = {
    Cat(i(7,0),i(15,8))
  }
  def change_order_32 (i: UInt): UInt = {
    Cat(i(7,0),i(15,8),i(23,16),i(31,24))
  }
  def chksum_cal(i: UInt): UInt ={
    Mux(i(31,16) > 0.U,
      i(31,16) + i(15,0), i(15,0))
  }
}

class ReduceAddSync (vecnum: Int, width: Int) extends Module {

  val io = IO(new Bundle {
    val in_vec = Input(Vec(vecnum,UInt(width.W)))
    val out_sum = Output(UInt(width.W))
  })

  val vecnum_align_pow2 = Math.pow(2,log2Ceil(vecnum)).toInt

  val pipeline_cut_num = Math.pow(2,(log2Ceil(vecnum_align_pow2)+1)/2).toInt
  //to optimize route timing, we want (vecnum_align_pow2/2) to get ceil value in not-int (e.g.5/2) condition

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

/*
  this module is used to manage software(DPDK)-configured
  mask register and output its decimal value in Round Robin strategy
  now we use it in qid mask and port_id mask configuration
 */

class SoftwareRegWrapper(width: Int) extends Module {
  val io = IO(new Bundle {
    val in_mask = Input(UInt(width.W))
    val in_tlast = Input(Bool())
    val out_dec = Output(UInt(unsignedBitLength(width).W))
  })
  val sav_mask_reg = RegInit(io.in_mask)
  val cur_mask_reg = RegInit(io.in_mask)

  val next_mask = Wire(UInt(width.W))
  val arbitDecoder = Module(new ArbitDecoder(width))

  next_mask := (cur_mask_reg & (~(1.U(width.W) << io.out_dec)).asUInt)
  arbitDecoder.io.in_mask := cur_mask_reg

  when((sav_mask_reg =/= io.in_mask).asBool) {
    cur_mask_reg := io.in_mask
    sav_mask_reg := io.in_mask
  }
    .elsewhen(io.in_tlast) {
      when (next_mask === 0.U) {
        cur_mask_reg := sav_mask_reg
      }
        .otherwise {
          cur_mask_reg := next_mask
        }
    }

  io.out_dec := arbitDecoder.io.out_dec
}

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
