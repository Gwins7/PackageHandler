package PackageHandler.Rx

import PackageHandler.Misc.NetFunc
import chisel3._
import chisel3.util._
// FSM

class REHandlerUnit extends Module {
  // check 1 byte jump
  val io = IO(new Bundle {
    val in_char = Input(UInt(8.W))
    val in_state = Input(UInt(4.W))
    val in_rule = Input(Vec(16,UInt(16.W)))
    // rule: 16 (nxt_state(4),cur_state(4),char(8)) * 16
    val out_state = Output(UInt(4.W))
  })
  val result = WireDefault(0.U.asTypeOf(Vec(16,UInt(4.W))))
  for (i <- 0 until 16){
    // only one rule per situation is OK
    when (io.in_char === io.in_rule(i)(7,0) && io.in_state === io.in_rule(i)(11,8)){
      result(i) := io.in_rule(i)(15,12)
    }
  }
  // 0 is Q_start, F is Q_Accept
  io.out_state := Mux(io.in_state === 15.U,15.U,result.reduceTree(_|_))
}

class REHandler(val step: Int = 2) extends Module {
  // check *length* byte(s) jump
  val io = IO(new Bundle {
    val in_char = Input(UInt((8*step).W))
    val in_state = Input(UInt(4.W))
    val in_rule = Input(Vec(16,UInt(16.W)))
    // rule: 16 (nxt_state(4),cur_state(4),char(8)) * 16
    val out_state = Output(UInt(4.W))
  })
  val re_handler_unit_queue = Seq.fill(step)(Module(new REHandlerUnit))
  val part_result_reg = RegInit(0.U(4.W))

  for (i <- 0 until step){
    re_handler_unit_queue(i).io.in_char := io.in_char(i*8+7,i*8)
    re_handler_unit_queue(i).io.in_rule := io.in_rule
    if (i == 0) re_handler_unit_queue(i).io.in_state := io.in_state
    else re_handler_unit_queue(i).io.in_state := re_handler_unit_queue(i-1).io.out_state
  }
  // temp save, sync
  part_result_reg := re_handler_unit_queue(step-1).io.out_state
  io.out_state := part_result_reg
}

class RxRESearcher(val step: Int = 2) extends RxPipelineHandler with NetFunc {
  // there is no speed restriction, the first goal is 2*32
  assume(step%2==0 && step<=64)
  val handler_num = 64/step

  val beat_counter_reg = RegInit(0.U(8.W))
  val match_found_reg = RegInit(false.B)
  val cur_state_reg = RegInit(0.U(4.W))

  val input_rule = extern_config_reg.c2h_match_arg.asTypeOf(Vec(16,UInt(16.W)))
  val re_handler_queue = Seq.fill(handler_num)(Module(new REHandler(step)))
  val state_accept_vec = Wire(Vec(handler_num,Bool()))

  when (in_shake_hand){
    when (in_reg.tlast){
      cur_state_reg := 0.U
    }.otherwise{
      cur_state_reg := re_handler_queue(handler_num-1).io.out_state
    }
    beat_counter_reg := 0.U
  }.elsewhen (beat_counter_reg < handler_num.U & !match_found_reg){
    beat_counter_reg := beat_counter_reg + 1.U
  }

  for (i <- 0 until handler_num){
    state_accept_vec(i) := (re_handler_queue(i).io.out_state === 15.U)
    re_handler_queue(i).io.in_rule := input_rule
    re_handler_queue(i).io.in_char := in_reg.tdata((8*step)*i+(8*step-1),(8*step)*i)
    if (i == 0) re_handler_queue(i).io.in_state := cur_state_reg
    else re_handler_queue(i).io.in_state := re_handler_queue(i-1).io.out_state
  }

  val match_found = state_accept_vec(beat_counter_reg)
  // TODO: test function and debug

  when (first_beat_reg) {
    match_found_reg := match_found
  }.otherwise{
    match_found_reg := match_found_reg | match_found
  }
  when (extern_config_reg.c2h_match_op(7)){
    io.out.rx_info.qid := Mux(match_found_reg | match_found,1.U,in_reg.rx_info.qid)
  }

  io.in.tready := out_shake_hand | !in_reg_used_reg
  io.out.tvalid := in_reg.tvalid & in_reg_used_reg & (beat_counter_reg === handler_num.U | match_found_reg)

}
