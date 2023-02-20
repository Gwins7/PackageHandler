module REHandlerUnit(
  input  [7:0]  io_in_char,
  input  [3:0]  io_in_state,
  input  [15:0] io_in_rule_0,
  input  [15:0] io_in_rule_1,
  input  [15:0] io_in_rule_2,
  input  [15:0] io_in_rule_3,
  input  [15:0] io_in_rule_4,
  input  [15:0] io_in_rule_5,
  input  [15:0] io_in_rule_6,
  input  [15:0] io_in_rule_7,
  input  [15:0] io_in_rule_8,
  input  [15:0] io_in_rule_9,
  input  [15:0] io_in_rule_10,
  input  [15:0] io_in_rule_11,
  input  [15:0] io_in_rule_12,
  input  [15:0] io_in_rule_13,
  input  [15:0] io_in_rule_14,
  input  [15:0] io_in_rule_15,
  output [3:0]  io_out_state
);
  wire [3:0] result_0 = io_in_char == io_in_rule_0[7:0] & io_in_state == io_in_rule_0[11:8] ? io_in_rule_0[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_1 = io_in_char == io_in_rule_1[7:0] & io_in_state == io_in_rule_1[11:8] ? io_in_rule_1[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_2 = io_in_char == io_in_rule_2[7:0] & io_in_state == io_in_rule_2[11:8] ? io_in_rule_2[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_3 = io_in_char == io_in_rule_3[7:0] & io_in_state == io_in_rule_3[11:8] ? io_in_rule_3[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_4 = io_in_char == io_in_rule_4[7:0] & io_in_state == io_in_rule_4[11:8] ? io_in_rule_4[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_5 = io_in_char == io_in_rule_5[7:0] & io_in_state == io_in_rule_5[11:8] ? io_in_rule_5[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_6 = io_in_char == io_in_rule_6[7:0] & io_in_state == io_in_rule_6[11:8] ? io_in_rule_6[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_7 = io_in_char == io_in_rule_7[7:0] & io_in_state == io_in_rule_7[11:8] ? io_in_rule_7[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_8 = io_in_char == io_in_rule_8[7:0] & io_in_state == io_in_rule_8[11:8] ? io_in_rule_8[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_9 = io_in_char == io_in_rule_9[7:0] & io_in_state == io_in_rule_9[11:8] ? io_in_rule_9[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_10 = io_in_char == io_in_rule_10[7:0] & io_in_state == io_in_rule_10[11:8] ? io_in_rule_10[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_11 = io_in_char == io_in_rule_11[7:0] & io_in_state == io_in_rule_11[11:8] ? io_in_rule_11[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_12 = io_in_char == io_in_rule_12[7:0] & io_in_state == io_in_rule_12[11:8] ? io_in_rule_12[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_13 = io_in_char == io_in_rule_13[7:0] & io_in_state == io_in_rule_13[11:8] ? io_in_rule_13[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_14 = io_in_char == io_in_rule_14[7:0] & io_in_state == io_in_rule_14[11:8] ? io_in_rule_14[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] result_15 = io_in_char == io_in_rule_15[7:0] & io_in_state == io_in_rule_15[11:8] ? io_in_rule_15[15:12] : 4'h0
    ; // @[RxRESearcher.scala 19:84 20:17]
  wire [3:0] _io_out_state_T_1 = result_0 | result_1; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_2 = result_2 | result_3; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_3 = result_4 | result_5; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_4 = result_6 | result_7; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_5 = result_8 | result_9; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_6 = result_10 | result_11; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_7 = result_12 | result_13; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_8 = result_14 | result_15; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_9 = _io_out_state_T_1 | _io_out_state_T_2; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_10 = _io_out_state_T_3 | _io_out_state_T_4; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_11 = _io_out_state_T_5 | _io_out_state_T_6; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_12 = _io_out_state_T_7 | _io_out_state_T_8; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_13 = _io_out_state_T_9 | _io_out_state_T_10; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_14 = _io_out_state_T_11 | _io_out_state_T_12; // @[RxRESearcher.scala 24:68]
  wire [3:0] _io_out_state_T_15 = _io_out_state_T_13 | _io_out_state_T_14; // @[RxRESearcher.scala 24:68]
  assign io_out_state = io_in_state == 4'hf ? 4'hf : _io_out_state_T_15; // @[RxRESearcher.scala 24:22]
endmodule
module REHandler(
  input         clock,
  input         reset,
  input  [15:0] io_in_char,
  input  [15:0] io_in_rule_0,
  input  [15:0] io_in_rule_1,
  input  [15:0] io_in_rule_2,
  input  [15:0] io_in_rule_3,
  input  [15:0] io_in_rule_4,
  input  [15:0] io_in_rule_5,
  input  [15:0] io_in_rule_6,
  input  [15:0] io_in_rule_7,
  input  [15:0] io_in_rule_8,
  input  [15:0] io_in_rule_9,
  input  [15:0] io_in_rule_10,
  input  [15:0] io_in_rule_11,
  input  [15:0] io_in_rule_12,
  input  [15:0] io_in_rule_13,
  input  [15:0] io_in_rule_14,
  input  [15:0] io_in_rule_15,
  output [3:0]  io_out_state
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] re_handler_unit_queue_0_io_in_char; // @[RxRESearcher.scala 36:54]
  wire [3:0] re_handler_unit_queue_0_io_in_state; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_0; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_1; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_2; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_3; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_4; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_5; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_6; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_7; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_8; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_9; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_10; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_11; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_12; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_13; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_14; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_0_io_in_rule_15; // @[RxRESearcher.scala 36:54]
  wire [3:0] re_handler_unit_queue_0_io_out_state; // @[RxRESearcher.scala 36:54]
  wire [7:0] re_handler_unit_queue_1_io_in_char; // @[RxRESearcher.scala 36:54]
  wire [3:0] re_handler_unit_queue_1_io_in_state; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_0; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_1; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_2; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_3; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_4; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_5; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_6; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_7; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_8; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_9; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_10; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_11; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_12; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_13; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_14; // @[RxRESearcher.scala 36:54]
  wire [15:0] re_handler_unit_queue_1_io_in_rule_15; // @[RxRESearcher.scala 36:54]
  wire [3:0] re_handler_unit_queue_1_io_out_state; // @[RxRESearcher.scala 36:54]
  reg [3:0] part_result_reg; // @[RxRESearcher.scala 37:32]
  REHandlerUnit re_handler_unit_queue_0 ( // @[RxRESearcher.scala 36:54]
    .io_in_char(re_handler_unit_queue_0_io_in_char),
    .io_in_state(re_handler_unit_queue_0_io_in_state),
    .io_in_rule_0(re_handler_unit_queue_0_io_in_rule_0),
    .io_in_rule_1(re_handler_unit_queue_0_io_in_rule_1),
    .io_in_rule_2(re_handler_unit_queue_0_io_in_rule_2),
    .io_in_rule_3(re_handler_unit_queue_0_io_in_rule_3),
    .io_in_rule_4(re_handler_unit_queue_0_io_in_rule_4),
    .io_in_rule_5(re_handler_unit_queue_0_io_in_rule_5),
    .io_in_rule_6(re_handler_unit_queue_0_io_in_rule_6),
    .io_in_rule_7(re_handler_unit_queue_0_io_in_rule_7),
    .io_in_rule_8(re_handler_unit_queue_0_io_in_rule_8),
    .io_in_rule_9(re_handler_unit_queue_0_io_in_rule_9),
    .io_in_rule_10(re_handler_unit_queue_0_io_in_rule_10),
    .io_in_rule_11(re_handler_unit_queue_0_io_in_rule_11),
    .io_in_rule_12(re_handler_unit_queue_0_io_in_rule_12),
    .io_in_rule_13(re_handler_unit_queue_0_io_in_rule_13),
    .io_in_rule_14(re_handler_unit_queue_0_io_in_rule_14),
    .io_in_rule_15(re_handler_unit_queue_0_io_in_rule_15),
    .io_out_state(re_handler_unit_queue_0_io_out_state)
  );
  REHandlerUnit re_handler_unit_queue_1 ( // @[RxRESearcher.scala 36:54]
    .io_in_char(re_handler_unit_queue_1_io_in_char),
    .io_in_state(re_handler_unit_queue_1_io_in_state),
    .io_in_rule_0(re_handler_unit_queue_1_io_in_rule_0),
    .io_in_rule_1(re_handler_unit_queue_1_io_in_rule_1),
    .io_in_rule_2(re_handler_unit_queue_1_io_in_rule_2),
    .io_in_rule_3(re_handler_unit_queue_1_io_in_rule_3),
    .io_in_rule_4(re_handler_unit_queue_1_io_in_rule_4),
    .io_in_rule_5(re_handler_unit_queue_1_io_in_rule_5),
    .io_in_rule_6(re_handler_unit_queue_1_io_in_rule_6),
    .io_in_rule_7(re_handler_unit_queue_1_io_in_rule_7),
    .io_in_rule_8(re_handler_unit_queue_1_io_in_rule_8),
    .io_in_rule_9(re_handler_unit_queue_1_io_in_rule_9),
    .io_in_rule_10(re_handler_unit_queue_1_io_in_rule_10),
    .io_in_rule_11(re_handler_unit_queue_1_io_in_rule_11),
    .io_in_rule_12(re_handler_unit_queue_1_io_in_rule_12),
    .io_in_rule_13(re_handler_unit_queue_1_io_in_rule_13),
    .io_in_rule_14(re_handler_unit_queue_1_io_in_rule_14),
    .io_in_rule_15(re_handler_unit_queue_1_io_in_rule_15),
    .io_out_state(re_handler_unit_queue_1_io_out_state)
  );
  assign io_out_state = part_result_reg; // @[RxRESearcher.scala 47:16]
  assign re_handler_unit_queue_0_io_in_char = io_in_char[7:0]; // @[RxRESearcher.scala 40:54]
  assign re_handler_unit_queue_0_io_in_state = 4'h0; // @[RxRESearcher.scala 42:54]
  assign re_handler_unit_queue_0_io_in_rule_0 = io_in_rule_0; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_1 = io_in_rule_1; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_2 = io_in_rule_2; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_3 = io_in_rule_3; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_4 = io_in_rule_4; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_5 = io_in_rule_5; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_6 = io_in_rule_6; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_7 = io_in_rule_7; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_8 = io_in_rule_8; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_9 = io_in_rule_9; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_10 = io_in_rule_10; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_11 = io_in_rule_11; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_12 = io_in_rule_12; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_13 = io_in_rule_13; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_14 = io_in_rule_14; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_0_io_in_rule_15 = io_in_rule_15; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_char = io_in_char[15:8]; // @[RxRESearcher.scala 40:54]
  assign re_handler_unit_queue_1_io_in_state = re_handler_unit_queue_0_io_out_state; // @[RxRESearcher.scala 43:47]
  assign re_handler_unit_queue_1_io_in_rule_0 = io_in_rule_0; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_1 = io_in_rule_1; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_2 = io_in_rule_2; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_3 = io_in_rule_3; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_4 = io_in_rule_4; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_5 = io_in_rule_5; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_6 = io_in_rule_6; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_7 = io_in_rule_7; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_8 = io_in_rule_8; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_9 = io_in_rule_9; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_10 = io_in_rule_10; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_11 = io_in_rule_11; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_12 = io_in_rule_12; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_13 = io_in_rule_13; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_14 = io_in_rule_14; // @[RxRESearcher.scala 41:41]
  assign re_handler_unit_queue_1_io_in_rule_15 = io_in_rule_15; // @[RxRESearcher.scala 41:41]
  always @(posedge clock) begin
    if (reset) begin // @[RxRESearcher.scala 37:32]
      part_result_reg <= 4'h0; // @[RxRESearcher.scala 37:32]
    end else begin
      part_result_reg <= re_handler_unit_queue_1_io_out_state; // @[RxRESearcher.scala 46:19]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  part_result_reg = _RAND_0[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RxRESearcher(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input          io_in_tuser,
  input  [3:0]   io_in_rx_info_state,
  input  [15:0]  io_in_rx_info_tlen,
  input  [5:0]   io_in_rx_info_qid,
  input  [31:0]  io_in_rx_info_ip_chksum,
  input  [31:0]  io_in_rx_info_tcp_chksum,
  input  [7:0]   io_in_extern_config_c2h_match_op,
  input  [31:0]  io_in_extern_config_c2h_match_arg_0,
  input  [31:0]  io_in_extern_config_c2h_match_arg_1,
  input  [31:0]  io_in_extern_config_c2h_match_arg_2,
  input  [31:0]  io_in_extern_config_c2h_match_arg_3,
  input  [31:0]  io_in_extern_config_c2h_match_arg_4,
  input  [31:0]  io_in_extern_config_c2h_match_arg_5,
  input  [31:0]  io_in_extern_config_c2h_match_arg_6,
  input  [31:0]  io_in_extern_config_c2h_match_arg_7,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output         io_out_tuser,
  output [3:0]   io_out_rx_info_state,
  output [15:0]  io_out_rx_info_tlen,
  output [5:0]   io_out_rx_info_qid,
  output [31:0]  io_out_rx_info_ip_chksum,
  output [31:0]  io_out_rx_info_tcp_chksum,
  output [7:0]   io_out_extern_config_c2h_match_op,
  output [31:0]  io_out_extern_config_c2h_match_arg_0,
  output [31:0]  io_out_extern_config_c2h_match_arg_1,
  output [31:0]  io_out_extern_config_c2h_match_arg_2,
  output [31:0]  io_out_extern_config_c2h_match_arg_3,
  output [31:0]  io_out_extern_config_c2h_match_arg_4,
  output [31:0]  io_out_extern_config_c2h_match_arg_5,
  output [31:0]  io_out_extern_config_c2h_match_arg_6,
  output [31:0]  io_out_extern_config_c2h_match_arg_7
);
`ifdef RANDOMIZE_REG_INIT
  reg [607:0] _RAND_0;
  reg [287:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  re_handler_queue_0_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_0_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_0_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_0_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_1_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_1_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_1_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_1_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_2_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_2_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_2_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_2_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_3_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_3_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_3_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_3_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_4_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_4_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_4_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_4_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_5_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_5_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_5_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_5_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_6_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_6_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_6_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_6_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_7_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_7_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_7_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_7_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_8_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_8_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_8_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_8_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_9_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_9_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_9_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_9_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_10_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_10_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_10_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_10_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_11_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_11_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_11_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_11_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_12_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_12_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_12_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_12_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_13_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_13_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_13_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_13_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_14_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_14_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_14_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_14_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_15_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_15_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_15_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_15_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_16_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_16_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_16_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_16_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_17_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_17_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_17_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_17_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_18_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_18_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_18_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_18_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_19_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_19_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_19_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_19_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_20_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_20_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_20_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_20_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_21_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_21_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_21_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_21_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_22_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_22_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_22_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_22_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_23_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_23_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_23_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_23_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_24_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_24_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_24_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_24_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_25_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_25_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_25_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_25_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_26_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_26_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_26_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_26_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_27_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_27_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_27_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_27_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_28_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_28_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_28_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_28_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_29_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_29_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_29_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_29_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_30_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_30_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_30_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_30_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_31_clock; // @[RxRESearcher.scala 62:45]
  wire  re_handler_queue_31_reset; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_char; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_0; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_1; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_2; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_3; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_4; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_5; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_6; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_7; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_8; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_9; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_10; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_11; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_12; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_13; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_14; // @[RxRESearcher.scala 62:45]
  wire [15:0] re_handler_queue_31_io_in_rule_15; // @[RxRESearcher.scala 62:45]
  wire [3:0] re_handler_queue_31_io_out_state; // @[RxRESearcher.scala 62:45]
  wire  in_shake_hand = io_in_tready & io_in_tvalid; // @[RxPipelineHandler.scala 12:38]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[RxPipelineHandler.scala 13:38]
  wire [604:0] _in_reg_T_1 = {io_in_rx_info_state,io_in_rx_info_tlen,io_in_rx_info_qid,io_in_rx_info_ip_chksum,
    io_in_rx_info_tcp_chksum,io_in_tuser,io_in_tdata,io_in_tvalid,io_in_tlast}; // @[Cat.scala 31:58]
  reg [604:0] in_reg_r; // @[Reg.scala 28:20]
  wire  in_reg_tlast = in_reg_r[0]; // @[RxPipelineHandler.scala 14:128]
  wire  in_reg_tvalid = in_reg_r[1]; // @[RxPipelineHandler.scala 14:128]
  wire [511:0] in_reg_tdata = in_reg_r[513:2]; // @[RxPipelineHandler.scala 14:128]
  wire [5:0] in_reg_rx_info_qid = in_reg_r[584:579]; // @[RxPipelineHandler.scala 14:128]
  wire [263:0] _extern_config_reg_T = {io_in_extern_config_c2h_match_op,io_in_extern_config_c2h_match_arg_7,
    io_in_extern_config_c2h_match_arg_6,io_in_extern_config_c2h_match_arg_5,io_in_extern_config_c2h_match_arg_4,
    io_in_extern_config_c2h_match_arg_3,io_in_extern_config_c2h_match_arg_2,io_in_extern_config_c2h_match_arg_1,
    io_in_extern_config_c2h_match_arg_0}; // @[RxPipelineHandler.scala 15:57]
  reg [263:0] extern_config_reg_r; // @[Reg.scala 28:20]
  wire [31:0] extern_config_reg_c2h_match_arg_0 = extern_config_reg_r[31:0]; // @[RxPipelineHandler.scala 15:91]
  wire [31:0] extern_config_reg_c2h_match_arg_1 = extern_config_reg_r[63:32]; // @[RxPipelineHandler.scala 15:91]
  wire [31:0] extern_config_reg_c2h_match_arg_2 = extern_config_reg_r[95:64]; // @[RxPipelineHandler.scala 15:91]
  wire [31:0] extern_config_reg_c2h_match_arg_3 = extern_config_reg_r[127:96]; // @[RxPipelineHandler.scala 15:91]
  wire [31:0] extern_config_reg_c2h_match_arg_4 = extern_config_reg_r[159:128]; // @[RxPipelineHandler.scala 15:91]
  wire [31:0] extern_config_reg_c2h_match_arg_5 = extern_config_reg_r[191:160]; // @[RxPipelineHandler.scala 15:91]
  wire [31:0] extern_config_reg_c2h_match_arg_6 = extern_config_reg_r[223:192]; // @[RxPipelineHandler.scala 15:91]
  wire [31:0] extern_config_reg_c2h_match_arg_7 = extern_config_reg_r[255:224]; // @[RxPipelineHandler.scala 15:91]
  wire [7:0] extern_config_reg_c2h_match_op = extern_config_reg_r[263:256]; // @[RxPipelineHandler.scala 15:91]
  reg  first_beat_reg; // @[Reg.scala 28:20]
  wire  _GEN_2 = in_shake_hand ? in_reg_tlast : first_beat_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_reg_used_reg; // @[RxPipelineHandler.scala 18:32]
  wire  _GEN_3 = out_shake_hand ? 1'h0 : in_reg_used_reg; // @[RxPipelineHandler.scala 21:29 22:21 18:32]
  wire  _GEN_4 = in_shake_hand | _GEN_3; // @[RxPipelineHandler.scala 19:23 20:21]
  reg [7:0] beat_counter_reg; // @[RxRESearcher.scala 52:33]
  reg  match_found_reg; // @[RxRESearcher.scala 53:32]
  wire [7:0] _beat_counter_reg_T_1 = beat_counter_reg + 8'h1; // @[RxRESearcher.scala 58:42]
  wire [255:0] _input_rule_T = {extern_config_reg_c2h_match_arg_7,extern_config_reg_c2h_match_arg_6,
    extern_config_reg_c2h_match_arg_5,extern_config_reg_c2h_match_arg_4,extern_config_reg_c2h_match_arg_3,
    extern_config_reg_c2h_match_arg_2,extern_config_reg_c2h_match_arg_1,extern_config_reg_c2h_match_arg_0}; // @[RxRESearcher.scala 61:60]
  wire  state_accept_vec_0 = re_handler_queue_0_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_1 = re_handler_queue_1_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_2 = re_handler_queue_2_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_3 = re_handler_queue_3_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_4 = re_handler_queue_4_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_5 = re_handler_queue_5_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_6 = re_handler_queue_6_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_7 = re_handler_queue_7_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_8 = re_handler_queue_8_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_9 = re_handler_queue_9_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_10 = re_handler_queue_10_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_11 = re_handler_queue_11_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_12 = re_handler_queue_12_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_13 = re_handler_queue_13_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_14 = re_handler_queue_14_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_15 = re_handler_queue_15_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_16 = re_handler_queue_16_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_17 = re_handler_queue_17_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_18 = re_handler_queue_18_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_19 = re_handler_queue_19_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_20 = re_handler_queue_20_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_21 = re_handler_queue_21_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_22 = re_handler_queue_22_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_23 = re_handler_queue_23_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_24 = re_handler_queue_24_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_25 = re_handler_queue_25_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_26 = re_handler_queue_26_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_27 = re_handler_queue_27_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_28 = re_handler_queue_28_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_29 = re_handler_queue_29_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_30 = re_handler_queue_30_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  state_accept_vec_31 = re_handler_queue_31_io_out_state == 4'hf; // @[RxRESearcher.scala 65:62]
  wire  _GEN_8 = 5'h1 == beat_counter_reg[4:0] ? state_accept_vec_1 : state_accept_vec_0; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_9 = 5'h2 == beat_counter_reg[4:0] ? state_accept_vec_2 : _GEN_8; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_10 = 5'h3 == beat_counter_reg[4:0] ? state_accept_vec_3 : _GEN_9; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_11 = 5'h4 == beat_counter_reg[4:0] ? state_accept_vec_4 : _GEN_10; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_12 = 5'h5 == beat_counter_reg[4:0] ? state_accept_vec_5 : _GEN_11; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_13 = 5'h6 == beat_counter_reg[4:0] ? state_accept_vec_6 : _GEN_12; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_14 = 5'h7 == beat_counter_reg[4:0] ? state_accept_vec_7 : _GEN_13; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_15 = 5'h8 == beat_counter_reg[4:0] ? state_accept_vec_8 : _GEN_14; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_16 = 5'h9 == beat_counter_reg[4:0] ? state_accept_vec_9 : _GEN_15; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_17 = 5'ha == beat_counter_reg[4:0] ? state_accept_vec_10 : _GEN_16; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_18 = 5'hb == beat_counter_reg[4:0] ? state_accept_vec_11 : _GEN_17; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_19 = 5'hc == beat_counter_reg[4:0] ? state_accept_vec_12 : _GEN_18; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_20 = 5'hd == beat_counter_reg[4:0] ? state_accept_vec_13 : _GEN_19; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_21 = 5'he == beat_counter_reg[4:0] ? state_accept_vec_14 : _GEN_20; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_22 = 5'hf == beat_counter_reg[4:0] ? state_accept_vec_15 : _GEN_21; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_23 = 5'h10 == beat_counter_reg[4:0] ? state_accept_vec_16 : _GEN_22; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_24 = 5'h11 == beat_counter_reg[4:0] ? state_accept_vec_17 : _GEN_23; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_25 = 5'h12 == beat_counter_reg[4:0] ? state_accept_vec_18 : _GEN_24; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_26 = 5'h13 == beat_counter_reg[4:0] ? state_accept_vec_19 : _GEN_25; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_27 = 5'h14 == beat_counter_reg[4:0] ? state_accept_vec_20 : _GEN_26; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_28 = 5'h15 == beat_counter_reg[4:0] ? state_accept_vec_21 : _GEN_27; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_29 = 5'h16 == beat_counter_reg[4:0] ? state_accept_vec_22 : _GEN_28; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_30 = 5'h17 == beat_counter_reg[4:0] ? state_accept_vec_23 : _GEN_29; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_31 = 5'h18 == beat_counter_reg[4:0] ? state_accept_vec_24 : _GEN_30; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_32 = 5'h19 == beat_counter_reg[4:0] ? state_accept_vec_25 : _GEN_31; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_33 = 5'h1a == beat_counter_reg[4:0] ? state_accept_vec_26 : _GEN_32; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_34 = 5'h1b == beat_counter_reg[4:0] ? state_accept_vec_27 : _GEN_33; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_35 = 5'h1c == beat_counter_reg[4:0] ? state_accept_vec_28 : _GEN_34; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_36 = 5'h1d == beat_counter_reg[4:0] ? state_accept_vec_29 : _GEN_35; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_37 = 5'h1e == beat_counter_reg[4:0] ? state_accept_vec_30 : _GEN_36; // @[RxRESearcher.scala 76:{21,21}]
  wire  _GEN_38 = 5'h1f == beat_counter_reg[4:0] ? state_accept_vec_31 : _GEN_37; // @[RxRESearcher.scala 76:{21,21}]
  wire  _match_found_reg_T = match_found_reg | _GEN_38; // @[RxRESearcher.scala 78:40]
  wire [5:0] _io_out_rx_info_qid_T_1 = _match_found_reg_T ? 6'h1 : in_reg_rx_info_qid; // @[RxRESearcher.scala 81:30]
  REHandler re_handler_queue_0 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_0_clock),
    .reset(re_handler_queue_0_reset),
    .io_in_char(re_handler_queue_0_io_in_char),
    .io_in_rule_0(re_handler_queue_0_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_0_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_0_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_0_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_0_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_0_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_0_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_0_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_0_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_0_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_0_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_0_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_0_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_0_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_0_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_0_io_in_rule_15),
    .io_out_state(re_handler_queue_0_io_out_state)
  );
  REHandler re_handler_queue_1 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_1_clock),
    .reset(re_handler_queue_1_reset),
    .io_in_char(re_handler_queue_1_io_in_char),
    .io_in_rule_0(re_handler_queue_1_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_1_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_1_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_1_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_1_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_1_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_1_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_1_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_1_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_1_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_1_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_1_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_1_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_1_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_1_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_1_io_in_rule_15),
    .io_out_state(re_handler_queue_1_io_out_state)
  );
  REHandler re_handler_queue_2 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_2_clock),
    .reset(re_handler_queue_2_reset),
    .io_in_char(re_handler_queue_2_io_in_char),
    .io_in_rule_0(re_handler_queue_2_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_2_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_2_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_2_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_2_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_2_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_2_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_2_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_2_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_2_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_2_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_2_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_2_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_2_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_2_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_2_io_in_rule_15),
    .io_out_state(re_handler_queue_2_io_out_state)
  );
  REHandler re_handler_queue_3 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_3_clock),
    .reset(re_handler_queue_3_reset),
    .io_in_char(re_handler_queue_3_io_in_char),
    .io_in_rule_0(re_handler_queue_3_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_3_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_3_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_3_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_3_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_3_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_3_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_3_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_3_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_3_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_3_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_3_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_3_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_3_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_3_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_3_io_in_rule_15),
    .io_out_state(re_handler_queue_3_io_out_state)
  );
  REHandler re_handler_queue_4 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_4_clock),
    .reset(re_handler_queue_4_reset),
    .io_in_char(re_handler_queue_4_io_in_char),
    .io_in_rule_0(re_handler_queue_4_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_4_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_4_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_4_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_4_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_4_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_4_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_4_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_4_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_4_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_4_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_4_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_4_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_4_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_4_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_4_io_in_rule_15),
    .io_out_state(re_handler_queue_4_io_out_state)
  );
  REHandler re_handler_queue_5 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_5_clock),
    .reset(re_handler_queue_5_reset),
    .io_in_char(re_handler_queue_5_io_in_char),
    .io_in_rule_0(re_handler_queue_5_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_5_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_5_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_5_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_5_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_5_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_5_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_5_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_5_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_5_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_5_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_5_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_5_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_5_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_5_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_5_io_in_rule_15),
    .io_out_state(re_handler_queue_5_io_out_state)
  );
  REHandler re_handler_queue_6 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_6_clock),
    .reset(re_handler_queue_6_reset),
    .io_in_char(re_handler_queue_6_io_in_char),
    .io_in_rule_0(re_handler_queue_6_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_6_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_6_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_6_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_6_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_6_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_6_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_6_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_6_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_6_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_6_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_6_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_6_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_6_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_6_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_6_io_in_rule_15),
    .io_out_state(re_handler_queue_6_io_out_state)
  );
  REHandler re_handler_queue_7 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_7_clock),
    .reset(re_handler_queue_7_reset),
    .io_in_char(re_handler_queue_7_io_in_char),
    .io_in_rule_0(re_handler_queue_7_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_7_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_7_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_7_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_7_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_7_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_7_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_7_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_7_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_7_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_7_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_7_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_7_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_7_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_7_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_7_io_in_rule_15),
    .io_out_state(re_handler_queue_7_io_out_state)
  );
  REHandler re_handler_queue_8 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_8_clock),
    .reset(re_handler_queue_8_reset),
    .io_in_char(re_handler_queue_8_io_in_char),
    .io_in_rule_0(re_handler_queue_8_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_8_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_8_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_8_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_8_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_8_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_8_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_8_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_8_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_8_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_8_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_8_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_8_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_8_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_8_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_8_io_in_rule_15),
    .io_out_state(re_handler_queue_8_io_out_state)
  );
  REHandler re_handler_queue_9 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_9_clock),
    .reset(re_handler_queue_9_reset),
    .io_in_char(re_handler_queue_9_io_in_char),
    .io_in_rule_0(re_handler_queue_9_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_9_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_9_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_9_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_9_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_9_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_9_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_9_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_9_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_9_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_9_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_9_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_9_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_9_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_9_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_9_io_in_rule_15),
    .io_out_state(re_handler_queue_9_io_out_state)
  );
  REHandler re_handler_queue_10 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_10_clock),
    .reset(re_handler_queue_10_reset),
    .io_in_char(re_handler_queue_10_io_in_char),
    .io_in_rule_0(re_handler_queue_10_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_10_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_10_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_10_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_10_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_10_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_10_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_10_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_10_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_10_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_10_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_10_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_10_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_10_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_10_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_10_io_in_rule_15),
    .io_out_state(re_handler_queue_10_io_out_state)
  );
  REHandler re_handler_queue_11 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_11_clock),
    .reset(re_handler_queue_11_reset),
    .io_in_char(re_handler_queue_11_io_in_char),
    .io_in_rule_0(re_handler_queue_11_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_11_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_11_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_11_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_11_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_11_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_11_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_11_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_11_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_11_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_11_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_11_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_11_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_11_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_11_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_11_io_in_rule_15),
    .io_out_state(re_handler_queue_11_io_out_state)
  );
  REHandler re_handler_queue_12 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_12_clock),
    .reset(re_handler_queue_12_reset),
    .io_in_char(re_handler_queue_12_io_in_char),
    .io_in_rule_0(re_handler_queue_12_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_12_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_12_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_12_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_12_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_12_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_12_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_12_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_12_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_12_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_12_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_12_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_12_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_12_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_12_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_12_io_in_rule_15),
    .io_out_state(re_handler_queue_12_io_out_state)
  );
  REHandler re_handler_queue_13 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_13_clock),
    .reset(re_handler_queue_13_reset),
    .io_in_char(re_handler_queue_13_io_in_char),
    .io_in_rule_0(re_handler_queue_13_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_13_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_13_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_13_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_13_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_13_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_13_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_13_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_13_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_13_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_13_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_13_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_13_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_13_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_13_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_13_io_in_rule_15),
    .io_out_state(re_handler_queue_13_io_out_state)
  );
  REHandler re_handler_queue_14 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_14_clock),
    .reset(re_handler_queue_14_reset),
    .io_in_char(re_handler_queue_14_io_in_char),
    .io_in_rule_0(re_handler_queue_14_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_14_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_14_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_14_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_14_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_14_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_14_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_14_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_14_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_14_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_14_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_14_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_14_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_14_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_14_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_14_io_in_rule_15),
    .io_out_state(re_handler_queue_14_io_out_state)
  );
  REHandler re_handler_queue_15 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_15_clock),
    .reset(re_handler_queue_15_reset),
    .io_in_char(re_handler_queue_15_io_in_char),
    .io_in_rule_0(re_handler_queue_15_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_15_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_15_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_15_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_15_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_15_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_15_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_15_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_15_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_15_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_15_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_15_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_15_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_15_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_15_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_15_io_in_rule_15),
    .io_out_state(re_handler_queue_15_io_out_state)
  );
  REHandler re_handler_queue_16 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_16_clock),
    .reset(re_handler_queue_16_reset),
    .io_in_char(re_handler_queue_16_io_in_char),
    .io_in_rule_0(re_handler_queue_16_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_16_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_16_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_16_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_16_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_16_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_16_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_16_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_16_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_16_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_16_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_16_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_16_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_16_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_16_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_16_io_in_rule_15),
    .io_out_state(re_handler_queue_16_io_out_state)
  );
  REHandler re_handler_queue_17 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_17_clock),
    .reset(re_handler_queue_17_reset),
    .io_in_char(re_handler_queue_17_io_in_char),
    .io_in_rule_0(re_handler_queue_17_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_17_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_17_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_17_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_17_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_17_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_17_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_17_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_17_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_17_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_17_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_17_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_17_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_17_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_17_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_17_io_in_rule_15),
    .io_out_state(re_handler_queue_17_io_out_state)
  );
  REHandler re_handler_queue_18 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_18_clock),
    .reset(re_handler_queue_18_reset),
    .io_in_char(re_handler_queue_18_io_in_char),
    .io_in_rule_0(re_handler_queue_18_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_18_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_18_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_18_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_18_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_18_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_18_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_18_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_18_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_18_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_18_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_18_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_18_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_18_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_18_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_18_io_in_rule_15),
    .io_out_state(re_handler_queue_18_io_out_state)
  );
  REHandler re_handler_queue_19 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_19_clock),
    .reset(re_handler_queue_19_reset),
    .io_in_char(re_handler_queue_19_io_in_char),
    .io_in_rule_0(re_handler_queue_19_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_19_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_19_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_19_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_19_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_19_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_19_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_19_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_19_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_19_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_19_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_19_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_19_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_19_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_19_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_19_io_in_rule_15),
    .io_out_state(re_handler_queue_19_io_out_state)
  );
  REHandler re_handler_queue_20 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_20_clock),
    .reset(re_handler_queue_20_reset),
    .io_in_char(re_handler_queue_20_io_in_char),
    .io_in_rule_0(re_handler_queue_20_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_20_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_20_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_20_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_20_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_20_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_20_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_20_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_20_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_20_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_20_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_20_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_20_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_20_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_20_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_20_io_in_rule_15),
    .io_out_state(re_handler_queue_20_io_out_state)
  );
  REHandler re_handler_queue_21 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_21_clock),
    .reset(re_handler_queue_21_reset),
    .io_in_char(re_handler_queue_21_io_in_char),
    .io_in_rule_0(re_handler_queue_21_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_21_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_21_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_21_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_21_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_21_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_21_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_21_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_21_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_21_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_21_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_21_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_21_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_21_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_21_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_21_io_in_rule_15),
    .io_out_state(re_handler_queue_21_io_out_state)
  );
  REHandler re_handler_queue_22 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_22_clock),
    .reset(re_handler_queue_22_reset),
    .io_in_char(re_handler_queue_22_io_in_char),
    .io_in_rule_0(re_handler_queue_22_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_22_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_22_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_22_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_22_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_22_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_22_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_22_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_22_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_22_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_22_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_22_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_22_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_22_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_22_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_22_io_in_rule_15),
    .io_out_state(re_handler_queue_22_io_out_state)
  );
  REHandler re_handler_queue_23 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_23_clock),
    .reset(re_handler_queue_23_reset),
    .io_in_char(re_handler_queue_23_io_in_char),
    .io_in_rule_0(re_handler_queue_23_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_23_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_23_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_23_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_23_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_23_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_23_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_23_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_23_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_23_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_23_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_23_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_23_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_23_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_23_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_23_io_in_rule_15),
    .io_out_state(re_handler_queue_23_io_out_state)
  );
  REHandler re_handler_queue_24 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_24_clock),
    .reset(re_handler_queue_24_reset),
    .io_in_char(re_handler_queue_24_io_in_char),
    .io_in_rule_0(re_handler_queue_24_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_24_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_24_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_24_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_24_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_24_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_24_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_24_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_24_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_24_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_24_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_24_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_24_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_24_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_24_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_24_io_in_rule_15),
    .io_out_state(re_handler_queue_24_io_out_state)
  );
  REHandler re_handler_queue_25 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_25_clock),
    .reset(re_handler_queue_25_reset),
    .io_in_char(re_handler_queue_25_io_in_char),
    .io_in_rule_0(re_handler_queue_25_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_25_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_25_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_25_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_25_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_25_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_25_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_25_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_25_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_25_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_25_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_25_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_25_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_25_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_25_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_25_io_in_rule_15),
    .io_out_state(re_handler_queue_25_io_out_state)
  );
  REHandler re_handler_queue_26 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_26_clock),
    .reset(re_handler_queue_26_reset),
    .io_in_char(re_handler_queue_26_io_in_char),
    .io_in_rule_0(re_handler_queue_26_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_26_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_26_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_26_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_26_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_26_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_26_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_26_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_26_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_26_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_26_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_26_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_26_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_26_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_26_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_26_io_in_rule_15),
    .io_out_state(re_handler_queue_26_io_out_state)
  );
  REHandler re_handler_queue_27 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_27_clock),
    .reset(re_handler_queue_27_reset),
    .io_in_char(re_handler_queue_27_io_in_char),
    .io_in_rule_0(re_handler_queue_27_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_27_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_27_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_27_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_27_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_27_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_27_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_27_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_27_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_27_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_27_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_27_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_27_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_27_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_27_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_27_io_in_rule_15),
    .io_out_state(re_handler_queue_27_io_out_state)
  );
  REHandler re_handler_queue_28 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_28_clock),
    .reset(re_handler_queue_28_reset),
    .io_in_char(re_handler_queue_28_io_in_char),
    .io_in_rule_0(re_handler_queue_28_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_28_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_28_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_28_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_28_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_28_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_28_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_28_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_28_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_28_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_28_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_28_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_28_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_28_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_28_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_28_io_in_rule_15),
    .io_out_state(re_handler_queue_28_io_out_state)
  );
  REHandler re_handler_queue_29 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_29_clock),
    .reset(re_handler_queue_29_reset),
    .io_in_char(re_handler_queue_29_io_in_char),
    .io_in_rule_0(re_handler_queue_29_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_29_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_29_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_29_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_29_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_29_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_29_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_29_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_29_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_29_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_29_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_29_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_29_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_29_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_29_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_29_io_in_rule_15),
    .io_out_state(re_handler_queue_29_io_out_state)
  );
  REHandler re_handler_queue_30 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_30_clock),
    .reset(re_handler_queue_30_reset),
    .io_in_char(re_handler_queue_30_io_in_char),
    .io_in_rule_0(re_handler_queue_30_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_30_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_30_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_30_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_30_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_30_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_30_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_30_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_30_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_30_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_30_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_30_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_30_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_30_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_30_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_30_io_in_rule_15),
    .io_out_state(re_handler_queue_30_io_out_state)
  );
  REHandler re_handler_queue_31 ( // @[RxRESearcher.scala 62:45]
    .clock(re_handler_queue_31_clock),
    .reset(re_handler_queue_31_reset),
    .io_in_char(re_handler_queue_31_io_in_char),
    .io_in_rule_0(re_handler_queue_31_io_in_rule_0),
    .io_in_rule_1(re_handler_queue_31_io_in_rule_1),
    .io_in_rule_2(re_handler_queue_31_io_in_rule_2),
    .io_in_rule_3(re_handler_queue_31_io_in_rule_3),
    .io_in_rule_4(re_handler_queue_31_io_in_rule_4),
    .io_in_rule_5(re_handler_queue_31_io_in_rule_5),
    .io_in_rule_6(re_handler_queue_31_io_in_rule_6),
    .io_in_rule_7(re_handler_queue_31_io_in_rule_7),
    .io_in_rule_8(re_handler_queue_31_io_in_rule_8),
    .io_in_rule_9(re_handler_queue_31_io_in_rule_9),
    .io_in_rule_10(re_handler_queue_31_io_in_rule_10),
    .io_in_rule_11(re_handler_queue_31_io_in_rule_11),
    .io_in_rule_12(re_handler_queue_31_io_in_rule_12),
    .io_in_rule_13(re_handler_queue_31_io_in_rule_13),
    .io_in_rule_14(re_handler_queue_31_io_in_rule_14),
    .io_in_rule_15(re_handler_queue_31_io_in_rule_15),
    .io_out_state(re_handler_queue_31_io_out_state)
  );
  assign io_in_tready = io_out_tready | ~in_reg_used_reg; // @[RxPipelineHandler.scala 30:47]
  assign io_out_tdata = in_reg_r[513:2]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_tvalid = in_reg_tvalid & in_reg_used_reg; // @[RxPipelineHandler.scala 27:47]
  assign io_out_tlast = in_reg_r[0]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_tuser = in_reg_r[514]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_state = in_reg_r[604:601]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_tlen = in_reg_r[600:585]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_qid = extern_config_reg_c2h_match_op[7] ? _io_out_rx_info_qid_T_1 : in_reg_rx_info_qid; // @[RxPipelineHandler.scala 29:18 RxRESearcher.scala 80:43 81:24]
  assign io_out_rx_info_ip_chksum = in_reg_r[578:547]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_tcp_chksum = in_reg_r[546:515]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_extern_config_c2h_match_op = extern_config_reg_r[263:256]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg_0 = extern_config_reg_r[31:0]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg_1 = extern_config_reg_r[63:32]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg_2 = extern_config_reg_r[95:64]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg_3 = extern_config_reg_r[127:96]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg_4 = extern_config_reg_r[159:128]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg_5 = extern_config_reg_r[191:160]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg_6 = extern_config_reg_r[223:192]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg_7 = extern_config_reg_r[255:224]; // @[RxPipelineHandler.scala 15:91]
  assign re_handler_queue_0_clock = clock;
  assign re_handler_queue_0_reset = reset;
  assign re_handler_queue_0_io_in_char = in_reg_tdata[15:0]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_0_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_0_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_clock = clock;
  assign re_handler_queue_1_reset = reset;
  assign re_handler_queue_1_io_in_char = in_reg_tdata[31:16]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_1_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_1_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_clock = clock;
  assign re_handler_queue_2_reset = reset;
  assign re_handler_queue_2_io_in_char = in_reg_tdata[47:32]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_2_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_2_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_clock = clock;
  assign re_handler_queue_3_reset = reset;
  assign re_handler_queue_3_io_in_char = in_reg_tdata[63:48]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_3_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_3_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_clock = clock;
  assign re_handler_queue_4_reset = reset;
  assign re_handler_queue_4_io_in_char = in_reg_tdata[79:64]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_4_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_4_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_clock = clock;
  assign re_handler_queue_5_reset = reset;
  assign re_handler_queue_5_io_in_char = in_reg_tdata[95:80]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_5_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_5_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_clock = clock;
  assign re_handler_queue_6_reset = reset;
  assign re_handler_queue_6_io_in_char = in_reg_tdata[111:96]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_6_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_6_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_clock = clock;
  assign re_handler_queue_7_reset = reset;
  assign re_handler_queue_7_io_in_char = in_reg_tdata[127:112]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_7_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_7_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_clock = clock;
  assign re_handler_queue_8_reset = reset;
  assign re_handler_queue_8_io_in_char = in_reg_tdata[143:128]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_8_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_8_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_clock = clock;
  assign re_handler_queue_9_reset = reset;
  assign re_handler_queue_9_io_in_char = in_reg_tdata[159:144]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_9_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_9_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_clock = clock;
  assign re_handler_queue_10_reset = reset;
  assign re_handler_queue_10_io_in_char = in_reg_tdata[175:160]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_10_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_10_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_clock = clock;
  assign re_handler_queue_11_reset = reset;
  assign re_handler_queue_11_io_in_char = in_reg_tdata[191:176]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_11_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_11_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_clock = clock;
  assign re_handler_queue_12_reset = reset;
  assign re_handler_queue_12_io_in_char = in_reg_tdata[207:192]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_12_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_12_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_clock = clock;
  assign re_handler_queue_13_reset = reset;
  assign re_handler_queue_13_io_in_char = in_reg_tdata[223:208]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_13_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_13_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_clock = clock;
  assign re_handler_queue_14_reset = reset;
  assign re_handler_queue_14_io_in_char = in_reg_tdata[239:224]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_14_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_14_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_clock = clock;
  assign re_handler_queue_15_reset = reset;
  assign re_handler_queue_15_io_in_char = in_reg_tdata[255:240]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_15_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_15_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_clock = clock;
  assign re_handler_queue_16_reset = reset;
  assign re_handler_queue_16_io_in_char = in_reg_tdata[271:256]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_16_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_16_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_clock = clock;
  assign re_handler_queue_17_reset = reset;
  assign re_handler_queue_17_io_in_char = in_reg_tdata[287:272]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_17_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_17_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_clock = clock;
  assign re_handler_queue_18_reset = reset;
  assign re_handler_queue_18_io_in_char = in_reg_tdata[303:288]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_18_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_18_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_clock = clock;
  assign re_handler_queue_19_reset = reset;
  assign re_handler_queue_19_io_in_char = in_reg_tdata[319:304]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_19_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_19_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_clock = clock;
  assign re_handler_queue_20_reset = reset;
  assign re_handler_queue_20_io_in_char = in_reg_tdata[335:320]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_20_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_20_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_clock = clock;
  assign re_handler_queue_21_reset = reset;
  assign re_handler_queue_21_io_in_char = in_reg_tdata[351:336]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_21_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_21_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_clock = clock;
  assign re_handler_queue_22_reset = reset;
  assign re_handler_queue_22_io_in_char = in_reg_tdata[367:352]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_22_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_22_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_clock = clock;
  assign re_handler_queue_23_reset = reset;
  assign re_handler_queue_23_io_in_char = in_reg_tdata[383:368]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_23_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_23_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_clock = clock;
  assign re_handler_queue_24_reset = reset;
  assign re_handler_queue_24_io_in_char = in_reg_tdata[399:384]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_24_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_24_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_clock = clock;
  assign re_handler_queue_25_reset = reset;
  assign re_handler_queue_25_io_in_char = in_reg_tdata[415:400]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_25_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_25_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_clock = clock;
  assign re_handler_queue_26_reset = reset;
  assign re_handler_queue_26_io_in_char = in_reg_tdata[431:416]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_26_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_26_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_clock = clock;
  assign re_handler_queue_27_reset = reset;
  assign re_handler_queue_27_io_in_char = in_reg_tdata[447:432]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_27_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_27_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_clock = clock;
  assign re_handler_queue_28_reset = reset;
  assign re_handler_queue_28_io_in_char = in_reg_tdata[463:448]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_28_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_28_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_clock = clock;
  assign re_handler_queue_29_reset = reset;
  assign re_handler_queue_29_io_in_char = in_reg_tdata[479:464]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_29_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_29_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_clock = clock;
  assign re_handler_queue_30_reset = reset;
  assign re_handler_queue_30_io_in_char = in_reg_tdata[495:480]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_30_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_30_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_clock = clock;
  assign re_handler_queue_31_reset = reset;
  assign re_handler_queue_31_io_in_char = in_reg_tdata[511:496]; // @[RxRESearcher.scala 67:51]
  assign re_handler_queue_31_io_in_rule_0 = _input_rule_T[15:0]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_1 = _input_rule_T[31:16]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_2 = _input_rule_T[47:32]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_3 = _input_rule_T[63:48]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_4 = _input_rule_T[79:64]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_5 = _input_rule_T[95:80]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_6 = _input_rule_T[111:96]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_7 = _input_rule_T[127:112]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_8 = _input_rule_T[143:128]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_9 = _input_rule_T[159:144]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_10 = _input_rule_T[175:160]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_11 = _input_rule_T[191:176]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_12 = _input_rule_T[207:192]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_13 = _input_rule_T[223:208]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_14 = _input_rule_T[239:224]; // @[RxRESearcher.scala 61:60]
  assign re_handler_queue_31_io_in_rule_15 = _input_rule_T[255:240]; // @[RxRESearcher.scala 61:60]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      in_reg_r <= 605'h1; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_reg_r <= _in_reg_T_1; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      extern_config_reg_r <= 264'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      extern_config_reg_r <= _extern_config_reg_T; // @[Reg.scala 29:22]
    end
    first_beat_reg <= reset | _GEN_2; // @[Reg.scala 28:{20,20}]
    if (reset) begin // @[RxPipelineHandler.scala 18:32]
      in_reg_used_reg <= 1'h0; // @[RxPipelineHandler.scala 18:32]
    end else begin
      in_reg_used_reg <= _GEN_4;
    end
    if (reset) begin // @[RxRESearcher.scala 52:33]
      beat_counter_reg <= 8'h0; // @[RxRESearcher.scala 52:33]
    end else if (in_shake_hand) begin // @[RxRESearcher.scala 55:23]
      beat_counter_reg <= 8'h0; // @[RxRESearcher.scala 56:22]
    end else if (beat_counter_reg < 8'h20) begin // @[RxRESearcher.scala 57:39]
      beat_counter_reg <= _beat_counter_reg_T_1; // @[RxRESearcher.scala 58:22]
    end
    if (reset) begin // @[RxRESearcher.scala 53:32]
      match_found_reg <= 1'h0; // @[RxRESearcher.scala 53:32]
    end else if (first_beat_reg) begin // @[RxRESearcher.scala 75:25]
      if (5'h1f == beat_counter_reg[4:0]) begin // @[RxRESearcher.scala 76:21]
        match_found_reg <= state_accept_vec_31; // @[RxRESearcher.scala 76:21]
      end else if (5'h1e == beat_counter_reg[4:0]) begin // @[RxRESearcher.scala 76:21]
        match_found_reg <= state_accept_vec_30; // @[RxRESearcher.scala 76:21]
      end else begin
        match_found_reg <= _GEN_36;
      end
    end else begin
      match_found_reg <= match_found_reg | _GEN_38; // @[RxRESearcher.scala 78:21]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {19{`RANDOM}};
  in_reg_r = _RAND_0[604:0];
  _RAND_1 = {9{`RANDOM}};
  extern_config_reg_r = _RAND_1[263:0];
  _RAND_2 = {1{`RANDOM}};
  first_beat_reg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  in_reg_used_reg = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  beat_counter_reg = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  match_found_reg = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
