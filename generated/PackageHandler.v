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
  reg [31:0] cal_reg_0; // @[Misc.scala 33:20]
  reg [31:0] cal_reg_1; // @[Misc.scala 33:20]
  reg [31:0] cal_reg_2; // @[Misc.scala 33:20]
  wire [31:0] _cal_reg_0_T_1 = io_in_vec_0 + io_in_vec_1; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_0_T_3 = io_in_vec_2 + io_in_vec_3; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_1_T_1 = io_in_vec_4 + io_in_vec_5; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_1_T_3 = io_in_vec_6 + io_in_vec_7; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_2_T_1 = io_in_vec_8 + io_in_vec_9; // @[Misc.scala 45:44]
  wire [32:0] _cal_reg_2_T_4 = {{1'd0}, _cal_reg_2_T_1}; // @[Misc.scala 45:44]
  wire [31:0] _io_out_sum_T_1 = cal_reg_0 + cal_reg_1; // @[Misc.scala 48:37]
  wire [32:0] _io_out_sum_T_2 = {{1'd0}, cal_reg_2}; // @[Misc.scala 48:37]
  assign io_out_sum = _io_out_sum_T_1 + _io_out_sum_T_2[31:0]; // @[Misc.scala 48:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_1 + _cal_reg_0_T_3; // @[Misc.scala 45:44]
    cal_reg_1 <= _cal_reg_1_T_1 + _cal_reg_1_T_3; // @[Misc.scala 45:44]
    cal_reg_2 <= _cal_reg_2_T_4[31:0]; // @[Misc.scala 45:44]
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
  reg [31:0] cal_reg_0; // @[Misc.scala 33:20]
  reg [31:0] cal_reg_1; // @[Misc.scala 33:20]
  reg [31:0] cal_reg_2; // @[Misc.scala 33:20]
  reg [31:0] cal_reg_3; // @[Misc.scala 33:20]
  reg [31:0] cal_reg_4; // @[Misc.scala 33:20]
  reg [31:0] cal_reg_5; // @[Misc.scala 33:20]
  reg [31:0] cal_reg_6; // @[Misc.scala 33:20]
  reg [31:0] cal_reg_7; // @[Misc.scala 33:20]
  wire [31:0] _cal_reg_0_T_1 = io_in_vec_0 + io_in_vec_1; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_0_T_3 = io_in_vec_2 + io_in_vec_3; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_1_T_1 = io_in_vec_4 + io_in_vec_5; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_1_T_3 = io_in_vec_6 + io_in_vec_7; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_2_T_1 = io_in_vec_8 + io_in_vec_9; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_2_T_3 = io_in_vec_10 + io_in_vec_11; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_3_T_1 = io_in_vec_12 + io_in_vec_13; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_3_T_3 = io_in_vec_14 + io_in_vec_15; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_4_T_1 = io_in_vec_16 + io_in_vec_17; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_4_T_3 = io_in_vec_18 + io_in_vec_19; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_5_T_1 = io_in_vec_20 + io_in_vec_21; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_5_T_3 = io_in_vec_22 + io_in_vec_23; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_6_T_1 = io_in_vec_24 + io_in_vec_25; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_6_T_3 = io_in_vec_26 + io_in_vec_27; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_7_T_1 = io_in_vec_28 + io_in_vec_29; // @[Misc.scala 45:44]
  wire [31:0] _cal_reg_7_T_3 = io_in_vec_30 + io_in_vec_31; // @[Misc.scala 45:44]
  wire [31:0] _io_out_sum_T_1 = cal_reg_0 + cal_reg_1; // @[Misc.scala 48:37]
  wire [31:0] _io_out_sum_T_3 = cal_reg_2 + cal_reg_3; // @[Misc.scala 48:37]
  wire [31:0] _io_out_sum_T_5 = cal_reg_4 + cal_reg_5; // @[Misc.scala 48:37]
  wire [31:0] _io_out_sum_T_7 = cal_reg_6 + cal_reg_7; // @[Misc.scala 48:37]
  wire [31:0] _io_out_sum_T_9 = _io_out_sum_T_1 + _io_out_sum_T_3; // @[Misc.scala 48:37]
  wire [31:0] _io_out_sum_T_11 = _io_out_sum_T_5 + _io_out_sum_T_7; // @[Misc.scala 48:37]
  assign io_out_sum = _io_out_sum_T_9 + _io_out_sum_T_11; // @[Misc.scala 48:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_1 + _cal_reg_0_T_3; // @[Misc.scala 45:44]
    cal_reg_1 <= _cal_reg_1_T_1 + _cal_reg_1_T_3; // @[Misc.scala 45:44]
    cal_reg_2 <= _cal_reg_2_T_1 + _cal_reg_2_T_3; // @[Misc.scala 45:44]
    cal_reg_3 <= _cal_reg_3_T_1 + _cal_reg_3_T_3; // @[Misc.scala 45:44]
    cal_reg_4 <= _cal_reg_4_T_1 + _cal_reg_4_T_3; // @[Misc.scala 45:44]
    cal_reg_5 <= _cal_reg_5_T_1 + _cal_reg_5_T_3; // @[Misc.scala 45:44]
    cal_reg_6 <= _cal_reg_6_T_1 + _cal_reg_6_T_3; // @[Misc.scala 45:44]
    cal_reg_7 <= _cal_reg_7_T_1 + _cal_reg_7_T_3; // @[Misc.scala 45:44]
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
  wire  ip_chksum_cal_clock; // @[TxPipelineHandler.scala 34:29]
  wire [31:0] ip_chksum_cal_io_in_vec_0; // @[TxPipelineHandler.scala 34:29]
  wire [31:0] ip_chksum_cal_io_in_vec_1; // @[TxPipelineHandler.scala 34:29]
  wire [31:0] ip_chksum_cal_io_in_vec_2; // @[TxPipelineHandler.scala 34:29]
  wire [31:0] ip_chksum_cal_io_in_vec_3; // @[TxPipelineHandler.scala 34:29]
  wire [31:0] ip_chksum_cal_io_in_vec_4; // @[TxPipelineHandler.scala 34:29]
  wire [31:0] ip_chksum_cal_io_in_vec_5; // @[TxPipelineHandler.scala 34:29]
  wire [31:0] ip_chksum_cal_io_in_vec_6; // @[TxPipelineHandler.scala 34:29]
  wire [31:0] ip_chksum_cal_io_in_vec_7; // @[TxPipelineHandler.scala 34:29]
  wire [31:0] ip_chksum_cal_io_in_vec_8; // @[TxPipelineHandler.scala 34:29]
  wire [31:0] ip_chksum_cal_io_in_vec_9; // @[TxPipelineHandler.scala 34:29]
  wire [31:0] ip_chksum_cal_io_out_sum; // @[TxPipelineHandler.scala 34:29]
  wire  tcp_pld_chksum_cal_clock; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_0; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_1; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_2; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_3; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_4; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_5; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_6; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_7; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_8; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_9; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_10; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_11; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_12; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_13; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_14; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_15; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_16; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_17; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_18; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_19; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_20; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_21; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_22; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_23; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_24; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_25; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_26; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_27; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_28; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_29; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_30; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_31; // @[TxPipelineHandler.scala 42:34]
  wire [31:0] tcp_pld_chksum_cal_io_out_sum; // @[TxPipelineHandler.scala 42:34]
  wire  tcp_hdr_chksum_cal_clock; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_0; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_1; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_2; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_3; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_4; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_5; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_6; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_7; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_8; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_9; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_10; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_11; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_12; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_13; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_14; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_15; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_16; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_17; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_18; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_19; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_20; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_21; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_22; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_23; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_24; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_25; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_26; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_27; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_28; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_29; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_30; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_31; // @[TxPipelineHandler.scala 49:34]
  wire [31:0] tcp_hdr_chksum_cal_io_out_sum; // @[TxPipelineHandler.scala 49:34]
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[TxPipelineHandler.scala 10:36]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[TxPipelineHandler.scala 11:38]
  wire [577:0] _in_reg_T_1 = {64'h0,io_in_tdata,io_in_tvalid,io_in_tlast}; // @[Cat.scala 31:58]
  reg [577:0] in_reg_r; // @[Reg.scala 28:20]
  wire  in_reg_tlast = in_reg_r[0]; // @[TxPipelineHandler.scala 13:116]
  wire  in_reg_tvalid = in_reg_r[1]; // @[TxPipelineHandler.scala 13:116]
  wire [511:0] in_reg_tdata = in_reg_r[513:2]; // @[TxPipelineHandler.scala 13:116]
  reg  first_beat_reg; // @[Reg.scala 28:20]
  wire  _GEN_1 = in_shake_hand ? in_reg_tlast : first_beat_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_reg_used; // @[TxPipelineHandler.scala 16:28]
  wire  _GEN_2 = out_shake_hand ? 1'h0 : in_reg_used; // @[TxPipelineHandler.scala 19:29 20:17 16:28]
  wire  _GEN_3 = in_shake_hand | _GEN_2; // @[TxPipelineHandler.scala 17:23 18:17]
  wire [511:0] cal_tdata = in_shake_hand ? io_in_tdata : in_reg_tdata; // @[TxPipelineHandler.scala 32:22]
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
  wire [31:0] tcp_hdr_chksum_result = tcp_hdr_chksum_cal_io_out_sum - 32'h14; // @[TxPipelineHandler.scala 55:61]
  reg [31:0] cal_ip_chksum; // @[TxPipelineHandler.scala 57:30]
  reg [31:0] cal_tcp_chksum; // @[TxPipelineHandler.scala 58:31]
  wire [31:0] _cal_tcp_chksum_T_1 = cal_tcp_chksum + tcp_pld_chksum_cal_io_out_sum; // @[TxPipelineHandler.scala 65:40]
  ReduceAddSync ip_chksum_cal ( // @[TxPipelineHandler.scala 34:29]
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
  ReduceAddSync_1 tcp_pld_chksum_cal ( // @[TxPipelineHandler.scala 42:34]
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
  ReduceAddSync_1 tcp_hdr_chksum_cal ( // @[TxPipelineHandler.scala 49:34]
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
  assign io_in_tready = io_out_tready | ~in_reg_used; // @[TxPipelineHandler.scala 23:46]
  assign io_out_tdata = in_reg_r[513:2]; // @[TxPipelineHandler.scala 13:116]
  assign io_out_tvalid = in_reg_tvalid & in_reg_used; // @[TxPipelineHandler.scala 25:46]
  assign io_out_tlast = in_reg_r[0]; // @[TxPipelineHandler.scala 13:116]
  assign io_out_tx_info_ip_chksum = first_beat_reg ? ip_chksum_cal_io_out_sum : cal_ip_chksum; // @[TxPipelineHandler.scala 68:34]
  assign io_out_tx_info_tcp_chksum = first_beat_reg ? tcp_hdr_chksum_result : _cal_tcp_chksum_T_1; // @[TxPipelineHandler.scala 69:35]
  assign ip_chksum_cal_clock = clock;
  assign ip_chksum_cal_io_in_vec_0 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_3}; // @[TxPipelineHandler.scala 37:37]
  assign ip_chksum_cal_io_in_vec_1 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[TxPipelineHandler.scala 37:37]
  assign ip_chksum_cal_io_in_vec_2 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_3}; // @[TxPipelineHandler.scala 37:37]
  assign ip_chksum_cal_io_in_vec_3 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_3}; // @[TxPipelineHandler.scala 37:37]
  assign ip_chksum_cal_io_in_vec_4 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_3}; // @[TxPipelineHandler.scala 37:37]
  assign ip_chksum_cal_io_in_vec_5 = 32'h0; // @[TxPipelineHandler.scala 36:44]
  assign ip_chksum_cal_io_in_vec_6 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[TxPipelineHandler.scala 37:37]
  assign ip_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[TxPipelineHandler.scala 37:37]
  assign ip_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[TxPipelineHandler.scala 37:37]
  assign ip_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[TxPipelineHandler.scala 37:37]
  assign tcp_pld_chksum_cal_clock = clock;
  assign tcp_pld_chksum_cal_io_in_vec_0 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_0_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_1 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_1_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_2 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_2_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_3 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_3_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_4 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_4_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_5 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_5_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_6 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_6_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_10 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_11 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_12 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_12_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_25 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_25_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_pld_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_3}; // @[TxPipelineHandler.scala 44:37]
  assign tcp_hdr_chksum_cal_clock = clock;
  assign tcp_hdr_chksum_cal_io_in_vec_0 = 32'h0; // @[TxPipelineHandler.scala 53:42]
  assign tcp_hdr_chksum_cal_io_in_vec_1 = 32'h0; // @[TxPipelineHandler.scala 53:42]
  assign tcp_hdr_chksum_cal_io_in_vec_2 = 32'h0; // @[TxPipelineHandler.scala 53:42]
  assign tcp_hdr_chksum_cal_io_in_vec_3 = 32'h0; // @[TxPipelineHandler.scala 53:42]
  assign tcp_hdr_chksum_cal_io_in_vec_4 = 32'h0; // @[TxPipelineHandler.scala 53:42]
  assign tcp_hdr_chksum_cal_io_in_vec_5 = 32'h0; // @[TxPipelineHandler.scala 53:42]
  assign tcp_hdr_chksum_cal_io_in_vec_6 = 32'h0; // @[TxPipelineHandler.scala 53:42]
  assign tcp_hdr_chksum_cal_io_in_vec_7 = 32'h0; // @[TxPipelineHandler.scala 53:42]
  assign tcp_hdr_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_9 = 32'h0; // @[TxPipelineHandler.scala 53:42]
  assign tcp_hdr_chksum_cal_io_in_vec_10 = 32'h0; // @[TxPipelineHandler.scala 53:42]
  assign tcp_hdr_chksum_cal_io_in_vec_11 = {{24'd0}, cal_tdata[191:184]}; // @[TxPipelineHandler.scala 52:53]
  assign tcp_hdr_chksum_cal_io_in_vec_12 = 32'h0; // @[TxPipelineHandler.scala 53:42]
  assign tcp_hdr_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_25 = 32'h0; // @[TxPipelineHandler.scala 53:42]
  assign tcp_hdr_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_3}; // @[TxPipelineHandler.scala 51:67]
  assign tcp_hdr_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_3}; // @[TxPipelineHandler.scala 51:67]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      in_reg_r <= 578'h1; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_reg_r <= _in_reg_T_1; // @[Reg.scala 29:22]
    end
    first_beat_reg <= reset | _GEN_1; // @[Reg.scala 28:{20,20}]
    if (reset) begin // @[TxPipelineHandler.scala 16:28]
      in_reg_used <= 1'h0; // @[TxPipelineHandler.scala 16:28]
    end else begin
      in_reg_used <= _GEN_3;
    end
    if (reset) begin // @[TxPipelineHandler.scala 57:30]
      cal_ip_chksum <= 32'h0; // @[TxPipelineHandler.scala 57:30]
    end else if (in_shake_hand) begin // @[TxPipelineHandler.scala 60:24]
      if (first_beat_reg) begin // @[TxPipelineHandler.scala 61:27]
        cal_ip_chksum <= ip_chksum_cal_io_out_sum; // @[TxPipelineHandler.scala 62:21]
      end
    end
    if (reset) begin // @[TxPipelineHandler.scala 58:31]
      cal_tcp_chksum <= 32'h0; // @[TxPipelineHandler.scala 58:31]
    end else if (in_shake_hand) begin // @[TxPipelineHandler.scala 60:24]
      if (first_beat_reg) begin // @[TxPipelineHandler.scala 61:27]
        cal_tcp_chksum <= tcp_hdr_chksum_result; // @[TxPipelineHandler.scala 63:22]
      end else begin
        cal_tcp_chksum <= _cal_tcp_chksum_T_1; // @[TxPipelineHandler.scala 65:22]
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
  in_reg_used = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  cal_ip_chksum = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  cal_tcp_chksum = _RAND_4[31:0];
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
  wire  chksum_generator_clock; // @[TxPipeline.scala 20:32]
  wire  chksum_generator_reset; // @[TxPipeline.scala 20:32]
  wire [511:0] chksum_generator_io_in_tdata; // @[TxPipeline.scala 20:32]
  wire  chksum_generator_io_in_tvalid; // @[TxPipeline.scala 20:32]
  wire  chksum_generator_io_in_tready; // @[TxPipeline.scala 20:32]
  wire  chksum_generator_io_in_tlast; // @[TxPipeline.scala 20:32]
  wire [511:0] chksum_generator_io_out_tdata; // @[TxPipeline.scala 20:32]
  wire  chksum_generator_io_out_tvalid; // @[TxPipeline.scala 20:32]
  wire  chksum_generator_io_out_tready; // @[TxPipeline.scala 20:32]
  wire  chksum_generator_io_out_tlast; // @[TxPipeline.scala 20:32]
  wire [31:0] chksum_generator_io_out_tx_info_ip_chksum; // @[TxPipeline.scala 20:32]
  wire [31:0] chksum_generator_io_out_tx_info_tcp_chksum; // @[TxPipeline.scala 20:32]
  TxChksumGenerator chksum_generator ( // @[TxPipeline.scala 20:32]
    .clock(chksum_generator_clock),
    .reset(chksum_generator_reset),
    .io_in_tdata(chksum_generator_io_in_tdata),
    .io_in_tvalid(chksum_generator_io_in_tvalid),
    .io_in_tready(chksum_generator_io_in_tready),
    .io_in_tlast(chksum_generator_io_in_tlast),
    .io_out_tdata(chksum_generator_io_out_tdata),
    .io_out_tvalid(chksum_generator_io_out_tvalid),
    .io_out_tready(chksum_generator_io_out_tready),
    .io_out_tlast(chksum_generator_io_out_tlast),
    .io_out_tx_info_ip_chksum(chksum_generator_io_out_tx_info_ip_chksum),
    .io_out_tx_info_tcp_chksum(chksum_generator_io_out_tx_info_tcp_chksum)
  );
  assign io_in_tready = chksum_generator_io_in_tready; // @[TxPipeline.scala 27:26]
  assign io_out_tdata = chksum_generator_io_out_tdata; // @[TxPipeline.scala 31:10]
  assign io_out_tvalid = chksum_generator_io_out_tvalid; // @[TxPipeline.scala 31:10]
  assign io_out_tlast = chksum_generator_io_out_tlast; // @[TxPipeline.scala 31:10]
  assign io_out_tx_info_ip_chksum = chksum_generator_io_out_tx_info_ip_chksum; // @[TxPipeline.scala 31:10]
  assign io_out_tx_info_tcp_chksum = chksum_generator_io_out_tx_info_tcp_chksum; // @[TxPipeline.scala 31:10]
  assign chksum_generator_clock = clock;
  assign chksum_generator_reset = reset;
  assign chksum_generator_io_in_tdata = io_in_tdata; // @[TxPipeline.scala 26:33]
  assign chksum_generator_io_in_tvalid = io_in_tvalid & ~io_in_tuser; // @[TxPipeline.scala 18:34]
  assign chksum_generator_io_in_tlast = io_in_tlast; // @[TxPipeline.scala 25:33]
  assign chksum_generator_io_out_tready = io_out_tready; // @[TxPipeline.scala 31:10]
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
  reg [511:0] data_buf_reg [0:63]; // @[TxBufferFifo.scala 36:33]
  wire  data_buf_reg_rd_data_en; // @[TxBufferFifo.scala 36:33]
  wire [5:0] data_buf_reg_rd_data_addr; // @[TxBufferFifo.scala 36:33]
  wire [511:0] data_buf_reg_rd_data_data; // @[TxBufferFifo.scala 36:33]
  wire [511:0] data_buf_reg_MPORT_data; // @[TxBufferFifo.scala 36:33]
  wire [5:0] data_buf_reg_MPORT_addr; // @[TxBufferFifo.scala 36:33]
  wire  data_buf_reg_MPORT_mask; // @[TxBufferFifo.scala 36:33]
  wire  data_buf_reg_MPORT_en; // @[TxBufferFifo.scala 36:33]
  reg  data_buf_reg_rd_data_en_pipe_0;
  reg [5:0] data_buf_reg_rd_data_addr_pipe_0;
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[TxBufferFifo.scala 35:36]
  reg  info_buf_reg_0_valid; // @[TxBufferFifo.scala 39:29]
  reg [31:0] info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 39:29]
  reg [31:0] info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 39:29]
  reg [5:0] info_buf_reg_0_burst; // @[TxBufferFifo.scala 39:29]
  reg  info_buf_reg_1_valid; // @[TxBufferFifo.scala 39:29]
  reg [31:0] info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 39:29]
  reg [31:0] info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 39:29]
  reg [5:0] info_buf_reg_1_burst; // @[TxBufferFifo.scala 39:29]
  reg [6:0] wr_index_reg; // @[TxBufferFifo.scala 40:29]
  reg [6:0] rd_index_reg; // @[TxBufferFifo.scala 41:29]
  reg [6:0] wr_pos_reg; // @[TxBufferFifo.scala 42:29]
  reg [6:0] rd_pos_reg; // @[TxBufferFifo.scala 43:29]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[TxBufferFifo.scala 48:40]
  reg [31:0] pack_counter; // @[TxBufferFifo.scala 51:29]
  reg [31:0] err_counter; // @[TxBufferFifo.scala 52:28]
  reg  is_overflowed; // @[TxBufferFifo.scala 59:30]
  wire [31:0] _pack_counter_T_1 = pack_counter + 32'h1; // @[TxBufferFifo.scala 68:38]
  wire [5:0] _GEN_2 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[TxBufferFifo.scala 70:{46,46}]
  wire [11:0] _GEN_186 = {wr_index_reg, 5'h0}; // @[TxBufferFifo.scala 79:40]
  wire [13:0] _wr_pos_reg_T = {{2'd0}, _GEN_186}; // @[TxBufferFifo.scala 79:40]
  wire  _GEN_3 = ~io_in_tlast | is_overflowed; // @[TxBufferFifo.scala 72:29 73:25 59:30]
  wire [13:0] _GEN_4 = ~io_in_tlast ? {{7'd0}, wr_pos_reg} : _wr_pos_reg_T; // @[TxBufferFifo.scala 42:29 72:29 79:24]
  wire [31:0] _err_counter_T_1 = err_counter + 32'h1; // @[TxBufferFifo.scala 82:36]
  wire [5:0] _GEN_5 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 39:29 83:{36,36}]
  wire [5:0] _GEN_6 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 39:29 83:{36,36}]
  wire [31:0] _GEN_7 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 39:29 83:{36,36}]
  wire [31:0] _GEN_8 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 39:29 83:{36,36}]
  wire [31:0] _GEN_9 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 39:29 83:{36,36}]
  wire [31:0] _GEN_10 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 39:29 83:{36,36}]
  wire  _GEN_11 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 39:29 83:{36,36}]
  wire  _GEN_12 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 39:29 83:{36,36}]
  wire  _T_4 = ~is_overflowed; // @[TxBufferFifo.scala 87:15]
  wire  _GEN_187 = ~wr_index_reg[0]; // @[TxBufferFifo.scala 39:29 90:{45,45}]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_2 + 6'h1; // @[TxBufferFifo.scala 93:80]
  wire [5:0] _GEN_23 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 39:29 93:{44,44}]
  wire [5:0] _GEN_24 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 39:29 93:{44,44}]
  wire  _GEN_25 = _GEN_187 | info_buf_reg_0_valid; // @[TxBufferFifo.scala 39:29 95:{46,46}]
  wire  _GEN_26 = wr_index_reg[0] | info_buf_reg_1_valid; // @[TxBufferFifo.scala 39:29 95:{46,46}]
  wire [31:0] _GEN_27 = ~wr_index_reg[0] ? io_in_tx_info_ip_chksum : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 39:29 96:{50,50}]
  wire [31:0] _GEN_28 = wr_index_reg[0] ? io_in_tx_info_ip_chksum : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 39:29 96:{50,50}]
  wire [31:0] _GEN_29 = ~wr_index_reg[0] ? io_in_tx_info_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 39:29 97:{51,51}]
  wire [31:0] _GEN_30 = wr_index_reg[0] ? io_in_tx_info_tcp_chksum : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 39:29 97:{51,51}]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[TxBufferFifo.scala 30:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[TxBufferFifo.scala 30:19]
  wire [11:0] _GEN_189 = {_wr_index_reg_T_2, 5'h0}; // @[TxBufferFifo.scala 99:51]
  wire [13:0] _wr_pos_reg_T_4 = {{2'd0}, _GEN_189}; // @[TxBufferFifo.scala 99:51]
  wire [6:0] _wr_pos_reg_T_6 = wr_pos_reg + 7'h1; // @[TxBufferFifo.scala 101:38]
  wire  _GEN_31 = io_in_tlast ? _GEN_25 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 39:29 94:30]
  wire  _GEN_32 = io_in_tlast ? _GEN_26 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 39:29 94:30]
  wire [31:0] _GEN_33 = io_in_tlast ? _GEN_27 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 39:29 94:30]
  wire [31:0] _GEN_34 = io_in_tlast ? _GEN_28 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 39:29 94:30]
  wire [31:0] _GEN_35 = io_in_tlast ? _GEN_29 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 39:29 94:30]
  wire [31:0] _GEN_36 = io_in_tlast ? _GEN_30 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 39:29 94:30]
  wire [6:0] _GEN_37 = io_in_tlast ? _wr_index_reg_T_2 : wr_index_reg; // @[TxBufferFifo.scala 94:30 98:26 40:29]
  wire [13:0] _GEN_38 = io_in_tlast ? _wr_pos_reg_T_4 : {{7'd0}, _wr_pos_reg_T_6}; // @[TxBufferFifo.scala 101:24 94:30 99:24]
  wire  _GEN_39 = io_in_tlast ? 1'h0 : is_overflowed; // @[TxBufferFifo.scala 103:34 105:25 59:30]
  wire [13:0] _GEN_40 = io_in_tlast ? _wr_pos_reg_T : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 103:34 106:22 42:29]
  wire [5:0] _GEN_48 = ~is_overflowed ? _GEN_23 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 39:29 87:30]
  wire [5:0] _GEN_49 = ~is_overflowed ? _GEN_24 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 39:29 87:30]
  wire  _GEN_50 = ~is_overflowed ? _GEN_31 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 39:29 87:30]
  wire  _GEN_51 = ~is_overflowed ? _GEN_32 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 39:29 87:30]
  wire [31:0] _GEN_52 = ~is_overflowed ? _GEN_33 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 39:29 87:30]
  wire [31:0] _GEN_53 = ~is_overflowed ? _GEN_34 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 39:29 87:30]
  wire [31:0] _GEN_54 = ~is_overflowed ? _GEN_35 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 39:29 87:30]
  wire [31:0] _GEN_55 = ~is_overflowed ? _GEN_36 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 39:29 87:30]
  wire [6:0] _GEN_56 = ~is_overflowed ? _GEN_37 : wr_index_reg; // @[TxBufferFifo.scala 40:29 87:30]
  wire [13:0] _GEN_57 = ~is_overflowed ? _GEN_38 : _GEN_40; // @[TxBufferFifo.scala 87:30]
  wire  _GEN_58 = ~is_overflowed ? is_overflowed : _GEN_39; // @[TxBufferFifo.scala 59:30 87:30]
  wire  _GEN_63 = io_in_tvalid & _T_4; // @[TxBufferFifo.scala 85:31 36:33]
  wire [5:0] _GEN_66 = io_in_tvalid ? _GEN_48 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 39:29 85:31]
  wire [5:0] _GEN_67 = io_in_tvalid ? _GEN_49 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 39:29 85:31]
  wire  _GEN_68 = io_in_tvalid ? _GEN_50 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 39:29 85:31]
  wire  _GEN_69 = io_in_tvalid ? _GEN_51 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 39:29 85:31]
  wire [31:0] _GEN_70 = io_in_tvalid ? _GEN_52 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 39:29 85:31]
  wire [31:0] _GEN_71 = io_in_tvalid ? _GEN_53 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 39:29 85:31]
  wire [31:0] _GEN_72 = io_in_tvalid ? _GEN_54 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 39:29 85:31]
  wire [31:0] _GEN_73 = io_in_tvalid ? _GEN_55 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 39:29 85:31]
  wire [6:0] _GEN_74 = io_in_tvalid ? _GEN_56 : wr_index_reg; // @[TxBufferFifo.scala 40:29 85:31]
  wire [13:0] _GEN_75 = io_in_tvalid ? _GEN_57 : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 42:29 85:31]
  wire  _GEN_76 = io_in_tvalid ? _GEN_58 : is_overflowed; // @[TxBufferFifo.scala 59:30 85:31]
  wire [13:0] _GEN_78 = _GEN_2 == 6'h20 ? _GEN_4 : _GEN_75; // @[TxBufferFifo.scala 70:63]
  wire [5:0] _GEN_80 = _GEN_2 == 6'h20 ? _GEN_5 : _GEN_66; // @[TxBufferFifo.scala 70:63]
  wire [5:0] _GEN_81 = _GEN_2 == 6'h20 ? _GEN_6 : _GEN_67; // @[TxBufferFifo.scala 70:63]
  wire [31:0] _GEN_82 = _GEN_2 == 6'h20 ? _GEN_7 : _GEN_72; // @[TxBufferFifo.scala 70:63]
  wire [31:0] _GEN_83 = _GEN_2 == 6'h20 ? _GEN_8 : _GEN_73; // @[TxBufferFifo.scala 70:63]
  wire [31:0] _GEN_84 = _GEN_2 == 6'h20 ? _GEN_9 : _GEN_70; // @[TxBufferFifo.scala 70:63]
  wire [31:0] _GEN_85 = _GEN_2 == 6'h20 ? _GEN_10 : _GEN_71; // @[TxBufferFifo.scala 70:63]
  wire  _GEN_86 = _GEN_2 == 6'h20 ? _GEN_11 : _GEN_68; // @[TxBufferFifo.scala 70:63]
  wire  _GEN_87 = _GEN_2 == 6'h20 ? _GEN_12 : _GEN_69; // @[TxBufferFifo.scala 70:63]
  wire  _GEN_92 = _GEN_2 == 6'h20 ? 1'h0 : _GEN_63; // @[TxBufferFifo.scala 36:33 70:63]
  wire [13:0] _GEN_98 = in_shake_hand ? _GEN_78 : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 42:29 66:31]
  wire [5:0] _GEN_100 = in_shake_hand ? _GEN_80 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 39:29 66:31]
  wire [5:0] _GEN_101 = in_shake_hand ? _GEN_81 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 39:29 66:31]
  wire [31:0] _GEN_102 = in_shake_hand ? _GEN_82 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 39:29 66:31]
  wire [31:0] _GEN_103 = in_shake_hand ? _GEN_83 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 39:29 66:31]
  wire [31:0] _GEN_104 = in_shake_hand ? _GEN_84 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 39:29 66:31]
  wire [31:0] _GEN_105 = in_shake_hand ? _GEN_85 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 39:29 66:31]
  wire  _GEN_106 = in_shake_hand ? _GEN_86 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 39:29 66:31]
  wire  _GEN_107 = in_shake_hand ? _GEN_87 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 39:29 66:31]
  wire  _GEN_112 = in_shake_hand & _GEN_92; // @[TxBufferFifo.scala 66:31 36:33]
  wire [13:0] _GEN_119 = io_reset_counter ? {{7'd0}, wr_pos_reg} : _GEN_98; // @[TxBufferFifo.scala 62:26 42:29]
  wire [5:0] _GEN_120 = io_reset_counter ? info_buf_reg_0_burst : _GEN_100; // @[TxBufferFifo.scala 62:26 39:29]
  wire [5:0] _GEN_121 = io_reset_counter ? info_buf_reg_1_burst : _GEN_101; // @[TxBufferFifo.scala 62:26 39:29]
  wire [31:0] _GEN_122 = io_reset_counter ? info_buf_reg_0_tcp_chksum : _GEN_102; // @[TxBufferFifo.scala 62:26 39:29]
  wire [31:0] _GEN_123 = io_reset_counter ? info_buf_reg_1_tcp_chksum : _GEN_103; // @[TxBufferFifo.scala 62:26 39:29]
  wire [31:0] _GEN_124 = io_reset_counter ? info_buf_reg_0_ip_chksum : _GEN_104; // @[TxBufferFifo.scala 62:26 39:29]
  wire [31:0] _GEN_125 = io_reset_counter ? info_buf_reg_1_ip_chksum : _GEN_105; // @[TxBufferFifo.scala 62:26 39:29]
  wire  _GEN_126 = io_reset_counter ? info_buf_reg_0_valid : _GEN_106; // @[TxBufferFifo.scala 62:26 39:29]
  wire  _GEN_127 = io_reset_counter ? info_buf_reg_1_valid : _GEN_107; // @[TxBufferFifo.scala 62:26 39:29]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[TxBufferFifo.scala 112:38]
  wire [5:0] _GEN_139 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[TxBufferFifo.scala 117:{70,70}]
  wire  _io_out_tlast_T_1 = _GEN_139 == 6'h1; // @[TxBufferFifo.scala 117:70]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[TxBufferFifo.scala 30:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[TxBufferFifo.scala 30:19]
  wire [11:0] _GEN_191 = {_rd_pos_next_T_2, 5'h0}; // @[TxBufferFifo.scala 151:44]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_191}; // @[TxBufferFifo.scala 151:44]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[TxBufferFifo.scala 153:31]
  wire [13:0] _GEN_185 = _io_out_tlast_T_1 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[TxBufferFifo.scala 150:51 151:17 153:17]
  wire [6:0] rd_pos_next = _GEN_185[6:0];
  wire [6:0] _rd_data_T = out_shake_hand ? rd_pos_next : rd_pos_reg; // @[TxBufferFifo.scala 120:33]
  wire [31:0] _GEN_141 = rd_index_reg[0] ? info_buf_reg_1_ip_chksum : info_buf_reg_0_ip_chksum; // @[Misc.scala 14:{10,10}]
  wire [15:0] _mid_ip_chksum_T_6 = _GEN_141[31:16] + _GEN_141[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _mid_ip_chksum_T_8 = _GEN_141[31:16] > 16'h0 ? _mid_ip_chksum_T_6 : _GEN_141[15:0]; // @[Misc.scala 14:8]
  wire [31:0] _GEN_143 = rd_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[Misc.scala 14:{10,10}]
  wire [15:0] _mid_tcp_chksum_T_6 = _GEN_143[31:16] + _GEN_143[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _mid_tcp_chksum_T_8 = _GEN_143[31:16] > 16'h0 ? _mid_tcp_chksum_T_6 : _GEN_143[15:0]; // @[Misc.scala 14:8]
  wire [31:0] mid_ip_chksum = {{16'd0}, _mid_ip_chksum_T_8}; // @[TxBufferFifo.scala 123:27 124:17]
  wire [15:0] _end_ip_chksum_T_5 = mid_ip_chksum[31:16] + mid_ip_chksum[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _end_ip_chksum_T_7 = mid_ip_chksum[31:16] > 16'h0 ? _end_ip_chksum_T_5 : mid_ip_chksum[15:0]; // @[Misc.scala 14:8]
  wire [15:0] end_ip_chksum = ~_end_ip_chksum_T_7; // @[TxBufferFifo.scala 129:20]
  wire [31:0] mid_tcp_chksum = {{16'd0}, _mid_tcp_chksum_T_8}; // @[TxBufferFifo.scala 125:28 126:18]
  wire [15:0] _end_tcp_chksum_T_5 = mid_tcp_chksum[31:16] + mid_tcp_chksum[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _end_tcp_chksum_T_7 = mid_tcp_chksum[31:16] > 16'h0 ? _end_tcp_chksum_T_5 : mid_tcp_chksum[15:0]; // @[Misc.scala 14:8]
  wire [15:0] end_tcp_chksum = ~_end_tcp_chksum_T_7; // @[TxBufferFifo.scala 131:21]
  wire [11:0] _GEN_192 = {rd_index_reg, 5'h0}; // @[TxBufferFifo.scala 136:52]
  wire [13:0] _io_out_tdata_T = {{2'd0}, _GEN_192}; // @[TxBufferFifo.scala 136:52]
  wire [13:0] _GEN_193 = {{7'd0}, rd_pos_reg}; // @[TxBufferFifo.scala 136:34]
  wire [511:0] _io_out_tdata_T_5 = {data_buf_reg_rd_data_data[511:416],end_tcp_chksum[7:0],end_tcp_chksum[15:8],
    data_buf_reg_rd_data_data[399:208],end_ip_chksum[7:0],end_ip_chksum[15:8],data_buf_reg_rd_data_data[191:0]}; // @[Cat.scala 31:58]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_139 - 6'h1; // @[TxBufferFifo.scala 147:76]
  wire [13:0] _GEN_194 = reset ? 14'h0 : _GEN_119; // @[TxBufferFifo.scala 42:{29,29}]
  assign data_buf_reg_rd_data_en = data_buf_reg_rd_data_en_pipe_0;
  assign data_buf_reg_rd_data_addr = data_buf_reg_rd_data_addr_pipe_0;
  assign data_buf_reg_rd_data_data = data_buf_reg[data_buf_reg_rd_data_addr]; // @[TxBufferFifo.scala 36:33]
  assign data_buf_reg_MPORT_data = io_in_tdata;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_reset_counter ? 1'h0 : _GEN_112;
  assign io_in_tready = ~buf_full; // @[TxBufferFifo.scala 50:19]
  assign io_out_tdata = _GEN_193 == _io_out_tdata_T ? _io_out_tdata_T_5 : data_buf_reg_rd_data_data; // @[TxBufferFifo.scala 136:22]
  assign io_out_tvalid = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[TxBufferFifo.scala 116:{17,17}]
  assign io_out_tlast = io_out_tvalid & _GEN_139 == 6'h1; // @[TxBufferFifo.scala 117:34]
  assign io_h2c_pack_counter = pack_counter; // @[TxBufferFifo.scala 54:23]
  assign io_h2c_err_counter = err_counter; // @[TxBufferFifo.scala 55:22]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[TxBufferFifo.scala 36:33]
    end
    data_buf_reg_rd_data_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      data_buf_reg_rd_data_addr_pipe_0 <= _rd_data_T[5:0];
    end
    if (reset) begin // @[TxBufferFifo.scala 39:29]
      info_buf_reg_0_valid <= 1'h0; // @[TxBufferFifo.scala 39:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 139:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 143:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 144:34]
          info_buf_reg_0_valid <= 1'h0; // @[TxBufferFifo.scala 144:34]
        end else begin
          info_buf_reg_0_valid <= _GEN_126;
        end
      end else begin
        info_buf_reg_0_valid <= _GEN_126;
      end
    end else begin
      info_buf_reg_0_valid <= _GEN_126;
    end
    if (reset) begin // @[TxBufferFifo.scala 39:29]
      info_buf_reg_0_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 39:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 139:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 143:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 144:34]
          info_buf_reg_0_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 144:34]
        end else begin
          info_buf_reg_0_ip_chksum <= _GEN_124;
        end
      end else begin
        info_buf_reg_0_ip_chksum <= _GEN_124;
      end
    end else begin
      info_buf_reg_0_ip_chksum <= _GEN_124;
    end
    if (reset) begin // @[TxBufferFifo.scala 39:29]
      info_buf_reg_0_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 39:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 139:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 143:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 144:34]
          info_buf_reg_0_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 144:34]
        end else begin
          info_buf_reg_0_tcp_chksum <= _GEN_122;
        end
      end else begin
        info_buf_reg_0_tcp_chksum <= _GEN_122;
      end
    end else begin
      info_buf_reg_0_tcp_chksum <= _GEN_122;
    end
    if (reset) begin // @[TxBufferFifo.scala 39:29]
      info_buf_reg_0_burst <= 6'h0; // @[TxBufferFifo.scala 39:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 139:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 143:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 144:34]
          info_buf_reg_0_burst <= 6'h0; // @[TxBufferFifo.scala 144:34]
        end else begin
          info_buf_reg_0_burst <= _GEN_120;
        end
      end else if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 147:40]
        info_buf_reg_0_burst <= _info_buf_reg_burst_T_5; // @[TxBufferFifo.scala 147:40]
      end else begin
        info_buf_reg_0_burst <= _GEN_120;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_120;
    end
    if (reset) begin // @[TxBufferFifo.scala 39:29]
      info_buf_reg_1_valid <= 1'h0; // @[TxBufferFifo.scala 39:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 139:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 143:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 144:34]
          info_buf_reg_1_valid <= 1'h0; // @[TxBufferFifo.scala 144:34]
        end else begin
          info_buf_reg_1_valid <= _GEN_127;
        end
      end else begin
        info_buf_reg_1_valid <= _GEN_127;
      end
    end else begin
      info_buf_reg_1_valid <= _GEN_127;
    end
    if (reset) begin // @[TxBufferFifo.scala 39:29]
      info_buf_reg_1_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 39:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 139:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 143:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 144:34]
          info_buf_reg_1_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 144:34]
        end else begin
          info_buf_reg_1_ip_chksum <= _GEN_125;
        end
      end else begin
        info_buf_reg_1_ip_chksum <= _GEN_125;
      end
    end else begin
      info_buf_reg_1_ip_chksum <= _GEN_125;
    end
    if (reset) begin // @[TxBufferFifo.scala 39:29]
      info_buf_reg_1_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 39:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 139:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 143:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 144:34]
          info_buf_reg_1_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 144:34]
        end else begin
          info_buf_reg_1_tcp_chksum <= _GEN_123;
        end
      end else begin
        info_buf_reg_1_tcp_chksum <= _GEN_123;
      end
    end else begin
      info_buf_reg_1_tcp_chksum <= _GEN_123;
    end
    if (reset) begin // @[TxBufferFifo.scala 39:29]
      info_buf_reg_1_burst <= 6'h0; // @[TxBufferFifo.scala 39:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 139:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 143:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 144:34]
          info_buf_reg_1_burst <= 6'h0; // @[TxBufferFifo.scala 144:34]
        end else begin
          info_buf_reg_1_burst <= _GEN_121;
        end
      end else if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 147:40]
        info_buf_reg_1_burst <= _info_buf_reg_burst_T_5; // @[TxBufferFifo.scala 147:40]
      end else begin
        info_buf_reg_1_burst <= _GEN_121;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_121;
    end
    if (reset) begin // @[TxBufferFifo.scala 40:29]
      wr_index_reg <= 7'h0; // @[TxBufferFifo.scala 40:29]
    end else if (!(io_reset_counter)) begin // @[TxBufferFifo.scala 62:26]
      if (in_shake_hand) begin // @[TxBufferFifo.scala 66:31]
        if (!(_GEN_2 == 6'h20)) begin // @[TxBufferFifo.scala 70:63]
          wr_index_reg <= _GEN_74;
        end
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 41:29]
      rd_index_reg <= 7'h0; // @[TxBufferFifo.scala 41:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 139:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 143:53]
        rd_index_reg <= _rd_pos_next_T_2; // @[TxBufferFifo.scala 145:20]
      end
    end
    wr_pos_reg <= _GEN_194[6:0]; // @[TxBufferFifo.scala 42:{29,29}]
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      rd_pos_reg <= 7'h0; // @[TxBufferFifo.scala 43:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 120:33]
      rd_pos_reg <= rd_pos_next;
    end
    if (reset) begin // @[TxBufferFifo.scala 51:29]
      pack_counter <= 32'h0; // @[TxBufferFifo.scala 51:29]
    end else if (io_reset_counter) begin // @[TxBufferFifo.scala 62:26]
      pack_counter <= 32'h0; // @[TxBufferFifo.scala 63:18]
    end else if (in_shake_hand) begin // @[TxBufferFifo.scala 66:31]
      if (io_in_tlast) begin // @[TxBufferFifo.scala 67:26]
        pack_counter <= _pack_counter_T_1; // @[TxBufferFifo.scala 68:22]
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 52:28]
      err_counter <= 32'h0; // @[TxBufferFifo.scala 52:28]
    end else if (io_reset_counter) begin // @[TxBufferFifo.scala 62:26]
      err_counter <= 32'h0; // @[TxBufferFifo.scala 64:17]
    end else if (in_shake_hand) begin // @[TxBufferFifo.scala 66:31]
      if (_GEN_2 == 6'h20) begin // @[TxBufferFifo.scala 70:63]
        err_counter <= _err_counter_T_1; // @[TxBufferFifo.scala 82:21]
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 59:30]
      is_overflowed <= 1'h0; // @[TxBufferFifo.scala 59:30]
    end else if (!(io_reset_counter)) begin // @[TxBufferFifo.scala 62:26]
      if (in_shake_hand) begin // @[TxBufferFifo.scala 66:31]
        if (_GEN_2 == 6'h20) begin // @[TxBufferFifo.scala 70:63]
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
  wire  tx_pipeline_clock; // @[TxHandler.scala 22:27]
  wire  tx_pipeline_reset; // @[TxHandler.scala 22:27]
  wire [511:0] tx_pipeline_io_in_tdata; // @[TxHandler.scala 22:27]
  wire  tx_pipeline_io_in_tvalid; // @[TxHandler.scala 22:27]
  wire  tx_pipeline_io_in_tready; // @[TxHandler.scala 22:27]
  wire  tx_pipeline_io_in_tlast; // @[TxHandler.scala 22:27]
  wire  tx_pipeline_io_in_tuser; // @[TxHandler.scala 22:27]
  wire [511:0] tx_pipeline_io_out_tdata; // @[TxHandler.scala 22:27]
  wire  tx_pipeline_io_out_tvalid; // @[TxHandler.scala 22:27]
  wire  tx_pipeline_io_out_tready; // @[TxHandler.scala 22:27]
  wire  tx_pipeline_io_out_tlast; // @[TxHandler.scala 22:27]
  wire [31:0] tx_pipeline_io_out_tx_info_ip_chksum; // @[TxHandler.scala 22:27]
  wire [31:0] tx_pipeline_io_out_tx_info_tcp_chksum; // @[TxHandler.scala 22:27]
  wire  tx_buffer_fifo_clock; // @[TxHandler.scala 26:30]
  wire  tx_buffer_fifo_reset; // @[TxHandler.scala 26:30]
  wire [511:0] tx_buffer_fifo_io_in_tdata; // @[TxHandler.scala 26:30]
  wire  tx_buffer_fifo_io_in_tvalid; // @[TxHandler.scala 26:30]
  wire  tx_buffer_fifo_io_in_tready; // @[TxHandler.scala 26:30]
  wire  tx_buffer_fifo_io_in_tlast; // @[TxHandler.scala 26:30]
  wire [31:0] tx_buffer_fifo_io_in_tx_info_ip_chksum; // @[TxHandler.scala 26:30]
  wire [31:0] tx_buffer_fifo_io_in_tx_info_tcp_chksum; // @[TxHandler.scala 26:30]
  wire [511:0] tx_buffer_fifo_io_out_tdata; // @[TxHandler.scala 26:30]
  wire  tx_buffer_fifo_io_out_tvalid; // @[TxHandler.scala 26:30]
  wire  tx_buffer_fifo_io_out_tready; // @[TxHandler.scala 26:30]
  wire  tx_buffer_fifo_io_out_tlast; // @[TxHandler.scala 26:30]
  wire  tx_buffer_fifo_io_reset_counter; // @[TxHandler.scala 26:30]
  wire [31:0] tx_buffer_fifo_io_h2c_pack_counter; // @[TxHandler.scala 26:30]
  wire [31:0] tx_buffer_fifo_io_h2c_err_counter; // @[TxHandler.scala 26:30]
  TxPipeline tx_pipeline ( // @[TxHandler.scala 22:27]
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
  TxBufferFifo tx_buffer_fifo ( // @[TxHandler.scala 26:30]
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
  assign io_QDMA_h2c_stub_out_tready = tx_pipeline_io_in_tready; // @[TxHandler.scala 23:32]
  assign io_CMAC_in_tdata = tx_buffer_fifo_io_out_tdata; // @[TxHandler.scala 28:35]
  assign io_CMAC_in_tvalid = tx_buffer_fifo_io_out_tvalid; // @[TxHandler.scala 28:35]
  assign io_CMAC_in_tlast = tx_buffer_fifo_io_out_tlast; // @[TxHandler.scala 28:35]
  assign io_h2c_pack_counter = tx_buffer_fifo_io_h2c_pack_counter; // @[TxHandler.scala 30:35]
  assign io_h2c_err_counter = tx_buffer_fifo_io_h2c_err_counter; // @[TxHandler.scala 31:35]
  assign tx_pipeline_clock = clock;
  assign tx_pipeline_reset = reset;
  assign tx_pipeline_io_in_tdata = io_QDMA_h2c_stub_out_tdata; // @[TxHandler.scala 23:32]
  assign tx_pipeline_io_in_tvalid = io_QDMA_h2c_stub_out_tvalid; // @[TxHandler.scala 23:32]
  assign tx_pipeline_io_in_tlast = io_QDMA_h2c_stub_out_tlast; // @[TxHandler.scala 23:32]
  assign tx_pipeline_io_in_tuser = io_QDMA_h2c_stub_out_tuser; // @[TxHandler.scala 23:32]
  assign tx_pipeline_io_out_tready = tx_buffer_fifo_io_in_tready; // @[TxHandler.scala 27:35]
  assign tx_buffer_fifo_clock = clock;
  assign tx_buffer_fifo_reset = reset;
  assign tx_buffer_fifo_io_in_tdata = tx_pipeline_io_out_tdata; // @[TxHandler.scala 27:35]
  assign tx_buffer_fifo_io_in_tvalid = tx_pipeline_io_out_tvalid; // @[TxHandler.scala 27:35]
  assign tx_buffer_fifo_io_in_tlast = tx_pipeline_io_out_tlast; // @[TxHandler.scala 27:35]
  assign tx_buffer_fifo_io_in_tx_info_ip_chksum = tx_pipeline_io_out_tx_info_ip_chksum; // @[TxHandler.scala 27:35]
  assign tx_buffer_fifo_io_in_tx_info_tcp_chksum = tx_pipeline_io_out_tx_info_tcp_chksum; // @[TxHandler.scala 27:35]
  assign tx_buffer_fifo_io_out_tready = io_CMAC_in_tready; // @[TxHandler.scala 28:35]
  assign tx_buffer_fifo_io_reset_counter = io_reset_counter; // @[TxHandler.scala 29:35]
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
  reg [7:0] cal_reg_0; // @[Misc.scala 33:20]
  reg [7:0] cal_reg_1; // @[Misc.scala 33:20]
  reg [7:0] cal_reg_2; // @[Misc.scala 33:20]
  reg [7:0] cal_reg_3; // @[Misc.scala 33:20]
  reg [7:0] cal_reg_4; // @[Misc.scala 33:20]
  reg [7:0] cal_reg_5; // @[Misc.scala 33:20]
  reg [7:0] cal_reg_6; // @[Misc.scala 33:20]
  reg [7:0] cal_reg_7; // @[Misc.scala 33:20]
  wire [7:0] _cal_reg_0_T_1 = io_in_vec_0 + io_in_vec_1; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_0_T_3 = io_in_vec_2 + io_in_vec_3; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_0_T_5 = io_in_vec_4 + io_in_vec_5; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_0_T_7 = io_in_vec_6 + io_in_vec_7; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_0_T_9 = _cal_reg_0_T_1 + _cal_reg_0_T_3; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_0_T_11 = _cal_reg_0_T_5 + _cal_reg_0_T_7; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_1_T_1 = io_in_vec_8 + io_in_vec_9; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_1_T_3 = io_in_vec_10 + io_in_vec_11; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_1_T_5 = io_in_vec_12 + io_in_vec_13; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_1_T_7 = io_in_vec_14 + io_in_vec_15; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_1_T_9 = _cal_reg_1_T_1 + _cal_reg_1_T_3; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_1_T_11 = _cal_reg_1_T_5 + _cal_reg_1_T_7; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_2_T_1 = io_in_vec_16 + io_in_vec_17; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_2_T_3 = io_in_vec_18 + io_in_vec_19; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_2_T_5 = io_in_vec_20 + io_in_vec_21; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_2_T_7 = io_in_vec_22 + io_in_vec_23; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_2_T_9 = _cal_reg_2_T_1 + _cal_reg_2_T_3; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_2_T_11 = _cal_reg_2_T_5 + _cal_reg_2_T_7; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_3_T_1 = io_in_vec_24 + io_in_vec_25; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_3_T_3 = io_in_vec_26 + io_in_vec_27; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_3_T_5 = io_in_vec_28 + io_in_vec_29; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_3_T_7 = io_in_vec_30 + io_in_vec_31; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_3_T_9 = _cal_reg_3_T_1 + _cal_reg_3_T_3; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_3_T_11 = _cal_reg_3_T_5 + _cal_reg_3_T_7; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_4_T_1 = io_in_vec_32 + io_in_vec_33; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_4_T_3 = io_in_vec_34 + io_in_vec_35; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_4_T_5 = io_in_vec_36 + io_in_vec_37; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_4_T_7 = io_in_vec_38 + io_in_vec_39; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_4_T_9 = _cal_reg_4_T_1 + _cal_reg_4_T_3; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_4_T_11 = _cal_reg_4_T_5 + _cal_reg_4_T_7; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_5_T_1 = io_in_vec_40 + io_in_vec_41; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_5_T_3 = io_in_vec_42 + io_in_vec_43; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_5_T_5 = io_in_vec_44 + io_in_vec_45; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_5_T_7 = io_in_vec_46 + io_in_vec_47; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_5_T_9 = _cal_reg_5_T_1 + _cal_reg_5_T_3; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_5_T_11 = _cal_reg_5_T_5 + _cal_reg_5_T_7; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_6_T_1 = io_in_vec_48 + io_in_vec_49; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_6_T_3 = io_in_vec_50 + io_in_vec_51; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_6_T_5 = io_in_vec_52 + io_in_vec_53; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_6_T_7 = io_in_vec_54 + io_in_vec_55; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_6_T_9 = _cal_reg_6_T_1 + _cal_reg_6_T_3; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_6_T_11 = _cal_reg_6_T_5 + _cal_reg_6_T_7; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_7_T_1 = io_in_vec_56 + io_in_vec_57; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_7_T_3 = io_in_vec_58 + io_in_vec_59; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_7_T_5 = io_in_vec_60 + io_in_vec_61; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_7_T_7 = io_in_vec_62 + io_in_vec_63; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_7_T_9 = _cal_reg_7_T_1 + _cal_reg_7_T_3; // @[Misc.scala 45:44]
  wire [7:0] _cal_reg_7_T_11 = _cal_reg_7_T_5 + _cal_reg_7_T_7; // @[Misc.scala 45:44]
  wire [7:0] _io_out_sum_T_1 = cal_reg_0 + cal_reg_1; // @[Misc.scala 48:37]
  wire [7:0] _io_out_sum_T_3 = cal_reg_2 + cal_reg_3; // @[Misc.scala 48:37]
  wire [7:0] _io_out_sum_T_5 = cal_reg_4 + cal_reg_5; // @[Misc.scala 48:37]
  wire [7:0] _io_out_sum_T_7 = cal_reg_6 + cal_reg_7; // @[Misc.scala 48:37]
  wire [7:0] _io_out_sum_T_9 = _io_out_sum_T_1 + _io_out_sum_T_3; // @[Misc.scala 48:37]
  wire [7:0] _io_out_sum_T_11 = _io_out_sum_T_5 + _io_out_sum_T_7; // @[Misc.scala 48:37]
  assign io_out_sum = _io_out_sum_T_9 + _io_out_sum_T_11; // @[Misc.scala 48:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_9 + _cal_reg_0_T_11; // @[Misc.scala 45:44]
    cal_reg_1 <= _cal_reg_1_T_9 + _cal_reg_1_T_11; // @[Misc.scala 45:44]
    cal_reg_2 <= _cal_reg_2_T_9 + _cal_reg_2_T_11; // @[Misc.scala 45:44]
    cal_reg_3 <= _cal_reg_3_T_9 + _cal_reg_3_T_11; // @[Misc.scala 45:44]
    cal_reg_4 <= _cal_reg_4_T_9 + _cal_reg_4_T_11; // @[Misc.scala 45:44]
    cal_reg_5 <= _cal_reg_5_T_9 + _cal_reg_5_T_11; // @[Misc.scala 45:44]
    cal_reg_6 <= _cal_reg_6_T_9 + _cal_reg_6_T_11; // @[Misc.scala 45:44]
    cal_reg_7 <= _cal_reg_7_T_9 + _cal_reg_7_T_11; // @[Misc.scala 45:44]
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
module ArbitDecoder(
  input  [31:0] io_in_mask,
  output [5:0]  io_out_dec
);
  wire  grant_0 = io_in_mask[0]; // @[Misc.scala 99:25]
  wire  notgranted_0 = ~grant_0; // @[Misc.scala 100:20]
  wire  grant_1 = notgranted_0 & io_in_mask[1]; // @[Misc.scala 102:33]
  wire  notgranted_1 = notgranted_0 & ~io_in_mask[1]; // @[Misc.scala 103:38]
  wire  grant_2 = notgranted_1 & io_in_mask[2]; // @[Misc.scala 102:33]
  wire  notgranted_2 = notgranted_1 & ~io_in_mask[2]; // @[Misc.scala 103:38]
  wire  grant_3 = notgranted_2 & io_in_mask[3]; // @[Misc.scala 102:33]
  wire  notgranted_3 = notgranted_2 & ~io_in_mask[3]; // @[Misc.scala 103:38]
  wire  grant_4 = notgranted_3 & io_in_mask[4]; // @[Misc.scala 102:33]
  wire  notgranted_4 = notgranted_3 & ~io_in_mask[4]; // @[Misc.scala 103:38]
  wire  grant_5 = notgranted_4 & io_in_mask[5]; // @[Misc.scala 102:33]
  wire  notgranted_5 = notgranted_4 & ~io_in_mask[5]; // @[Misc.scala 103:38]
  wire  grant_6 = notgranted_5 & io_in_mask[6]; // @[Misc.scala 102:33]
  wire  notgranted_6 = notgranted_5 & ~io_in_mask[6]; // @[Misc.scala 103:38]
  wire  grant_7 = notgranted_6 & io_in_mask[7]; // @[Misc.scala 102:33]
  wire  notgranted_7 = notgranted_6 & ~io_in_mask[7]; // @[Misc.scala 103:38]
  wire  grant_8 = notgranted_7 & io_in_mask[8]; // @[Misc.scala 102:33]
  wire  notgranted_8 = notgranted_7 & ~io_in_mask[8]; // @[Misc.scala 103:38]
  wire  grant_9 = notgranted_8 & io_in_mask[9]; // @[Misc.scala 102:33]
  wire  notgranted_9 = notgranted_8 & ~io_in_mask[9]; // @[Misc.scala 103:38]
  wire  grant_10 = notgranted_9 & io_in_mask[10]; // @[Misc.scala 102:33]
  wire  notgranted_10 = notgranted_9 & ~io_in_mask[10]; // @[Misc.scala 103:38]
  wire  grant_11 = notgranted_10 & io_in_mask[11]; // @[Misc.scala 102:33]
  wire  notgranted_11 = notgranted_10 & ~io_in_mask[11]; // @[Misc.scala 103:38]
  wire  grant_12 = notgranted_11 & io_in_mask[12]; // @[Misc.scala 102:33]
  wire  notgranted_12 = notgranted_11 & ~io_in_mask[12]; // @[Misc.scala 103:38]
  wire  grant_13 = notgranted_12 & io_in_mask[13]; // @[Misc.scala 102:33]
  wire  notgranted_13 = notgranted_12 & ~io_in_mask[13]; // @[Misc.scala 103:38]
  wire  grant_14 = notgranted_13 & io_in_mask[14]; // @[Misc.scala 102:33]
  wire  notgranted_14 = notgranted_13 & ~io_in_mask[14]; // @[Misc.scala 103:38]
  wire  grant_15 = notgranted_14 & io_in_mask[15]; // @[Misc.scala 102:33]
  wire  notgranted_15 = notgranted_14 & ~io_in_mask[15]; // @[Misc.scala 103:38]
  wire  grant_16 = notgranted_15 & io_in_mask[16]; // @[Misc.scala 102:33]
  wire  notgranted_16 = notgranted_15 & ~io_in_mask[16]; // @[Misc.scala 103:38]
  wire  grant_17 = notgranted_16 & io_in_mask[17]; // @[Misc.scala 102:33]
  wire  notgranted_17 = notgranted_16 & ~io_in_mask[17]; // @[Misc.scala 103:38]
  wire  grant_18 = notgranted_17 & io_in_mask[18]; // @[Misc.scala 102:33]
  wire  notgranted_18 = notgranted_17 & ~io_in_mask[18]; // @[Misc.scala 103:38]
  wire  grant_19 = notgranted_18 & io_in_mask[19]; // @[Misc.scala 102:33]
  wire  notgranted_19 = notgranted_18 & ~io_in_mask[19]; // @[Misc.scala 103:38]
  wire  grant_20 = notgranted_19 & io_in_mask[20]; // @[Misc.scala 102:33]
  wire  notgranted_20 = notgranted_19 & ~io_in_mask[20]; // @[Misc.scala 103:38]
  wire  grant_21 = notgranted_20 & io_in_mask[21]; // @[Misc.scala 102:33]
  wire  notgranted_21 = notgranted_20 & ~io_in_mask[21]; // @[Misc.scala 103:38]
  wire  grant_22 = notgranted_21 & io_in_mask[22]; // @[Misc.scala 102:33]
  wire  notgranted_22 = notgranted_21 & ~io_in_mask[22]; // @[Misc.scala 103:38]
  wire  grant_23 = notgranted_22 & io_in_mask[23]; // @[Misc.scala 102:33]
  wire  notgranted_23 = notgranted_22 & ~io_in_mask[23]; // @[Misc.scala 103:38]
  wire  grant_24 = notgranted_23 & io_in_mask[24]; // @[Misc.scala 102:33]
  wire  notgranted_24 = notgranted_23 & ~io_in_mask[24]; // @[Misc.scala 103:38]
  wire  grant_25 = notgranted_24 & io_in_mask[25]; // @[Misc.scala 102:33]
  wire  notgranted_25 = notgranted_24 & ~io_in_mask[25]; // @[Misc.scala 103:38]
  wire  grant_26 = notgranted_25 & io_in_mask[26]; // @[Misc.scala 102:33]
  wire  notgranted_26 = notgranted_25 & ~io_in_mask[26]; // @[Misc.scala 103:38]
  wire  grant_27 = notgranted_26 & io_in_mask[27]; // @[Misc.scala 102:33]
  wire  notgranted_27 = notgranted_26 & ~io_in_mask[27]; // @[Misc.scala 103:38]
  wire  grant_28 = notgranted_27 & io_in_mask[28]; // @[Misc.scala 102:33]
  wire  notgranted_28 = notgranted_27 & ~io_in_mask[28]; // @[Misc.scala 103:38]
  wire  grant_29 = notgranted_28 & io_in_mask[29]; // @[Misc.scala 102:33]
  wire  notgranted_29 = notgranted_28 & ~io_in_mask[29]; // @[Misc.scala 103:38]
  wire  grant_30 = notgranted_29 & io_in_mask[30]; // @[Misc.scala 102:33]
  wire  notgranted_30 = notgranted_29 & ~io_in_mask[30]; // @[Misc.scala 103:38]
  wire  grant_31 = notgranted_30 & io_in_mask[31]; // @[Misc.scala 102:33]
  wire [1:0] _T_7 = grant_2 ? 2'h2 : {{1'd0}, grant_1}; // @[Misc.scala 106:57]
  wire [1:0] _T_11 = grant_3 ? 2'h3 : _T_7; // @[Misc.scala 106:57]
  wire [2:0] _T_15 = grant_4 ? 3'h4 : {{1'd0}, _T_11}; // @[Misc.scala 106:57]
  wire [2:0] _T_19 = grant_5 ? 3'h5 : _T_15; // @[Misc.scala 106:57]
  wire [2:0] _T_23 = grant_6 ? 3'h6 : _T_19; // @[Misc.scala 106:57]
  wire [2:0] _T_27 = grant_7 ? 3'h7 : _T_23; // @[Misc.scala 106:57]
  wire [3:0] _T_31 = grant_8 ? 4'h8 : {{1'd0}, _T_27}; // @[Misc.scala 106:57]
  wire [3:0] _T_35 = grant_9 ? 4'h9 : _T_31; // @[Misc.scala 106:57]
  wire [3:0] _T_39 = grant_10 ? 4'ha : _T_35; // @[Misc.scala 106:57]
  wire [3:0] _T_43 = grant_11 ? 4'hb : _T_39; // @[Misc.scala 106:57]
  wire [3:0] _T_47 = grant_12 ? 4'hc : _T_43; // @[Misc.scala 106:57]
  wire [3:0] _T_51 = grant_13 ? 4'hd : _T_47; // @[Misc.scala 106:57]
  wire [3:0] _T_55 = grant_14 ? 4'he : _T_51; // @[Misc.scala 106:57]
  wire [3:0] _T_59 = grant_15 ? 4'hf : _T_55; // @[Misc.scala 106:57]
  wire [4:0] _T_63 = grant_16 ? 5'h10 : {{1'd0}, _T_59}; // @[Misc.scala 106:57]
  wire [4:0] _T_67 = grant_17 ? 5'h11 : _T_63; // @[Misc.scala 106:57]
  wire [4:0] _T_71 = grant_18 ? 5'h12 : _T_67; // @[Misc.scala 106:57]
  wire [4:0] _T_75 = grant_19 ? 5'h13 : _T_71; // @[Misc.scala 106:57]
  wire [4:0] _T_79 = grant_20 ? 5'h14 : _T_75; // @[Misc.scala 106:57]
  wire [4:0] _T_83 = grant_21 ? 5'h15 : _T_79; // @[Misc.scala 106:57]
  wire [4:0] _T_87 = grant_22 ? 5'h16 : _T_83; // @[Misc.scala 106:57]
  wire [4:0] _T_91 = grant_23 ? 5'h17 : _T_87; // @[Misc.scala 106:57]
  wire [4:0] _T_95 = grant_24 ? 5'h18 : _T_91; // @[Misc.scala 106:57]
  wire [4:0] _T_99 = grant_25 ? 5'h19 : _T_95; // @[Misc.scala 106:57]
  wire [4:0] _T_103 = grant_26 ? 5'h1a : _T_99; // @[Misc.scala 106:57]
  wire [4:0] _T_107 = grant_27 ? 5'h1b : _T_103; // @[Misc.scala 106:57]
  wire [4:0] _T_111 = grant_28 ? 5'h1c : _T_107; // @[Misc.scala 106:57]
  wire [4:0] _T_115 = grant_29 ? 5'h1d : _T_111; // @[Misc.scala 106:57]
  wire [4:0] _T_119 = grant_30 ? 5'h1e : _T_115; // @[Misc.scala 106:57]
  wire [4:0] _T_123 = grant_31 ? 5'h1f : _T_119; // @[Misc.scala 106:57]
  assign io_out_dec = {{1'd0}, _T_123}; // @[Misc.scala 107:14]
endmodule
module SoftwareRegWrapper(
  input         clock,
  input         reset,
  input  [31:0] io_in_mask,
  input         io_in_tlast,
  output [5:0]  io_out_dec
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] arbitDecoder_io_in_mask; // @[Misc.scala 67:28]
  wire [5:0] arbitDecoder_io_out_dec; // @[Misc.scala 67:28]
  reg [31:0] sav_mask_reg; // @[Misc.scala 63:29]
  reg [31:0] cur_mask_reg; // @[Misc.scala 64:29]
  wire [94:0] _next_mask_T = 95'h1 << io_out_dec; // @[Misc.scala 69:48]
  wire [94:0] _next_mask_T_1 = ~_next_mask_T; // @[Misc.scala 69:33]
  wire [94:0] _GEN_4 = {{63'd0}, cur_mask_reg}; // @[Misc.scala 69:30]
  wire [94:0] _next_mask_T_2 = _GEN_4 & _next_mask_T_1; // @[Misc.scala 69:30]
  wire [31:0] next_mask = _next_mask_T_2[31:0]; // @[Misc.scala 66:23 69:13]
  ArbitDecoder arbitDecoder ( // @[Misc.scala 67:28]
    .io_in_mask(arbitDecoder_io_in_mask),
    .io_out_dec(arbitDecoder_io_out_dec)
  );
  assign io_out_dec = arbitDecoder_io_out_dec; // @[Misc.scala 85:14]
  assign arbitDecoder_io_in_mask = cur_mask_reg; // @[Misc.scala 70:27]
  always @(posedge clock) begin
    if (reset) begin // @[Misc.scala 63:29]
      sav_mask_reg <= io_in_mask; // @[Misc.scala 63:29]
    end else if (sav_mask_reg != io_in_mask) begin // @[Misc.scala 72:46]
      sav_mask_reg <= io_in_mask; // @[Misc.scala 74:18]
    end
    if (reset) begin // @[Misc.scala 64:29]
      cur_mask_reg <= io_in_mask; // @[Misc.scala 64:29]
    end else if (sav_mask_reg != io_in_mask) begin // @[Misc.scala 72:46]
      cur_mask_reg <= io_in_mask; // @[Misc.scala 73:18]
    end else if (io_in_tlast) begin // @[Misc.scala 76:28]
      if (next_mask == 32'h0) begin // @[Misc.scala 77:32]
        cur_mask_reg <= sav_mask_reg; // @[Misc.scala 78:22]
      end else begin
        cur_mask_reg <= next_mask; // @[Misc.scala 81:24]
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
  _RAND_0 = {1{`RANDOM}};
  sav_mask_reg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  cur_mask_reg = _RAND_1[31:0];
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
  output [5:0]   io_out_rx_info_qid,
  input  [31:0]  io_extern_config_c2h_sw_qid_mask
);
`ifdef RANDOMIZE_REG_INIT
  reg [607:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  burst_size_cal_clock; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_0; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_1; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_2; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_3; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_4; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_5; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_6; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_7; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_8; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_9; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_10; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_11; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_12; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_13; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_14; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_15; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_16; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_17; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_18; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_19; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_20; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_21; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_22; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_23; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_24; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_25; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_26; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_27; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_28; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_29; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_30; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_31; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_32; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_33; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_34; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_35; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_36; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_37; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_38; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_39; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_40; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_41; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_42; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_43; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_44; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_45; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_46; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_47; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_48; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_49; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_50; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_51; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_52; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_53; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_54; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_55; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_56; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_57; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_58; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_59; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_60; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_61; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_62; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_in_vec_63; // @[RxConverter.scala 31:30]
  wire [7:0] burst_size_cal_io_out_sum; // @[RxConverter.scala 31:30]
  wire  qid_mask_wrapper_clock; // @[RxConverter.scala 49:32]
  wire  qid_mask_wrapper_reset; // @[RxConverter.scala 49:32]
  wire [31:0] qid_mask_wrapper_io_in_mask; // @[RxConverter.scala 49:32]
  wire  qid_mask_wrapper_io_in_tlast; // @[RxConverter.scala 49:32]
  wire [5:0] qid_mask_wrapper_io_out_dec; // @[RxConverter.scala 49:32]
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[RxConverter.scala 17:36]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[RxConverter.scala 18:38]
  wire [578:0] _in_reg_T = {io_in_tuser,io_in_tkeep,io_in_tdata,io_in_tvalid,io_in_tlast}; // @[Cat.scala 31:58]
  reg [578:0] in_reg_r; // @[Reg.scala 28:20]
  wire  in_reg_tlast = in_reg_r[0]; // @[RxConverter.scala 19:119]
  wire  in_reg_tvalid = in_reg_r[1]; // @[RxConverter.scala 19:119]
  wire [511:0] in_reg_tdata = in_reg_r[513:2]; // @[RxConverter.scala 19:119]
  wire [63:0] in_reg_tkeep = in_reg_r[577:514]; // @[RxConverter.scala 19:119]
  reg  first_beat_reg; // @[Reg.scala 28:20]
  wire  _GEN_1 = in_shake_hand ? in_reg_tlast : first_beat_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_reg_used; // @[RxConverter.scala 21:28]
  wire  _GEN_2 = out_shake_hand ? 1'h0 : in_reg_used; // @[RxConverter.scala 24:29 25:17 21:28]
  wire  _GEN_3 = in_shake_hand | _GEN_2; // @[RxConverter.scala 22:23 23:17]
  reg [31:0] extern_config_reg_c2h_sw_qid_mask; // @[RxConverter.scala 27:34]
  wire [63:0] cal_tkeep = in_shake_hand ? io_in_tkeep : in_reg_tkeep; // @[RxConverter.scala 30:22]
  reg [15:0] tlen_reg; // @[RxConverter.scala 36:25]
  wire [15:0] _GEN_6 = {{8'd0}, burst_size_cal_io_out_sum}; // @[RxConverter.scala 41:28]
  wire [15:0] _tlen_reg_T_1 = tlen_reg + _GEN_6; // @[RxConverter.scala 41:28]
  wire  keep_val_0 = in_reg_tkeep[0]; // @[RxConverter.scala 47:32]
  wire  keep_val_8 = in_reg_tkeep[1]; // @[RxConverter.scala 47:32]
  wire  keep_val_16 = in_reg_tkeep[2]; // @[RxConverter.scala 47:32]
  wire  keep_val_24 = in_reg_tkeep[3]; // @[RxConverter.scala 47:32]
  wire  keep_val_32 = in_reg_tkeep[4]; // @[RxConverter.scala 47:32]
  wire  keep_val_40 = in_reg_tkeep[5]; // @[RxConverter.scala 47:32]
  wire  keep_val_48 = in_reg_tkeep[6]; // @[RxConverter.scala 47:32]
  wire  keep_val_56 = in_reg_tkeep[7]; // @[RxConverter.scala 47:32]
  wire  keep_val_64 = in_reg_tkeep[8]; // @[RxConverter.scala 47:32]
  wire  keep_val_72 = in_reg_tkeep[9]; // @[RxConverter.scala 47:32]
  wire  keep_val_80 = in_reg_tkeep[10]; // @[RxConverter.scala 47:32]
  wire  keep_val_88 = in_reg_tkeep[11]; // @[RxConverter.scala 47:32]
  wire  keep_val_96 = in_reg_tkeep[12]; // @[RxConverter.scala 47:32]
  wire  keep_val_104 = in_reg_tkeep[13]; // @[RxConverter.scala 47:32]
  wire  keep_val_112 = in_reg_tkeep[14]; // @[RxConverter.scala 47:32]
  wire  keep_val_120 = in_reg_tkeep[15]; // @[RxConverter.scala 47:32]
  wire  keep_val_128 = in_reg_tkeep[16]; // @[RxConverter.scala 47:32]
  wire  keep_val_136 = in_reg_tkeep[17]; // @[RxConverter.scala 47:32]
  wire  keep_val_144 = in_reg_tkeep[18]; // @[RxConverter.scala 47:32]
  wire  keep_val_152 = in_reg_tkeep[19]; // @[RxConverter.scala 47:32]
  wire  keep_val_160 = in_reg_tkeep[20]; // @[RxConverter.scala 47:32]
  wire  keep_val_168 = in_reg_tkeep[21]; // @[RxConverter.scala 47:32]
  wire  keep_val_176 = in_reg_tkeep[22]; // @[RxConverter.scala 47:32]
  wire  keep_val_184 = in_reg_tkeep[23]; // @[RxConverter.scala 47:32]
  wire  keep_val_192 = in_reg_tkeep[24]; // @[RxConverter.scala 47:32]
  wire  keep_val_200 = in_reg_tkeep[25]; // @[RxConverter.scala 47:32]
  wire  keep_val_208 = in_reg_tkeep[26]; // @[RxConverter.scala 47:32]
  wire  keep_val_216 = in_reg_tkeep[27]; // @[RxConverter.scala 47:32]
  wire  keep_val_224 = in_reg_tkeep[28]; // @[RxConverter.scala 47:32]
  wire  keep_val_232 = in_reg_tkeep[29]; // @[RxConverter.scala 47:32]
  wire  keep_val_240 = in_reg_tkeep[30]; // @[RxConverter.scala 47:32]
  wire  keep_val_248 = in_reg_tkeep[31]; // @[RxConverter.scala 47:32]
  wire  keep_val_256 = in_reg_tkeep[32]; // @[RxConverter.scala 47:32]
  wire  keep_val_264 = in_reg_tkeep[33]; // @[RxConverter.scala 47:32]
  wire  keep_val_272 = in_reg_tkeep[34]; // @[RxConverter.scala 47:32]
  wire  keep_val_280 = in_reg_tkeep[35]; // @[RxConverter.scala 47:32]
  wire  keep_val_288 = in_reg_tkeep[36]; // @[RxConverter.scala 47:32]
  wire  keep_val_296 = in_reg_tkeep[37]; // @[RxConverter.scala 47:32]
  wire  keep_val_304 = in_reg_tkeep[38]; // @[RxConverter.scala 47:32]
  wire  keep_val_312 = in_reg_tkeep[39]; // @[RxConverter.scala 47:32]
  wire  keep_val_320 = in_reg_tkeep[40]; // @[RxConverter.scala 47:32]
  wire  keep_val_328 = in_reg_tkeep[41]; // @[RxConverter.scala 47:32]
  wire  keep_val_336 = in_reg_tkeep[42]; // @[RxConverter.scala 47:32]
  wire  keep_val_344 = in_reg_tkeep[43]; // @[RxConverter.scala 47:32]
  wire  keep_val_352 = in_reg_tkeep[44]; // @[RxConverter.scala 47:32]
  wire  keep_val_360 = in_reg_tkeep[45]; // @[RxConverter.scala 47:32]
  wire  keep_val_368 = in_reg_tkeep[46]; // @[RxConverter.scala 47:32]
  wire  keep_val_376 = in_reg_tkeep[47]; // @[RxConverter.scala 47:32]
  wire  keep_val_384 = in_reg_tkeep[48]; // @[RxConverter.scala 47:32]
  wire  keep_val_392 = in_reg_tkeep[49]; // @[RxConverter.scala 47:32]
  wire  keep_val_400 = in_reg_tkeep[50]; // @[RxConverter.scala 47:32]
  wire  keep_val_408 = in_reg_tkeep[51]; // @[RxConverter.scala 47:32]
  wire  keep_val_416 = in_reg_tkeep[52]; // @[RxConverter.scala 47:32]
  wire  keep_val_424 = in_reg_tkeep[53]; // @[RxConverter.scala 47:32]
  wire  keep_val_432 = in_reg_tkeep[54]; // @[RxConverter.scala 47:32]
  wire  keep_val_440 = in_reg_tkeep[55]; // @[RxConverter.scala 47:32]
  wire  keep_val_448 = in_reg_tkeep[56]; // @[RxConverter.scala 47:32]
  wire  keep_val_456 = in_reg_tkeep[57]; // @[RxConverter.scala 47:32]
  wire  keep_val_464 = in_reg_tkeep[58]; // @[RxConverter.scala 47:32]
  wire  keep_val_472 = in_reg_tkeep[59]; // @[RxConverter.scala 47:32]
  wire  keep_val_480 = in_reg_tkeep[60]; // @[RxConverter.scala 47:32]
  wire  keep_val_488 = in_reg_tkeep[61]; // @[RxConverter.scala 47:32]
  wire  keep_val_496 = in_reg_tkeep[62]; // @[RxConverter.scala 47:32]
  wire  keep_val_504 = in_reg_tkeep[63]; // @[RxConverter.scala 47:32]
  wire [7:0] io_out_tdata_lo_lo_lo_lo_lo_lo = {keep_val_0,keep_val_0,keep_val_0,keep_val_0,keep_val_0,keep_val_0,
    keep_val_0,keep_val_0}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_lo_lo_lo_lo_lo = {keep_val_8,keep_val_8,keep_val_8,keep_val_8,keep_val_8,keep_val_8,
    keep_val_8,keep_val_8,io_out_tdata_lo_lo_lo_lo_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_lo_lo_lo_hi_lo = {keep_val_16,keep_val_16,keep_val_16,keep_val_16,keep_val_16,keep_val_16,
    keep_val_16,keep_val_16}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_lo_lo_lo_lo = {keep_val_24,keep_val_24,keep_val_24,keep_val_24,keep_val_24,keep_val_24,
    keep_val_24,keep_val_24,io_out_tdata_lo_lo_lo_lo_hi_lo,io_out_tdata_lo_lo_lo_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_lo_lo_hi_lo_lo = {keep_val_32,keep_val_32,keep_val_32,keep_val_32,keep_val_32,keep_val_32,
    keep_val_32,keep_val_32}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_lo_lo_lo_hi_lo = {keep_val_40,keep_val_40,keep_val_40,keep_val_40,keep_val_40,keep_val_40,
    keep_val_40,keep_val_40,io_out_tdata_lo_lo_lo_hi_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_lo_lo_hi_hi_lo = {keep_val_48,keep_val_48,keep_val_48,keep_val_48,keep_val_48,keep_val_48,
    keep_val_48,keep_val_48}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_lo_lo_lo_hi = {keep_val_56,keep_val_56,keep_val_56,keep_val_56,keep_val_56,keep_val_56,
    keep_val_56,keep_val_56,io_out_tdata_lo_lo_lo_hi_hi_lo,io_out_tdata_lo_lo_lo_hi_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_lo_hi_lo_lo_lo = {keep_val_64,keep_val_64,keep_val_64,keep_val_64,keep_val_64,keep_val_64,
    keep_val_64,keep_val_64}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_lo_lo_hi_lo_lo = {keep_val_72,keep_val_72,keep_val_72,keep_val_72,keep_val_72,keep_val_72,
    keep_val_72,keep_val_72,io_out_tdata_lo_lo_hi_lo_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_lo_hi_lo_hi_lo = {keep_val_80,keep_val_80,keep_val_80,keep_val_80,keep_val_80,keep_val_80,
    keep_val_80,keep_val_80}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_lo_lo_hi_lo = {keep_val_88,keep_val_88,keep_val_88,keep_val_88,keep_val_88,keep_val_88,
    keep_val_88,keep_val_88,io_out_tdata_lo_lo_hi_lo_hi_lo,io_out_tdata_lo_lo_hi_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_lo_hi_hi_lo_lo = {keep_val_96,keep_val_96,keep_val_96,keep_val_96,keep_val_96,keep_val_96,
    keep_val_96,keep_val_96}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_lo_lo_hi_hi_lo = {keep_val_104,keep_val_104,keep_val_104,keep_val_104,keep_val_104,
    keep_val_104,keep_val_104,keep_val_104,io_out_tdata_lo_lo_hi_hi_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_lo_hi_hi_hi_lo = {keep_val_112,keep_val_112,keep_val_112,keep_val_112,keep_val_112,
    keep_val_112,keep_val_112,keep_val_112}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_lo_lo_hi_hi = {keep_val_120,keep_val_120,keep_val_120,keep_val_120,keep_val_120,keep_val_120,
    keep_val_120,keep_val_120,io_out_tdata_lo_lo_hi_hi_hi_lo,io_out_tdata_lo_lo_hi_hi_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_hi_lo_lo_lo_lo = {keep_val_128,keep_val_128,keep_val_128,keep_val_128,keep_val_128,
    keep_val_128,keep_val_128,keep_val_128}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_lo_hi_lo_lo_lo = {keep_val_136,keep_val_136,keep_val_136,keep_val_136,keep_val_136,
    keep_val_136,keep_val_136,keep_val_136,io_out_tdata_lo_hi_lo_lo_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_hi_lo_lo_hi_lo = {keep_val_144,keep_val_144,keep_val_144,keep_val_144,keep_val_144,
    keep_val_144,keep_val_144,keep_val_144}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_lo_hi_lo_lo = {keep_val_152,keep_val_152,keep_val_152,keep_val_152,keep_val_152,keep_val_152,
    keep_val_152,keep_val_152,io_out_tdata_lo_hi_lo_lo_hi_lo,io_out_tdata_lo_hi_lo_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_hi_lo_hi_lo_lo = {keep_val_160,keep_val_160,keep_val_160,keep_val_160,keep_val_160,
    keep_val_160,keep_val_160,keep_val_160}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_lo_hi_lo_hi_lo = {keep_val_168,keep_val_168,keep_val_168,keep_val_168,keep_val_168,
    keep_val_168,keep_val_168,keep_val_168,io_out_tdata_lo_hi_lo_hi_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_hi_lo_hi_hi_lo = {keep_val_176,keep_val_176,keep_val_176,keep_val_176,keep_val_176,
    keep_val_176,keep_val_176,keep_val_176}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_lo_hi_lo_hi = {keep_val_184,keep_val_184,keep_val_184,keep_val_184,keep_val_184,keep_val_184,
    keep_val_184,keep_val_184,io_out_tdata_lo_hi_lo_hi_hi_lo,io_out_tdata_lo_hi_lo_hi_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_hi_hi_lo_lo_lo = {keep_val_192,keep_val_192,keep_val_192,keep_val_192,keep_val_192,
    keep_val_192,keep_val_192,keep_val_192}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_lo_hi_hi_lo_lo = {keep_val_200,keep_val_200,keep_val_200,keep_val_200,keep_val_200,
    keep_val_200,keep_val_200,keep_val_200,io_out_tdata_lo_hi_hi_lo_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_hi_hi_lo_hi_lo = {keep_val_208,keep_val_208,keep_val_208,keep_val_208,keep_val_208,
    keep_val_208,keep_val_208,keep_val_208}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_lo_hi_hi_lo = {keep_val_216,keep_val_216,keep_val_216,keep_val_216,keep_val_216,keep_val_216,
    keep_val_216,keep_val_216,io_out_tdata_lo_hi_hi_lo_hi_lo,io_out_tdata_lo_hi_hi_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_hi_hi_hi_lo_lo = {keep_val_224,keep_val_224,keep_val_224,keep_val_224,keep_val_224,
    keep_val_224,keep_val_224,keep_val_224}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_lo_hi_hi_hi_lo = {keep_val_232,keep_val_232,keep_val_232,keep_val_232,keep_val_232,
    keep_val_232,keep_val_232,keep_val_232,io_out_tdata_lo_hi_hi_hi_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_lo_hi_hi_hi_hi_lo = {keep_val_240,keep_val_240,keep_val_240,keep_val_240,keep_val_240,
    keep_val_240,keep_val_240,keep_val_240}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_lo_hi_hi_hi = {keep_val_248,keep_val_248,keep_val_248,keep_val_248,keep_val_248,keep_val_248,
    keep_val_248,keep_val_248,io_out_tdata_lo_hi_hi_hi_hi_lo,io_out_tdata_lo_hi_hi_hi_lo}; // @[RxConverter.scala 54:52]
  wire [255:0] io_out_tdata_lo = {io_out_tdata_lo_hi_hi_hi,io_out_tdata_lo_hi_hi_lo,io_out_tdata_lo_hi_lo_hi,
    io_out_tdata_lo_hi_lo_lo,io_out_tdata_lo_lo_hi_hi,io_out_tdata_lo_lo_hi_lo,io_out_tdata_lo_lo_lo_hi,
    io_out_tdata_lo_lo_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_lo_lo_lo_lo_lo = {keep_val_256,keep_val_256,keep_val_256,keep_val_256,keep_val_256,
    keep_val_256,keep_val_256,keep_val_256}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_hi_lo_lo_lo_lo = {keep_val_264,keep_val_264,keep_val_264,keep_val_264,keep_val_264,
    keep_val_264,keep_val_264,keep_val_264,io_out_tdata_hi_lo_lo_lo_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_lo_lo_lo_hi_lo = {keep_val_272,keep_val_272,keep_val_272,keep_val_272,keep_val_272,
    keep_val_272,keep_val_272,keep_val_272}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_hi_lo_lo_lo = {keep_val_280,keep_val_280,keep_val_280,keep_val_280,keep_val_280,keep_val_280,
    keep_val_280,keep_val_280,io_out_tdata_hi_lo_lo_lo_hi_lo,io_out_tdata_hi_lo_lo_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_lo_lo_hi_lo_lo = {keep_val_288,keep_val_288,keep_val_288,keep_val_288,keep_val_288,
    keep_val_288,keep_val_288,keep_val_288}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_hi_lo_lo_hi_lo = {keep_val_296,keep_val_296,keep_val_296,keep_val_296,keep_val_296,
    keep_val_296,keep_val_296,keep_val_296,io_out_tdata_hi_lo_lo_hi_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_lo_lo_hi_hi_lo = {keep_val_304,keep_val_304,keep_val_304,keep_val_304,keep_val_304,
    keep_val_304,keep_val_304,keep_val_304}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_hi_lo_lo_hi = {keep_val_312,keep_val_312,keep_val_312,keep_val_312,keep_val_312,keep_val_312,
    keep_val_312,keep_val_312,io_out_tdata_hi_lo_lo_hi_hi_lo,io_out_tdata_hi_lo_lo_hi_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_lo_hi_lo_lo_lo = {keep_val_320,keep_val_320,keep_val_320,keep_val_320,keep_val_320,
    keep_val_320,keep_val_320,keep_val_320}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_hi_lo_hi_lo_lo = {keep_val_328,keep_val_328,keep_val_328,keep_val_328,keep_val_328,
    keep_val_328,keep_val_328,keep_val_328,io_out_tdata_hi_lo_hi_lo_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_lo_hi_lo_hi_lo = {keep_val_336,keep_val_336,keep_val_336,keep_val_336,keep_val_336,
    keep_val_336,keep_val_336,keep_val_336}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_hi_lo_hi_lo = {keep_val_344,keep_val_344,keep_val_344,keep_val_344,keep_val_344,keep_val_344,
    keep_val_344,keep_val_344,io_out_tdata_hi_lo_hi_lo_hi_lo,io_out_tdata_hi_lo_hi_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_lo_hi_hi_lo_lo = {keep_val_352,keep_val_352,keep_val_352,keep_val_352,keep_val_352,
    keep_val_352,keep_val_352,keep_val_352}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_hi_lo_hi_hi_lo = {keep_val_360,keep_val_360,keep_val_360,keep_val_360,keep_val_360,
    keep_val_360,keep_val_360,keep_val_360,io_out_tdata_hi_lo_hi_hi_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_lo_hi_hi_hi_lo = {keep_val_368,keep_val_368,keep_val_368,keep_val_368,keep_val_368,
    keep_val_368,keep_val_368,keep_val_368}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_hi_lo_hi_hi = {keep_val_376,keep_val_376,keep_val_376,keep_val_376,keep_val_376,keep_val_376,
    keep_val_376,keep_val_376,io_out_tdata_hi_lo_hi_hi_hi_lo,io_out_tdata_hi_lo_hi_hi_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_hi_lo_lo_lo_lo = {keep_val_384,keep_val_384,keep_val_384,keep_val_384,keep_val_384,
    keep_val_384,keep_val_384,keep_val_384}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_hi_hi_lo_lo_lo = {keep_val_392,keep_val_392,keep_val_392,keep_val_392,keep_val_392,
    keep_val_392,keep_val_392,keep_val_392,io_out_tdata_hi_hi_lo_lo_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_hi_lo_lo_hi_lo = {keep_val_400,keep_val_400,keep_val_400,keep_val_400,keep_val_400,
    keep_val_400,keep_val_400,keep_val_400}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_hi_hi_lo_lo = {keep_val_408,keep_val_408,keep_val_408,keep_val_408,keep_val_408,keep_val_408,
    keep_val_408,keep_val_408,io_out_tdata_hi_hi_lo_lo_hi_lo,io_out_tdata_hi_hi_lo_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_hi_lo_hi_lo_lo = {keep_val_416,keep_val_416,keep_val_416,keep_val_416,keep_val_416,
    keep_val_416,keep_val_416,keep_val_416}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_hi_hi_lo_hi_lo = {keep_val_424,keep_val_424,keep_val_424,keep_val_424,keep_val_424,
    keep_val_424,keep_val_424,keep_val_424,io_out_tdata_hi_hi_lo_hi_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_hi_lo_hi_hi_lo = {keep_val_432,keep_val_432,keep_val_432,keep_val_432,keep_val_432,
    keep_val_432,keep_val_432,keep_val_432}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_hi_hi_lo_hi = {keep_val_440,keep_val_440,keep_val_440,keep_val_440,keep_val_440,keep_val_440,
    keep_val_440,keep_val_440,io_out_tdata_hi_hi_lo_hi_hi_lo,io_out_tdata_hi_hi_lo_hi_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_hi_hi_lo_lo_lo = {keep_val_448,keep_val_448,keep_val_448,keep_val_448,keep_val_448,
    keep_val_448,keep_val_448,keep_val_448}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_hi_hi_hi_lo_lo = {keep_val_456,keep_val_456,keep_val_456,keep_val_456,keep_val_456,
    keep_val_456,keep_val_456,keep_val_456,io_out_tdata_hi_hi_hi_lo_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_hi_hi_lo_hi_lo = {keep_val_464,keep_val_464,keep_val_464,keep_val_464,keep_val_464,
    keep_val_464,keep_val_464,keep_val_464}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_hi_hi_hi_lo = {keep_val_472,keep_val_472,keep_val_472,keep_val_472,keep_val_472,keep_val_472,
    keep_val_472,keep_val_472,io_out_tdata_hi_hi_hi_lo_hi_lo,io_out_tdata_hi_hi_hi_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_hi_hi_hi_lo_lo = {keep_val_480,keep_val_480,keep_val_480,keep_val_480,keep_val_480,
    keep_val_480,keep_val_480,keep_val_480}; // @[RxConverter.scala 54:52]
  wire [15:0] io_out_tdata_hi_hi_hi_hi_lo = {keep_val_488,keep_val_488,keep_val_488,keep_val_488,keep_val_488,
    keep_val_488,keep_val_488,keep_val_488,io_out_tdata_hi_hi_hi_hi_lo_lo}; // @[RxConverter.scala 54:52]
  wire [7:0] io_out_tdata_hi_hi_hi_hi_hi_lo = {keep_val_496,keep_val_496,keep_val_496,keep_val_496,keep_val_496,
    keep_val_496,keep_val_496,keep_val_496}; // @[RxConverter.scala 54:52]
  wire [31:0] io_out_tdata_hi_hi_hi_hi = {keep_val_504,keep_val_504,keep_val_504,keep_val_504,keep_val_504,keep_val_504,
    keep_val_504,keep_val_504,io_out_tdata_hi_hi_hi_hi_hi_lo,io_out_tdata_hi_hi_hi_hi_lo}; // @[RxConverter.scala 54:52]
  wire [511:0] _io_out_tdata_T = {io_out_tdata_hi_hi_hi_hi,io_out_tdata_hi_hi_hi_lo,io_out_tdata_hi_hi_lo_hi,
    io_out_tdata_hi_hi_lo_lo,io_out_tdata_hi_lo_hi_hi,io_out_tdata_hi_lo_hi_lo,io_out_tdata_hi_lo_lo_hi,
    io_out_tdata_hi_lo_lo_lo,io_out_tdata_lo}; // @[RxConverter.scala 54:52]
  ReduceAddSync_3 burst_size_cal ( // @[RxConverter.scala 31:30]
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
  SoftwareRegWrapper qid_mask_wrapper ( // @[RxConverter.scala 49:32]
    .clock(qid_mask_wrapper_clock),
    .reset(qid_mask_wrapper_reset),
    .io_in_mask(qid_mask_wrapper_io_in_mask),
    .io_in_tlast(qid_mask_wrapper_io_in_tlast),
    .io_out_dec(qid_mask_wrapper_io_out_dec)
  );
  assign io_in_tready = io_out_tready | ~in_reg_used; // @[RxConverter.scala 60:34]
  assign io_out_tdata = in_reg_tdata & _io_out_tdata_T; // @[RxConverter.scala 54:33]
  assign io_out_tvalid = in_reg_tvalid & in_reg_used; // @[RxConverter.scala 55:34]
  assign io_out_tlast = in_reg_r[0]; // @[RxConverter.scala 19:119]
  assign io_out_tuser = in_reg_r[578]; // @[RxConverter.scala 19:119]
  assign io_out_rx_info_tlen = first_beat_reg ? {{8'd0}, burst_size_cal_io_out_sum} : _tlen_reg_T_1; // @[RxConverter.scala 58:29]
  assign io_out_rx_info_qid = qid_mask_wrapper_io_out_dec; // @[RxConverter.scala 59:22]
  assign burst_size_cal_clock = clock;
  assign burst_size_cal_io_in_vec_0 = {{7'd0}, cal_tkeep[0]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_1 = {{7'd0}, cal_tkeep[1]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_2 = {{7'd0}, cal_tkeep[2]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_3 = {{7'd0}, cal_tkeep[3]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_4 = {{7'd0}, cal_tkeep[4]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_5 = {{7'd0}, cal_tkeep[5]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_6 = {{7'd0}, cal_tkeep[6]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_7 = {{7'd0}, cal_tkeep[7]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_8 = {{7'd0}, cal_tkeep[8]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_9 = {{7'd0}, cal_tkeep[9]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_10 = {{7'd0}, cal_tkeep[10]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_11 = {{7'd0}, cal_tkeep[11]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_12 = {{7'd0}, cal_tkeep[12]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_13 = {{7'd0}, cal_tkeep[13]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_14 = {{7'd0}, cal_tkeep[14]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_15 = {{7'd0}, cal_tkeep[15]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_16 = {{7'd0}, cal_tkeep[16]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_17 = {{7'd0}, cal_tkeep[17]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_18 = {{7'd0}, cal_tkeep[18]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_19 = {{7'd0}, cal_tkeep[19]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_20 = {{7'd0}, cal_tkeep[20]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_21 = {{7'd0}, cal_tkeep[21]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_22 = {{7'd0}, cal_tkeep[22]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_23 = {{7'd0}, cal_tkeep[23]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_24 = {{7'd0}, cal_tkeep[24]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_25 = {{7'd0}, cal_tkeep[25]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_26 = {{7'd0}, cal_tkeep[26]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_27 = {{7'd0}, cal_tkeep[27]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_28 = {{7'd0}, cal_tkeep[28]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_29 = {{7'd0}, cal_tkeep[29]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_30 = {{7'd0}, cal_tkeep[30]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_31 = {{7'd0}, cal_tkeep[31]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_32 = {{7'd0}, cal_tkeep[32]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_33 = {{7'd0}, cal_tkeep[33]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_34 = {{7'd0}, cal_tkeep[34]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_35 = {{7'd0}, cal_tkeep[35]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_36 = {{7'd0}, cal_tkeep[36]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_37 = {{7'd0}, cal_tkeep[37]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_38 = {{7'd0}, cal_tkeep[38]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_39 = {{7'd0}, cal_tkeep[39]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_40 = {{7'd0}, cal_tkeep[40]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_41 = {{7'd0}, cal_tkeep[41]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_42 = {{7'd0}, cal_tkeep[42]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_43 = {{7'd0}, cal_tkeep[43]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_44 = {{7'd0}, cal_tkeep[44]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_45 = {{7'd0}, cal_tkeep[45]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_46 = {{7'd0}, cal_tkeep[46]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_47 = {{7'd0}, cal_tkeep[47]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_48 = {{7'd0}, cal_tkeep[48]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_49 = {{7'd0}, cal_tkeep[49]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_50 = {{7'd0}, cal_tkeep[50]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_51 = {{7'd0}, cal_tkeep[51]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_52 = {{7'd0}, cal_tkeep[52]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_53 = {{7'd0}, cal_tkeep[53]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_54 = {{7'd0}, cal_tkeep[54]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_55 = {{7'd0}, cal_tkeep[55]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_56 = {{7'd0}, cal_tkeep[56]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_57 = {{7'd0}, cal_tkeep[57]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_58 = {{7'd0}, cal_tkeep[58]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_59 = {{7'd0}, cal_tkeep[59]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_60 = {{7'd0}, cal_tkeep[60]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_61 = {{7'd0}, cal_tkeep[61]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_62 = {{7'd0}, cal_tkeep[62]}; // @[RxConverter.scala 32:53]
  assign burst_size_cal_io_in_vec_63 = {{7'd0}, cal_tkeep[63]}; // @[RxConverter.scala 32:53]
  assign qid_mask_wrapper_clock = clock;
  assign qid_mask_wrapper_reset = reset;
  assign qid_mask_wrapper_io_in_mask = extern_config_reg_c2h_sw_qid_mask; // @[RxConverter.scala 50:31]
  assign qid_mask_wrapper_io_in_tlast = in_shake_hand & in_reg_tlast; // @[RxConverter.scala 51:49]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      in_reg_r <= 579'h1; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_reg_r <= _in_reg_T; // @[Reg.scala 29:22]
    end
    first_beat_reg <= reset | _GEN_1; // @[Reg.scala 28:{20,20}]
    if (reset) begin // @[RxConverter.scala 21:28]
      in_reg_used <= 1'h0; // @[RxConverter.scala 21:28]
    end else begin
      in_reg_used <= _GEN_3;
    end
    if (reset) begin // @[RxConverter.scala 27:34]
      extern_config_reg_c2h_sw_qid_mask <= 32'h0; // @[RxConverter.scala 27:34]
    end else begin
      extern_config_reg_c2h_sw_qid_mask <= io_extern_config_c2h_sw_qid_mask; // @[RxConverter.scala 28:21]
    end
    if (reset) begin // @[RxConverter.scala 36:25]
      tlen_reg <= 16'h0; // @[RxConverter.scala 36:25]
    end else if (in_shake_hand) begin // @[RxConverter.scala 37:24]
      if (first_beat_reg) begin // @[RxConverter.scala 38:27]
        tlen_reg <= {{8'd0}, burst_size_cal_io_out_sum}; // @[RxConverter.scala 39:16]
      end else begin
        tlen_reg <= _tlen_reg_T_1; // @[RxConverter.scala 41:16]
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
  in_reg_used = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  extern_config_reg_c2h_sw_qid_mask = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  tlen_reg = _RAND_4[15:0];
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
  input  [5:0]   io_in_rx_info_qid,
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
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  ip_chksum_cal_clock; // @[RxPipelineHandler.scala 42:29]
  wire [31:0] ip_chksum_cal_io_in_vec_0; // @[RxPipelineHandler.scala 42:29]
  wire [31:0] ip_chksum_cal_io_in_vec_1; // @[RxPipelineHandler.scala 42:29]
  wire [31:0] ip_chksum_cal_io_in_vec_2; // @[RxPipelineHandler.scala 42:29]
  wire [31:0] ip_chksum_cal_io_in_vec_3; // @[RxPipelineHandler.scala 42:29]
  wire [31:0] ip_chksum_cal_io_in_vec_4; // @[RxPipelineHandler.scala 42:29]
  wire [31:0] ip_chksum_cal_io_in_vec_5; // @[RxPipelineHandler.scala 42:29]
  wire [31:0] ip_chksum_cal_io_in_vec_6; // @[RxPipelineHandler.scala 42:29]
  wire [31:0] ip_chksum_cal_io_in_vec_7; // @[RxPipelineHandler.scala 42:29]
  wire [31:0] ip_chksum_cal_io_in_vec_8; // @[RxPipelineHandler.scala 42:29]
  wire [31:0] ip_chksum_cal_io_in_vec_9; // @[RxPipelineHandler.scala 42:29]
  wire [31:0] ip_chksum_cal_io_out_sum; // @[RxPipelineHandler.scala 42:29]
  wire  tcp_pld_chksum_cal_clock; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_0; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_1; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_2; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_3; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_4; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_5; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_6; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_7; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_8; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_9; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_10; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_11; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_12; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_13; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_14; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_15; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_16; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_17; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_18; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_19; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_20; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_21; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_22; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_23; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_24; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_25; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_26; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_27; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_28; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_29; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_30; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_31; // @[RxPipelineHandler.scala 49:34]
  wire [31:0] tcp_pld_chksum_cal_io_out_sum; // @[RxPipelineHandler.scala 49:34]
  wire  tcp_hdr_chksum_cal_clock; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_0; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_1; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_2; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_3; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_4; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_5; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_6; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_7; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_8; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_9; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_10; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_11; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_12; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_13; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_14; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_15; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_16; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_17; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_18; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_19; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_20; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_21; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_22; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_23; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_24; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_25; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_26; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_27; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_28; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_29; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_30; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_31; // @[RxPipelineHandler.scala 56:34]
  wire [31:0] tcp_hdr_chksum_cal_io_out_sum; // @[RxPipelineHandler.scala 56:34]
  wire  in_shake_hand = io_in_tready & io_in_tvalid; // @[RxPipelineHandler.scala 11:38]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[RxPipelineHandler.scala 12:38]
  wire [600:0] _in_reg_T_1 = {io_in_rx_info_tlen,io_in_rx_info_qid,64'h0,io_in_tuser,io_in_tdata,io_in_tvalid,
    io_in_tlast}; // @[Cat.scala 31:58]
  reg [600:0] in_reg_r; // @[Reg.scala 28:20]
  wire  in_reg_tlast = in_reg_r[0]; // @[RxPipelineHandler.scala 13:128]
  wire  in_reg_tvalid = in_reg_r[1]; // @[RxPipelineHandler.scala 13:128]
  wire [511:0] in_reg_tdata = in_reg_r[513:2]; // @[RxPipelineHandler.scala 13:128]
  wire [5:0] in_reg_rx_info_qid = in_reg_r[584:579]; // @[RxPipelineHandler.scala 13:128]
  reg  first_beat_reg; // @[Reg.scala 28:20]
  wire  _GEN_1 = in_shake_hand ? in_reg_tlast : first_beat_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_reg_used; // @[RxPipelineHandler.scala 16:28]
  wire  _GEN_2 = out_shake_hand ? 1'h0 : in_reg_used; // @[RxPipelineHandler.scala 19:29 20:17 16:28]
  wire  _GEN_3 = in_shake_hand | _GEN_2; // @[RxPipelineHandler.scala 17:23 18:17]
  reg [5:0] cur_packet_qid_reg; // @[Reg.scala 28:20]
  wire [511:0] cal_tdata = in_shake_hand ? io_in_tdata : in_reg_tdata; // @[RxPipelineHandler.scala 40:20]
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
  wire [31:0] tcp_hdr_chksum_result = tcp_hdr_chksum_cal_io_out_sum - 32'h14; // @[RxPipelineHandler.scala 62:61]
  reg [31:0] cal_ip_chksum; // @[RxPipelineHandler.scala 64:30]
  reg [31:0] cal_tcp_chksum; // @[RxPipelineHandler.scala 65:31]
  wire [31:0] _cal_tcp_chksum_T_1 = cal_tcp_chksum + tcp_pld_chksum_cal_io_out_sum; // @[RxPipelineHandler.scala 72:40]
  ReduceAddSync ip_chksum_cal ( // @[RxPipelineHandler.scala 42:29]
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
  ReduceAddSync_1 tcp_pld_chksum_cal ( // @[RxPipelineHandler.scala 49:34]
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
  ReduceAddSync_1 tcp_hdr_chksum_cal ( // @[RxPipelineHandler.scala 56:34]
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
  assign io_in_tready = io_out_tready | ~in_reg_used; // @[RxPipelineHandler.scala 28:47]
  assign io_out_tdata = in_reg_r[513:2]; // @[RxPipelineHandler.scala 13:128]
  assign io_out_tvalid = in_reg_tvalid & in_reg_used; // @[RxPipelineHandler.scala 25:47]
  assign io_out_tlast = in_reg_r[0]; // @[RxPipelineHandler.scala 13:128]
  assign io_out_tuser = in_reg_r[514]; // @[RxPipelineHandler.scala 13:128]
  assign io_out_rx_info_tlen = in_reg_r[600:585]; // @[RxPipelineHandler.scala 13:128]
  assign io_out_rx_info_qid = first_beat_reg ? in_reg_rx_info_qid : cur_packet_qid_reg; // @[RxPipelineHandler.scala 33:28]
  assign io_out_rx_info_ip_chksum = first_beat_reg ? ip_chksum_cal_io_out_sum : cal_ip_chksum; // @[RxPipelineHandler.scala 75:34]
  assign io_out_rx_info_tcp_chksum = first_beat_reg ? tcp_hdr_chksum_result : _cal_tcp_chksum_T_1; // @[RxPipelineHandler.scala 76:35]
  assign ip_chksum_cal_clock = clock;
  assign ip_chksum_cal_io_in_vec_0 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_3}; // @[RxPipelineHandler.scala 44:32]
  assign ip_chksum_cal_io_in_vec_1 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[RxPipelineHandler.scala 44:32]
  assign ip_chksum_cal_io_in_vec_2 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_3}; // @[RxPipelineHandler.scala 44:32]
  assign ip_chksum_cal_io_in_vec_3 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_3}; // @[RxPipelineHandler.scala 44:32]
  assign ip_chksum_cal_io_in_vec_4 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_3}; // @[RxPipelineHandler.scala 44:32]
  assign ip_chksum_cal_io_in_vec_5 = {{16'd0}, _ip_chksum_cal_io_in_vec_5_T_3}; // @[RxPipelineHandler.scala 44:32]
  assign ip_chksum_cal_io_in_vec_6 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[RxPipelineHandler.scala 44:32]
  assign ip_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[RxPipelineHandler.scala 44:32]
  assign ip_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[RxPipelineHandler.scala 44:32]
  assign ip_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[RxPipelineHandler.scala 44:32]
  assign tcp_pld_chksum_cal_clock = clock;
  assign tcp_pld_chksum_cal_io_in_vec_0 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_0_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_1 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_1_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_2 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_2_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_3 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_3_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_4 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_4_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_5 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_5_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_6 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_6_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_10 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_11 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_12 = {{16'd0}, _ip_chksum_cal_io_in_vec_5_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_25 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_25_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_pld_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_3}; // @[RxPipelineHandler.scala 51:37]
  assign tcp_hdr_chksum_cal_clock = clock;
  assign tcp_hdr_chksum_cal_io_in_vec_0 = 32'h0; // @[RxPipelineHandler.scala 60:42]
  assign tcp_hdr_chksum_cal_io_in_vec_1 = 32'h0; // @[RxPipelineHandler.scala 60:42]
  assign tcp_hdr_chksum_cal_io_in_vec_2 = 32'h0; // @[RxPipelineHandler.scala 60:42]
  assign tcp_hdr_chksum_cal_io_in_vec_3 = 32'h0; // @[RxPipelineHandler.scala 60:42]
  assign tcp_hdr_chksum_cal_io_in_vec_4 = 32'h0; // @[RxPipelineHandler.scala 60:42]
  assign tcp_hdr_chksum_cal_io_in_vec_5 = 32'h0; // @[RxPipelineHandler.scala 60:42]
  assign tcp_hdr_chksum_cal_io_in_vec_6 = 32'h0; // @[RxPipelineHandler.scala 60:42]
  assign tcp_hdr_chksum_cal_io_in_vec_7 = 32'h0; // @[RxPipelineHandler.scala 60:42]
  assign tcp_hdr_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_9 = 32'h0; // @[RxPipelineHandler.scala 60:42]
  assign tcp_hdr_chksum_cal_io_in_vec_10 = 32'h0; // @[RxPipelineHandler.scala 60:42]
  assign tcp_hdr_chksum_cal_io_in_vec_11 = {{24'd0}, cal_tdata[191:184]}; // @[RxPipelineHandler.scala 59:53]
  assign tcp_hdr_chksum_cal_io_in_vec_12 = 32'h0; // @[RxPipelineHandler.scala 60:42]
  assign tcp_hdr_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_25 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_25_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_3}; // @[RxPipelineHandler.scala 58:56]
  assign tcp_hdr_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_3}; // @[RxPipelineHandler.scala 58:56]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      in_reg_r <= 601'h1; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_reg_r <= _in_reg_T_1; // @[Reg.scala 29:22]
    end
    first_beat_reg <= reset | _GEN_1; // @[Reg.scala 28:{20,20}]
    if (reset) begin // @[RxPipelineHandler.scala 16:28]
      in_reg_used <= 1'h0; // @[RxPipelineHandler.scala 16:28]
    end else begin
      in_reg_used <= _GEN_3;
    end
    if (reset) begin // @[Reg.scala 28:20]
      cur_packet_qid_reg <= 6'h0; // @[Reg.scala 28:20]
    end else if (first_beat_reg) begin // @[Reg.scala 29:18]
      cur_packet_qid_reg <= in_reg_rx_info_qid; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[RxPipelineHandler.scala 64:30]
      cal_ip_chksum <= 32'h0; // @[RxPipelineHandler.scala 64:30]
    end else if (in_shake_hand) begin // @[RxPipelineHandler.scala 67:24]
      if (first_beat_reg) begin // @[RxPipelineHandler.scala 68:27]
        cal_ip_chksum <= ip_chksum_cal_io_out_sum; // @[RxPipelineHandler.scala 69:21]
      end
    end
    if (reset) begin // @[RxPipelineHandler.scala 65:31]
      cal_tcp_chksum <= 32'h0; // @[RxPipelineHandler.scala 65:31]
    end else if (in_shake_hand) begin // @[RxPipelineHandler.scala 67:24]
      if (first_beat_reg) begin // @[RxPipelineHandler.scala 68:27]
        cal_tcp_chksum <= tcp_hdr_chksum_result; // @[RxPipelineHandler.scala 70:22]
      end else begin
        cal_tcp_chksum <= _cal_tcp_chksum_T_1; // @[RxPipelineHandler.scala 72:22]
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
  in_reg_used = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  cur_packet_qid_reg = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  cal_ip_chksum = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  cal_tcp_chksum = _RAND_5[31:0];
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
  input  [5:0]   io_in_rx_info_qid,
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
  wire  rx_chksum_verifier_clock; // @[RxPipeline.scala 39:34]
  wire  rx_chksum_verifier_reset; // @[RxPipeline.scala 39:34]
  wire [511:0] rx_chksum_verifier_io_in_tdata; // @[RxPipeline.scala 39:34]
  wire  rx_chksum_verifier_io_in_tvalid; // @[RxPipeline.scala 39:34]
  wire  rx_chksum_verifier_io_in_tready; // @[RxPipeline.scala 39:34]
  wire  rx_chksum_verifier_io_in_tlast; // @[RxPipeline.scala 39:34]
  wire  rx_chksum_verifier_io_in_tuser; // @[RxPipeline.scala 39:34]
  wire [15:0] rx_chksum_verifier_io_in_rx_info_tlen; // @[RxPipeline.scala 39:34]
  wire [5:0] rx_chksum_verifier_io_in_rx_info_qid; // @[RxPipeline.scala 39:34]
  wire [511:0] rx_chksum_verifier_io_out_tdata; // @[RxPipeline.scala 39:34]
  wire  rx_chksum_verifier_io_out_tvalid; // @[RxPipeline.scala 39:34]
  wire  rx_chksum_verifier_io_out_tready; // @[RxPipeline.scala 39:34]
  wire  rx_chksum_verifier_io_out_tlast; // @[RxPipeline.scala 39:34]
  wire  rx_chksum_verifier_io_out_tuser; // @[RxPipeline.scala 39:34]
  wire [15:0] rx_chksum_verifier_io_out_rx_info_tlen; // @[RxPipeline.scala 39:34]
  wire [5:0] rx_chksum_verifier_io_out_rx_info_qid; // @[RxPipeline.scala 39:34]
  wire [31:0] rx_chksum_verifier_io_out_rx_info_ip_chksum; // @[RxPipeline.scala 39:34]
  wire [31:0] rx_chksum_verifier_io_out_rx_info_tcp_chksum; // @[RxPipeline.scala 39:34]
  RxChksumVerifier rx_chksum_verifier ( // @[RxPipeline.scala 39:34]
    .clock(rx_chksum_verifier_clock),
    .reset(rx_chksum_verifier_reset),
    .io_in_tdata(rx_chksum_verifier_io_in_tdata),
    .io_in_tvalid(rx_chksum_verifier_io_in_tvalid),
    .io_in_tready(rx_chksum_verifier_io_in_tready),
    .io_in_tlast(rx_chksum_verifier_io_in_tlast),
    .io_in_tuser(rx_chksum_verifier_io_in_tuser),
    .io_in_rx_info_tlen(rx_chksum_verifier_io_in_rx_info_tlen),
    .io_in_rx_info_qid(rx_chksum_verifier_io_in_rx_info_qid),
    .io_out_tdata(rx_chksum_verifier_io_out_tdata),
    .io_out_tvalid(rx_chksum_verifier_io_out_tvalid),
    .io_out_tready(rx_chksum_verifier_io_out_tready),
    .io_out_tlast(rx_chksum_verifier_io_out_tlast),
    .io_out_tuser(rx_chksum_verifier_io_out_tuser),
    .io_out_rx_info_tlen(rx_chksum_verifier_io_out_rx_info_tlen),
    .io_out_rx_info_qid(rx_chksum_verifier_io_out_rx_info_qid),
    .io_out_rx_info_ip_chksum(rx_chksum_verifier_io_out_rx_info_ip_chksum),
    .io_out_rx_info_tcp_chksum(rx_chksum_verifier_io_out_rx_info_tcp_chksum)
  );
  assign io_in_tready = rx_chksum_verifier_io_in_tready; // @[RxPipeline.scala 41:9]
  assign io_out_tdata = rx_chksum_verifier_io_out_tdata; // @[RxPipeline.scala 45:29]
  assign io_out_tvalid = rx_chksum_verifier_io_out_tvalid; // @[RxPipeline.scala 45:29]
  assign io_out_tlast = rx_chksum_verifier_io_out_tlast; // @[RxPipeline.scala 45:29]
  assign io_out_tuser = rx_chksum_verifier_io_out_tuser; // @[RxPipeline.scala 45:29]
  assign io_out_rx_info_tlen = rx_chksum_verifier_io_out_rx_info_tlen; // @[RxPipeline.scala 45:29]
  assign io_out_rx_info_qid = rx_chksum_verifier_io_out_rx_info_qid; // @[RxPipeline.scala 45:29]
  assign io_out_rx_info_ip_chksum = rx_chksum_verifier_io_out_rx_info_ip_chksum; // @[RxPipeline.scala 45:29]
  assign io_out_rx_info_tcp_chksum = rx_chksum_verifier_io_out_rx_info_tcp_chksum; // @[RxPipeline.scala 45:29]
  assign rx_chksum_verifier_clock = clock;
  assign rx_chksum_verifier_reset = reset;
  assign rx_chksum_verifier_io_in_tdata = io_in_tdata; // @[RxPipeline.scala 41:9]
  assign rx_chksum_verifier_io_in_tvalid = io_in_tvalid; // @[RxPipeline.scala 41:9]
  assign rx_chksum_verifier_io_in_tlast = io_in_tlast; // @[RxPipeline.scala 41:9]
  assign rx_chksum_verifier_io_in_tuser = io_in_tuser; // @[RxPipeline.scala 41:9]
  assign rx_chksum_verifier_io_in_rx_info_tlen = io_in_rx_info_tlen; // @[RxPipeline.scala 41:9]
  assign rx_chksum_verifier_io_in_rx_info_qid = io_in_rx_info_qid; // @[RxPipeline.scala 41:9]
  assign rx_chksum_verifier_io_out_tready = io_out_tready; // @[RxPipeline.scala 45:29]
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
  reg [511:0] data_buf_reg [0:63]; // @[RxBufferFifo.scala 41:33]
  wire  data_buf_reg_io_out_tdata_MPORT_en; // @[RxBufferFifo.scala 41:33]
  wire [5:0] data_buf_reg_io_out_tdata_MPORT_addr; // @[RxBufferFifo.scala 41:33]
  wire [511:0] data_buf_reg_io_out_tdata_MPORT_data; // @[RxBufferFifo.scala 41:33]
  wire [511:0] data_buf_reg_MPORT_data; // @[RxBufferFifo.scala 41:33]
  wire [5:0] data_buf_reg_MPORT_addr; // @[RxBufferFifo.scala 41:33]
  wire  data_buf_reg_MPORT_mask; // @[RxBufferFifo.scala 41:33]
  wire  data_buf_reg_MPORT_en; // @[RxBufferFifo.scala 41:33]
  reg  data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  reg [5:0] data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[RxBufferFifo.scala 40:36]
  reg  info_buf_reg_0_valid; // @[RxBufferFifo.scala 44:29]
  reg [15:0] info_buf_reg_0_len; // @[RxBufferFifo.scala 44:29]
  reg [5:0] info_buf_reg_0_qid; // @[RxBufferFifo.scala 44:29]
  reg [31:0] info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 44:29]
  reg [31:0] info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 44:29]
  reg [5:0] info_buf_reg_0_burst; // @[RxBufferFifo.scala 44:29]
  reg  info_buf_reg_1_valid; // @[RxBufferFifo.scala 44:29]
  reg [15:0] info_buf_reg_1_len; // @[RxBufferFifo.scala 44:29]
  reg [5:0] info_buf_reg_1_qid; // @[RxBufferFifo.scala 44:29]
  reg [31:0] info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 44:29]
  reg [31:0] info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 44:29]
  reg [5:0] info_buf_reg_1_burst; // @[RxBufferFifo.scala 44:29]
  reg [6:0] wr_index_reg; // @[RxBufferFifo.scala 45:29]
  reg [6:0] rd_index_reg; // @[RxBufferFifo.scala 46:29]
  reg [6:0] wr_pos_reg; // @[RxBufferFifo.scala 47:29]
  reg [6:0] rd_pos_reg; // @[RxBufferFifo.scala 48:29]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[RxBufferFifo.scala 53:40]
  reg [31:0] pack_counter; // @[RxBufferFifo.scala 56:29]
  reg [31:0] err_counter; // @[RxBufferFifo.scala 57:28]
  reg [31:0] wrong_chksum_counter; // @[RxBufferFifo.scala 58:37]
  reg  is_overflowed; // @[RxBufferFifo.scala 63:30]
  wire [31:0] _pack_counter_T_1 = pack_counter + 32'h1; // @[RxBufferFifo.scala 74:36]
  wire [5:0] _GEN_2 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[RxBufferFifo.scala 76:{44,44}]
  wire [11:0] _GEN_275 = {wr_index_reg, 5'h0}; // @[RxBufferFifo.scala 85:38]
  wire [13:0] _wr_pos_reg_T = {{2'd0}, _GEN_275}; // @[RxBufferFifo.scala 85:38]
  wire  _GEN_3 = ~io_in_tlast | is_overflowed; // @[RxBufferFifo.scala 78:27 79:23 63:30]
  wire [13:0] _GEN_4 = ~io_in_tlast ? {{7'd0}, wr_pos_reg} : _wr_pos_reg_T; // @[RxBufferFifo.scala 78:27 47:29 85:22]
  wire [31:0] _err_counter_T_1 = err_counter + 32'h1; // @[RxBufferFifo.scala 88:34]
  wire [5:0] _GEN_5 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 44:29 89:{34,34}]
  wire [5:0] _GEN_6 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 44:29 89:{34,34}]
  wire [31:0] _GEN_7 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 44:29 89:{34,34}]
  wire [31:0] _GEN_8 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 44:29 89:{34,34}]
  wire [31:0] _GEN_9 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 44:29 89:{34,34}]
  wire [31:0] _GEN_10 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 44:29 89:{34,34}]
  wire [5:0] _GEN_11 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 44:29 89:{34,34}]
  wire [5:0] _GEN_12 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 44:29 89:{34,34}]
  wire [15:0] _GEN_13 = ~wr_index_reg[0] ? 16'h0 : info_buf_reg_0_len; // @[RxBufferFifo.scala 44:29 89:{34,34}]
  wire [15:0] _GEN_14 = wr_index_reg[0] ? 16'h0 : info_buf_reg_1_len; // @[RxBufferFifo.scala 44:29 89:{34,34}]
  wire  _GEN_15 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 44:29 89:{34,34}]
  wire  _GEN_16 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 44:29 89:{34,34}]
  wire  _T_6 = ~is_overflowed; // @[RxBufferFifo.scala 97:13]
  wire  _GEN_277 = ~wr_index_reg[0]; // @[RxBufferFifo.scala 100:{43,43} 44:29]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_2 + 6'h1; // @[RxBufferFifo.scala 103:78]
  wire [5:0] _GEN_41 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 103:{42,42} 44:29]
  wire [5:0] _GEN_42 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 103:{42,42} 44:29]
  wire  _GEN_43 = _GEN_277 | info_buf_reg_0_valid; // @[RxBufferFifo.scala 105:{44,44} 44:29]
  wire  _GEN_44 = wr_index_reg[0] | info_buf_reg_1_valid; // @[RxBufferFifo.scala 105:{44,44} 44:29]
  wire [31:0] _GEN_45 = ~wr_index_reg[0] ? io_in_rx_info_ip_chksum : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 106:{48,48} 44:29]
  wire [31:0] _GEN_46 = wr_index_reg[0] ? io_in_rx_info_ip_chksum : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 106:{48,48} 44:29]
  wire [31:0] _GEN_47 = ~wr_index_reg[0] ? io_in_rx_info_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 107:{49,49} 44:29]
  wire [31:0] _GEN_48 = wr_index_reg[0] ? io_in_rx_info_tcp_chksum : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 107:{49,49} 44:29]
  wire [15:0] _GEN_49 = ~wr_index_reg[0] ? io_in_rx_info_tlen : info_buf_reg_0_len; // @[RxBufferFifo.scala 108:{42,42} 44:29]
  wire [15:0] _GEN_50 = wr_index_reg[0] ? io_in_rx_info_tlen : info_buf_reg_1_len; // @[RxBufferFifo.scala 108:{42,42} 44:29]
  wire [5:0] _GEN_51 = ~wr_index_reg[0] ? io_in_rx_info_qid : info_buf_reg_0_qid; // @[RxBufferFifo.scala 109:{42,42} 44:29]
  wire [5:0] _GEN_52 = wr_index_reg[0] ? io_in_rx_info_qid : info_buf_reg_1_qid; // @[RxBufferFifo.scala 109:{42,42} 44:29]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[RxBufferFifo.scala 35:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[RxBufferFifo.scala 35:19]
  wire [11:0] _GEN_279 = {_wr_index_reg_T_2, 5'h0}; // @[RxBufferFifo.scala 111:49]
  wire [13:0] _wr_pos_reg_T_5 = {{2'd0}, _GEN_279}; // @[RxBufferFifo.scala 111:49]
  wire [6:0] _wr_pos_reg_T_7 = wr_pos_reg + 7'h1; // @[RxBufferFifo.scala 113:36]
  wire  _GEN_53 = io_in_tlast ? _GEN_43 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 104:28 44:29]
  wire  _GEN_54 = io_in_tlast ? _GEN_44 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 104:28 44:29]
  wire [31:0] _GEN_55 = io_in_tlast ? _GEN_45 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 104:28 44:29]
  wire [31:0] _GEN_56 = io_in_tlast ? _GEN_46 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 104:28 44:29]
  wire [31:0] _GEN_57 = io_in_tlast ? _GEN_47 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 104:28 44:29]
  wire [31:0] _GEN_58 = io_in_tlast ? _GEN_48 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 104:28 44:29]
  wire [15:0] _GEN_59 = io_in_tlast ? _GEN_49 : info_buf_reg_0_len; // @[RxBufferFifo.scala 104:28 44:29]
  wire [15:0] _GEN_60 = io_in_tlast ? _GEN_50 : info_buf_reg_1_len; // @[RxBufferFifo.scala 104:28 44:29]
  wire [5:0] _GEN_61 = io_in_tlast ? _GEN_51 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 104:28 44:29]
  wire [5:0] _GEN_62 = io_in_tlast ? _GEN_52 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 104:28 44:29]
  wire [6:0] _GEN_63 = io_in_tlast ? _wr_index_reg_T_2 : wr_index_reg; // @[RxBufferFifo.scala 104:28 110:24 45:29]
  wire [13:0] _GEN_64 = io_in_tlast ? _wr_pos_reg_T_5 : {{7'd0}, _wr_pos_reg_T_7}; // @[RxBufferFifo.scala 104:28 111:22 113:22]
  wire  _GEN_65 = io_in_tlast ? 1'h0 : is_overflowed; // @[RxBufferFifo.scala 115:32 117:25 63:30]
  wire [13:0] _GEN_66 = io_in_tlast ? _wr_pos_reg_T : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 115:32 118:22 47:29]
  wire [5:0] _GEN_74 = ~is_overflowed ? _GEN_41 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 97:28 44:29]
  wire [5:0] _GEN_75 = ~is_overflowed ? _GEN_42 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 97:28 44:29]
  wire  _GEN_76 = ~is_overflowed ? _GEN_53 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 97:28 44:29]
  wire  _GEN_77 = ~is_overflowed ? _GEN_54 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 97:28 44:29]
  wire [31:0] _GEN_78 = ~is_overflowed ? _GEN_55 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 97:28 44:29]
  wire [31:0] _GEN_79 = ~is_overflowed ? _GEN_56 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 97:28 44:29]
  wire [31:0] _GEN_80 = ~is_overflowed ? _GEN_57 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 97:28 44:29]
  wire [31:0] _GEN_81 = ~is_overflowed ? _GEN_58 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 97:28 44:29]
  wire [15:0] _GEN_82 = ~is_overflowed ? _GEN_59 : info_buf_reg_0_len; // @[RxBufferFifo.scala 97:28 44:29]
  wire [15:0] _GEN_83 = ~is_overflowed ? _GEN_60 : info_buf_reg_1_len; // @[RxBufferFifo.scala 97:28 44:29]
  wire [5:0] _GEN_84 = ~is_overflowed ? _GEN_61 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 97:28 44:29]
  wire [5:0] _GEN_85 = ~is_overflowed ? _GEN_62 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 97:28 44:29]
  wire [6:0] _GEN_86 = ~is_overflowed ? _GEN_63 : wr_index_reg; // @[RxBufferFifo.scala 97:28 45:29]
  wire [13:0] _GEN_87 = ~is_overflowed ? _GEN_64 : _GEN_66; // @[RxBufferFifo.scala 97:28]
  wire  _GEN_88 = ~is_overflowed ? is_overflowed : _GEN_65; // @[RxBufferFifo.scala 97:28 63:30]
  wire  _GEN_93 = io_in_tvalid & _T_6; // @[RxBufferFifo.scala 95:29 41:33]
  wire [5:0] _GEN_96 = io_in_tvalid ? _GEN_74 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 44:29 95:29]
  wire [5:0] _GEN_97 = io_in_tvalid ? _GEN_75 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 44:29 95:29]
  wire  _GEN_98 = io_in_tvalid ? _GEN_76 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 44:29 95:29]
  wire  _GEN_99 = io_in_tvalid ? _GEN_77 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 44:29 95:29]
  wire [31:0] _GEN_100 = io_in_tvalid ? _GEN_78 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 44:29 95:29]
  wire [31:0] _GEN_101 = io_in_tvalid ? _GEN_79 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 44:29 95:29]
  wire [31:0] _GEN_102 = io_in_tvalid ? _GEN_80 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 44:29 95:29]
  wire [31:0] _GEN_103 = io_in_tvalid ? _GEN_81 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 44:29 95:29]
  wire [15:0] _GEN_104 = io_in_tvalid ? _GEN_82 : info_buf_reg_0_len; // @[RxBufferFifo.scala 44:29 95:29]
  wire [15:0] _GEN_105 = io_in_tvalid ? _GEN_83 : info_buf_reg_1_len; // @[RxBufferFifo.scala 44:29 95:29]
  wire [5:0] _GEN_106 = io_in_tvalid ? _GEN_84 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 44:29 95:29]
  wire [5:0] _GEN_107 = io_in_tvalid ? _GEN_85 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 44:29 95:29]
  wire [6:0] _GEN_108 = io_in_tvalid ? _GEN_86 : wr_index_reg; // @[RxBufferFifo.scala 45:29 95:29]
  wire [13:0] _GEN_109 = io_in_tvalid ? _GEN_87 : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 47:29 95:29]
  wire  _GEN_110 = io_in_tvalid ? _GEN_88 : is_overflowed; // @[RxBufferFifo.scala 95:29 63:30]
  wire [31:0] _GEN_111 = io_in_tlast & io_in_tuser ? _err_counter_T_1 : err_counter; // @[RxBufferFifo.scala 91:45 92:19 57:28]
  wire [13:0] _GEN_112 = io_in_tlast & io_in_tuser ? _wr_pos_reg_T : _GEN_109; // @[RxBufferFifo.scala 91:45 93:18]
  wire [5:0] _GEN_113 = io_in_tlast & io_in_tuser ? _GEN_5 : _GEN_96; // @[RxBufferFifo.scala 91:45]
  wire [5:0] _GEN_114 = io_in_tlast & io_in_tuser ? _GEN_6 : _GEN_97; // @[RxBufferFifo.scala 91:45]
  wire [31:0] _GEN_115 = io_in_tlast & io_in_tuser ? _GEN_7 : _GEN_102; // @[RxBufferFifo.scala 91:45]
  wire [31:0] _GEN_116 = io_in_tlast & io_in_tuser ? _GEN_8 : _GEN_103; // @[RxBufferFifo.scala 91:45]
  wire [31:0] _GEN_117 = io_in_tlast & io_in_tuser ? _GEN_9 : _GEN_100; // @[RxBufferFifo.scala 91:45]
  wire [31:0] _GEN_118 = io_in_tlast & io_in_tuser ? _GEN_10 : _GEN_101; // @[RxBufferFifo.scala 91:45]
  wire [5:0] _GEN_119 = io_in_tlast & io_in_tuser ? _GEN_11 : _GEN_106; // @[RxBufferFifo.scala 91:45]
  wire [5:0] _GEN_120 = io_in_tlast & io_in_tuser ? _GEN_12 : _GEN_107; // @[RxBufferFifo.scala 91:45]
  wire [15:0] _GEN_121 = io_in_tlast & io_in_tuser ? _GEN_13 : _GEN_104; // @[RxBufferFifo.scala 91:45]
  wire [15:0] _GEN_122 = io_in_tlast & io_in_tuser ? _GEN_14 : _GEN_105; // @[RxBufferFifo.scala 91:45]
  wire  _GEN_123 = io_in_tlast & io_in_tuser ? _GEN_15 : _GEN_98; // @[RxBufferFifo.scala 91:45]
  wire  _GEN_124 = io_in_tlast & io_in_tuser ? _GEN_16 : _GEN_99; // @[RxBufferFifo.scala 91:45]
  wire  _GEN_129 = io_in_tlast & io_in_tuser ? 1'h0 : _GEN_93; // @[RxBufferFifo.scala 41:33 91:45]
  wire [6:0] _GEN_132 = io_in_tlast & io_in_tuser ? wr_index_reg : _GEN_108; // @[RxBufferFifo.scala 45:29 91:45]
  wire  _GEN_133 = io_in_tlast & io_in_tuser ? is_overflowed : _GEN_110; // @[RxBufferFifo.scala 63:30 91:45]
  wire [13:0] _GEN_135 = _GEN_2 == 6'h20 ? _GEN_4 : _GEN_112; // @[RxBufferFifo.scala 76:61]
  wire [5:0] _GEN_137 = _GEN_2 == 6'h20 ? _GEN_5 : _GEN_113; // @[RxBufferFifo.scala 76:61]
  wire [5:0] _GEN_138 = _GEN_2 == 6'h20 ? _GEN_6 : _GEN_114; // @[RxBufferFifo.scala 76:61]
  wire [31:0] _GEN_139 = _GEN_2 == 6'h20 ? _GEN_7 : _GEN_115; // @[RxBufferFifo.scala 76:61]
  wire [31:0] _GEN_140 = _GEN_2 == 6'h20 ? _GEN_8 : _GEN_116; // @[RxBufferFifo.scala 76:61]
  wire [31:0] _GEN_141 = _GEN_2 == 6'h20 ? _GEN_9 : _GEN_117; // @[RxBufferFifo.scala 76:61]
  wire [31:0] _GEN_142 = _GEN_2 == 6'h20 ? _GEN_10 : _GEN_118; // @[RxBufferFifo.scala 76:61]
  wire [5:0] _GEN_143 = _GEN_2 == 6'h20 ? _GEN_11 : _GEN_119; // @[RxBufferFifo.scala 76:61]
  wire [5:0] _GEN_144 = _GEN_2 == 6'h20 ? _GEN_12 : _GEN_120; // @[RxBufferFifo.scala 76:61]
  wire [15:0] _GEN_145 = _GEN_2 == 6'h20 ? _GEN_13 : _GEN_121; // @[RxBufferFifo.scala 76:61]
  wire [15:0] _GEN_146 = _GEN_2 == 6'h20 ? _GEN_14 : _GEN_122; // @[RxBufferFifo.scala 76:61]
  wire  _GEN_147 = _GEN_2 == 6'h20 ? _GEN_15 : _GEN_123; // @[RxBufferFifo.scala 76:61]
  wire  _GEN_148 = _GEN_2 == 6'h20 ? _GEN_16 : _GEN_124; // @[RxBufferFifo.scala 76:61]
  wire  _GEN_153 = _GEN_2 == 6'h20 ? 1'h0 : _GEN_129; // @[RxBufferFifo.scala 41:33 76:61]
  wire [13:0] _GEN_159 = in_shake_hand ? _GEN_135 : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 47:29 72:29]
  wire [5:0] _GEN_161 = in_shake_hand ? _GEN_137 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 44:29 72:29]
  wire [5:0] _GEN_162 = in_shake_hand ? _GEN_138 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 44:29 72:29]
  wire [31:0] _GEN_163 = in_shake_hand ? _GEN_139 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 44:29 72:29]
  wire [31:0] _GEN_164 = in_shake_hand ? _GEN_140 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 44:29 72:29]
  wire [31:0] _GEN_165 = in_shake_hand ? _GEN_141 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 44:29 72:29]
  wire [31:0] _GEN_166 = in_shake_hand ? _GEN_142 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 44:29 72:29]
  wire [5:0] _GEN_167 = in_shake_hand ? _GEN_143 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 44:29 72:29]
  wire [5:0] _GEN_168 = in_shake_hand ? _GEN_144 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 44:29 72:29]
  wire [15:0] _GEN_169 = in_shake_hand ? _GEN_145 : info_buf_reg_0_len; // @[RxBufferFifo.scala 44:29 72:29]
  wire [15:0] _GEN_170 = in_shake_hand ? _GEN_146 : info_buf_reg_1_len; // @[RxBufferFifo.scala 44:29 72:29]
  wire  _GEN_171 = in_shake_hand ? _GEN_147 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 44:29 72:29]
  wire  _GEN_172 = in_shake_hand ? _GEN_148 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 44:29 72:29]
  wire  _GEN_177 = in_shake_hand & _GEN_153; // @[RxBufferFifo.scala 72:29 41:33]
  wire [13:0] _GEN_184 = io_reset_counter ? {{7'd0}, wr_pos_reg} : _GEN_159; // @[RxBufferFifo.scala 68:26 47:29]
  wire [5:0] _GEN_185 = io_reset_counter ? info_buf_reg_0_burst : _GEN_161; // @[RxBufferFifo.scala 68:26 44:29]
  wire [5:0] _GEN_186 = io_reset_counter ? info_buf_reg_1_burst : _GEN_162; // @[RxBufferFifo.scala 68:26 44:29]
  wire [31:0] _GEN_187 = io_reset_counter ? info_buf_reg_0_tcp_chksum : _GEN_163; // @[RxBufferFifo.scala 68:26 44:29]
  wire [31:0] _GEN_188 = io_reset_counter ? info_buf_reg_1_tcp_chksum : _GEN_164; // @[RxBufferFifo.scala 68:26 44:29]
  wire [31:0] _GEN_189 = io_reset_counter ? info_buf_reg_0_ip_chksum : _GEN_165; // @[RxBufferFifo.scala 68:26 44:29]
  wire [31:0] _GEN_190 = io_reset_counter ? info_buf_reg_1_ip_chksum : _GEN_166; // @[RxBufferFifo.scala 68:26 44:29]
  wire [5:0] _GEN_191 = io_reset_counter ? info_buf_reg_0_qid : _GEN_167; // @[RxBufferFifo.scala 68:26 44:29]
  wire [5:0] _GEN_192 = io_reset_counter ? info_buf_reg_1_qid : _GEN_168; // @[RxBufferFifo.scala 68:26 44:29]
  wire [15:0] _GEN_193 = io_reset_counter ? info_buf_reg_0_len : _GEN_169; // @[RxBufferFifo.scala 68:26 44:29]
  wire [15:0] _GEN_194 = io_reset_counter ? info_buf_reg_1_len : _GEN_170; // @[RxBufferFifo.scala 68:26 44:29]
  wire  _GEN_195 = io_reset_counter ? info_buf_reg_0_valid : _GEN_171; // @[RxBufferFifo.scala 68:26 44:29]
  wire  _GEN_196 = io_reset_counter ? info_buf_reg_1_valid : _GEN_172; // @[RxBufferFifo.scala 68:26 44:29]
  wire  _GEN_206 = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[RxBufferFifo.scala 124:{38,38}]
  wire  out_shake_hand = io_out_tready & _GEN_206; // @[RxBufferFifo.scala 124:38]
  wire [31:0] _GEN_208 = rd_index_reg[0] ? info_buf_reg_1_ip_chksum : info_buf_reg_0_ip_chksum; // @[Misc.scala 14:{10,10}]
  wire [15:0] _mid_ip_chksum_T_6 = _GEN_208[31:16] + _GEN_208[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _mid_ip_chksum_T_8 = _GEN_208[31:16] > 16'h0 ? _mid_ip_chksum_T_6 : _GEN_208[15:0]; // @[Misc.scala 14:8]
  wire [31:0] _GEN_210 = rd_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[Misc.scala 14:{10,10}]
  wire [15:0] _mid_tcp_chksum_T_6 = _GEN_210[31:16] + _GEN_210[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _mid_tcp_chksum_T_8 = _GEN_210[31:16] > 16'h0 ? _mid_tcp_chksum_T_6 : _GEN_210[15:0]; // @[Misc.scala 14:8]
  wire [31:0] mid_ip_chksum = {{16'd0}, _mid_ip_chksum_T_8}; // @[RxBufferFifo.scala 127:27 128:17]
  wire [15:0] _end_ip_chksum_T_5 = mid_ip_chksum[31:16] + mid_ip_chksum[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _end_ip_chksum_T_7 = mid_ip_chksum[31:16] > 16'h0 ? _end_ip_chksum_T_5 : mid_ip_chksum[15:0]; // @[Misc.scala 14:8]
  wire [15:0] end_ip_chksum = ~_end_ip_chksum_T_7; // @[RxBufferFifo.scala 133:20]
  wire [31:0] mid_tcp_chksum = {{16'd0}, _mid_tcp_chksum_T_8}; // @[RxBufferFifo.scala 129:28 130:18]
  wire [15:0] _end_tcp_chksum_T_5 = mid_tcp_chksum[31:16] + mid_tcp_chksum[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _end_tcp_chksum_T_7 = mid_tcp_chksum[31:16] > 16'h0 ? _end_tcp_chksum_T_5 : mid_tcp_chksum[15:0]; // @[Misc.scala 14:8]
  wire [15:0] end_tcp_chksum = ~_end_tcp_chksum_T_7; // @[RxBufferFifo.scala 135:21]
  wire  _io_out_tvalid_T_1 = end_ip_chksum == 16'h0; // @[RxBufferFifo.scala 140:71]
  wire  _io_out_tvalid_T_3 = end_tcp_chksum == 16'h0; // @[RxBufferFifo.scala 140:99]
  wire [5:0] _GEN_218 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[RxBufferFifo.scala 141:{89,89}]
  wire  _io_out_tlast_T_2 = _GEN_218 == 6'h1; // @[RxBufferFifo.scala 141:89]
  wire  _wrong_chksum_counter_T_4 = io_out_tlast & ~(_io_out_tvalid_T_1 & _io_out_tvalid_T_3); // @[RxBufferFifo.scala 142:64]
  wire [31:0] _GEN_281 = {{31'd0}, _wrong_chksum_counter_T_4}; // @[RxBufferFifo.scala 142:48]
  wire [31:0] _wrong_chksum_counter_T_6 = wrong_chksum_counter + _GEN_281; // @[RxBufferFifo.scala 142:48]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[RxBufferFifo.scala 35:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[RxBufferFifo.scala 35:19]
  wire [11:0] _GEN_282 = {_rd_pos_next_T_2, 5'h0}; // @[RxBufferFifo.scala 160:44]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_282}; // @[RxBufferFifo.scala 160:44]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[RxBufferFifo.scala 162:31]
  wire [13:0] _GEN_274 = _io_out_tlast_T_2 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[RxBufferFifo.scala 159:51 160:17 162:17]
  wire [6:0] rd_pos_next = _GEN_274[6:0];
  wire [6:0] _io_out_tdata_T = out_shake_hand ? rd_pos_next : rd_pos_reg; // @[RxBufferFifo.scala 145:36]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_218 - 6'h1; // @[RxBufferFifo.scala 155:78]
  wire [13:0] _GEN_283 = reset ? 14'h0 : _GEN_184; // @[RxBufferFifo.scala 47:{29,29}]
  assign data_buf_reg_io_out_tdata_MPORT_en = data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_addr = data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_data = data_buf_reg[data_buf_reg_io_out_tdata_MPORT_addr]; // @[RxBufferFifo.scala 41:33]
  assign data_buf_reg_MPORT_data = io_in_tdata;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_reset_counter ? 1'h0 : _GEN_177;
  assign io_in_tready = ~buf_full; // @[RxBufferFifo.scala 55:19]
  assign io_out_tdata = data_buf_reg_io_out_tdata_MPORT_data; // @[RxBufferFifo.scala 145:17]
  assign io_out_tvalid = _GEN_206 & end_ip_chksum == 16'h0 & end_tcp_chksum == 16'h0; // @[RxBufferFifo.scala 140:80]
  assign io_out_tlast = _GEN_206 & _GEN_218 == 6'h1; // @[RxBufferFifo.scala 141:53]
  assign io_out_qid = rd_index_reg[0] ? info_buf_reg_1_qid : info_buf_reg_0_qid; // @[RxBufferFifo.scala 137:{17,17}]
  assign io_out_tlen = rd_index_reg[0] ? info_buf_reg_1_len : info_buf_reg_0_len; // @[RxBufferFifo.scala 138:{17,17}]
  assign io_c2h_pack_counter = pack_counter; // @[RxBufferFifo.scala 60:23]
  assign io_c2h_err_counter = err_counter + wrong_chksum_counter; // @[RxBufferFifo.scala 61:37]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[RxBufferFifo.scala 41:33]
    end
    data_buf_reg_io_out_tdata_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      data_buf_reg_io_out_tdata_MPORT_addr_pipe_0 <= _io_out_tdata_T[5:0];
    end
    if (reset) begin // @[RxBufferFifo.scala 44:29]
      info_buf_reg_0_valid <= 1'h0; // @[RxBufferFifo.scala 44:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 151:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 152:36]
          info_buf_reg_0_valid <= 1'h0; // @[RxBufferFifo.scala 152:36]
        end else begin
          info_buf_reg_0_valid <= _GEN_195;
        end
      end else begin
        info_buf_reg_0_valid <= _GEN_195;
      end
    end else begin
      info_buf_reg_0_valid <= _GEN_195;
    end
    if (reset) begin // @[RxBufferFifo.scala 44:29]
      info_buf_reg_0_len <= 16'h0; // @[RxBufferFifo.scala 44:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 151:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 152:36]
          info_buf_reg_0_len <= 16'h0; // @[RxBufferFifo.scala 152:36]
        end else begin
          info_buf_reg_0_len <= _GEN_193;
        end
      end else begin
        info_buf_reg_0_len <= _GEN_193;
      end
    end else begin
      info_buf_reg_0_len <= _GEN_193;
    end
    if (reset) begin // @[RxBufferFifo.scala 44:29]
      info_buf_reg_0_qid <= 6'h0; // @[RxBufferFifo.scala 44:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 151:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 152:36]
          info_buf_reg_0_qid <= 6'h0; // @[RxBufferFifo.scala 152:36]
        end else begin
          info_buf_reg_0_qid <= _GEN_191;
        end
      end else begin
        info_buf_reg_0_qid <= _GEN_191;
      end
    end else begin
      info_buf_reg_0_qid <= _GEN_191;
    end
    if (reset) begin // @[RxBufferFifo.scala 44:29]
      info_buf_reg_0_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 44:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 151:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 152:36]
          info_buf_reg_0_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 152:36]
        end else begin
          info_buf_reg_0_ip_chksum <= _GEN_189;
        end
      end else begin
        info_buf_reg_0_ip_chksum <= _GEN_189;
      end
    end else begin
      info_buf_reg_0_ip_chksum <= _GEN_189;
    end
    if (reset) begin // @[RxBufferFifo.scala 44:29]
      info_buf_reg_0_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 44:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 151:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 152:36]
          info_buf_reg_0_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 152:36]
        end else begin
          info_buf_reg_0_tcp_chksum <= _GEN_187;
        end
      end else begin
        info_buf_reg_0_tcp_chksum <= _GEN_187;
      end
    end else begin
      info_buf_reg_0_tcp_chksum <= _GEN_187;
    end
    if (reset) begin // @[RxBufferFifo.scala 44:29]
      info_buf_reg_0_burst <= 6'h0; // @[RxBufferFifo.scala 44:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 151:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 152:36]
          info_buf_reg_0_burst <= 6'h0; // @[RxBufferFifo.scala 152:36]
        end else begin
          info_buf_reg_0_burst <= _GEN_185;
        end
      end else if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 155:42]
        info_buf_reg_0_burst <= _info_buf_reg_burst_T_5; // @[RxBufferFifo.scala 155:42]
      end else begin
        info_buf_reg_0_burst <= _GEN_185;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_185;
    end
    if (reset) begin // @[RxBufferFifo.scala 44:29]
      info_buf_reg_1_valid <= 1'h0; // @[RxBufferFifo.scala 44:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 151:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 152:36]
          info_buf_reg_1_valid <= 1'h0; // @[RxBufferFifo.scala 152:36]
        end else begin
          info_buf_reg_1_valid <= _GEN_196;
        end
      end else begin
        info_buf_reg_1_valid <= _GEN_196;
      end
    end else begin
      info_buf_reg_1_valid <= _GEN_196;
    end
    if (reset) begin // @[RxBufferFifo.scala 44:29]
      info_buf_reg_1_len <= 16'h0; // @[RxBufferFifo.scala 44:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 151:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 152:36]
          info_buf_reg_1_len <= 16'h0; // @[RxBufferFifo.scala 152:36]
        end else begin
          info_buf_reg_1_len <= _GEN_194;
        end
      end else begin
        info_buf_reg_1_len <= _GEN_194;
      end
    end else begin
      info_buf_reg_1_len <= _GEN_194;
    end
    if (reset) begin // @[RxBufferFifo.scala 44:29]
      info_buf_reg_1_qid <= 6'h0; // @[RxBufferFifo.scala 44:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 151:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 152:36]
          info_buf_reg_1_qid <= 6'h0; // @[RxBufferFifo.scala 152:36]
        end else begin
          info_buf_reg_1_qid <= _GEN_192;
        end
      end else begin
        info_buf_reg_1_qid <= _GEN_192;
      end
    end else begin
      info_buf_reg_1_qid <= _GEN_192;
    end
    if (reset) begin // @[RxBufferFifo.scala 44:29]
      info_buf_reg_1_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 44:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 151:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 152:36]
          info_buf_reg_1_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 152:36]
        end else begin
          info_buf_reg_1_ip_chksum <= _GEN_190;
        end
      end else begin
        info_buf_reg_1_ip_chksum <= _GEN_190;
      end
    end else begin
      info_buf_reg_1_ip_chksum <= _GEN_190;
    end
    if (reset) begin // @[RxBufferFifo.scala 44:29]
      info_buf_reg_1_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 44:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 151:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 152:36]
          info_buf_reg_1_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 152:36]
        end else begin
          info_buf_reg_1_tcp_chksum <= _GEN_188;
        end
      end else begin
        info_buf_reg_1_tcp_chksum <= _GEN_188;
      end
    end else begin
      info_buf_reg_1_tcp_chksum <= _GEN_188;
    end
    if (reset) begin // @[RxBufferFifo.scala 44:29]
      info_buf_reg_1_burst <= 6'h0; // @[RxBufferFifo.scala 44:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 151:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 152:36]
          info_buf_reg_1_burst <= 6'h0; // @[RxBufferFifo.scala 152:36]
        end else begin
          info_buf_reg_1_burst <= _GEN_186;
        end
      end else if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 155:42]
        info_buf_reg_1_burst <= _info_buf_reg_burst_T_5; // @[RxBufferFifo.scala 155:42]
      end else begin
        info_buf_reg_1_burst <= _GEN_186;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_186;
    end
    if (reset) begin // @[RxBufferFifo.scala 45:29]
      wr_index_reg <= 7'h0; // @[RxBufferFifo.scala 45:29]
    end else if (!(io_reset_counter)) begin // @[RxBufferFifo.scala 68:26]
      if (in_shake_hand) begin // @[RxBufferFifo.scala 72:29]
        if (!(_GEN_2 == 6'h20)) begin // @[RxBufferFifo.scala 76:61]
          wr_index_reg <= _GEN_132;
        end
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 46:29]
      rd_index_reg <= 7'h0; // @[RxBufferFifo.scala 46:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 147:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 151:55]
        rd_index_reg <= _rd_pos_next_T_2; // @[RxBufferFifo.scala 153:22]
      end
    end
    wr_pos_reg <= _GEN_283[6:0]; // @[RxBufferFifo.scala 47:{29,29}]
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      rd_pos_reg <= 7'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 145:36]
      rd_pos_reg <= rd_pos_next;
    end
    if (reset) begin // @[RxBufferFifo.scala 56:29]
      pack_counter <= 32'h0; // @[RxBufferFifo.scala 56:29]
    end else if (io_reset_counter) begin // @[RxBufferFifo.scala 68:26]
      pack_counter <= 32'h0; // @[RxBufferFifo.scala 69:18]
    end else if (in_shake_hand) begin // @[RxBufferFifo.scala 72:29]
      if (io_in_tlast) begin // @[RxBufferFifo.scala 73:24]
        pack_counter <= _pack_counter_T_1; // @[RxBufferFifo.scala 74:20]
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 57:28]
      err_counter <= 32'h0; // @[RxBufferFifo.scala 57:28]
    end else if (io_reset_counter) begin // @[RxBufferFifo.scala 68:26]
      err_counter <= 32'h0; // @[RxBufferFifo.scala 70:17]
    end else if (in_shake_hand) begin // @[RxBufferFifo.scala 72:29]
      if (_GEN_2 == 6'h20) begin // @[RxBufferFifo.scala 76:61]
        err_counter <= _err_counter_T_1; // @[RxBufferFifo.scala 88:19]
      end else begin
        err_counter <= _GEN_111;
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 58:37]
      wrong_chksum_counter <= 32'h0; // @[RxBufferFifo.scala 58:37]
    end else begin
      wrong_chksum_counter <= _wrong_chksum_counter_T_6; // @[RxBufferFifo.scala 142:24]
    end
    if (reset) begin // @[RxBufferFifo.scala 63:30]
      is_overflowed <= 1'h0; // @[RxBufferFifo.scala 63:30]
    end else if (!(io_reset_counter)) begin // @[RxBufferFifo.scala 68:26]
      if (in_shake_hand) begin // @[RxBufferFifo.scala 72:29]
        if (_GEN_2 == 6'h20) begin // @[RxBufferFifo.scala 76:61]
          is_overflowed <= _GEN_3;
        end else begin
          is_overflowed <= _GEN_133;
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
  input  [31:0]  io_extern_config_c2h_sw_qid_mask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  rx_converter_clock; // @[RxHandler.scala 40:28]
  wire  rx_converter_reset; // @[RxHandler.scala 40:28]
  wire [511:0] rx_converter_io_in_tdata; // @[RxHandler.scala 40:28]
  wire  rx_converter_io_in_tvalid; // @[RxHandler.scala 40:28]
  wire  rx_converter_io_in_tready; // @[RxHandler.scala 40:28]
  wire  rx_converter_io_in_tlast; // @[RxHandler.scala 40:28]
  wire  rx_converter_io_in_tuser; // @[RxHandler.scala 40:28]
  wire [63:0] rx_converter_io_in_tkeep; // @[RxHandler.scala 40:28]
  wire [511:0] rx_converter_io_out_tdata; // @[RxHandler.scala 40:28]
  wire  rx_converter_io_out_tvalid; // @[RxHandler.scala 40:28]
  wire  rx_converter_io_out_tready; // @[RxHandler.scala 40:28]
  wire  rx_converter_io_out_tlast; // @[RxHandler.scala 40:28]
  wire  rx_converter_io_out_tuser; // @[RxHandler.scala 40:28]
  wire [15:0] rx_converter_io_out_rx_info_tlen; // @[RxHandler.scala 40:28]
  wire [5:0] rx_converter_io_out_rx_info_qid; // @[RxHandler.scala 40:28]
  wire [31:0] rx_converter_io_extern_config_c2h_sw_qid_mask; // @[RxHandler.scala 40:28]
  wire  rx_pipeline_clock; // @[RxHandler.scala 44:27]
  wire  rx_pipeline_reset; // @[RxHandler.scala 44:27]
  wire [511:0] rx_pipeline_io_in_tdata; // @[RxHandler.scala 44:27]
  wire  rx_pipeline_io_in_tvalid; // @[RxHandler.scala 44:27]
  wire  rx_pipeline_io_in_tready; // @[RxHandler.scala 44:27]
  wire  rx_pipeline_io_in_tlast; // @[RxHandler.scala 44:27]
  wire  rx_pipeline_io_in_tuser; // @[RxHandler.scala 44:27]
  wire [15:0] rx_pipeline_io_in_rx_info_tlen; // @[RxHandler.scala 44:27]
  wire [5:0] rx_pipeline_io_in_rx_info_qid; // @[RxHandler.scala 44:27]
  wire [511:0] rx_pipeline_io_out_tdata; // @[RxHandler.scala 44:27]
  wire  rx_pipeline_io_out_tvalid; // @[RxHandler.scala 44:27]
  wire  rx_pipeline_io_out_tready; // @[RxHandler.scala 44:27]
  wire  rx_pipeline_io_out_tlast; // @[RxHandler.scala 44:27]
  wire  rx_pipeline_io_out_tuser; // @[RxHandler.scala 44:27]
  wire [15:0] rx_pipeline_io_out_rx_info_tlen; // @[RxHandler.scala 44:27]
  wire [5:0] rx_pipeline_io_out_rx_info_qid; // @[RxHandler.scala 44:27]
  wire [31:0] rx_pipeline_io_out_rx_info_ip_chksum; // @[RxHandler.scala 44:27]
  wire [31:0] rx_pipeline_io_out_rx_info_tcp_chksum; // @[RxHandler.scala 44:27]
  wire  rx_buffer_fifo_clock; // @[RxHandler.scala 47:30]
  wire  rx_buffer_fifo_reset; // @[RxHandler.scala 47:30]
  wire [511:0] rx_buffer_fifo_io_in_tdata; // @[RxHandler.scala 47:30]
  wire  rx_buffer_fifo_io_in_tvalid; // @[RxHandler.scala 47:30]
  wire  rx_buffer_fifo_io_in_tready; // @[RxHandler.scala 47:30]
  wire  rx_buffer_fifo_io_in_tlast; // @[RxHandler.scala 47:30]
  wire  rx_buffer_fifo_io_in_tuser; // @[RxHandler.scala 47:30]
  wire [15:0] rx_buffer_fifo_io_in_rx_info_tlen; // @[RxHandler.scala 47:30]
  wire [5:0] rx_buffer_fifo_io_in_rx_info_qid; // @[RxHandler.scala 47:30]
  wire [31:0] rx_buffer_fifo_io_in_rx_info_ip_chksum; // @[RxHandler.scala 47:30]
  wire [31:0] rx_buffer_fifo_io_in_rx_info_tcp_chksum; // @[RxHandler.scala 47:30]
  wire [511:0] rx_buffer_fifo_io_out_tdata; // @[RxHandler.scala 47:30]
  wire  rx_buffer_fifo_io_out_tvalid; // @[RxHandler.scala 47:30]
  wire  rx_buffer_fifo_io_out_tready; // @[RxHandler.scala 47:30]
  wire  rx_buffer_fifo_io_out_tlast; // @[RxHandler.scala 47:30]
  wire [5:0] rx_buffer_fifo_io_out_qid; // @[RxHandler.scala 47:30]
  wire [15:0] rx_buffer_fifo_io_out_tlen; // @[RxHandler.scala 47:30]
  wire  rx_buffer_fifo_io_reset_counter; // @[RxHandler.scala 47:30]
  wire [31:0] rx_buffer_fifo_io_c2h_pack_counter; // @[RxHandler.scala 47:30]
  wire [31:0] rx_buffer_fifo_io_c2h_err_counter; // @[RxHandler.scala 47:30]
  reg  QDMA_c2h_stub_in_tuser_reg; // @[RxHandler.scala 55:43]
  wire  _GEN_0 = io_QDMA_c2h_stub_in_tvalid & io_QDMA_c2h_stub_in_tready ? io_QDMA_c2h_stub_in_tlast :
    QDMA_c2h_stub_in_tuser_reg; // @[RxHandler.scala 56:65 57:32 55:43]
  wire  _io_QDMA_c2h_stub_in_tlast_T = ~io_QDMA_c2h_stub_in_tuser; // @[RxHandler.scala 71:63]
  wire [10:0] Gen_c2h_hdr_qid = {{5'd0}, rx_buffer_fifo_io_out_qid};
  wire [5:0] Gen_c2h_hdr_flow_id = Gen_c2h_hdr_qid[5:0];
  wire [15:0] Gen_c2h_hdr_tdest = {{5'd0}, Gen_c2h_hdr_qid};
  wire [15:0] Gen_c2h_hdr_pkt_len = rx_buffer_fifo_io_out_tlen;
  wire [511:0] _io_QDMA_c2h_stub_in_tdata_T = {362'h0,2'h0,4'h0,Gen_c2h_hdr_pkt_len,80'h0,Gen_c2h_hdr_tdest,10'h0,
    Gen_c2h_hdr_flow_id,5'h0,Gen_c2h_hdr_qid}; // @[RxHandler.scala 82:46]
  RxConverter rx_converter ( // @[RxHandler.scala 40:28]
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
    .io_out_rx_info_qid(rx_converter_io_out_rx_info_qid),
    .io_extern_config_c2h_sw_qid_mask(rx_converter_io_extern_config_c2h_sw_qid_mask)
  );
  RxPipeline rx_pipeline ( // @[RxHandler.scala 44:27]
    .clock(rx_pipeline_clock),
    .reset(rx_pipeline_reset),
    .io_in_tdata(rx_pipeline_io_in_tdata),
    .io_in_tvalid(rx_pipeline_io_in_tvalid),
    .io_in_tready(rx_pipeline_io_in_tready),
    .io_in_tlast(rx_pipeline_io_in_tlast),
    .io_in_tuser(rx_pipeline_io_in_tuser),
    .io_in_rx_info_tlen(rx_pipeline_io_in_rx_info_tlen),
    .io_in_rx_info_qid(rx_pipeline_io_in_rx_info_qid),
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
  RxBufferFifo rx_buffer_fifo ( // @[RxHandler.scala 47:30]
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
  assign io_CMAC_out_tready = rx_converter_io_in_tready; // @[RxHandler.scala 41:15]
  assign io_QDMA_c2h_stub_in_tdata = io_QDMA_c2h_stub_in_tuser ? _io_QDMA_c2h_stub_in_tdata_T :
    rx_buffer_fifo_io_out_tdata; // @[RxHandler.scala 75:34 82:31 85:31]
  assign io_QDMA_c2h_stub_in_tvalid = rx_buffer_fifo_io_out_tvalid; // @[RxHandler.scala 69:30]
  assign io_QDMA_c2h_stub_in_tlast = rx_buffer_fifo_io_out_tlast & ~io_QDMA_c2h_stub_in_tuser; // @[RxHandler.scala 71:61]
  assign io_QDMA_c2h_stub_in_tuser = QDMA_c2h_stub_in_tuser_reg & io_QDMA_c2h_stub_in_tvalid; // @[RxHandler.scala 60:59]
  assign io_c2h_pack_counter = rx_buffer_fifo_io_c2h_pack_counter; // @[RxHandler.scala 50:23]
  assign io_c2h_err_counter = rx_buffer_fifo_io_c2h_err_counter; // @[RxHandler.scala 51:22]
  assign rx_converter_clock = clock;
  assign rx_converter_reset = reset;
  assign rx_converter_io_in_tdata = io_CMAC_out_tdata; // @[RxHandler.scala 41:15]
  assign rx_converter_io_in_tvalid = io_CMAC_out_tvalid; // @[RxHandler.scala 41:15]
  assign rx_converter_io_in_tlast = io_CMAC_out_tlast; // @[RxHandler.scala 41:15]
  assign rx_converter_io_in_tuser = io_CMAC_out_tuser; // @[RxHandler.scala 41:15]
  assign rx_converter_io_in_tkeep = io_CMAC_out_tkeep; // @[RxHandler.scala 41:15]
  assign rx_converter_io_out_tready = rx_pipeline_io_in_tready; // @[RxHandler.scala 45:23]
  assign rx_converter_io_extern_config_c2h_sw_qid_mask = io_extern_config_c2h_sw_qid_mask; // @[RxHandler.scala 42:33]
  assign rx_pipeline_clock = clock;
  assign rx_pipeline_reset = reset;
  assign rx_pipeline_io_in_tdata = rx_converter_io_out_tdata; // @[RxHandler.scala 45:23]
  assign rx_pipeline_io_in_tvalid = rx_converter_io_out_tvalid; // @[RxHandler.scala 45:23]
  assign rx_pipeline_io_in_tlast = rx_converter_io_out_tlast; // @[RxHandler.scala 45:23]
  assign rx_pipeline_io_in_tuser = rx_converter_io_out_tuser; // @[RxHandler.scala 45:23]
  assign rx_pipeline_io_in_rx_info_tlen = rx_converter_io_out_rx_info_tlen; // @[RxHandler.scala 45:23]
  assign rx_pipeline_io_in_rx_info_qid = rx_converter_io_out_rx_info_qid; // @[RxHandler.scala 45:23]
  assign rx_pipeline_io_out_tready = rx_buffer_fifo_io_in_tready; // @[RxHandler.scala 48:22]
  assign rx_buffer_fifo_clock = clock;
  assign rx_buffer_fifo_reset = reset;
  assign rx_buffer_fifo_io_in_tdata = rx_pipeline_io_out_tdata; // @[RxHandler.scala 48:22]
  assign rx_buffer_fifo_io_in_tvalid = rx_pipeline_io_out_tvalid; // @[RxHandler.scala 48:22]
  assign rx_buffer_fifo_io_in_tlast = rx_pipeline_io_out_tlast; // @[RxHandler.scala 48:22]
  assign rx_buffer_fifo_io_in_tuser = rx_pipeline_io_out_tuser; // @[RxHandler.scala 48:22]
  assign rx_buffer_fifo_io_in_rx_info_tlen = rx_pipeline_io_out_rx_info_tlen; // @[RxHandler.scala 48:22]
  assign rx_buffer_fifo_io_in_rx_info_qid = rx_pipeline_io_out_rx_info_qid; // @[RxHandler.scala 48:22]
  assign rx_buffer_fifo_io_in_rx_info_ip_chksum = rx_pipeline_io_out_rx_info_ip_chksum; // @[RxHandler.scala 48:22]
  assign rx_buffer_fifo_io_in_rx_info_tcp_chksum = rx_pipeline_io_out_rx_info_tcp_chksum; // @[RxHandler.scala 48:22]
  assign rx_buffer_fifo_io_out_tready = io_QDMA_c2h_stub_in_tready & _io_QDMA_c2h_stub_in_tlast_T; // @[RxHandler.scala 72:63]
  assign rx_buffer_fifo_io_reset_counter = io_reset_counter; // @[RxHandler.scala 49:35]
  always @(posedge clock) begin
    QDMA_c2h_stub_in_tuser_reg <= reset | _GEN_0; // @[RxHandler.scala 55:{43,43}]
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
  input  [31:0]  io_extern_config_c2h_sw_qid_mask,
  input  [31:0]  io_extern_config_c2h_ipfilter_hash_seed,
  output [31:0]  io_c2h_pack_counter,
  output [31:0]  io_c2h_err_counter,
  output [31:0]  io_h2c_pack_counter,
  output [31:0]  io_h2c_err_counter
);
  wire  tx_handler_clock; // @[PackageHandler.scala 29:26]
  wire  tx_handler_reset; // @[PackageHandler.scala 29:26]
  wire [511:0] tx_handler_io_QDMA_h2c_stub_out_tdata; // @[PackageHandler.scala 29:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tvalid; // @[PackageHandler.scala 29:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tready; // @[PackageHandler.scala 29:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tlast; // @[PackageHandler.scala 29:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tuser; // @[PackageHandler.scala 29:26]
  wire [511:0] tx_handler_io_CMAC_in_tdata; // @[PackageHandler.scala 29:26]
  wire  tx_handler_io_CMAC_in_tvalid; // @[PackageHandler.scala 29:26]
  wire  tx_handler_io_CMAC_in_tready; // @[PackageHandler.scala 29:26]
  wire  tx_handler_io_CMAC_in_tlast; // @[PackageHandler.scala 29:26]
  wire  tx_handler_io_reset_counter; // @[PackageHandler.scala 29:26]
  wire [31:0] tx_handler_io_h2c_pack_counter; // @[PackageHandler.scala 29:26]
  wire [31:0] tx_handler_io_h2c_err_counter; // @[PackageHandler.scala 29:26]
  wire  rx_handler_clock; // @[PackageHandler.scala 37:26]
  wire  rx_handler_reset; // @[PackageHandler.scala 37:26]
  wire [511:0] rx_handler_io_CMAC_out_tdata; // @[PackageHandler.scala 37:26]
  wire  rx_handler_io_CMAC_out_tvalid; // @[PackageHandler.scala 37:26]
  wire  rx_handler_io_CMAC_out_tready; // @[PackageHandler.scala 37:26]
  wire  rx_handler_io_CMAC_out_tlast; // @[PackageHandler.scala 37:26]
  wire  rx_handler_io_CMAC_out_tuser; // @[PackageHandler.scala 37:26]
  wire [63:0] rx_handler_io_CMAC_out_tkeep; // @[PackageHandler.scala 37:26]
  wire [511:0] rx_handler_io_QDMA_c2h_stub_in_tdata; // @[PackageHandler.scala 37:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tvalid; // @[PackageHandler.scala 37:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tready; // @[PackageHandler.scala 37:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tlast; // @[PackageHandler.scala 37:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 37:26]
  wire  rx_handler_io_reset_counter; // @[PackageHandler.scala 37:26]
  wire [31:0] rx_handler_io_c2h_pack_counter; // @[PackageHandler.scala 37:26]
  wire [31:0] rx_handler_io_c2h_err_counter; // @[PackageHandler.scala 37:26]
  wire [31:0] rx_handler_io_extern_config_c2h_sw_qid_mask; // @[PackageHandler.scala 37:26]
  TxHandler tx_handler ( // @[PackageHandler.scala 29:26]
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
  RxHandler rx_handler ( // @[PackageHandler.scala 37:26]
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
    .io_extern_config_c2h_sw_qid_mask(rx_handler_io_extern_config_c2h_sw_qid_mask)
  );
  assign io_QDMA_h2c_stub_out_tready = tx_handler_io_QDMA_h2c_stub_out_tready; // @[PackageHandler.scala 30:24]
  assign io_CMAC_in_tdata = tx_handler_io_CMAC_in_tdata; // @[PackageHandler.scala 31:24]
  assign io_CMAC_in_tvalid = tx_handler_io_CMAC_in_tvalid; // @[PackageHandler.scala 31:24]
  assign io_CMAC_in_tlast = tx_handler_io_CMAC_in_tlast; // @[PackageHandler.scala 31:24]
  assign io_CMAC_in_tuser = 1'h0; // @[PackageHandler.scala 31:24]
  assign io_CMAC_in_tkeep = 64'hffffffffffffffff; // @[PackageHandler.scala 31:24]
  assign io_CMAC_out_tready = rx_handler_io_CMAC_out_tready; // @[PackageHandler.scala 39:23]
  assign io_QDMA_c2h_stub_in_tdata = rx_handler_io_QDMA_c2h_stub_in_tdata; // @[PackageHandler.scala 38:23]
  assign io_QDMA_c2h_stub_in_tvalid = rx_handler_io_QDMA_c2h_stub_in_tvalid; // @[PackageHandler.scala 38:23]
  assign io_QDMA_c2h_stub_in_tlast = rx_handler_io_QDMA_c2h_stub_in_tlast; // @[PackageHandler.scala 38:23]
  assign io_QDMA_c2h_stub_in_tuser = rx_handler_io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 38:23]
  assign io_c2h_pack_counter = rx_handler_io_c2h_pack_counter; // @[PackageHandler.scala 42:33]
  assign io_c2h_err_counter = rx_handler_io_c2h_err_counter; // @[PackageHandler.scala 43:33]
  assign io_h2c_pack_counter = tx_handler_io_h2c_pack_counter; // @[PackageHandler.scala 34:31]
  assign io_h2c_err_counter = tx_handler_io_h2c_err_counter; // @[PackageHandler.scala 35:31]
  assign tx_handler_clock = clock;
  assign tx_handler_reset = reset;
  assign tx_handler_io_QDMA_h2c_stub_out_tdata = io_QDMA_h2c_stub_out_tdata; // @[PackageHandler.scala 30:24]
  assign tx_handler_io_QDMA_h2c_stub_out_tvalid = io_QDMA_h2c_stub_out_tvalid; // @[PackageHandler.scala 30:24]
  assign tx_handler_io_QDMA_h2c_stub_out_tlast = io_QDMA_h2c_stub_out_tlast; // @[PackageHandler.scala 30:24]
  assign tx_handler_io_QDMA_h2c_stub_out_tuser = io_QDMA_h2c_stub_out_tuser; // @[PackageHandler.scala 30:24]
  assign tx_handler_io_CMAC_in_tready = io_CMAC_in_tready; // @[PackageHandler.scala 31:24]
  assign tx_handler_io_reset_counter = io_reset_counter; // @[PackageHandler.scala 32:31]
  assign rx_handler_clock = clock;
  assign rx_handler_reset = reset;
  assign rx_handler_io_CMAC_out_tdata = io_CMAC_out_tdata; // @[PackageHandler.scala 39:23]
  assign rx_handler_io_CMAC_out_tvalid = io_CMAC_out_tvalid; // @[PackageHandler.scala 39:23]
  assign rx_handler_io_CMAC_out_tlast = io_CMAC_out_tlast; // @[PackageHandler.scala 39:23]
  assign rx_handler_io_CMAC_out_tuser = io_CMAC_out_tuser; // @[PackageHandler.scala 39:23]
  assign rx_handler_io_CMAC_out_tkeep = io_CMAC_out_tkeep; // @[PackageHandler.scala 39:23]
  assign rx_handler_io_QDMA_c2h_stub_in_tready = io_QDMA_c2h_stub_in_tready; // @[PackageHandler.scala 38:23]
  assign rx_handler_io_reset_counter = io_reset_counter; // @[PackageHandler.scala 40:33]
  assign rx_handler_io_extern_config_c2h_sw_qid_mask = io_extern_config_c2h_sw_qid_mask; // @[PackageHandler.scala 41:33]
endmodule
