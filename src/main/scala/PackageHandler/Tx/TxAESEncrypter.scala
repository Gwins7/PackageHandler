package PackageHandler.Tx

import PackageHandler.Misc._
import chisel3._
import chisel3.util._

//
// https://blog.csdn.net/qq_28205153/article/details/55798628

class TxAESEncrypter extends TxPipelineHandler with cal_gf256 {

  val aes_key_reg = Reg(Vec(11,UInt(128.W)))
  def key_encode(tdata: UInt, round_time: UInt): UInt = {
    tdata ^ Fill(4,aes_key_reg(round_time))
  }

  def byte_change(tdata: UInt): UInt = {
    val trans_tdata = Wire(Vec(64, UInt(8.W)))
    for (i <- 0 until 64) {
      trans_tdata(i) := s_substitute(tdata(i * 8 + 7, i * 8 + 4), tdata(i * 8 + 3, i * 8))
    }
    trans_tdata.asUInt
  }

  def bit_move(tdata: UInt): UInt = {
    val trans_tdata = Wire(Vec(4, UInt(128.W)))
    for (i <- 0 until 4) {
      trans_tdata(i) := move_bit_128(tdata(128 * i + 127, 128 * i))
    }
    trans_tdata.asUInt
  }

  def matrix_multiply(tdata: UInt): UInt = {
    val trans_tdata = Wire(Vec(64, UInt(8.W)))
    for (i <- 0 until 4) {
      for (j <- 0 until 16) {
        trans_tdata(16 * i + j) := matrix_mul_result(tdata(128 * i + 127, 128 * i), j % 4, j / 4)
      }
    }
    trans_tdata.asUInt
  }

  val cur_round_counter = RegInit(0.U(8.W))
  val cur_round = Mux(cur_round_counter <= 11.U, 0.U, (cur_round_counter - 10.U) >> 2.U).asUInt // designed for rx, but still useful
  val tmp_tdata_reg = Reg(UInt(512.W))

  val aes_key_0 = Cat(change_order_32(io.in.extern_config.c2h_match_arg(15)),
                      change_order_32(io.in.extern_config.c2h_match_arg(14)),
                      change_order_32(io.in.extern_config.c2h_match_arg(13)),
                      change_order_32(io.in.extern_config.c2h_match_arg(12)))

  // cur_round_counter:
  // 0~10: aes_key_gen
  // 11, (11+4*1), ..., (11+4*9), 50: encode -> %4=3 || 50
  // 12, (12+4*1), ..., (12+4*9) : byte_change ->%4=0
  // 13, (13+4*1), ..., (13+4*9) : bit_move -> %4=1
  // 14  (14+4*1), ..., (14+4*8) : mul ->%4=2

  val tmp_result = Wire(Vec(4, UInt(512.W)))
  tmp_result(0) := byte_change(tmp_tdata_reg)
  tmp_result(1) := bit_move(tmp_tdata_reg)
  tmp_result(2) := matrix_multiply(tmp_tdata_reg)
  tmp_result(3) := key_encode(tmp_tdata_reg, cur_round)


  when(in_shake_hand) {
    tmp_tdata_reg := io.in.tdata
    // ATTENTION: when in first beat, we don't do encryption

  }

  when (!io.in.extern_config.c2h_match_op(8)) {
    cur_round_counter := 0.U
  }.elsewhen (!first_beat_reg){

    when(cur_round_counter < 11.U) {
      when(cur_round_counter === 0.U) {
        aes_key_reg(0) := aes_key_0
      }.otherwise {
        aes_key_reg(cur_round_counter) := get_next_key(aes_key_reg(cur_round_counter - 1.U), cur_round_counter)
      }
    }

    when(in_shake_hand) {
      cur_round_counter := Mux(aes_key_reg(0) === aes_key_0, 11.U, 0.U)
    }.elsewhen(cur_round_counter < 51.U) {
      cur_round_counter := cur_round_counter + 1.U
    }

    when(cur_round_counter >= 11.U && in_reg_used_reg) {
      when(cur_round_counter < 50.U) {
        tmp_tdata_reg := tmp_result(cur_round_counter(1, 0))
      }.elsewhen(cur_round_counter === 50.U) {
        tmp_tdata_reg := tmp_result(3)
      }
    }

    io.out.tdata := tmp_tdata_reg
    io.in.tready := (cur_round_counter >= 11.U) & (out_shake_hand | !in_reg_used_reg)
    io.out.tvalid := (cur_round_counter === 51.U) & (in_reg.tvalid & in_reg_used_reg)
  }
  // if encode:0 byte_change:1 bit_move:2  mul:3, then:
  // rx: in->0->2->1->0->3->2->1->0->3->...->2->1->0->out (2103 * 9)
  // tx: in->0->1->2->3->0->1->2->3->0->...->1->2->0->out (1230 * 9)
}
