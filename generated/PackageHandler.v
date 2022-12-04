module ReduceAddSync(
  input         clock,
  input  [31:0] io_in_vec_0,
  input  [31:0] io_in_vec_1,
  input  [31:0] io_in_vec_2,
  input  [31:0] io_in_vec_3,
  input  [31:0] io_in_vec_4,
  input  [31:0] io_in_vec_5,
  input  [31:0] io_in_vec_6,
  input  [31:0] io_in_vec_7,
  input  [31:0] io_in_vec_8,
  input  [31:0] io_in_vec_9,
  output [31:0] io_out_sum
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] cal_reg_0; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_1; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_2; // @[Misc.scala 173:20]
  wire [31:0] _cal_reg_0_T_1 = io_in_vec_0 + io_in_vec_1; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_0_T_3 = io_in_vec_2 + io_in_vec_3; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_1_T_1 = io_in_vec_4 + io_in_vec_5; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_1_T_3 = io_in_vec_6 + io_in_vec_7; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_2_T_1 = io_in_vec_8 + io_in_vec_9; // @[Misc.scala 188:42]
  wire [32:0] _cal_reg_2_T_4 = {{1'd0}, _cal_reg_2_T_1}; // @[Misc.scala 188:42]
  wire [31:0] _io_out_sum_T_1 = cal_reg_0 + cal_reg_1; // @[Misc.scala 190:37]
  wire [32:0] _io_out_sum_T_2 = {{1'd0}, cal_reg_2}; // @[Misc.scala 190:37]
  assign io_out_sum = _io_out_sum_T_1 + _io_out_sum_T_2[31:0]; // @[Misc.scala 190:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_1 + _cal_reg_0_T_3; // @[Misc.scala 188:42]
    cal_reg_1 <= _cal_reg_1_T_1 + _cal_reg_1_T_3; // @[Misc.scala 188:42]
    cal_reg_2 <= _cal_reg_2_T_4[31:0]; // @[Misc.scala 188:42]
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
  cal_reg_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  cal_reg_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  cal_reg_2 = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ReduceAddSync_1(
  input         clock,
  input  [31:0] io_in_vec_0,
  input  [31:0] io_in_vec_1,
  input  [31:0] io_in_vec_2,
  input  [31:0] io_in_vec_3,
  input  [31:0] io_in_vec_4,
  input  [31:0] io_in_vec_5,
  input  [31:0] io_in_vec_6,
  input  [31:0] io_in_vec_7,
  input  [31:0] io_in_vec_8,
  input  [31:0] io_in_vec_9,
  input  [31:0] io_in_vec_10,
  input  [31:0] io_in_vec_11,
  input  [31:0] io_in_vec_12,
  input  [31:0] io_in_vec_13,
  input  [31:0] io_in_vec_14,
  input  [31:0] io_in_vec_15,
  input  [31:0] io_in_vec_16,
  input  [31:0] io_in_vec_17,
  input  [31:0] io_in_vec_18,
  input  [31:0] io_in_vec_19,
  input  [31:0] io_in_vec_20,
  input  [31:0] io_in_vec_21,
  input  [31:0] io_in_vec_22,
  input  [31:0] io_in_vec_23,
  input  [31:0] io_in_vec_24,
  input  [31:0] io_in_vec_25,
  input  [31:0] io_in_vec_26,
  input  [31:0] io_in_vec_27,
  input  [31:0] io_in_vec_28,
  input  [31:0] io_in_vec_29,
  input  [31:0] io_in_vec_30,
  input  [31:0] io_in_vec_31,
  output [31:0] io_out_sum
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] cal_reg_0; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_1; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_2; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_3; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_4; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_5; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_6; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_7; // @[Misc.scala 173:20]
  wire [31:0] _cal_reg_0_T_1 = io_in_vec_0 + io_in_vec_1; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_0_T_3 = io_in_vec_2 + io_in_vec_3; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_1_T_1 = io_in_vec_4 + io_in_vec_5; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_1_T_3 = io_in_vec_6 + io_in_vec_7; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_2_T_1 = io_in_vec_8 + io_in_vec_9; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_2_T_3 = io_in_vec_10 + io_in_vec_11; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_3_T_1 = io_in_vec_12 + io_in_vec_13; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_3_T_3 = io_in_vec_14 + io_in_vec_15; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_4_T_1 = io_in_vec_16 + io_in_vec_17; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_4_T_3 = io_in_vec_18 + io_in_vec_19; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_5_T_1 = io_in_vec_20 + io_in_vec_21; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_5_T_3 = io_in_vec_22 + io_in_vec_23; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_6_T_1 = io_in_vec_24 + io_in_vec_25; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_6_T_3 = io_in_vec_26 + io_in_vec_27; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_7_T_1 = io_in_vec_28 + io_in_vec_29; // @[Misc.scala 188:42]
  wire [31:0] _cal_reg_7_T_3 = io_in_vec_30 + io_in_vec_31; // @[Misc.scala 188:42]
  wire [31:0] _io_out_sum_T_1 = cal_reg_0 + cal_reg_1; // @[Misc.scala 190:37]
  wire [31:0] _io_out_sum_T_3 = cal_reg_2 + cal_reg_3; // @[Misc.scala 190:37]
  wire [31:0] _io_out_sum_T_5 = cal_reg_4 + cal_reg_5; // @[Misc.scala 190:37]
  wire [31:0] _io_out_sum_T_7 = cal_reg_6 + cal_reg_7; // @[Misc.scala 190:37]
  wire [31:0] _io_out_sum_T_9 = _io_out_sum_T_1 + _io_out_sum_T_3; // @[Misc.scala 190:37]
  wire [31:0] _io_out_sum_T_11 = _io_out_sum_T_5 + _io_out_sum_T_7; // @[Misc.scala 190:37]
  assign io_out_sum = _io_out_sum_T_9 + _io_out_sum_T_11; // @[Misc.scala 190:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_1 + _cal_reg_0_T_3; // @[Misc.scala 188:42]
    cal_reg_1 <= _cal_reg_1_T_1 + _cal_reg_1_T_3; // @[Misc.scala 188:42]
    cal_reg_2 <= _cal_reg_2_T_1 + _cal_reg_2_T_3; // @[Misc.scala 188:42]
    cal_reg_3 <= _cal_reg_3_T_1 + _cal_reg_3_T_3; // @[Misc.scala 188:42]
    cal_reg_4 <= _cal_reg_4_T_1 + _cal_reg_4_T_3; // @[Misc.scala 188:42]
    cal_reg_5 <= _cal_reg_5_T_1 + _cal_reg_5_T_3; // @[Misc.scala 188:42]
    cal_reg_6 <= _cal_reg_6_T_1 + _cal_reg_6_T_3; // @[Misc.scala 188:42]
    cal_reg_7 <= _cal_reg_7_T_1 + _cal_reg_7_T_3; // @[Misc.scala 188:42]
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
  cal_reg_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  cal_reg_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  cal_reg_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  cal_reg_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  cal_reg_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  cal_reg_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  cal_reg_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  cal_reg_7 = _RAND_7[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TxChksumGenerator(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output [31:0]  io_out_tx_info_ip_chksum,
  output [31:0]  io_out_tx_info_tcp_chksum
);
`ifdef RANDOMIZE_REG_INIT
  reg [607:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  ip_chksum_cal_clock; // @[TxPipelineHandler.scala 37:29]
  wire [31:0] ip_chksum_cal_io_in_vec_0; // @[TxPipelineHandler.scala 37:29]
  wire [31:0] ip_chksum_cal_io_in_vec_1; // @[TxPipelineHandler.scala 37:29]
  wire [31:0] ip_chksum_cal_io_in_vec_2; // @[TxPipelineHandler.scala 37:29]
  wire [31:0] ip_chksum_cal_io_in_vec_3; // @[TxPipelineHandler.scala 37:29]
  wire [31:0] ip_chksum_cal_io_in_vec_4; // @[TxPipelineHandler.scala 37:29]
  wire [31:0] ip_chksum_cal_io_in_vec_5; // @[TxPipelineHandler.scala 37:29]
  wire [31:0] ip_chksum_cal_io_in_vec_6; // @[TxPipelineHandler.scala 37:29]
  wire [31:0] ip_chksum_cal_io_in_vec_7; // @[TxPipelineHandler.scala 37:29]
  wire [31:0] ip_chksum_cal_io_in_vec_8; // @[TxPipelineHandler.scala 37:29]
  wire [31:0] ip_chksum_cal_io_in_vec_9; // @[TxPipelineHandler.scala 37:29]
  wire [31:0] ip_chksum_cal_io_out_sum; // @[TxPipelineHandler.scala 37:29]
  wire  tcp_pld_chksum_cal_clock; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_0; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_1; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_2; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_3; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_4; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_5; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_6; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_7; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_8; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_9; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_10; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_11; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_12; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_13; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_14; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_15; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_16; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_17; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_18; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_19; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_20; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_21; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_22; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_23; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_24; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_25; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_26; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_27; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_28; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_29; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_30; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_31; // @[TxPipelineHandler.scala 45:34]
  wire [31:0] tcp_pld_chksum_cal_io_out_sum; // @[TxPipelineHandler.scala 45:34]
  wire  tcp_hdr_chksum_cal_clock; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_0; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_1; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_2; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_3; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_4; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_5; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_6; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_7; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_8; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_9; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_10; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_11; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_12; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_13; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_14; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_15; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_16; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_17; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_18; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_19; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_20; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_21; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_22; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_23; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_24; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_25; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_26; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_27; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_28; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_29; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_30; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_31; // @[TxPipelineHandler.scala 52:34]
  wire [31:0] tcp_hdr_chksum_cal_io_out_sum; // @[TxPipelineHandler.scala 52:34]
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[TxPipelineHandler.scala 12:36]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[TxPipelineHandler.scala 13:38]
  wire [577:0] _in_reg_T_1 = {64'h0,io_in_tdata,io_in_tvalid,io_in_tlast}; // @[Cat.scala 31:58]
  reg [577:0] in_reg_r; // @[Reg.scala 28:20]
  wire  in_reg_tlast = in_reg_r[0]; // @[TxPipelineHandler.scala 15:116]
  wire  in_reg_tvalid = in_reg_r[1]; // @[TxPipelineHandler.scala 15:116]
  wire [511:0] in_reg_tdata = in_reg_r[513:2]; // @[TxPipelineHandler.scala 15:116]
  reg  first_beat_reg; // @[Reg.scala 28:20]
  wire  _GEN_1 = in_shake_hand ? in_reg_tlast : first_beat_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_reg_used_reg; // @[TxPipelineHandler.scala 19:32]
  wire  _GEN_3 = out_shake_hand ? 1'h0 : in_reg_used_reg; // @[TxPipelineHandler.scala 22:29 23:21 19:32]
  wire  _GEN_4 = in_shake_hand | _GEN_3; // @[TxPipelineHandler.scala 20:23 21:21]
  wire [511:0] cal_tdata = in_shake_hand ? io_in_tdata : in_reg_tdata; // @[TxPipelineHandler.scala 35:22]
  wire [15:0] _ip_chksum_cal_io_in_vec_0_T_3 = {cal_tdata[119:112],cal_tdata[127:120]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_1_T_3 = {cal_tdata[135:128],cal_tdata[143:136]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_2_T_3 = {cal_tdata[151:144],cal_tdata[159:152]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_3_T_3 = {cal_tdata[167:160],cal_tdata[175:168]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_4_T_3 = {cal_tdata[183:176],cal_tdata[191:184]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_6_T_3 = {cal_tdata[215:208],cal_tdata[223:216]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_7_T_3 = {cal_tdata[231:224],cal_tdata[239:232]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_8_T_3 = {cal_tdata[247:240],cal_tdata[255:248]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_9_T_3 = {cal_tdata[263:256],cal_tdata[271:264]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_0_T_3 = {cal_tdata[7:0],cal_tdata[15:8]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_1_T_3 = {cal_tdata[23:16],cal_tdata[31:24]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_2_T_3 = {cal_tdata[39:32],cal_tdata[47:40]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_3_T_3 = {cal_tdata[55:48],cal_tdata[63:56]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_4_T_3 = {cal_tdata[71:64],cal_tdata[79:72]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_5_T_3 = {cal_tdata[87:80],cal_tdata[95:88]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_6_T_3 = {cal_tdata[103:96],cal_tdata[111:104]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_12_T_3 = {cal_tdata[199:192],cal_tdata[207:200]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_17_T_3 = {cal_tdata[279:272],cal_tdata[287:280]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_18_T_3 = {cal_tdata[295:288],cal_tdata[303:296]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_19_T_3 = {cal_tdata[311:304],cal_tdata[319:312]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_20_T_3 = {cal_tdata[327:320],cal_tdata[335:328]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_21_T_3 = {cal_tdata[343:336],cal_tdata[351:344]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_22_T_3 = {cal_tdata[359:352],cal_tdata[367:360]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_23_T_3 = {cal_tdata[375:368],cal_tdata[383:376]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_24_T_3 = {cal_tdata[391:384],cal_tdata[399:392]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_25_T_3 = {cal_tdata[407:400],cal_tdata[415:408]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_26_T_3 = {cal_tdata[423:416],cal_tdata[431:424]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_27_T_3 = {cal_tdata[439:432],cal_tdata[447:440]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_28_T_3 = {cal_tdata[455:448],cal_tdata[463:456]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_29_T_3 = {cal_tdata[471:464],cal_tdata[479:472]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_30_T_3 = {cal_tdata[487:480],cal_tdata[495:488]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_31_T_3 = {cal_tdata[503:496],cal_tdata[511:504]}; // @[Cat.scala 31:58]
  wire [31:0] tcp_hdr_chksum_result = tcp_hdr_chksum_cal_io_out_sum - 32'h14; // @[TxPipelineHandler.scala 58:61]
  reg [31:0] cal_ip_chksum_reg; // @[TxPipelineHandler.scala 60:34]
  reg [31:0] cal_tcp_chksum_reg; // @[TxPipelineHandler.scala 61:35]
  wire [31:0] _cal_tcp_chksum_reg_T_1 = cal_tcp_chksum_reg + tcp_pld_chksum_cal_io_out_sum; // @[TxPipelineHandler.scala 68:48]
  ReduceAddSync ip_chksum_cal ( // @[TxPipelineHandler.scala 37:29]
    .clock(ip_chksum_cal_clock),
    .io_in_vec_0(ip_chksum_cal_io_in_vec_0),
    .io_in_vec_1(ip_chksum_cal_io_in_vec_1),
    .io_in_vec_2(ip_chksum_cal_io_in_vec_2),
    .io_in_vec_3(ip_chksum_cal_io_in_vec_3),
    .io_in_vec_4(ip_chksum_cal_io_in_vec_4),
    .io_in_vec_5(ip_chksum_cal_io_in_vec_5),
    .io_in_vec_6(ip_chksum_cal_io_in_vec_6),
    .io_in_vec_7(ip_chksum_cal_io_in_vec_7),
    .io_in_vec_8(ip_chksum_cal_io_in_vec_8),
    .io_in_vec_9(ip_chksum_cal_io_in_vec_9),
    .io_out_sum(ip_chksum_cal_io_out_sum)
  );
  ReduceAddSync_1 tcp_pld_chksum_cal ( // @[TxPipelineHandler.scala 45:34]
    .clock(tcp_pld_chksum_cal_clock),
    .io_in_vec_0(tcp_pld_chksum_cal_io_in_vec_0),
    .io_in_vec_1(tcp_pld_chksum_cal_io_in_vec_1),
    .io_in_vec_2(tcp_pld_chksum_cal_io_in_vec_2),
    .io_in_vec_3(tcp_pld_chksum_cal_io_in_vec_3),
    .io_in_vec_4(tcp_pld_chksum_cal_io_in_vec_4),
    .io_in_vec_5(tcp_pld_chksum_cal_io_in_vec_5),
    .io_in_vec_6(tcp_pld_chksum_cal_io_in_vec_6),
    .io_in_vec_7(tcp_pld_chksum_cal_io_in_vec_7),
    .io_in_vec_8(tcp_pld_chksum_cal_io_in_vec_8),
    .io_in_vec_9(tcp_pld_chksum_cal_io_in_vec_9),
    .io_in_vec_10(tcp_pld_chksum_cal_io_in_vec_10),
    .io_in_vec_11(tcp_pld_chksum_cal_io_in_vec_11),
    .io_in_vec_12(tcp_pld_chksum_cal_io_in_vec_12),
    .io_in_vec_13(tcp_pld_chksum_cal_io_in_vec_13),
    .io_in_vec_14(tcp_pld_chksum_cal_io_in_vec_14),
    .io_in_vec_15(tcp_pld_chksum_cal_io_in_vec_15),
    .io_in_vec_16(tcp_pld_chksum_cal_io_in_vec_16),
    .io_in_vec_17(tcp_pld_chksum_cal_io_in_vec_17),
    .io_in_vec_18(tcp_pld_chksum_cal_io_in_vec_18),
    .io_in_vec_19(tcp_pld_chksum_cal_io_in_vec_19),
    .io_in_vec_20(tcp_pld_chksum_cal_io_in_vec_20),
    .io_in_vec_21(tcp_pld_chksum_cal_io_in_vec_21),
    .io_in_vec_22(tcp_pld_chksum_cal_io_in_vec_22),
    .io_in_vec_23(tcp_pld_chksum_cal_io_in_vec_23),
    .io_in_vec_24(tcp_pld_chksum_cal_io_in_vec_24),
    .io_in_vec_25(tcp_pld_chksum_cal_io_in_vec_25),
    .io_in_vec_26(tcp_pld_chksum_cal_io_in_vec_26),
    .io_in_vec_27(tcp_pld_chksum_cal_io_in_vec_27),
    .io_in_vec_28(tcp_pld_chksum_cal_io_in_vec_28),
    .io_in_vec_29(tcp_pld_chksum_cal_io_in_vec_29),
    .io_in_vec_30(tcp_pld_chksum_cal_io_in_vec_30),
    .io_in_vec_31(tcp_pld_chksum_cal_io_in_vec_31),
    .io_out_sum(tcp_pld_chksum_cal_io_out_sum)
  );
  ReduceAddSync_1 tcp_hdr_chksum_cal ( // @[TxPipelineHandler.scala 52:34]
    .clock(tcp_hdr_chksum_cal_clock),
    .io_in_vec_0(tcp_hdr_chksum_cal_io_in_vec_0),
    .io_in_vec_1(tcp_hdr_chksum_cal_io_in_vec_1),
    .io_in_vec_2(tcp_hdr_chksum_cal_io_in_vec_2),
    .io_in_vec_3(tcp_hdr_chksum_cal_io_in_vec_3),
    .io_in_vec_4(tcp_hdr_chksum_cal_io_in_vec_4),
    .io_in_vec_5(tcp_hdr_chksum_cal_io_in_vec_5),
    .io_in_vec_6(tcp_hdr_chksum_cal_io_in_vec_6),
    .io_in_vec_7(tcp_hdr_chksum_cal_io_in_vec_7),
    .io_in_vec_8(tcp_hdr_chksum_cal_io_in_vec_8),
    .io_in_vec_9(tcp_hdr_chksum_cal_io_in_vec_9),
    .io_in_vec_10(tcp_hdr_chksum_cal_io_in_vec_10),
    .io_in_vec_11(tcp_hdr_chksum_cal_io_in_vec_11),
    .io_in_vec_12(tcp_hdr_chksum_cal_io_in_vec_12),
    .io_in_vec_13(tcp_hdr_chksum_cal_io_in_vec_13),
    .io_in_vec_14(tcp_hdr_chksum_cal_io_in_vec_14),
    .io_in_vec_15(tcp_hdr_chksum_cal_io_in_vec_15),
    .io_in_vec_16(tcp_hdr_chksum_cal_io_in_vec_16),
    .io_in_vec_17(tcp_hdr_chksum_cal_io_in_vec_17),
    .io_in_vec_18(tcp_hdr_chksum_cal_io_in_vec_18),
    .io_in_vec_19(tcp_hdr_chksum_cal_io_in_vec_19),
    .io_in_vec_20(tcp_hdr_chksum_cal_io_in_vec_20),
    .io_in_vec_21(tcp_hdr_chksum_cal_io_in_vec_21),
    .io_in_vec_22(tcp_hdr_chksum_cal_io_in_vec_22),
    .io_in_vec_23(tcp_hdr_chksum_cal_io_in_vec_23),
    .io_in_vec_24(tcp_hdr_chksum_cal_io_in_vec_24),
    .io_in_vec_25(tcp_hdr_chksum_cal_io_in_vec_25),
    .io_in_vec_26(tcp_hdr_chksum_cal_io_in_vec_26),
    .io_in_vec_27(tcp_hdr_chksum_cal_io_in_vec_27),
    .io_in_vec_28(tcp_hdr_chksum_cal_io_in_vec_28),
    .io_in_vec_29(tcp_hdr_chksum_cal_io_in_vec_29),
    .io_in_vec_30(tcp_hdr_chksum_cal_io_in_vec_30),
    .io_in_vec_31(tcp_hdr_chksum_cal_io_in_vec_31),
    .io_out_sum(tcp_hdr_chksum_cal_io_out_sum)
  );
  assign io_in_tready = io_out_tready | ~in_reg_used_reg; // @[TxPipelineHandler.scala 26:46]
  assign io_out_tdata = in_reg_r[513:2]; // @[TxPipelineHandler.scala 15:116]
  assign io_out_tvalid = in_reg_tvalid & in_reg_used_reg; // @[TxPipelineHandler.scala 28:46]
  assign io_out_tlast = in_reg_r[0]; // @[TxPipelineHandler.scala 15:116]
  assign io_out_tx_info_ip_chksum = first_beat_reg ? ip_chksum_cal_io_out_sum : cal_ip_chksum_reg; // @[TxPipelineHandler.scala 71:34]
  assign io_out_tx_info_tcp_chksum = first_beat_reg ? tcp_hdr_chksum_result : _cal_tcp_chksum_reg_T_1; // @[TxPipelineHandler.scala 72:35]
  assign ip_chksum_cal_clock = clock;
  assign ip_chksum_cal_io_in_vec_0 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_3}; // @[TxPipelineHandler.scala 40:37]
  assign ip_chksum_cal_io_in_vec_1 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[TxPipelineHandler.scala 40:37]
  assign ip_chksum_cal_io_in_vec_2 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_3}; // @[TxPipelineHandler.scala 40:37]
  assign ip_chksum_cal_io_in_vec_3 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_3}; // @[TxPipelineHandler.scala 40:37]
  assign ip_chksum_cal_io_in_vec_4 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_3}; // @[TxPipelineHandler.scala 40:37]
  assign ip_chksum_cal_io_in_vec_5 = 32'h0; // @[TxPipelineHandler.scala 39:44]
  assign ip_chksum_cal_io_in_vec_6 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[TxPipelineHandler.scala 40:37]
  assign ip_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[TxPipelineHandler.scala 40:37]
  assign ip_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[TxPipelineHandler.scala 40:37]
  assign ip_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[TxPipelineHandler.scala 40:37]
  assign tcp_pld_chksum_cal_clock = clock;
  assign tcp_pld_chksum_cal_io_in_vec_0 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_0_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_1 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_1_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_2 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_2_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_3 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_3_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_4 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_4_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_5 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_5_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_6 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_6_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_10 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_11 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_12 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_12_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_25 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_25_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_pld_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_3}; // @[TxPipelineHandler.scala 47:37]
  assign tcp_hdr_chksum_cal_clock = clock;
  assign tcp_hdr_chksum_cal_io_in_vec_0 = 32'h0; // @[TxPipelineHandler.scala 56:42]
  assign tcp_hdr_chksum_cal_io_in_vec_1 = 32'h0; // @[TxPipelineHandler.scala 56:42]
  assign tcp_hdr_chksum_cal_io_in_vec_2 = 32'h0; // @[TxPipelineHandler.scala 56:42]
  assign tcp_hdr_chksum_cal_io_in_vec_3 = 32'h0; // @[TxPipelineHandler.scala 56:42]
  assign tcp_hdr_chksum_cal_io_in_vec_4 = 32'h0; // @[TxPipelineHandler.scala 56:42]
  assign tcp_hdr_chksum_cal_io_in_vec_5 = 32'h0; // @[TxPipelineHandler.scala 56:42]
  assign tcp_hdr_chksum_cal_io_in_vec_6 = 32'h0; // @[TxPipelineHandler.scala 56:42]
  assign tcp_hdr_chksum_cal_io_in_vec_7 = 32'h0; // @[TxPipelineHandler.scala 56:42]
  assign tcp_hdr_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_9 = 32'h0; // @[TxPipelineHandler.scala 56:42]
  assign tcp_hdr_chksum_cal_io_in_vec_10 = 32'h0; // @[TxPipelineHandler.scala 56:42]
  assign tcp_hdr_chksum_cal_io_in_vec_11 = {{24'd0}, cal_tdata[191:184]}; // @[TxPipelineHandler.scala 55:53]
  assign tcp_hdr_chksum_cal_io_in_vec_12 = 32'h0; // @[TxPipelineHandler.scala 56:42]
  assign tcp_hdr_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_25 = 32'h0; // @[TxPipelineHandler.scala 56:42]
  assign tcp_hdr_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_3}; // @[TxPipelineHandler.scala 54:67]
  assign tcp_hdr_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_3}; // @[TxPipelineHandler.scala 54:67]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      in_reg_r <= 578'h1; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_reg_r <= _in_reg_T_1; // @[Reg.scala 29:22]
    end
    first_beat_reg <= reset | _GEN_1; // @[Reg.scala 28:{20,20}]
    if (reset) begin // @[TxPipelineHandler.scala 19:32]
      in_reg_used_reg <= 1'h0; // @[TxPipelineHandler.scala 19:32]
    end else begin
      in_reg_used_reg <= _GEN_4;
    end
    if (reset) begin // @[TxPipelineHandler.scala 60:34]
      cal_ip_chksum_reg <= 32'h0; // @[TxPipelineHandler.scala 60:34]
    end else if (in_shake_hand) begin // @[TxPipelineHandler.scala 63:24]
      if (first_beat_reg) begin // @[TxPipelineHandler.scala 64:27]
        cal_ip_chksum_reg <= ip_chksum_cal_io_out_sum; // @[TxPipelineHandler.scala 65:25]
      end
    end
    if (reset) begin // @[TxPipelineHandler.scala 61:35]
      cal_tcp_chksum_reg <= 32'h0; // @[TxPipelineHandler.scala 61:35]
    end else if (in_shake_hand) begin // @[TxPipelineHandler.scala 63:24]
      if (first_beat_reg) begin // @[TxPipelineHandler.scala 64:27]
        cal_tcp_chksum_reg <= tcp_hdr_chksum_result; // @[TxPipelineHandler.scala 66:26]
      end else begin
        cal_tcp_chksum_reg <= _cal_tcp_chksum_reg_T_1; // @[TxPipelineHandler.scala 68:26]
      end
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
  in_reg_r = _RAND_0[577:0];
  _RAND_1 = {1{`RANDOM}};
  first_beat_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  in_reg_used_reg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  cal_ip_chksum_reg = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  cal_tcp_chksum_reg = _RAND_4[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TxPipeline(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input          io_in_tuser,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output [31:0]  io_out_tx_info_ip_chksum,
  output [31:0]  io_out_tx_info_tcp_chksum
);
  wire  tx_chksum_generator_clock; // @[TxPipeline.scala 17:35]
  wire  tx_chksum_generator_reset; // @[TxPipeline.scala 17:35]
  wire [511:0] tx_chksum_generator_io_in_tdata; // @[TxPipeline.scala 17:35]
  wire  tx_chksum_generator_io_in_tvalid; // @[TxPipeline.scala 17:35]
  wire  tx_chksum_generator_io_in_tready; // @[TxPipeline.scala 17:35]
  wire  tx_chksum_generator_io_in_tlast; // @[TxPipeline.scala 17:35]
  wire [511:0] tx_chksum_generator_io_out_tdata; // @[TxPipeline.scala 17:35]
  wire  tx_chksum_generator_io_out_tvalid; // @[TxPipeline.scala 17:35]
  wire  tx_chksum_generator_io_out_tready; // @[TxPipeline.scala 17:35]
  wire  tx_chksum_generator_io_out_tlast; // @[TxPipeline.scala 17:35]
  wire [31:0] tx_chksum_generator_io_out_tx_info_ip_chksum; // @[TxPipeline.scala 17:35]
  wire [31:0] tx_chksum_generator_io_out_tx_info_tcp_chksum; // @[TxPipeline.scala 17:35]
  TxChksumGenerator tx_chksum_generator ( // @[TxPipeline.scala 17:35]
    .clock(tx_chksum_generator_clock),
    .reset(tx_chksum_generator_reset),
    .io_in_tdata(tx_chksum_generator_io_in_tdata),
    .io_in_tvalid(tx_chksum_generator_io_in_tvalid),
    .io_in_tready(tx_chksum_generator_io_in_tready),
    .io_in_tlast(tx_chksum_generator_io_in_tlast),
    .io_out_tdata(tx_chksum_generator_io_out_tdata),
    .io_out_tvalid(tx_chksum_generator_io_out_tvalid),
    .io_out_tready(tx_chksum_generator_io_out_tready),
    .io_out_tlast(tx_chksum_generator_io_out_tlast),
    .io_out_tx_info_ip_chksum(tx_chksum_generator_io_out_tx_info_ip_chksum),
    .io_out_tx_info_tcp_chksum(tx_chksum_generator_io_out_tx_info_tcp_chksum)
  );
  assign io_in_tready = tx_chksum_generator_io_in_tready; // @[TxPipeline.scala 23:26]
  assign io_out_tdata = tx_chksum_generator_io_out_tdata; // @[TxPipeline.scala 29:30]
  assign io_out_tvalid = tx_chksum_generator_io_out_tvalid; // @[TxPipeline.scala 29:30]
  assign io_out_tlast = tx_chksum_generator_io_out_tlast; // @[TxPipeline.scala 29:30]
  assign io_out_tx_info_ip_chksum = tx_chksum_generator_io_out_tx_info_ip_chksum; // @[TxPipeline.scala 29:30]
  assign io_out_tx_info_tcp_chksum = tx_chksum_generator_io_out_tx_info_tcp_chksum; // @[TxPipeline.scala 29:30]
  assign tx_chksum_generator_clock = clock;
  assign tx_chksum_generator_reset = reset;
  assign tx_chksum_generator_io_in_tdata = io_in_tdata; // @[TxPipeline.scala 22:36]
  assign tx_chksum_generator_io_in_tvalid = io_in_tvalid & ~io_in_tuser; // @[TxPipeline.scala 15:34]
  assign tx_chksum_generator_io_in_tlast = io_in_tlast; // @[TxPipeline.scala 21:36]
  assign tx_chksum_generator_io_out_tready = io_out_tready; // @[TxPipeline.scala 29:30]
endmodule
module TxBufferFifo(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input  [31:0]  io_in_tx_info_ip_chksum,
  input  [31:0]  io_in_tx_info_tcp_chksum,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  input          io_reset_counter,
  output [31:0]  io_h2c_pack_counter,
  output [31:0]  io_h2c_err_counter
);
`ifdef RANDOMIZE_MEM_INIT
  reg [511:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  reg [511:0] data_buf_reg [0:63]; // @[TxBufferFifo.scala 37:33]
  wire  data_buf_reg_rd_data_en; // @[TxBufferFifo.scala 37:33]
  wire [5:0] data_buf_reg_rd_data_addr; // @[TxBufferFifo.scala 37:33]
  wire [511:0] data_buf_reg_rd_data_data; // @[TxBufferFifo.scala 37:33]
  wire [511:0] data_buf_reg_MPORT_data; // @[TxBufferFifo.scala 37:33]
  wire [5:0] data_buf_reg_MPORT_addr; // @[TxBufferFifo.scala 37:33]
  wire  data_buf_reg_MPORT_mask; // @[TxBufferFifo.scala 37:33]
  wire  data_buf_reg_MPORT_en; // @[TxBufferFifo.scala 37:33]
  reg  data_buf_reg_rd_data_en_pipe_0;
  reg [5:0] data_buf_reg_rd_data_addr_pipe_0;
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[TxBufferFifo.scala 36:36]
  reg  info_buf_reg_0_valid; // @[TxBufferFifo.scala 40:29]
  reg [31:0] info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 40:29]
  reg [31:0] info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 40:29]
  reg [5:0] info_buf_reg_0_burst; // @[TxBufferFifo.scala 40:29]
  reg  info_buf_reg_1_valid; // @[TxBufferFifo.scala 40:29]
  reg [31:0] info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 40:29]
  reg [31:0] info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 40:29]
  reg [5:0] info_buf_reg_1_burst; // @[TxBufferFifo.scala 40:29]
  reg [6:0] wr_index_reg; // @[TxBufferFifo.scala 41:29]
  reg [6:0] rd_index_reg; // @[TxBufferFifo.scala 42:29]
  reg [6:0] wr_pos_reg; // @[TxBufferFifo.scala 43:29]
  reg [6:0] rd_pos_reg; // @[TxBufferFifo.scala 44:29]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[TxBufferFifo.scala 49:40]
  reg [31:0] pack_counter; // @[TxBufferFifo.scala 52:29]
  reg [31:0] err_counter; // @[TxBufferFifo.scala 53:28]
  reg  is_overflowed; // @[TxBufferFifo.scala 60:30]
  wire [31:0] _pack_counter_T_1 = pack_counter + 32'h1; // @[TxBufferFifo.scala 69:38]
  wire [5:0] _GEN_2 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[TxBufferFifo.scala 71:{46,46}]
  wire [11:0] _GEN_186 = {wr_index_reg, 5'h0}; // @[TxBufferFifo.scala 80:40]
  wire [13:0] _wr_pos_reg_T = {{2'd0}, _GEN_186}; // @[TxBufferFifo.scala 80:40]
  wire  _GEN_3 = ~io_in_tlast | is_overflowed; // @[TxBufferFifo.scala 73:29 74:25 60:30]
  wire [13:0] _GEN_4 = ~io_in_tlast ? {{7'd0}, wr_pos_reg} : _wr_pos_reg_T; // @[TxBufferFifo.scala 43:29 73:29 80:24]
  wire [31:0] _err_counter_T_1 = err_counter + 32'h1; // @[TxBufferFifo.scala 83:36]
  wire [5:0] _GEN_5 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 40:29 84:{36,36}]
  wire [5:0] _GEN_6 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 40:29 84:{36,36}]
  wire [31:0] _GEN_7 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 40:29 84:{36,36}]
  wire [31:0] _GEN_8 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 40:29 84:{36,36}]
  wire [31:0] _GEN_9 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 40:29 84:{36,36}]
  wire [31:0] _GEN_10 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 40:29 84:{36,36}]
  wire  _GEN_11 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 40:29 84:{36,36}]
  wire  _GEN_12 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 40:29 84:{36,36}]
  wire  _T_4 = ~is_overflowed; // @[TxBufferFifo.scala 88:15]
  wire  _GEN_187 = ~wr_index_reg[0]; // @[TxBufferFifo.scala 40:29 91:{45,45}]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_2 + 6'h1; // @[TxBufferFifo.scala 94:80]
  wire [5:0] _GEN_23 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 40:29 94:{44,44}]
  wire [5:0] _GEN_24 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 40:29 94:{44,44}]
  wire  _GEN_25 = _GEN_187 | info_buf_reg_0_valid; // @[TxBufferFifo.scala 40:29 96:{46,46}]
  wire  _GEN_26 = wr_index_reg[0] | info_buf_reg_1_valid; // @[TxBufferFifo.scala 40:29 96:{46,46}]
  wire [31:0] _GEN_27 = ~wr_index_reg[0] ? io_in_tx_info_ip_chksum : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 40:29 97:{50,50}]
  wire [31:0] _GEN_28 = wr_index_reg[0] ? io_in_tx_info_ip_chksum : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 40:29 97:{50,50}]
  wire [31:0] _GEN_29 = ~wr_index_reg[0] ? io_in_tx_info_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 40:29 98:{51,51}]
  wire [31:0] _GEN_30 = wr_index_reg[0] ? io_in_tx_info_tcp_chksum : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 40:29 98:{51,51}]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[TxBufferFifo.scala 31:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[TxBufferFifo.scala 31:19]
  wire [11:0] _GEN_189 = {_wr_index_reg_T_2, 5'h0}; // @[TxBufferFifo.scala 100:51]
  wire [13:0] _wr_pos_reg_T_4 = {{2'd0}, _GEN_189}; // @[TxBufferFifo.scala 100:51]
  wire [6:0] _wr_pos_reg_T_6 = wr_pos_reg + 7'h1; // @[TxBufferFifo.scala 102:38]
  wire  _GEN_31 = io_in_tlast ? _GEN_25 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 40:29 95:30]
  wire  _GEN_32 = io_in_tlast ? _GEN_26 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 40:29 95:30]
  wire [31:0] _GEN_33 = io_in_tlast ? _GEN_27 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 40:29 95:30]
  wire [31:0] _GEN_34 = io_in_tlast ? _GEN_28 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 40:29 95:30]
  wire [31:0] _GEN_35 = io_in_tlast ? _GEN_29 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 40:29 95:30]
  wire [31:0] _GEN_36 = io_in_tlast ? _GEN_30 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 40:29 95:30]
  wire [6:0] _GEN_37 = io_in_tlast ? _wr_index_reg_T_2 : wr_index_reg; // @[TxBufferFifo.scala 95:30 99:26 41:29]
  wire [13:0] _GEN_38 = io_in_tlast ? _wr_pos_reg_T_4 : {{7'd0}, _wr_pos_reg_T_6}; // @[TxBufferFifo.scala 100:24 102:24 95:30]
  wire  _GEN_39 = io_in_tlast ? 1'h0 : is_overflowed; // @[TxBufferFifo.scala 104:34 106:25 60:30]
  wire [13:0] _GEN_40 = io_in_tlast ? _wr_pos_reg_T : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 104:34 107:22 43:29]
  wire [5:0] _GEN_48 = ~is_overflowed ? _GEN_23 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 40:29 88:30]
  wire [5:0] _GEN_49 = ~is_overflowed ? _GEN_24 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 40:29 88:30]
  wire  _GEN_50 = ~is_overflowed ? _GEN_31 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 40:29 88:30]
  wire  _GEN_51 = ~is_overflowed ? _GEN_32 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 40:29 88:30]
  wire [31:0] _GEN_52 = ~is_overflowed ? _GEN_33 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 40:29 88:30]
  wire [31:0] _GEN_53 = ~is_overflowed ? _GEN_34 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 40:29 88:30]
  wire [31:0] _GEN_54 = ~is_overflowed ? _GEN_35 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 40:29 88:30]
  wire [31:0] _GEN_55 = ~is_overflowed ? _GEN_36 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 40:29 88:30]
  wire [6:0] _GEN_56 = ~is_overflowed ? _GEN_37 : wr_index_reg; // @[TxBufferFifo.scala 41:29 88:30]
  wire [13:0] _GEN_57 = ~is_overflowed ? _GEN_38 : _GEN_40; // @[TxBufferFifo.scala 88:30]
  wire  _GEN_58 = ~is_overflowed ? is_overflowed : _GEN_39; // @[TxBufferFifo.scala 60:30 88:30]
  wire  _GEN_63 = io_in_tvalid & _T_4; // @[TxBufferFifo.scala 86:31 37:33]
  wire [5:0] _GEN_66 = io_in_tvalid ? _GEN_48 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 40:29 86:31]
  wire [5:0] _GEN_67 = io_in_tvalid ? _GEN_49 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 40:29 86:31]
  wire  _GEN_68 = io_in_tvalid ? _GEN_50 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 40:29 86:31]
  wire  _GEN_69 = io_in_tvalid ? _GEN_51 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 40:29 86:31]
  wire [31:0] _GEN_70 = io_in_tvalid ? _GEN_52 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 40:29 86:31]
  wire [31:0] _GEN_71 = io_in_tvalid ? _GEN_53 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 40:29 86:31]
  wire [31:0] _GEN_72 = io_in_tvalid ? _GEN_54 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 40:29 86:31]
  wire [31:0] _GEN_73 = io_in_tvalid ? _GEN_55 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 40:29 86:31]
  wire [6:0] _GEN_74 = io_in_tvalid ? _GEN_56 : wr_index_reg; // @[TxBufferFifo.scala 41:29 86:31]
  wire [13:0] _GEN_75 = io_in_tvalid ? _GEN_57 : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 43:29 86:31]
  wire  _GEN_76 = io_in_tvalid ? _GEN_58 : is_overflowed; // @[TxBufferFifo.scala 60:30 86:31]
  wire [13:0] _GEN_78 = _GEN_2 == 6'h20 ? _GEN_4 : _GEN_75; // @[TxBufferFifo.scala 71:63]
  wire [5:0] _GEN_80 = _GEN_2 == 6'h20 ? _GEN_5 : _GEN_66; // @[TxBufferFifo.scala 71:63]
  wire [5:0] _GEN_81 = _GEN_2 == 6'h20 ? _GEN_6 : _GEN_67; // @[TxBufferFifo.scala 71:63]
  wire [31:0] _GEN_82 = _GEN_2 == 6'h20 ? _GEN_7 : _GEN_72; // @[TxBufferFifo.scala 71:63]
  wire [31:0] _GEN_83 = _GEN_2 == 6'h20 ? _GEN_8 : _GEN_73; // @[TxBufferFifo.scala 71:63]
  wire [31:0] _GEN_84 = _GEN_2 == 6'h20 ? _GEN_9 : _GEN_70; // @[TxBufferFifo.scala 71:63]
  wire [31:0] _GEN_85 = _GEN_2 == 6'h20 ? _GEN_10 : _GEN_71; // @[TxBufferFifo.scala 71:63]
  wire  _GEN_86 = _GEN_2 == 6'h20 ? _GEN_11 : _GEN_68; // @[TxBufferFifo.scala 71:63]
  wire  _GEN_87 = _GEN_2 == 6'h20 ? _GEN_12 : _GEN_69; // @[TxBufferFifo.scala 71:63]
  wire  _GEN_92 = _GEN_2 == 6'h20 ? 1'h0 : _GEN_63; // @[TxBufferFifo.scala 37:33 71:63]
  wire [13:0] _GEN_98 = in_shake_hand ? _GEN_78 : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 43:29 67:31]
  wire [5:0] _GEN_100 = in_shake_hand ? _GEN_80 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 40:29 67:31]
  wire [5:0] _GEN_101 = in_shake_hand ? _GEN_81 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 40:29 67:31]
  wire [31:0] _GEN_102 = in_shake_hand ? _GEN_82 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 40:29 67:31]
  wire [31:0] _GEN_103 = in_shake_hand ? _GEN_83 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 40:29 67:31]
  wire [31:0] _GEN_104 = in_shake_hand ? _GEN_84 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 40:29 67:31]
  wire [31:0] _GEN_105 = in_shake_hand ? _GEN_85 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 40:29 67:31]
  wire  _GEN_106 = in_shake_hand ? _GEN_86 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 40:29 67:31]
  wire  _GEN_107 = in_shake_hand ? _GEN_87 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 40:29 67:31]
  wire  _GEN_112 = in_shake_hand & _GEN_92; // @[TxBufferFifo.scala 67:31 37:33]
  wire [13:0] _GEN_119 = io_reset_counter ? {{7'd0}, wr_pos_reg} : _GEN_98; // @[TxBufferFifo.scala 63:26 43:29]
  wire [5:0] _GEN_120 = io_reset_counter ? info_buf_reg_0_burst : _GEN_100; // @[TxBufferFifo.scala 63:26 40:29]
  wire [5:0] _GEN_121 = io_reset_counter ? info_buf_reg_1_burst : _GEN_101; // @[TxBufferFifo.scala 63:26 40:29]
  wire [31:0] _GEN_122 = io_reset_counter ? info_buf_reg_0_tcp_chksum : _GEN_102; // @[TxBufferFifo.scala 63:26 40:29]
  wire [31:0] _GEN_123 = io_reset_counter ? info_buf_reg_1_tcp_chksum : _GEN_103; // @[TxBufferFifo.scala 63:26 40:29]
  wire [31:0] _GEN_124 = io_reset_counter ? info_buf_reg_0_ip_chksum : _GEN_104; // @[TxBufferFifo.scala 63:26 40:29]
  wire [31:0] _GEN_125 = io_reset_counter ? info_buf_reg_1_ip_chksum : _GEN_105; // @[TxBufferFifo.scala 63:26 40:29]
  wire  _GEN_126 = io_reset_counter ? info_buf_reg_0_valid : _GEN_106; // @[TxBufferFifo.scala 63:26 40:29]
  wire  _GEN_127 = io_reset_counter ? info_buf_reg_1_valid : _GEN_107; // @[TxBufferFifo.scala 63:26 40:29]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[TxBufferFifo.scala 113:38]
  wire [5:0] _GEN_139 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[TxBufferFifo.scala 118:{70,70}]
  wire  _io_out_tlast_T_1 = _GEN_139 == 6'h1; // @[TxBufferFifo.scala 118:70]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[TxBufferFifo.scala 31:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[TxBufferFifo.scala 31:19]
  wire [11:0] _GEN_191 = {_rd_pos_next_T_2, 5'h0}; // @[TxBufferFifo.scala 152:44]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_191}; // @[TxBufferFifo.scala 152:44]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[TxBufferFifo.scala 154:31]
  wire [13:0] _GEN_185 = _io_out_tlast_T_1 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[TxBufferFifo.scala 151:51 152:17 154:17]
  wire [6:0] rd_pos_next = _GEN_185[6:0];
  wire [6:0] _rd_data_T = out_shake_hand ? rd_pos_next : rd_pos_reg; // @[TxBufferFifo.scala 121:33]
  wire [31:0] _GEN_141 = rd_index_reg[0] ? info_buf_reg_1_ip_chksum : info_buf_reg_0_ip_chksum; // @[Misc.scala 14:{10,10}]
  wire [15:0] _mid_ip_chksum_T_6 = _GEN_141[31:16] + _GEN_141[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _mid_ip_chksum_T_8 = _GEN_141[31:16] > 16'h0 ? _mid_ip_chksum_T_6 : _GEN_141[15:0]; // @[Misc.scala 14:8]
  wire [31:0] _GEN_143 = rd_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[Misc.scala 14:{10,10}]
  wire [15:0] _mid_tcp_chksum_T_6 = _GEN_143[31:16] + _GEN_143[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _mid_tcp_chksum_T_8 = _GEN_143[31:16] > 16'h0 ? _mid_tcp_chksum_T_6 : _GEN_143[15:0]; // @[Misc.scala 14:8]
  wire [31:0] mid_ip_chksum = {{16'd0}, _mid_ip_chksum_T_8}; // @[TxBufferFifo.scala 124:27 125:17]
  wire [15:0] _end_ip_chksum_T_5 = mid_ip_chksum[31:16] + mid_ip_chksum[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _end_ip_chksum_T_7 = mid_ip_chksum[31:16] > 16'h0 ? _end_ip_chksum_T_5 : mid_ip_chksum[15:0]; // @[Misc.scala 14:8]
  wire [15:0] end_ip_chksum = ~_end_ip_chksum_T_7; // @[TxBufferFifo.scala 130:20]
  wire [31:0] mid_tcp_chksum = {{16'd0}, _mid_tcp_chksum_T_8}; // @[TxBufferFifo.scala 126:28 127:18]
  wire [15:0] _end_tcp_chksum_T_5 = mid_tcp_chksum[31:16] + mid_tcp_chksum[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _end_tcp_chksum_T_7 = mid_tcp_chksum[31:16] > 16'h0 ? _end_tcp_chksum_T_5 : mid_tcp_chksum[15:0]; // @[Misc.scala 14:8]
  wire [15:0] end_tcp_chksum = ~_end_tcp_chksum_T_7; // @[TxBufferFifo.scala 132:21]
  wire [11:0] _GEN_192 = {rd_index_reg, 5'h0}; // @[TxBufferFifo.scala 137:52]
  wire [13:0] _io_out_tdata_T = {{2'd0}, _GEN_192}; // @[TxBufferFifo.scala 137:52]
  wire [13:0] _GEN_193 = {{7'd0}, rd_pos_reg}; // @[TxBufferFifo.scala 137:34]
  wire [511:0] _io_out_tdata_T_5 = {data_buf_reg_rd_data_data[511:416],end_tcp_chksum[7:0],end_tcp_chksum[15:8],
    data_buf_reg_rd_data_data[399:208],end_ip_chksum[7:0],end_ip_chksum[15:8],data_buf_reg_rd_data_data[191:0]}; // @[Cat.scala 31:58]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_139 - 6'h1; // @[TxBufferFifo.scala 148:76]
  wire [13:0] _GEN_194 = reset ? 14'h0 : _GEN_119; // @[TxBufferFifo.scala 43:{29,29}]
  assign data_buf_reg_rd_data_en = data_buf_reg_rd_data_en_pipe_0;
  assign data_buf_reg_rd_data_addr = data_buf_reg_rd_data_addr_pipe_0;
  assign data_buf_reg_rd_data_data = data_buf_reg[data_buf_reg_rd_data_addr]; // @[TxBufferFifo.scala 37:33]
  assign data_buf_reg_MPORT_data = io_in_tdata;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_reset_counter ? 1'h0 : _GEN_112;
  assign io_in_tready = ~buf_full; // @[TxBufferFifo.scala 51:19]
  assign io_out_tdata = _GEN_193 == _io_out_tdata_T ? _io_out_tdata_T_5 : data_buf_reg_rd_data_data; // @[TxBufferFifo.scala 137:22]
  assign io_out_tvalid = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[TxBufferFifo.scala 117:{17,17}]
  assign io_out_tlast = io_out_tvalid & _GEN_139 == 6'h1; // @[TxBufferFifo.scala 118:34]
  assign io_h2c_pack_counter = pack_counter; // @[TxBufferFifo.scala 55:23]
  assign io_h2c_err_counter = err_counter; // @[TxBufferFifo.scala 56:22]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[TxBufferFifo.scala 37:33]
    end
    data_buf_reg_rd_data_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      data_buf_reg_rd_data_addr_pipe_0 <= _rd_data_T[5:0];
    end
    if (reset) begin // @[TxBufferFifo.scala 40:29]
      info_buf_reg_0_valid <= 1'h0; // @[TxBufferFifo.scala 40:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 140:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 144:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 145:34]
          info_buf_reg_0_valid <= 1'h0; // @[TxBufferFifo.scala 145:34]
        end else begin
          info_buf_reg_0_valid <= _GEN_126;
        end
      end else begin
        info_buf_reg_0_valid <= _GEN_126;
      end
    end else begin
      info_buf_reg_0_valid <= _GEN_126;
    end
    if (reset) begin // @[TxBufferFifo.scala 40:29]
      info_buf_reg_0_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 40:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 140:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 144:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 145:34]
          info_buf_reg_0_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 145:34]
        end else begin
          info_buf_reg_0_ip_chksum <= _GEN_124;
        end
      end else begin
        info_buf_reg_0_ip_chksum <= _GEN_124;
      end
    end else begin
      info_buf_reg_0_ip_chksum <= _GEN_124;
    end
    if (reset) begin // @[TxBufferFifo.scala 40:29]
      info_buf_reg_0_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 40:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 140:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 144:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 145:34]
          info_buf_reg_0_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 145:34]
        end else begin
          info_buf_reg_0_tcp_chksum <= _GEN_122;
        end
      end else begin
        info_buf_reg_0_tcp_chksum <= _GEN_122;
      end
    end else begin
      info_buf_reg_0_tcp_chksum <= _GEN_122;
    end
    if (reset) begin // @[TxBufferFifo.scala 40:29]
      info_buf_reg_0_burst <= 6'h0; // @[TxBufferFifo.scala 40:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 140:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 144:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 145:34]
          info_buf_reg_0_burst <= 6'h0; // @[TxBufferFifo.scala 145:34]
        end else begin
          info_buf_reg_0_burst <= _GEN_120;
        end
      end else if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 148:40]
        info_buf_reg_0_burst <= _info_buf_reg_burst_T_5; // @[TxBufferFifo.scala 148:40]
      end else begin
        info_buf_reg_0_burst <= _GEN_120;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_120;
    end
    if (reset) begin // @[TxBufferFifo.scala 40:29]
      info_buf_reg_1_valid <= 1'h0; // @[TxBufferFifo.scala 40:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 140:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 144:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 145:34]
          info_buf_reg_1_valid <= 1'h0; // @[TxBufferFifo.scala 145:34]
        end else begin
          info_buf_reg_1_valid <= _GEN_127;
        end
      end else begin
        info_buf_reg_1_valid <= _GEN_127;
      end
    end else begin
      info_buf_reg_1_valid <= _GEN_127;
    end
    if (reset) begin // @[TxBufferFifo.scala 40:29]
      info_buf_reg_1_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 40:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 140:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 144:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 145:34]
          info_buf_reg_1_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 145:34]
        end else begin
          info_buf_reg_1_ip_chksum <= _GEN_125;
        end
      end else begin
        info_buf_reg_1_ip_chksum <= _GEN_125;
      end
    end else begin
      info_buf_reg_1_ip_chksum <= _GEN_125;
    end
    if (reset) begin // @[TxBufferFifo.scala 40:29]
      info_buf_reg_1_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 40:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 140:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 144:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 145:34]
          info_buf_reg_1_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 145:34]
        end else begin
          info_buf_reg_1_tcp_chksum <= _GEN_123;
        end
      end else begin
        info_buf_reg_1_tcp_chksum <= _GEN_123;
      end
    end else begin
      info_buf_reg_1_tcp_chksum <= _GEN_123;
    end
    if (reset) begin // @[TxBufferFifo.scala 40:29]
      info_buf_reg_1_burst <= 6'h0; // @[TxBufferFifo.scala 40:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 140:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 144:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 145:34]
          info_buf_reg_1_burst <= 6'h0; // @[TxBufferFifo.scala 145:34]
        end else begin
          info_buf_reg_1_burst <= _GEN_121;
        end
      end else if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 148:40]
        info_buf_reg_1_burst <= _info_buf_reg_burst_T_5; // @[TxBufferFifo.scala 148:40]
      end else begin
        info_buf_reg_1_burst <= _GEN_121;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_121;
    end
    if (reset) begin // @[TxBufferFifo.scala 41:29]
      wr_index_reg <= 7'h0; // @[TxBufferFifo.scala 41:29]
    end else if (!(io_reset_counter)) begin // @[TxBufferFifo.scala 63:26]
      if (in_shake_hand) begin // @[TxBufferFifo.scala 67:31]
        if (!(_GEN_2 == 6'h20)) begin // @[TxBufferFifo.scala 71:63]
          wr_index_reg <= _GEN_74;
        end
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 42:29]
      rd_index_reg <= 7'h0; // @[TxBufferFifo.scala 42:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 140:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 144:53]
        rd_index_reg <= _rd_pos_next_T_2; // @[TxBufferFifo.scala 146:20]
      end
    end
    wr_pos_reg <= _GEN_194[6:0]; // @[TxBufferFifo.scala 43:{29,29}]
    if (reset) begin // @[TxBufferFifo.scala 44:29]
      rd_pos_reg <= 7'h0; // @[TxBufferFifo.scala 44:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 121:33]
      rd_pos_reg <= rd_pos_next;
    end
    if (reset) begin // @[TxBufferFifo.scala 52:29]
      pack_counter <= 32'h0; // @[TxBufferFifo.scala 52:29]
    end else if (io_reset_counter) begin // @[TxBufferFifo.scala 63:26]
      pack_counter <= 32'h0; // @[TxBufferFifo.scala 64:18]
    end else if (in_shake_hand) begin // @[TxBufferFifo.scala 67:31]
      if (io_in_tlast) begin // @[TxBufferFifo.scala 68:26]
        pack_counter <= _pack_counter_T_1; // @[TxBufferFifo.scala 69:22]
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 53:28]
      err_counter <= 32'h0; // @[TxBufferFifo.scala 53:28]
    end else if (io_reset_counter) begin // @[TxBufferFifo.scala 63:26]
      err_counter <= 32'h0; // @[TxBufferFifo.scala 65:17]
    end else if (in_shake_hand) begin // @[TxBufferFifo.scala 67:31]
      if (_GEN_2 == 6'h20) begin // @[TxBufferFifo.scala 71:63]
        err_counter <= _err_counter_T_1; // @[TxBufferFifo.scala 83:21]
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 60:30]
      is_overflowed <= 1'h0; // @[TxBufferFifo.scala 60:30]
    end else if (!(io_reset_counter)) begin // @[TxBufferFifo.scala 63:26]
      if (in_shake_hand) begin // @[TxBufferFifo.scala 67:31]
        if (_GEN_2 == 6'h20) begin // @[TxBufferFifo.scala 71:63]
          is_overflowed <= _GEN_3;
        end else begin
          is_overflowed <= _GEN_76;
        end
      end
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {16{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_buf_reg[initvar] = _RAND_0[511:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  data_buf_reg_rd_data_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  data_buf_reg_rd_data_addr_pipe_0 = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  info_buf_reg_0_valid = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  info_buf_reg_0_ip_chksum = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  info_buf_reg_0_tcp_chksum = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  info_buf_reg_0_burst = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  info_buf_reg_1_valid = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  info_buf_reg_1_ip_chksum = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  info_buf_reg_1_tcp_chksum = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  info_buf_reg_1_burst = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  wr_index_reg = _RAND_11[6:0];
  _RAND_12 = {1{`RANDOM}};
  rd_index_reg = _RAND_12[6:0];
  _RAND_13 = {1{`RANDOM}};
  wr_pos_reg = _RAND_13[6:0];
  _RAND_14 = {1{`RANDOM}};
  rd_pos_reg = _RAND_14[6:0];
  _RAND_15 = {1{`RANDOM}};
  pack_counter = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  err_counter = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  is_overflowed = _RAND_17[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TxHandler(
  input          clock,
  input          reset,
  input  [511:0] io_QDMA_h2c_stub_out_tdata,
  input          io_QDMA_h2c_stub_out_tvalid,
  output         io_QDMA_h2c_stub_out_tready,
  input          io_QDMA_h2c_stub_out_tlast,
  input          io_QDMA_h2c_stub_out_tuser,
  output [511:0] io_CMAC_in_tdata,
  output         io_CMAC_in_tvalid,
  input          io_CMAC_in_tready,
  output         io_CMAC_in_tlast,
  input          io_reset_counter,
  output [31:0]  io_h2c_pack_counter,
  output [31:0]  io_h2c_err_counter
);
  wire  tx_pipeline_clock; // @[TxHandler.scala 23:27]
  wire  tx_pipeline_reset; // @[TxHandler.scala 23:27]
  wire [511:0] tx_pipeline_io_in_tdata; // @[TxHandler.scala 23:27]
  wire  tx_pipeline_io_in_tvalid; // @[TxHandler.scala 23:27]
  wire  tx_pipeline_io_in_tready; // @[TxHandler.scala 23:27]
  wire  tx_pipeline_io_in_tlast; // @[TxHandler.scala 23:27]
  wire  tx_pipeline_io_in_tuser; // @[TxHandler.scala 23:27]
  wire [511:0] tx_pipeline_io_out_tdata; // @[TxHandler.scala 23:27]
  wire  tx_pipeline_io_out_tvalid; // @[TxHandler.scala 23:27]
  wire  tx_pipeline_io_out_tready; // @[TxHandler.scala 23:27]
  wire  tx_pipeline_io_out_tlast; // @[TxHandler.scala 23:27]
  wire [31:0] tx_pipeline_io_out_tx_info_ip_chksum; // @[TxHandler.scala 23:27]
  wire [31:0] tx_pipeline_io_out_tx_info_tcp_chksum; // @[TxHandler.scala 23:27]
  wire  tx_buffer_fifo_clock; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_reset; // @[TxHandler.scala 27:30]
  wire [511:0] tx_buffer_fifo_io_in_tdata; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_in_tvalid; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_in_tready; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_in_tlast; // @[TxHandler.scala 27:30]
  wire [31:0] tx_buffer_fifo_io_in_tx_info_ip_chksum; // @[TxHandler.scala 27:30]
  wire [31:0] tx_buffer_fifo_io_in_tx_info_tcp_chksum; // @[TxHandler.scala 27:30]
  wire [511:0] tx_buffer_fifo_io_out_tdata; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_out_tvalid; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_out_tready; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_out_tlast; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_reset_counter; // @[TxHandler.scala 27:30]
  wire [31:0] tx_buffer_fifo_io_h2c_pack_counter; // @[TxHandler.scala 27:30]
  wire [31:0] tx_buffer_fifo_io_h2c_err_counter; // @[TxHandler.scala 27:30]
  TxPipeline tx_pipeline ( // @[TxHandler.scala 23:27]
    .clock(tx_pipeline_clock),
    .reset(tx_pipeline_reset),
    .io_in_tdata(tx_pipeline_io_in_tdata),
    .io_in_tvalid(tx_pipeline_io_in_tvalid),
    .io_in_tready(tx_pipeline_io_in_tready),
    .io_in_tlast(tx_pipeline_io_in_tlast),
    .io_in_tuser(tx_pipeline_io_in_tuser),
    .io_out_tdata(tx_pipeline_io_out_tdata),
    .io_out_tvalid(tx_pipeline_io_out_tvalid),
    .io_out_tready(tx_pipeline_io_out_tready),
    .io_out_tlast(tx_pipeline_io_out_tlast),
    .io_out_tx_info_ip_chksum(tx_pipeline_io_out_tx_info_ip_chksum),
    .io_out_tx_info_tcp_chksum(tx_pipeline_io_out_tx_info_tcp_chksum)
  );
  TxBufferFifo tx_buffer_fifo ( // @[TxHandler.scala 27:30]
    .clock(tx_buffer_fifo_clock),
    .reset(tx_buffer_fifo_reset),
    .io_in_tdata(tx_buffer_fifo_io_in_tdata),
    .io_in_tvalid(tx_buffer_fifo_io_in_tvalid),
    .io_in_tready(tx_buffer_fifo_io_in_tready),
    .io_in_tlast(tx_buffer_fifo_io_in_tlast),
    .io_in_tx_info_ip_chksum(tx_buffer_fifo_io_in_tx_info_ip_chksum),
    .io_in_tx_info_tcp_chksum(tx_buffer_fifo_io_in_tx_info_tcp_chksum),
    .io_out_tdata(tx_buffer_fifo_io_out_tdata),
    .io_out_tvalid(tx_buffer_fifo_io_out_tvalid),
    .io_out_tready(tx_buffer_fifo_io_out_tready),
    .io_out_tlast(tx_buffer_fifo_io_out_tlast),
    .io_reset_counter(tx_buffer_fifo_io_reset_counter),
    .io_h2c_pack_counter(tx_buffer_fifo_io_h2c_pack_counter),
    .io_h2c_err_counter(tx_buffer_fifo_io_h2c_err_counter)
  );
  assign io_QDMA_h2c_stub_out_tready = tx_pipeline_io_in_tready; // @[TxHandler.scala 24:32]
  assign io_CMAC_in_tdata = tx_buffer_fifo_io_out_tdata; // @[TxHandler.scala 29:35]
  assign io_CMAC_in_tvalid = tx_buffer_fifo_io_out_tvalid; // @[TxHandler.scala 29:35]
  assign io_CMAC_in_tlast = tx_buffer_fifo_io_out_tlast; // @[TxHandler.scala 29:35]
  assign io_h2c_pack_counter = tx_buffer_fifo_io_h2c_pack_counter; // @[TxHandler.scala 31:35]
  assign io_h2c_err_counter = tx_buffer_fifo_io_h2c_err_counter; // @[TxHandler.scala 32:35]
  assign tx_pipeline_clock = clock;
  assign tx_pipeline_reset = reset;
  assign tx_pipeline_io_in_tdata = io_QDMA_h2c_stub_out_tdata; // @[TxHandler.scala 24:32]
  assign tx_pipeline_io_in_tvalid = io_QDMA_h2c_stub_out_tvalid; // @[TxHandler.scala 24:32]
  assign tx_pipeline_io_in_tlast = io_QDMA_h2c_stub_out_tlast; // @[TxHandler.scala 24:32]
  assign tx_pipeline_io_in_tuser = io_QDMA_h2c_stub_out_tuser; // @[TxHandler.scala 24:32]
  assign tx_pipeline_io_out_tready = tx_buffer_fifo_io_in_tready; // @[TxHandler.scala 28:35]
  assign tx_buffer_fifo_clock = clock;
  assign tx_buffer_fifo_reset = reset;
  assign tx_buffer_fifo_io_in_tdata = tx_pipeline_io_out_tdata; // @[TxHandler.scala 28:35]
  assign tx_buffer_fifo_io_in_tvalid = tx_pipeline_io_out_tvalid; // @[TxHandler.scala 28:35]
  assign tx_buffer_fifo_io_in_tlast = tx_pipeline_io_out_tlast; // @[TxHandler.scala 28:35]
  assign tx_buffer_fifo_io_in_tx_info_ip_chksum = tx_pipeline_io_out_tx_info_ip_chksum; // @[TxHandler.scala 28:35]
  assign tx_buffer_fifo_io_in_tx_info_tcp_chksum = tx_pipeline_io_out_tx_info_tcp_chksum; // @[TxHandler.scala 28:35]
  assign tx_buffer_fifo_io_out_tready = io_CMAC_in_tready; // @[TxHandler.scala 29:35]
  assign tx_buffer_fifo_io_reset_counter = io_reset_counter; // @[TxHandler.scala 30:35]
endmodule
module ReduceAddSync_3(
  input        clock,
  input  [7:0] io_in_vec_0,
  input  [7:0] io_in_vec_1,
  input  [7:0] io_in_vec_2,
  input  [7:0] io_in_vec_3,
  input  [7:0] io_in_vec_4,
  input  [7:0] io_in_vec_5,
  input  [7:0] io_in_vec_6,
  input  [7:0] io_in_vec_7,
  input  [7:0] io_in_vec_8,
  input  [7:0] io_in_vec_9,
  input  [7:0] io_in_vec_10,
  input  [7:0] io_in_vec_11,
  input  [7:0] io_in_vec_12,
  input  [7:0] io_in_vec_13,
  input  [7:0] io_in_vec_14,
  input  [7:0] io_in_vec_15,
  input  [7:0] io_in_vec_16,
  input  [7:0] io_in_vec_17,
  input  [7:0] io_in_vec_18,
  input  [7:0] io_in_vec_19,
  input  [7:0] io_in_vec_20,
  input  [7:0] io_in_vec_21,
  input  [7:0] io_in_vec_22,
  input  [7:0] io_in_vec_23,
  input  [7:0] io_in_vec_24,
  input  [7:0] io_in_vec_25,
  input  [7:0] io_in_vec_26,
  input  [7:0] io_in_vec_27,
  input  [7:0] io_in_vec_28,
  input  [7:0] io_in_vec_29,
  input  [7:0] io_in_vec_30,
  input  [7:0] io_in_vec_31,
  input  [7:0] io_in_vec_32,
  input  [7:0] io_in_vec_33,
  input  [7:0] io_in_vec_34,
  input  [7:0] io_in_vec_35,
  input  [7:0] io_in_vec_36,
  input  [7:0] io_in_vec_37,
  input  [7:0] io_in_vec_38,
  input  [7:0] io_in_vec_39,
  input  [7:0] io_in_vec_40,
  input  [7:0] io_in_vec_41,
  input  [7:0] io_in_vec_42,
  input  [7:0] io_in_vec_43,
  input  [7:0] io_in_vec_44,
  input  [7:0] io_in_vec_45,
  input  [7:0] io_in_vec_46,
  input  [7:0] io_in_vec_47,
  input  [7:0] io_in_vec_48,
  input  [7:0] io_in_vec_49,
  input  [7:0] io_in_vec_50,
  input  [7:0] io_in_vec_51,
  input  [7:0] io_in_vec_52,
  input  [7:0] io_in_vec_53,
  input  [7:0] io_in_vec_54,
  input  [7:0] io_in_vec_55,
  input  [7:0] io_in_vec_56,
  input  [7:0] io_in_vec_57,
  input  [7:0] io_in_vec_58,
  input  [7:0] io_in_vec_59,
  input  [7:0] io_in_vec_60,
  input  [7:0] io_in_vec_61,
  input  [7:0] io_in_vec_62,
  input  [7:0] io_in_vec_63,
  output [7:0] io_out_sum
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] cal_reg_0; // @[Misc.scala 173:20]
  reg [7:0] cal_reg_1; // @[Misc.scala 173:20]
  reg [7:0] cal_reg_2; // @[Misc.scala 173:20]
  reg [7:0] cal_reg_3; // @[Misc.scala 173:20]
  reg [7:0] cal_reg_4; // @[Misc.scala 173:20]
  reg [7:0] cal_reg_5; // @[Misc.scala 173:20]
  reg [7:0] cal_reg_6; // @[Misc.scala 173:20]
  reg [7:0] cal_reg_7; // @[Misc.scala 173:20]
  wire [7:0] _cal_reg_0_T_1 = io_in_vec_0 + io_in_vec_1; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_0_T_3 = io_in_vec_2 + io_in_vec_3; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_0_T_5 = io_in_vec_4 + io_in_vec_5; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_0_T_7 = io_in_vec_6 + io_in_vec_7; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_0_T_9 = _cal_reg_0_T_1 + _cal_reg_0_T_3; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_0_T_11 = _cal_reg_0_T_5 + _cal_reg_0_T_7; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_1_T_1 = io_in_vec_8 + io_in_vec_9; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_1_T_3 = io_in_vec_10 + io_in_vec_11; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_1_T_5 = io_in_vec_12 + io_in_vec_13; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_1_T_7 = io_in_vec_14 + io_in_vec_15; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_1_T_9 = _cal_reg_1_T_1 + _cal_reg_1_T_3; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_1_T_11 = _cal_reg_1_T_5 + _cal_reg_1_T_7; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_2_T_1 = io_in_vec_16 + io_in_vec_17; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_2_T_3 = io_in_vec_18 + io_in_vec_19; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_2_T_5 = io_in_vec_20 + io_in_vec_21; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_2_T_7 = io_in_vec_22 + io_in_vec_23; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_2_T_9 = _cal_reg_2_T_1 + _cal_reg_2_T_3; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_2_T_11 = _cal_reg_2_T_5 + _cal_reg_2_T_7; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_3_T_1 = io_in_vec_24 + io_in_vec_25; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_3_T_3 = io_in_vec_26 + io_in_vec_27; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_3_T_5 = io_in_vec_28 + io_in_vec_29; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_3_T_7 = io_in_vec_30 + io_in_vec_31; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_3_T_9 = _cal_reg_3_T_1 + _cal_reg_3_T_3; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_3_T_11 = _cal_reg_3_T_5 + _cal_reg_3_T_7; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_4_T_1 = io_in_vec_32 + io_in_vec_33; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_4_T_3 = io_in_vec_34 + io_in_vec_35; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_4_T_5 = io_in_vec_36 + io_in_vec_37; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_4_T_7 = io_in_vec_38 + io_in_vec_39; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_4_T_9 = _cal_reg_4_T_1 + _cal_reg_4_T_3; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_4_T_11 = _cal_reg_4_T_5 + _cal_reg_4_T_7; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_5_T_1 = io_in_vec_40 + io_in_vec_41; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_5_T_3 = io_in_vec_42 + io_in_vec_43; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_5_T_5 = io_in_vec_44 + io_in_vec_45; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_5_T_7 = io_in_vec_46 + io_in_vec_47; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_5_T_9 = _cal_reg_5_T_1 + _cal_reg_5_T_3; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_5_T_11 = _cal_reg_5_T_5 + _cal_reg_5_T_7; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_6_T_1 = io_in_vec_48 + io_in_vec_49; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_6_T_3 = io_in_vec_50 + io_in_vec_51; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_6_T_5 = io_in_vec_52 + io_in_vec_53; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_6_T_7 = io_in_vec_54 + io_in_vec_55; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_6_T_9 = _cal_reg_6_T_1 + _cal_reg_6_T_3; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_6_T_11 = _cal_reg_6_T_5 + _cal_reg_6_T_7; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_7_T_1 = io_in_vec_56 + io_in_vec_57; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_7_T_3 = io_in_vec_58 + io_in_vec_59; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_7_T_5 = io_in_vec_60 + io_in_vec_61; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_7_T_7 = io_in_vec_62 + io_in_vec_63; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_7_T_9 = _cal_reg_7_T_1 + _cal_reg_7_T_3; // @[Misc.scala 188:42]
  wire [7:0] _cal_reg_7_T_11 = _cal_reg_7_T_5 + _cal_reg_7_T_7; // @[Misc.scala 188:42]
  wire [7:0] _io_out_sum_T_1 = cal_reg_0 + cal_reg_1; // @[Misc.scala 190:37]
  wire [7:0] _io_out_sum_T_3 = cal_reg_2 + cal_reg_3; // @[Misc.scala 190:37]
  wire [7:0] _io_out_sum_T_5 = cal_reg_4 + cal_reg_5; // @[Misc.scala 190:37]
  wire [7:0] _io_out_sum_T_7 = cal_reg_6 + cal_reg_7; // @[Misc.scala 190:37]
  wire [7:0] _io_out_sum_T_9 = _io_out_sum_T_1 + _io_out_sum_T_3; // @[Misc.scala 190:37]
  wire [7:0] _io_out_sum_T_11 = _io_out_sum_T_5 + _io_out_sum_T_7; // @[Misc.scala 190:37]
  assign io_out_sum = _io_out_sum_T_9 + _io_out_sum_T_11; // @[Misc.scala 190:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_9 + _cal_reg_0_T_11; // @[Misc.scala 188:42]
    cal_reg_1 <= _cal_reg_1_T_9 + _cal_reg_1_T_11; // @[Misc.scala 188:42]
    cal_reg_2 <= _cal_reg_2_T_9 + _cal_reg_2_T_11; // @[Misc.scala 188:42]
    cal_reg_3 <= _cal_reg_3_T_9 + _cal_reg_3_T_11; // @[Misc.scala 188:42]
    cal_reg_4 <= _cal_reg_4_T_9 + _cal_reg_4_T_11; // @[Misc.scala 188:42]
    cal_reg_5 <= _cal_reg_5_T_9 + _cal_reg_5_T_11; // @[Misc.scala 188:42]
    cal_reg_6 <= _cal_reg_6_T_9 + _cal_reg_6_T_11; // @[Misc.scala 188:42]
    cal_reg_7 <= _cal_reg_7_T_9 + _cal_reg_7_T_11; // @[Misc.scala 188:42]
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
  cal_reg_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  cal_reg_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  cal_reg_2 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  cal_reg_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  cal_reg_4 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  cal_reg_5 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  cal_reg_6 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  cal_reg_7 = _RAND_7[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RxConverter(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input          io_in_tuser,
  input  [63:0]  io_in_tkeep,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output         io_out_tuser,
  output [15:0]  io_out_rx_info_tlen,
  output [7:0]   io_out_extern_config_c2h_match_op,
  output [31:0]  io_out_extern_config_c2h_match_arg1,
  output [31:0]  io_out_extern_config_c2h_match_arg2,
  output [31:0]  io_out_extern_config_c2h_match_arg3,
  output [127:0] io_out_extern_config_aes_key,
  output [3:0]   io_out_extern_config_round_time,
  input  [7:0]   io_extern_config_c2h_match_op,
  input  [31:0]  io_extern_config_c2h_match_arg1,
  input  [31:0]  io_extern_config_c2h_match_arg2,
  input  [31:0]  io_extern_config_c2h_match_arg3,
  input  [127:0] io_extern_config_aes_key,
  input  [3:0]   io_extern_config_round_time
);
`ifdef RANDOMIZE_REG_INIT
  reg [607:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [127:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  wire  burst_size_cal_clock; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_0; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_1; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_2; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_3; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_4; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_5; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_6; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_7; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_8; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_9; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_10; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_11; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_12; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_13; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_14; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_15; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_16; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_17; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_18; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_19; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_20; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_21; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_22; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_23; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_24; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_25; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_26; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_27; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_28; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_29; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_30; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_31; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_32; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_33; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_34; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_35; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_36; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_37; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_38; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_39; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_40; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_41; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_42; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_43; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_44; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_45; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_46; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_47; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_48; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_49; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_50; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_51; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_52; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_53; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_54; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_55; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_56; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_57; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_58; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_59; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_60; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_61; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_62; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_in_vec_63; // @[RxConverter.scala 29:30]
  wire [7:0] burst_size_cal_io_out_sum; // @[RxConverter.scala 29:30]
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[RxConverter.scala 15:36]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[RxConverter.scala 16:38]
  wire [578:0] _in_reg_T = {io_in_tuser,io_in_tkeep,io_in_tdata,io_in_tvalid,io_in_tlast}; // @[Cat.scala 31:58]
  reg [578:0] in_reg_r; // @[Reg.scala 28:20]
  wire  in_reg_tlast = in_reg_r[0]; // @[RxConverter.scala 17:119]
  wire  in_reg_tvalid = in_reg_r[1]; // @[RxConverter.scala 17:119]
  wire [511:0] in_reg_tdata = in_reg_r[513:2]; // @[RxConverter.scala 17:119]
  wire [63:0] in_reg_tkeep = in_reg_r[577:514]; // @[RxConverter.scala 17:119]
  reg  first_beat_reg; // @[Reg.scala 28:20]
  wire  _GEN_1 = in_shake_hand ? in_reg_tlast : first_beat_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_reg_used_reg; // @[RxConverter.scala 19:32]
  wire  _GEN_2 = out_shake_hand ? 1'h0 : in_reg_used_reg; // @[RxConverter.scala 22:29 23:21 19:32]
  wire  _GEN_3 = in_shake_hand | _GEN_2; // @[RxConverter.scala 20:23 21:21]
  reg [7:0] extern_config_reg_c2h_match_op; // @[RxConverter.scala 25:34]
  reg [31:0] extern_config_reg_c2h_match_arg1; // @[RxConverter.scala 25:34]
  reg [31:0] extern_config_reg_c2h_match_arg2; // @[RxConverter.scala 25:34]
  reg [31:0] extern_config_reg_c2h_match_arg3; // @[RxConverter.scala 25:34]
  reg [127:0] extern_config_reg_aes_key; // @[RxConverter.scala 25:34]
  reg [3:0] extern_config_reg_round_time; // @[RxConverter.scala 25:34]
  wire [63:0] cal_tkeep = in_shake_hand ? io_in_tkeep : in_reg_tkeep; // @[RxConverter.scala 28:22]
  reg [15:0] tlen_reg; // @[RxConverter.scala 34:25]
  wire [15:0] _GEN_6 = {{8'd0}, burst_size_cal_io_out_sum}; // @[RxConverter.scala 39:28]
  wire [15:0] _tlen_reg_T_1 = tlen_reg + _GEN_6; // @[RxConverter.scala 39:28]
  wire  keep_val_0 = in_reg_tkeep[0]; // @[RxConverter.scala 45:32]
  wire  keep_val_8 = in_reg_tkeep[1]; // @[RxConverter.scala 45:32]
  wire  keep_val_16 = in_reg_tkeep[2]; // @[RxConverter.scala 45:32]
  wire  keep_val_24 = in_reg_tkeep[3]; // @[RxConverter.scala 45:32]
  wire  keep_val_32 = in_reg_tkeep[4]; // @[RxConverter.scala 45:32]
  wire  keep_val_40 = in_reg_tkeep[5]; // @[RxConverter.scala 45:32]
  wire  keep_val_48 = in_reg_tkeep[6]; // @[RxConverter.scala 45:32]
  wire  keep_val_56 = in_reg_tkeep[7]; // @[RxConverter.scala 45:32]
  wire  keep_val_64 = in_reg_tkeep[8]; // @[RxConverter.scala 45:32]
  wire  keep_val_72 = in_reg_tkeep[9]; // @[RxConverter.scala 45:32]
  wire  keep_val_80 = in_reg_tkeep[10]; // @[RxConverter.scala 45:32]
  wire  keep_val_88 = in_reg_tkeep[11]; // @[RxConverter.scala 45:32]
  wire  keep_val_96 = in_reg_tkeep[12]; // @[RxConverter.scala 45:32]
  wire  keep_val_104 = in_reg_tkeep[13]; // @[RxConverter.scala 45:32]
  wire  keep_val_112 = in_reg_tkeep[14]; // @[RxConverter.scala 45:32]
  wire  keep_val_120 = in_reg_tkeep[15]; // @[RxConverter.scala 45:32]
  wire  keep_val_128 = in_reg_tkeep[16]; // @[RxConverter.scala 45:32]
  wire  keep_val_136 = in_reg_tkeep[17]; // @[RxConverter.scala 45:32]
  wire  keep_val_144 = in_reg_tkeep[18]; // @[RxConverter.scala 45:32]
  wire  keep_val_152 = in_reg_tkeep[19]; // @[RxConverter.scala 45:32]
  wire  keep_val_160 = in_reg_tkeep[20]; // @[RxConverter.scala 45:32]
  wire  keep_val_168 = in_reg_tkeep[21]; // @[RxConverter.scala 45:32]
  wire  keep_val_176 = in_reg_tkeep[22]; // @[RxConverter.scala 45:32]
  wire  keep_val_184 = in_reg_tkeep[23]; // @[RxConverter.scala 45:32]
  wire  keep_val_192 = in_reg_tkeep[24]; // @[RxConverter.scala 45:32]
  wire  keep_val_200 = in_reg_tkeep[25]; // @[RxConverter.scala 45:32]
  wire  keep_val_208 = in_reg_tkeep[26]; // @[RxConverter.scala 45:32]
  wire  keep_val_216 = in_reg_tkeep[27]; // @[RxConverter.scala 45:32]
  wire  keep_val_224 = in_reg_tkeep[28]; // @[RxConverter.scala 45:32]
  wire  keep_val_232 = in_reg_tkeep[29]; // @[RxConverter.scala 45:32]
  wire  keep_val_240 = in_reg_tkeep[30]; // @[RxConverter.scala 45:32]
  wire  keep_val_248 = in_reg_tkeep[31]; // @[RxConverter.scala 45:32]
  wire  keep_val_256 = in_reg_tkeep[32]; // @[RxConverter.scala 45:32]
  wire  keep_val_264 = in_reg_tkeep[33]; // @[RxConverter.scala 45:32]
  wire  keep_val_272 = in_reg_tkeep[34]; // @[RxConverter.scala 45:32]
  wire  keep_val_280 = in_reg_tkeep[35]; // @[RxConverter.scala 45:32]
  wire  keep_val_288 = in_reg_tkeep[36]; // @[RxConverter.scala 45:32]
  wire  keep_val_296 = in_reg_tkeep[37]; // @[RxConverter.scala 45:32]
  wire  keep_val_304 = in_reg_tkeep[38]; // @[RxConverter.scala 45:32]
  wire  keep_val_312 = in_reg_tkeep[39]; // @[RxConverter.scala 45:32]
  wire  keep_val_320 = in_reg_tkeep[40]; // @[RxConverter.scala 45:32]
  wire  keep_val_328 = in_reg_tkeep[41]; // @[RxConverter.scala 45:32]
  wire  keep_val_336 = in_reg_tkeep[42]; // @[RxConverter.scala 45:32]
  wire  keep_val_344 = in_reg_tkeep[43]; // @[RxConverter.scala 45:32]
  wire  keep_val_352 = in_reg_tkeep[44]; // @[RxConverter.scala 45:32]
  wire  keep_val_360 = in_reg_tkeep[45]; // @[RxConverter.scala 45:32]
  wire  keep_val_368 = in_reg_tkeep[46]; // @[RxConverter.scala 45:32]
  wire  keep_val_376 = in_reg_tkeep[47]; // @[RxConverter.scala 45:32]
  wire  keep_val_384 = in_reg_tkeep[48]; // @[RxConverter.scala 45:32]
  wire  keep_val_392 = in_reg_tkeep[49]; // @[RxConverter.scala 45:32]
  wire  keep_val_400 = in_reg_tkeep[50]; // @[RxConverter.scala 45:32]
  wire  keep_val_408 = in_reg_tkeep[51]; // @[RxConverter.scala 45:32]
  wire  keep_val_416 = in_reg_tkeep[52]; // @[RxConverter.scala 45:32]
  wire  keep_val_424 = in_reg_tkeep[53]; // @[RxConverter.scala 45:32]
  wire  keep_val_432 = in_reg_tkeep[54]; // @[RxConverter.scala 45:32]
  wire  keep_val_440 = in_reg_tkeep[55]; // @[RxConverter.scala 45:32]
  wire  keep_val_448 = in_reg_tkeep[56]; // @[RxConverter.scala 45:32]
  wire  keep_val_456 = in_reg_tkeep[57]; // @[RxConverter.scala 45:32]
  wire  keep_val_464 = in_reg_tkeep[58]; // @[RxConverter.scala 45:32]
  wire  keep_val_472 = in_reg_tkeep[59]; // @[RxConverter.scala 45:32]
  wire  keep_val_480 = in_reg_tkeep[60]; // @[RxConverter.scala 45:32]
  wire  keep_val_488 = in_reg_tkeep[61]; // @[RxConverter.scala 45:32]
  wire  keep_val_496 = in_reg_tkeep[62]; // @[RxConverter.scala 45:32]
  wire  keep_val_504 = in_reg_tkeep[63]; // @[RxConverter.scala 45:32]
  wire [7:0] io_out_tdata_lo_lo_lo_lo_lo_lo = {keep_val_0,keep_val_0,keep_val_0,keep_val_0,keep_val_0,keep_val_0,
    keep_val_0,keep_val_0}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_lo_lo_lo_lo_lo = {keep_val_8,keep_val_8,keep_val_8,keep_val_8,keep_val_8,keep_val_8,
    keep_val_8,keep_val_8,io_out_tdata_lo_lo_lo_lo_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_lo_lo_lo_hi_lo = {keep_val_16,keep_val_16,keep_val_16,keep_val_16,keep_val_16,keep_val_16,
    keep_val_16,keep_val_16}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_lo_lo_lo_lo = {keep_val_24,keep_val_24,keep_val_24,keep_val_24,keep_val_24,keep_val_24,
    keep_val_24,keep_val_24,io_out_tdata_lo_lo_lo_lo_hi_lo,io_out_tdata_lo_lo_lo_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_lo_lo_hi_lo_lo = {keep_val_32,keep_val_32,keep_val_32,keep_val_32,keep_val_32,keep_val_32,
    keep_val_32,keep_val_32}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_lo_lo_lo_hi_lo = {keep_val_40,keep_val_40,keep_val_40,keep_val_40,keep_val_40,keep_val_40,
    keep_val_40,keep_val_40,io_out_tdata_lo_lo_lo_hi_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_lo_lo_hi_hi_lo = {keep_val_48,keep_val_48,keep_val_48,keep_val_48,keep_val_48,keep_val_48,
    keep_val_48,keep_val_48}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_lo_lo_lo_hi = {keep_val_56,keep_val_56,keep_val_56,keep_val_56,keep_val_56,keep_val_56,
    keep_val_56,keep_val_56,io_out_tdata_lo_lo_lo_hi_hi_lo,io_out_tdata_lo_lo_lo_hi_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_lo_hi_lo_lo_lo = {keep_val_64,keep_val_64,keep_val_64,keep_val_64,keep_val_64,keep_val_64,
    keep_val_64,keep_val_64}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_lo_lo_hi_lo_lo = {keep_val_72,keep_val_72,keep_val_72,keep_val_72,keep_val_72,keep_val_72,
    keep_val_72,keep_val_72,io_out_tdata_lo_lo_hi_lo_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_lo_hi_lo_hi_lo = {keep_val_80,keep_val_80,keep_val_80,keep_val_80,keep_val_80,keep_val_80,
    keep_val_80,keep_val_80}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_lo_lo_hi_lo = {keep_val_88,keep_val_88,keep_val_88,keep_val_88,keep_val_88,keep_val_88,
    keep_val_88,keep_val_88,io_out_tdata_lo_lo_hi_lo_hi_lo,io_out_tdata_lo_lo_hi_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_lo_hi_hi_lo_lo = {keep_val_96,keep_val_96,keep_val_96,keep_val_96,keep_val_96,keep_val_96,
    keep_val_96,keep_val_96}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_lo_lo_hi_hi_lo = {keep_val_104,keep_val_104,keep_val_104,keep_val_104,keep_val_104,
    keep_val_104,keep_val_104,keep_val_104,io_out_tdata_lo_lo_hi_hi_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_lo_hi_hi_hi_lo = {keep_val_112,keep_val_112,keep_val_112,keep_val_112,keep_val_112,
    keep_val_112,keep_val_112,keep_val_112}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_lo_lo_hi_hi = {keep_val_120,keep_val_120,keep_val_120,keep_val_120,keep_val_120,keep_val_120,
    keep_val_120,keep_val_120,io_out_tdata_lo_lo_hi_hi_hi_lo,io_out_tdata_lo_lo_hi_hi_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_hi_lo_lo_lo_lo = {keep_val_128,keep_val_128,keep_val_128,keep_val_128,keep_val_128,
    keep_val_128,keep_val_128,keep_val_128}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_lo_hi_lo_lo_lo = {keep_val_136,keep_val_136,keep_val_136,keep_val_136,keep_val_136,
    keep_val_136,keep_val_136,keep_val_136,io_out_tdata_lo_hi_lo_lo_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_hi_lo_lo_hi_lo = {keep_val_144,keep_val_144,keep_val_144,keep_val_144,keep_val_144,
    keep_val_144,keep_val_144,keep_val_144}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_lo_hi_lo_lo = {keep_val_152,keep_val_152,keep_val_152,keep_val_152,keep_val_152,keep_val_152,
    keep_val_152,keep_val_152,io_out_tdata_lo_hi_lo_lo_hi_lo,io_out_tdata_lo_hi_lo_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_hi_lo_hi_lo_lo = {keep_val_160,keep_val_160,keep_val_160,keep_val_160,keep_val_160,
    keep_val_160,keep_val_160,keep_val_160}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_lo_hi_lo_hi_lo = {keep_val_168,keep_val_168,keep_val_168,keep_val_168,keep_val_168,
    keep_val_168,keep_val_168,keep_val_168,io_out_tdata_lo_hi_lo_hi_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_hi_lo_hi_hi_lo = {keep_val_176,keep_val_176,keep_val_176,keep_val_176,keep_val_176,
    keep_val_176,keep_val_176,keep_val_176}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_lo_hi_lo_hi = {keep_val_184,keep_val_184,keep_val_184,keep_val_184,keep_val_184,keep_val_184,
    keep_val_184,keep_val_184,io_out_tdata_lo_hi_lo_hi_hi_lo,io_out_tdata_lo_hi_lo_hi_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_hi_hi_lo_lo_lo = {keep_val_192,keep_val_192,keep_val_192,keep_val_192,keep_val_192,
    keep_val_192,keep_val_192,keep_val_192}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_lo_hi_hi_lo_lo = {keep_val_200,keep_val_200,keep_val_200,keep_val_200,keep_val_200,
    keep_val_200,keep_val_200,keep_val_200,io_out_tdata_lo_hi_hi_lo_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_hi_hi_lo_hi_lo = {keep_val_208,keep_val_208,keep_val_208,keep_val_208,keep_val_208,
    keep_val_208,keep_val_208,keep_val_208}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_lo_hi_hi_lo = {keep_val_216,keep_val_216,keep_val_216,keep_val_216,keep_val_216,keep_val_216,
    keep_val_216,keep_val_216,io_out_tdata_lo_hi_hi_lo_hi_lo,io_out_tdata_lo_hi_hi_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_hi_hi_hi_lo_lo = {keep_val_224,keep_val_224,keep_val_224,keep_val_224,keep_val_224,
    keep_val_224,keep_val_224,keep_val_224}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_lo_hi_hi_hi_lo = {keep_val_232,keep_val_232,keep_val_232,keep_val_232,keep_val_232,
    keep_val_232,keep_val_232,keep_val_232,io_out_tdata_lo_hi_hi_hi_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_lo_hi_hi_hi_hi_lo = {keep_val_240,keep_val_240,keep_val_240,keep_val_240,keep_val_240,
    keep_val_240,keep_val_240,keep_val_240}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_lo_hi_hi_hi = {keep_val_248,keep_val_248,keep_val_248,keep_val_248,keep_val_248,keep_val_248,
    keep_val_248,keep_val_248,io_out_tdata_lo_hi_hi_hi_hi_lo,io_out_tdata_lo_hi_hi_hi_lo}; // @[RxConverter.scala 53:52]
  wire [255:0] io_out_tdata_lo = {io_out_tdata_lo_hi_hi_hi,io_out_tdata_lo_hi_hi_lo,io_out_tdata_lo_hi_lo_hi,
    io_out_tdata_lo_hi_lo_lo,io_out_tdata_lo_lo_hi_hi,io_out_tdata_lo_lo_hi_lo,io_out_tdata_lo_lo_lo_hi,
    io_out_tdata_lo_lo_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_lo_lo_lo_lo_lo = {keep_val_256,keep_val_256,keep_val_256,keep_val_256,keep_val_256,
    keep_val_256,keep_val_256,keep_val_256}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_hi_lo_lo_lo_lo = {keep_val_264,keep_val_264,keep_val_264,keep_val_264,keep_val_264,
    keep_val_264,keep_val_264,keep_val_264,io_out_tdata_hi_lo_lo_lo_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_lo_lo_lo_hi_lo = {keep_val_272,keep_val_272,keep_val_272,keep_val_272,keep_val_272,
    keep_val_272,keep_val_272,keep_val_272}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_hi_lo_lo_lo = {keep_val_280,keep_val_280,keep_val_280,keep_val_280,keep_val_280,keep_val_280,
    keep_val_280,keep_val_280,io_out_tdata_hi_lo_lo_lo_hi_lo,io_out_tdata_hi_lo_lo_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_lo_lo_hi_lo_lo = {keep_val_288,keep_val_288,keep_val_288,keep_val_288,keep_val_288,
    keep_val_288,keep_val_288,keep_val_288}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_hi_lo_lo_hi_lo = {keep_val_296,keep_val_296,keep_val_296,keep_val_296,keep_val_296,
    keep_val_296,keep_val_296,keep_val_296,io_out_tdata_hi_lo_lo_hi_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_lo_lo_hi_hi_lo = {keep_val_304,keep_val_304,keep_val_304,keep_val_304,keep_val_304,
    keep_val_304,keep_val_304,keep_val_304}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_hi_lo_lo_hi = {keep_val_312,keep_val_312,keep_val_312,keep_val_312,keep_val_312,keep_val_312,
    keep_val_312,keep_val_312,io_out_tdata_hi_lo_lo_hi_hi_lo,io_out_tdata_hi_lo_lo_hi_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_lo_hi_lo_lo_lo = {keep_val_320,keep_val_320,keep_val_320,keep_val_320,keep_val_320,
    keep_val_320,keep_val_320,keep_val_320}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_hi_lo_hi_lo_lo = {keep_val_328,keep_val_328,keep_val_328,keep_val_328,keep_val_328,
    keep_val_328,keep_val_328,keep_val_328,io_out_tdata_hi_lo_hi_lo_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_lo_hi_lo_hi_lo = {keep_val_336,keep_val_336,keep_val_336,keep_val_336,keep_val_336,
    keep_val_336,keep_val_336,keep_val_336}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_hi_lo_hi_lo = {keep_val_344,keep_val_344,keep_val_344,keep_val_344,keep_val_344,keep_val_344,
    keep_val_344,keep_val_344,io_out_tdata_hi_lo_hi_lo_hi_lo,io_out_tdata_hi_lo_hi_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_lo_hi_hi_lo_lo = {keep_val_352,keep_val_352,keep_val_352,keep_val_352,keep_val_352,
    keep_val_352,keep_val_352,keep_val_352}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_hi_lo_hi_hi_lo = {keep_val_360,keep_val_360,keep_val_360,keep_val_360,keep_val_360,
    keep_val_360,keep_val_360,keep_val_360,io_out_tdata_hi_lo_hi_hi_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_lo_hi_hi_hi_lo = {keep_val_368,keep_val_368,keep_val_368,keep_val_368,keep_val_368,
    keep_val_368,keep_val_368,keep_val_368}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_hi_lo_hi_hi = {keep_val_376,keep_val_376,keep_val_376,keep_val_376,keep_val_376,keep_val_376,
    keep_val_376,keep_val_376,io_out_tdata_hi_lo_hi_hi_hi_lo,io_out_tdata_hi_lo_hi_hi_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_hi_lo_lo_lo_lo = {keep_val_384,keep_val_384,keep_val_384,keep_val_384,keep_val_384,
    keep_val_384,keep_val_384,keep_val_384}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_hi_hi_lo_lo_lo = {keep_val_392,keep_val_392,keep_val_392,keep_val_392,keep_val_392,
    keep_val_392,keep_val_392,keep_val_392,io_out_tdata_hi_hi_lo_lo_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_hi_lo_lo_hi_lo = {keep_val_400,keep_val_400,keep_val_400,keep_val_400,keep_val_400,
    keep_val_400,keep_val_400,keep_val_400}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_hi_hi_lo_lo = {keep_val_408,keep_val_408,keep_val_408,keep_val_408,keep_val_408,keep_val_408,
    keep_val_408,keep_val_408,io_out_tdata_hi_hi_lo_lo_hi_lo,io_out_tdata_hi_hi_lo_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_hi_lo_hi_lo_lo = {keep_val_416,keep_val_416,keep_val_416,keep_val_416,keep_val_416,
    keep_val_416,keep_val_416,keep_val_416}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_hi_hi_lo_hi_lo = {keep_val_424,keep_val_424,keep_val_424,keep_val_424,keep_val_424,
    keep_val_424,keep_val_424,keep_val_424,io_out_tdata_hi_hi_lo_hi_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_hi_lo_hi_hi_lo = {keep_val_432,keep_val_432,keep_val_432,keep_val_432,keep_val_432,
    keep_val_432,keep_val_432,keep_val_432}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_hi_hi_lo_hi = {keep_val_440,keep_val_440,keep_val_440,keep_val_440,keep_val_440,keep_val_440,
    keep_val_440,keep_val_440,io_out_tdata_hi_hi_lo_hi_hi_lo,io_out_tdata_hi_hi_lo_hi_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_hi_hi_lo_lo_lo = {keep_val_448,keep_val_448,keep_val_448,keep_val_448,keep_val_448,
    keep_val_448,keep_val_448,keep_val_448}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_hi_hi_hi_lo_lo = {keep_val_456,keep_val_456,keep_val_456,keep_val_456,keep_val_456,
    keep_val_456,keep_val_456,keep_val_456,io_out_tdata_hi_hi_hi_lo_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_hi_hi_lo_hi_lo = {keep_val_464,keep_val_464,keep_val_464,keep_val_464,keep_val_464,
    keep_val_464,keep_val_464,keep_val_464}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_hi_hi_hi_lo = {keep_val_472,keep_val_472,keep_val_472,keep_val_472,keep_val_472,keep_val_472,
    keep_val_472,keep_val_472,io_out_tdata_hi_hi_hi_lo_hi_lo,io_out_tdata_hi_hi_hi_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_hi_hi_hi_lo_lo = {keep_val_480,keep_val_480,keep_val_480,keep_val_480,keep_val_480,
    keep_val_480,keep_val_480,keep_val_480}; // @[RxConverter.scala 53:52]
  wire [15:0] io_out_tdata_hi_hi_hi_hi_lo = {keep_val_488,keep_val_488,keep_val_488,keep_val_488,keep_val_488,
    keep_val_488,keep_val_488,keep_val_488,io_out_tdata_hi_hi_hi_hi_lo_lo}; // @[RxConverter.scala 53:52]
  wire [7:0] io_out_tdata_hi_hi_hi_hi_hi_lo = {keep_val_496,keep_val_496,keep_val_496,keep_val_496,keep_val_496,
    keep_val_496,keep_val_496,keep_val_496}; // @[RxConverter.scala 53:52]
  wire [31:0] io_out_tdata_hi_hi_hi_hi = {keep_val_504,keep_val_504,keep_val_504,keep_val_504,keep_val_504,keep_val_504,
    keep_val_504,keep_val_504,io_out_tdata_hi_hi_hi_hi_hi_lo,io_out_tdata_hi_hi_hi_hi_lo}; // @[RxConverter.scala 53:52]
  wire [511:0] _io_out_tdata_T = {io_out_tdata_hi_hi_hi_hi,io_out_tdata_hi_hi_hi_lo,io_out_tdata_hi_hi_lo_hi,
    io_out_tdata_hi_hi_lo_lo,io_out_tdata_hi_lo_hi_hi,io_out_tdata_hi_lo_hi_lo,io_out_tdata_hi_lo_lo_hi,
    io_out_tdata_hi_lo_lo_lo,io_out_tdata_lo}; // @[RxConverter.scala 53:52]
  ReduceAddSync_3 burst_size_cal ( // @[RxConverter.scala 29:30]
    .clock(burst_size_cal_clock),
    .io_in_vec_0(burst_size_cal_io_in_vec_0),
    .io_in_vec_1(burst_size_cal_io_in_vec_1),
    .io_in_vec_2(burst_size_cal_io_in_vec_2),
    .io_in_vec_3(burst_size_cal_io_in_vec_3),
    .io_in_vec_4(burst_size_cal_io_in_vec_4),
    .io_in_vec_5(burst_size_cal_io_in_vec_5),
    .io_in_vec_6(burst_size_cal_io_in_vec_6),
    .io_in_vec_7(burst_size_cal_io_in_vec_7),
    .io_in_vec_8(burst_size_cal_io_in_vec_8),
    .io_in_vec_9(burst_size_cal_io_in_vec_9),
    .io_in_vec_10(burst_size_cal_io_in_vec_10),
    .io_in_vec_11(burst_size_cal_io_in_vec_11),
    .io_in_vec_12(burst_size_cal_io_in_vec_12),
    .io_in_vec_13(burst_size_cal_io_in_vec_13),
    .io_in_vec_14(burst_size_cal_io_in_vec_14),
    .io_in_vec_15(burst_size_cal_io_in_vec_15),
    .io_in_vec_16(burst_size_cal_io_in_vec_16),
    .io_in_vec_17(burst_size_cal_io_in_vec_17),
    .io_in_vec_18(burst_size_cal_io_in_vec_18),
    .io_in_vec_19(burst_size_cal_io_in_vec_19),
    .io_in_vec_20(burst_size_cal_io_in_vec_20),
    .io_in_vec_21(burst_size_cal_io_in_vec_21),
    .io_in_vec_22(burst_size_cal_io_in_vec_22),
    .io_in_vec_23(burst_size_cal_io_in_vec_23),
    .io_in_vec_24(burst_size_cal_io_in_vec_24),
    .io_in_vec_25(burst_size_cal_io_in_vec_25),
    .io_in_vec_26(burst_size_cal_io_in_vec_26),
    .io_in_vec_27(burst_size_cal_io_in_vec_27),
    .io_in_vec_28(burst_size_cal_io_in_vec_28),
    .io_in_vec_29(burst_size_cal_io_in_vec_29),
    .io_in_vec_30(burst_size_cal_io_in_vec_30),
    .io_in_vec_31(burst_size_cal_io_in_vec_31),
    .io_in_vec_32(burst_size_cal_io_in_vec_32),
    .io_in_vec_33(burst_size_cal_io_in_vec_33),
    .io_in_vec_34(burst_size_cal_io_in_vec_34),
    .io_in_vec_35(burst_size_cal_io_in_vec_35),
    .io_in_vec_36(burst_size_cal_io_in_vec_36),
    .io_in_vec_37(burst_size_cal_io_in_vec_37),
    .io_in_vec_38(burst_size_cal_io_in_vec_38),
    .io_in_vec_39(burst_size_cal_io_in_vec_39),
    .io_in_vec_40(burst_size_cal_io_in_vec_40),
    .io_in_vec_41(burst_size_cal_io_in_vec_41),
    .io_in_vec_42(burst_size_cal_io_in_vec_42),
    .io_in_vec_43(burst_size_cal_io_in_vec_43),
    .io_in_vec_44(burst_size_cal_io_in_vec_44),
    .io_in_vec_45(burst_size_cal_io_in_vec_45),
    .io_in_vec_46(burst_size_cal_io_in_vec_46),
    .io_in_vec_47(burst_size_cal_io_in_vec_47),
    .io_in_vec_48(burst_size_cal_io_in_vec_48),
    .io_in_vec_49(burst_size_cal_io_in_vec_49),
    .io_in_vec_50(burst_size_cal_io_in_vec_50),
    .io_in_vec_51(burst_size_cal_io_in_vec_51),
    .io_in_vec_52(burst_size_cal_io_in_vec_52),
    .io_in_vec_53(burst_size_cal_io_in_vec_53),
    .io_in_vec_54(burst_size_cal_io_in_vec_54),
    .io_in_vec_55(burst_size_cal_io_in_vec_55),
    .io_in_vec_56(burst_size_cal_io_in_vec_56),
    .io_in_vec_57(burst_size_cal_io_in_vec_57),
    .io_in_vec_58(burst_size_cal_io_in_vec_58),
    .io_in_vec_59(burst_size_cal_io_in_vec_59),
    .io_in_vec_60(burst_size_cal_io_in_vec_60),
    .io_in_vec_61(burst_size_cal_io_in_vec_61),
    .io_in_vec_62(burst_size_cal_io_in_vec_62),
    .io_in_vec_63(burst_size_cal_io_in_vec_63),
    .io_out_sum(burst_size_cal_io_out_sum)
  );
  assign io_in_tready = io_out_tready | ~in_reg_used_reg; // @[RxConverter.scala 56:34]
  assign io_out_tdata = in_reg_tdata & _io_out_tdata_T; // @[RxConverter.scala 53:33]
  assign io_out_tvalid = in_reg_tvalid & in_reg_used_reg; // @[RxConverter.scala 54:34]
  assign io_out_tlast = in_reg_r[0]; // @[RxConverter.scala 17:119]
  assign io_out_tuser = in_reg_r[578]; // @[RxConverter.scala 17:119]
  assign io_out_rx_info_tlen = first_beat_reg ? {{8'd0}, burst_size_cal_io_out_sum} : _tlen_reg_T_1; // @[RxConverter.scala 58:29]
  assign io_out_extern_config_c2h_match_op = extern_config_reg_c2h_match_op; // @[RxConverter.scala 60:24]
  assign io_out_extern_config_c2h_match_arg1 = extern_config_reg_c2h_match_arg1; // @[RxConverter.scala 60:24]
  assign io_out_extern_config_c2h_match_arg2 = extern_config_reg_c2h_match_arg2; // @[RxConverter.scala 60:24]
  assign io_out_extern_config_c2h_match_arg3 = extern_config_reg_c2h_match_arg3; // @[RxConverter.scala 60:24]
  assign io_out_extern_config_aes_key = extern_config_reg_aes_key; // @[RxConverter.scala 60:24]
  assign io_out_extern_config_round_time = extern_config_reg_round_time; // @[RxConverter.scala 60:24]
  assign burst_size_cal_clock = clock;
  assign burst_size_cal_io_in_vec_0 = {{7'd0}, cal_tkeep[0]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_1 = {{7'd0}, cal_tkeep[1]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_2 = {{7'd0}, cal_tkeep[2]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_3 = {{7'd0}, cal_tkeep[3]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_4 = {{7'd0}, cal_tkeep[4]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_5 = {{7'd0}, cal_tkeep[5]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_6 = {{7'd0}, cal_tkeep[6]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_7 = {{7'd0}, cal_tkeep[7]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_8 = {{7'd0}, cal_tkeep[8]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_9 = {{7'd0}, cal_tkeep[9]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_10 = {{7'd0}, cal_tkeep[10]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_11 = {{7'd0}, cal_tkeep[11]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_12 = {{7'd0}, cal_tkeep[12]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_13 = {{7'd0}, cal_tkeep[13]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_14 = {{7'd0}, cal_tkeep[14]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_15 = {{7'd0}, cal_tkeep[15]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_16 = {{7'd0}, cal_tkeep[16]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_17 = {{7'd0}, cal_tkeep[17]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_18 = {{7'd0}, cal_tkeep[18]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_19 = {{7'd0}, cal_tkeep[19]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_20 = {{7'd0}, cal_tkeep[20]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_21 = {{7'd0}, cal_tkeep[21]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_22 = {{7'd0}, cal_tkeep[22]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_23 = {{7'd0}, cal_tkeep[23]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_24 = {{7'd0}, cal_tkeep[24]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_25 = {{7'd0}, cal_tkeep[25]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_26 = {{7'd0}, cal_tkeep[26]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_27 = {{7'd0}, cal_tkeep[27]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_28 = {{7'd0}, cal_tkeep[28]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_29 = {{7'd0}, cal_tkeep[29]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_30 = {{7'd0}, cal_tkeep[30]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_31 = {{7'd0}, cal_tkeep[31]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_32 = {{7'd0}, cal_tkeep[32]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_33 = {{7'd0}, cal_tkeep[33]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_34 = {{7'd0}, cal_tkeep[34]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_35 = {{7'd0}, cal_tkeep[35]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_36 = {{7'd0}, cal_tkeep[36]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_37 = {{7'd0}, cal_tkeep[37]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_38 = {{7'd0}, cal_tkeep[38]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_39 = {{7'd0}, cal_tkeep[39]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_40 = {{7'd0}, cal_tkeep[40]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_41 = {{7'd0}, cal_tkeep[41]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_42 = {{7'd0}, cal_tkeep[42]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_43 = {{7'd0}, cal_tkeep[43]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_44 = {{7'd0}, cal_tkeep[44]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_45 = {{7'd0}, cal_tkeep[45]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_46 = {{7'd0}, cal_tkeep[46]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_47 = {{7'd0}, cal_tkeep[47]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_48 = {{7'd0}, cal_tkeep[48]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_49 = {{7'd0}, cal_tkeep[49]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_50 = {{7'd0}, cal_tkeep[50]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_51 = {{7'd0}, cal_tkeep[51]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_52 = {{7'd0}, cal_tkeep[52]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_53 = {{7'd0}, cal_tkeep[53]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_54 = {{7'd0}, cal_tkeep[54]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_55 = {{7'd0}, cal_tkeep[55]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_56 = {{7'd0}, cal_tkeep[56]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_57 = {{7'd0}, cal_tkeep[57]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_58 = {{7'd0}, cal_tkeep[58]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_59 = {{7'd0}, cal_tkeep[59]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_60 = {{7'd0}, cal_tkeep[60]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_61 = {{7'd0}, cal_tkeep[61]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_62 = {{7'd0}, cal_tkeep[62]}; // @[RxConverter.scala 30:53]
  assign burst_size_cal_io_in_vec_63 = {{7'd0}, cal_tkeep[63]}; // @[RxConverter.scala 30:53]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      in_reg_r <= 579'h1; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_reg_r <= _in_reg_T; // @[Reg.scala 29:22]
    end
    first_beat_reg <= reset | _GEN_1; // @[Reg.scala 28:{20,20}]
    if (reset) begin // @[RxConverter.scala 19:32]
      in_reg_used_reg <= 1'h0; // @[RxConverter.scala 19:32]
    end else begin
      in_reg_used_reg <= _GEN_3;
    end
    if (reset) begin // @[RxConverter.scala 25:34]
      extern_config_reg_c2h_match_op <= 8'h0; // @[RxConverter.scala 25:34]
    end else begin
      extern_config_reg_c2h_match_op <= io_extern_config_c2h_match_op; // @[RxConverter.scala 26:21]
    end
    if (reset) begin // @[RxConverter.scala 25:34]
      extern_config_reg_c2h_match_arg1 <= 32'h0; // @[RxConverter.scala 25:34]
    end else begin
      extern_config_reg_c2h_match_arg1 <= io_extern_config_c2h_match_arg1; // @[RxConverter.scala 26:21]
    end
    if (reset) begin // @[RxConverter.scala 25:34]
      extern_config_reg_c2h_match_arg2 <= 32'h0; // @[RxConverter.scala 25:34]
    end else begin
      extern_config_reg_c2h_match_arg2 <= io_extern_config_c2h_match_arg2; // @[RxConverter.scala 26:21]
    end
    if (reset) begin // @[RxConverter.scala 25:34]
      extern_config_reg_c2h_match_arg3 <= 32'h0; // @[RxConverter.scala 25:34]
    end else begin
      extern_config_reg_c2h_match_arg3 <= io_extern_config_c2h_match_arg3; // @[RxConverter.scala 26:21]
    end
    if (reset) begin // @[RxConverter.scala 25:34]
      extern_config_reg_aes_key <= 128'h0; // @[RxConverter.scala 25:34]
    end else begin
      extern_config_reg_aes_key <= io_extern_config_aes_key; // @[RxConverter.scala 26:21]
    end
    if (reset) begin // @[RxConverter.scala 25:34]
      extern_config_reg_round_time <= 4'h0; // @[RxConverter.scala 25:34]
    end else begin
      extern_config_reg_round_time <= io_extern_config_round_time; // @[RxConverter.scala 26:21]
    end
    if (reset) begin // @[RxConverter.scala 34:25]
      tlen_reg <= 16'h0; // @[RxConverter.scala 34:25]
    end else if (in_shake_hand) begin // @[RxConverter.scala 35:24]
      if (first_beat_reg) begin // @[RxConverter.scala 36:27]
        tlen_reg <= {{8'd0}, burst_size_cal_io_out_sum}; // @[RxConverter.scala 37:16]
      end else begin
        tlen_reg <= _tlen_reg_T_1; // @[RxConverter.scala 39:16]
      end
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
  in_reg_r = _RAND_0[578:0];
  _RAND_1 = {1{`RANDOM}};
  first_beat_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  in_reg_used_reg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  extern_config_reg_c2h_match_op = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  extern_config_reg_c2h_match_arg1 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  extern_config_reg_c2h_match_arg2 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  extern_config_reg_c2h_match_arg3 = _RAND_6[31:0];
  _RAND_7 = {4{`RANDOM}};
  extern_config_reg_aes_key = _RAND_7[127:0];
  _RAND_8 = {1{`RANDOM}};
  extern_config_reg_round_time = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  tlen_reg = _RAND_9[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RxChksumVerifier(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input          io_in_tuser,
  input  [15:0]  io_in_rx_info_tlen,
  input  [7:0]   io_in_extern_config_c2h_match_op,
  input  [31:0]  io_in_extern_config_c2h_match_arg1,
  input  [31:0]  io_in_extern_config_c2h_match_arg2,
  input  [31:0]  io_in_extern_config_c2h_match_arg3,
  input  [127:0] io_in_extern_config_aes_key,
  input  [3:0]   io_in_extern_config_round_time,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output         io_out_tuser,
  output [15:0]  io_out_rx_info_tlen,
  output [5:0]   io_out_rx_info_qid,
  output [31:0]  io_out_rx_info_ip_chksum,
  output [31:0]  io_out_rx_info_tcp_chksum,
  output [7:0]   io_out_extern_config_c2h_match_op,
  output [31:0]  io_out_extern_config_c2h_match_arg1,
  output [31:0]  io_out_extern_config_c2h_match_arg2,
  output [31:0]  io_out_extern_config_c2h_match_arg3,
  output [127:0] io_out_extern_config_aes_key,
  output [3:0]   io_out_extern_config_round_time
);
`ifdef RANDOMIZE_REG_INIT
  reg [607:0] _RAND_0;
  reg [255:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  ip_chksum_cal_clock; // @[RxPipelineHandler.scala 41:29]
  wire [31:0] ip_chksum_cal_io_in_vec_0; // @[RxPipelineHandler.scala 41:29]
  wire [31:0] ip_chksum_cal_io_in_vec_1; // @[RxPipelineHandler.scala 41:29]
  wire [31:0] ip_chksum_cal_io_in_vec_2; // @[RxPipelineHandler.scala 41:29]
  wire [31:0] ip_chksum_cal_io_in_vec_3; // @[RxPipelineHandler.scala 41:29]
  wire [31:0] ip_chksum_cal_io_in_vec_4; // @[RxPipelineHandler.scala 41:29]
  wire [31:0] ip_chksum_cal_io_in_vec_5; // @[RxPipelineHandler.scala 41:29]
  wire [31:0] ip_chksum_cal_io_in_vec_6; // @[RxPipelineHandler.scala 41:29]
  wire [31:0] ip_chksum_cal_io_in_vec_7; // @[RxPipelineHandler.scala 41:29]
  wire [31:0] ip_chksum_cal_io_in_vec_8; // @[RxPipelineHandler.scala 41:29]
  wire [31:0] ip_chksum_cal_io_in_vec_9; // @[RxPipelineHandler.scala 41:29]
  wire [31:0] ip_chksum_cal_io_out_sum; // @[RxPipelineHandler.scala 41:29]
  wire  tcp_pld_chksum_cal_clock; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_0; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_1; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_2; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_3; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_4; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_5; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_6; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_7; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_8; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_9; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_10; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_11; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_12; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_13; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_14; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_15; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_16; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_17; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_18; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_19; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_20; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_21; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_22; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_23; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_24; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_25; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_26; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_27; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_28; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_29; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_30; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_31; // @[RxPipelineHandler.scala 48:34]
  wire [31:0] tcp_pld_chksum_cal_io_out_sum; // @[RxPipelineHandler.scala 48:34]
  wire  tcp_hdr_chksum_cal_clock; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_0; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_1; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_2; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_3; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_4; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_5; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_6; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_7; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_8; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_9; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_10; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_11; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_12; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_13; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_14; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_15; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_16; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_17; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_18; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_19; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_20; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_21; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_22; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_23; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_24; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_25; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_26; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_27; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_28; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_29; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_30; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_31; // @[RxPipelineHandler.scala 55:34]
  wire [31:0] tcp_hdr_chksum_cal_io_out_sum; // @[RxPipelineHandler.scala 55:34]
  wire  in_shake_hand = io_in_tready & io_in_tvalid; // @[RxPipelineHandler.scala 12:38]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[RxPipelineHandler.scala 13:38]
  wire [600:0] _in_reg_T_1 = {io_in_rx_info_tlen,6'h0,64'h0,io_in_tuser,io_in_tdata,io_in_tvalid,io_in_tlast}; // @[Cat.scala 31:58]
  reg [600:0] in_reg_r; // @[Reg.scala 28:20]
  wire  in_reg_tlast = in_reg_r[0]; // @[RxPipelineHandler.scala 14:128]
  wire  in_reg_tvalid = in_reg_r[1]; // @[RxPipelineHandler.scala 14:128]
  wire [511:0] in_reg_tdata = in_reg_r[513:2]; // @[RxPipelineHandler.scala 14:128]
  wire [235:0] _extern_config_reg_T = {io_in_extern_config_c2h_match_op,io_in_extern_config_c2h_match_arg1,
    io_in_extern_config_c2h_match_arg2,io_in_extern_config_c2h_match_arg3,io_in_extern_config_aes_key,
    io_in_extern_config_round_time}; // @[RxPipelineHandler.scala 15:57]
  reg [235:0] extern_config_reg_r; // @[Reg.scala 28:20]
  reg  first_beat_reg; // @[Reg.scala 28:20]
  wire  _GEN_2 = in_shake_hand ? in_reg_tlast : first_beat_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_reg_used_reg; // @[RxPipelineHandler.scala 18:32]
  wire  _GEN_3 = out_shake_hand ? 1'h0 : in_reg_used_reg; // @[RxPipelineHandler.scala 21:29 22:21 18:32]
  wire  _GEN_4 = in_shake_hand | _GEN_3; // @[RxPipelineHandler.scala 19:23 20:21]
  wire [511:0] cal_tdata = in_shake_hand ? io_in_tdata : in_reg_tdata; // @[RxPipelineHandler.scala 39:20]
  wire [15:0] _ip_chksum_cal_io_in_vec_0_T_3 = {cal_tdata[119:112],cal_tdata[127:120]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_1_T_3 = {cal_tdata[135:128],cal_tdata[143:136]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_2_T_3 = {cal_tdata[151:144],cal_tdata[159:152]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_3_T_3 = {cal_tdata[167:160],cal_tdata[175:168]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_4_T_3 = {cal_tdata[183:176],cal_tdata[191:184]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_5_T_3 = {cal_tdata[199:192],cal_tdata[207:200]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_6_T_3 = {cal_tdata[215:208],cal_tdata[223:216]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_7_T_3 = {cal_tdata[231:224],cal_tdata[239:232]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_8_T_3 = {cal_tdata[247:240],cal_tdata[255:248]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_9_T_3 = {cal_tdata[263:256],cal_tdata[271:264]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_0_T_3 = {cal_tdata[7:0],cal_tdata[15:8]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_1_T_3 = {cal_tdata[23:16],cal_tdata[31:24]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_2_T_3 = {cal_tdata[39:32],cal_tdata[47:40]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_3_T_3 = {cal_tdata[55:48],cal_tdata[63:56]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_4_T_3 = {cal_tdata[71:64],cal_tdata[79:72]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_5_T_3 = {cal_tdata[87:80],cal_tdata[95:88]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_6_T_3 = {cal_tdata[103:96],cal_tdata[111:104]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_17_T_3 = {cal_tdata[279:272],cal_tdata[287:280]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_18_T_3 = {cal_tdata[295:288],cal_tdata[303:296]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_19_T_3 = {cal_tdata[311:304],cal_tdata[319:312]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_20_T_3 = {cal_tdata[327:320],cal_tdata[335:328]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_21_T_3 = {cal_tdata[343:336],cal_tdata[351:344]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_22_T_3 = {cal_tdata[359:352],cal_tdata[367:360]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_23_T_3 = {cal_tdata[375:368],cal_tdata[383:376]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_24_T_3 = {cal_tdata[391:384],cal_tdata[399:392]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_25_T_3 = {cal_tdata[407:400],cal_tdata[415:408]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_26_T_3 = {cal_tdata[423:416],cal_tdata[431:424]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_27_T_3 = {cal_tdata[439:432],cal_tdata[447:440]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_28_T_3 = {cal_tdata[455:448],cal_tdata[463:456]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_29_T_3 = {cal_tdata[471:464],cal_tdata[479:472]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_30_T_3 = {cal_tdata[487:480],cal_tdata[495:488]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_31_T_3 = {cal_tdata[503:496],cal_tdata[511:504]}; // @[Cat.scala 31:58]
  wire [31:0] tcp_hdr_chksum_result = tcp_hdr_chksum_cal_io_out_sum - 32'h14; // @[RxPipelineHandler.scala 61:61]
  reg [31:0] cal_ip_chksum_reg; // @[RxPipelineHandler.scala 63:34]
  reg [31:0] cal_tcp_chksum_reg; // @[RxPipelineHandler.scala 64:35]
  wire [31:0] _cal_tcp_chksum_reg_T_1 = cal_tcp_chksum_reg + tcp_pld_chksum_cal_io_out_sum; // @[RxPipelineHandler.scala 71:48]
  ReduceAddSync ip_chksum_cal ( // @[RxPipelineHandler.scala 41:29]
    .clock(ip_chksum_cal_clock),
    .io_in_vec_0(ip_chksum_cal_io_in_vec_0),
    .io_in_vec_1(ip_chksum_cal_io_in_vec_1),
    .io_in_vec_2(ip_chksum_cal_io_in_vec_2),
    .io_in_vec_3(ip_chksum_cal_io_in_vec_3),
    .io_in_vec_4(ip_chksum_cal_io_in_vec_4),
    .io_in_vec_5(ip_chksum_cal_io_in_vec_5),
    .io_in_vec_6(ip_chksum_cal_io_in_vec_6),
    .io_in_vec_7(ip_chksum_cal_io_in_vec_7),
    .io_in_vec_8(ip_chksum_cal_io_in_vec_8),
    .io_in_vec_9(ip_chksum_cal_io_in_vec_9),
    .io_out_sum(ip_chksum_cal_io_out_sum)
  );
  ReduceAddSync_1 tcp_pld_chksum_cal ( // @[RxPipelineHandler.scala 48:34]
    .clock(tcp_pld_chksum_cal_clock),
    .io_in_vec_0(tcp_pld_chksum_cal_io_in_vec_0),
    .io_in_vec_1(tcp_pld_chksum_cal_io_in_vec_1),
    .io_in_vec_2(tcp_pld_chksum_cal_io_in_vec_2),
    .io_in_vec_3(tcp_pld_chksum_cal_io_in_vec_3),
    .io_in_vec_4(tcp_pld_chksum_cal_io_in_vec_4),
    .io_in_vec_5(tcp_pld_chksum_cal_io_in_vec_5),
    .io_in_vec_6(tcp_pld_chksum_cal_io_in_vec_6),
    .io_in_vec_7(tcp_pld_chksum_cal_io_in_vec_7),
    .io_in_vec_8(tcp_pld_chksum_cal_io_in_vec_8),
    .io_in_vec_9(tcp_pld_chksum_cal_io_in_vec_9),
    .io_in_vec_10(tcp_pld_chksum_cal_io_in_vec_10),
    .io_in_vec_11(tcp_pld_chksum_cal_io_in_vec_11),
    .io_in_vec_12(tcp_pld_chksum_cal_io_in_vec_12),
    .io_in_vec_13(tcp_pld_chksum_cal_io_in_vec_13),
    .io_in_vec_14(tcp_pld_chksum_cal_io_in_vec_14),
    .io_in_vec_15(tcp_pld_chksum_cal_io_in_vec_15),
    .io_in_vec_16(tcp_pld_chksum_cal_io_in_vec_16),
    .io_in_vec_17(tcp_pld_chksum_cal_io_in_vec_17),
    .io_in_vec_18(tcp_pld_chksum_cal_io_in_vec_18),
    .io_in_vec_19(tcp_pld_chksum_cal_io_in_vec_19),
    .io_in_vec_20(tcp_pld_chksum_cal_io_in_vec_20),
    .io_in_vec_21(tcp_pld_chksum_cal_io_in_vec_21),
    .io_in_vec_22(tcp_pld_chksum_cal_io_in_vec_22),
    .io_in_vec_23(tcp_pld_chksum_cal_io_in_vec_23),
    .io_in_vec_24(tcp_pld_chksum_cal_io_in_vec_24),
    .io_in_vec_25(tcp_pld_chksum_cal_io_in_vec_25),
    .io_in_vec_26(tcp_pld_chksum_cal_io_in_vec_26),
    .io_in_vec_27(tcp_pld_chksum_cal_io_in_vec_27),
    .io_in_vec_28(tcp_pld_chksum_cal_io_in_vec_28),
    .io_in_vec_29(tcp_pld_chksum_cal_io_in_vec_29),
    .io_in_vec_30(tcp_pld_chksum_cal_io_in_vec_30),
    .io_in_vec_31(tcp_pld_chksum_cal_io_in_vec_31),
    .io_out_sum(tcp_pld_chksum_cal_io_out_sum)
  );
  ReduceAddSync_1 tcp_hdr_chksum_cal ( // @[RxPipelineHandler.scala 55:34]
    .clock(tcp_hdr_chksum_cal_clock),
    .io_in_vec_0(tcp_hdr_chksum_cal_io_in_vec_0),
    .io_in_vec_1(tcp_hdr_chksum_cal_io_in_vec_1),
    .io_in_vec_2(tcp_hdr_chksum_cal_io_in_vec_2),
    .io_in_vec_3(tcp_hdr_chksum_cal_io_in_vec_3),
    .io_in_vec_4(tcp_hdr_chksum_cal_io_in_vec_4),
    .io_in_vec_5(tcp_hdr_chksum_cal_io_in_vec_5),
    .io_in_vec_6(tcp_hdr_chksum_cal_io_in_vec_6),
    .io_in_vec_7(tcp_hdr_chksum_cal_io_in_vec_7),
    .io_in_vec_8(tcp_hdr_chksum_cal_io_in_vec_8),
    .io_in_vec_9(tcp_hdr_chksum_cal_io_in_vec_9),
    .io_in_vec_10(tcp_hdr_chksum_cal_io_in_vec_10),
    .io_in_vec_11(tcp_hdr_chksum_cal_io_in_vec_11),
    .io_in_vec_12(tcp_hdr_chksum_cal_io_in_vec_12),
    .io_in_vec_13(tcp_hdr_chksum_cal_io_in_vec_13),
    .io_in_vec_14(tcp_hdr_chksum_cal_io_in_vec_14),
    .io_in_vec_15(tcp_hdr_chksum_cal_io_in_vec_15),
    .io_in_vec_16(tcp_hdr_chksum_cal_io_in_vec_16),
    .io_in_vec_17(tcp_hdr_chksum_cal_io_in_vec_17),
    .io_in_vec_18(tcp_hdr_chksum_cal_io_in_vec_18),
    .io_in_vec_19(tcp_hdr_chksum_cal_io_in_vec_19),
    .io_in_vec_20(tcp_hdr_chksum_cal_io_in_vec_20),
    .io_in_vec_21(tcp_hdr_chksum_cal_io_in_vec_21),
    .io_in_vec_22(tcp_hdr_chksum_cal_io_in_vec_22),
    .io_in_vec_23(tcp_hdr_chksum_cal_io_in_vec_23),
    .io_in_vec_24(tcp_hdr_chksum_cal_io_in_vec_24),
    .io_in_vec_25(tcp_hdr_chksum_cal_io_in_vec_25),
    .io_in_vec_26(tcp_hdr_chksum_cal_io_in_vec_26),
    .io_in_vec_27(tcp_hdr_chksum_cal_io_in_vec_27),
    .io_in_vec_28(tcp_hdr_chksum_cal_io_in_vec_28),
    .io_in_vec_29(tcp_hdr_chksum_cal_io_in_vec_29),
    .io_in_vec_30(tcp_hdr_chksum_cal_io_in_vec_30),
    .io_in_vec_31(tcp_hdr_chksum_cal_io_in_vec_31),
    .io_out_sum(tcp_hdr_chksum_cal_io_out_sum)
  );
  assign io_in_tready = io_out_tready | ~in_reg_used_reg; // @[RxPipelineHandler.scala 30:47]
  assign io_out_tdata = in_reg_r[513:2]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_tvalid = in_reg_tvalid & in_reg_used_reg; // @[RxPipelineHandler.scala 27:47]
  assign io_out_tlast = in_reg_r[0]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_tuser = in_reg_r[514]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_tlen = in_reg_r[600:585]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_qid = in_reg_r[584:579]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_ip_chksum = first_beat_reg ? ip_chksum_cal_io_out_sum : cal_ip_chksum_reg; // @[RxPipelineHandler.scala 74:34]
  assign io_out_rx_info_tcp_chksum = first_beat_reg ? tcp_hdr_chksum_result : _cal_tcp_chksum_reg_T_1; // @[RxPipelineHandler.scala 75:35]
  assign io_out_extern_config_c2h_match_op = extern_config_reg_r[235:228]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg1 = extern_config_reg_r[227:196]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg2 = extern_config_reg_r[195:164]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg3 = extern_config_reg_r[163:132]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_aes_key = extern_config_reg_r[131:4]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_round_time = extern_config_reg_r[3:0]; // @[RxPipelineHandler.scala 15:91]
  assign ip_chksum_cal_clock = clock;
  assign ip_chksum_cal_io_in_vec_0 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_3}; // @[RxPipelineHandler.scala 43:32]
  assign ip_chksum_cal_io_in_vec_1 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[RxPipelineHandler.scala 43:32]
  assign ip_chksum_cal_io_in_vec_2 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_3}; // @[RxPipelineHandler.scala 43:32]
  assign ip_chksum_cal_io_in_vec_3 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_3}; // @[RxPipelineHandler.scala 43:32]
  assign ip_chksum_cal_io_in_vec_4 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_3}; // @[RxPipelineHandler.scala 43:32]
  assign ip_chksum_cal_io_in_vec_5 = {{16'd0}, _ip_chksum_cal_io_in_vec_5_T_3}; // @[RxPipelineHandler.scala 43:32]
  assign ip_chksum_cal_io_in_vec_6 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[RxPipelineHandler.scala 43:32]
  assign ip_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[RxPipelineHandler.scala 43:32]
  assign ip_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[RxPipelineHandler.scala 43:32]
  assign ip_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[RxPipelineHandler.scala 43:32]
  assign tcp_pld_chksum_cal_clock = clock;
  assign tcp_pld_chksum_cal_io_in_vec_0 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_0_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_1 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_1_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_2 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_2_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_3 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_3_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_4 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_4_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_5 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_5_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_6 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_6_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_10 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_11 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_12 = {{16'd0}, _ip_chksum_cal_io_in_vec_5_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_25 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_25_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_pld_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_3}; // @[RxPipelineHandler.scala 50:37]
  assign tcp_hdr_chksum_cal_clock = clock;
  assign tcp_hdr_chksum_cal_io_in_vec_0 = 32'h0; // @[RxPipelineHandler.scala 59:42]
  assign tcp_hdr_chksum_cal_io_in_vec_1 = 32'h0; // @[RxPipelineHandler.scala 59:42]
  assign tcp_hdr_chksum_cal_io_in_vec_2 = 32'h0; // @[RxPipelineHandler.scala 59:42]
  assign tcp_hdr_chksum_cal_io_in_vec_3 = 32'h0; // @[RxPipelineHandler.scala 59:42]
  assign tcp_hdr_chksum_cal_io_in_vec_4 = 32'h0; // @[RxPipelineHandler.scala 59:42]
  assign tcp_hdr_chksum_cal_io_in_vec_5 = 32'h0; // @[RxPipelineHandler.scala 59:42]
  assign tcp_hdr_chksum_cal_io_in_vec_6 = 32'h0; // @[RxPipelineHandler.scala 59:42]
  assign tcp_hdr_chksum_cal_io_in_vec_7 = 32'h0; // @[RxPipelineHandler.scala 59:42]
  assign tcp_hdr_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_9 = 32'h0; // @[RxPipelineHandler.scala 59:42]
  assign tcp_hdr_chksum_cal_io_in_vec_10 = 32'h0; // @[RxPipelineHandler.scala 59:42]
  assign tcp_hdr_chksum_cal_io_in_vec_11 = {{24'd0}, cal_tdata[191:184]}; // @[RxPipelineHandler.scala 58:53]
  assign tcp_hdr_chksum_cal_io_in_vec_12 = 32'h0; // @[RxPipelineHandler.scala 59:42]
  assign tcp_hdr_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_25 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_25_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_3}; // @[RxPipelineHandler.scala 57:56]
  assign tcp_hdr_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_3}; // @[RxPipelineHandler.scala 57:56]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      in_reg_r <= 601'h1; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_reg_r <= _in_reg_T_1; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      extern_config_reg_r <= 236'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      extern_config_reg_r <= _extern_config_reg_T; // @[Reg.scala 29:22]
    end
    first_beat_reg <= reset | _GEN_2; // @[Reg.scala 28:{20,20}]
    if (reset) begin // @[RxPipelineHandler.scala 18:32]
      in_reg_used_reg <= 1'h0; // @[RxPipelineHandler.scala 18:32]
    end else begin
      in_reg_used_reg <= _GEN_4;
    end
    if (reset) begin // @[RxPipelineHandler.scala 63:34]
      cal_ip_chksum_reg <= 32'h0; // @[RxPipelineHandler.scala 63:34]
    end else if (in_shake_hand) begin // @[RxPipelineHandler.scala 66:24]
      if (first_beat_reg) begin // @[RxPipelineHandler.scala 67:27]
        cal_ip_chksum_reg <= ip_chksum_cal_io_out_sum; // @[RxPipelineHandler.scala 68:25]
      end
    end
    if (reset) begin // @[RxPipelineHandler.scala 64:35]
      cal_tcp_chksum_reg <= 32'h0; // @[RxPipelineHandler.scala 64:35]
    end else if (in_shake_hand) begin // @[RxPipelineHandler.scala 66:24]
      if (first_beat_reg) begin // @[RxPipelineHandler.scala 67:27]
        cal_tcp_chksum_reg <= tcp_hdr_chksum_result; // @[RxPipelineHandler.scala 69:26]
      end else begin
        cal_tcp_chksum_reg <= _cal_tcp_chksum_reg_T_1; // @[RxPipelineHandler.scala 71:26]
      end
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
  in_reg_r = _RAND_0[600:0];
  _RAND_1 = {8{`RANDOM}};
  extern_config_reg_r = _RAND_1[235:0];
  _RAND_2 = {1{`RANDOM}};
  first_beat_reg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  in_reg_used_reg = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  cal_ip_chksum_reg = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  cal_tcp_chksum_reg = _RAND_5[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ReduceXorSync(
  input         clock,
  input  [31:0] io_in_vec_0,
  input  [31:0] io_in_vec_1,
  input  [31:0] io_in_vec_2,
  input  [31:0] io_in_vec_3,
  input  [31:0] io_in_vec_4,
  input  [31:0] io_in_vec_5,
  input  [31:0] io_in_vec_6,
  input  [31:0] io_in_vec_7,
  input  [31:0] io_in_vec_8,
  input  [31:0] io_in_vec_9,
  input  [31:0] io_in_vec_10,
  input  [31:0] io_in_vec_11,
  input  [31:0] io_in_vec_12,
  input  [31:0] io_in_vec_13,
  input  [31:0] io_in_vec_14,
  input  [31:0] io_in_vec_15,
  input  [31:0] io_in_vec_16,
  input  [31:0] io_in_vec_17,
  input  [31:0] io_in_vec_18,
  input  [31:0] io_in_vec_19,
  input  [31:0] io_in_vec_20,
  input  [31:0] io_in_vec_21,
  input  [31:0] io_in_vec_22,
  input  [31:0] io_in_vec_23,
  input  [31:0] io_in_vec_24,
  input  [31:0] io_in_vec_25,
  input  [31:0] io_in_vec_26,
  input  [31:0] io_in_vec_27,
  input  [31:0] io_in_vec_28,
  input  [31:0] io_in_vec_29,
  input  [31:0] io_in_vec_30,
  input  [31:0] io_in_vec_31,
  input  [31:0] io_in_vec_32,
  input  [31:0] io_in_vec_33,
  input  [31:0] io_in_vec_34,
  input  [31:0] io_in_vec_35,
  input  [31:0] io_in_vec_36,
  input  [31:0] io_in_vec_37,
  input  [31:0] io_in_vec_38,
  input  [31:0] io_in_vec_39,
  input  [31:0] io_in_vec_40,
  input  [31:0] io_in_vec_41,
  input  [31:0] io_in_vec_42,
  input  [31:0] io_in_vec_43,
  input  [31:0] io_in_vec_44,
  input  [31:0] io_in_vec_45,
  input  [31:0] io_in_vec_46,
  input  [31:0] io_in_vec_47,
  input  [31:0] io_in_vec_48,
  input  [31:0] io_in_vec_49,
  input  [31:0] io_in_vec_50,
  input  [31:0] io_in_vec_51,
  input  [31:0] io_in_vec_52,
  input  [31:0] io_in_vec_53,
  input  [31:0] io_in_vec_54,
  input  [31:0] io_in_vec_55,
  input  [31:0] io_in_vec_56,
  input  [31:0] io_in_vec_57,
  input  [31:0] io_in_vec_58,
  input  [31:0] io_in_vec_59,
  input  [31:0] io_in_vec_60,
  input  [31:0] io_in_vec_61,
  input  [31:0] io_in_vec_62,
  input  [31:0] io_in_vec_63,
  input  [31:0] io_in_vec_64,
  input  [31:0] io_in_vec_65,
  input  [31:0] io_in_vec_66,
  input  [31:0] io_in_vec_67,
  input  [31:0] io_in_vec_68,
  input  [31:0] io_in_vec_69,
  input  [31:0] io_in_vec_70,
  input  [31:0] io_in_vec_71,
  input  [31:0] io_in_vec_72,
  input  [31:0] io_in_vec_73,
  input  [31:0] io_in_vec_74,
  input  [31:0] io_in_vec_75,
  input  [31:0] io_in_vec_76,
  input  [31:0] io_in_vec_77,
  input  [31:0] io_in_vec_78,
  input  [31:0] io_in_vec_79,
  input  [31:0] io_in_vec_80,
  input  [31:0] io_in_vec_81,
  input  [31:0] io_in_vec_82,
  input  [31:0] io_in_vec_83,
  input  [31:0] io_in_vec_84,
  input  [31:0] io_in_vec_85,
  input  [31:0] io_in_vec_86,
  input  [31:0] io_in_vec_87,
  input  [31:0] io_in_vec_88,
  input  [31:0] io_in_vec_89,
  input  [31:0] io_in_vec_90,
  input  [31:0] io_in_vec_91,
  input  [31:0] io_in_vec_92,
  input  [31:0] io_in_vec_93,
  input  [31:0] io_in_vec_94,
  input  [31:0] io_in_vec_95,
  output [31:0] io_out_sum
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] cal_reg_0; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_1; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_2; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_3; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_4; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_5; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_6; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_7; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_8; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_9; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_10; // @[Misc.scala 173:20]
  reg [31:0] cal_reg_11; // @[Misc.scala 173:20]
  wire [31:0] _cal_reg_0_T = io_in_vec_0 ^ io_in_vec_1; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_0_T_1 = io_in_vec_2 ^ io_in_vec_3; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_0_T_2 = io_in_vec_4 ^ io_in_vec_5; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_0_T_3 = io_in_vec_6 ^ io_in_vec_7; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_0_T_4 = _cal_reg_0_T ^ _cal_reg_0_T_1; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_0_T_5 = _cal_reg_0_T_2 ^ _cal_reg_0_T_3; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_1_T = io_in_vec_8 ^ io_in_vec_9; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_1_T_1 = io_in_vec_10 ^ io_in_vec_11; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_1_T_2 = io_in_vec_12 ^ io_in_vec_13; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_1_T_3 = io_in_vec_14 ^ io_in_vec_15; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_1_T_4 = _cal_reg_1_T ^ _cal_reg_1_T_1; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_1_T_5 = _cal_reg_1_T_2 ^ _cal_reg_1_T_3; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_2_T = io_in_vec_16 ^ io_in_vec_17; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_2_T_1 = io_in_vec_18 ^ io_in_vec_19; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_2_T_2 = io_in_vec_20 ^ io_in_vec_21; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_2_T_3 = io_in_vec_22 ^ io_in_vec_23; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_2_T_4 = _cal_reg_2_T ^ _cal_reg_2_T_1; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_2_T_5 = _cal_reg_2_T_2 ^ _cal_reg_2_T_3; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_3_T = io_in_vec_24 ^ io_in_vec_25; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_3_T_1 = io_in_vec_26 ^ io_in_vec_27; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_3_T_2 = io_in_vec_28 ^ io_in_vec_29; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_3_T_3 = io_in_vec_30 ^ io_in_vec_31; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_3_T_4 = _cal_reg_3_T ^ _cal_reg_3_T_1; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_3_T_5 = _cal_reg_3_T_2 ^ _cal_reg_3_T_3; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_4_T = io_in_vec_32 ^ io_in_vec_33; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_4_T_1 = io_in_vec_34 ^ io_in_vec_35; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_4_T_2 = io_in_vec_36 ^ io_in_vec_37; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_4_T_3 = io_in_vec_38 ^ io_in_vec_39; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_4_T_4 = _cal_reg_4_T ^ _cal_reg_4_T_1; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_4_T_5 = _cal_reg_4_T_2 ^ _cal_reg_4_T_3; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_5_T = io_in_vec_40 ^ io_in_vec_41; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_5_T_1 = io_in_vec_42 ^ io_in_vec_43; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_5_T_2 = io_in_vec_44 ^ io_in_vec_45; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_5_T_3 = io_in_vec_46 ^ io_in_vec_47; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_5_T_4 = _cal_reg_5_T ^ _cal_reg_5_T_1; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_5_T_5 = _cal_reg_5_T_2 ^ _cal_reg_5_T_3; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_6_T = io_in_vec_48 ^ io_in_vec_49; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_6_T_1 = io_in_vec_50 ^ io_in_vec_51; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_6_T_2 = io_in_vec_52 ^ io_in_vec_53; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_6_T_3 = io_in_vec_54 ^ io_in_vec_55; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_6_T_4 = _cal_reg_6_T ^ _cal_reg_6_T_1; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_6_T_5 = _cal_reg_6_T_2 ^ _cal_reg_6_T_3; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_7_T = io_in_vec_56 ^ io_in_vec_57; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_7_T_1 = io_in_vec_58 ^ io_in_vec_59; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_7_T_2 = io_in_vec_60 ^ io_in_vec_61; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_7_T_3 = io_in_vec_62 ^ io_in_vec_63; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_7_T_4 = _cal_reg_7_T ^ _cal_reg_7_T_1; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_7_T_5 = _cal_reg_7_T_2 ^ _cal_reg_7_T_3; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_8_T = io_in_vec_64 ^ io_in_vec_65; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_8_T_1 = io_in_vec_66 ^ io_in_vec_67; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_8_T_2 = io_in_vec_68 ^ io_in_vec_69; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_8_T_3 = io_in_vec_70 ^ io_in_vec_71; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_8_T_4 = _cal_reg_8_T ^ _cal_reg_8_T_1; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_8_T_5 = _cal_reg_8_T_2 ^ _cal_reg_8_T_3; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_9_T = io_in_vec_72 ^ io_in_vec_73; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_9_T_1 = io_in_vec_74 ^ io_in_vec_75; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_9_T_2 = io_in_vec_76 ^ io_in_vec_77; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_9_T_3 = io_in_vec_78 ^ io_in_vec_79; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_9_T_4 = _cal_reg_9_T ^ _cal_reg_9_T_1; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_9_T_5 = _cal_reg_9_T_2 ^ _cal_reg_9_T_3; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_10_T = io_in_vec_80 ^ io_in_vec_81; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_10_T_1 = io_in_vec_82 ^ io_in_vec_83; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_10_T_2 = io_in_vec_84 ^ io_in_vec_85; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_10_T_3 = io_in_vec_86 ^ io_in_vec_87; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_10_T_4 = _cal_reg_10_T ^ _cal_reg_10_T_1; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_10_T_5 = _cal_reg_10_T_2 ^ _cal_reg_10_T_3; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_11_T = io_in_vec_88 ^ io_in_vec_89; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_11_T_1 = io_in_vec_90 ^ io_in_vec_91; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_11_T_2 = io_in_vec_92 ^ io_in_vec_93; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_11_T_3 = io_in_vec_94 ^ io_in_vec_95; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_11_T_4 = _cal_reg_11_T ^ _cal_reg_11_T_1; // @[Misc.scala 202:42]
  wire [31:0] _cal_reg_11_T_5 = _cal_reg_11_T_2 ^ _cal_reg_11_T_3; // @[Misc.scala 202:42]
  wire [31:0] _io_out_sum_T = cal_reg_0 ^ cal_reg_1; // @[Misc.scala 204:37]
  wire [31:0] _io_out_sum_T_1 = cal_reg_2 ^ cal_reg_3; // @[Misc.scala 204:37]
  wire [31:0] _io_out_sum_T_2 = cal_reg_4 ^ cal_reg_5; // @[Misc.scala 204:37]
  wire [31:0] _io_out_sum_T_3 = cal_reg_6 ^ cal_reg_7; // @[Misc.scala 204:37]
  wire [31:0] _io_out_sum_T_4 = cal_reg_8 ^ cal_reg_9; // @[Misc.scala 204:37]
  wire [31:0] _io_out_sum_T_5 = cal_reg_10 ^ cal_reg_11; // @[Misc.scala 204:37]
  wire [31:0] _io_out_sum_T_8 = _io_out_sum_T ^ _io_out_sum_T_1; // @[Misc.scala 204:37]
  wire [31:0] _io_out_sum_T_9 = _io_out_sum_T_2 ^ _io_out_sum_T_3; // @[Misc.scala 204:37]
  wire [31:0] _io_out_sum_T_10 = _io_out_sum_T_4 ^ _io_out_sum_T_5; // @[Misc.scala 204:37]
  wire [31:0] _io_out_sum_T_12 = _io_out_sum_T_8 ^ _io_out_sum_T_9; // @[Misc.scala 204:37]
  assign io_out_sum = _io_out_sum_T_12 ^ _io_out_sum_T_10; // @[Misc.scala 204:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_4 ^ _cal_reg_0_T_5; // @[Misc.scala 202:42]
    cal_reg_1 <= _cal_reg_1_T_4 ^ _cal_reg_1_T_5; // @[Misc.scala 202:42]
    cal_reg_2 <= _cal_reg_2_T_4 ^ _cal_reg_2_T_5; // @[Misc.scala 202:42]
    cal_reg_3 <= _cal_reg_3_T_4 ^ _cal_reg_3_T_5; // @[Misc.scala 202:42]
    cal_reg_4 <= _cal_reg_4_T_4 ^ _cal_reg_4_T_5; // @[Misc.scala 202:42]
    cal_reg_5 <= _cal_reg_5_T_4 ^ _cal_reg_5_T_5; // @[Misc.scala 202:42]
    cal_reg_6 <= _cal_reg_6_T_4 ^ _cal_reg_6_T_5; // @[Misc.scala 202:42]
    cal_reg_7 <= _cal_reg_7_T_4 ^ _cal_reg_7_T_5; // @[Misc.scala 202:42]
    cal_reg_8 <= _cal_reg_8_T_4 ^ _cal_reg_8_T_5; // @[Misc.scala 202:42]
    cal_reg_9 <= _cal_reg_9_T_4 ^ _cal_reg_9_T_5; // @[Misc.scala 202:42]
    cal_reg_10 <= _cal_reg_10_T_4 ^ _cal_reg_10_T_5; // @[Misc.scala 202:42]
    cal_reg_11 <= _cal_reg_11_T_4 ^ _cal_reg_11_T_5; // @[Misc.scala 202:42]
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
  cal_reg_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  cal_reg_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  cal_reg_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  cal_reg_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  cal_reg_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  cal_reg_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  cal_reg_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  cal_reg_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  cal_reg_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  cal_reg_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  cal_reg_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  cal_reg_11 = _RAND_11[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RxRSSHashFilter(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input          io_in_tuser,
  input  [15:0]  io_in_rx_info_tlen,
  input  [5:0]   io_in_rx_info_qid,
  input  [31:0]  io_in_rx_info_ip_chksum,
  input  [31:0]  io_in_rx_info_tcp_chksum,
  input  [7:0]   io_in_extern_config_c2h_match_op,
  input  [31:0]  io_in_extern_config_c2h_match_arg1,
  input  [31:0]  io_in_extern_config_c2h_match_arg2,
  input  [31:0]  io_in_extern_config_c2h_match_arg3,
  input  [127:0] io_in_extern_config_aes_key,
  input  [3:0]   io_in_extern_config_round_time,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output         io_out_tuser,
  output [15:0]  io_out_rx_info_tlen,
  output [5:0]   io_out_rx_info_qid,
  output [31:0]  io_out_rx_info_ip_chksum,
  output [31:0]  io_out_rx_info_tcp_chksum,
  output [7:0]   io_out_extern_config_c2h_match_op,
  output [31:0]  io_out_extern_config_c2h_match_arg1,
  output [31:0]  io_out_extern_config_c2h_match_arg2,
  output [31:0]  io_out_extern_config_c2h_match_arg3,
  output [127:0] io_out_extern_config_aes_key,
  output [3:0]   io_out_extern_config_round_time
);
`ifdef RANDOMIZE_REG_INIT
  reg [607:0] _RAND_0;
  reg [255:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  hash_xor_sync_clock; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_0; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_1; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_2; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_3; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_4; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_5; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_6; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_7; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_8; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_9; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_10; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_11; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_12; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_13; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_14; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_15; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_16; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_17; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_18; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_19; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_20; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_21; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_22; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_23; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_24; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_25; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_26; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_27; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_28; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_29; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_30; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_31; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_32; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_33; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_34; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_35; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_36; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_37; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_38; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_39; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_40; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_41; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_42; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_43; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_44; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_45; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_46; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_47; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_48; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_49; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_50; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_51; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_52; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_53; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_54; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_55; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_56; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_57; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_58; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_59; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_60; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_61; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_62; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_63; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_64; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_65; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_66; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_67; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_68; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_69; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_70; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_71; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_72; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_73; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_74; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_75; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_76; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_77; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_78; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_79; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_80; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_81; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_82; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_83; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_84; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_85; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_86; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_87; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_88; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_89; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_90; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_91; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_92; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_93; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_94; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_in_vec_95; // @[RxPipelineHandler.scala 99:29]
  wire [31:0] hash_xor_sync_io_out_sum; // @[RxPipelineHandler.scala 99:29]
  wire  in_shake_hand = io_in_tready & io_in_tvalid; // @[RxPipelineHandler.scala 12:38]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[RxPipelineHandler.scala 13:38]
  wire [600:0] _in_reg_T_1 = {io_in_rx_info_tlen,io_in_rx_info_qid,io_in_rx_info_ip_chksum,io_in_rx_info_tcp_chksum,
    io_in_tuser,io_in_tdata,io_in_tvalid,io_in_tlast}; // @[Cat.scala 31:58]
  reg [600:0] in_reg_r; // @[Reg.scala 28:20]
  wire  in_reg_tlast = in_reg_r[0]; // @[RxPipelineHandler.scala 14:128]
  wire  in_reg_tvalid = in_reg_r[1]; // @[RxPipelineHandler.scala 14:128]
  wire [511:0] in_reg_tdata = in_reg_r[513:2]; // @[RxPipelineHandler.scala 14:128]
  wire [5:0] in_reg_rx_info_qid = in_reg_r[584:579]; // @[RxPipelineHandler.scala 14:128]
  wire [235:0] _extern_config_reg_T = {io_in_extern_config_c2h_match_op,io_in_extern_config_c2h_match_arg1,
    io_in_extern_config_c2h_match_arg2,io_in_extern_config_c2h_match_arg3,io_in_extern_config_aes_key,
    io_in_extern_config_round_time}; // @[RxPipelineHandler.scala 15:57]
  reg [235:0] extern_config_reg_r; // @[Reg.scala 28:20]
  reg  first_beat_reg; // @[Reg.scala 28:20]
  wire  _GEN_2 = in_shake_hand ? in_reg_tlast : first_beat_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_reg_used_reg; // @[RxPipelineHandler.scala 18:32]
  wire  _GEN_3 = out_shake_hand ? 1'h0 : in_reg_used_reg; // @[RxPipelineHandler.scala 21:29 22:21 18:32]
  wire  _GEN_4 = in_shake_hand | _GEN_3; // @[RxPipelineHandler.scala 19:23 20:21]
  wire [511:0] cal_tdata = in_shake_hand ? io_in_tdata : in_reg_tdata; // @[RxPipelineHandler.scala 85:22]
  wire [31:0] info_lo = {cal_tdata[279:272],cal_tdata[287:280],cal_tdata[295:288],cal_tdata[303:296]}; // @[Cat.scala 31:58]
  wire [95:0] info = {cal_tdata[215:208],cal_tdata[223:216],cal_tdata[231:224],cal_tdata[239:232],cal_tdata[247:240],
    cal_tdata[255:248],cal_tdata[263:256],cal_tdata[271:264],info_lo}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_0_T_3 = {io_in_extern_config_c2h_match_arg1[0],io_in_extern_config_c2h_match_arg1[31:1]}
    ; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_1_T_3 = {io_in_extern_config_c2h_match_arg1[1:0],io_in_extern_config_c2h_match_arg1[31:2
    ]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_2_T_3 = {io_in_extern_config_c2h_match_arg1[2:0],io_in_extern_config_c2h_match_arg1[31:3
    ]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_3_T_3 = {io_in_extern_config_c2h_match_arg1[3:0],io_in_extern_config_c2h_match_arg1[31:4
    ]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_4_T_3 = {io_in_extern_config_c2h_match_arg1[4:0],io_in_extern_config_c2h_match_arg1[31:5
    ]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_5_T_3 = {io_in_extern_config_c2h_match_arg1[5:0],io_in_extern_config_c2h_match_arg1[31:6
    ]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_6_T_3 = {io_in_extern_config_c2h_match_arg1[6:0],io_in_extern_config_c2h_match_arg1[31:7
    ]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_7_T_3 = {io_in_extern_config_c2h_match_arg1[7:0],io_in_extern_config_c2h_match_arg1[31:8
    ]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_8_T_3 = {io_in_extern_config_c2h_match_arg1[8:0],io_in_extern_config_c2h_match_arg1[31:9
    ]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_9_T_3 = {io_in_extern_config_c2h_match_arg1[9:0],io_in_extern_config_c2h_match_arg1[31:
    10]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_10_T_3 = {io_in_extern_config_c2h_match_arg1[10:0],io_in_extern_config_c2h_match_arg1[31
    :11]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_11_T_3 = {io_in_extern_config_c2h_match_arg1[11:0],io_in_extern_config_c2h_match_arg1[31
    :12]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_12_T_3 = {io_in_extern_config_c2h_match_arg1[12:0],io_in_extern_config_c2h_match_arg1[31
    :13]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_13_T_3 = {io_in_extern_config_c2h_match_arg1[13:0],io_in_extern_config_c2h_match_arg1[31
    :14]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_14_T_3 = {io_in_extern_config_c2h_match_arg1[14:0],io_in_extern_config_c2h_match_arg1[31
    :15]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_15_T_3 = {io_in_extern_config_c2h_match_arg1[15:0],io_in_extern_config_c2h_match_arg1[31
    :16]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_16_T_3 = {io_in_extern_config_c2h_match_arg1[16:0],io_in_extern_config_c2h_match_arg1[31
    :17]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_17_T_3 = {io_in_extern_config_c2h_match_arg1[17:0],io_in_extern_config_c2h_match_arg1[31
    :18]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_18_T_3 = {io_in_extern_config_c2h_match_arg1[18:0],io_in_extern_config_c2h_match_arg1[31
    :19]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_19_T_3 = {io_in_extern_config_c2h_match_arg1[19:0],io_in_extern_config_c2h_match_arg1[31
    :20]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_20_T_3 = {io_in_extern_config_c2h_match_arg1[20:0],io_in_extern_config_c2h_match_arg1[31
    :21]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_21_T_3 = {io_in_extern_config_c2h_match_arg1[21:0],io_in_extern_config_c2h_match_arg1[31
    :22]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_22_T_3 = {io_in_extern_config_c2h_match_arg1[22:0],io_in_extern_config_c2h_match_arg1[31
    :23]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_23_T_3 = {io_in_extern_config_c2h_match_arg1[23:0],io_in_extern_config_c2h_match_arg1[31
    :24]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_24_T_3 = {io_in_extern_config_c2h_match_arg1[24:0],io_in_extern_config_c2h_match_arg1[31
    :25]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_25_T_3 = {io_in_extern_config_c2h_match_arg1[25:0],io_in_extern_config_c2h_match_arg1[31
    :26]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_26_T_3 = {io_in_extern_config_c2h_match_arg1[26:0],io_in_extern_config_c2h_match_arg1[31
    :27]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_27_T_3 = {io_in_extern_config_c2h_match_arg1[27:0],io_in_extern_config_c2h_match_arg1[31
    :28]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_28_T_3 = {io_in_extern_config_c2h_match_arg1[28:0],io_in_extern_config_c2h_match_arg1[31
    :29]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_29_T_3 = {io_in_extern_config_c2h_match_arg1[29:0],io_in_extern_config_c2h_match_arg1[31
    :30]}; // @[Cat.scala 31:58]
  wire [31:0] _cal_hash_key_vec_30_T_3 = {io_in_extern_config_c2h_match_arg1[30:0],io_in_extern_config_c2h_match_arg1[31
    ]}; // @[Cat.scala 31:58]
  wire [31:0] hash_xor_result = hash_xor_sync_io_out_sum; // @[RxPipelineHandler.scala 100:29 104:19]
  wire [1:0] cal_qid = hash_xor_result[1:0] & io_in_extern_config_c2h_match_arg2[1:0]; // @[RxPipelineHandler.scala 107:40]
  wire  _cur_packet_qid_reg_T = in_shake_hand & first_beat_reg; // @[RxPipelineHandler.scala 108:66]
  reg [1:0] cur_packet_qid_reg; // @[Reg.scala 28:20]
  wire [1:0] _io_out_rx_info_qid_T = first_beat_reg ? cal_qid : cur_packet_qid_reg; // @[RxPipelineHandler.scala 110:30]
  ReduceXorSync hash_xor_sync ( // @[RxPipelineHandler.scala 99:29]
    .clock(hash_xor_sync_clock),
    .io_in_vec_0(hash_xor_sync_io_in_vec_0),
    .io_in_vec_1(hash_xor_sync_io_in_vec_1),
    .io_in_vec_2(hash_xor_sync_io_in_vec_2),
    .io_in_vec_3(hash_xor_sync_io_in_vec_3),
    .io_in_vec_4(hash_xor_sync_io_in_vec_4),
    .io_in_vec_5(hash_xor_sync_io_in_vec_5),
    .io_in_vec_6(hash_xor_sync_io_in_vec_6),
    .io_in_vec_7(hash_xor_sync_io_in_vec_7),
    .io_in_vec_8(hash_xor_sync_io_in_vec_8),
    .io_in_vec_9(hash_xor_sync_io_in_vec_9),
    .io_in_vec_10(hash_xor_sync_io_in_vec_10),
    .io_in_vec_11(hash_xor_sync_io_in_vec_11),
    .io_in_vec_12(hash_xor_sync_io_in_vec_12),
    .io_in_vec_13(hash_xor_sync_io_in_vec_13),
    .io_in_vec_14(hash_xor_sync_io_in_vec_14),
    .io_in_vec_15(hash_xor_sync_io_in_vec_15),
    .io_in_vec_16(hash_xor_sync_io_in_vec_16),
    .io_in_vec_17(hash_xor_sync_io_in_vec_17),
    .io_in_vec_18(hash_xor_sync_io_in_vec_18),
    .io_in_vec_19(hash_xor_sync_io_in_vec_19),
    .io_in_vec_20(hash_xor_sync_io_in_vec_20),
    .io_in_vec_21(hash_xor_sync_io_in_vec_21),
    .io_in_vec_22(hash_xor_sync_io_in_vec_22),
    .io_in_vec_23(hash_xor_sync_io_in_vec_23),
    .io_in_vec_24(hash_xor_sync_io_in_vec_24),
    .io_in_vec_25(hash_xor_sync_io_in_vec_25),
    .io_in_vec_26(hash_xor_sync_io_in_vec_26),
    .io_in_vec_27(hash_xor_sync_io_in_vec_27),
    .io_in_vec_28(hash_xor_sync_io_in_vec_28),
    .io_in_vec_29(hash_xor_sync_io_in_vec_29),
    .io_in_vec_30(hash_xor_sync_io_in_vec_30),
    .io_in_vec_31(hash_xor_sync_io_in_vec_31),
    .io_in_vec_32(hash_xor_sync_io_in_vec_32),
    .io_in_vec_33(hash_xor_sync_io_in_vec_33),
    .io_in_vec_34(hash_xor_sync_io_in_vec_34),
    .io_in_vec_35(hash_xor_sync_io_in_vec_35),
    .io_in_vec_36(hash_xor_sync_io_in_vec_36),
    .io_in_vec_37(hash_xor_sync_io_in_vec_37),
    .io_in_vec_38(hash_xor_sync_io_in_vec_38),
    .io_in_vec_39(hash_xor_sync_io_in_vec_39),
    .io_in_vec_40(hash_xor_sync_io_in_vec_40),
    .io_in_vec_41(hash_xor_sync_io_in_vec_41),
    .io_in_vec_42(hash_xor_sync_io_in_vec_42),
    .io_in_vec_43(hash_xor_sync_io_in_vec_43),
    .io_in_vec_44(hash_xor_sync_io_in_vec_44),
    .io_in_vec_45(hash_xor_sync_io_in_vec_45),
    .io_in_vec_46(hash_xor_sync_io_in_vec_46),
    .io_in_vec_47(hash_xor_sync_io_in_vec_47),
    .io_in_vec_48(hash_xor_sync_io_in_vec_48),
    .io_in_vec_49(hash_xor_sync_io_in_vec_49),
    .io_in_vec_50(hash_xor_sync_io_in_vec_50),
    .io_in_vec_51(hash_xor_sync_io_in_vec_51),
    .io_in_vec_52(hash_xor_sync_io_in_vec_52),
    .io_in_vec_53(hash_xor_sync_io_in_vec_53),
    .io_in_vec_54(hash_xor_sync_io_in_vec_54),
    .io_in_vec_55(hash_xor_sync_io_in_vec_55),
    .io_in_vec_56(hash_xor_sync_io_in_vec_56),
    .io_in_vec_57(hash_xor_sync_io_in_vec_57),
    .io_in_vec_58(hash_xor_sync_io_in_vec_58),
    .io_in_vec_59(hash_xor_sync_io_in_vec_59),
    .io_in_vec_60(hash_xor_sync_io_in_vec_60),
    .io_in_vec_61(hash_xor_sync_io_in_vec_61),
    .io_in_vec_62(hash_xor_sync_io_in_vec_62),
    .io_in_vec_63(hash_xor_sync_io_in_vec_63),
    .io_in_vec_64(hash_xor_sync_io_in_vec_64),
    .io_in_vec_65(hash_xor_sync_io_in_vec_65),
    .io_in_vec_66(hash_xor_sync_io_in_vec_66),
    .io_in_vec_67(hash_xor_sync_io_in_vec_67),
    .io_in_vec_68(hash_xor_sync_io_in_vec_68),
    .io_in_vec_69(hash_xor_sync_io_in_vec_69),
    .io_in_vec_70(hash_xor_sync_io_in_vec_70),
    .io_in_vec_71(hash_xor_sync_io_in_vec_71),
    .io_in_vec_72(hash_xor_sync_io_in_vec_72),
    .io_in_vec_73(hash_xor_sync_io_in_vec_73),
    .io_in_vec_74(hash_xor_sync_io_in_vec_74),
    .io_in_vec_75(hash_xor_sync_io_in_vec_75),
    .io_in_vec_76(hash_xor_sync_io_in_vec_76),
    .io_in_vec_77(hash_xor_sync_io_in_vec_77),
    .io_in_vec_78(hash_xor_sync_io_in_vec_78),
    .io_in_vec_79(hash_xor_sync_io_in_vec_79),
    .io_in_vec_80(hash_xor_sync_io_in_vec_80),
    .io_in_vec_81(hash_xor_sync_io_in_vec_81),
    .io_in_vec_82(hash_xor_sync_io_in_vec_82),
    .io_in_vec_83(hash_xor_sync_io_in_vec_83),
    .io_in_vec_84(hash_xor_sync_io_in_vec_84),
    .io_in_vec_85(hash_xor_sync_io_in_vec_85),
    .io_in_vec_86(hash_xor_sync_io_in_vec_86),
    .io_in_vec_87(hash_xor_sync_io_in_vec_87),
    .io_in_vec_88(hash_xor_sync_io_in_vec_88),
    .io_in_vec_89(hash_xor_sync_io_in_vec_89),
    .io_in_vec_90(hash_xor_sync_io_in_vec_90),
    .io_in_vec_91(hash_xor_sync_io_in_vec_91),
    .io_in_vec_92(hash_xor_sync_io_in_vec_92),
    .io_in_vec_93(hash_xor_sync_io_in_vec_93),
    .io_in_vec_94(hash_xor_sync_io_in_vec_94),
    .io_in_vec_95(hash_xor_sync_io_in_vec_95),
    .io_out_sum(hash_xor_sync_io_out_sum)
  );
  assign io_in_tready = io_out_tready | ~in_reg_used_reg; // @[RxPipelineHandler.scala 30:47]
  assign io_out_tdata = in_reg_r[513:2]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_tvalid = in_reg_tvalid & in_reg_used_reg; // @[RxPipelineHandler.scala 27:47]
  assign io_out_tlast = in_reg_r[0]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_tuser = in_reg_r[514]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_tlen = in_reg_r[600:585]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_qid = io_in_extern_config_c2h_match_op == 8'h1 ? {{4'd0}, _io_out_rx_info_qid_T} :
    in_reg_rx_info_qid; // @[RxPipelineHandler.scala 109:50 110:24 29:18]
  assign io_out_rx_info_ip_chksum = in_reg_r[578:547]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_tcp_chksum = in_reg_r[546:515]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_extern_config_c2h_match_op = extern_config_reg_r[235:228]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg1 = extern_config_reg_r[227:196]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg2 = extern_config_reg_r[195:164]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg3 = extern_config_reg_r[163:132]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_aes_key = extern_config_reg_r[131:4]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_round_time = extern_config_reg_r[3:0]; // @[RxPipelineHandler.scala 15:91]
  assign hash_xor_sync_clock = clock;
  assign hash_xor_sync_io_in_vec_0 = info[0] ? _cal_hash_key_vec_0_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_1 = info[1] ? _cal_hash_key_vec_1_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_2 = info[2] ? _cal_hash_key_vec_2_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_3 = info[3] ? _cal_hash_key_vec_3_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_4 = info[4] ? _cal_hash_key_vec_4_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_5 = info[5] ? _cal_hash_key_vec_5_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_6 = info[6] ? _cal_hash_key_vec_6_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_7 = info[7] ? _cal_hash_key_vec_7_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_8 = info[8] ? _cal_hash_key_vec_8_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_9 = info[9] ? _cal_hash_key_vec_9_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_10 = info[10] ? _cal_hash_key_vec_10_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_11 = info[11] ? _cal_hash_key_vec_11_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_12 = info[12] ? _cal_hash_key_vec_12_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_13 = info[13] ? _cal_hash_key_vec_13_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_14 = info[14] ? _cal_hash_key_vec_14_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_15 = info[15] ? _cal_hash_key_vec_15_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_16 = info[16] ? _cal_hash_key_vec_16_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_17 = info[17] ? _cal_hash_key_vec_17_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_18 = info[18] ? _cal_hash_key_vec_18_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_19 = info[19] ? _cal_hash_key_vec_19_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_20 = info[20] ? _cal_hash_key_vec_20_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_21 = info[21] ? _cal_hash_key_vec_21_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_22 = info[22] ? _cal_hash_key_vec_22_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_23 = info[23] ? _cal_hash_key_vec_23_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_24 = info[24] ? _cal_hash_key_vec_24_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_25 = info[25] ? _cal_hash_key_vec_25_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_26 = info[26] ? _cal_hash_key_vec_26_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_27 = info[27] ? _cal_hash_key_vec_27_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_28 = info[28] ? _cal_hash_key_vec_28_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_29 = info[29] ? _cal_hash_key_vec_29_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_30 = info[30] ? _cal_hash_key_vec_30_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_31 = info[31] ? io_in_extern_config_c2h_match_arg1 : 32'h0; // @[RxPipelineHandler.scala 94:45]
  assign hash_xor_sync_io_in_vec_32 = info[32] ? _cal_hash_key_vec_0_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_33 = info[33] ? _cal_hash_key_vec_1_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_34 = info[34] ? _cal_hash_key_vec_2_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_35 = info[35] ? _cal_hash_key_vec_3_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_36 = info[36] ? _cal_hash_key_vec_4_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_37 = info[37] ? _cal_hash_key_vec_5_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_38 = info[38] ? _cal_hash_key_vec_6_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_39 = info[39] ? _cal_hash_key_vec_7_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_40 = info[40] ? _cal_hash_key_vec_8_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_41 = info[41] ? _cal_hash_key_vec_9_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_42 = info[42] ? _cal_hash_key_vec_10_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_43 = info[43] ? _cal_hash_key_vec_11_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_44 = info[44] ? _cal_hash_key_vec_12_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_45 = info[45] ? _cal_hash_key_vec_13_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_46 = info[46] ? _cal_hash_key_vec_14_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_47 = info[47] ? _cal_hash_key_vec_15_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_48 = info[48] ? _cal_hash_key_vec_16_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_49 = info[49] ? _cal_hash_key_vec_17_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_50 = info[50] ? _cal_hash_key_vec_18_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_51 = info[51] ? _cal_hash_key_vec_19_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_52 = info[52] ? _cal_hash_key_vec_20_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_53 = info[53] ? _cal_hash_key_vec_21_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_54 = info[54] ? _cal_hash_key_vec_22_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_55 = info[55] ? _cal_hash_key_vec_23_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_56 = info[56] ? _cal_hash_key_vec_24_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_57 = info[57] ? _cal_hash_key_vec_25_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_58 = info[58] ? _cal_hash_key_vec_26_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_59 = info[59] ? _cal_hash_key_vec_27_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_60 = info[60] ? _cal_hash_key_vec_28_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_61 = info[61] ? _cal_hash_key_vec_29_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_62 = info[62] ? _cal_hash_key_vec_30_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_63 = info[63] ? io_in_extern_config_c2h_match_arg1 : 32'h0; // @[RxPipelineHandler.scala 94:45]
  assign hash_xor_sync_io_in_vec_64 = info[64] ? _cal_hash_key_vec_0_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_65 = info[65] ? _cal_hash_key_vec_1_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_66 = info[66] ? _cal_hash_key_vec_2_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_67 = info[67] ? _cal_hash_key_vec_3_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_68 = info[68] ? _cal_hash_key_vec_4_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_69 = info[69] ? _cal_hash_key_vec_5_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_70 = info[70] ? _cal_hash_key_vec_6_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_71 = info[71] ? _cal_hash_key_vec_7_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_72 = info[72] ? _cal_hash_key_vec_8_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_73 = info[73] ? _cal_hash_key_vec_9_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_74 = info[74] ? _cal_hash_key_vec_10_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_75 = info[75] ? _cal_hash_key_vec_11_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_76 = info[76] ? _cal_hash_key_vec_12_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_77 = info[77] ? _cal_hash_key_vec_13_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_78 = info[78] ? _cal_hash_key_vec_14_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_79 = info[79] ? _cal_hash_key_vec_15_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_80 = info[80] ? _cal_hash_key_vec_16_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_81 = info[81] ? _cal_hash_key_vec_17_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_82 = info[82] ? _cal_hash_key_vec_18_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_83 = info[83] ? _cal_hash_key_vec_19_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_84 = info[84] ? _cal_hash_key_vec_20_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_85 = info[85] ? _cal_hash_key_vec_21_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_86 = info[86] ? _cal_hash_key_vec_22_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_87 = info[87] ? _cal_hash_key_vec_23_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_88 = info[88] ? _cal_hash_key_vec_24_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_89 = info[89] ? _cal_hash_key_vec_25_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_90 = info[90] ? _cal_hash_key_vec_26_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_91 = info[91] ? _cal_hash_key_vec_27_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_92 = info[92] ? _cal_hash_key_vec_28_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_93 = info[93] ? _cal_hash_key_vec_29_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_94 = info[94] ? _cal_hash_key_vec_30_T_3 : 32'h0; // @[RxPipelineHandler.scala 95:36]
  assign hash_xor_sync_io_in_vec_95 = info[95] ? io_in_extern_config_c2h_match_arg1 : 32'h0; // @[RxPipelineHandler.scala 94:45]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      in_reg_r <= 601'h1; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_reg_r <= _in_reg_T_1; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      extern_config_reg_r <= 236'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      extern_config_reg_r <= _extern_config_reg_T; // @[Reg.scala 29:22]
    end
    first_beat_reg <= reset | _GEN_2; // @[Reg.scala 28:{20,20}]
    if (reset) begin // @[RxPipelineHandler.scala 18:32]
      in_reg_used_reg <= 1'h0; // @[RxPipelineHandler.scala 18:32]
    end else begin
      in_reg_used_reg <= _GEN_4;
    end
    if (reset) begin // @[Reg.scala 28:20]
      cur_packet_qid_reg <= 2'h0; // @[Reg.scala 28:20]
    end else if (_cur_packet_qid_reg_T) begin // @[Reg.scala 29:18]
      cur_packet_qid_reg <= cal_qid; // @[Reg.scala 29:22]
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
  in_reg_r = _RAND_0[600:0];
  _RAND_1 = {8{`RANDOM}};
  extern_config_reg_r = _RAND_1[235:0];
  _RAND_2 = {1{`RANDOM}};
  first_beat_reg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  in_reg_used_reg = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  cur_packet_qid_reg = _RAND_4[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RxMatchFilter(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input          io_in_tuser,
  input  [15:0]  io_in_rx_info_tlen,
  input  [5:0]   io_in_rx_info_qid,
  input  [31:0]  io_in_rx_info_ip_chksum,
  input  [31:0]  io_in_rx_info_tcp_chksum,
  input  [7:0]   io_in_extern_config_c2h_match_op,
  input  [31:0]  io_in_extern_config_c2h_match_arg1,
  input  [31:0]  io_in_extern_config_c2h_match_arg2,
  input  [31:0]  io_in_extern_config_c2h_match_arg3,
  input  [127:0] io_in_extern_config_aes_key,
  input  [3:0]   io_in_extern_config_round_time,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output         io_out_tuser,
  output [15:0]  io_out_rx_info_tlen,
  output [5:0]   io_out_rx_info_qid,
  output [31:0]  io_out_rx_info_ip_chksum,
  output [31:0]  io_out_rx_info_tcp_chksum,
  output [7:0]   io_out_extern_config_c2h_match_op,
  output [31:0]  io_out_extern_config_c2h_match_arg1,
  output [31:0]  io_out_extern_config_c2h_match_arg2
);
`ifdef RANDOMIZE_REG_INIT
  reg [607:0] _RAND_0;
  reg [255:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire  in_shake_hand = io_in_tready & io_in_tvalid; // @[RxPipelineHandler.scala 12:38]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[RxPipelineHandler.scala 13:38]
  wire [600:0] _in_reg_T_1 = {io_in_rx_info_tlen,io_in_rx_info_qid,io_in_rx_info_ip_chksum,io_in_rx_info_tcp_chksum,
    io_in_tuser,io_in_tdata,io_in_tvalid,io_in_tlast}; // @[Cat.scala 31:58]
  reg [600:0] in_reg_r; // @[Reg.scala 28:20]
  wire  in_reg_tlast = in_reg_r[0]; // @[RxPipelineHandler.scala 14:128]
  wire  in_reg_tvalid = in_reg_r[1]; // @[RxPipelineHandler.scala 14:128]
  wire [511:0] in_reg_tdata = in_reg_r[513:2]; // @[RxPipelineHandler.scala 14:128]
  wire [5:0] in_reg_rx_info_qid = in_reg_r[584:579]; // @[RxPipelineHandler.scala 14:128]
  wire [235:0] _extern_config_reg_T = {io_in_extern_config_c2h_match_op,io_in_extern_config_c2h_match_arg1,
    io_in_extern_config_c2h_match_arg2,io_in_extern_config_c2h_match_arg3,io_in_extern_config_aes_key,
    io_in_extern_config_round_time}; // @[RxPipelineHandler.scala 15:57]
  reg [235:0] extern_config_reg_r; // @[Reg.scala 28:20]
  wire [31:0] extern_config_reg_c2h_match_arg3 = extern_config_reg_r[163:132]; // @[RxPipelineHandler.scala 15:91]
  wire [31:0] extern_config_reg_c2h_match_arg2 = extern_config_reg_r[195:164]; // @[RxPipelineHandler.scala 15:91]
  wire [31:0] extern_config_reg_c2h_match_arg1 = extern_config_reg_r[227:196]; // @[RxPipelineHandler.scala 15:91]
  wire [7:0] extern_config_reg_c2h_match_op = extern_config_reg_r[235:228]; // @[RxPipelineHandler.scala 15:91]
  reg  first_beat_reg; // @[Reg.scala 28:20]
  wire  _GEN_2 = in_shake_hand ? in_reg_tlast : first_beat_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_reg_used_reg; // @[RxPipelineHandler.scala 18:32]
  wire  _GEN_3 = out_shake_hand ? 1'h0 : in_reg_used_reg; // @[RxPipelineHandler.scala 21:29 22:21 18:32]
  wire  _GEN_4 = in_shake_hand | _GEN_3; // @[RxPipelineHandler.scala 19:23 20:21]
  reg  match_found_reg; // @[RxPipelineHandler.scala 133:32]
  reg  match_continue_reg; // @[RxPipelineHandler.scala 134:35]
  reg [31:0] previous_tdata_reg; // @[RxPipelineHandler.scala 136:35]
  wire [9:0] _cur_place_T_4 = io_in_rx_info_tlen[15:6] + 10'h1; // @[RxPipelineHandler.scala 138:102]
  wire [15:0] _cur_place_T_5 = {_cur_place_T_4,6'h0}; // @[Cat.scala 31:58]
  reg [15:0] cur_place_reg; // @[Reg.scala 28:20]
  wire [15:0] _in_beat_place_T_1 = cur_place_reg - 16'h40; // @[RxPipelineHandler.scala 142:52]
  wire [31:0] _GEN_23 = {{16'd0}, _in_beat_place_T_1}; // @[RxPipelineHandler.scala 142:35]
  wire [31:0] in_beat_place = extern_config_reg_c2h_match_arg3 - _GEN_23; // @[RxPipelineHandler.scala 142:35]
  wire [34:0] _in_beat_content_T = {in_beat_place, 3'h0}; // @[RxPipelineHandler.scala 143:57]
  wire [511:0] _in_beat_content_T_1 = in_reg_tdata >> _in_beat_content_T; // @[RxPipelineHandler.scala 143:39]
  wire [31:0] in_beat_content = _in_beat_content_T_1[31:0]; // @[RxPipelineHandler.scala 143:65]
  wire [31:0] _match_found_T_4 = {previous_tdata_reg[7:0],previous_tdata_reg[15:8],previous_tdata_reg[23:16],
    previous_tdata_reg[31:24]}; // @[Cat.scala 31:58]
  wire  _match_found_a_T = extern_config_reg_c2h_match_op == 8'h5; // @[RxPipelineHandler.scala 122:21]
  wire  _match_found_a_T_1 = extern_config_reg_c2h_match_op == 8'h7; // @[RxPipelineHandler.scala 122:37]
  wire  _match_found_a_T_2 = extern_config_reg_c2h_match_op == 8'h5 | extern_config_reg_c2h_match_op == 8'h7; // @[RxPipelineHandler.scala 122:30]
  wire [31:0] _match_found_a_T_3 = extern_config_reg_c2h_match_arg1 & extern_config_reg_c2h_match_arg2; // @[RxPipelineHandler.scala 122:51]
  wire [31:0] _match_found_a_T_4 = _match_found_T_4 & extern_config_reg_c2h_match_arg2; // @[RxPipelineHandler.scala 122:63]
  wire [31:0] match_found_a = extern_config_reg_c2h_match_op == 8'h5 | extern_config_reg_c2h_match_op == 8'h7 ?
    _match_found_a_T_3 : _match_found_a_T_4; // @[RxPipelineHandler.scala 122:16]
  wire [31:0] match_found_b = _match_found_a_T_2 ? _match_found_a_T_4 : _match_found_a_T_3; // @[RxPipelineHandler.scala 123:16]
  wire  _match_found_T_23 = extern_config_reg_c2h_match_op == 8'h2 & match_found_a == match_found_b |
    extern_config_reg_c2h_match_op == 8'h3 & match_found_a != match_found_b | (extern_config_reg_c2h_match_op == 8'h4 |
    _match_found_a_T) & match_found_a > match_found_b | (extern_config_reg_c2h_match_op == 8'h6 | _match_found_a_T_1) &
    match_found_a >= match_found_b; // @[RxPipelineHandler.scala 124:99]
  wire [15:0] _T_4 = cur_place_reg - 16'h4; // @[RxPipelineHandler.scala 153:44]
  wire [31:0] _GEN_25 = {{16'd0}, _T_4}; // @[RxPipelineHandler.scala 153:27]
  wire [31:0] _match_found_T_28 = {in_beat_content[7:0],in_beat_content[15:8],in_beat_content[23:16],in_beat_content[31:
    24]}; // @[Cat.scala 31:58]
  wire [31:0] _match_found_a_T_9 = _match_found_T_28 & extern_config_reg_c2h_match_arg2; // @[RxPipelineHandler.scala 122:63]
  wire [31:0] match_found_a_1 = extern_config_reg_c2h_match_op == 8'h5 | extern_config_reg_c2h_match_op == 8'h7 ?
    _match_found_a_T_3 : _match_found_a_T_9; // @[RxPipelineHandler.scala 122:16]
  wire [31:0] match_found_b_1 = _match_found_a_T_2 ? _match_found_a_T_9 : _match_found_a_T_3; // @[RxPipelineHandler.scala 123:16]
  wire  _match_found_T_47 = extern_config_reg_c2h_match_op == 8'h2 & match_found_a_1 == match_found_b_1 |
    extern_config_reg_c2h_match_op == 8'h3 & match_found_a_1 != match_found_b_1 | (extern_config_reg_c2h_match_op == 8'h4
     | _match_found_a_T) & match_found_a_1 > match_found_b_1 | (extern_config_reg_c2h_match_op == 8'h6 |
    _match_found_a_T_1) & match_found_a_1 >= match_found_b_1; // @[RxPipelineHandler.scala 124:99]
  wire [31:0] _GEN_26 = {{16'd0}, cur_place_reg}; // @[RxPipelineHandler.scala 157:33]
  wire  _previous_tdata_reg_T_3 = ~in_beat_place[1] & in_beat_place[0]; // @[RxPipelineHandler.scala 160:60]
  wire [31:0] _previous_tdata_reg_T_5 = _previous_tdata_reg_T_3 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [31:0] _previous_tdata_reg_T_8 = {io_in_tdata[7:0],in_reg_tdata[511:488]}; // @[Cat.scala 31:58]
  wire [31:0] _previous_tdata_reg_T_9 = _previous_tdata_reg_T_5 & _previous_tdata_reg_T_8; // @[RxPipelineHandler.scala 160:81]
  wire  _previous_tdata_reg_T_13 = in_beat_place[1] & ~in_beat_place[0]; // @[RxPipelineHandler.scala 161:60]
  wire [31:0] _previous_tdata_reg_T_15 = _previous_tdata_reg_T_13 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [31:0] _previous_tdata_reg_T_18 = {io_in_tdata[15:0],in_reg_tdata[511:496]}; // @[Cat.scala 31:58]
  wire [31:0] _previous_tdata_reg_T_19 = _previous_tdata_reg_T_15 & _previous_tdata_reg_T_18; // @[RxPipelineHandler.scala 161:81]
  wire [31:0] _previous_tdata_reg_T_20 = _previous_tdata_reg_T_9 | _previous_tdata_reg_T_19; // @[RxPipelineHandler.scala 160:130]
  wire  _previous_tdata_reg_T_23 = in_beat_place[1] & in_beat_place[0]; // @[RxPipelineHandler.scala 162:60]
  wire [31:0] _previous_tdata_reg_T_25 = _previous_tdata_reg_T_23 ? 32'hffffffff : 32'h0; // @[Bitwise.scala 74:12]
  wire [31:0] _previous_tdata_reg_T_28 = {io_in_tdata[23:0],in_reg_tdata[511:504]}; // @[Cat.scala 31:58]
  wire [31:0] _previous_tdata_reg_T_29 = _previous_tdata_reg_T_25 & _previous_tdata_reg_T_28; // @[RxPipelineHandler.scala 162:81]
  wire [31:0] _previous_tdata_reg_T_30 = _previous_tdata_reg_T_20 | _previous_tdata_reg_T_29; // @[RxPipelineHandler.scala 161:130]
  wire  _GEN_6 = extern_config_reg_c2h_match_arg3 < _GEN_26 & ~in_reg_tlast | match_continue_reg; // @[RxPipelineHandler.scala 157:67 159:30 134:35]
  wire [31:0] _GEN_7 = extern_config_reg_c2h_match_arg3 < _GEN_26 & ~in_reg_tlast ? _previous_tdata_reg_T_30 :
    previous_tdata_reg; // @[RxPipelineHandler.scala 157:67 160:30 136:35]
  wire  _GEN_8 = extern_config_reg_c2h_match_arg3 <= _GEN_25 & _match_found_T_47; // @[RxPipelineHandler.scala 153:51 155:23]
  wire  _GEN_9 = extern_config_reg_c2h_match_arg3 <= _GEN_25 ? match_continue_reg : _GEN_6; // @[RxPipelineHandler.scala 134:35 153:51]
  wire [31:0] _GEN_10 = extern_config_reg_c2h_match_arg3 <= _GEN_25 ? previous_tdata_reg : _GEN_7; // @[RxPipelineHandler.scala 136:35 153:51]
  wire  _GEN_11 = extern_config_reg_c2h_match_arg3 >= _GEN_23 & _GEN_8; // @[RxPipelineHandler.scala 151:54]
  wire  _GEN_15 = match_continue_reg ? _match_found_T_23 : _GEN_11; // @[RxPipelineHandler.scala 146:31 149:19]
  wire  match_found = in_shake_hand & _GEN_15; // @[RxPipelineHandler.scala 145:24]
  wire  _match_found_reg_T = match_found_reg | match_found; // @[RxPipelineHandler.scala 169:42]
  wire [5:0] _io_out_rx_info_qid_T_1 = _match_found_reg_T ? 6'h1 : in_reg_rx_info_qid; // @[RxPipelineHandler.scala 173:30]
  assign io_in_tready = io_out_tready | ~in_reg_used_reg; // @[RxPipelineHandler.scala 30:47]
  assign io_out_tdata = in_reg_r[513:2]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_tvalid = in_reg_tvalid & in_reg_used_reg; // @[RxPipelineHandler.scala 27:47]
  assign io_out_tlast = in_reg_r[0]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_tuser = in_reg_r[514]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_tlen = in_reg_r[600:585]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_qid = io_in_extern_config_c2h_match_op >= 8'h2 & io_in_extern_config_c2h_match_op <= 8'h7 ?
    _io_out_rx_info_qid_T_1 : in_reg_rx_info_qid; // @[RxPipelineHandler.scala 172:93 173:24 29:18]
  assign io_out_rx_info_ip_chksum = in_reg_r[578:547]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_tcp_chksum = in_reg_r[546:515]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_extern_config_c2h_match_op = extern_config_reg_r[235:228]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg1 = extern_config_reg_r[227:196]; // @[RxPipelineHandler.scala 15:91]
  assign io_out_extern_config_c2h_match_arg2 = extern_config_reg_r[195:164]; // @[RxPipelineHandler.scala 15:91]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      in_reg_r <= 601'h1; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_reg_r <= _in_reg_T_1; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      extern_config_reg_r <= 236'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      extern_config_reg_r <= _extern_config_reg_T; // @[Reg.scala 29:22]
    end
    first_beat_reg <= reset | _GEN_2; // @[Reg.scala 28:{20,20}]
    if (reset) begin // @[RxPipelineHandler.scala 18:32]
      in_reg_used_reg <= 1'h0; // @[RxPipelineHandler.scala 18:32]
    end else begin
      in_reg_used_reg <= _GEN_4;
    end
    if (reset) begin // @[RxPipelineHandler.scala 133:32]
      match_found_reg <= 1'h0; // @[RxPipelineHandler.scala 133:32]
    end else if (in_shake_hand) begin // @[RxPipelineHandler.scala 145:24]
      if (first_beat_reg) begin // @[RxPipelineHandler.scala 166:27]
        match_found_reg <= match_found; // @[RxPipelineHandler.scala 167:23]
      end else begin
        match_found_reg <= match_found_reg | match_found; // @[RxPipelineHandler.scala 169:23]
      end
    end
    if (reset) begin // @[RxPipelineHandler.scala 134:35]
      match_continue_reg <= 1'h0; // @[RxPipelineHandler.scala 134:35]
    end else if (in_shake_hand) begin // @[RxPipelineHandler.scala 145:24]
      if (match_continue_reg) begin // @[RxPipelineHandler.scala 146:31]
        match_continue_reg <= 1'h0; // @[RxPipelineHandler.scala 148:26]
      end else if (extern_config_reg_c2h_match_arg3 >= _GEN_23) begin // @[RxPipelineHandler.scala 151:54]
        match_continue_reg <= _GEN_9;
      end
    end
    if (reset) begin // @[RxPipelineHandler.scala 136:35]
      previous_tdata_reg <= 32'h0; // @[RxPipelineHandler.scala 136:35]
    end else if (in_shake_hand) begin // @[RxPipelineHandler.scala 145:24]
      if (!(match_continue_reg)) begin // @[RxPipelineHandler.scala 146:31]
        if (extern_config_reg_c2h_match_arg3 >= _GEN_23) begin // @[RxPipelineHandler.scala 151:54]
          previous_tdata_reg <= _GEN_10;
        end
      end
    end
    if (reset) begin // @[Reg.scala 28:20]
      cur_place_reg <= 16'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      if (io_in_rx_info_tlen[5:0] == 6'h0) begin // @[RxPipelineHandler.scala 138:22]
        cur_place_reg <= io_in_rx_info_tlen;
      end else begin
        cur_place_reg <= _cur_place_T_5;
      end
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
  in_reg_r = _RAND_0[600:0];
  _RAND_1 = {8{`RANDOM}};
  extern_config_reg_r = _RAND_1[235:0];
  _RAND_2 = {1{`RANDOM}};
  first_beat_reg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  in_reg_used_reg = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  match_found_reg = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  match_continue_reg = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  previous_tdata_reg = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  cur_place_reg = _RAND_7[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ReduceOrSync(
  input   clock,
  input   io_in_vec_0,
  input   io_in_vec_1,
  input   io_in_vec_2,
  input   io_in_vec_3,
  input   io_in_vec_4,
  input   io_in_vec_5,
  input   io_in_vec_6,
  input   io_in_vec_7,
  input   io_in_vec_8,
  input   io_in_vec_9,
  input   io_in_vec_10,
  input   io_in_vec_11,
  input   io_in_vec_12,
  input   io_in_vec_13,
  input   io_in_vec_14,
  input   io_in_vec_15,
  input   io_in_vec_16,
  input   io_in_vec_17,
  input   io_in_vec_18,
  input   io_in_vec_19,
  input   io_in_vec_20,
  input   io_in_vec_21,
  input   io_in_vec_22,
  input   io_in_vec_23,
  input   io_in_vec_24,
  input   io_in_vec_25,
  input   io_in_vec_26,
  input   io_in_vec_27,
  input   io_in_vec_28,
  input   io_in_vec_29,
  input   io_in_vec_30,
  input   io_in_vec_31,
  input   io_in_vec_32,
  input   io_in_vec_33,
  input   io_in_vec_34,
  input   io_in_vec_35,
  input   io_in_vec_36,
  input   io_in_vec_37,
  input   io_in_vec_38,
  input   io_in_vec_39,
  input   io_in_vec_40,
  input   io_in_vec_41,
  input   io_in_vec_42,
  input   io_in_vec_43,
  input   io_in_vec_44,
  input   io_in_vec_45,
  input   io_in_vec_46,
  input   io_in_vec_47,
  input   io_in_vec_48,
  input   io_in_vec_49,
  input   io_in_vec_50,
  input   io_in_vec_51,
  input   io_in_vec_52,
  input   io_in_vec_53,
  input   io_in_vec_54,
  input   io_in_vec_55,
  input   io_in_vec_56,
  input   io_in_vec_57,
  input   io_in_vec_58,
  input   io_in_vec_59,
  input   io_in_vec_60,
  input   io_in_vec_61,
  input   io_in_vec_62,
  input   io_in_vec_63,
  output  io_out_sum
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg  cal_reg_0; // @[Misc.scala 173:20]
  reg  cal_reg_1; // @[Misc.scala 173:20]
  reg  cal_reg_2; // @[Misc.scala 173:20]
  reg  cal_reg_3; // @[Misc.scala 173:20]
  reg  cal_reg_4; // @[Misc.scala 173:20]
  reg  cal_reg_5; // @[Misc.scala 173:20]
  reg  cal_reg_6; // @[Misc.scala 173:20]
  reg  cal_reg_7; // @[Misc.scala 173:20]
  assign io_out_sum = cal_reg_0 | cal_reg_1 | (cal_reg_2 | cal_reg_3) | (cal_reg_4 | cal_reg_5 | (cal_reg_6 | cal_reg_7)
    ); // @[Misc.scala 197:37]
  always @(posedge clock) begin
    cal_reg_0 <= io_in_vec_0 | io_in_vec_1 | (io_in_vec_2 | io_in_vec_3) | (io_in_vec_4 | io_in_vec_5 | (io_in_vec_6 |
      io_in_vec_7)); // @[Misc.scala 195:42]
    cal_reg_1 <= io_in_vec_8 | io_in_vec_9 | (io_in_vec_10 | io_in_vec_11) | (io_in_vec_12 | io_in_vec_13 | (
      io_in_vec_14 | io_in_vec_15)); // @[Misc.scala 195:42]
    cal_reg_2 <= io_in_vec_16 | io_in_vec_17 | (io_in_vec_18 | io_in_vec_19) | (io_in_vec_20 | io_in_vec_21 | (
      io_in_vec_22 | io_in_vec_23)); // @[Misc.scala 195:42]
    cal_reg_3 <= io_in_vec_24 | io_in_vec_25 | (io_in_vec_26 | io_in_vec_27) | (io_in_vec_28 | io_in_vec_29 | (
      io_in_vec_30 | io_in_vec_31)); // @[Misc.scala 195:42]
    cal_reg_4 <= io_in_vec_32 | io_in_vec_33 | (io_in_vec_34 | io_in_vec_35) | (io_in_vec_36 | io_in_vec_37 | (
      io_in_vec_38 | io_in_vec_39)); // @[Misc.scala 195:42]
    cal_reg_5 <= io_in_vec_40 | io_in_vec_41 | (io_in_vec_42 | io_in_vec_43) | (io_in_vec_44 | io_in_vec_45 | (
      io_in_vec_46 | io_in_vec_47)); // @[Misc.scala 195:42]
    cal_reg_6 <= io_in_vec_48 | io_in_vec_49 | (io_in_vec_50 | io_in_vec_51) | (io_in_vec_52 | io_in_vec_53 | (
      io_in_vec_54 | io_in_vec_55)); // @[Misc.scala 195:42]
    cal_reg_7 <= io_in_vec_56 | io_in_vec_57 | (io_in_vec_58 | io_in_vec_59) | (io_in_vec_60 | io_in_vec_61 | (
      io_in_vec_62 | io_in_vec_63)); // @[Misc.scala 195:42]
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
  cal_reg_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  cal_reg_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  cal_reg_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  cal_reg_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  cal_reg_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  cal_reg_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  cal_reg_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  cal_reg_7 = _RAND_7[0:0];
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
  input  [15:0]  io_in_rx_info_tlen,
  input  [5:0]   io_in_rx_info_qid,
  input  [31:0]  io_in_rx_info_ip_chksum,
  input  [31:0]  io_in_rx_info_tcp_chksum,
  input  [7:0]   io_in_extern_config_c2h_match_op,
  input  [31:0]  io_in_extern_config_c2h_match_arg1,
  input  [31:0]  io_in_extern_config_c2h_match_arg2,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output         io_out_tuser,
  output [15:0]  io_out_rx_info_tlen,
  output [5:0]   io_out_rx_info_qid,
  output [31:0]  io_out_rx_info_ip_chksum,
  output [31:0]  io_out_rx_info_tcp_chksum
);
`ifdef RANDOMIZE_REG_INIT
  reg [607:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  search_or_sync_clock; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_0; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_1; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_2; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_3; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_4; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_5; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_6; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_7; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_8; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_9; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_10; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_11; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_12; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_13; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_14; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_15; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_16; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_17; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_18; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_19; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_20; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_21; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_22; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_23; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_24; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_25; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_26; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_27; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_28; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_29; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_30; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_31; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_32; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_33; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_34; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_35; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_36; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_37; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_38; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_39; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_40; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_41; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_42; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_43; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_44; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_45; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_46; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_47; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_48; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_49; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_50; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_51; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_52; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_53; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_54; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_55; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_56; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_57; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_58; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_59; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_60; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_61; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_62; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_in_vec_63; // @[RxPipelineHandler.scala 203:30]
  wire  search_or_sync_io_out_sum; // @[RxPipelineHandler.scala 203:30]
  wire  in_shake_hand = io_in_tready & io_in_tvalid; // @[RxPipelineHandler.scala 12:38]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[RxPipelineHandler.scala 13:38]
  wire [600:0] _in_reg_T_1 = {io_in_rx_info_tlen,io_in_rx_info_qid,io_in_rx_info_ip_chksum,io_in_rx_info_tcp_chksum,
    io_in_tuser,io_in_tdata,io_in_tvalid,io_in_tlast}; // @[Cat.scala 31:58]
  reg [600:0] in_reg_r; // @[Reg.scala 28:20]
  wire  in_reg_tlast = in_reg_r[0]; // @[RxPipelineHandler.scala 14:128]
  wire  in_reg_tvalid = in_reg_r[1]; // @[RxPipelineHandler.scala 14:128]
  wire [511:0] in_reg_tdata = in_reg_r[513:2]; // @[RxPipelineHandler.scala 14:128]
  wire [5:0] in_reg_rx_info_qid = in_reg_r[584:579]; // @[RxPipelineHandler.scala 14:128]
  reg  first_beat_reg; // @[Reg.scala 28:20]
  wire  _GEN_2 = in_shake_hand ? in_reg_tlast : first_beat_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_reg_used_reg; // @[RxPipelineHandler.scala 18:32]
  wire  _GEN_3 = out_shake_hand ? 1'h0 : in_reg_used_reg; // @[RxPipelineHandler.scala 21:29 22:21 18:32]
  wire  _GEN_4 = in_shake_hand | _GEN_3; // @[RxPipelineHandler.scala 19:23 20:21]
  wire [31:0] search_value = io_in_extern_config_c2h_match_arg1 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 186:37]
  reg [23:0] previous_tdata_reg; // @[RxPipelineHandler.scala 192:35]
  wire [511:0] cal_tdata = in_shake_hand ? io_in_tdata : in_reg_tdata; // @[RxPipelineHandler.scala 193:22]
  wire [31:0] _search_vec_0_T_5 = {cal_tdata[7:0],cal_tdata[15:8],cal_tdata[23:16],cal_tdata[31:24]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_0_T_6 = _search_vec_0_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_1_T_5 = {cal_tdata[15:8],cal_tdata[23:16],cal_tdata[31:24],cal_tdata[39:32]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_1_T_6 = _search_vec_1_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_2_T_5 = {cal_tdata[23:16],cal_tdata[31:24],cal_tdata[39:32],cal_tdata[47:40]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_2_T_6 = _search_vec_2_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_3_T_5 = {cal_tdata[31:24],cal_tdata[39:32],cal_tdata[47:40],cal_tdata[55:48]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_3_T_6 = _search_vec_3_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_4_T_5 = {cal_tdata[39:32],cal_tdata[47:40],cal_tdata[55:48],cal_tdata[63:56]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_4_T_6 = _search_vec_4_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_5_T_5 = {cal_tdata[47:40],cal_tdata[55:48],cal_tdata[63:56],cal_tdata[71:64]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_5_T_6 = _search_vec_5_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_6_T_5 = {cal_tdata[55:48],cal_tdata[63:56],cal_tdata[71:64],cal_tdata[79:72]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_6_T_6 = _search_vec_6_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_7_T_5 = {cal_tdata[63:56],cal_tdata[71:64],cal_tdata[79:72],cal_tdata[87:80]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_7_T_6 = _search_vec_7_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_8_T_5 = {cal_tdata[71:64],cal_tdata[79:72],cal_tdata[87:80],cal_tdata[95:88]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_8_T_6 = _search_vec_8_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_9_T_5 = {cal_tdata[79:72],cal_tdata[87:80],cal_tdata[95:88],cal_tdata[103:96]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_9_T_6 = _search_vec_9_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_10_T_5 = {cal_tdata[87:80],cal_tdata[95:88],cal_tdata[103:96],cal_tdata[111:104]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_10_T_6 = _search_vec_10_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_11_T_5 = {cal_tdata[95:88],cal_tdata[103:96],cal_tdata[111:104],cal_tdata[119:112]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_11_T_6 = _search_vec_11_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_12_T_5 = {cal_tdata[103:96],cal_tdata[111:104],cal_tdata[119:112],cal_tdata[127:120]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_12_T_6 = _search_vec_12_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_13_T_5 = {cal_tdata[111:104],cal_tdata[119:112],cal_tdata[127:120],cal_tdata[135:128]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_13_T_6 = _search_vec_13_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_14_T_5 = {cal_tdata[119:112],cal_tdata[127:120],cal_tdata[135:128],cal_tdata[143:136]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_14_T_6 = _search_vec_14_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_15_T_5 = {cal_tdata[127:120],cal_tdata[135:128],cal_tdata[143:136],cal_tdata[151:144]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_15_T_6 = _search_vec_15_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_16_T_5 = {cal_tdata[135:128],cal_tdata[143:136],cal_tdata[151:144],cal_tdata[159:152]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_16_T_6 = _search_vec_16_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_17_T_5 = {cal_tdata[143:136],cal_tdata[151:144],cal_tdata[159:152],cal_tdata[167:160]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_17_T_6 = _search_vec_17_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_18_T_5 = {cal_tdata[151:144],cal_tdata[159:152],cal_tdata[167:160],cal_tdata[175:168]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_18_T_6 = _search_vec_18_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_19_T_5 = {cal_tdata[159:152],cal_tdata[167:160],cal_tdata[175:168],cal_tdata[183:176]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_19_T_6 = _search_vec_19_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_20_T_5 = {cal_tdata[167:160],cal_tdata[175:168],cal_tdata[183:176],cal_tdata[191:184]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_20_T_6 = _search_vec_20_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_21_T_5 = {cal_tdata[175:168],cal_tdata[183:176],cal_tdata[191:184],cal_tdata[199:192]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_21_T_6 = _search_vec_21_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_22_T_5 = {cal_tdata[183:176],cal_tdata[191:184],cal_tdata[199:192],cal_tdata[207:200]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_22_T_6 = _search_vec_22_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_23_T_5 = {cal_tdata[191:184],cal_tdata[199:192],cal_tdata[207:200],cal_tdata[215:208]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_23_T_6 = _search_vec_23_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_24_T_5 = {cal_tdata[199:192],cal_tdata[207:200],cal_tdata[215:208],cal_tdata[223:216]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_24_T_6 = _search_vec_24_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_25_T_5 = {cal_tdata[207:200],cal_tdata[215:208],cal_tdata[223:216],cal_tdata[231:224]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_25_T_6 = _search_vec_25_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_26_T_5 = {cal_tdata[215:208],cal_tdata[223:216],cal_tdata[231:224],cal_tdata[239:232]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_26_T_6 = _search_vec_26_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_27_T_5 = {cal_tdata[223:216],cal_tdata[231:224],cal_tdata[239:232],cal_tdata[247:240]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_27_T_6 = _search_vec_27_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_28_T_5 = {cal_tdata[231:224],cal_tdata[239:232],cal_tdata[247:240],cal_tdata[255:248]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_28_T_6 = _search_vec_28_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_29_T_5 = {cal_tdata[239:232],cal_tdata[247:240],cal_tdata[255:248],cal_tdata[263:256]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_29_T_6 = _search_vec_29_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_30_T_5 = {cal_tdata[247:240],cal_tdata[255:248],cal_tdata[263:256],cal_tdata[271:264]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_30_T_6 = _search_vec_30_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_31_T_5 = {cal_tdata[255:248],cal_tdata[263:256],cal_tdata[271:264],cal_tdata[279:272]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_31_T_6 = _search_vec_31_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_32_T_5 = {cal_tdata[263:256],cal_tdata[271:264],cal_tdata[279:272],cal_tdata[287:280]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_32_T_6 = _search_vec_32_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_33_T_5 = {cal_tdata[271:264],cal_tdata[279:272],cal_tdata[287:280],cal_tdata[295:288]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_33_T_6 = _search_vec_33_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_34_T_5 = {cal_tdata[279:272],cal_tdata[287:280],cal_tdata[295:288],cal_tdata[303:296]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_34_T_6 = _search_vec_34_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_35_T_5 = {cal_tdata[287:280],cal_tdata[295:288],cal_tdata[303:296],cal_tdata[311:304]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_35_T_6 = _search_vec_35_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_36_T_5 = {cal_tdata[295:288],cal_tdata[303:296],cal_tdata[311:304],cal_tdata[319:312]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_36_T_6 = _search_vec_36_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_37_T_5 = {cal_tdata[303:296],cal_tdata[311:304],cal_tdata[319:312],cal_tdata[327:320]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_37_T_6 = _search_vec_37_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_38_T_5 = {cal_tdata[311:304],cal_tdata[319:312],cal_tdata[327:320],cal_tdata[335:328]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_38_T_6 = _search_vec_38_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_39_T_5 = {cal_tdata[319:312],cal_tdata[327:320],cal_tdata[335:328],cal_tdata[343:336]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_39_T_6 = _search_vec_39_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_40_T_5 = {cal_tdata[327:320],cal_tdata[335:328],cal_tdata[343:336],cal_tdata[351:344]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_40_T_6 = _search_vec_40_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_41_T_5 = {cal_tdata[335:328],cal_tdata[343:336],cal_tdata[351:344],cal_tdata[359:352]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_41_T_6 = _search_vec_41_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_42_T_5 = {cal_tdata[343:336],cal_tdata[351:344],cal_tdata[359:352],cal_tdata[367:360]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_42_T_6 = _search_vec_42_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_43_T_5 = {cal_tdata[351:344],cal_tdata[359:352],cal_tdata[367:360],cal_tdata[375:368]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_43_T_6 = _search_vec_43_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_44_T_5 = {cal_tdata[359:352],cal_tdata[367:360],cal_tdata[375:368],cal_tdata[383:376]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_44_T_6 = _search_vec_44_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_45_T_5 = {cal_tdata[367:360],cal_tdata[375:368],cal_tdata[383:376],cal_tdata[391:384]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_45_T_6 = _search_vec_45_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_46_T_5 = {cal_tdata[375:368],cal_tdata[383:376],cal_tdata[391:384],cal_tdata[399:392]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_46_T_6 = _search_vec_46_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_47_T_5 = {cal_tdata[383:376],cal_tdata[391:384],cal_tdata[399:392],cal_tdata[407:400]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_47_T_6 = _search_vec_47_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_48_T_5 = {cal_tdata[391:384],cal_tdata[399:392],cal_tdata[407:400],cal_tdata[415:408]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_48_T_6 = _search_vec_48_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_49_T_5 = {cal_tdata[399:392],cal_tdata[407:400],cal_tdata[415:408],cal_tdata[423:416]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_49_T_6 = _search_vec_49_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_50_T_5 = {cal_tdata[407:400],cal_tdata[415:408],cal_tdata[423:416],cal_tdata[431:424]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_50_T_6 = _search_vec_50_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_51_T_5 = {cal_tdata[415:408],cal_tdata[423:416],cal_tdata[431:424],cal_tdata[439:432]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_51_T_6 = _search_vec_51_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_52_T_5 = {cal_tdata[423:416],cal_tdata[431:424],cal_tdata[439:432],cal_tdata[447:440]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_52_T_6 = _search_vec_52_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_53_T_5 = {cal_tdata[431:424],cal_tdata[439:432],cal_tdata[447:440],cal_tdata[455:448]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_53_T_6 = _search_vec_53_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_54_T_5 = {cal_tdata[439:432],cal_tdata[447:440],cal_tdata[455:448],cal_tdata[463:456]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_54_T_6 = _search_vec_54_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_55_T_5 = {cal_tdata[447:440],cal_tdata[455:448],cal_tdata[463:456],cal_tdata[471:464]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_55_T_6 = _search_vec_55_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_56_T_5 = {cal_tdata[455:448],cal_tdata[463:456],cal_tdata[471:464],cal_tdata[479:472]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_56_T_6 = _search_vec_56_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_57_T_5 = {cal_tdata[463:456],cal_tdata[471:464],cal_tdata[479:472],cal_tdata[487:480]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_57_T_6 = _search_vec_57_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_58_T_5 = {cal_tdata[471:464],cal_tdata[479:472],cal_tdata[487:480],cal_tdata[495:488]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_58_T_6 = _search_vec_58_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_59_T_5 = {cal_tdata[479:472],cal_tdata[487:480],cal_tdata[495:488],cal_tdata[503:496]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_59_T_6 = _search_vec_59_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_60_T_5 = {cal_tdata[487:480],cal_tdata[495:488],cal_tdata[503:496],cal_tdata[511:504]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_60_T_6 = _search_vec_60_T_5 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire [31:0] _search_vec_61_T_3 = {io_in_tdata[7:0],in_reg_tdata[511:488]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_61_T_6 = {in_reg_tdata[7:0],previous_tdata_reg}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_61_T_7 = in_shake_hand ? _search_vec_61_T_3 : _search_vec_61_T_6; // @[RxPipelineHandler.scala 199:86]
  wire [31:0] _search_vec_61_T_12 = {_search_vec_61_T_7[7:0],_search_vec_61_T_7[15:8],_search_vec_61_T_7[23:16],
    _search_vec_61_T_7[31:24]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_61_T_13 = _search_vec_61_T_12 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire  _search_vec_61_T_14 = _search_vec_61_T_13 == search_value; // @[RxPipelineHandler.scala 189:42]
  wire [31:0] _search_vec_62_T_3 = {io_in_tdata[15:0],in_reg_tdata[511:496]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_62_T_6 = {in_reg_tdata[15:0],previous_tdata_reg[23:8]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_62_T_7 = in_shake_hand ? _search_vec_62_T_3 : _search_vec_62_T_6; // @[RxPipelineHandler.scala 200:86]
  wire [31:0] _search_vec_62_T_12 = {_search_vec_62_T_7[7:0],_search_vec_62_T_7[15:8],_search_vec_62_T_7[23:16],
    _search_vec_62_T_7[31:24]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_62_T_13 = _search_vec_62_T_12 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire  _search_vec_62_T_14 = _search_vec_62_T_13 == search_value; // @[RxPipelineHandler.scala 189:42]
  wire [31:0] _search_vec_63_T_3 = {io_in_tdata[23:0],in_reg_tdata[511:504]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_63_T_6 = {in_reg_tdata[23:0],previous_tdata_reg[23:16]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_63_T_7 = in_shake_hand ? _search_vec_63_T_3 : _search_vec_63_T_6; // @[RxPipelineHandler.scala 201:86]
  wire [31:0] _search_vec_63_T_12 = {_search_vec_63_T_7[7:0],_search_vec_63_T_7[15:8],_search_vec_63_T_7[23:16],
    _search_vec_63_T_7[31:24]}; // @[Cat.scala 31:58]
  wire [31:0] _search_vec_63_T_13 = _search_vec_63_T_12 & io_in_extern_config_c2h_match_arg2; // @[RxPipelineHandler.scala 189:27]
  wire  _search_vec_63_T_14 = _search_vec_63_T_13 == search_value; // @[RxPipelineHandler.scala 189:42]
  reg  search_found_reg; // @[RxPipelineHandler.scala 210:33]
  wire  search_or_result = search_or_sync_io_out_sum; // @[RxPipelineHandler.scala 204:30 208:20]
  wire  _search_found_reg_T = search_found_reg | search_or_result; // @[RxPipelineHandler.scala 216:44]
  wire [5:0] _io_out_rx_info_qid_T_1 = _search_found_reg_T ? 6'h1 : in_reg_rx_info_qid; // @[RxPipelineHandler.scala 221:30]
  ReduceOrSync search_or_sync ( // @[RxPipelineHandler.scala 203:30]
    .clock(search_or_sync_clock),
    .io_in_vec_0(search_or_sync_io_in_vec_0),
    .io_in_vec_1(search_or_sync_io_in_vec_1),
    .io_in_vec_2(search_or_sync_io_in_vec_2),
    .io_in_vec_3(search_or_sync_io_in_vec_3),
    .io_in_vec_4(search_or_sync_io_in_vec_4),
    .io_in_vec_5(search_or_sync_io_in_vec_5),
    .io_in_vec_6(search_or_sync_io_in_vec_6),
    .io_in_vec_7(search_or_sync_io_in_vec_7),
    .io_in_vec_8(search_or_sync_io_in_vec_8),
    .io_in_vec_9(search_or_sync_io_in_vec_9),
    .io_in_vec_10(search_or_sync_io_in_vec_10),
    .io_in_vec_11(search_or_sync_io_in_vec_11),
    .io_in_vec_12(search_or_sync_io_in_vec_12),
    .io_in_vec_13(search_or_sync_io_in_vec_13),
    .io_in_vec_14(search_or_sync_io_in_vec_14),
    .io_in_vec_15(search_or_sync_io_in_vec_15),
    .io_in_vec_16(search_or_sync_io_in_vec_16),
    .io_in_vec_17(search_or_sync_io_in_vec_17),
    .io_in_vec_18(search_or_sync_io_in_vec_18),
    .io_in_vec_19(search_or_sync_io_in_vec_19),
    .io_in_vec_20(search_or_sync_io_in_vec_20),
    .io_in_vec_21(search_or_sync_io_in_vec_21),
    .io_in_vec_22(search_or_sync_io_in_vec_22),
    .io_in_vec_23(search_or_sync_io_in_vec_23),
    .io_in_vec_24(search_or_sync_io_in_vec_24),
    .io_in_vec_25(search_or_sync_io_in_vec_25),
    .io_in_vec_26(search_or_sync_io_in_vec_26),
    .io_in_vec_27(search_or_sync_io_in_vec_27),
    .io_in_vec_28(search_or_sync_io_in_vec_28),
    .io_in_vec_29(search_or_sync_io_in_vec_29),
    .io_in_vec_30(search_or_sync_io_in_vec_30),
    .io_in_vec_31(search_or_sync_io_in_vec_31),
    .io_in_vec_32(search_or_sync_io_in_vec_32),
    .io_in_vec_33(search_or_sync_io_in_vec_33),
    .io_in_vec_34(search_or_sync_io_in_vec_34),
    .io_in_vec_35(search_or_sync_io_in_vec_35),
    .io_in_vec_36(search_or_sync_io_in_vec_36),
    .io_in_vec_37(search_or_sync_io_in_vec_37),
    .io_in_vec_38(search_or_sync_io_in_vec_38),
    .io_in_vec_39(search_or_sync_io_in_vec_39),
    .io_in_vec_40(search_or_sync_io_in_vec_40),
    .io_in_vec_41(search_or_sync_io_in_vec_41),
    .io_in_vec_42(search_or_sync_io_in_vec_42),
    .io_in_vec_43(search_or_sync_io_in_vec_43),
    .io_in_vec_44(search_or_sync_io_in_vec_44),
    .io_in_vec_45(search_or_sync_io_in_vec_45),
    .io_in_vec_46(search_or_sync_io_in_vec_46),
    .io_in_vec_47(search_or_sync_io_in_vec_47),
    .io_in_vec_48(search_or_sync_io_in_vec_48),
    .io_in_vec_49(search_or_sync_io_in_vec_49),
    .io_in_vec_50(search_or_sync_io_in_vec_50),
    .io_in_vec_51(search_or_sync_io_in_vec_51),
    .io_in_vec_52(search_or_sync_io_in_vec_52),
    .io_in_vec_53(search_or_sync_io_in_vec_53),
    .io_in_vec_54(search_or_sync_io_in_vec_54),
    .io_in_vec_55(search_or_sync_io_in_vec_55),
    .io_in_vec_56(search_or_sync_io_in_vec_56),
    .io_in_vec_57(search_or_sync_io_in_vec_57),
    .io_in_vec_58(search_or_sync_io_in_vec_58),
    .io_in_vec_59(search_or_sync_io_in_vec_59),
    .io_in_vec_60(search_or_sync_io_in_vec_60),
    .io_in_vec_61(search_or_sync_io_in_vec_61),
    .io_in_vec_62(search_or_sync_io_in_vec_62),
    .io_in_vec_63(search_or_sync_io_in_vec_63),
    .io_out_sum(search_or_sync_io_out_sum)
  );
  assign io_in_tready = io_out_tready | ~in_reg_used_reg; // @[RxPipelineHandler.scala 30:47]
  assign io_out_tdata = in_reg_r[513:2]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_tvalid = in_reg_tvalid & in_reg_used_reg; // @[RxPipelineHandler.scala 27:47]
  assign io_out_tlast = in_reg_r[0]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_tuser = in_reg_r[514]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_tlen = in_reg_r[600:585]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_qid = io_in_extern_config_c2h_match_op == 8'h8 ? _io_out_rx_info_qid_T_1 : in_reg_rx_info_qid; // @[RxPipelineHandler.scala 220:51 221:24 29:18]
  assign io_out_rx_info_ip_chksum = in_reg_r[578:547]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_tcp_chksum = in_reg_r[546:515]; // @[RxPipelineHandler.scala 14:128]
  assign search_or_sync_clock = clock;
  assign search_or_sync_io_in_vec_0 = _search_vec_0_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_1 = _search_vec_1_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_2 = _search_vec_2_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_3 = _search_vec_3_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_4 = _search_vec_4_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_5 = _search_vec_5_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_6 = _search_vec_6_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_7 = _search_vec_7_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_8 = _search_vec_8_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_9 = _search_vec_9_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_10 = _search_vec_10_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_11 = _search_vec_11_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_12 = _search_vec_12_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_13 = _search_vec_13_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_14 = _search_vec_14_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_15 = _search_vec_15_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_16 = _search_vec_16_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_17 = _search_vec_17_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_18 = _search_vec_18_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_19 = _search_vec_19_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_20 = _search_vec_20_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_21 = _search_vec_21_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_22 = _search_vec_22_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_23 = _search_vec_23_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_24 = _search_vec_24_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_25 = _search_vec_25_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_26 = _search_vec_26_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_27 = _search_vec_27_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_28 = _search_vec_28_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_29 = _search_vec_29_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_30 = _search_vec_30_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_31 = _search_vec_31_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_32 = _search_vec_32_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_33 = _search_vec_33_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_34 = _search_vec_34_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_35 = _search_vec_35_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_36 = _search_vec_36_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_37 = _search_vec_37_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_38 = _search_vec_38_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_39 = _search_vec_39_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_40 = _search_vec_40_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_41 = _search_vec_41_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_42 = _search_vec_42_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_43 = _search_vec_43_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_44 = _search_vec_44_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_45 = _search_vec_45_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_46 = _search_vec_46_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_47 = _search_vec_47_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_48 = _search_vec_48_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_49 = _search_vec_49_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_50 = _search_vec_50_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_51 = _search_vec_51_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_52 = _search_vec_52_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_53 = _search_vec_53_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_54 = _search_vec_54_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_55 = _search_vec_55_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_56 = _search_vec_56_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_57 = _search_vec_57_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_58 = _search_vec_58_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_59 = _search_vec_59_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_60 = _search_vec_60_T_6 == search_value; // @[RxPipelineHandler.scala 189:42]
  assign search_or_sync_io_in_vec_61 = _GEN_2 ? 1'h0 : _search_vec_61_T_14; // @[RxPipelineHandler.scala 199:24]
  assign search_or_sync_io_in_vec_62 = _GEN_2 ? 1'h0 : _search_vec_62_T_14; // @[RxPipelineHandler.scala 200:24]
  assign search_or_sync_io_in_vec_63 = _GEN_2 ? 1'h0 : _search_vec_63_T_14; // @[RxPipelineHandler.scala 201:24]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      in_reg_r <= 601'h1; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_reg_r <= _in_reg_T_1; // @[Reg.scala 29:22]
    end
    first_beat_reg <= reset | _GEN_2; // @[Reg.scala 28:{20,20}]
    if (reset) begin // @[RxPipelineHandler.scala 18:32]
      in_reg_used_reg <= 1'h0; // @[RxPipelineHandler.scala 18:32]
    end else begin
      in_reg_used_reg <= _GEN_4;
    end
    if (reset) begin // @[RxPipelineHandler.scala 192:35]
      previous_tdata_reg <= 24'h0; // @[RxPipelineHandler.scala 192:35]
    end else if (in_shake_hand) begin // @[RxPipelineHandler.scala 211:24]
      previous_tdata_reg <= in_reg_tdata[511:488]; // @[RxPipelineHandler.scala 212:24]
    end
    if (reset) begin // @[RxPipelineHandler.scala 210:33]
      search_found_reg <= 1'h0; // @[RxPipelineHandler.scala 210:33]
    end else if (in_shake_hand) begin // @[RxPipelineHandler.scala 211:24]
      if (first_beat_reg) begin // @[RxPipelineHandler.scala 213:27]
        search_found_reg <= search_or_result; // @[RxPipelineHandler.scala 214:24]
      end else begin
        search_found_reg <= search_found_reg | search_or_result; // @[RxPipelineHandler.scala 216:24]
      end
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
  in_reg_r = _RAND_0[600:0];
  _RAND_1 = {1{`RANDOM}};
  first_beat_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  in_reg_used_reg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  previous_tdata_reg = _RAND_3[23:0];
  _RAND_4 = {1{`RANDOM}};
  search_found_reg = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RxPipeline(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input          io_in_tuser,
  input  [15:0]  io_in_rx_info_tlen,
  input  [7:0]   io_in_extern_config_c2h_match_op,
  input  [31:0]  io_in_extern_config_c2h_match_arg1,
  input  [31:0]  io_in_extern_config_c2h_match_arg2,
  input  [31:0]  io_in_extern_config_c2h_match_arg3,
  input  [127:0] io_in_extern_config_aes_key,
  input  [3:0]   io_in_extern_config_round_time,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output         io_out_tuser,
  output [15:0]  io_out_rx_info_tlen,
  output [5:0]   io_out_rx_info_qid,
  output [31:0]  io_out_rx_info_ip_chksum,
  output [31:0]  io_out_rx_info_tcp_chksum
);
  wire  rx_chksum_verifier_clock; // @[RxPipeline.scala 41:34]
  wire  rx_chksum_verifier_reset; // @[RxPipeline.scala 41:34]
  wire [511:0] rx_chksum_verifier_io_in_tdata; // @[RxPipeline.scala 41:34]
  wire  rx_chksum_verifier_io_in_tvalid; // @[RxPipeline.scala 41:34]
  wire  rx_chksum_verifier_io_in_tready; // @[RxPipeline.scala 41:34]
  wire  rx_chksum_verifier_io_in_tlast; // @[RxPipeline.scala 41:34]
  wire  rx_chksum_verifier_io_in_tuser; // @[RxPipeline.scala 41:34]
  wire [15:0] rx_chksum_verifier_io_in_rx_info_tlen; // @[RxPipeline.scala 41:34]
  wire [7:0] rx_chksum_verifier_io_in_extern_config_c2h_match_op; // @[RxPipeline.scala 41:34]
  wire [31:0] rx_chksum_verifier_io_in_extern_config_c2h_match_arg1; // @[RxPipeline.scala 41:34]
  wire [31:0] rx_chksum_verifier_io_in_extern_config_c2h_match_arg2; // @[RxPipeline.scala 41:34]
  wire [31:0] rx_chksum_verifier_io_in_extern_config_c2h_match_arg3; // @[RxPipeline.scala 41:34]
  wire [127:0] rx_chksum_verifier_io_in_extern_config_aes_key; // @[RxPipeline.scala 41:34]
  wire [3:0] rx_chksum_verifier_io_in_extern_config_round_time; // @[RxPipeline.scala 41:34]
  wire [511:0] rx_chksum_verifier_io_out_tdata; // @[RxPipeline.scala 41:34]
  wire  rx_chksum_verifier_io_out_tvalid; // @[RxPipeline.scala 41:34]
  wire  rx_chksum_verifier_io_out_tready; // @[RxPipeline.scala 41:34]
  wire  rx_chksum_verifier_io_out_tlast; // @[RxPipeline.scala 41:34]
  wire  rx_chksum_verifier_io_out_tuser; // @[RxPipeline.scala 41:34]
  wire [15:0] rx_chksum_verifier_io_out_rx_info_tlen; // @[RxPipeline.scala 41:34]
  wire [5:0] rx_chksum_verifier_io_out_rx_info_qid; // @[RxPipeline.scala 41:34]
  wire [31:0] rx_chksum_verifier_io_out_rx_info_ip_chksum; // @[RxPipeline.scala 41:34]
  wire [31:0] rx_chksum_verifier_io_out_rx_info_tcp_chksum; // @[RxPipeline.scala 41:34]
  wire [7:0] rx_chksum_verifier_io_out_extern_config_c2h_match_op; // @[RxPipeline.scala 41:34]
  wire [31:0] rx_chksum_verifier_io_out_extern_config_c2h_match_arg1; // @[RxPipeline.scala 41:34]
  wire [31:0] rx_chksum_verifier_io_out_extern_config_c2h_match_arg2; // @[RxPipeline.scala 41:34]
  wire [31:0] rx_chksum_verifier_io_out_extern_config_c2h_match_arg3; // @[RxPipeline.scala 41:34]
  wire [127:0] rx_chksum_verifier_io_out_extern_config_aes_key; // @[RxPipeline.scala 41:34]
  wire [3:0] rx_chksum_verifier_io_out_extern_config_round_time; // @[RxPipeline.scala 41:34]
  wire  rx_rss_hash_filter_clock; // @[RxPipeline.scala 42:34]
  wire  rx_rss_hash_filter_reset; // @[RxPipeline.scala 42:34]
  wire [511:0] rx_rss_hash_filter_io_in_tdata; // @[RxPipeline.scala 42:34]
  wire  rx_rss_hash_filter_io_in_tvalid; // @[RxPipeline.scala 42:34]
  wire  rx_rss_hash_filter_io_in_tready; // @[RxPipeline.scala 42:34]
  wire  rx_rss_hash_filter_io_in_tlast; // @[RxPipeline.scala 42:34]
  wire  rx_rss_hash_filter_io_in_tuser; // @[RxPipeline.scala 42:34]
  wire [15:0] rx_rss_hash_filter_io_in_rx_info_tlen; // @[RxPipeline.scala 42:34]
  wire [5:0] rx_rss_hash_filter_io_in_rx_info_qid; // @[RxPipeline.scala 42:34]
  wire [31:0] rx_rss_hash_filter_io_in_rx_info_ip_chksum; // @[RxPipeline.scala 42:34]
  wire [31:0] rx_rss_hash_filter_io_in_rx_info_tcp_chksum; // @[RxPipeline.scala 42:34]
  wire [7:0] rx_rss_hash_filter_io_in_extern_config_c2h_match_op; // @[RxPipeline.scala 42:34]
  wire [31:0] rx_rss_hash_filter_io_in_extern_config_c2h_match_arg1; // @[RxPipeline.scala 42:34]
  wire [31:0] rx_rss_hash_filter_io_in_extern_config_c2h_match_arg2; // @[RxPipeline.scala 42:34]
  wire [31:0] rx_rss_hash_filter_io_in_extern_config_c2h_match_arg3; // @[RxPipeline.scala 42:34]
  wire [127:0] rx_rss_hash_filter_io_in_extern_config_aes_key; // @[RxPipeline.scala 42:34]
  wire [3:0] rx_rss_hash_filter_io_in_extern_config_round_time; // @[RxPipeline.scala 42:34]
  wire [511:0] rx_rss_hash_filter_io_out_tdata; // @[RxPipeline.scala 42:34]
  wire  rx_rss_hash_filter_io_out_tvalid; // @[RxPipeline.scala 42:34]
  wire  rx_rss_hash_filter_io_out_tready; // @[RxPipeline.scala 42:34]
  wire  rx_rss_hash_filter_io_out_tlast; // @[RxPipeline.scala 42:34]
  wire  rx_rss_hash_filter_io_out_tuser; // @[RxPipeline.scala 42:34]
  wire [15:0] rx_rss_hash_filter_io_out_rx_info_tlen; // @[RxPipeline.scala 42:34]
  wire [5:0] rx_rss_hash_filter_io_out_rx_info_qid; // @[RxPipeline.scala 42:34]
  wire [31:0] rx_rss_hash_filter_io_out_rx_info_ip_chksum; // @[RxPipeline.scala 42:34]
  wire [31:0] rx_rss_hash_filter_io_out_rx_info_tcp_chksum; // @[RxPipeline.scala 42:34]
  wire [7:0] rx_rss_hash_filter_io_out_extern_config_c2h_match_op; // @[RxPipeline.scala 42:34]
  wire [31:0] rx_rss_hash_filter_io_out_extern_config_c2h_match_arg1; // @[RxPipeline.scala 42:34]
  wire [31:0] rx_rss_hash_filter_io_out_extern_config_c2h_match_arg2; // @[RxPipeline.scala 42:34]
  wire [31:0] rx_rss_hash_filter_io_out_extern_config_c2h_match_arg3; // @[RxPipeline.scala 42:34]
  wire [127:0] rx_rss_hash_filter_io_out_extern_config_aes_key; // @[RxPipeline.scala 42:34]
  wire [3:0] rx_rss_hash_filter_io_out_extern_config_round_time; // @[RxPipeline.scala 42:34]
  wire  rx_match_filter_clock; // @[RxPipeline.scala 43:34]
  wire  rx_match_filter_reset; // @[RxPipeline.scala 43:34]
  wire [511:0] rx_match_filter_io_in_tdata; // @[RxPipeline.scala 43:34]
  wire  rx_match_filter_io_in_tvalid; // @[RxPipeline.scala 43:34]
  wire  rx_match_filter_io_in_tready; // @[RxPipeline.scala 43:34]
  wire  rx_match_filter_io_in_tlast; // @[RxPipeline.scala 43:34]
  wire  rx_match_filter_io_in_tuser; // @[RxPipeline.scala 43:34]
  wire [15:0] rx_match_filter_io_in_rx_info_tlen; // @[RxPipeline.scala 43:34]
  wire [5:0] rx_match_filter_io_in_rx_info_qid; // @[RxPipeline.scala 43:34]
  wire [31:0] rx_match_filter_io_in_rx_info_ip_chksum; // @[RxPipeline.scala 43:34]
  wire [31:0] rx_match_filter_io_in_rx_info_tcp_chksum; // @[RxPipeline.scala 43:34]
  wire [7:0] rx_match_filter_io_in_extern_config_c2h_match_op; // @[RxPipeline.scala 43:34]
  wire [31:0] rx_match_filter_io_in_extern_config_c2h_match_arg1; // @[RxPipeline.scala 43:34]
  wire [31:0] rx_match_filter_io_in_extern_config_c2h_match_arg2; // @[RxPipeline.scala 43:34]
  wire [31:0] rx_match_filter_io_in_extern_config_c2h_match_arg3; // @[RxPipeline.scala 43:34]
  wire [127:0] rx_match_filter_io_in_extern_config_aes_key; // @[RxPipeline.scala 43:34]
  wire [3:0] rx_match_filter_io_in_extern_config_round_time; // @[RxPipeline.scala 43:34]
  wire [511:0] rx_match_filter_io_out_tdata; // @[RxPipeline.scala 43:34]
  wire  rx_match_filter_io_out_tvalid; // @[RxPipeline.scala 43:34]
  wire  rx_match_filter_io_out_tready; // @[RxPipeline.scala 43:34]
  wire  rx_match_filter_io_out_tlast; // @[RxPipeline.scala 43:34]
  wire  rx_match_filter_io_out_tuser; // @[RxPipeline.scala 43:34]
  wire [15:0] rx_match_filter_io_out_rx_info_tlen; // @[RxPipeline.scala 43:34]
  wire [5:0] rx_match_filter_io_out_rx_info_qid; // @[RxPipeline.scala 43:34]
  wire [31:0] rx_match_filter_io_out_rx_info_ip_chksum; // @[RxPipeline.scala 43:34]
  wire [31:0] rx_match_filter_io_out_rx_info_tcp_chksum; // @[RxPipeline.scala 43:34]
  wire [7:0] rx_match_filter_io_out_extern_config_c2h_match_op; // @[RxPipeline.scala 43:34]
  wire [31:0] rx_match_filter_io_out_extern_config_c2h_match_arg1; // @[RxPipeline.scala 43:34]
  wire [31:0] rx_match_filter_io_out_extern_config_c2h_match_arg2; // @[RxPipeline.scala 43:34]
  wire  rx_REsearcher_clock; // @[RxPipeline.scala 44:34]
  wire  rx_REsearcher_reset; // @[RxPipeline.scala 44:34]
  wire [511:0] rx_REsearcher_io_in_tdata; // @[RxPipeline.scala 44:34]
  wire  rx_REsearcher_io_in_tvalid; // @[RxPipeline.scala 44:34]
  wire  rx_REsearcher_io_in_tready; // @[RxPipeline.scala 44:34]
  wire  rx_REsearcher_io_in_tlast; // @[RxPipeline.scala 44:34]
  wire  rx_REsearcher_io_in_tuser; // @[RxPipeline.scala 44:34]
  wire [15:0] rx_REsearcher_io_in_rx_info_tlen; // @[RxPipeline.scala 44:34]
  wire [5:0] rx_REsearcher_io_in_rx_info_qid; // @[RxPipeline.scala 44:34]
  wire [31:0] rx_REsearcher_io_in_rx_info_ip_chksum; // @[RxPipeline.scala 44:34]
  wire [31:0] rx_REsearcher_io_in_rx_info_tcp_chksum; // @[RxPipeline.scala 44:34]
  wire [7:0] rx_REsearcher_io_in_extern_config_c2h_match_op; // @[RxPipeline.scala 44:34]
  wire [31:0] rx_REsearcher_io_in_extern_config_c2h_match_arg1; // @[RxPipeline.scala 44:34]
  wire [31:0] rx_REsearcher_io_in_extern_config_c2h_match_arg2; // @[RxPipeline.scala 44:34]
  wire [511:0] rx_REsearcher_io_out_tdata; // @[RxPipeline.scala 44:34]
  wire  rx_REsearcher_io_out_tvalid; // @[RxPipeline.scala 44:34]
  wire  rx_REsearcher_io_out_tready; // @[RxPipeline.scala 44:34]
  wire  rx_REsearcher_io_out_tlast; // @[RxPipeline.scala 44:34]
  wire  rx_REsearcher_io_out_tuser; // @[RxPipeline.scala 44:34]
  wire [15:0] rx_REsearcher_io_out_rx_info_tlen; // @[RxPipeline.scala 44:34]
  wire [5:0] rx_REsearcher_io_out_rx_info_qid; // @[RxPipeline.scala 44:34]
  wire [31:0] rx_REsearcher_io_out_rx_info_ip_chksum; // @[RxPipeline.scala 44:34]
  wire [31:0] rx_REsearcher_io_out_rx_info_tcp_chksum; // @[RxPipeline.scala 44:34]
  RxChksumVerifier rx_chksum_verifier ( // @[RxPipeline.scala 41:34]
    .clock(rx_chksum_verifier_clock),
    .reset(rx_chksum_verifier_reset),
    .io_in_tdata(rx_chksum_verifier_io_in_tdata),
    .io_in_tvalid(rx_chksum_verifier_io_in_tvalid),
    .io_in_tready(rx_chksum_verifier_io_in_tready),
    .io_in_tlast(rx_chksum_verifier_io_in_tlast),
    .io_in_tuser(rx_chksum_verifier_io_in_tuser),
    .io_in_rx_info_tlen(rx_chksum_verifier_io_in_rx_info_tlen),
    .io_in_extern_config_c2h_match_op(rx_chksum_verifier_io_in_extern_config_c2h_match_op),
    .io_in_extern_config_c2h_match_arg1(rx_chksum_verifier_io_in_extern_config_c2h_match_arg1),
    .io_in_extern_config_c2h_match_arg2(rx_chksum_verifier_io_in_extern_config_c2h_match_arg2),
    .io_in_extern_config_c2h_match_arg3(rx_chksum_verifier_io_in_extern_config_c2h_match_arg3),
    .io_in_extern_config_aes_key(rx_chksum_verifier_io_in_extern_config_aes_key),
    .io_in_extern_config_round_time(rx_chksum_verifier_io_in_extern_config_round_time),
    .io_out_tdata(rx_chksum_verifier_io_out_tdata),
    .io_out_tvalid(rx_chksum_verifier_io_out_tvalid),
    .io_out_tready(rx_chksum_verifier_io_out_tready),
    .io_out_tlast(rx_chksum_verifier_io_out_tlast),
    .io_out_tuser(rx_chksum_verifier_io_out_tuser),
    .io_out_rx_info_tlen(rx_chksum_verifier_io_out_rx_info_tlen),
    .io_out_rx_info_qid(rx_chksum_verifier_io_out_rx_info_qid),
    .io_out_rx_info_ip_chksum(rx_chksum_verifier_io_out_rx_info_ip_chksum),
    .io_out_rx_info_tcp_chksum(rx_chksum_verifier_io_out_rx_info_tcp_chksum),
    .io_out_extern_config_c2h_match_op(rx_chksum_verifier_io_out_extern_config_c2h_match_op),
    .io_out_extern_config_c2h_match_arg1(rx_chksum_verifier_io_out_extern_config_c2h_match_arg1),
    .io_out_extern_config_c2h_match_arg2(rx_chksum_verifier_io_out_extern_config_c2h_match_arg2),
    .io_out_extern_config_c2h_match_arg3(rx_chksum_verifier_io_out_extern_config_c2h_match_arg3),
    .io_out_extern_config_aes_key(rx_chksum_verifier_io_out_extern_config_aes_key),
    .io_out_extern_config_round_time(rx_chksum_verifier_io_out_extern_config_round_time)
  );
  RxRSSHashFilter rx_rss_hash_filter ( // @[RxPipeline.scala 42:34]
    .clock(rx_rss_hash_filter_clock),
    .reset(rx_rss_hash_filter_reset),
    .io_in_tdata(rx_rss_hash_filter_io_in_tdata),
    .io_in_tvalid(rx_rss_hash_filter_io_in_tvalid),
    .io_in_tready(rx_rss_hash_filter_io_in_tready),
    .io_in_tlast(rx_rss_hash_filter_io_in_tlast),
    .io_in_tuser(rx_rss_hash_filter_io_in_tuser),
    .io_in_rx_info_tlen(rx_rss_hash_filter_io_in_rx_info_tlen),
    .io_in_rx_info_qid(rx_rss_hash_filter_io_in_rx_info_qid),
    .io_in_rx_info_ip_chksum(rx_rss_hash_filter_io_in_rx_info_ip_chksum),
    .io_in_rx_info_tcp_chksum(rx_rss_hash_filter_io_in_rx_info_tcp_chksum),
    .io_in_extern_config_c2h_match_op(rx_rss_hash_filter_io_in_extern_config_c2h_match_op),
    .io_in_extern_config_c2h_match_arg1(rx_rss_hash_filter_io_in_extern_config_c2h_match_arg1),
    .io_in_extern_config_c2h_match_arg2(rx_rss_hash_filter_io_in_extern_config_c2h_match_arg2),
    .io_in_extern_config_c2h_match_arg3(rx_rss_hash_filter_io_in_extern_config_c2h_match_arg3),
    .io_in_extern_config_aes_key(rx_rss_hash_filter_io_in_extern_config_aes_key),
    .io_in_extern_config_round_time(rx_rss_hash_filter_io_in_extern_config_round_time),
    .io_out_tdata(rx_rss_hash_filter_io_out_tdata),
    .io_out_tvalid(rx_rss_hash_filter_io_out_tvalid),
    .io_out_tready(rx_rss_hash_filter_io_out_tready),
    .io_out_tlast(rx_rss_hash_filter_io_out_tlast),
    .io_out_tuser(rx_rss_hash_filter_io_out_tuser),
    .io_out_rx_info_tlen(rx_rss_hash_filter_io_out_rx_info_tlen),
    .io_out_rx_info_qid(rx_rss_hash_filter_io_out_rx_info_qid),
    .io_out_rx_info_ip_chksum(rx_rss_hash_filter_io_out_rx_info_ip_chksum),
    .io_out_rx_info_tcp_chksum(rx_rss_hash_filter_io_out_rx_info_tcp_chksum),
    .io_out_extern_config_c2h_match_op(rx_rss_hash_filter_io_out_extern_config_c2h_match_op),
    .io_out_extern_config_c2h_match_arg1(rx_rss_hash_filter_io_out_extern_config_c2h_match_arg1),
    .io_out_extern_config_c2h_match_arg2(rx_rss_hash_filter_io_out_extern_config_c2h_match_arg2),
    .io_out_extern_config_c2h_match_arg3(rx_rss_hash_filter_io_out_extern_config_c2h_match_arg3),
    .io_out_extern_config_aes_key(rx_rss_hash_filter_io_out_extern_config_aes_key),
    .io_out_extern_config_round_time(rx_rss_hash_filter_io_out_extern_config_round_time)
  );
  RxMatchFilter rx_match_filter ( // @[RxPipeline.scala 43:34]
    .clock(rx_match_filter_clock),
    .reset(rx_match_filter_reset),
    .io_in_tdata(rx_match_filter_io_in_tdata),
    .io_in_tvalid(rx_match_filter_io_in_tvalid),
    .io_in_tready(rx_match_filter_io_in_tready),
    .io_in_tlast(rx_match_filter_io_in_tlast),
    .io_in_tuser(rx_match_filter_io_in_tuser),
    .io_in_rx_info_tlen(rx_match_filter_io_in_rx_info_tlen),
    .io_in_rx_info_qid(rx_match_filter_io_in_rx_info_qid),
    .io_in_rx_info_ip_chksum(rx_match_filter_io_in_rx_info_ip_chksum),
    .io_in_rx_info_tcp_chksum(rx_match_filter_io_in_rx_info_tcp_chksum),
    .io_in_extern_config_c2h_match_op(rx_match_filter_io_in_extern_config_c2h_match_op),
    .io_in_extern_config_c2h_match_arg1(rx_match_filter_io_in_extern_config_c2h_match_arg1),
    .io_in_extern_config_c2h_match_arg2(rx_match_filter_io_in_extern_config_c2h_match_arg2),
    .io_in_extern_config_c2h_match_arg3(rx_match_filter_io_in_extern_config_c2h_match_arg3),
    .io_in_extern_config_aes_key(rx_match_filter_io_in_extern_config_aes_key),
    .io_in_extern_config_round_time(rx_match_filter_io_in_extern_config_round_time),
    .io_out_tdata(rx_match_filter_io_out_tdata),
    .io_out_tvalid(rx_match_filter_io_out_tvalid),
    .io_out_tready(rx_match_filter_io_out_tready),
    .io_out_tlast(rx_match_filter_io_out_tlast),
    .io_out_tuser(rx_match_filter_io_out_tuser),
    .io_out_rx_info_tlen(rx_match_filter_io_out_rx_info_tlen),
    .io_out_rx_info_qid(rx_match_filter_io_out_rx_info_qid),
    .io_out_rx_info_ip_chksum(rx_match_filter_io_out_rx_info_ip_chksum),
    .io_out_rx_info_tcp_chksum(rx_match_filter_io_out_rx_info_tcp_chksum),
    .io_out_extern_config_c2h_match_op(rx_match_filter_io_out_extern_config_c2h_match_op),
    .io_out_extern_config_c2h_match_arg1(rx_match_filter_io_out_extern_config_c2h_match_arg1),
    .io_out_extern_config_c2h_match_arg2(rx_match_filter_io_out_extern_config_c2h_match_arg2)
  );
  RxRESearcher rx_REsearcher ( // @[RxPipeline.scala 44:34]
    .clock(rx_REsearcher_clock),
    .reset(rx_REsearcher_reset),
    .io_in_tdata(rx_REsearcher_io_in_tdata),
    .io_in_tvalid(rx_REsearcher_io_in_tvalid),
    .io_in_tready(rx_REsearcher_io_in_tready),
    .io_in_tlast(rx_REsearcher_io_in_tlast),
    .io_in_tuser(rx_REsearcher_io_in_tuser),
    .io_in_rx_info_tlen(rx_REsearcher_io_in_rx_info_tlen),
    .io_in_rx_info_qid(rx_REsearcher_io_in_rx_info_qid),
    .io_in_rx_info_ip_chksum(rx_REsearcher_io_in_rx_info_ip_chksum),
    .io_in_rx_info_tcp_chksum(rx_REsearcher_io_in_rx_info_tcp_chksum),
    .io_in_extern_config_c2h_match_op(rx_REsearcher_io_in_extern_config_c2h_match_op),
    .io_in_extern_config_c2h_match_arg1(rx_REsearcher_io_in_extern_config_c2h_match_arg1),
    .io_in_extern_config_c2h_match_arg2(rx_REsearcher_io_in_extern_config_c2h_match_arg2),
    .io_out_tdata(rx_REsearcher_io_out_tdata),
    .io_out_tvalid(rx_REsearcher_io_out_tvalid),
    .io_out_tready(rx_REsearcher_io_out_tready),
    .io_out_tlast(rx_REsearcher_io_out_tlast),
    .io_out_tuser(rx_REsearcher_io_out_tuser),
    .io_out_rx_info_tlen(rx_REsearcher_io_out_rx_info_tlen),
    .io_out_rx_info_qid(rx_REsearcher_io_out_rx_info_qid),
    .io_out_rx_info_ip_chksum(rx_REsearcher_io_out_rx_info_ip_chksum),
    .io_out_rx_info_tcp_chksum(rx_REsearcher_io_out_rx_info_tcp_chksum)
  );
  assign io_in_tready = rx_chksum_verifier_io_in_tready; // @[RxPipeline.scala 45:29]
  assign io_out_tdata = rx_REsearcher_io_out_tdata; // @[RxPipeline.scala 51:29]
  assign io_out_tvalid = rx_REsearcher_io_out_tvalid; // @[RxPipeline.scala 51:29]
  assign io_out_tlast = rx_REsearcher_io_out_tlast; // @[RxPipeline.scala 51:29]
  assign io_out_tuser = rx_REsearcher_io_out_tuser; // @[RxPipeline.scala 51:29]
  assign io_out_rx_info_tlen = rx_REsearcher_io_out_rx_info_tlen; // @[RxPipeline.scala 51:29]
  assign io_out_rx_info_qid = rx_REsearcher_io_out_rx_info_qid; // @[RxPipeline.scala 51:29]
  assign io_out_rx_info_ip_chksum = rx_REsearcher_io_out_rx_info_ip_chksum; // @[RxPipeline.scala 51:29]
  assign io_out_rx_info_tcp_chksum = rx_REsearcher_io_out_rx_info_tcp_chksum; // @[RxPipeline.scala 51:29]
  assign rx_chksum_verifier_clock = clock;
  assign rx_chksum_verifier_reset = reset;
  assign rx_chksum_verifier_io_in_tdata = io_in_tdata; // @[RxPipeline.scala 45:29]
  assign rx_chksum_verifier_io_in_tvalid = io_in_tvalid; // @[RxPipeline.scala 45:29]
  assign rx_chksum_verifier_io_in_tlast = io_in_tlast; // @[RxPipeline.scala 45:29]
  assign rx_chksum_verifier_io_in_tuser = io_in_tuser; // @[RxPipeline.scala 45:29]
  assign rx_chksum_verifier_io_in_rx_info_tlen = io_in_rx_info_tlen; // @[RxPipeline.scala 45:29]
  assign rx_chksum_verifier_io_in_extern_config_c2h_match_op = io_in_extern_config_c2h_match_op; // @[RxPipeline.scala 45:29]
  assign rx_chksum_verifier_io_in_extern_config_c2h_match_arg1 = io_in_extern_config_c2h_match_arg1; // @[RxPipeline.scala 45:29]
  assign rx_chksum_verifier_io_in_extern_config_c2h_match_arg2 = io_in_extern_config_c2h_match_arg2; // @[RxPipeline.scala 45:29]
  assign rx_chksum_verifier_io_in_extern_config_c2h_match_arg3 = io_in_extern_config_c2h_match_arg3; // @[RxPipeline.scala 45:29]
  assign rx_chksum_verifier_io_in_extern_config_aes_key = io_in_extern_config_aes_key; // @[RxPipeline.scala 45:29]
  assign rx_chksum_verifier_io_in_extern_config_round_time = io_in_extern_config_round_time; // @[RxPipeline.scala 45:29]
  assign rx_chksum_verifier_io_out_tready = rx_rss_hash_filter_io_in_tready; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_clock = clock;
  assign rx_rss_hash_filter_reset = reset;
  assign rx_rss_hash_filter_io_in_tdata = rx_chksum_verifier_io_out_tdata; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_in_tvalid = rx_chksum_verifier_io_out_tvalid; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_in_tlast = rx_chksum_verifier_io_out_tlast; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_in_tuser = rx_chksum_verifier_io_out_tuser; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_in_rx_info_tlen = rx_chksum_verifier_io_out_rx_info_tlen; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_in_rx_info_qid = rx_chksum_verifier_io_out_rx_info_qid; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_in_rx_info_ip_chksum = rx_chksum_verifier_io_out_rx_info_ip_chksum; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_in_rx_info_tcp_chksum = rx_chksum_verifier_io_out_rx_info_tcp_chksum; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_in_extern_config_c2h_match_op = rx_chksum_verifier_io_out_extern_config_c2h_match_op; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_in_extern_config_c2h_match_arg1 = rx_chksum_verifier_io_out_extern_config_c2h_match_arg1; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_in_extern_config_c2h_match_arg2 = rx_chksum_verifier_io_out_extern_config_c2h_match_arg2; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_in_extern_config_c2h_match_arg3 = rx_chksum_verifier_io_out_extern_config_c2h_match_arg3; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_in_extern_config_aes_key = rx_chksum_verifier_io_out_extern_config_aes_key; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_in_extern_config_round_time = rx_chksum_verifier_io_out_extern_config_round_time; // @[RxPipeline.scala 48:29]
  assign rx_rss_hash_filter_io_out_tready = rx_match_filter_io_in_tready; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_clock = clock;
  assign rx_match_filter_reset = reset;
  assign rx_match_filter_io_in_tdata = rx_rss_hash_filter_io_out_tdata; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_in_tvalid = rx_rss_hash_filter_io_out_tvalid; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_in_tlast = rx_rss_hash_filter_io_out_tlast; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_in_tuser = rx_rss_hash_filter_io_out_tuser; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_in_rx_info_tlen = rx_rss_hash_filter_io_out_rx_info_tlen; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_in_rx_info_qid = rx_rss_hash_filter_io_out_rx_info_qid; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_in_rx_info_ip_chksum = rx_rss_hash_filter_io_out_rx_info_ip_chksum; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_in_rx_info_tcp_chksum = rx_rss_hash_filter_io_out_rx_info_tcp_chksum; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_in_extern_config_c2h_match_op = rx_rss_hash_filter_io_out_extern_config_c2h_match_op; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_in_extern_config_c2h_match_arg1 = rx_rss_hash_filter_io_out_extern_config_c2h_match_arg1; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_in_extern_config_c2h_match_arg2 = rx_rss_hash_filter_io_out_extern_config_c2h_match_arg2; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_in_extern_config_c2h_match_arg3 = rx_rss_hash_filter_io_out_extern_config_c2h_match_arg3; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_in_extern_config_aes_key = rx_rss_hash_filter_io_out_extern_config_aes_key; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_in_extern_config_round_time = rx_rss_hash_filter_io_out_extern_config_round_time; // @[RxPipeline.scala 49:29]
  assign rx_match_filter_io_out_tready = rx_REsearcher_io_in_tready; // @[RxPipeline.scala 50:29]
  assign rx_REsearcher_clock = clock;
  assign rx_REsearcher_reset = reset;
  assign rx_REsearcher_io_in_tdata = rx_match_filter_io_out_tdata; // @[RxPipeline.scala 50:29]
  assign rx_REsearcher_io_in_tvalid = rx_match_filter_io_out_tvalid; // @[RxPipeline.scala 50:29]
  assign rx_REsearcher_io_in_tlast = rx_match_filter_io_out_tlast; // @[RxPipeline.scala 50:29]
  assign rx_REsearcher_io_in_tuser = rx_match_filter_io_out_tuser; // @[RxPipeline.scala 50:29]
  assign rx_REsearcher_io_in_rx_info_tlen = rx_match_filter_io_out_rx_info_tlen; // @[RxPipeline.scala 50:29]
  assign rx_REsearcher_io_in_rx_info_qid = rx_match_filter_io_out_rx_info_qid; // @[RxPipeline.scala 50:29]
  assign rx_REsearcher_io_in_rx_info_ip_chksum = rx_match_filter_io_out_rx_info_ip_chksum; // @[RxPipeline.scala 50:29]
  assign rx_REsearcher_io_in_rx_info_tcp_chksum = rx_match_filter_io_out_rx_info_tcp_chksum; // @[RxPipeline.scala 50:29]
  assign rx_REsearcher_io_in_extern_config_c2h_match_op = rx_match_filter_io_out_extern_config_c2h_match_op; // @[RxPipeline.scala 50:29]
  assign rx_REsearcher_io_in_extern_config_c2h_match_arg1 = rx_match_filter_io_out_extern_config_c2h_match_arg1; // @[RxPipeline.scala 50:29]
  assign rx_REsearcher_io_in_extern_config_c2h_match_arg2 = rx_match_filter_io_out_extern_config_c2h_match_arg2; // @[RxPipeline.scala 50:29]
  assign rx_REsearcher_io_out_tready = io_out_tready; // @[RxPipeline.scala 51:29]
endmodule
module RxBufferFifo(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input          io_in_tuser,
  input  [15:0]  io_in_rx_info_tlen,
  input  [5:0]   io_in_rx_info_qid,
  input  [31:0]  io_in_rx_info_ip_chksum,
  input  [31:0]  io_in_rx_info_tcp_chksum,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output [5:0]   io_out_qid,
  output [15:0]  io_out_tlen,
  input          io_reset_counter,
  output [31:0]  io_c2h_pack_counter,
  output [31:0]  io_c2h_err_counter
);
`ifdef RANDOMIZE_MEM_INIT
  reg [511:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
`endif // RANDOMIZE_REG_INIT
  reg [511:0] data_buf_reg [0:63]; // @[RxBufferFifo.scala 42:33]
  wire  data_buf_reg_io_out_tdata_MPORT_en; // @[RxBufferFifo.scala 42:33]
  wire [5:0] data_buf_reg_io_out_tdata_MPORT_addr; // @[RxBufferFifo.scala 42:33]
  wire [511:0] data_buf_reg_io_out_tdata_MPORT_data; // @[RxBufferFifo.scala 42:33]
  wire [511:0] data_buf_reg_MPORT_data; // @[RxBufferFifo.scala 42:33]
  wire [5:0] data_buf_reg_MPORT_addr; // @[RxBufferFifo.scala 42:33]
  wire  data_buf_reg_MPORT_mask; // @[RxBufferFifo.scala 42:33]
  wire  data_buf_reg_MPORT_en; // @[RxBufferFifo.scala 42:33]
  reg  data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  reg [5:0] data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[RxBufferFifo.scala 41:36]
  reg  info_buf_reg_0_valid; // @[RxBufferFifo.scala 45:29]
  reg [15:0] info_buf_reg_0_len; // @[RxBufferFifo.scala 45:29]
  reg [5:0] info_buf_reg_0_qid; // @[RxBufferFifo.scala 45:29]
  reg [31:0] info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 45:29]
  reg [31:0] info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 45:29]
  reg [5:0] info_buf_reg_0_burst; // @[RxBufferFifo.scala 45:29]
  reg  info_buf_reg_1_valid; // @[RxBufferFifo.scala 45:29]
  reg [15:0] info_buf_reg_1_len; // @[RxBufferFifo.scala 45:29]
  reg [5:0] info_buf_reg_1_qid; // @[RxBufferFifo.scala 45:29]
  reg [31:0] info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 45:29]
  reg [31:0] info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 45:29]
  reg [5:0] info_buf_reg_1_burst; // @[RxBufferFifo.scala 45:29]
  reg [6:0] wr_index_reg; // @[RxBufferFifo.scala 46:29]
  reg [6:0] rd_index_reg; // @[RxBufferFifo.scala 47:29]
  reg [6:0] wr_pos_reg; // @[RxBufferFifo.scala 48:29]
  reg [6:0] rd_pos_reg; // @[RxBufferFifo.scala 49:29]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[RxBufferFifo.scala 54:40]
  reg [31:0] pack_counter; // @[RxBufferFifo.scala 57:29]
  reg [31:0] err_counter; // @[RxBufferFifo.scala 58:28]
  reg [31:0] wrong_chksum_counter; // @[RxBufferFifo.scala 59:37]
  reg  is_overflowed; // @[RxBufferFifo.scala 64:30]
  wire [31:0] _pack_counter_T_1 = pack_counter + 32'h1; // @[RxBufferFifo.scala 75:36]
  wire [5:0] _GEN_2 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[RxBufferFifo.scala 77:{44,44}]
  wire [11:0] _GEN_274 = {wr_index_reg, 5'h0}; // @[RxBufferFifo.scala 86:38]
  wire [13:0] _wr_pos_reg_T = {{2'd0}, _GEN_274}; // @[RxBufferFifo.scala 86:38]
  wire  _GEN_3 = ~io_in_tlast | is_overflowed; // @[RxBufferFifo.scala 79:27 80:23 64:30]
  wire [13:0] _GEN_4 = ~io_in_tlast ? {{7'd0}, wr_pos_reg} : _wr_pos_reg_T; // @[RxBufferFifo.scala 79:27 48:29 86:22]
  wire [31:0] _err_counter_T_1 = err_counter + 32'h1; // @[RxBufferFifo.scala 89:34]
  wire [5:0] _GEN_5 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 45:29 90:{34,34}]
  wire [5:0] _GEN_6 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 45:29 90:{34,34}]
  wire [31:0] _GEN_7 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 45:29 90:{34,34}]
  wire [31:0] _GEN_8 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 45:29 90:{34,34}]
  wire [31:0] _GEN_9 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 45:29 90:{34,34}]
  wire [31:0] _GEN_10 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 45:29 90:{34,34}]
  wire [5:0] _GEN_11 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 45:29 90:{34,34}]
  wire [5:0] _GEN_12 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 45:29 90:{34,34}]
  wire [15:0] _GEN_13 = ~wr_index_reg[0] ? 16'h0 : info_buf_reg_0_len; // @[RxBufferFifo.scala 45:29 90:{34,34}]
  wire [15:0] _GEN_14 = wr_index_reg[0] ? 16'h0 : info_buf_reg_1_len; // @[RxBufferFifo.scala 45:29 90:{34,34}]
  wire  _GEN_15 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 45:29 90:{34,34}]
  wire  _GEN_16 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 45:29 90:{34,34}]
  wire  _T_6 = ~is_overflowed; // @[RxBufferFifo.scala 98:13]
  wire  _GEN_276 = ~wr_index_reg[0]; // @[RxBufferFifo.scala 101:{43,43} 45:29]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_2 + 6'h1; // @[RxBufferFifo.scala 104:78]
  wire [5:0] _GEN_41 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 104:{42,42} 45:29]
  wire [5:0] _GEN_42 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 104:{42,42} 45:29]
  wire  _GEN_43 = _GEN_276 | info_buf_reg_0_valid; // @[RxBufferFifo.scala 106:{44,44} 45:29]
  wire  _GEN_44 = wr_index_reg[0] | info_buf_reg_1_valid; // @[RxBufferFifo.scala 106:{44,44} 45:29]
  wire [31:0] _GEN_45 = ~wr_index_reg[0] ? io_in_rx_info_ip_chksum : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 108:{48,48} 45:29]
  wire [31:0] _GEN_46 = wr_index_reg[0] ? io_in_rx_info_ip_chksum : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 108:{48,48} 45:29]
  wire [31:0] _GEN_47 = ~wr_index_reg[0] ? io_in_rx_info_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 109:{49,49} 45:29]
  wire [31:0] _GEN_48 = wr_index_reg[0] ? io_in_rx_info_tcp_chksum : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 109:{49,49} 45:29]
  wire [15:0] _GEN_49 = ~wr_index_reg[0] ? io_in_rx_info_tlen : info_buf_reg_0_len; // @[RxBufferFifo.scala 110:{42,42} 45:29]
  wire [15:0] _GEN_50 = wr_index_reg[0] ? io_in_rx_info_tlen : info_buf_reg_1_len; // @[RxBufferFifo.scala 110:{42,42} 45:29]
  wire [5:0] _GEN_51 = ~wr_index_reg[0] ? io_in_rx_info_qid : info_buf_reg_0_qid; // @[RxBufferFifo.scala 111:{42,42} 45:29]
  wire [5:0] _GEN_52 = wr_index_reg[0] ? io_in_rx_info_qid : info_buf_reg_1_qid; // @[RxBufferFifo.scala 111:{42,42} 45:29]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[RxBufferFifo.scala 36:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[RxBufferFifo.scala 36:19]
  wire [11:0] _GEN_278 = {_wr_index_reg_T_2, 5'h0}; // @[RxBufferFifo.scala 113:49]
  wire [13:0] _wr_pos_reg_T_5 = {{2'd0}, _GEN_278}; // @[RxBufferFifo.scala 113:49]
  wire [6:0] _wr_pos_reg_T_7 = wr_pos_reg + 7'h1; // @[RxBufferFifo.scala 115:36]
  wire  _GEN_53 = io_in_tlast ? _GEN_43 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 105:28 45:29]
  wire  _GEN_54 = io_in_tlast ? _GEN_44 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 105:28 45:29]
  wire [31:0] _GEN_55 = io_in_tlast ? _GEN_45 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 105:28 45:29]
  wire [31:0] _GEN_56 = io_in_tlast ? _GEN_46 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 105:28 45:29]
  wire [31:0] _GEN_57 = io_in_tlast ? _GEN_47 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 105:28 45:29]
  wire [31:0] _GEN_58 = io_in_tlast ? _GEN_48 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 105:28 45:29]
  wire [15:0] _GEN_59 = io_in_tlast ? _GEN_49 : info_buf_reg_0_len; // @[RxBufferFifo.scala 105:28 45:29]
  wire [15:0] _GEN_60 = io_in_tlast ? _GEN_50 : info_buf_reg_1_len; // @[RxBufferFifo.scala 105:28 45:29]
  wire [5:0] _GEN_61 = io_in_tlast ? _GEN_51 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 105:28 45:29]
  wire [5:0] _GEN_62 = io_in_tlast ? _GEN_52 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 105:28 45:29]
  wire [6:0] _GEN_63 = io_in_tlast ? _wr_index_reg_T_2 : wr_index_reg; // @[RxBufferFifo.scala 105:28 112:24 46:29]
  wire [13:0] _GEN_64 = io_in_tlast ? _wr_pos_reg_T_5 : {{7'd0}, _wr_pos_reg_T_7}; // @[RxBufferFifo.scala 105:28 113:22 115:22]
  wire  _GEN_65 = io_in_tlast ? 1'h0 : is_overflowed; // @[RxBufferFifo.scala 117:32 119:25 64:30]
  wire [13:0] _GEN_66 = io_in_tlast ? _wr_pos_reg_T : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 117:32 120:22 48:29]
  wire [5:0] _GEN_74 = ~is_overflowed ? _GEN_41 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 98:28 45:29]
  wire [5:0] _GEN_75 = ~is_overflowed ? _GEN_42 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 98:28 45:29]
  wire  _GEN_76 = ~is_overflowed ? _GEN_53 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 98:28 45:29]
  wire  _GEN_77 = ~is_overflowed ? _GEN_54 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 98:28 45:29]
  wire [31:0] _GEN_78 = ~is_overflowed ? _GEN_55 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 98:28 45:29]
  wire [31:0] _GEN_79 = ~is_overflowed ? _GEN_56 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 98:28 45:29]
  wire [31:0] _GEN_80 = ~is_overflowed ? _GEN_57 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 98:28 45:29]
  wire [31:0] _GEN_81 = ~is_overflowed ? _GEN_58 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 98:28 45:29]
  wire [15:0] _GEN_82 = ~is_overflowed ? _GEN_59 : info_buf_reg_0_len; // @[RxBufferFifo.scala 98:28 45:29]
  wire [15:0] _GEN_83 = ~is_overflowed ? _GEN_60 : info_buf_reg_1_len; // @[RxBufferFifo.scala 98:28 45:29]
  wire [5:0] _GEN_84 = ~is_overflowed ? _GEN_61 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 98:28 45:29]
  wire [5:0] _GEN_85 = ~is_overflowed ? _GEN_62 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 98:28 45:29]
  wire [6:0] _GEN_86 = ~is_overflowed ? _GEN_63 : wr_index_reg; // @[RxBufferFifo.scala 98:28 46:29]
  wire [13:0] _GEN_87 = ~is_overflowed ? _GEN_64 : _GEN_66; // @[RxBufferFifo.scala 98:28]
  wire  _GEN_88 = ~is_overflowed ? is_overflowed : _GEN_65; // @[RxBufferFifo.scala 98:28 64:30]
  wire  _GEN_93 = io_in_tvalid & _T_6; // @[RxBufferFifo.scala 96:29 42:33]
  wire [5:0] _GEN_96 = io_in_tvalid ? _GEN_74 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 45:29 96:29]
  wire [5:0] _GEN_97 = io_in_tvalid ? _GEN_75 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 45:29 96:29]
  wire  _GEN_98 = io_in_tvalid ? _GEN_76 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 45:29 96:29]
  wire  _GEN_99 = io_in_tvalid ? _GEN_77 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 45:29 96:29]
  wire [31:0] _GEN_100 = io_in_tvalid ? _GEN_78 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 45:29 96:29]
  wire [31:0] _GEN_101 = io_in_tvalid ? _GEN_79 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 45:29 96:29]
  wire [31:0] _GEN_102 = io_in_tvalid ? _GEN_80 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 45:29 96:29]
  wire [31:0] _GEN_103 = io_in_tvalid ? _GEN_81 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 45:29 96:29]
  wire [15:0] _GEN_104 = io_in_tvalid ? _GEN_82 : info_buf_reg_0_len; // @[RxBufferFifo.scala 45:29 96:29]
  wire [15:0] _GEN_105 = io_in_tvalid ? _GEN_83 : info_buf_reg_1_len; // @[RxBufferFifo.scala 45:29 96:29]
  wire [5:0] _GEN_106 = io_in_tvalid ? _GEN_84 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 45:29 96:29]
  wire [5:0] _GEN_107 = io_in_tvalid ? _GEN_85 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 45:29 96:29]
  wire [6:0] _GEN_108 = io_in_tvalid ? _GEN_86 : wr_index_reg; // @[RxBufferFifo.scala 46:29 96:29]
  wire [13:0] _GEN_109 = io_in_tvalid ? _GEN_87 : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 48:29 96:29]
  wire  _GEN_110 = io_in_tvalid ? _GEN_88 : is_overflowed; // @[RxBufferFifo.scala 96:29 64:30]
  wire [13:0] _GEN_111 = io_in_tlast & io_in_tuser ? _wr_pos_reg_T : _GEN_109; // @[RxBufferFifo.scala 92:45 94:18]
  wire [5:0] _GEN_112 = io_in_tlast & io_in_tuser ? _GEN_5 : _GEN_96; // @[RxBufferFifo.scala 92:45]
  wire [5:0] _GEN_113 = io_in_tlast & io_in_tuser ? _GEN_6 : _GEN_97; // @[RxBufferFifo.scala 92:45]
  wire [31:0] _GEN_114 = io_in_tlast & io_in_tuser ? _GEN_7 : _GEN_102; // @[RxBufferFifo.scala 92:45]
  wire [31:0] _GEN_115 = io_in_tlast & io_in_tuser ? _GEN_8 : _GEN_103; // @[RxBufferFifo.scala 92:45]
  wire [31:0] _GEN_116 = io_in_tlast & io_in_tuser ? _GEN_9 : _GEN_100; // @[RxBufferFifo.scala 92:45]
  wire [31:0] _GEN_117 = io_in_tlast & io_in_tuser ? _GEN_10 : _GEN_101; // @[RxBufferFifo.scala 92:45]
  wire [5:0] _GEN_118 = io_in_tlast & io_in_tuser ? _GEN_11 : _GEN_106; // @[RxBufferFifo.scala 92:45]
  wire [5:0] _GEN_119 = io_in_tlast & io_in_tuser ? _GEN_12 : _GEN_107; // @[RxBufferFifo.scala 92:45]
  wire [15:0] _GEN_120 = io_in_tlast & io_in_tuser ? _GEN_13 : _GEN_104; // @[RxBufferFifo.scala 92:45]
  wire [15:0] _GEN_121 = io_in_tlast & io_in_tuser ? _GEN_14 : _GEN_105; // @[RxBufferFifo.scala 92:45]
  wire  _GEN_122 = io_in_tlast & io_in_tuser ? _GEN_15 : _GEN_98; // @[RxBufferFifo.scala 92:45]
  wire  _GEN_123 = io_in_tlast & io_in_tuser ? _GEN_16 : _GEN_99; // @[RxBufferFifo.scala 92:45]
  wire  _GEN_128 = io_in_tlast & io_in_tuser ? 1'h0 : _GEN_93; // @[RxBufferFifo.scala 42:33 92:45]
  wire [6:0] _GEN_131 = io_in_tlast & io_in_tuser ? wr_index_reg : _GEN_108; // @[RxBufferFifo.scala 46:29 92:45]
  wire  _GEN_132 = io_in_tlast & io_in_tuser ? is_overflowed : _GEN_110; // @[RxBufferFifo.scala 64:30 92:45]
  wire [13:0] _GEN_134 = _GEN_2 == 6'h20 ? _GEN_4 : _GEN_111; // @[RxBufferFifo.scala 77:61]
  wire [5:0] _GEN_136 = _GEN_2 == 6'h20 ? _GEN_5 : _GEN_112; // @[RxBufferFifo.scala 77:61]
  wire [5:0] _GEN_137 = _GEN_2 == 6'h20 ? _GEN_6 : _GEN_113; // @[RxBufferFifo.scala 77:61]
  wire [31:0] _GEN_138 = _GEN_2 == 6'h20 ? _GEN_7 : _GEN_114; // @[RxBufferFifo.scala 77:61]
  wire [31:0] _GEN_139 = _GEN_2 == 6'h20 ? _GEN_8 : _GEN_115; // @[RxBufferFifo.scala 77:61]
  wire [31:0] _GEN_140 = _GEN_2 == 6'h20 ? _GEN_9 : _GEN_116; // @[RxBufferFifo.scala 77:61]
  wire [31:0] _GEN_141 = _GEN_2 == 6'h20 ? _GEN_10 : _GEN_117; // @[RxBufferFifo.scala 77:61]
  wire [5:0] _GEN_142 = _GEN_2 == 6'h20 ? _GEN_11 : _GEN_118; // @[RxBufferFifo.scala 77:61]
  wire [5:0] _GEN_143 = _GEN_2 == 6'h20 ? _GEN_12 : _GEN_119; // @[RxBufferFifo.scala 77:61]
  wire [15:0] _GEN_144 = _GEN_2 == 6'h20 ? _GEN_13 : _GEN_120; // @[RxBufferFifo.scala 77:61]
  wire [15:0] _GEN_145 = _GEN_2 == 6'h20 ? _GEN_14 : _GEN_121; // @[RxBufferFifo.scala 77:61]
  wire  _GEN_146 = _GEN_2 == 6'h20 ? _GEN_15 : _GEN_122; // @[RxBufferFifo.scala 77:61]
  wire  _GEN_147 = _GEN_2 == 6'h20 ? _GEN_16 : _GEN_123; // @[RxBufferFifo.scala 77:61]
  wire  _GEN_152 = _GEN_2 == 6'h20 ? 1'h0 : _GEN_128; // @[RxBufferFifo.scala 42:33 77:61]
  wire [13:0] _GEN_158 = in_shake_hand ? _GEN_134 : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 48:29 73:29]
  wire [5:0] _GEN_160 = in_shake_hand ? _GEN_136 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 45:29 73:29]
  wire [5:0] _GEN_161 = in_shake_hand ? _GEN_137 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 45:29 73:29]
  wire [31:0] _GEN_162 = in_shake_hand ? _GEN_138 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 45:29 73:29]
  wire [31:0] _GEN_163 = in_shake_hand ? _GEN_139 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 45:29 73:29]
  wire [31:0] _GEN_164 = in_shake_hand ? _GEN_140 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 45:29 73:29]
  wire [31:0] _GEN_165 = in_shake_hand ? _GEN_141 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 45:29 73:29]
  wire [5:0] _GEN_166 = in_shake_hand ? _GEN_142 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 45:29 73:29]
  wire [5:0] _GEN_167 = in_shake_hand ? _GEN_143 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 45:29 73:29]
  wire [15:0] _GEN_168 = in_shake_hand ? _GEN_144 : info_buf_reg_0_len; // @[RxBufferFifo.scala 45:29 73:29]
  wire [15:0] _GEN_169 = in_shake_hand ? _GEN_145 : info_buf_reg_1_len; // @[RxBufferFifo.scala 45:29 73:29]
  wire  _GEN_170 = in_shake_hand ? _GEN_146 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 45:29 73:29]
  wire  _GEN_171 = in_shake_hand ? _GEN_147 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 45:29 73:29]
  wire  _GEN_176 = in_shake_hand & _GEN_152; // @[RxBufferFifo.scala 73:29 42:33]
  wire [13:0] _GEN_183 = io_reset_counter ? {{7'd0}, wr_pos_reg} : _GEN_158; // @[RxBufferFifo.scala 69:26 48:29]
  wire [5:0] _GEN_184 = io_reset_counter ? info_buf_reg_0_burst : _GEN_160; // @[RxBufferFifo.scala 69:26 45:29]
  wire [5:0] _GEN_185 = io_reset_counter ? info_buf_reg_1_burst : _GEN_161; // @[RxBufferFifo.scala 69:26 45:29]
  wire [31:0] _GEN_186 = io_reset_counter ? info_buf_reg_0_tcp_chksum : _GEN_162; // @[RxBufferFifo.scala 69:26 45:29]
  wire [31:0] _GEN_187 = io_reset_counter ? info_buf_reg_1_tcp_chksum : _GEN_163; // @[RxBufferFifo.scala 69:26 45:29]
  wire [31:0] _GEN_188 = io_reset_counter ? info_buf_reg_0_ip_chksum : _GEN_164; // @[RxBufferFifo.scala 69:26 45:29]
  wire [31:0] _GEN_189 = io_reset_counter ? info_buf_reg_1_ip_chksum : _GEN_165; // @[RxBufferFifo.scala 69:26 45:29]
  wire [5:0] _GEN_190 = io_reset_counter ? info_buf_reg_0_qid : _GEN_166; // @[RxBufferFifo.scala 69:26 45:29]
  wire [5:0] _GEN_191 = io_reset_counter ? info_buf_reg_1_qid : _GEN_167; // @[RxBufferFifo.scala 69:26 45:29]
  wire [15:0] _GEN_192 = io_reset_counter ? info_buf_reg_0_len : _GEN_168; // @[RxBufferFifo.scala 69:26 45:29]
  wire [15:0] _GEN_193 = io_reset_counter ? info_buf_reg_1_len : _GEN_169; // @[RxBufferFifo.scala 69:26 45:29]
  wire  _GEN_194 = io_reset_counter ? info_buf_reg_0_valid : _GEN_170; // @[RxBufferFifo.scala 69:26 45:29]
  wire  _GEN_195 = io_reset_counter ? info_buf_reg_1_valid : _GEN_171; // @[RxBufferFifo.scala 69:26 45:29]
  wire  _GEN_205 = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[RxBufferFifo.scala 126:{38,38}]
  wire  out_shake_hand = io_out_tready & _GEN_205; // @[RxBufferFifo.scala 126:38]
  wire [31:0] _GEN_207 = rd_index_reg[0] ? info_buf_reg_1_ip_chksum : info_buf_reg_0_ip_chksum; // @[Misc.scala 14:{10,10}]
  wire [15:0] _mid_ip_chksum_T_6 = _GEN_207[31:16] + _GEN_207[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _mid_ip_chksum_T_8 = _GEN_207[31:16] > 16'h0 ? _mid_ip_chksum_T_6 : _GEN_207[15:0]; // @[Misc.scala 14:8]
  wire [31:0] _GEN_209 = rd_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[Misc.scala 14:{10,10}]
  wire [15:0] _mid_tcp_chksum_T_6 = _GEN_209[31:16] + _GEN_209[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _mid_tcp_chksum_T_8 = _GEN_209[31:16] > 16'h0 ? _mid_tcp_chksum_T_6 : _GEN_209[15:0]; // @[Misc.scala 14:8]
  wire [31:0] mid_ip_chksum = {{16'd0}, _mid_ip_chksum_T_8}; // @[RxBufferFifo.scala 129:27 130:17]
  wire [15:0] _end_ip_chksum_T_5 = mid_ip_chksum[31:16] + mid_ip_chksum[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _end_ip_chksum_T_7 = mid_ip_chksum[31:16] > 16'h0 ? _end_ip_chksum_T_5 : mid_ip_chksum[15:0]; // @[Misc.scala 14:8]
  wire [15:0] end_ip_chksum = ~_end_ip_chksum_T_7; // @[RxBufferFifo.scala 135:20]
  wire [31:0] mid_tcp_chksum = {{16'd0}, _mid_tcp_chksum_T_8}; // @[RxBufferFifo.scala 131:28 132:18]
  wire [15:0] _end_tcp_chksum_T_5 = mid_tcp_chksum[31:16] + mid_tcp_chksum[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _end_tcp_chksum_T_7 = mid_tcp_chksum[31:16] > 16'h0 ? _end_tcp_chksum_T_5 : mid_tcp_chksum[15:0]; // @[Misc.scala 14:8]
  wire [15:0] end_tcp_chksum = ~_end_tcp_chksum_T_7; // @[RxBufferFifo.scala 137:21]
  wire  _io_out_tvalid_T_1 = end_ip_chksum == 16'h0; // @[RxBufferFifo.scala 142:71]
  wire  _io_out_tvalid_T_3 = end_tcp_chksum == 16'h0; // @[RxBufferFifo.scala 142:99]
  wire [5:0] _GEN_217 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[RxBufferFifo.scala 143:{89,89}]
  wire  _io_out_tlast_T_2 = _GEN_217 == 6'h1; // @[RxBufferFifo.scala 143:89]
  wire  _wrong_chksum_counter_T_4 = io_out_tlast & ~(_io_out_tvalid_T_1 & _io_out_tvalid_T_3); // @[RxBufferFifo.scala 144:64]
  wire [31:0] _GEN_280 = {{31'd0}, _wrong_chksum_counter_T_4}; // @[RxBufferFifo.scala 144:48]
  wire [31:0] _wrong_chksum_counter_T_6 = wrong_chksum_counter + _GEN_280; // @[RxBufferFifo.scala 144:48]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[RxBufferFifo.scala 36:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[RxBufferFifo.scala 36:19]
  wire [11:0] _GEN_281 = {_rd_pos_next_T_2, 5'h0}; // @[RxBufferFifo.scala 162:44]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_281}; // @[RxBufferFifo.scala 162:44]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[RxBufferFifo.scala 164:31]
  wire [13:0] _GEN_273 = _io_out_tlast_T_2 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[RxBufferFifo.scala 161:51 162:17 164:17]
  wire [6:0] rd_pos_next = _GEN_273[6:0];
  wire [6:0] _io_out_tdata_T = out_shake_hand ? rd_pos_next : rd_pos_reg; // @[RxBufferFifo.scala 147:36]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_217 - 6'h1; // @[RxBufferFifo.scala 157:78]
  wire [13:0] _GEN_282 = reset ? 14'h0 : _GEN_183; // @[RxBufferFifo.scala 48:{29,29}]
  assign data_buf_reg_io_out_tdata_MPORT_en = data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_addr = data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_data = data_buf_reg[data_buf_reg_io_out_tdata_MPORT_addr]; // @[RxBufferFifo.scala 42:33]
  assign data_buf_reg_MPORT_data = io_in_tdata;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_reset_counter ? 1'h0 : _GEN_176;
  assign io_in_tready = ~buf_full; // @[RxBufferFifo.scala 56:19]
  assign io_out_tdata = data_buf_reg_io_out_tdata_MPORT_data; // @[RxBufferFifo.scala 147:17]
  assign io_out_tvalid = _GEN_205 & end_ip_chksum == 16'h0 & end_tcp_chksum == 16'h0; // @[RxBufferFifo.scala 142:80]
  assign io_out_tlast = _GEN_205 & _GEN_217 == 6'h1; // @[RxBufferFifo.scala 143:53]
  assign io_out_qid = rd_index_reg[0] ? info_buf_reg_1_qid : info_buf_reg_0_qid; // @[RxBufferFifo.scala 139:{17,17}]
  assign io_out_tlen = rd_index_reg[0] ? info_buf_reg_1_len : info_buf_reg_0_len; // @[RxBufferFifo.scala 140:{17,17}]
  assign io_c2h_pack_counter = pack_counter; // @[RxBufferFifo.scala 61:23]
  assign io_c2h_err_counter = err_counter + wrong_chksum_counter; // @[RxBufferFifo.scala 62:37]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[RxBufferFifo.scala 42:33]
    end
    data_buf_reg_io_out_tdata_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      data_buf_reg_io_out_tdata_MPORT_addr_pipe_0 <= _io_out_tdata_T[5:0];
    end
    if (reset) begin // @[RxBufferFifo.scala 45:29]
      info_buf_reg_0_valid <= 1'h0; // @[RxBufferFifo.scala 45:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 149:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 153:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 154:36]
          info_buf_reg_0_valid <= 1'h0; // @[RxBufferFifo.scala 154:36]
        end else begin
          info_buf_reg_0_valid <= _GEN_194;
        end
      end else begin
        info_buf_reg_0_valid <= _GEN_194;
      end
    end else begin
      info_buf_reg_0_valid <= _GEN_194;
    end
    if (reset) begin // @[RxBufferFifo.scala 45:29]
      info_buf_reg_0_len <= 16'h0; // @[RxBufferFifo.scala 45:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 149:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 153:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 154:36]
          info_buf_reg_0_len <= 16'h0; // @[RxBufferFifo.scala 154:36]
        end else begin
          info_buf_reg_0_len <= _GEN_192;
        end
      end else begin
        info_buf_reg_0_len <= _GEN_192;
      end
    end else begin
      info_buf_reg_0_len <= _GEN_192;
    end
    if (reset) begin // @[RxBufferFifo.scala 45:29]
      info_buf_reg_0_qid <= 6'h0; // @[RxBufferFifo.scala 45:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 149:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 153:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 154:36]
          info_buf_reg_0_qid <= 6'h0; // @[RxBufferFifo.scala 154:36]
        end else begin
          info_buf_reg_0_qid <= _GEN_190;
        end
      end else begin
        info_buf_reg_0_qid <= _GEN_190;
      end
    end else begin
      info_buf_reg_0_qid <= _GEN_190;
    end
    if (reset) begin // @[RxBufferFifo.scala 45:29]
      info_buf_reg_0_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 45:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 149:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 153:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 154:36]
          info_buf_reg_0_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 154:36]
        end else begin
          info_buf_reg_0_ip_chksum <= _GEN_188;
        end
      end else begin
        info_buf_reg_0_ip_chksum <= _GEN_188;
      end
    end else begin
      info_buf_reg_0_ip_chksum <= _GEN_188;
    end
    if (reset) begin // @[RxBufferFifo.scala 45:29]
      info_buf_reg_0_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 45:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 149:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 153:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 154:36]
          info_buf_reg_0_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 154:36]
        end else begin
          info_buf_reg_0_tcp_chksum <= _GEN_186;
        end
      end else begin
        info_buf_reg_0_tcp_chksum <= _GEN_186;
      end
    end else begin
      info_buf_reg_0_tcp_chksum <= _GEN_186;
    end
    if (reset) begin // @[RxBufferFifo.scala 45:29]
      info_buf_reg_0_burst <= 6'h0; // @[RxBufferFifo.scala 45:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 149:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 153:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 154:36]
          info_buf_reg_0_burst <= 6'h0; // @[RxBufferFifo.scala 154:36]
        end else begin
          info_buf_reg_0_burst <= _GEN_184;
        end
      end else if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 157:42]
        info_buf_reg_0_burst <= _info_buf_reg_burst_T_5; // @[RxBufferFifo.scala 157:42]
      end else begin
        info_buf_reg_0_burst <= _GEN_184;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_184;
    end
    if (reset) begin // @[RxBufferFifo.scala 45:29]
      info_buf_reg_1_valid <= 1'h0; // @[RxBufferFifo.scala 45:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 149:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 153:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 154:36]
          info_buf_reg_1_valid <= 1'h0; // @[RxBufferFifo.scala 154:36]
        end else begin
          info_buf_reg_1_valid <= _GEN_195;
        end
      end else begin
        info_buf_reg_1_valid <= _GEN_195;
      end
    end else begin
      info_buf_reg_1_valid <= _GEN_195;
    end
    if (reset) begin // @[RxBufferFifo.scala 45:29]
      info_buf_reg_1_len <= 16'h0; // @[RxBufferFifo.scala 45:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 149:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 153:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 154:36]
          info_buf_reg_1_len <= 16'h0; // @[RxBufferFifo.scala 154:36]
        end else begin
          info_buf_reg_1_len <= _GEN_193;
        end
      end else begin
        info_buf_reg_1_len <= _GEN_193;
      end
    end else begin
      info_buf_reg_1_len <= _GEN_193;
    end
    if (reset) begin // @[RxBufferFifo.scala 45:29]
      info_buf_reg_1_qid <= 6'h0; // @[RxBufferFifo.scala 45:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 149:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 153:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 154:36]
          info_buf_reg_1_qid <= 6'h0; // @[RxBufferFifo.scala 154:36]
        end else begin
          info_buf_reg_1_qid <= _GEN_191;
        end
      end else begin
        info_buf_reg_1_qid <= _GEN_191;
      end
    end else begin
      info_buf_reg_1_qid <= _GEN_191;
    end
    if (reset) begin // @[RxBufferFifo.scala 45:29]
      info_buf_reg_1_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 45:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 149:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 153:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 154:36]
          info_buf_reg_1_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 154:36]
        end else begin
          info_buf_reg_1_ip_chksum <= _GEN_189;
        end
      end else begin
        info_buf_reg_1_ip_chksum <= _GEN_189;
      end
    end else begin
      info_buf_reg_1_ip_chksum <= _GEN_189;
    end
    if (reset) begin // @[RxBufferFifo.scala 45:29]
      info_buf_reg_1_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 45:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 149:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 153:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 154:36]
          info_buf_reg_1_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 154:36]
        end else begin
          info_buf_reg_1_tcp_chksum <= _GEN_187;
        end
      end else begin
        info_buf_reg_1_tcp_chksum <= _GEN_187;
      end
    end else begin
      info_buf_reg_1_tcp_chksum <= _GEN_187;
    end
    if (reset) begin // @[RxBufferFifo.scala 45:29]
      info_buf_reg_1_burst <= 6'h0; // @[RxBufferFifo.scala 45:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 149:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 153:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 154:36]
          info_buf_reg_1_burst <= 6'h0; // @[RxBufferFifo.scala 154:36]
        end else begin
          info_buf_reg_1_burst <= _GEN_185;
        end
      end else if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 157:42]
        info_buf_reg_1_burst <= _info_buf_reg_burst_T_5; // @[RxBufferFifo.scala 157:42]
      end else begin
        info_buf_reg_1_burst <= _GEN_185;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_185;
    end
    if (reset) begin // @[RxBufferFifo.scala 46:29]
      wr_index_reg <= 7'h0; // @[RxBufferFifo.scala 46:29]
    end else if (!(io_reset_counter)) begin // @[RxBufferFifo.scala 69:26]
      if (in_shake_hand) begin // @[RxBufferFifo.scala 73:29]
        if (!(_GEN_2 == 6'h20)) begin // @[RxBufferFifo.scala 77:61]
          wr_index_reg <= _GEN_131;
        end
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 47:29]
      rd_index_reg <= 7'h0; // @[RxBufferFifo.scala 47:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 149:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 153:55]
        rd_index_reg <= _rd_pos_next_T_2; // @[RxBufferFifo.scala 155:22]
      end
    end
    wr_pos_reg <= _GEN_282[6:0]; // @[RxBufferFifo.scala 48:{29,29}]
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      rd_pos_reg <= 7'h0; // @[RxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:36]
      rd_pos_reg <= rd_pos_next;
    end
    if (reset) begin // @[RxBufferFifo.scala 57:29]
      pack_counter <= 32'h0; // @[RxBufferFifo.scala 57:29]
    end else if (io_reset_counter) begin // @[RxBufferFifo.scala 69:26]
      pack_counter <= 32'h0; // @[RxBufferFifo.scala 70:18]
    end else if (in_shake_hand) begin // @[RxBufferFifo.scala 73:29]
      if (io_in_tlast) begin // @[RxBufferFifo.scala 74:24]
        pack_counter <= _pack_counter_T_1; // @[RxBufferFifo.scala 75:20]
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 58:28]
      err_counter <= 32'h0; // @[RxBufferFifo.scala 58:28]
    end else if (io_reset_counter) begin // @[RxBufferFifo.scala 69:26]
      err_counter <= 32'h0; // @[RxBufferFifo.scala 71:17]
    end else if (in_shake_hand) begin // @[RxBufferFifo.scala 73:29]
      if (_GEN_2 == 6'h20) begin // @[RxBufferFifo.scala 77:61]
        err_counter <= _err_counter_T_1; // @[RxBufferFifo.scala 89:19]
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 59:37]
      wrong_chksum_counter <= 32'h0; // @[RxBufferFifo.scala 59:37]
    end else begin
      wrong_chksum_counter <= _wrong_chksum_counter_T_6; // @[RxBufferFifo.scala 144:24]
    end
    if (reset) begin // @[RxBufferFifo.scala 64:30]
      is_overflowed <= 1'h0; // @[RxBufferFifo.scala 64:30]
    end else if (!(io_reset_counter)) begin // @[RxBufferFifo.scala 69:26]
      if (in_shake_hand) begin // @[RxBufferFifo.scala 73:29]
        if (_GEN_2 == 6'h20) begin // @[RxBufferFifo.scala 77:61]
          is_overflowed <= _GEN_3;
        end else begin
          is_overflowed <= _GEN_132;
        end
      end
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {16{`RANDOM}};
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    data_buf_reg[initvar] = _RAND_0[511:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  data_buf_reg_io_out_tdata_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  data_buf_reg_io_out_tdata_MPORT_addr_pipe_0 = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  info_buf_reg_0_valid = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  info_buf_reg_0_len = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  info_buf_reg_0_qid = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  info_buf_reg_0_ip_chksum = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  info_buf_reg_0_tcp_chksum = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  info_buf_reg_0_burst = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  info_buf_reg_1_valid = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  info_buf_reg_1_len = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  info_buf_reg_1_qid = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  info_buf_reg_1_ip_chksum = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  info_buf_reg_1_tcp_chksum = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  info_buf_reg_1_burst = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  wr_index_reg = _RAND_15[6:0];
  _RAND_16 = {1{`RANDOM}};
  rd_index_reg = _RAND_16[6:0];
  _RAND_17 = {1{`RANDOM}};
  wr_pos_reg = _RAND_17[6:0];
  _RAND_18 = {1{`RANDOM}};
  rd_pos_reg = _RAND_18[6:0];
  _RAND_19 = {1{`RANDOM}};
  pack_counter = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  err_counter = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  wrong_chksum_counter = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  is_overflowed = _RAND_22[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RxHandler(
  input          clock,
  input          reset,
  input  [511:0] io_CMAC_out_tdata,
  input          io_CMAC_out_tvalid,
  output         io_CMAC_out_tready,
  input          io_CMAC_out_tlast,
  input          io_CMAC_out_tuser,
  input  [63:0]  io_CMAC_out_tkeep,
  output [511:0] io_QDMA_c2h_stub_in_tdata,
  output         io_QDMA_c2h_stub_in_tvalid,
  input          io_QDMA_c2h_stub_in_tready,
  output         io_QDMA_c2h_stub_in_tlast,
  output         io_QDMA_c2h_stub_in_tuser,
  input          io_reset_counter,
  output [31:0]  io_c2h_pack_counter,
  output [31:0]  io_c2h_err_counter,
  input  [7:0]   io_extern_config_c2h_match_op,
  input  [31:0]  io_extern_config_c2h_match_arg1,
  input  [31:0]  io_extern_config_c2h_match_arg2,
  input  [31:0]  io_extern_config_c2h_match_arg3,
  input  [127:0] io_extern_config_aes_key,
  input  [3:0]   io_extern_config_round_time
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  rx_converter_clock; // @[RxHandler.scala 42:28]
  wire  rx_converter_reset; // @[RxHandler.scala 42:28]
  wire [511:0] rx_converter_io_in_tdata; // @[RxHandler.scala 42:28]
  wire  rx_converter_io_in_tvalid; // @[RxHandler.scala 42:28]
  wire  rx_converter_io_in_tready; // @[RxHandler.scala 42:28]
  wire  rx_converter_io_in_tlast; // @[RxHandler.scala 42:28]
  wire  rx_converter_io_in_tuser; // @[RxHandler.scala 42:28]
  wire [63:0] rx_converter_io_in_tkeep; // @[RxHandler.scala 42:28]
  wire [511:0] rx_converter_io_out_tdata; // @[RxHandler.scala 42:28]
  wire  rx_converter_io_out_tvalid; // @[RxHandler.scala 42:28]
  wire  rx_converter_io_out_tready; // @[RxHandler.scala 42:28]
  wire  rx_converter_io_out_tlast; // @[RxHandler.scala 42:28]
  wire  rx_converter_io_out_tuser; // @[RxHandler.scala 42:28]
  wire [15:0] rx_converter_io_out_rx_info_tlen; // @[RxHandler.scala 42:28]
  wire [7:0] rx_converter_io_out_extern_config_c2h_match_op; // @[RxHandler.scala 42:28]
  wire [31:0] rx_converter_io_out_extern_config_c2h_match_arg1; // @[RxHandler.scala 42:28]
  wire [31:0] rx_converter_io_out_extern_config_c2h_match_arg2; // @[RxHandler.scala 42:28]
  wire [31:0] rx_converter_io_out_extern_config_c2h_match_arg3; // @[RxHandler.scala 42:28]
  wire [127:0] rx_converter_io_out_extern_config_aes_key; // @[RxHandler.scala 42:28]
  wire [3:0] rx_converter_io_out_extern_config_round_time; // @[RxHandler.scala 42:28]
  wire [7:0] rx_converter_io_extern_config_c2h_match_op; // @[RxHandler.scala 42:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg1; // @[RxHandler.scala 42:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg2; // @[RxHandler.scala 42:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg3; // @[RxHandler.scala 42:28]
  wire [127:0] rx_converter_io_extern_config_aes_key; // @[RxHandler.scala 42:28]
  wire [3:0] rx_converter_io_extern_config_round_time; // @[RxHandler.scala 42:28]
  wire  rx_pipeline_clock; // @[RxHandler.scala 46:27]
  wire  rx_pipeline_reset; // @[RxHandler.scala 46:27]
  wire [511:0] rx_pipeline_io_in_tdata; // @[RxHandler.scala 46:27]
  wire  rx_pipeline_io_in_tvalid; // @[RxHandler.scala 46:27]
  wire  rx_pipeline_io_in_tready; // @[RxHandler.scala 46:27]
  wire  rx_pipeline_io_in_tlast; // @[RxHandler.scala 46:27]
  wire  rx_pipeline_io_in_tuser; // @[RxHandler.scala 46:27]
  wire [15:0] rx_pipeline_io_in_rx_info_tlen; // @[RxHandler.scala 46:27]
  wire [7:0] rx_pipeline_io_in_extern_config_c2h_match_op; // @[RxHandler.scala 46:27]
  wire [31:0] rx_pipeline_io_in_extern_config_c2h_match_arg1; // @[RxHandler.scala 46:27]
  wire [31:0] rx_pipeline_io_in_extern_config_c2h_match_arg2; // @[RxHandler.scala 46:27]
  wire [31:0] rx_pipeline_io_in_extern_config_c2h_match_arg3; // @[RxHandler.scala 46:27]
  wire [127:0] rx_pipeline_io_in_extern_config_aes_key; // @[RxHandler.scala 46:27]
  wire [3:0] rx_pipeline_io_in_extern_config_round_time; // @[RxHandler.scala 46:27]
  wire [511:0] rx_pipeline_io_out_tdata; // @[RxHandler.scala 46:27]
  wire  rx_pipeline_io_out_tvalid; // @[RxHandler.scala 46:27]
  wire  rx_pipeline_io_out_tready; // @[RxHandler.scala 46:27]
  wire  rx_pipeline_io_out_tlast; // @[RxHandler.scala 46:27]
  wire  rx_pipeline_io_out_tuser; // @[RxHandler.scala 46:27]
  wire [15:0] rx_pipeline_io_out_rx_info_tlen; // @[RxHandler.scala 46:27]
  wire [5:0] rx_pipeline_io_out_rx_info_qid; // @[RxHandler.scala 46:27]
  wire [31:0] rx_pipeline_io_out_rx_info_ip_chksum; // @[RxHandler.scala 46:27]
  wire [31:0] rx_pipeline_io_out_rx_info_tcp_chksum; // @[RxHandler.scala 46:27]
  wire  rx_buffer_fifo_clock; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_reset; // @[RxHandler.scala 49:30]
  wire [511:0] rx_buffer_fifo_io_in_tdata; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_in_tvalid; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_in_tready; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_in_tlast; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_in_tuser; // @[RxHandler.scala 49:30]
  wire [15:0] rx_buffer_fifo_io_in_rx_info_tlen; // @[RxHandler.scala 49:30]
  wire [5:0] rx_buffer_fifo_io_in_rx_info_qid; // @[RxHandler.scala 49:30]
  wire [31:0] rx_buffer_fifo_io_in_rx_info_ip_chksum; // @[RxHandler.scala 49:30]
  wire [31:0] rx_buffer_fifo_io_in_rx_info_tcp_chksum; // @[RxHandler.scala 49:30]
  wire [511:0] rx_buffer_fifo_io_out_tdata; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_out_tvalid; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_out_tready; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_out_tlast; // @[RxHandler.scala 49:30]
  wire [5:0] rx_buffer_fifo_io_out_qid; // @[RxHandler.scala 49:30]
  wire [15:0] rx_buffer_fifo_io_out_tlen; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_reset_counter; // @[RxHandler.scala 49:30]
  wire [31:0] rx_buffer_fifo_io_c2h_pack_counter; // @[RxHandler.scala 49:30]
  wire [31:0] rx_buffer_fifo_io_c2h_err_counter; // @[RxHandler.scala 49:30]
  reg  QDMA_c2h_stub_in_tuser_reg; // @[RxHandler.scala 57:43]
  wire  _GEN_0 = io_QDMA_c2h_stub_in_tvalid & io_QDMA_c2h_stub_in_tready ? io_QDMA_c2h_stub_in_tlast :
    QDMA_c2h_stub_in_tuser_reg; // @[RxHandler.scala 58:65 59:32 57:43]
  wire  _io_QDMA_c2h_stub_in_tlast_T = ~io_QDMA_c2h_stub_in_tuser; // @[RxHandler.scala 73:63]
  wire [10:0] Gen_c2h_hdr_qid = {{5'd0}, rx_buffer_fifo_io_out_qid};
  wire [5:0] Gen_c2h_hdr_flow_id = Gen_c2h_hdr_qid[5:0];
  wire [15:0] Gen_c2h_hdr_tdest = {{5'd0}, Gen_c2h_hdr_qid};
  wire [15:0] Gen_c2h_hdr_pkt_len = rx_buffer_fifo_io_out_tlen;
  wire [511:0] _io_QDMA_c2h_stub_in_tdata_T = {362'h0,2'h0,4'h0,Gen_c2h_hdr_pkt_len,80'h0,Gen_c2h_hdr_tdest,10'h0,
    Gen_c2h_hdr_flow_id,5'h0,Gen_c2h_hdr_qid}; // @[RxHandler.scala 84:46]
  RxConverter rx_converter ( // @[RxHandler.scala 42:28]
    .clock(rx_converter_clock),
    .reset(rx_converter_reset),
    .io_in_tdata(rx_converter_io_in_tdata),
    .io_in_tvalid(rx_converter_io_in_tvalid),
    .io_in_tready(rx_converter_io_in_tready),
    .io_in_tlast(rx_converter_io_in_tlast),
    .io_in_tuser(rx_converter_io_in_tuser),
    .io_in_tkeep(rx_converter_io_in_tkeep),
    .io_out_tdata(rx_converter_io_out_tdata),
    .io_out_tvalid(rx_converter_io_out_tvalid),
    .io_out_tready(rx_converter_io_out_tready),
    .io_out_tlast(rx_converter_io_out_tlast),
    .io_out_tuser(rx_converter_io_out_tuser),
    .io_out_rx_info_tlen(rx_converter_io_out_rx_info_tlen),
    .io_out_extern_config_c2h_match_op(rx_converter_io_out_extern_config_c2h_match_op),
    .io_out_extern_config_c2h_match_arg1(rx_converter_io_out_extern_config_c2h_match_arg1),
    .io_out_extern_config_c2h_match_arg2(rx_converter_io_out_extern_config_c2h_match_arg2),
    .io_out_extern_config_c2h_match_arg3(rx_converter_io_out_extern_config_c2h_match_arg3),
    .io_out_extern_config_aes_key(rx_converter_io_out_extern_config_aes_key),
    .io_out_extern_config_round_time(rx_converter_io_out_extern_config_round_time),
    .io_extern_config_c2h_match_op(rx_converter_io_extern_config_c2h_match_op),
    .io_extern_config_c2h_match_arg1(rx_converter_io_extern_config_c2h_match_arg1),
    .io_extern_config_c2h_match_arg2(rx_converter_io_extern_config_c2h_match_arg2),
    .io_extern_config_c2h_match_arg3(rx_converter_io_extern_config_c2h_match_arg3),
    .io_extern_config_aes_key(rx_converter_io_extern_config_aes_key),
    .io_extern_config_round_time(rx_converter_io_extern_config_round_time)
  );
  RxPipeline rx_pipeline ( // @[RxHandler.scala 46:27]
    .clock(rx_pipeline_clock),
    .reset(rx_pipeline_reset),
    .io_in_tdata(rx_pipeline_io_in_tdata),
    .io_in_tvalid(rx_pipeline_io_in_tvalid),
    .io_in_tready(rx_pipeline_io_in_tready),
    .io_in_tlast(rx_pipeline_io_in_tlast),
    .io_in_tuser(rx_pipeline_io_in_tuser),
    .io_in_rx_info_tlen(rx_pipeline_io_in_rx_info_tlen),
    .io_in_extern_config_c2h_match_op(rx_pipeline_io_in_extern_config_c2h_match_op),
    .io_in_extern_config_c2h_match_arg1(rx_pipeline_io_in_extern_config_c2h_match_arg1),
    .io_in_extern_config_c2h_match_arg2(rx_pipeline_io_in_extern_config_c2h_match_arg2),
    .io_in_extern_config_c2h_match_arg3(rx_pipeline_io_in_extern_config_c2h_match_arg3),
    .io_in_extern_config_aes_key(rx_pipeline_io_in_extern_config_aes_key),
    .io_in_extern_config_round_time(rx_pipeline_io_in_extern_config_round_time),
    .io_out_tdata(rx_pipeline_io_out_tdata),
    .io_out_tvalid(rx_pipeline_io_out_tvalid),
    .io_out_tready(rx_pipeline_io_out_tready),
    .io_out_tlast(rx_pipeline_io_out_tlast),
    .io_out_tuser(rx_pipeline_io_out_tuser),
    .io_out_rx_info_tlen(rx_pipeline_io_out_rx_info_tlen),
    .io_out_rx_info_qid(rx_pipeline_io_out_rx_info_qid),
    .io_out_rx_info_ip_chksum(rx_pipeline_io_out_rx_info_ip_chksum),
    .io_out_rx_info_tcp_chksum(rx_pipeline_io_out_rx_info_tcp_chksum)
  );
  RxBufferFifo rx_buffer_fifo ( // @[RxHandler.scala 49:30]
    .clock(rx_buffer_fifo_clock),
    .reset(rx_buffer_fifo_reset),
    .io_in_tdata(rx_buffer_fifo_io_in_tdata),
    .io_in_tvalid(rx_buffer_fifo_io_in_tvalid),
    .io_in_tready(rx_buffer_fifo_io_in_tready),
    .io_in_tlast(rx_buffer_fifo_io_in_tlast),
    .io_in_tuser(rx_buffer_fifo_io_in_tuser),
    .io_in_rx_info_tlen(rx_buffer_fifo_io_in_rx_info_tlen),
    .io_in_rx_info_qid(rx_buffer_fifo_io_in_rx_info_qid),
    .io_in_rx_info_ip_chksum(rx_buffer_fifo_io_in_rx_info_ip_chksum),
    .io_in_rx_info_tcp_chksum(rx_buffer_fifo_io_in_rx_info_tcp_chksum),
    .io_out_tdata(rx_buffer_fifo_io_out_tdata),
    .io_out_tvalid(rx_buffer_fifo_io_out_tvalid),
    .io_out_tready(rx_buffer_fifo_io_out_tready),
    .io_out_tlast(rx_buffer_fifo_io_out_tlast),
    .io_out_qid(rx_buffer_fifo_io_out_qid),
    .io_out_tlen(rx_buffer_fifo_io_out_tlen),
    .io_reset_counter(rx_buffer_fifo_io_reset_counter),
    .io_c2h_pack_counter(rx_buffer_fifo_io_c2h_pack_counter),
    .io_c2h_err_counter(rx_buffer_fifo_io_c2h_err_counter)
  );
  assign io_CMAC_out_tready = rx_converter_io_in_tready; // @[RxHandler.scala 43:15]
  assign io_QDMA_c2h_stub_in_tdata = io_QDMA_c2h_stub_in_tuser ? _io_QDMA_c2h_stub_in_tdata_T :
    rx_buffer_fifo_io_out_tdata; // @[RxHandler.scala 77:34 84:31 87:31]
  assign io_QDMA_c2h_stub_in_tvalid = rx_buffer_fifo_io_out_tvalid; // @[RxHandler.scala 71:30]
  assign io_QDMA_c2h_stub_in_tlast = rx_buffer_fifo_io_out_tlast & ~io_QDMA_c2h_stub_in_tuser; // @[RxHandler.scala 73:61]
  assign io_QDMA_c2h_stub_in_tuser = QDMA_c2h_stub_in_tuser_reg & io_QDMA_c2h_stub_in_tvalid; // @[RxHandler.scala 62:59]
  assign io_c2h_pack_counter = rx_buffer_fifo_io_c2h_pack_counter; // @[RxHandler.scala 52:23]
  assign io_c2h_err_counter = rx_buffer_fifo_io_c2h_err_counter; // @[RxHandler.scala 53:22]
  assign rx_converter_clock = clock;
  assign rx_converter_reset = reset;
  assign rx_converter_io_in_tdata = io_CMAC_out_tdata; // @[RxHandler.scala 43:15]
  assign rx_converter_io_in_tvalid = io_CMAC_out_tvalid; // @[RxHandler.scala 43:15]
  assign rx_converter_io_in_tlast = io_CMAC_out_tlast; // @[RxHandler.scala 43:15]
  assign rx_converter_io_in_tuser = io_CMAC_out_tuser; // @[RxHandler.scala 43:15]
  assign rx_converter_io_in_tkeep = io_CMAC_out_tkeep; // @[RxHandler.scala 43:15]
  assign rx_converter_io_out_tready = rx_pipeline_io_in_tready; // @[RxHandler.scala 47:23]
  assign rx_converter_io_extern_config_c2h_match_op = io_extern_config_c2h_match_op; // @[RxHandler.scala 44:33]
  assign rx_converter_io_extern_config_c2h_match_arg1 = io_extern_config_c2h_match_arg1; // @[RxHandler.scala 44:33]
  assign rx_converter_io_extern_config_c2h_match_arg2 = io_extern_config_c2h_match_arg2; // @[RxHandler.scala 44:33]
  assign rx_converter_io_extern_config_c2h_match_arg3 = io_extern_config_c2h_match_arg3; // @[RxHandler.scala 44:33]
  assign rx_converter_io_extern_config_aes_key = io_extern_config_aes_key; // @[RxHandler.scala 44:33]
  assign rx_converter_io_extern_config_round_time = io_extern_config_round_time; // @[RxHandler.scala 44:33]
  assign rx_pipeline_clock = clock;
  assign rx_pipeline_reset = reset;
  assign rx_pipeline_io_in_tdata = rx_converter_io_out_tdata; // @[RxHandler.scala 47:23]
  assign rx_pipeline_io_in_tvalid = rx_converter_io_out_tvalid; // @[RxHandler.scala 47:23]
  assign rx_pipeline_io_in_tlast = rx_converter_io_out_tlast; // @[RxHandler.scala 47:23]
  assign rx_pipeline_io_in_tuser = rx_converter_io_out_tuser; // @[RxHandler.scala 47:23]
  assign rx_pipeline_io_in_rx_info_tlen = rx_converter_io_out_rx_info_tlen; // @[RxHandler.scala 47:23]
  assign rx_pipeline_io_in_extern_config_c2h_match_op = rx_converter_io_out_extern_config_c2h_match_op; // @[RxHandler.scala 47:23]
  assign rx_pipeline_io_in_extern_config_c2h_match_arg1 = rx_converter_io_out_extern_config_c2h_match_arg1; // @[RxHandler.scala 47:23]
  assign rx_pipeline_io_in_extern_config_c2h_match_arg2 = rx_converter_io_out_extern_config_c2h_match_arg2; // @[RxHandler.scala 47:23]
  assign rx_pipeline_io_in_extern_config_c2h_match_arg3 = rx_converter_io_out_extern_config_c2h_match_arg3; // @[RxHandler.scala 47:23]
  assign rx_pipeline_io_in_extern_config_aes_key = rx_converter_io_out_extern_config_aes_key; // @[RxHandler.scala 47:23]
  assign rx_pipeline_io_in_extern_config_round_time = rx_converter_io_out_extern_config_round_time; // @[RxHandler.scala 47:23]
  assign rx_pipeline_io_out_tready = rx_buffer_fifo_io_in_tready; // @[RxHandler.scala 50:22]
  assign rx_buffer_fifo_clock = clock;
  assign rx_buffer_fifo_reset = reset;
  assign rx_buffer_fifo_io_in_tdata = rx_pipeline_io_out_tdata; // @[RxHandler.scala 50:22]
  assign rx_buffer_fifo_io_in_tvalid = rx_pipeline_io_out_tvalid; // @[RxHandler.scala 50:22]
  assign rx_buffer_fifo_io_in_tlast = rx_pipeline_io_out_tlast; // @[RxHandler.scala 50:22]
  assign rx_buffer_fifo_io_in_tuser = rx_pipeline_io_out_tuser; // @[RxHandler.scala 50:22]
  assign rx_buffer_fifo_io_in_rx_info_tlen = rx_pipeline_io_out_rx_info_tlen; // @[RxHandler.scala 50:22]
  assign rx_buffer_fifo_io_in_rx_info_qid = rx_pipeline_io_out_rx_info_qid; // @[RxHandler.scala 50:22]
  assign rx_buffer_fifo_io_in_rx_info_ip_chksum = rx_pipeline_io_out_rx_info_ip_chksum; // @[RxHandler.scala 50:22]
  assign rx_buffer_fifo_io_in_rx_info_tcp_chksum = rx_pipeline_io_out_rx_info_tcp_chksum; // @[RxHandler.scala 50:22]
  assign rx_buffer_fifo_io_out_tready = io_QDMA_c2h_stub_in_tready & _io_QDMA_c2h_stub_in_tlast_T; // @[RxHandler.scala 74:63]
  assign rx_buffer_fifo_io_reset_counter = io_reset_counter; // @[RxHandler.scala 51:35]
  always @(posedge clock) begin
    QDMA_c2h_stub_in_tuser_reg <= reset | _GEN_0; // @[RxHandler.scala 57:{43,43}]
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
  QDMA_c2h_stub_in_tuser_reg = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PackageHandler(
  input          clock,
  input          reset,
  input  [511:0] io_QDMA_h2c_stub_out_tdata,
  input          io_QDMA_h2c_stub_out_tvalid,
  output         io_QDMA_h2c_stub_out_tready,
  input          io_QDMA_h2c_stub_out_tlast,
  input          io_QDMA_h2c_stub_out_tuser,
  output [511:0] io_CMAC_in_tdata,
  output         io_CMAC_in_tvalid,
  input          io_CMAC_in_tready,
  output         io_CMAC_in_tlast,
  output         io_CMAC_in_tuser,
  output [63:0]  io_CMAC_in_tkeep,
  input  [511:0] io_CMAC_out_tdata,
  input          io_CMAC_out_tvalid,
  output         io_CMAC_out_tready,
  input          io_CMAC_out_tlast,
  input          io_CMAC_out_tuser,
  input  [63:0]  io_CMAC_out_tkeep,
  output [511:0] io_QDMA_c2h_stub_in_tdata,
  output         io_QDMA_c2h_stub_in_tvalid,
  input          io_QDMA_c2h_stub_in_tready,
  output         io_QDMA_c2h_stub_in_tlast,
  output         io_QDMA_c2h_stub_in_tuser,
  input          io_reset_counter,
  input  [7:0]   io_extern_config_c2h_match_op,
  input  [31:0]  io_extern_config_c2h_match_arg1,
  input  [31:0]  io_extern_config_c2h_match_arg2,
  input  [31:0]  io_extern_config_c2h_match_arg3,
  input  [127:0] io_extern_config_aes_key,
  input  [3:0]   io_extern_config_round_time,
  output [31:0]  io_c2h_pack_counter,
  output [31:0]  io_c2h_err_counter,
  output [31:0]  io_h2c_pack_counter,
  output [31:0]  io_h2c_err_counter
);
  wire  tx_handler_clock; // @[PackageHandler.scala 30:26]
  wire  tx_handler_reset; // @[PackageHandler.scala 30:26]
  wire [511:0] tx_handler_io_QDMA_h2c_stub_out_tdata; // @[PackageHandler.scala 30:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tvalid; // @[PackageHandler.scala 30:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tready; // @[PackageHandler.scala 30:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tlast; // @[PackageHandler.scala 30:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tuser; // @[PackageHandler.scala 30:26]
  wire [511:0] tx_handler_io_CMAC_in_tdata; // @[PackageHandler.scala 30:26]
  wire  tx_handler_io_CMAC_in_tvalid; // @[PackageHandler.scala 30:26]
  wire  tx_handler_io_CMAC_in_tready; // @[PackageHandler.scala 30:26]
  wire  tx_handler_io_CMAC_in_tlast; // @[PackageHandler.scala 30:26]
  wire  tx_handler_io_reset_counter; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_h2c_pack_counter; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_h2c_err_counter; // @[PackageHandler.scala 30:26]
  wire  rx_handler_clock; // @[PackageHandler.scala 38:26]
  wire  rx_handler_reset; // @[PackageHandler.scala 38:26]
  wire [511:0] rx_handler_io_CMAC_out_tdata; // @[PackageHandler.scala 38:26]
  wire  rx_handler_io_CMAC_out_tvalid; // @[PackageHandler.scala 38:26]
  wire  rx_handler_io_CMAC_out_tready; // @[PackageHandler.scala 38:26]
  wire  rx_handler_io_CMAC_out_tlast; // @[PackageHandler.scala 38:26]
  wire  rx_handler_io_CMAC_out_tuser; // @[PackageHandler.scala 38:26]
  wire [63:0] rx_handler_io_CMAC_out_tkeep; // @[PackageHandler.scala 38:26]
  wire [511:0] rx_handler_io_QDMA_c2h_stub_in_tdata; // @[PackageHandler.scala 38:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tvalid; // @[PackageHandler.scala 38:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tready; // @[PackageHandler.scala 38:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tlast; // @[PackageHandler.scala 38:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 38:26]
  wire  rx_handler_io_reset_counter; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_c2h_pack_counter; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_c2h_err_counter; // @[PackageHandler.scala 38:26]
  wire [7:0] rx_handler_io_extern_config_c2h_match_op; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg1; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg2; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg3; // @[PackageHandler.scala 38:26]
  wire [127:0] rx_handler_io_extern_config_aes_key; // @[PackageHandler.scala 38:26]
  wire [3:0] rx_handler_io_extern_config_round_time; // @[PackageHandler.scala 38:26]
  TxHandler tx_handler ( // @[PackageHandler.scala 30:26]
    .clock(tx_handler_clock),
    .reset(tx_handler_reset),
    .io_QDMA_h2c_stub_out_tdata(tx_handler_io_QDMA_h2c_stub_out_tdata),
    .io_QDMA_h2c_stub_out_tvalid(tx_handler_io_QDMA_h2c_stub_out_tvalid),
    .io_QDMA_h2c_stub_out_tready(tx_handler_io_QDMA_h2c_stub_out_tready),
    .io_QDMA_h2c_stub_out_tlast(tx_handler_io_QDMA_h2c_stub_out_tlast),
    .io_QDMA_h2c_stub_out_tuser(tx_handler_io_QDMA_h2c_stub_out_tuser),
    .io_CMAC_in_tdata(tx_handler_io_CMAC_in_tdata),
    .io_CMAC_in_tvalid(tx_handler_io_CMAC_in_tvalid),
    .io_CMAC_in_tready(tx_handler_io_CMAC_in_tready),
    .io_CMAC_in_tlast(tx_handler_io_CMAC_in_tlast),
    .io_reset_counter(tx_handler_io_reset_counter),
    .io_h2c_pack_counter(tx_handler_io_h2c_pack_counter),
    .io_h2c_err_counter(tx_handler_io_h2c_err_counter)
  );
  RxHandler rx_handler ( // @[PackageHandler.scala 38:26]
    .clock(rx_handler_clock),
    .reset(rx_handler_reset),
    .io_CMAC_out_tdata(rx_handler_io_CMAC_out_tdata),
    .io_CMAC_out_tvalid(rx_handler_io_CMAC_out_tvalid),
    .io_CMAC_out_tready(rx_handler_io_CMAC_out_tready),
    .io_CMAC_out_tlast(rx_handler_io_CMAC_out_tlast),
    .io_CMAC_out_tuser(rx_handler_io_CMAC_out_tuser),
    .io_CMAC_out_tkeep(rx_handler_io_CMAC_out_tkeep),
    .io_QDMA_c2h_stub_in_tdata(rx_handler_io_QDMA_c2h_stub_in_tdata),
    .io_QDMA_c2h_stub_in_tvalid(rx_handler_io_QDMA_c2h_stub_in_tvalid),
    .io_QDMA_c2h_stub_in_tready(rx_handler_io_QDMA_c2h_stub_in_tready),
    .io_QDMA_c2h_stub_in_tlast(rx_handler_io_QDMA_c2h_stub_in_tlast),
    .io_QDMA_c2h_stub_in_tuser(rx_handler_io_QDMA_c2h_stub_in_tuser),
    .io_reset_counter(rx_handler_io_reset_counter),
    .io_c2h_pack_counter(rx_handler_io_c2h_pack_counter),
    .io_c2h_err_counter(rx_handler_io_c2h_err_counter),
    .io_extern_config_c2h_match_op(rx_handler_io_extern_config_c2h_match_op),
    .io_extern_config_c2h_match_arg1(rx_handler_io_extern_config_c2h_match_arg1),
    .io_extern_config_c2h_match_arg2(rx_handler_io_extern_config_c2h_match_arg2),
    .io_extern_config_c2h_match_arg3(rx_handler_io_extern_config_c2h_match_arg3),
    .io_extern_config_aes_key(rx_handler_io_extern_config_aes_key),
    .io_extern_config_round_time(rx_handler_io_extern_config_round_time)
  );
  assign io_QDMA_h2c_stub_out_tready = tx_handler_io_QDMA_h2c_stub_out_tready; // @[PackageHandler.scala 31:24]
  assign io_CMAC_in_tdata = tx_handler_io_CMAC_in_tdata; // @[PackageHandler.scala 32:24]
  assign io_CMAC_in_tvalid = tx_handler_io_CMAC_in_tvalid; // @[PackageHandler.scala 32:24]
  assign io_CMAC_in_tlast = tx_handler_io_CMAC_in_tlast; // @[PackageHandler.scala 32:24]
  assign io_CMAC_in_tuser = 1'h0; // @[PackageHandler.scala 32:24]
  assign io_CMAC_in_tkeep = 64'hffffffffffffffff; // @[PackageHandler.scala 32:24]
  assign io_CMAC_out_tready = rx_handler_io_CMAC_out_tready; // @[PackageHandler.scala 40:23]
  assign io_QDMA_c2h_stub_in_tdata = rx_handler_io_QDMA_c2h_stub_in_tdata; // @[PackageHandler.scala 39:23]
  assign io_QDMA_c2h_stub_in_tvalid = rx_handler_io_QDMA_c2h_stub_in_tvalid; // @[PackageHandler.scala 39:23]
  assign io_QDMA_c2h_stub_in_tlast = rx_handler_io_QDMA_c2h_stub_in_tlast; // @[PackageHandler.scala 39:23]
  assign io_QDMA_c2h_stub_in_tuser = rx_handler_io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 39:23]
  assign io_c2h_pack_counter = rx_handler_io_c2h_pack_counter; // @[PackageHandler.scala 43:33]
  assign io_c2h_err_counter = rx_handler_io_c2h_err_counter; // @[PackageHandler.scala 44:33]
  assign io_h2c_pack_counter = tx_handler_io_h2c_pack_counter; // @[PackageHandler.scala 35:31]
  assign io_h2c_err_counter = tx_handler_io_h2c_err_counter; // @[PackageHandler.scala 36:31]
  assign tx_handler_clock = clock;
  assign tx_handler_reset = reset;
  assign tx_handler_io_QDMA_h2c_stub_out_tdata = io_QDMA_h2c_stub_out_tdata; // @[PackageHandler.scala 31:24]
  assign tx_handler_io_QDMA_h2c_stub_out_tvalid = io_QDMA_h2c_stub_out_tvalid; // @[PackageHandler.scala 31:24]
  assign tx_handler_io_QDMA_h2c_stub_out_tlast = io_QDMA_h2c_stub_out_tlast; // @[PackageHandler.scala 31:24]
  assign tx_handler_io_QDMA_h2c_stub_out_tuser = io_QDMA_h2c_stub_out_tuser; // @[PackageHandler.scala 31:24]
  assign tx_handler_io_CMAC_in_tready = io_CMAC_in_tready; // @[PackageHandler.scala 32:24]
  assign tx_handler_io_reset_counter = io_reset_counter; // @[PackageHandler.scala 33:31]
  assign rx_handler_clock = clock;
  assign rx_handler_reset = reset;
  assign rx_handler_io_CMAC_out_tdata = io_CMAC_out_tdata; // @[PackageHandler.scala 40:23]
  assign rx_handler_io_CMAC_out_tvalid = io_CMAC_out_tvalid; // @[PackageHandler.scala 40:23]
  assign rx_handler_io_CMAC_out_tlast = io_CMAC_out_tlast; // @[PackageHandler.scala 40:23]
  assign rx_handler_io_CMAC_out_tuser = io_CMAC_out_tuser; // @[PackageHandler.scala 40:23]
  assign rx_handler_io_CMAC_out_tkeep = io_CMAC_out_tkeep; // @[PackageHandler.scala 40:23]
  assign rx_handler_io_QDMA_c2h_stub_in_tready = io_QDMA_c2h_stub_in_tready; // @[PackageHandler.scala 39:23]
  assign rx_handler_io_reset_counter = io_reset_counter; // @[PackageHandler.scala 41:33]
  assign rx_handler_io_extern_config_c2h_match_op = io_extern_config_c2h_match_op; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg1 = io_extern_config_c2h_match_arg1; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg2 = io_extern_config_c2h_match_arg2; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg3 = io_extern_config_c2h_match_arg3; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_aes_key = io_extern_config_aes_key; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_round_time = io_extern_config_round_time; // @[PackageHandler.scala 42:33]
endmodule
