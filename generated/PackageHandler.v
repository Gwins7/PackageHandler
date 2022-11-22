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
  reg [31:0] cal_reg_0; // @[Misc.scala 32:20]
  reg [31:0] cal_reg_1; // @[Misc.scala 32:20]
  reg [31:0] cal_reg_2; // @[Misc.scala 32:20]
  wire [31:0] _cal_reg_0_T_1 = io_in_vec_0 + io_in_vec_1; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_0_T_3 = io_in_vec_2 + io_in_vec_3; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_1_T_1 = io_in_vec_4 + io_in_vec_5; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_1_T_3 = io_in_vec_6 + io_in_vec_7; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_2_T_1 = io_in_vec_8 + io_in_vec_9; // @[Misc.scala 44:44]
  wire [32:0] _cal_reg_2_T_4 = {{1'd0}, _cal_reg_2_T_1}; // @[Misc.scala 44:44]
  wire [31:0] _io_out_sum_T_1 = cal_reg_0 + cal_reg_1; // @[Misc.scala 47:37]
  wire [32:0] _io_out_sum_T_2 = {{1'd0}, cal_reg_2}; // @[Misc.scala 47:37]
  assign io_out_sum = _io_out_sum_T_1 + _io_out_sum_T_2[31:0]; // @[Misc.scala 47:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_1 + _cal_reg_0_T_3; // @[Misc.scala 44:44]
    cal_reg_1 <= _cal_reg_1_T_1 + _cal_reg_1_T_3; // @[Misc.scala 44:44]
    cal_reg_2 <= _cal_reg_2_T_4[31:0]; // @[Misc.scala 44:44]
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
`endif // RANDOMIZE_REG_INIT
  reg [31:0] cal_reg_0; // @[Misc.scala 32:20]
  reg [31:0] cal_reg_1; // @[Misc.scala 32:20]
  reg [31:0] cal_reg_2; // @[Misc.scala 32:20]
  reg [31:0] cal_reg_3; // @[Misc.scala 32:20]
  wire [31:0] _cal_reg_0_T_1 = io_in_vec_0 + io_in_vec_1; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_0_T_3 = io_in_vec_2 + io_in_vec_3; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_0_T_5 = io_in_vec_4 + io_in_vec_5; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_0_T_7 = io_in_vec_6 + io_in_vec_7; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_0_T_9 = _cal_reg_0_T_1 + _cal_reg_0_T_3; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_0_T_11 = _cal_reg_0_T_5 + _cal_reg_0_T_7; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_1_T_1 = io_in_vec_8 + io_in_vec_9; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_1_T_3 = io_in_vec_10 + io_in_vec_11; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_1_T_5 = io_in_vec_12 + io_in_vec_13; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_1_T_7 = io_in_vec_14 + io_in_vec_15; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_1_T_9 = _cal_reg_1_T_1 + _cal_reg_1_T_3; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_1_T_11 = _cal_reg_1_T_5 + _cal_reg_1_T_7; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_2_T_1 = io_in_vec_16 + io_in_vec_17; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_2_T_3 = io_in_vec_18 + io_in_vec_19; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_2_T_5 = io_in_vec_20 + io_in_vec_21; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_2_T_7 = io_in_vec_22 + io_in_vec_23; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_2_T_9 = _cal_reg_2_T_1 + _cal_reg_2_T_3; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_2_T_11 = _cal_reg_2_T_5 + _cal_reg_2_T_7; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_3_T_1 = io_in_vec_24 + io_in_vec_25; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_3_T_3 = io_in_vec_26 + io_in_vec_27; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_3_T_5 = io_in_vec_28 + io_in_vec_29; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_3_T_7 = io_in_vec_30 + io_in_vec_31; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_3_T_9 = _cal_reg_3_T_1 + _cal_reg_3_T_3; // @[Misc.scala 44:44]
  wire [31:0] _cal_reg_3_T_11 = _cal_reg_3_T_5 + _cal_reg_3_T_7; // @[Misc.scala 44:44]
  wire [31:0] _io_out_sum_T_1 = cal_reg_0 + cal_reg_1; // @[Misc.scala 47:37]
  wire [31:0] _io_out_sum_T_3 = cal_reg_2 + cal_reg_3; // @[Misc.scala 47:37]
  assign io_out_sum = _io_out_sum_T_1 + _io_out_sum_T_3; // @[Misc.scala 47:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_9 + _cal_reg_0_T_11; // @[Misc.scala 44:44]
    cal_reg_1 <= _cal_reg_1_T_9 + _cal_reg_1_T_11; // @[Misc.scala 44:44]
    cal_reg_2 <= _cal_reg_2_T_9 + _cal_reg_2_T_11; // @[Misc.scala 44:44]
    cal_reg_3 <= _cal_reg_3_T_9 + _cal_reg_3_T_11; // @[Misc.scala 44:44]
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TxBufferFifo(
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
  reg [511:0] _RAND_3;
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
  reg [511:0] data_buf_reg [0:63]; // @[TxBufferFifo.scala 44:33]
  wire  data_buf_reg_rd_data_en; // @[TxBufferFifo.scala 44:33]
  wire [5:0] data_buf_reg_rd_data_addr; // @[TxBufferFifo.scala 44:33]
  wire [511:0] data_buf_reg_rd_data_data; // @[TxBufferFifo.scala 44:33]
  wire [511:0] data_buf_reg_MPORT_data; // @[TxBufferFifo.scala 44:33]
  wire [5:0] data_buf_reg_MPORT_addr; // @[TxBufferFifo.scala 44:33]
  wire  data_buf_reg_MPORT_mask; // @[TxBufferFifo.scala 44:33]
  wire  data_buf_reg_MPORT_en; // @[TxBufferFifo.scala 44:33]
  reg  data_buf_reg_rd_data_en_pipe_0;
  reg [5:0] data_buf_reg_rd_data_addr_pipe_0;
  wire  ip_chksum_cal_clock; // @[TxBufferFifo.scala 74:29]
  wire [31:0] ip_chksum_cal_io_in_vec_0; // @[TxBufferFifo.scala 74:29]
  wire [31:0] ip_chksum_cal_io_in_vec_1; // @[TxBufferFifo.scala 74:29]
  wire [31:0] ip_chksum_cal_io_in_vec_2; // @[TxBufferFifo.scala 74:29]
  wire [31:0] ip_chksum_cal_io_in_vec_3; // @[TxBufferFifo.scala 74:29]
  wire [31:0] ip_chksum_cal_io_in_vec_4; // @[TxBufferFifo.scala 74:29]
  wire [31:0] ip_chksum_cal_io_in_vec_5; // @[TxBufferFifo.scala 74:29]
  wire [31:0] ip_chksum_cal_io_in_vec_6; // @[TxBufferFifo.scala 74:29]
  wire [31:0] ip_chksum_cal_io_in_vec_7; // @[TxBufferFifo.scala 74:29]
  wire [31:0] ip_chksum_cal_io_in_vec_8; // @[TxBufferFifo.scala 74:29]
  wire [31:0] ip_chksum_cal_io_in_vec_9; // @[TxBufferFifo.scala 74:29]
  wire [31:0] ip_chksum_cal_io_out_sum; // @[TxBufferFifo.scala 74:29]
  wire  tcp_pld_chksum_cal_clock; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_0; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_1; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_2; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_3; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_4; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_5; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_6; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_7; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_8; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_9; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_10; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_11; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_12; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_13; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_14; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_15; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_16; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_17; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_18; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_19; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_20; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_21; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_22; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_23; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_24; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_25; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_26; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_27; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_28; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_29; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_30; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_31; // @[TxBufferFifo.scala 82:34]
  wire [31:0] tcp_pld_chksum_cal_io_out_sum; // @[TxBufferFifo.scala 82:34]
  wire  tcp_hdr_chksum_cal_clock; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_0; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_1; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_2; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_3; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_4; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_5; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_6; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_7; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_8; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_9; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_10; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_11; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_12; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_13; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_14; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_15; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_16; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_17; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_18; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_19; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_20; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_21; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_22; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_23; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_24; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_25; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_26; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_27; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_28; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_29; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_30; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_31; // @[TxBufferFifo.scala 89:34]
  wire [31:0] tcp_hdr_chksum_cal_io_out_sum; // @[TxBufferFifo.scala 89:34]
  wire  true_tvalid = io_in_tvalid & ~io_in_tuser; // @[TxBufferFifo.scala 35:34]
  wire  in_shake_hand = true_tvalid & io_in_tready; // @[TxBufferFifo.scala 37:35]
  reg [511:0] in_tdata_reg; // @[Reg.scala 28:20]
  wire [511:0] _GEN_0 = in_shake_hand ? io_in_tdata : in_tdata_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_tlast_reg; // @[Reg.scala 28:20]
  reg  in_tvalid_reg; // @[Reg.scala 28:20]
  reg  info_buf_reg_0_used; // @[TxBufferFifo.scala 47:29]
  reg  info_buf_reg_0_valid; // @[TxBufferFifo.scala 47:29]
  reg [31:0] info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 47:29]
  reg [31:0] info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 47:29]
  reg [5:0] info_buf_reg_0_burst; // @[TxBufferFifo.scala 47:29]
  reg  info_buf_reg_1_used; // @[TxBufferFifo.scala 47:29]
  reg  info_buf_reg_1_valid; // @[TxBufferFifo.scala 47:29]
  reg [31:0] info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 47:29]
  reg [31:0] info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 47:29]
  reg [5:0] info_buf_reg_1_burst; // @[TxBufferFifo.scala 47:29]
  reg [6:0] wr_index_reg; // @[TxBufferFifo.scala 48:29]
  reg [6:0] rd_index_reg; // @[TxBufferFifo.scala 49:29]
  reg [6:0] wr_pos_reg; // @[TxBufferFifo.scala 50:29]
  reg [6:0] rd_pos_reg; // @[TxBufferFifo.scala 51:29]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[TxBufferFifo.scala 56:40]
  reg [31:0] pack_counter; // @[TxBufferFifo.scala 59:29]
  reg [31:0] err_counter; // @[TxBufferFifo.scala 60:28]
  reg  is_overflowed; // @[TxBufferFifo.scala 67:30]
  wire [15:0] _ip_chksum_cal_io_in_vec_0_T_3 = {_GEN_0[119:112],_GEN_0[127:120]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_1_T_3 = {_GEN_0[135:128],_GEN_0[143:136]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_2_T_3 = {_GEN_0[151:144],_GEN_0[159:152]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_3_T_3 = {_GEN_0[167:160],_GEN_0[175:168]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_4_T_3 = {_GEN_0[183:176],_GEN_0[191:184]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_6_T_3 = {_GEN_0[215:208],_GEN_0[223:216]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_7_T_3 = {_GEN_0[231:224],_GEN_0[239:232]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_8_T_3 = {_GEN_0[247:240],_GEN_0[255:248]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_9_T_3 = {_GEN_0[263:256],_GEN_0[271:264]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_0_T_3 = {_GEN_0[7:0],_GEN_0[15:8]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_1_T_3 = {_GEN_0[23:16],_GEN_0[31:24]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_2_T_3 = {_GEN_0[39:32],_GEN_0[47:40]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_3_T_3 = {_GEN_0[55:48],_GEN_0[63:56]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_4_T_3 = {_GEN_0[71:64],_GEN_0[79:72]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_5_T_3 = {_GEN_0[87:80],_GEN_0[95:88]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_6_T_3 = {_GEN_0[103:96],_GEN_0[111:104]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_12_T_3 = {_GEN_0[199:192],_GEN_0[207:200]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_17_T_3 = {_GEN_0[279:272],_GEN_0[287:280]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_18_T_3 = {_GEN_0[295:288],_GEN_0[303:296]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_19_T_3 = {_GEN_0[311:304],_GEN_0[319:312]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_20_T_3 = {_GEN_0[327:320],_GEN_0[335:328]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_21_T_3 = {_GEN_0[343:336],_GEN_0[351:344]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_22_T_3 = {_GEN_0[359:352],_GEN_0[367:360]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_23_T_3 = {_GEN_0[375:368],_GEN_0[383:376]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_24_T_3 = {_GEN_0[391:384],_GEN_0[399:392]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_25_T_3 = {_GEN_0[407:400],_GEN_0[415:408]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_26_T_3 = {_GEN_0[423:416],_GEN_0[431:424]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_27_T_3 = {_GEN_0[439:432],_GEN_0[447:440]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_28_T_3 = {_GEN_0[455:448],_GEN_0[463:456]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_29_T_3 = {_GEN_0[471:464],_GEN_0[479:472]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_30_T_3 = {_GEN_0[487:480],_GEN_0[495:488]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_31_T_3 = {_GEN_0[503:496],_GEN_0[511:504]}; // @[Cat.scala 31:58]
  wire [31:0] tcp_hdr_chksum_result = tcp_hdr_chksum_cal_io_out_sum - 32'h14; // @[TxBufferFifo.scala 95:61]
  wire [31:0] _pack_counter_T_1 = pack_counter + 32'h1; // @[TxBufferFifo.scala 104:38]
  wire [5:0] _GEN_5 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[TxBufferFifo.scala 106:{46,46}]
  wire [11:0] _GEN_193 = {wr_index_reg, 5'h0}; // @[TxBufferFifo.scala 115:40]
  wire [13:0] _wr_pos_reg_T = {{2'd0}, _GEN_193}; // @[TxBufferFifo.scala 115:40]
  wire  _GEN_6 = ~in_tlast_reg | is_overflowed; // @[TxBufferFifo.scala 108:30 109:25 67:30]
  wire [13:0] _GEN_7 = ~in_tlast_reg ? {{7'd0}, wr_pos_reg} : _wr_pos_reg_T; // @[TxBufferFifo.scala 108:30 115:24 50:29]
  wire [31:0] _err_counter_T_1 = err_counter + 32'h1; // @[TxBufferFifo.scala 118:36]
  wire [5:0] _GEN_8 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 119:{36,36} 47:29]
  wire [5:0] _GEN_9 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 119:{36,36} 47:29]
  wire [31:0] _GEN_10 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 119:{36,36} 47:29]
  wire [31:0] _GEN_11 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 119:{36,36} 47:29]
  wire [31:0] _GEN_12 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 119:{36,36} 47:29]
  wire [31:0] _GEN_13 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 119:{36,36} 47:29]
  wire  _GEN_14 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 119:{36,36} 47:29]
  wire  _GEN_15 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 119:{36,36} 47:29]
  wire  _GEN_16 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_used; // @[TxBufferFifo.scala 119:{36,36} 47:29]
  wire  _GEN_17 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_used; // @[TxBufferFifo.scala 119:{36,36} 47:29]
  wire  _T_4 = ~is_overflowed; // @[TxBufferFifo.scala 123:15]
  wire  _GEN_19 = wr_index_reg[0] ? info_buf_reg_1_used : info_buf_reg_0_used; // @[TxBufferFifo.scala 125:{17,17}]
  wire  _GEN_194 = ~wr_index_reg[0]; // @[TxBufferFifo.scala 126:{45,45} 47:29]
  wire  _GEN_20 = ~wr_index_reg[0] | info_buf_reg_0_used; // @[TxBufferFifo.scala 126:{45,45} 47:29]
  wire  _GEN_21 = wr_index_reg[0] | info_buf_reg_1_used; // @[TxBufferFifo.scala 126:{45,45} 47:29]
  wire [31:0] _info_buf_reg_T_8_ip_chksum = ip_chksum_cal_io_out_sum; // @[TxBufferFifo.scala 127:{50,50}]
  wire [31:0] _GEN_22 = ~wr_index_reg[0] ? _info_buf_reg_T_8_ip_chksum : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 127:{50,50} 47:29]
  wire [31:0] _GEN_23 = wr_index_reg[0] ? _info_buf_reg_T_8_ip_chksum : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 127:{50,50} 47:29]
  wire [31:0] _GEN_24 = ~wr_index_reg[0] ? tcp_hdr_chksum_result : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 128:{51,51} 47:29]
  wire [31:0] _GEN_25 = wr_index_reg[0] ? tcp_hdr_chksum_result : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 128:{51,51} 47:29]
  wire [31:0] _GEN_27 = wr_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 130:{92,92}]
  wire [31:0] _info_buf_reg_tcp_chksum_T_2 = _GEN_27 + tcp_pld_chksum_cal_io_out_sum; // @[TxBufferFifo.scala 130:92]
  wire [31:0] _GEN_28 = ~wr_index_reg[0] ? _info_buf_reg_tcp_chksum_T_2 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 130:{51,51} 47:29]
  wire [31:0] _GEN_29 = wr_index_reg[0] ? _info_buf_reg_tcp_chksum_T_2 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 130:{51,51} 47:29]
  wire  _GEN_30 = ~_GEN_19 ? _GEN_20 : info_buf_reg_0_used; // @[TxBufferFifo.scala 125:51 47:29]
  wire  _GEN_31 = ~_GEN_19 ? _GEN_21 : info_buf_reg_1_used; // @[TxBufferFifo.scala 125:51 47:29]
  wire [31:0] _GEN_32 = ~_GEN_19 ? _GEN_22 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 125:51 47:29]
  wire [31:0] _GEN_33 = ~_GEN_19 ? _GEN_23 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 125:51 47:29]
  wire [31:0] _GEN_34 = ~_GEN_19 ? _GEN_24 : _GEN_28; // @[TxBufferFifo.scala 125:51]
  wire [31:0] _GEN_35 = ~_GEN_19 ? _GEN_25 : _GEN_29; // @[TxBufferFifo.scala 125:51]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_5 + 6'h1; // @[TxBufferFifo.scala 133:80]
  wire [5:0] _GEN_38 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 133:{44,44} 47:29]
  wire [5:0] _GEN_39 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 133:{44,44} 47:29]
  wire  _GEN_40 = _GEN_194 | info_buf_reg_0_valid; // @[TxBufferFifo.scala 135:{46,46} 47:29]
  wire  _GEN_41 = wr_index_reg[0] | info_buf_reg_1_valid; // @[TxBufferFifo.scala 135:{46,46} 47:29]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[TxBufferFifo.scala 30:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[TxBufferFifo.scala 30:19]
  wire [11:0] _GEN_196 = {_wr_index_reg_T_2, 5'h0}; // @[TxBufferFifo.scala 137:51]
  wire [13:0] _wr_pos_reg_T_4 = {{2'd0}, _GEN_196}; // @[TxBufferFifo.scala 137:51]
  wire [6:0] _wr_pos_reg_T_6 = wr_pos_reg + 7'h1; // @[TxBufferFifo.scala 139:38]
  wire  _GEN_42 = in_tlast_reg ? _GEN_40 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 134:31 47:29]
  wire  _GEN_43 = in_tlast_reg ? _GEN_41 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 134:31 47:29]
  wire [6:0] _GEN_44 = in_tlast_reg ? _wr_index_reg_T_2 : wr_index_reg; // @[TxBufferFifo.scala 134:31 136:26 48:29]
  wire [13:0] _GEN_45 = in_tlast_reg ? _wr_pos_reg_T_4 : {{7'd0}, _wr_pos_reg_T_6}; // @[TxBufferFifo.scala 134:31 137:24 139:24]
  wire  _GEN_46 = in_tlast_reg ? 1'h0 : is_overflowed; // @[TxBufferFifo.scala 141:35 143:25 67:30]
  wire [13:0] _GEN_47 = in_tlast_reg ? _wr_pos_reg_T : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 141:35 144:22 50:29]
  wire  _GEN_48 = ~is_overflowed ? _GEN_30 : info_buf_reg_0_used; // @[TxBufferFifo.scala 123:30 47:29]
  wire  _GEN_49 = ~is_overflowed ? _GEN_31 : info_buf_reg_1_used; // @[TxBufferFifo.scala 123:30 47:29]
  wire [31:0] _GEN_50 = ~is_overflowed ? _GEN_32 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 123:30 47:29]
  wire [31:0] _GEN_51 = ~is_overflowed ? _GEN_33 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 123:30 47:29]
  wire [31:0] _GEN_52 = ~is_overflowed ? _GEN_34 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 123:30 47:29]
  wire [31:0] _GEN_53 = ~is_overflowed ? _GEN_35 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 123:30 47:29]
  wire [5:0] _GEN_59 = ~is_overflowed ? _GEN_38 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 123:30 47:29]
  wire [5:0] _GEN_60 = ~is_overflowed ? _GEN_39 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 123:30 47:29]
  wire  _GEN_61 = ~is_overflowed ? _GEN_42 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 123:30 47:29]
  wire  _GEN_62 = ~is_overflowed ? _GEN_43 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 123:30 47:29]
  wire [6:0] _GEN_63 = ~is_overflowed ? _GEN_44 : wr_index_reg; // @[TxBufferFifo.scala 123:30 48:29]
  wire [13:0] _GEN_64 = ~is_overflowed ? _GEN_45 : _GEN_47; // @[TxBufferFifo.scala 123:30]
  wire  _GEN_65 = ~is_overflowed ? is_overflowed : _GEN_46; // @[TxBufferFifo.scala 123:30 67:30]
  wire  _GEN_66 = in_tvalid_reg ? _GEN_48 : info_buf_reg_0_used; // @[TxBufferFifo.scala 121:32 47:29]
  wire  _GEN_67 = in_tvalid_reg ? _GEN_49 : info_buf_reg_1_used; // @[TxBufferFifo.scala 121:32 47:29]
  wire [31:0] _GEN_68 = in_tvalid_reg ? _GEN_50 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 121:32 47:29]
  wire [31:0] _GEN_69 = in_tvalid_reg ? _GEN_51 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 121:32 47:29]
  wire [31:0] _GEN_70 = in_tvalid_reg ? _GEN_52 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 121:32 47:29]
  wire [31:0] _GEN_71 = in_tvalid_reg ? _GEN_53 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 121:32 47:29]
  wire  _GEN_74 = in_tvalid_reg & _T_4; // @[TxBufferFifo.scala 121:32 44:33]
  wire [5:0] _GEN_77 = in_tvalid_reg ? _GEN_59 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 121:32 47:29]
  wire [5:0] _GEN_78 = in_tvalid_reg ? _GEN_60 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 121:32 47:29]
  wire  _GEN_79 = in_tvalid_reg ? _GEN_61 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 121:32 47:29]
  wire  _GEN_80 = in_tvalid_reg ? _GEN_62 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 121:32 47:29]
  wire [6:0] _GEN_81 = in_tvalid_reg ? _GEN_63 : wr_index_reg; // @[TxBufferFifo.scala 121:32 48:29]
  wire [13:0] _GEN_82 = in_tvalid_reg ? _GEN_64 : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 121:32 50:29]
  wire  _GEN_83 = in_tvalid_reg ? _GEN_65 : is_overflowed; // @[TxBufferFifo.scala 121:32 67:30]
  wire [13:0] _GEN_85 = _GEN_5 == 6'h20 ? _GEN_7 : _GEN_82; // @[TxBufferFifo.scala 106:63]
  wire [5:0] _GEN_87 = _GEN_5 == 6'h20 ? _GEN_8 : _GEN_77; // @[TxBufferFifo.scala 106:63]
  wire [5:0] _GEN_88 = _GEN_5 == 6'h20 ? _GEN_9 : _GEN_78; // @[TxBufferFifo.scala 106:63]
  wire [31:0] _GEN_89 = _GEN_5 == 6'h20 ? _GEN_10 : _GEN_70; // @[TxBufferFifo.scala 106:63]
  wire [31:0] _GEN_90 = _GEN_5 == 6'h20 ? _GEN_11 : _GEN_71; // @[TxBufferFifo.scala 106:63]
  wire [31:0] _GEN_91 = _GEN_5 == 6'h20 ? _GEN_12 : _GEN_68; // @[TxBufferFifo.scala 106:63]
  wire [31:0] _GEN_92 = _GEN_5 == 6'h20 ? _GEN_13 : _GEN_69; // @[TxBufferFifo.scala 106:63]
  wire  _GEN_93 = _GEN_5 == 6'h20 ? _GEN_14 : _GEN_79; // @[TxBufferFifo.scala 106:63]
  wire  _GEN_94 = _GEN_5 == 6'h20 ? _GEN_15 : _GEN_80; // @[TxBufferFifo.scala 106:63]
  wire  _GEN_95 = _GEN_5 == 6'h20 ? _GEN_16 : _GEN_66; // @[TxBufferFifo.scala 106:63]
  wire  _GEN_96 = _GEN_5 == 6'h20 ? _GEN_17 : _GEN_67; // @[TxBufferFifo.scala 106:63]
  wire  _GEN_99 = _GEN_5 == 6'h20 ? 1'h0 : _GEN_74; // @[TxBufferFifo.scala 106:63 44:33]
  wire [13:0] _GEN_105 = in_shake_hand ? _GEN_85 : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 102:31 50:29]
  wire [5:0] _GEN_107 = in_shake_hand ? _GEN_87 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 102:31 47:29]
  wire [5:0] _GEN_108 = in_shake_hand ? _GEN_88 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 102:31 47:29]
  wire [31:0] _GEN_109 = in_shake_hand ? _GEN_89 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 102:31 47:29]
  wire [31:0] _GEN_110 = in_shake_hand ? _GEN_90 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 102:31 47:29]
  wire [31:0] _GEN_111 = in_shake_hand ? _GEN_91 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 102:31 47:29]
  wire [31:0] _GEN_112 = in_shake_hand ? _GEN_92 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 102:31 47:29]
  wire  _GEN_113 = in_shake_hand ? _GEN_93 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 102:31 47:29]
  wire  _GEN_114 = in_shake_hand ? _GEN_94 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 102:31 47:29]
  wire  _GEN_115 = in_shake_hand ? _GEN_95 : info_buf_reg_0_used; // @[TxBufferFifo.scala 102:31 47:29]
  wire  _GEN_116 = in_shake_hand ? _GEN_96 : info_buf_reg_1_used; // @[TxBufferFifo.scala 102:31 47:29]
  wire  _GEN_119 = in_shake_hand & _GEN_99; // @[TxBufferFifo.scala 102:31 44:33]
  wire [13:0] _GEN_126 = io_reset_counter ? {{7'd0}, wr_pos_reg} : _GEN_105; // @[TxBufferFifo.scala 98:26 50:29]
  wire [5:0] _GEN_127 = io_reset_counter ? info_buf_reg_0_burst : _GEN_107; // @[TxBufferFifo.scala 98:26 47:29]
  wire [5:0] _GEN_128 = io_reset_counter ? info_buf_reg_1_burst : _GEN_108; // @[TxBufferFifo.scala 98:26 47:29]
  wire [31:0] _GEN_129 = io_reset_counter ? info_buf_reg_0_tcp_chksum : _GEN_109; // @[TxBufferFifo.scala 98:26 47:29]
  wire [31:0] _GEN_130 = io_reset_counter ? info_buf_reg_1_tcp_chksum : _GEN_110; // @[TxBufferFifo.scala 98:26 47:29]
  wire [31:0] _GEN_131 = io_reset_counter ? info_buf_reg_0_ip_chksum : _GEN_111; // @[TxBufferFifo.scala 98:26 47:29]
  wire [31:0] _GEN_132 = io_reset_counter ? info_buf_reg_1_ip_chksum : _GEN_112; // @[TxBufferFifo.scala 98:26 47:29]
  wire  _GEN_133 = io_reset_counter ? info_buf_reg_0_valid : _GEN_113; // @[TxBufferFifo.scala 98:26 47:29]
  wire  _GEN_134 = io_reset_counter ? info_buf_reg_1_valid : _GEN_114; // @[TxBufferFifo.scala 98:26 47:29]
  wire  _GEN_135 = io_reset_counter ? info_buf_reg_0_used : _GEN_115; // @[TxBufferFifo.scala 98:26 47:29]
  wire  _GEN_136 = io_reset_counter ? info_buf_reg_1_used : _GEN_116; // @[TxBufferFifo.scala 98:26 47:29]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[TxBufferFifo.scala 150:38]
  wire [5:0] _GEN_146 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[TxBufferFifo.scala 155:{70,70}]
  wire  _io_out_tlast_T_1 = _GEN_146 == 6'h1; // @[TxBufferFifo.scala 155:70]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[TxBufferFifo.scala 30:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[TxBufferFifo.scala 30:19]
  wire [11:0] _GEN_198 = {_rd_pos_next_T_2, 5'h0}; // @[TxBufferFifo.scala 189:44]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_198}; // @[TxBufferFifo.scala 189:44]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[TxBufferFifo.scala 191:31]
  wire [13:0] _GEN_192 = _io_out_tlast_T_1 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[TxBufferFifo.scala 188:51 189:17 191:17]
  wire [6:0] rd_pos_next = _GEN_192[6:0];
  wire [6:0] _rd_data_T = out_shake_hand ? rd_pos_next : rd_pos_reg; // @[TxBufferFifo.scala 158:33]
  wire [31:0] _GEN_148 = rd_index_reg[0] ? info_buf_reg_1_ip_chksum : info_buf_reg_0_ip_chksum; // @[Misc.scala 14:{10,10}]
  wire [15:0] _mid_ip_chksum_T_6 = _GEN_148[31:16] + _GEN_148[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _mid_ip_chksum_T_8 = _GEN_148[31:16] > 16'h0 ? _mid_ip_chksum_T_6 : _GEN_148[15:0]; // @[Misc.scala 14:8]
  wire [31:0] _GEN_150 = rd_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[Misc.scala 14:{10,10}]
  wire [15:0] _mid_tcp_chksum_T_6 = _GEN_150[31:16] + _GEN_150[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _mid_tcp_chksum_T_8 = _GEN_150[31:16] > 16'h0 ? _mid_tcp_chksum_T_6 : _GEN_150[15:0]; // @[Misc.scala 14:8]
  wire [31:0] mid_ip_chksum = {{16'd0}, _mid_ip_chksum_T_8}; // @[TxBufferFifo.scala 161:27 162:17]
  wire [15:0] _end_ip_chksum_T_5 = mid_ip_chksum[31:16] + mid_ip_chksum[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _end_ip_chksum_T_7 = mid_ip_chksum[31:16] > 16'h0 ? _end_ip_chksum_T_5 : mid_ip_chksum[15:0]; // @[Misc.scala 14:8]
  wire [15:0] end_ip_chksum = ~_end_ip_chksum_T_7; // @[TxBufferFifo.scala 167:20]
  wire [31:0] mid_tcp_chksum = {{16'd0}, _mid_tcp_chksum_T_8}; // @[TxBufferFifo.scala 163:28 164:18]
  wire [15:0] _end_tcp_chksum_T_5 = mid_tcp_chksum[31:16] + mid_tcp_chksum[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _end_tcp_chksum_T_7 = mid_tcp_chksum[31:16] > 16'h0 ? _end_tcp_chksum_T_5 : mid_tcp_chksum[15:0]; // @[Misc.scala 14:8]
  wire [15:0] end_tcp_chksum = ~_end_tcp_chksum_T_7; // @[TxBufferFifo.scala 169:21]
  wire [11:0] _GEN_199 = {rd_index_reg, 5'h0}; // @[TxBufferFifo.scala 174:52]
  wire [13:0] _io_out_tdata_T = {{2'd0}, _GEN_199}; // @[TxBufferFifo.scala 174:52]
  wire [13:0] _GEN_200 = {{7'd0}, rd_pos_reg}; // @[TxBufferFifo.scala 174:34]
  wire [511:0] _io_out_tdata_T_5 = {data_buf_reg_rd_data_data[511:416],end_tcp_chksum[7:0],end_tcp_chksum[15:8],
    data_buf_reg_rd_data_data[399:208],end_ip_chksum[7:0],end_ip_chksum[15:8],data_buf_reg_rd_data_data[191:0]}; // @[Cat.scala 31:58]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_146 - 6'h1; // @[TxBufferFifo.scala 185:76]
  wire [13:0] _GEN_201 = reset ? 14'h0 : _GEN_126; // @[TxBufferFifo.scala 50:{29,29}]
  ReduceAddSync ip_chksum_cal ( // @[TxBufferFifo.scala 74:29]
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
  ReduceAddSync_1 tcp_pld_chksum_cal ( // @[TxBufferFifo.scala 82:34]
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
  ReduceAddSync_1 tcp_hdr_chksum_cal ( // @[TxBufferFifo.scala 89:34]
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
  assign data_buf_reg_rd_data_en = data_buf_reg_rd_data_en_pipe_0;
  assign data_buf_reg_rd_data_addr = data_buf_reg_rd_data_addr_pipe_0;
  assign data_buf_reg_rd_data_data = data_buf_reg[data_buf_reg_rd_data_addr]; // @[TxBufferFifo.scala 44:33]
  assign data_buf_reg_MPORT_data = in_tdata_reg;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_reset_counter ? 1'h0 : _GEN_119;
  assign io_in_tready = ~buf_full; // @[TxBufferFifo.scala 58:19]
  assign io_out_tdata = _GEN_200 == _io_out_tdata_T ? _io_out_tdata_T_5 : data_buf_reg_rd_data_data; // @[TxBufferFifo.scala 174:22]
  assign io_out_tvalid = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[TxBufferFifo.scala 154:{17,17}]
  assign io_out_tlast = io_out_tvalid & _GEN_146 == 6'h1; // @[TxBufferFifo.scala 155:34]
  assign io_h2c_pack_counter = pack_counter; // @[TxBufferFifo.scala 62:23]
  assign io_h2c_err_counter = err_counter; // @[TxBufferFifo.scala 63:22]
  assign ip_chksum_cal_clock = clock;
  assign ip_chksum_cal_io_in_vec_0 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_3}; // @[TxBufferFifo.scala 77:37]
  assign ip_chksum_cal_io_in_vec_1 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[TxBufferFifo.scala 77:37]
  assign ip_chksum_cal_io_in_vec_2 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_3}; // @[TxBufferFifo.scala 77:37]
  assign ip_chksum_cal_io_in_vec_3 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_3}; // @[TxBufferFifo.scala 77:37]
  assign ip_chksum_cal_io_in_vec_4 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_3}; // @[TxBufferFifo.scala 77:37]
  assign ip_chksum_cal_io_in_vec_5 = 32'h0; // @[TxBufferFifo.scala 76:44]
  assign ip_chksum_cal_io_in_vec_6 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[TxBufferFifo.scala 77:37]
  assign ip_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[TxBufferFifo.scala 77:37]
  assign ip_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[TxBufferFifo.scala 77:37]
  assign ip_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[TxBufferFifo.scala 77:37]
  assign tcp_pld_chksum_cal_clock = clock;
  assign tcp_pld_chksum_cal_io_in_vec_0 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_0_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_1 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_1_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_2 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_2_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_3 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_3_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_4 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_4_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_5 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_5_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_6 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_6_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_10 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_11 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_12 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_12_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_25 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_25_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_pld_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_3}; // @[TxBufferFifo.scala 84:37]
  assign tcp_hdr_chksum_cal_clock = clock;
  assign tcp_hdr_chksum_cal_io_in_vec_0 = 32'h0; // @[TxBufferFifo.scala 93:42]
  assign tcp_hdr_chksum_cal_io_in_vec_1 = 32'h0; // @[TxBufferFifo.scala 93:42]
  assign tcp_hdr_chksum_cal_io_in_vec_2 = 32'h0; // @[TxBufferFifo.scala 93:42]
  assign tcp_hdr_chksum_cal_io_in_vec_3 = 32'h0; // @[TxBufferFifo.scala 93:42]
  assign tcp_hdr_chksum_cal_io_in_vec_4 = 32'h0; // @[TxBufferFifo.scala 93:42]
  assign tcp_hdr_chksum_cal_io_in_vec_5 = 32'h0; // @[TxBufferFifo.scala 93:42]
  assign tcp_hdr_chksum_cal_io_in_vec_6 = 32'h0; // @[TxBufferFifo.scala 93:42]
  assign tcp_hdr_chksum_cal_io_in_vec_7 = 32'h0; // @[TxBufferFifo.scala 93:42]
  assign tcp_hdr_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_9 = 32'h0; // @[TxBufferFifo.scala 93:42]
  assign tcp_hdr_chksum_cal_io_in_vec_10 = 32'h0; // @[TxBufferFifo.scala 93:42]
  assign tcp_hdr_chksum_cal_io_in_vec_11 = {{24'd0}, _GEN_0[191:184]}; // @[TxBufferFifo.scala 92:53]
  assign tcp_hdr_chksum_cal_io_in_vec_12 = 32'h0; // @[TxBufferFifo.scala 93:42]
  assign tcp_hdr_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_25 = 32'h0; // @[TxBufferFifo.scala 93:42]
  assign tcp_hdr_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_3}; // @[TxBufferFifo.scala 91:67]
  assign tcp_hdr_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_3}; // @[TxBufferFifo.scala 91:67]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[TxBufferFifo.scala 44:33]
    end
    data_buf_reg_rd_data_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      data_buf_reg_rd_data_addr_pipe_0 <= _rd_data_T[5:0];
    end
    if (reset) begin // @[Reg.scala 28:20]
      in_tdata_reg <= 512'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_tdata_reg <= io_in_tdata; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      in_tlast_reg <= 1'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_tlast_reg <= io_in_tlast; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      in_tvalid_reg <= 1'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_tvalid_reg <= true_tvalid; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[TxBufferFifo.scala 47:29]
      info_buf_reg_0_used <= 1'h0; // @[TxBufferFifo.scala 47:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 177:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 181:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 182:34]
          info_buf_reg_0_used <= 1'h0; // @[TxBufferFifo.scala 182:34]
        end else begin
          info_buf_reg_0_used <= _GEN_135;
        end
      end else begin
        info_buf_reg_0_used <= _GEN_135;
      end
    end else begin
      info_buf_reg_0_used <= _GEN_135;
    end
    if (reset) begin // @[TxBufferFifo.scala 47:29]
      info_buf_reg_0_valid <= 1'h0; // @[TxBufferFifo.scala 47:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 177:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 181:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 182:34]
          info_buf_reg_0_valid <= 1'h0; // @[TxBufferFifo.scala 182:34]
        end else begin
          info_buf_reg_0_valid <= _GEN_133;
        end
      end else begin
        info_buf_reg_0_valid <= _GEN_133;
      end
    end else begin
      info_buf_reg_0_valid <= _GEN_133;
    end
    if (reset) begin // @[TxBufferFifo.scala 47:29]
      info_buf_reg_0_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 47:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 177:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 181:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 182:34]
          info_buf_reg_0_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 182:34]
        end else begin
          info_buf_reg_0_ip_chksum <= _GEN_131;
        end
      end else begin
        info_buf_reg_0_ip_chksum <= _GEN_131;
      end
    end else begin
      info_buf_reg_0_ip_chksum <= _GEN_131;
    end
    if (reset) begin // @[TxBufferFifo.scala 47:29]
      info_buf_reg_0_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 47:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 177:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 181:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 182:34]
          info_buf_reg_0_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 182:34]
        end else begin
          info_buf_reg_0_tcp_chksum <= _GEN_129;
        end
      end else begin
        info_buf_reg_0_tcp_chksum <= _GEN_129;
      end
    end else begin
      info_buf_reg_0_tcp_chksum <= _GEN_129;
    end
    if (reset) begin // @[TxBufferFifo.scala 47:29]
      info_buf_reg_0_burst <= 6'h0; // @[TxBufferFifo.scala 47:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 177:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 181:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 182:34]
          info_buf_reg_0_burst <= 6'h0; // @[TxBufferFifo.scala 182:34]
        end else begin
          info_buf_reg_0_burst <= _GEN_127;
        end
      end else if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 185:40]
        info_buf_reg_0_burst <= _info_buf_reg_burst_T_5; // @[TxBufferFifo.scala 185:40]
      end else begin
        info_buf_reg_0_burst <= _GEN_127;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_127;
    end
    if (reset) begin // @[TxBufferFifo.scala 47:29]
      info_buf_reg_1_used <= 1'h0; // @[TxBufferFifo.scala 47:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 177:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 181:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 182:34]
          info_buf_reg_1_used <= 1'h0; // @[TxBufferFifo.scala 182:34]
        end else begin
          info_buf_reg_1_used <= _GEN_136;
        end
      end else begin
        info_buf_reg_1_used <= _GEN_136;
      end
    end else begin
      info_buf_reg_1_used <= _GEN_136;
    end
    if (reset) begin // @[TxBufferFifo.scala 47:29]
      info_buf_reg_1_valid <= 1'h0; // @[TxBufferFifo.scala 47:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 177:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 181:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 182:34]
          info_buf_reg_1_valid <= 1'h0; // @[TxBufferFifo.scala 182:34]
        end else begin
          info_buf_reg_1_valid <= _GEN_134;
        end
      end else begin
        info_buf_reg_1_valid <= _GEN_134;
      end
    end else begin
      info_buf_reg_1_valid <= _GEN_134;
    end
    if (reset) begin // @[TxBufferFifo.scala 47:29]
      info_buf_reg_1_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 47:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 177:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 181:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 182:34]
          info_buf_reg_1_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 182:34]
        end else begin
          info_buf_reg_1_ip_chksum <= _GEN_132;
        end
      end else begin
        info_buf_reg_1_ip_chksum <= _GEN_132;
      end
    end else begin
      info_buf_reg_1_ip_chksum <= _GEN_132;
    end
    if (reset) begin // @[TxBufferFifo.scala 47:29]
      info_buf_reg_1_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 47:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 177:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 181:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 182:34]
          info_buf_reg_1_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 182:34]
        end else begin
          info_buf_reg_1_tcp_chksum <= _GEN_130;
        end
      end else begin
        info_buf_reg_1_tcp_chksum <= _GEN_130;
      end
    end else begin
      info_buf_reg_1_tcp_chksum <= _GEN_130;
    end
    if (reset) begin // @[TxBufferFifo.scala 47:29]
      info_buf_reg_1_burst <= 6'h0; // @[TxBufferFifo.scala 47:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 177:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 181:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 182:34]
          info_buf_reg_1_burst <= 6'h0; // @[TxBufferFifo.scala 182:34]
        end else begin
          info_buf_reg_1_burst <= _GEN_128;
        end
      end else if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 185:40]
        info_buf_reg_1_burst <= _info_buf_reg_burst_T_5; // @[TxBufferFifo.scala 185:40]
      end else begin
        info_buf_reg_1_burst <= _GEN_128;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_128;
    end
    if (reset) begin // @[TxBufferFifo.scala 48:29]
      wr_index_reg <= 7'h0; // @[TxBufferFifo.scala 48:29]
    end else if (!(io_reset_counter)) begin // @[TxBufferFifo.scala 98:26]
      if (in_shake_hand) begin // @[TxBufferFifo.scala 102:31]
        if (!(_GEN_5 == 6'h20)) begin // @[TxBufferFifo.scala 106:63]
          wr_index_reg <= _GEN_81;
        end
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 49:29]
      rd_index_reg <= 7'h0; // @[TxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 177:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 181:53]
        rd_index_reg <= _rd_pos_next_T_2; // @[TxBufferFifo.scala 183:20]
      end
    end
    wr_pos_reg <= _GEN_201[6:0]; // @[TxBufferFifo.scala 50:{29,29}]
    if (reset) begin // @[TxBufferFifo.scala 51:29]
      rd_pos_reg <= 7'h0; // @[TxBufferFifo.scala 51:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 158:33]
      rd_pos_reg <= rd_pos_next;
    end
    if (reset) begin // @[TxBufferFifo.scala 59:29]
      pack_counter <= 32'h0; // @[TxBufferFifo.scala 59:29]
    end else if (io_reset_counter) begin // @[TxBufferFifo.scala 98:26]
      pack_counter <= 32'h0; // @[TxBufferFifo.scala 99:18]
    end else if (in_shake_hand) begin // @[TxBufferFifo.scala 102:31]
      if (in_tlast_reg) begin // @[TxBufferFifo.scala 103:27]
        pack_counter <= _pack_counter_T_1; // @[TxBufferFifo.scala 104:22]
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 60:28]
      err_counter <= 32'h0; // @[TxBufferFifo.scala 60:28]
    end else if (io_reset_counter) begin // @[TxBufferFifo.scala 98:26]
      err_counter <= 32'h0; // @[TxBufferFifo.scala 100:17]
    end else if (in_shake_hand) begin // @[TxBufferFifo.scala 102:31]
      if (_GEN_5 == 6'h20) begin // @[TxBufferFifo.scala 106:63]
        err_counter <= _err_counter_T_1; // @[TxBufferFifo.scala 118:21]
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 67:30]
      is_overflowed <= 1'h0; // @[TxBufferFifo.scala 67:30]
    end else if (!(io_reset_counter)) begin // @[TxBufferFifo.scala 98:26]
      if (in_shake_hand) begin // @[TxBufferFifo.scala 102:31]
        if (_GEN_5 == 6'h20) begin // @[TxBufferFifo.scala 106:63]
          is_overflowed <= _GEN_6;
        end else begin
          is_overflowed <= _GEN_83;
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
  _RAND_3 = {16{`RANDOM}};
  in_tdata_reg = _RAND_3[511:0];
  _RAND_4 = {1{`RANDOM}};
  in_tlast_reg = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  in_tvalid_reg = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  info_buf_reg_0_used = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  info_buf_reg_0_valid = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  info_buf_reg_0_ip_chksum = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  info_buf_reg_0_tcp_chksum = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  info_buf_reg_0_burst = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  info_buf_reg_1_used = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  info_buf_reg_1_valid = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  info_buf_reg_1_ip_chksum = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  info_buf_reg_1_tcp_chksum = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  info_buf_reg_1_burst = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  wr_index_reg = _RAND_16[6:0];
  _RAND_17 = {1{`RANDOM}};
  rd_index_reg = _RAND_17[6:0];
  _RAND_18 = {1{`RANDOM}};
  wr_pos_reg = _RAND_18[6:0];
  _RAND_19 = {1{`RANDOM}};
  rd_pos_reg = _RAND_19[6:0];
  _RAND_20 = {1{`RANDOM}};
  pack_counter = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  err_counter = _RAND_21[31:0];
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
  wire  tx_buffer_fifo_clock; // @[TxHandler.scala 20:30]
  wire  tx_buffer_fifo_reset; // @[TxHandler.scala 20:30]
  wire [511:0] tx_buffer_fifo_io_in_tdata; // @[TxHandler.scala 20:30]
  wire  tx_buffer_fifo_io_in_tvalid; // @[TxHandler.scala 20:30]
  wire  tx_buffer_fifo_io_in_tready; // @[TxHandler.scala 20:30]
  wire  tx_buffer_fifo_io_in_tlast; // @[TxHandler.scala 20:30]
  wire  tx_buffer_fifo_io_in_tuser; // @[TxHandler.scala 20:30]
  wire [511:0] tx_buffer_fifo_io_out_tdata; // @[TxHandler.scala 20:30]
  wire  tx_buffer_fifo_io_out_tvalid; // @[TxHandler.scala 20:30]
  wire  tx_buffer_fifo_io_out_tready; // @[TxHandler.scala 20:30]
  wire  tx_buffer_fifo_io_out_tlast; // @[TxHandler.scala 20:30]
  wire  tx_buffer_fifo_io_reset_counter; // @[TxHandler.scala 20:30]
  wire [31:0] tx_buffer_fifo_io_h2c_pack_counter; // @[TxHandler.scala 20:30]
  wire [31:0] tx_buffer_fifo_io_h2c_err_counter; // @[TxHandler.scala 20:30]
  TxBufferFifo tx_buffer_fifo ( // @[TxHandler.scala 20:30]
    .clock(tx_buffer_fifo_clock),
    .reset(tx_buffer_fifo_reset),
    .io_in_tdata(tx_buffer_fifo_io_in_tdata),
    .io_in_tvalid(tx_buffer_fifo_io_in_tvalid),
    .io_in_tready(tx_buffer_fifo_io_in_tready),
    .io_in_tlast(tx_buffer_fifo_io_in_tlast),
    .io_in_tuser(tx_buffer_fifo_io_in_tuser),
    .io_out_tdata(tx_buffer_fifo_io_out_tdata),
    .io_out_tvalid(tx_buffer_fifo_io_out_tvalid),
    .io_out_tready(tx_buffer_fifo_io_out_tready),
    .io_out_tlast(tx_buffer_fifo_io_out_tlast),
    .io_reset_counter(tx_buffer_fifo_io_reset_counter),
    .io_h2c_pack_counter(tx_buffer_fifo_io_h2c_pack_counter),
    .io_h2c_err_counter(tx_buffer_fifo_io_h2c_err_counter)
  );
  assign io_QDMA_h2c_stub_out_tready = tx_buffer_fifo_io_in_tready; // @[TxHandler.scala 22:24]
  assign io_CMAC_in_tdata = tx_buffer_fifo_io_out_tdata; // @[TxHandler.scala 23:24]
  assign io_CMAC_in_tvalid = tx_buffer_fifo_io_out_tvalid; // @[TxHandler.scala 23:24]
  assign io_CMAC_in_tlast = tx_buffer_fifo_io_out_tlast; // @[TxHandler.scala 23:24]
  assign io_h2c_pack_counter = tx_buffer_fifo_io_h2c_pack_counter; // @[TxHandler.scala 25:35]
  assign io_h2c_err_counter = tx_buffer_fifo_io_h2c_err_counter; // @[TxHandler.scala 26:35]
  assign tx_buffer_fifo_clock = clock;
  assign tx_buffer_fifo_reset = reset;
  assign tx_buffer_fifo_io_in_tdata = io_QDMA_h2c_stub_out_tdata; // @[TxHandler.scala 22:24]
  assign tx_buffer_fifo_io_in_tvalid = io_QDMA_h2c_stub_out_tvalid; // @[TxHandler.scala 22:24]
  assign tx_buffer_fifo_io_in_tlast = io_QDMA_h2c_stub_out_tlast; // @[TxHandler.scala 22:24]
  assign tx_buffer_fifo_io_in_tuser = io_QDMA_h2c_stub_out_tuser; // @[TxHandler.scala 22:24]
  assign tx_buffer_fifo_io_out_tready = io_CMAC_in_tready; // @[TxHandler.scala 23:24]
  assign tx_buffer_fifo_io_reset_counter = io_reset_counter; // @[TxHandler.scala 24:35]
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
  reg [7:0] cal_reg_0; // @[Misc.scala 32:20]
  reg [7:0] cal_reg_1; // @[Misc.scala 32:20]
  reg [7:0] cal_reg_2; // @[Misc.scala 32:20]
  reg [7:0] cal_reg_3; // @[Misc.scala 32:20]
  reg [7:0] cal_reg_4; // @[Misc.scala 32:20]
  reg [7:0] cal_reg_5; // @[Misc.scala 32:20]
  reg [7:0] cal_reg_6; // @[Misc.scala 32:20]
  reg [7:0] cal_reg_7; // @[Misc.scala 32:20]
  wire [7:0] _cal_reg_0_T_1 = io_in_vec_0 + io_in_vec_1; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_0_T_3 = io_in_vec_2 + io_in_vec_3; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_0_T_5 = io_in_vec_4 + io_in_vec_5; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_0_T_7 = io_in_vec_6 + io_in_vec_7; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_0_T_9 = _cal_reg_0_T_1 + _cal_reg_0_T_3; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_0_T_11 = _cal_reg_0_T_5 + _cal_reg_0_T_7; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_1_T_1 = io_in_vec_8 + io_in_vec_9; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_1_T_3 = io_in_vec_10 + io_in_vec_11; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_1_T_5 = io_in_vec_12 + io_in_vec_13; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_1_T_7 = io_in_vec_14 + io_in_vec_15; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_1_T_9 = _cal_reg_1_T_1 + _cal_reg_1_T_3; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_1_T_11 = _cal_reg_1_T_5 + _cal_reg_1_T_7; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_2_T_1 = io_in_vec_16 + io_in_vec_17; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_2_T_3 = io_in_vec_18 + io_in_vec_19; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_2_T_5 = io_in_vec_20 + io_in_vec_21; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_2_T_7 = io_in_vec_22 + io_in_vec_23; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_2_T_9 = _cal_reg_2_T_1 + _cal_reg_2_T_3; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_2_T_11 = _cal_reg_2_T_5 + _cal_reg_2_T_7; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_3_T_1 = io_in_vec_24 + io_in_vec_25; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_3_T_3 = io_in_vec_26 + io_in_vec_27; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_3_T_5 = io_in_vec_28 + io_in_vec_29; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_3_T_7 = io_in_vec_30 + io_in_vec_31; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_3_T_9 = _cal_reg_3_T_1 + _cal_reg_3_T_3; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_3_T_11 = _cal_reg_3_T_5 + _cal_reg_3_T_7; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_4_T_1 = io_in_vec_32 + io_in_vec_33; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_4_T_3 = io_in_vec_34 + io_in_vec_35; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_4_T_5 = io_in_vec_36 + io_in_vec_37; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_4_T_7 = io_in_vec_38 + io_in_vec_39; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_4_T_9 = _cal_reg_4_T_1 + _cal_reg_4_T_3; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_4_T_11 = _cal_reg_4_T_5 + _cal_reg_4_T_7; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_5_T_1 = io_in_vec_40 + io_in_vec_41; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_5_T_3 = io_in_vec_42 + io_in_vec_43; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_5_T_5 = io_in_vec_44 + io_in_vec_45; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_5_T_7 = io_in_vec_46 + io_in_vec_47; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_5_T_9 = _cal_reg_5_T_1 + _cal_reg_5_T_3; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_5_T_11 = _cal_reg_5_T_5 + _cal_reg_5_T_7; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_6_T_1 = io_in_vec_48 + io_in_vec_49; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_6_T_3 = io_in_vec_50 + io_in_vec_51; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_6_T_5 = io_in_vec_52 + io_in_vec_53; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_6_T_7 = io_in_vec_54 + io_in_vec_55; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_6_T_9 = _cal_reg_6_T_1 + _cal_reg_6_T_3; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_6_T_11 = _cal_reg_6_T_5 + _cal_reg_6_T_7; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_7_T_1 = io_in_vec_56 + io_in_vec_57; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_7_T_3 = io_in_vec_58 + io_in_vec_59; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_7_T_5 = io_in_vec_60 + io_in_vec_61; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_7_T_7 = io_in_vec_62 + io_in_vec_63; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_7_T_9 = _cal_reg_7_T_1 + _cal_reg_7_T_3; // @[Misc.scala 44:44]
  wire [7:0] _cal_reg_7_T_11 = _cal_reg_7_T_5 + _cal_reg_7_T_7; // @[Misc.scala 44:44]
  wire [7:0] _io_out_sum_T_1 = cal_reg_0 + cal_reg_1; // @[Misc.scala 47:37]
  wire [7:0] _io_out_sum_T_3 = cal_reg_2 + cal_reg_3; // @[Misc.scala 47:37]
  wire [7:0] _io_out_sum_T_5 = cal_reg_4 + cal_reg_5; // @[Misc.scala 47:37]
  wire [7:0] _io_out_sum_T_7 = cal_reg_6 + cal_reg_7; // @[Misc.scala 47:37]
  wire [7:0] _io_out_sum_T_9 = _io_out_sum_T_1 + _io_out_sum_T_3; // @[Misc.scala 47:37]
  wire [7:0] _io_out_sum_T_11 = _io_out_sum_T_5 + _io_out_sum_T_7; // @[Misc.scala 47:37]
  assign io_out_sum = _io_out_sum_T_9 + _io_out_sum_T_11; // @[Misc.scala 47:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_9 + _cal_reg_0_T_11; // @[Misc.scala 44:44]
    cal_reg_1 <= _cal_reg_1_T_9 + _cal_reg_1_T_11; // @[Misc.scala 44:44]
    cal_reg_2 <= _cal_reg_2_T_9 + _cal_reg_2_T_11; // @[Misc.scala 44:44]
    cal_reg_3 <= _cal_reg_3_T_9 + _cal_reg_3_T_11; // @[Misc.scala 44:44]
    cal_reg_4 <= _cal_reg_4_T_9 + _cal_reg_4_T_11; // @[Misc.scala 44:44]
    cal_reg_5 <= _cal_reg_5_T_9 + _cal_reg_5_T_11; // @[Misc.scala 44:44]
    cal_reg_6 <= _cal_reg_6_T_9 + _cal_reg_6_T_11; // @[Misc.scala 44:44]
    cal_reg_7 <= _cal_reg_7_T_9 + _cal_reg_7_T_11; // @[Misc.scala 44:44]
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
module RxBufferFifo(
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
  reg [511:0] _RAND_3;
  reg [63:0] _RAND_4;
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
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  reg [511:0] data_buf_reg [0:63]; // @[RxBufferFifo.scala 46:33]
  wire  data_buf_reg_io_out_tdata_MPORT_en; // @[RxBufferFifo.scala 46:33]
  wire [5:0] data_buf_reg_io_out_tdata_MPORT_addr; // @[RxBufferFifo.scala 46:33]
  wire [511:0] data_buf_reg_io_out_tdata_MPORT_data; // @[RxBufferFifo.scala 46:33]
  wire [511:0] data_buf_reg_MPORT_data; // @[RxBufferFifo.scala 46:33]
  wire [5:0] data_buf_reg_MPORT_addr; // @[RxBufferFifo.scala 46:33]
  wire  data_buf_reg_MPORT_mask; // @[RxBufferFifo.scala 46:33]
  wire  data_buf_reg_MPORT_en; // @[RxBufferFifo.scala 46:33]
  reg  data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  reg [5:0] data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  wire  burst_size_cal_clock; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_0; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_1; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_2; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_3; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_4; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_5; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_6; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_7; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_8; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_9; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_10; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_11; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_12; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_13; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_14; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_15; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_16; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_17; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_18; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_19; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_20; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_21; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_22; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_23; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_24; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_25; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_26; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_27; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_28; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_29; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_30; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_31; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_32; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_33; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_34; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_35; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_36; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_37; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_38; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_39; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_40; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_41; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_42; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_43; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_44; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_45; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_46; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_47; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_48; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_49; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_50; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_51; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_52; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_53; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_54; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_55; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_56; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_57; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_58; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_59; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_60; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_61; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_62; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_in_vec_63; // @[RxBufferFifo.scala 57:30]
  wire [7:0] burst_size_cal_io_out_sum; // @[RxBufferFifo.scala 57:30]
  wire  ip_chksum_cal_clock; // @[RxBufferFifo.scala 81:29]
  wire [31:0] ip_chksum_cal_io_in_vec_0; // @[RxBufferFifo.scala 81:29]
  wire [31:0] ip_chksum_cal_io_in_vec_1; // @[RxBufferFifo.scala 81:29]
  wire [31:0] ip_chksum_cal_io_in_vec_2; // @[RxBufferFifo.scala 81:29]
  wire [31:0] ip_chksum_cal_io_in_vec_3; // @[RxBufferFifo.scala 81:29]
  wire [31:0] ip_chksum_cal_io_in_vec_4; // @[RxBufferFifo.scala 81:29]
  wire [31:0] ip_chksum_cal_io_in_vec_5; // @[RxBufferFifo.scala 81:29]
  wire [31:0] ip_chksum_cal_io_in_vec_6; // @[RxBufferFifo.scala 81:29]
  wire [31:0] ip_chksum_cal_io_in_vec_7; // @[RxBufferFifo.scala 81:29]
  wire [31:0] ip_chksum_cal_io_in_vec_8; // @[RxBufferFifo.scala 81:29]
  wire [31:0] ip_chksum_cal_io_in_vec_9; // @[RxBufferFifo.scala 81:29]
  wire [31:0] ip_chksum_cal_io_out_sum; // @[RxBufferFifo.scala 81:29]
  wire  tcp_pld_chksum_cal_clock; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_0; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_1; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_2; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_3; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_4; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_5; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_6; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_7; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_8; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_9; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_10; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_11; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_12; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_13; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_14; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_15; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_16; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_17; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_18; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_19; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_20; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_21; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_22; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_23; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_24; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_25; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_26; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_27; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_28; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_29; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_30; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_31; // @[RxBufferFifo.scala 88:34]
  wire [31:0] tcp_pld_chksum_cal_io_out_sum; // @[RxBufferFifo.scala 88:34]
  wire  tcp_hdr_chksum_cal_clock; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_0; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_1; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_2; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_3; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_4; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_5; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_6; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_7; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_8; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_9; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_10; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_11; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_12; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_13; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_14; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_15; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_16; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_17; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_18; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_19; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_20; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_21; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_22; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_23; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_24; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_25; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_26; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_27; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_28; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_29; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_30; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_31; // @[RxBufferFifo.scala 95:34]
  wire [31:0] tcp_hdr_chksum_cal_io_out_sum; // @[RxBufferFifo.scala 95:34]
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[RxBufferFifo.scala 36:36]
  reg [511:0] in_tdata_reg; // @[Reg.scala 28:20]
  wire [511:0] _GEN_0 = in_shake_hand ? io_in_tdata : in_tdata_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg [63:0] in_tkeep_reg; // @[Reg.scala 28:20]
  wire [63:0] _GEN_1 = in_shake_hand ? io_in_tkeep : in_tkeep_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_tuser_reg; // @[Reg.scala 28:20]
  reg  in_tlast_reg; // @[Reg.scala 28:20]
  reg  in_tvalid_reg; // @[Reg.scala 28:20]
  reg  info_buf_reg_0_used; // @[RxBufferFifo.scala 49:29]
  reg  info_buf_reg_0_valid; // @[RxBufferFifo.scala 49:29]
  reg [15:0] info_buf_reg_0_len; // @[RxBufferFifo.scala 49:29]
  reg [31:0] info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 49:29]
  reg [31:0] info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 49:29]
  reg [5:0] info_buf_reg_0_burst; // @[RxBufferFifo.scala 49:29]
  reg  info_buf_reg_1_used; // @[RxBufferFifo.scala 49:29]
  reg  info_buf_reg_1_valid; // @[RxBufferFifo.scala 49:29]
  reg [15:0] info_buf_reg_1_len; // @[RxBufferFifo.scala 49:29]
  reg [31:0] info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 49:29]
  reg [31:0] info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 49:29]
  reg [5:0] info_buf_reg_1_burst; // @[RxBufferFifo.scala 49:29]
  reg [6:0] wr_index_reg; // @[RxBufferFifo.scala 50:29]
  reg [6:0] rd_index_reg; // @[RxBufferFifo.scala 51:29]
  reg [6:0] wr_pos_reg; // @[RxBufferFifo.scala 52:29]
  reg [6:0] rd_pos_reg; // @[RxBufferFifo.scala 53:29]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[RxBufferFifo.scala 63:40]
  reg [31:0] pack_counter; // @[RxBufferFifo.scala 66:29]
  reg [31:0] err_counter; // @[RxBufferFifo.scala 67:28]
  reg [31:0] wrong_chksum_counter; // @[RxBufferFifo.scala 68:37]
  reg  is_overflowed; // @[RxBufferFifo.scala 73:30]
  wire [15:0] _ip_chksum_cal_io_in_vec_0_T_3 = {_GEN_0[119:112],_GEN_0[127:120]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_1_T_3 = {_GEN_0[135:128],_GEN_0[143:136]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_2_T_3 = {_GEN_0[151:144],_GEN_0[159:152]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_3_T_3 = {_GEN_0[167:160],_GEN_0[175:168]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_4_T_3 = {_GEN_0[183:176],_GEN_0[191:184]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_5_T_3 = {_GEN_0[199:192],_GEN_0[207:200]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_6_T_3 = {_GEN_0[215:208],_GEN_0[223:216]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_7_T_3 = {_GEN_0[231:224],_GEN_0[239:232]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_8_T_3 = {_GEN_0[247:240],_GEN_0[255:248]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_9_T_3 = {_GEN_0[263:256],_GEN_0[271:264]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_0_T_3 = {_GEN_0[7:0],_GEN_0[15:8]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_1_T_3 = {_GEN_0[23:16],_GEN_0[31:24]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_2_T_3 = {_GEN_0[39:32],_GEN_0[47:40]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_3_T_3 = {_GEN_0[55:48],_GEN_0[63:56]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_4_T_3 = {_GEN_0[71:64],_GEN_0[79:72]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_5_T_3 = {_GEN_0[87:80],_GEN_0[95:88]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_6_T_3 = {_GEN_0[103:96],_GEN_0[111:104]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_17_T_3 = {_GEN_0[279:272],_GEN_0[287:280]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_18_T_3 = {_GEN_0[295:288],_GEN_0[303:296]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_19_T_3 = {_GEN_0[311:304],_GEN_0[319:312]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_20_T_3 = {_GEN_0[327:320],_GEN_0[335:328]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_21_T_3 = {_GEN_0[343:336],_GEN_0[351:344]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_22_T_3 = {_GEN_0[359:352],_GEN_0[367:360]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_23_T_3 = {_GEN_0[375:368],_GEN_0[383:376]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_24_T_3 = {_GEN_0[391:384],_GEN_0[399:392]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_25_T_3 = {_GEN_0[407:400],_GEN_0[415:408]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_26_T_3 = {_GEN_0[423:416],_GEN_0[431:424]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_27_T_3 = {_GEN_0[439:432],_GEN_0[447:440]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_28_T_3 = {_GEN_0[455:448],_GEN_0[463:456]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_29_T_3 = {_GEN_0[471:464],_GEN_0[479:472]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_30_T_3 = {_GEN_0[487:480],_GEN_0[495:488]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_31_T_3 = {_GEN_0[503:496],_GEN_0[511:504]}; // @[Cat.scala 31:58]
  wire [31:0] tcp_hdr_chksum_result = tcp_hdr_chksum_cal_io_out_sum - 32'h14; // @[RxBufferFifo.scala 101:61]
  wire [31:0] _pack_counter_T_1 = pack_counter + 32'h1; // @[RxBufferFifo.scala 110:36]
  wire [5:0] _GEN_7 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[RxBufferFifo.scala 112:{44,44}]
  wire [11:0] _GEN_256 = {wr_index_reg, 5'h0}; // @[RxBufferFifo.scala 121:38]
  wire [13:0] _wr_pos_reg_T = {{2'd0}, _GEN_256}; // @[RxBufferFifo.scala 121:38]
  wire  _GEN_8 = ~in_tlast_reg | is_overflowed; // @[RxBufferFifo.scala 114:28 115:23 73:30]
  wire [13:0] _GEN_9 = ~in_tlast_reg ? {{7'd0}, wr_pos_reg} : _wr_pos_reg_T; // @[RxBufferFifo.scala 114:28 121:22 52:29]
  wire [31:0] _err_counter_T_1 = err_counter + 32'h1; // @[RxBufferFifo.scala 124:34]
  wire [5:0] _GEN_10 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 125:{34,34} 49:29]
  wire [5:0] _GEN_11 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 125:{34,34} 49:29]
  wire [31:0] _GEN_12 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 125:{34,34} 49:29]
  wire [31:0] _GEN_13 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 125:{34,34} 49:29]
  wire [31:0] _GEN_14 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 125:{34,34} 49:29]
  wire [31:0] _GEN_15 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 125:{34,34} 49:29]
  wire [15:0] _GEN_16 = ~wr_index_reg[0] ? 16'h0 : info_buf_reg_0_len; // @[RxBufferFifo.scala 125:{34,34} 49:29]
  wire [15:0] _GEN_17 = wr_index_reg[0] ? 16'h0 : info_buf_reg_1_len; // @[RxBufferFifo.scala 125:{34,34} 49:29]
  wire  _GEN_18 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 125:{34,34} 49:29]
  wire  _GEN_19 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 125:{34,34} 49:29]
  wire  _GEN_20 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_used; // @[RxBufferFifo.scala 125:{34,34} 49:29]
  wire  _GEN_21 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_used; // @[RxBufferFifo.scala 125:{34,34} 49:29]
  wire  _T_6 = ~is_overflowed; // @[RxBufferFifo.scala 133:13]
  wire  _GEN_35 = wr_index_reg[0] ? info_buf_reg_1_used : info_buf_reg_0_used; // @[RxBufferFifo.scala 135:{15,15}]
  wire  _GEN_258 = ~wr_index_reg[0]; // @[RxBufferFifo.scala 136:{43,43} 49:29]
  wire  _GEN_36 = ~wr_index_reg[0] | info_buf_reg_0_used; // @[RxBufferFifo.scala 136:{43,43} 49:29]
  wire  _GEN_37 = wr_index_reg[0] | info_buf_reg_1_used; // @[RxBufferFifo.scala 136:{43,43} 49:29]
  wire [31:0] _info_buf_reg_T_10_ip_chksum = ip_chksum_cal_io_out_sum; // @[RxBufferFifo.scala 137:{48,48}]
  wire [31:0] _GEN_38 = ~wr_index_reg[0] ? _info_buf_reg_T_10_ip_chksum : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 137:{48,48} 49:29]
  wire [31:0] _GEN_39 = wr_index_reg[0] ? _info_buf_reg_T_10_ip_chksum : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 137:{48,48} 49:29]
  wire [31:0] _GEN_40 = ~wr_index_reg[0] ? tcp_hdr_chksum_result : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 138:{49,49} 49:29]
  wire [31:0] _GEN_41 = wr_index_reg[0] ? tcp_hdr_chksum_result : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 138:{49,49} 49:29]
  wire [31:0] _GEN_43 = wr_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 140:{90,90}]
  wire [31:0] _info_buf_reg_tcp_chksum_T_2 = _GEN_43 + tcp_pld_chksum_cal_io_out_sum; // @[RxBufferFifo.scala 140:90]
  wire [31:0] _GEN_44 = ~wr_index_reg[0] ? _info_buf_reg_tcp_chksum_T_2 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 140:{49,49} 49:29]
  wire [31:0] _GEN_45 = wr_index_reg[0] ? _info_buf_reg_tcp_chksum_T_2 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 140:{49,49} 49:29]
  wire  _GEN_46 = ~_GEN_35 ? _GEN_36 : info_buf_reg_0_used; // @[RxBufferFifo.scala 135:49 49:29]
  wire  _GEN_47 = ~_GEN_35 ? _GEN_37 : info_buf_reg_1_used; // @[RxBufferFifo.scala 135:49 49:29]
  wire [31:0] _GEN_48 = ~_GEN_35 ? _GEN_38 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 135:49 49:29]
  wire [31:0] _GEN_49 = ~_GEN_35 ? _GEN_39 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 135:49 49:29]
  wire [31:0] _GEN_50 = ~_GEN_35 ? _GEN_40 : _GEN_44; // @[RxBufferFifo.scala 135:49]
  wire [31:0] _GEN_51 = ~_GEN_35 ? _GEN_41 : _GEN_45; // @[RxBufferFifo.scala 135:49]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_7 + 6'h1; // @[RxBufferFifo.scala 144:78]
  wire [5:0] _GEN_54 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 144:{42,42} 49:29]
  wire [5:0] _GEN_55 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 144:{42,42} 49:29]
  wire [15:0] _GEN_57 = wr_index_reg[0] ? info_buf_reg_1_len : info_buf_reg_0_len; // @[RxBufferFifo.scala 145:{74,74}]
  wire [15:0] _GEN_259 = {{8'd0}, burst_size_cal_io_out_sum}; // @[RxBufferFifo.scala 145:74]
  wire [15:0] _info_buf_reg_len_T_2 = _GEN_57 + _GEN_259; // @[RxBufferFifo.scala 145:74]
  wire [15:0] _GEN_58 = ~wr_index_reg[0] ? _info_buf_reg_len_T_2 : info_buf_reg_0_len; // @[RxBufferFifo.scala 145:{40,40} 49:29]
  wire [15:0] _GEN_59 = wr_index_reg[0] ? _info_buf_reg_len_T_2 : info_buf_reg_1_len; // @[RxBufferFifo.scala 145:{40,40} 49:29]
  wire  _GEN_60 = _GEN_258 | info_buf_reg_0_valid; // @[RxBufferFifo.scala 147:{44,44} 49:29]
  wire  _GEN_61 = wr_index_reg[0] | info_buf_reg_1_valid; // @[RxBufferFifo.scala 147:{44,44} 49:29]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[RxBufferFifo.scala 31:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[RxBufferFifo.scala 31:19]
  wire [11:0] _GEN_261 = {_wr_index_reg_T_2, 5'h0}; // @[RxBufferFifo.scala 149:49]
  wire [13:0] _wr_pos_reg_T_5 = {{2'd0}, _GEN_261}; // @[RxBufferFifo.scala 149:49]
  wire [6:0] _wr_pos_reg_T_7 = wr_pos_reg + 7'h1; // @[RxBufferFifo.scala 151:36]
  wire  _GEN_62 = in_tlast_reg ? _GEN_60 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 146:29 49:29]
  wire  _GEN_63 = in_tlast_reg ? _GEN_61 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 146:29 49:29]
  wire [6:0] _GEN_64 = in_tlast_reg ? _wr_index_reg_T_2 : wr_index_reg; // @[RxBufferFifo.scala 146:29 148:24 50:29]
  wire [13:0] _GEN_65 = in_tlast_reg ? _wr_pos_reg_T_5 : {{7'd0}, _wr_pos_reg_T_7}; // @[RxBufferFifo.scala 146:29 149:22 151:22]
  wire  _GEN_66 = in_tlast_reg ? 1'h0 : is_overflowed; // @[RxBufferFifo.scala 153:33 155:25 73:30]
  wire [13:0] _GEN_67 = in_tlast_reg ? _wr_pos_reg_T : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 153:33 156:22 52:29]
  wire  _GEN_68 = ~is_overflowed ? _GEN_46 : info_buf_reg_0_used; // @[RxBufferFifo.scala 133:28 49:29]
  wire  _GEN_69 = ~is_overflowed ? _GEN_47 : info_buf_reg_1_used; // @[RxBufferFifo.scala 133:28 49:29]
  wire [31:0] _GEN_70 = ~is_overflowed ? _GEN_48 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 133:28 49:29]
  wire [31:0] _GEN_71 = ~is_overflowed ? _GEN_49 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 133:28 49:29]
  wire [31:0] _GEN_72 = ~is_overflowed ? _GEN_50 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 133:28 49:29]
  wire [31:0] _GEN_73 = ~is_overflowed ? _GEN_51 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 133:28 49:29]
  wire [5:0] _GEN_79 = ~is_overflowed ? _GEN_54 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 133:28 49:29]
  wire [5:0] _GEN_80 = ~is_overflowed ? _GEN_55 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 133:28 49:29]
  wire [15:0] _GEN_81 = ~is_overflowed ? _GEN_58 : info_buf_reg_0_len; // @[RxBufferFifo.scala 133:28 49:29]
  wire [15:0] _GEN_82 = ~is_overflowed ? _GEN_59 : info_buf_reg_1_len; // @[RxBufferFifo.scala 133:28 49:29]
  wire  _GEN_83 = ~is_overflowed ? _GEN_62 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 133:28 49:29]
  wire  _GEN_84 = ~is_overflowed ? _GEN_63 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 133:28 49:29]
  wire [6:0] _GEN_85 = ~is_overflowed ? _GEN_64 : wr_index_reg; // @[RxBufferFifo.scala 133:28 50:29]
  wire [13:0] _GEN_86 = ~is_overflowed ? _GEN_65 : _GEN_67; // @[RxBufferFifo.scala 133:28]
  wire  _GEN_87 = ~is_overflowed ? is_overflowed : _GEN_66; // @[RxBufferFifo.scala 133:28 73:30]
  wire  _GEN_88 = in_tvalid_reg ? _GEN_68 : info_buf_reg_0_used; // @[RxBufferFifo.scala 131:30 49:29]
  wire  _GEN_89 = in_tvalid_reg ? _GEN_69 : info_buf_reg_1_used; // @[RxBufferFifo.scala 131:30 49:29]
  wire [31:0] _GEN_90 = in_tvalid_reg ? _GEN_70 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 131:30 49:29]
  wire [31:0] _GEN_91 = in_tvalid_reg ? _GEN_71 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 131:30 49:29]
  wire [31:0] _GEN_92 = in_tvalid_reg ? _GEN_72 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 131:30 49:29]
  wire [31:0] _GEN_93 = in_tvalid_reg ? _GEN_73 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 131:30 49:29]
  wire  _GEN_96 = in_tvalid_reg & _T_6; // @[RxBufferFifo.scala 131:30 46:33]
  wire [5:0] _GEN_99 = in_tvalid_reg ? _GEN_79 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 131:30 49:29]
  wire [5:0] _GEN_100 = in_tvalid_reg ? _GEN_80 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 131:30 49:29]
  wire [15:0] _GEN_101 = in_tvalid_reg ? _GEN_81 : info_buf_reg_0_len; // @[RxBufferFifo.scala 131:30 49:29]
  wire [15:0] _GEN_102 = in_tvalid_reg ? _GEN_82 : info_buf_reg_1_len; // @[RxBufferFifo.scala 131:30 49:29]
  wire  _GEN_103 = in_tvalid_reg ? _GEN_83 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 131:30 49:29]
  wire  _GEN_104 = in_tvalid_reg ? _GEN_84 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 131:30 49:29]
  wire [6:0] _GEN_105 = in_tvalid_reg ? _GEN_85 : wr_index_reg; // @[RxBufferFifo.scala 131:30 50:29]
  wire [13:0] _GEN_106 = in_tvalid_reg ? _GEN_86 : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 131:30 52:29]
  wire  _GEN_107 = in_tvalid_reg ? _GEN_87 : is_overflowed; // @[RxBufferFifo.scala 131:30 73:30]
  wire [31:0] _GEN_108 = in_tlast_reg & in_tuser_reg ? _err_counter_T_1 : err_counter; // @[RxBufferFifo.scala 127:47 128:19 67:28]
  wire [13:0] _GEN_109 = in_tlast_reg & in_tuser_reg ? _wr_pos_reg_T : _GEN_106; // @[RxBufferFifo.scala 127:47 129:18]
  wire [5:0] _GEN_110 = in_tlast_reg & in_tuser_reg ? _GEN_10 : _GEN_99; // @[RxBufferFifo.scala 127:47]
  wire [5:0] _GEN_111 = in_tlast_reg & in_tuser_reg ? _GEN_11 : _GEN_100; // @[RxBufferFifo.scala 127:47]
  wire [31:0] _GEN_112 = in_tlast_reg & in_tuser_reg ? _GEN_12 : _GEN_92; // @[RxBufferFifo.scala 127:47]
  wire [31:0] _GEN_113 = in_tlast_reg & in_tuser_reg ? _GEN_13 : _GEN_93; // @[RxBufferFifo.scala 127:47]
  wire [31:0] _GEN_114 = in_tlast_reg & in_tuser_reg ? _GEN_14 : _GEN_90; // @[RxBufferFifo.scala 127:47]
  wire [31:0] _GEN_115 = in_tlast_reg & in_tuser_reg ? _GEN_15 : _GEN_91; // @[RxBufferFifo.scala 127:47]
  wire [15:0] _GEN_116 = in_tlast_reg & in_tuser_reg ? _GEN_16 : _GEN_101; // @[RxBufferFifo.scala 127:47]
  wire [15:0] _GEN_117 = in_tlast_reg & in_tuser_reg ? _GEN_17 : _GEN_102; // @[RxBufferFifo.scala 127:47]
  wire  _GEN_118 = in_tlast_reg & in_tuser_reg ? _GEN_18 : _GEN_103; // @[RxBufferFifo.scala 127:47]
  wire  _GEN_119 = in_tlast_reg & in_tuser_reg ? _GEN_19 : _GEN_104; // @[RxBufferFifo.scala 127:47]
  wire  _GEN_120 = in_tlast_reg & in_tuser_reg ? _GEN_20 : _GEN_88; // @[RxBufferFifo.scala 127:47]
  wire  _GEN_121 = in_tlast_reg & in_tuser_reg ? _GEN_21 : _GEN_89; // @[RxBufferFifo.scala 127:47]
  wire  _GEN_124 = in_tlast_reg & in_tuser_reg ? 1'h0 : _GEN_96; // @[RxBufferFifo.scala 127:47 46:33]
  wire [6:0] _GEN_127 = in_tlast_reg & in_tuser_reg ? wr_index_reg : _GEN_105; // @[RxBufferFifo.scala 127:47 50:29]
  wire  _GEN_128 = in_tlast_reg & in_tuser_reg ? is_overflowed : _GEN_107; // @[RxBufferFifo.scala 127:47 73:30]
  wire [13:0] _GEN_130 = _GEN_7 == 6'h20 ? _GEN_9 : _GEN_109; // @[RxBufferFifo.scala 112:61]
  wire [5:0] _GEN_132 = _GEN_7 == 6'h20 ? _GEN_10 : _GEN_110; // @[RxBufferFifo.scala 112:61]
  wire [5:0] _GEN_133 = _GEN_7 == 6'h20 ? _GEN_11 : _GEN_111; // @[RxBufferFifo.scala 112:61]
  wire [31:0] _GEN_134 = _GEN_7 == 6'h20 ? _GEN_12 : _GEN_112; // @[RxBufferFifo.scala 112:61]
  wire [31:0] _GEN_135 = _GEN_7 == 6'h20 ? _GEN_13 : _GEN_113; // @[RxBufferFifo.scala 112:61]
  wire [31:0] _GEN_136 = _GEN_7 == 6'h20 ? _GEN_14 : _GEN_114; // @[RxBufferFifo.scala 112:61]
  wire [31:0] _GEN_137 = _GEN_7 == 6'h20 ? _GEN_15 : _GEN_115; // @[RxBufferFifo.scala 112:61]
  wire [15:0] _GEN_138 = _GEN_7 == 6'h20 ? _GEN_16 : _GEN_116; // @[RxBufferFifo.scala 112:61]
  wire [15:0] _GEN_139 = _GEN_7 == 6'h20 ? _GEN_17 : _GEN_117; // @[RxBufferFifo.scala 112:61]
  wire  _GEN_140 = _GEN_7 == 6'h20 ? _GEN_18 : _GEN_118; // @[RxBufferFifo.scala 112:61]
  wire  _GEN_141 = _GEN_7 == 6'h20 ? _GEN_19 : _GEN_119; // @[RxBufferFifo.scala 112:61]
  wire  _GEN_142 = _GEN_7 == 6'h20 ? _GEN_20 : _GEN_120; // @[RxBufferFifo.scala 112:61]
  wire  _GEN_143 = _GEN_7 == 6'h20 ? _GEN_21 : _GEN_121; // @[RxBufferFifo.scala 112:61]
  wire  _GEN_146 = _GEN_7 == 6'h20 ? 1'h0 : _GEN_124; // @[RxBufferFifo.scala 112:61 46:33]
  wire [13:0] _GEN_152 = in_shake_hand ? _GEN_130 : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 108:29 52:29]
  wire [5:0] _GEN_154 = in_shake_hand ? _GEN_132 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 108:29 49:29]
  wire [5:0] _GEN_155 = in_shake_hand ? _GEN_133 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 108:29 49:29]
  wire [31:0] _GEN_156 = in_shake_hand ? _GEN_134 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 108:29 49:29]
  wire [31:0] _GEN_157 = in_shake_hand ? _GEN_135 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 108:29 49:29]
  wire [31:0] _GEN_158 = in_shake_hand ? _GEN_136 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 108:29 49:29]
  wire [31:0] _GEN_159 = in_shake_hand ? _GEN_137 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 108:29 49:29]
  wire [15:0] _GEN_160 = in_shake_hand ? _GEN_138 : info_buf_reg_0_len; // @[RxBufferFifo.scala 108:29 49:29]
  wire [15:0] _GEN_161 = in_shake_hand ? _GEN_139 : info_buf_reg_1_len; // @[RxBufferFifo.scala 108:29 49:29]
  wire  _GEN_162 = in_shake_hand ? _GEN_140 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 108:29 49:29]
  wire  _GEN_163 = in_shake_hand ? _GEN_141 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 108:29 49:29]
  wire  _GEN_164 = in_shake_hand ? _GEN_142 : info_buf_reg_0_used; // @[RxBufferFifo.scala 108:29 49:29]
  wire  _GEN_165 = in_shake_hand ? _GEN_143 : info_buf_reg_1_used; // @[RxBufferFifo.scala 108:29 49:29]
  wire  _GEN_168 = in_shake_hand & _GEN_146; // @[RxBufferFifo.scala 108:29 46:33]
  wire [13:0] _GEN_175 = io_reset_counter ? {{7'd0}, wr_pos_reg} : _GEN_152; // @[RxBufferFifo.scala 104:26 52:29]
  wire [5:0] _GEN_176 = io_reset_counter ? info_buf_reg_0_burst : _GEN_154; // @[RxBufferFifo.scala 104:26 49:29]
  wire [5:0] _GEN_177 = io_reset_counter ? info_buf_reg_1_burst : _GEN_155; // @[RxBufferFifo.scala 104:26 49:29]
  wire [31:0] _GEN_178 = io_reset_counter ? info_buf_reg_0_tcp_chksum : _GEN_156; // @[RxBufferFifo.scala 104:26 49:29]
  wire [31:0] _GEN_179 = io_reset_counter ? info_buf_reg_1_tcp_chksum : _GEN_157; // @[RxBufferFifo.scala 104:26 49:29]
  wire [31:0] _GEN_180 = io_reset_counter ? info_buf_reg_0_ip_chksum : _GEN_158; // @[RxBufferFifo.scala 104:26 49:29]
  wire [31:0] _GEN_181 = io_reset_counter ? info_buf_reg_1_ip_chksum : _GEN_159; // @[RxBufferFifo.scala 104:26 49:29]
  wire [15:0] _GEN_182 = io_reset_counter ? info_buf_reg_0_len : _GEN_160; // @[RxBufferFifo.scala 104:26 49:29]
  wire [15:0] _GEN_183 = io_reset_counter ? info_buf_reg_1_len : _GEN_161; // @[RxBufferFifo.scala 104:26 49:29]
  wire  _GEN_184 = io_reset_counter ? info_buf_reg_0_valid : _GEN_162; // @[RxBufferFifo.scala 104:26 49:29]
  wire  _GEN_185 = io_reset_counter ? info_buf_reg_1_valid : _GEN_163; // @[RxBufferFifo.scala 104:26 49:29]
  wire  _GEN_186 = io_reset_counter ? info_buf_reg_0_used : _GEN_164; // @[RxBufferFifo.scala 104:26 49:29]
  wire  _GEN_187 = io_reset_counter ? info_buf_reg_1_used : _GEN_165; // @[RxBufferFifo.scala 104:26 49:29]
  wire  _GEN_195 = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[RxBufferFifo.scala 162:{38,38}]
  wire  out_shake_hand = io_out_tready & _GEN_195; // @[RxBufferFifo.scala 162:38]
  wire [31:0] _GEN_197 = rd_index_reg[0] ? info_buf_reg_1_ip_chksum : info_buf_reg_0_ip_chksum; // @[Misc.scala 14:{10,10}]
  wire [15:0] _mid_ip_chksum_T_6 = _GEN_197[31:16] + _GEN_197[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _mid_ip_chksum_T_8 = _GEN_197[31:16] > 16'h0 ? _mid_ip_chksum_T_6 : _GEN_197[15:0]; // @[Misc.scala 14:8]
  wire [31:0] _GEN_199 = rd_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[Misc.scala 14:{10,10}]
  wire [15:0] _mid_tcp_chksum_T_6 = _GEN_199[31:16] + _GEN_199[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _mid_tcp_chksum_T_8 = _GEN_199[31:16] > 16'h0 ? _mid_tcp_chksum_T_6 : _GEN_199[15:0]; // @[Misc.scala 14:8]
  wire [31:0] mid_ip_chksum = {{16'd0}, _mid_ip_chksum_T_8}; // @[RxBufferFifo.scala 165:27 166:17]
  wire [15:0] _end_ip_chksum_T_5 = mid_ip_chksum[31:16] + mid_ip_chksum[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _end_ip_chksum_T_7 = mid_ip_chksum[31:16] > 16'h0 ? _end_ip_chksum_T_5 : mid_ip_chksum[15:0]; // @[Misc.scala 14:8]
  wire [15:0] end_ip_chksum = ~_end_ip_chksum_T_7; // @[RxBufferFifo.scala 171:20]
  wire [31:0] mid_tcp_chksum = {{16'd0}, _mid_tcp_chksum_T_8}; // @[RxBufferFifo.scala 167:28 168:18]
  wire [15:0] _end_tcp_chksum_T_5 = mid_tcp_chksum[31:16] + mid_tcp_chksum[15:0]; // @[Misc.scala 15:16]
  wire [15:0] _end_tcp_chksum_T_7 = mid_tcp_chksum[31:16] > 16'h0 ? _end_tcp_chksum_T_5 : mid_tcp_chksum[15:0]; // @[Misc.scala 14:8]
  wire [15:0] end_tcp_chksum = ~_end_tcp_chksum_T_7; // @[RxBufferFifo.scala 173:21]
  wire  _io_out_tvalid_T_1 = end_ip_chksum == 16'h0; // @[RxBufferFifo.scala 175:71]
  wire  _io_out_tvalid_T_3 = end_tcp_chksum == 16'h0; // @[RxBufferFifo.scala 175:99]
  wire [5:0] _GEN_205 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[RxBufferFifo.scala 177:{89,89}]
  wire  _io_out_tlast_T_2 = _GEN_205 == 6'h1; // @[RxBufferFifo.scala 177:89]
  wire  _wrong_chksum_counter_T_4 = io_out_tlast & ~(_io_out_tvalid_T_1 & _io_out_tvalid_T_3); // @[RxBufferFifo.scala 178:64]
  wire [31:0] _GEN_263 = {{31'd0}, _wrong_chksum_counter_T_4}; // @[RxBufferFifo.scala 178:48]
  wire [31:0] _wrong_chksum_counter_T_6 = wrong_chksum_counter + _GEN_263; // @[RxBufferFifo.scala 178:48]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[RxBufferFifo.scala 31:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[RxBufferFifo.scala 31:19]
  wire [11:0] _GEN_264 = {_rd_pos_next_T_2, 5'h0}; // @[RxBufferFifo.scala 196:44]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_264}; // @[RxBufferFifo.scala 196:44]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[RxBufferFifo.scala 198:31]
  wire [13:0] _GEN_255 = _io_out_tlast_T_2 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[RxBufferFifo.scala 195:51 196:17 198:17]
  wire [6:0] rd_pos_next = _GEN_255[6:0];
  wire [6:0] _io_out_tdata_T = out_shake_hand ? rd_pos_next : rd_pos_reg; // @[RxBufferFifo.scala 181:36]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_205 - 6'h1; // @[RxBufferFifo.scala 191:78]
  wire [13:0] _GEN_265 = reset ? 14'h0 : _GEN_175; // @[RxBufferFifo.scala 52:{29,29}]
  ReduceAddSync_3 burst_size_cal ( // @[RxBufferFifo.scala 57:30]
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
  ReduceAddSync ip_chksum_cal ( // @[RxBufferFifo.scala 81:29]
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
  ReduceAddSync_1 tcp_pld_chksum_cal ( // @[RxBufferFifo.scala 88:34]
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
  ReduceAddSync_1 tcp_hdr_chksum_cal ( // @[RxBufferFifo.scala 95:34]
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
  assign data_buf_reg_io_out_tdata_MPORT_en = data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_addr = data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_data = data_buf_reg[data_buf_reg_io_out_tdata_MPORT_addr]; // @[RxBufferFifo.scala 46:33]
  assign data_buf_reg_MPORT_data = in_tdata_reg;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_reset_counter ? 1'h0 : _GEN_168;
  assign io_in_tready = ~buf_full; // @[RxBufferFifo.scala 65:19]
  assign io_out_tdata = data_buf_reg_io_out_tdata_MPORT_data; // @[RxBufferFifo.scala 181:17]
  assign io_out_tvalid = _GEN_195 & end_ip_chksum == 16'h0 & end_tcp_chksum == 16'h0; // @[RxBufferFifo.scala 175:80]
  assign io_out_tlast = _GEN_195 & _GEN_205 == 6'h1; // @[RxBufferFifo.scala 177:53]
  assign io_out_tlen = rd_index_reg[0] ? info_buf_reg_1_len : info_buf_reg_0_len; // @[RxBufferFifo.scala 176:{17,17}]
  assign io_c2h_pack_counter = pack_counter; // @[RxBufferFifo.scala 70:23]
  assign io_c2h_err_counter = err_counter + wrong_chksum_counter; // @[RxBufferFifo.scala 71:37]
  assign burst_size_cal_clock = clock;
  assign burst_size_cal_io_in_vec_0 = {{7'd0}, _GEN_1[0]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_1 = {{7'd0}, _GEN_1[1]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_2 = {{7'd0}, _GEN_1[2]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_3 = {{7'd0}, _GEN_1[3]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_4 = {{7'd0}, _GEN_1[4]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_5 = {{7'd0}, _GEN_1[5]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_6 = {{7'd0}, _GEN_1[6]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_7 = {{7'd0}, _GEN_1[7]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_8 = {{7'd0}, _GEN_1[8]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_9 = {{7'd0}, _GEN_1[9]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_10 = {{7'd0}, _GEN_1[10]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_11 = {{7'd0}, _GEN_1[11]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_12 = {{7'd0}, _GEN_1[12]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_13 = {{7'd0}, _GEN_1[13]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_14 = {{7'd0}, _GEN_1[14]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_15 = {{7'd0}, _GEN_1[15]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_16 = {{7'd0}, _GEN_1[16]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_17 = {{7'd0}, _GEN_1[17]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_18 = {{7'd0}, _GEN_1[18]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_19 = {{7'd0}, _GEN_1[19]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_20 = {{7'd0}, _GEN_1[20]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_21 = {{7'd0}, _GEN_1[21]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_22 = {{7'd0}, _GEN_1[22]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_23 = {{7'd0}, _GEN_1[23]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_24 = {{7'd0}, _GEN_1[24]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_25 = {{7'd0}, _GEN_1[25]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_26 = {{7'd0}, _GEN_1[26]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_27 = {{7'd0}, _GEN_1[27]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_28 = {{7'd0}, _GEN_1[28]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_29 = {{7'd0}, _GEN_1[29]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_30 = {{7'd0}, _GEN_1[30]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_31 = {{7'd0}, _GEN_1[31]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_32 = {{7'd0}, _GEN_1[32]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_33 = {{7'd0}, _GEN_1[33]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_34 = {{7'd0}, _GEN_1[34]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_35 = {{7'd0}, _GEN_1[35]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_36 = {{7'd0}, _GEN_1[36]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_37 = {{7'd0}, _GEN_1[37]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_38 = {{7'd0}, _GEN_1[38]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_39 = {{7'd0}, _GEN_1[39]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_40 = {{7'd0}, _GEN_1[40]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_41 = {{7'd0}, _GEN_1[41]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_42 = {{7'd0}, _GEN_1[42]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_43 = {{7'd0}, _GEN_1[43]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_44 = {{7'd0}, _GEN_1[44]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_45 = {{7'd0}, _GEN_1[45]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_46 = {{7'd0}, _GEN_1[46]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_47 = {{7'd0}, _GEN_1[47]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_48 = {{7'd0}, _GEN_1[48]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_49 = {{7'd0}, _GEN_1[49]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_50 = {{7'd0}, _GEN_1[50]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_51 = {{7'd0}, _GEN_1[51]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_52 = {{7'd0}, _GEN_1[52]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_53 = {{7'd0}, _GEN_1[53]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_54 = {{7'd0}, _GEN_1[54]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_55 = {{7'd0}, _GEN_1[55]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_56 = {{7'd0}, _GEN_1[56]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_57 = {{7'd0}, _GEN_1[57]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_58 = {{7'd0}, _GEN_1[58]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_59 = {{7'd0}, _GEN_1[59]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_60 = {{7'd0}, _GEN_1[60]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_61 = {{7'd0}, _GEN_1[61]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_62 = {{7'd0}, _GEN_1[62]}; // @[RxBufferFifo.scala 58:53]
  assign burst_size_cal_io_in_vec_63 = {{7'd0}, _GEN_1[63]}; // @[RxBufferFifo.scala 58:53]
  assign ip_chksum_cal_clock = clock;
  assign ip_chksum_cal_io_in_vec_0 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_3}; // @[RxBufferFifo.scala 83:32]
  assign ip_chksum_cal_io_in_vec_1 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[RxBufferFifo.scala 83:32]
  assign ip_chksum_cal_io_in_vec_2 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_3}; // @[RxBufferFifo.scala 83:32]
  assign ip_chksum_cal_io_in_vec_3 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_3}; // @[RxBufferFifo.scala 83:32]
  assign ip_chksum_cal_io_in_vec_4 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_3}; // @[RxBufferFifo.scala 83:32]
  assign ip_chksum_cal_io_in_vec_5 = {{16'd0}, _ip_chksum_cal_io_in_vec_5_T_3}; // @[RxBufferFifo.scala 83:32]
  assign ip_chksum_cal_io_in_vec_6 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[RxBufferFifo.scala 83:32]
  assign ip_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[RxBufferFifo.scala 83:32]
  assign ip_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[RxBufferFifo.scala 83:32]
  assign ip_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[RxBufferFifo.scala 83:32]
  assign tcp_pld_chksum_cal_clock = clock;
  assign tcp_pld_chksum_cal_io_in_vec_0 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_0_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_1 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_1_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_2 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_2_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_3 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_3_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_4 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_4_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_5 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_5_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_6 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_6_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_10 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_11 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_12 = {{16'd0}, _ip_chksum_cal_io_in_vec_5_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_25 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_25_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_pld_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_3}; // @[RxBufferFifo.scala 90:37]
  assign tcp_hdr_chksum_cal_clock = clock;
  assign tcp_hdr_chksum_cal_io_in_vec_0 = 32'h0; // @[RxBufferFifo.scala 99:42]
  assign tcp_hdr_chksum_cal_io_in_vec_1 = 32'h0; // @[RxBufferFifo.scala 99:42]
  assign tcp_hdr_chksum_cal_io_in_vec_2 = 32'h0; // @[RxBufferFifo.scala 99:42]
  assign tcp_hdr_chksum_cal_io_in_vec_3 = 32'h0; // @[RxBufferFifo.scala 99:42]
  assign tcp_hdr_chksum_cal_io_in_vec_4 = 32'h0; // @[RxBufferFifo.scala 99:42]
  assign tcp_hdr_chksum_cal_io_in_vec_5 = 32'h0; // @[RxBufferFifo.scala 99:42]
  assign tcp_hdr_chksum_cal_io_in_vec_6 = 32'h0; // @[RxBufferFifo.scala 99:42]
  assign tcp_hdr_chksum_cal_io_in_vec_7 = 32'h0; // @[RxBufferFifo.scala 99:42]
  assign tcp_hdr_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_9 = 32'h0; // @[RxBufferFifo.scala 99:42]
  assign tcp_hdr_chksum_cal_io_in_vec_10 = 32'h0; // @[RxBufferFifo.scala 99:42]
  assign tcp_hdr_chksum_cal_io_in_vec_11 = {{24'd0}, _GEN_0[191:184]}; // @[RxBufferFifo.scala 98:53]
  assign tcp_hdr_chksum_cal_io_in_vec_12 = 32'h0; // @[RxBufferFifo.scala 99:42]
  assign tcp_hdr_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_25 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_25_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_3}; // @[RxBufferFifo.scala 97:56]
  assign tcp_hdr_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_3}; // @[RxBufferFifo.scala 97:56]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[RxBufferFifo.scala 46:33]
    end
    data_buf_reg_io_out_tdata_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      data_buf_reg_io_out_tdata_MPORT_addr_pipe_0 <= _io_out_tdata_T[5:0];
    end
    if (reset) begin // @[Reg.scala 28:20]
      in_tdata_reg <= 512'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_tdata_reg <= io_in_tdata; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      in_tkeep_reg <= 64'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_tkeep_reg <= io_in_tkeep; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      in_tuser_reg <= 1'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_tuser_reg <= io_in_tuser; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      in_tlast_reg <= 1'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_tlast_reg <= io_in_tlast; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[Reg.scala 28:20]
      in_tvalid_reg <= 1'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_tvalid_reg <= io_in_tvalid; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      info_buf_reg_0_used <= 1'h0; // @[RxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_0_used <= 1'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_0_used <= _GEN_186;
        end
      end else begin
        info_buf_reg_0_used <= _GEN_186;
      end
    end else begin
      info_buf_reg_0_used <= _GEN_186;
    end
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      info_buf_reg_0_valid <= 1'h0; // @[RxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_0_valid <= 1'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_0_valid <= _GEN_184;
        end
      end else begin
        info_buf_reg_0_valid <= _GEN_184;
      end
    end else begin
      info_buf_reg_0_valid <= _GEN_184;
    end
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      info_buf_reg_0_len <= 16'h0; // @[RxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_0_len <= 16'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_0_len <= _GEN_182;
        end
      end else begin
        info_buf_reg_0_len <= _GEN_182;
      end
    end else begin
      info_buf_reg_0_len <= _GEN_182;
    end
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      info_buf_reg_0_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_0_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_0_ip_chksum <= _GEN_180;
        end
      end else begin
        info_buf_reg_0_ip_chksum <= _GEN_180;
      end
    end else begin
      info_buf_reg_0_ip_chksum <= _GEN_180;
    end
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      info_buf_reg_0_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_0_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_0_tcp_chksum <= _GEN_178;
        end
      end else begin
        info_buf_reg_0_tcp_chksum <= _GEN_178;
      end
    end else begin
      info_buf_reg_0_tcp_chksum <= _GEN_178;
    end
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      info_buf_reg_0_burst <= 6'h0; // @[RxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_0_burst <= 6'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_0_burst <= _GEN_176;
        end
      end else if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 191:42]
        info_buf_reg_0_burst <= _info_buf_reg_burst_T_5; // @[RxBufferFifo.scala 191:42]
      end else begin
        info_buf_reg_0_burst <= _GEN_176;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_176;
    end
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      info_buf_reg_1_used <= 1'h0; // @[RxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_1_used <= 1'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_1_used <= _GEN_187;
        end
      end else begin
        info_buf_reg_1_used <= _GEN_187;
      end
    end else begin
      info_buf_reg_1_used <= _GEN_187;
    end
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      info_buf_reg_1_valid <= 1'h0; // @[RxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_1_valid <= 1'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_1_valid <= _GEN_185;
        end
      end else begin
        info_buf_reg_1_valid <= _GEN_185;
      end
    end else begin
      info_buf_reg_1_valid <= _GEN_185;
    end
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      info_buf_reg_1_len <= 16'h0; // @[RxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_1_len <= 16'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_1_len <= _GEN_183;
        end
      end else begin
        info_buf_reg_1_len <= _GEN_183;
      end
    end else begin
      info_buf_reg_1_len <= _GEN_183;
    end
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      info_buf_reg_1_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_1_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_1_ip_chksum <= _GEN_181;
        end
      end else begin
        info_buf_reg_1_ip_chksum <= _GEN_181;
      end
    end else begin
      info_buf_reg_1_ip_chksum <= _GEN_181;
    end
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      info_buf_reg_1_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_1_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_1_tcp_chksum <= _GEN_179;
        end
      end else begin
        info_buf_reg_1_tcp_chksum <= _GEN_179;
      end
    end else begin
      info_buf_reg_1_tcp_chksum <= _GEN_179;
    end
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      info_buf_reg_1_burst <= 6'h0; // @[RxBufferFifo.scala 49:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_1_burst <= 6'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_1_burst <= _GEN_177;
        end
      end else if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 191:42]
        info_buf_reg_1_burst <= _info_buf_reg_burst_T_5; // @[RxBufferFifo.scala 191:42]
      end else begin
        info_buf_reg_1_burst <= _GEN_177;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_177;
    end
    if (reset) begin // @[RxBufferFifo.scala 50:29]
      wr_index_reg <= 7'h0; // @[RxBufferFifo.scala 50:29]
    end else if (!(io_reset_counter)) begin // @[RxBufferFifo.scala 104:26]
      if (in_shake_hand) begin // @[RxBufferFifo.scala 108:29]
        if (!(_GEN_7 == 6'h20)) begin // @[RxBufferFifo.scala 112:61]
          wr_index_reg <= _GEN_127;
        end
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 51:29]
      rd_index_reg <= 7'h0; // @[RxBufferFifo.scala 51:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        rd_index_reg <= _rd_pos_next_T_2; // @[RxBufferFifo.scala 189:22]
      end
    end
    wr_pos_reg <= _GEN_265[6:0]; // @[RxBufferFifo.scala 52:{29,29}]
    if (reset) begin // @[RxBufferFifo.scala 53:29]
      rd_pos_reg <= 7'h0; // @[RxBufferFifo.scala 53:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 181:36]
      rd_pos_reg <= rd_pos_next;
    end
    if (reset) begin // @[RxBufferFifo.scala 66:29]
      pack_counter <= 32'h0; // @[RxBufferFifo.scala 66:29]
    end else if (io_reset_counter) begin // @[RxBufferFifo.scala 104:26]
      pack_counter <= 32'h0; // @[RxBufferFifo.scala 105:18]
    end else if (in_shake_hand) begin // @[RxBufferFifo.scala 108:29]
      if (in_tlast_reg) begin // @[RxBufferFifo.scala 109:25]
        pack_counter <= _pack_counter_T_1; // @[RxBufferFifo.scala 110:20]
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 67:28]
      err_counter <= 32'h0; // @[RxBufferFifo.scala 67:28]
    end else if (io_reset_counter) begin // @[RxBufferFifo.scala 104:26]
      err_counter <= 32'h0; // @[RxBufferFifo.scala 106:17]
    end else if (in_shake_hand) begin // @[RxBufferFifo.scala 108:29]
      if (_GEN_7 == 6'h20) begin // @[RxBufferFifo.scala 112:61]
        err_counter <= _err_counter_T_1; // @[RxBufferFifo.scala 124:19]
      end else begin
        err_counter <= _GEN_108;
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 68:37]
      wrong_chksum_counter <= 32'h0; // @[RxBufferFifo.scala 68:37]
    end else begin
      wrong_chksum_counter <= _wrong_chksum_counter_T_6; // @[RxBufferFifo.scala 178:24]
    end
    if (reset) begin // @[RxBufferFifo.scala 73:30]
      is_overflowed <= 1'h0; // @[RxBufferFifo.scala 73:30]
    end else if (!(io_reset_counter)) begin // @[RxBufferFifo.scala 104:26]
      if (in_shake_hand) begin // @[RxBufferFifo.scala 108:29]
        if (_GEN_7 == 6'h20) begin // @[RxBufferFifo.scala 112:61]
          is_overflowed <= _GEN_8;
        end else begin
          is_overflowed <= _GEN_128;
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
  _RAND_3 = {16{`RANDOM}};
  in_tdata_reg = _RAND_3[511:0];
  _RAND_4 = {2{`RANDOM}};
  in_tkeep_reg = _RAND_4[63:0];
  _RAND_5 = {1{`RANDOM}};
  in_tuser_reg = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  in_tlast_reg = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  in_tvalid_reg = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  info_buf_reg_0_used = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  info_buf_reg_0_valid = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  info_buf_reg_0_len = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  info_buf_reg_0_ip_chksum = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  info_buf_reg_0_tcp_chksum = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  info_buf_reg_0_burst = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  info_buf_reg_1_used = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  info_buf_reg_1_valid = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  info_buf_reg_1_len = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  info_buf_reg_1_ip_chksum = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  info_buf_reg_1_tcp_chksum = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  info_buf_reg_1_burst = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  wr_index_reg = _RAND_20[6:0];
  _RAND_21 = {1{`RANDOM}};
  rd_index_reg = _RAND_21[6:0];
  _RAND_22 = {1{`RANDOM}};
  wr_pos_reg = _RAND_22[6:0];
  _RAND_23 = {1{`RANDOM}};
  rd_pos_reg = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  pack_counter = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  err_counter = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  wrong_chksum_counter = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  is_overflowed = _RAND_27[0:0];
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
  wire  grant_0 = io_in_mask[0]; // @[Misc.scala 98:25]
  wire  notgranted_0 = ~grant_0; // @[Misc.scala 99:20]
  wire  grant_1 = notgranted_0 & io_in_mask[1]; // @[Misc.scala 101:33]
  wire  notgranted_1 = notgranted_0 & ~io_in_mask[1]; // @[Misc.scala 102:38]
  wire  grant_2 = notgranted_1 & io_in_mask[2]; // @[Misc.scala 101:33]
  wire  notgranted_2 = notgranted_1 & ~io_in_mask[2]; // @[Misc.scala 102:38]
  wire  grant_3 = notgranted_2 & io_in_mask[3]; // @[Misc.scala 101:33]
  wire  notgranted_3 = notgranted_2 & ~io_in_mask[3]; // @[Misc.scala 102:38]
  wire  grant_4 = notgranted_3 & io_in_mask[4]; // @[Misc.scala 101:33]
  wire  notgranted_4 = notgranted_3 & ~io_in_mask[4]; // @[Misc.scala 102:38]
  wire  grant_5 = notgranted_4 & io_in_mask[5]; // @[Misc.scala 101:33]
  wire  notgranted_5 = notgranted_4 & ~io_in_mask[5]; // @[Misc.scala 102:38]
  wire  grant_6 = notgranted_5 & io_in_mask[6]; // @[Misc.scala 101:33]
  wire  notgranted_6 = notgranted_5 & ~io_in_mask[6]; // @[Misc.scala 102:38]
  wire  grant_7 = notgranted_6 & io_in_mask[7]; // @[Misc.scala 101:33]
  wire  notgranted_7 = notgranted_6 & ~io_in_mask[7]; // @[Misc.scala 102:38]
  wire  grant_8 = notgranted_7 & io_in_mask[8]; // @[Misc.scala 101:33]
  wire  notgranted_8 = notgranted_7 & ~io_in_mask[8]; // @[Misc.scala 102:38]
  wire  grant_9 = notgranted_8 & io_in_mask[9]; // @[Misc.scala 101:33]
  wire  notgranted_9 = notgranted_8 & ~io_in_mask[9]; // @[Misc.scala 102:38]
  wire  grant_10 = notgranted_9 & io_in_mask[10]; // @[Misc.scala 101:33]
  wire  notgranted_10 = notgranted_9 & ~io_in_mask[10]; // @[Misc.scala 102:38]
  wire  grant_11 = notgranted_10 & io_in_mask[11]; // @[Misc.scala 101:33]
  wire  notgranted_11 = notgranted_10 & ~io_in_mask[11]; // @[Misc.scala 102:38]
  wire  grant_12 = notgranted_11 & io_in_mask[12]; // @[Misc.scala 101:33]
  wire  notgranted_12 = notgranted_11 & ~io_in_mask[12]; // @[Misc.scala 102:38]
  wire  grant_13 = notgranted_12 & io_in_mask[13]; // @[Misc.scala 101:33]
  wire  notgranted_13 = notgranted_12 & ~io_in_mask[13]; // @[Misc.scala 102:38]
  wire  grant_14 = notgranted_13 & io_in_mask[14]; // @[Misc.scala 101:33]
  wire  notgranted_14 = notgranted_13 & ~io_in_mask[14]; // @[Misc.scala 102:38]
  wire  grant_15 = notgranted_14 & io_in_mask[15]; // @[Misc.scala 101:33]
  wire  notgranted_15 = notgranted_14 & ~io_in_mask[15]; // @[Misc.scala 102:38]
  wire  grant_16 = notgranted_15 & io_in_mask[16]; // @[Misc.scala 101:33]
  wire  notgranted_16 = notgranted_15 & ~io_in_mask[16]; // @[Misc.scala 102:38]
  wire  grant_17 = notgranted_16 & io_in_mask[17]; // @[Misc.scala 101:33]
  wire  notgranted_17 = notgranted_16 & ~io_in_mask[17]; // @[Misc.scala 102:38]
  wire  grant_18 = notgranted_17 & io_in_mask[18]; // @[Misc.scala 101:33]
  wire  notgranted_18 = notgranted_17 & ~io_in_mask[18]; // @[Misc.scala 102:38]
  wire  grant_19 = notgranted_18 & io_in_mask[19]; // @[Misc.scala 101:33]
  wire  notgranted_19 = notgranted_18 & ~io_in_mask[19]; // @[Misc.scala 102:38]
  wire  grant_20 = notgranted_19 & io_in_mask[20]; // @[Misc.scala 101:33]
  wire  notgranted_20 = notgranted_19 & ~io_in_mask[20]; // @[Misc.scala 102:38]
  wire  grant_21 = notgranted_20 & io_in_mask[21]; // @[Misc.scala 101:33]
  wire  notgranted_21 = notgranted_20 & ~io_in_mask[21]; // @[Misc.scala 102:38]
  wire  grant_22 = notgranted_21 & io_in_mask[22]; // @[Misc.scala 101:33]
  wire  notgranted_22 = notgranted_21 & ~io_in_mask[22]; // @[Misc.scala 102:38]
  wire  grant_23 = notgranted_22 & io_in_mask[23]; // @[Misc.scala 101:33]
  wire  notgranted_23 = notgranted_22 & ~io_in_mask[23]; // @[Misc.scala 102:38]
  wire  grant_24 = notgranted_23 & io_in_mask[24]; // @[Misc.scala 101:33]
  wire  notgranted_24 = notgranted_23 & ~io_in_mask[24]; // @[Misc.scala 102:38]
  wire  grant_25 = notgranted_24 & io_in_mask[25]; // @[Misc.scala 101:33]
  wire  notgranted_25 = notgranted_24 & ~io_in_mask[25]; // @[Misc.scala 102:38]
  wire  grant_26 = notgranted_25 & io_in_mask[26]; // @[Misc.scala 101:33]
  wire  notgranted_26 = notgranted_25 & ~io_in_mask[26]; // @[Misc.scala 102:38]
  wire  grant_27 = notgranted_26 & io_in_mask[27]; // @[Misc.scala 101:33]
  wire  notgranted_27 = notgranted_26 & ~io_in_mask[27]; // @[Misc.scala 102:38]
  wire  grant_28 = notgranted_27 & io_in_mask[28]; // @[Misc.scala 101:33]
  wire  notgranted_28 = notgranted_27 & ~io_in_mask[28]; // @[Misc.scala 102:38]
  wire  grant_29 = notgranted_28 & io_in_mask[29]; // @[Misc.scala 101:33]
  wire  notgranted_29 = notgranted_28 & ~io_in_mask[29]; // @[Misc.scala 102:38]
  wire  grant_30 = notgranted_29 & io_in_mask[30]; // @[Misc.scala 101:33]
  wire  notgranted_30 = notgranted_29 & ~io_in_mask[30]; // @[Misc.scala 102:38]
  wire  grant_31 = notgranted_30 & io_in_mask[31]; // @[Misc.scala 101:33]
  wire [1:0] _T_7 = grant_2 ? 2'h2 : {{1'd0}, grant_1}; // @[Misc.scala 105:57]
  wire [1:0] _T_11 = grant_3 ? 2'h3 : _T_7; // @[Misc.scala 105:57]
  wire [2:0] _T_15 = grant_4 ? 3'h4 : {{1'd0}, _T_11}; // @[Misc.scala 105:57]
  wire [2:0] _T_19 = grant_5 ? 3'h5 : _T_15; // @[Misc.scala 105:57]
  wire [2:0] _T_23 = grant_6 ? 3'h6 : _T_19; // @[Misc.scala 105:57]
  wire [2:0] _T_27 = grant_7 ? 3'h7 : _T_23; // @[Misc.scala 105:57]
  wire [3:0] _T_31 = grant_8 ? 4'h8 : {{1'd0}, _T_27}; // @[Misc.scala 105:57]
  wire [3:0] _T_35 = grant_9 ? 4'h9 : _T_31; // @[Misc.scala 105:57]
  wire [3:0] _T_39 = grant_10 ? 4'ha : _T_35; // @[Misc.scala 105:57]
  wire [3:0] _T_43 = grant_11 ? 4'hb : _T_39; // @[Misc.scala 105:57]
  wire [3:0] _T_47 = grant_12 ? 4'hc : _T_43; // @[Misc.scala 105:57]
  wire [3:0] _T_51 = grant_13 ? 4'hd : _T_47; // @[Misc.scala 105:57]
  wire [3:0] _T_55 = grant_14 ? 4'he : _T_51; // @[Misc.scala 105:57]
  wire [3:0] _T_59 = grant_15 ? 4'hf : _T_55; // @[Misc.scala 105:57]
  wire [4:0] _T_63 = grant_16 ? 5'h10 : {{1'd0}, _T_59}; // @[Misc.scala 105:57]
  wire [4:0] _T_67 = grant_17 ? 5'h11 : _T_63; // @[Misc.scala 105:57]
  wire [4:0] _T_71 = grant_18 ? 5'h12 : _T_67; // @[Misc.scala 105:57]
  wire [4:0] _T_75 = grant_19 ? 5'h13 : _T_71; // @[Misc.scala 105:57]
  wire [4:0] _T_79 = grant_20 ? 5'h14 : _T_75; // @[Misc.scala 105:57]
  wire [4:0] _T_83 = grant_21 ? 5'h15 : _T_79; // @[Misc.scala 105:57]
  wire [4:0] _T_87 = grant_22 ? 5'h16 : _T_83; // @[Misc.scala 105:57]
  wire [4:0] _T_91 = grant_23 ? 5'h17 : _T_87; // @[Misc.scala 105:57]
  wire [4:0] _T_95 = grant_24 ? 5'h18 : _T_91; // @[Misc.scala 105:57]
  wire [4:0] _T_99 = grant_25 ? 5'h19 : _T_95; // @[Misc.scala 105:57]
  wire [4:0] _T_103 = grant_26 ? 5'h1a : _T_99; // @[Misc.scala 105:57]
  wire [4:0] _T_107 = grant_27 ? 5'h1b : _T_103; // @[Misc.scala 105:57]
  wire [4:0] _T_111 = grant_28 ? 5'h1c : _T_107; // @[Misc.scala 105:57]
  wire [4:0] _T_115 = grant_29 ? 5'h1d : _T_111; // @[Misc.scala 105:57]
  wire [4:0] _T_119 = grant_30 ? 5'h1e : _T_115; // @[Misc.scala 105:57]
  wire [4:0] _T_123 = grant_31 ? 5'h1f : _T_119; // @[Misc.scala 105:57]
  assign io_out_dec = {{1'd0}, _T_123}; // @[Misc.scala 106:14]
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
  wire [31:0] arbitDecoder_io_in_mask; // @[Misc.scala 66:28]
  wire [5:0] arbitDecoder_io_out_dec; // @[Misc.scala 66:28]
  reg [31:0] sav_mask_reg; // @[Misc.scala 62:29]
  reg [31:0] cur_mask_reg; // @[Misc.scala 63:29]
  wire [94:0] _next_mask_T = 95'h1 << io_out_dec; // @[Misc.scala 68:48]
  wire [94:0] _next_mask_T_1 = ~_next_mask_T; // @[Misc.scala 68:33]
  wire [94:0] _GEN_4 = {{63'd0}, cur_mask_reg}; // @[Misc.scala 68:30]
  wire [94:0] _next_mask_T_2 = _GEN_4 & _next_mask_T_1; // @[Misc.scala 68:30]
  wire [31:0] next_mask = _next_mask_T_2[31:0]; // @[Misc.scala 65:23 68:13]
  ArbitDecoder arbitDecoder ( // @[Misc.scala 66:28]
    .io_in_mask(arbitDecoder_io_in_mask),
    .io_out_dec(arbitDecoder_io_out_dec)
  );
  assign io_out_dec = arbitDecoder_io_out_dec; // @[Misc.scala 84:14]
  assign arbitDecoder_io_in_mask = cur_mask_reg; // @[Misc.scala 69:27]
  always @(posedge clock) begin
    if (reset) begin // @[Misc.scala 62:29]
      sav_mask_reg <= io_in_mask; // @[Misc.scala 62:29]
    end else if (sav_mask_reg != io_in_mask) begin // @[Misc.scala 71:46]
      sav_mask_reg <= io_in_mask; // @[Misc.scala 73:18]
    end
    if (reset) begin // @[Misc.scala 63:29]
      cur_mask_reg <= io_in_mask; // @[Misc.scala 63:29]
    end else if (sav_mask_reg != io_in_mask) begin // @[Misc.scala 71:46]
      cur_mask_reg <= io_in_mask; // @[Misc.scala 72:18]
    end else if (io_in_tlast) begin // @[Misc.scala 75:28]
      if (next_mask == 32'h0) begin // @[Misc.scala 76:32]
        cur_mask_reg <= sav_mask_reg; // @[Misc.scala 77:22]
      end else begin
        cur_mask_reg <= next_mask; // @[Misc.scala 80:24]
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
module IPFilter(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input  [15:0]  io_in_tlen,
  input  [5:0]   io_in_qid,
  input  [31:0]  io_in_extern_config_c2h_ipfilter_hash_seed,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output [15:0]  io_out_tlen,
  output [5:0]   io_out_qid
);
`ifdef RANDOMIZE_REG_INIT
  reg [543:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  in_shake_hand = io_in_tready & io_in_tvalid; // @[RxPipelineHandler.scala 19:38]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[RxPipelineHandler.scala 20:38]
  wire [535:0] _in_reg_T = {io_in_tdata,io_in_tvalid,io_in_tlast,io_in_tlen,io_in_qid}; // @[Cat.scala 31:58]
  reg [535:0] in_reg_r; // @[Reg.scala 28:20]
  wire [5:0] in_reg_qid = in_reg_r[5:0]; // @[RxPipelineHandler.scala 21:116]
  wire  in_reg_tlast = in_reg_r[22]; // @[RxPipelineHandler.scala 21:116]
  reg  first_beat_reg; // @[Reg.scala 28:20]
  wire  _GEN_1 = in_shake_hand ? in_reg_tlast : first_beat_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_reg_used; // @[RxPipelineHandler.scala 24:28]
  wire  _GEN_2 = out_shake_hand ? 1'h0 : in_reg_used; // @[RxPipelineHandler.scala 27:29 28:17 24:28]
  wire  _GEN_3 = in_shake_hand | _GEN_2; // @[RxPipelineHandler.scala 25:23 26:17]
  reg [5:0] cur_packet_qid_reg; // @[Reg.scala 28:20]
  wire [5:0] _GEN_5 = io_in_extern_config_c2h_ipfilter_hash_seed == 32'h1 ? 6'h1 : in_reg_qid; // @[RxPipelineHandler.scala 49:66 50:13]
  wire [5:0] cal_qid = first_beat_reg ? in_reg_qid : _GEN_5; // @[RxPipelineHandler.scala 44:24]
  assign io_in_tready = io_out_tready | ~in_reg_used; // @[RxPipelineHandler.scala 39:46]
  assign io_out_tdata = in_reg_r[535:24]; // @[RxPipelineHandler.scala 21:116]
  assign io_out_tvalid = in_reg_r[23]; // @[RxPipelineHandler.scala 21:116]
  assign io_out_tlast = in_reg_r[22]; // @[RxPipelineHandler.scala 21:116]
  assign io_out_tlen = in_reg_r[21:6]; // @[RxPipelineHandler.scala 21:116]
  assign io_out_qid = first_beat_reg ? cal_qid : cur_packet_qid_reg; // @[RxPipelineHandler.scala 33:32]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      in_reg_r <= 536'h0; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_reg_r <= _in_reg_T; // @[Reg.scala 29:22]
    end
    first_beat_reg <= reset | _GEN_1; // @[Reg.scala 28:{20,20}]
    if (reset) begin // @[RxPipelineHandler.scala 24:28]
      in_reg_used <= 1'h0; // @[RxPipelineHandler.scala 24:28]
    end else begin
      in_reg_used <= _GEN_3;
    end
    if (reset) begin // @[Reg.scala 28:20]
      cur_packet_qid_reg <= 6'h0; // @[Reg.scala 28:20]
    end else if (first_beat_reg) begin // @[Reg.scala 29:18]
      if (first_beat_reg) begin // @[RxPipelineHandler.scala 44:24]
        cur_packet_qid_reg <= in_reg_qid;
      end else if (io_in_extern_config_c2h_ipfilter_hash_seed == 32'h1) begin // @[RxPipelineHandler.scala 49:66]
        cur_packet_qid_reg <= 6'h1; // @[RxPipelineHandler.scala 50:13]
      end else begin
        cur_packet_qid_reg <= in_reg_qid;
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
  _RAND_0 = {17{`RANDOM}};
  in_reg_r = _RAND_0[535:0];
  _RAND_1 = {1{`RANDOM}};
  first_beat_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  in_reg_used = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  cur_packet_qid_reg = _RAND_3[5:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PackageFilterPipeline(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input  [15:0]  io_in_tlen,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output [15:0]  io_out_tlen,
  input  [31:0]  io_extern_config_c2h_sw_qid_mask,
  input  [31:0]  io_extern_config_c2h_ipfilter_hash_seed,
  output [5:0]   io_c2h_qid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  qid_mask_wrapper_clock; // @[PackageFilterPipeline.scala 43:32]
  wire  qid_mask_wrapper_reset; // @[PackageFilterPipeline.scala 43:32]
  wire [31:0] qid_mask_wrapper_io_in_mask; // @[PackageFilterPipeline.scala 43:32]
  wire  qid_mask_wrapper_io_in_tlast; // @[PackageFilterPipeline.scala 43:32]
  wire [5:0] qid_mask_wrapper_io_out_dec; // @[PackageFilterPipeline.scala 43:32]
  wire  ip_filter_clock; // @[PackageFilterPipeline.scala 47:25]
  wire  ip_filter_reset; // @[PackageFilterPipeline.scala 47:25]
  wire [511:0] ip_filter_io_in_tdata; // @[PackageFilterPipeline.scala 47:25]
  wire  ip_filter_io_in_tvalid; // @[PackageFilterPipeline.scala 47:25]
  wire  ip_filter_io_in_tready; // @[PackageFilterPipeline.scala 47:25]
  wire  ip_filter_io_in_tlast; // @[PackageFilterPipeline.scala 47:25]
  wire [15:0] ip_filter_io_in_tlen; // @[PackageFilterPipeline.scala 47:25]
  wire [5:0] ip_filter_io_in_qid; // @[PackageFilterPipeline.scala 47:25]
  wire [31:0] ip_filter_io_in_extern_config_c2h_ipfilter_hash_seed; // @[PackageFilterPipeline.scala 47:25]
  wire [511:0] ip_filter_io_out_tdata; // @[PackageFilterPipeline.scala 47:25]
  wire  ip_filter_io_out_tvalid; // @[PackageFilterPipeline.scala 47:25]
  wire  ip_filter_io_out_tready; // @[PackageFilterPipeline.scala 47:25]
  wire  ip_filter_io_out_tlast; // @[PackageFilterPipeline.scala 47:25]
  wire [15:0] ip_filter_io_out_tlen; // @[PackageFilterPipeline.scala 47:25]
  wire [5:0] ip_filter_io_out_qid; // @[PackageFilterPipeline.scala 47:25]
  reg [31:0] extern_config_reg_c2h_sw_qid_mask; // @[PackageFilterPipeline.scala 40:34]
  reg [31:0] extern_config_reg_c2h_ipfilter_hash_seed; // @[PackageFilterPipeline.scala 40:34]
  SoftwareRegWrapper qid_mask_wrapper ( // @[PackageFilterPipeline.scala 43:32]
    .clock(qid_mask_wrapper_clock),
    .reset(qid_mask_wrapper_reset),
    .io_in_mask(qid_mask_wrapper_io_in_mask),
    .io_in_tlast(qid_mask_wrapper_io_in_tlast),
    .io_out_dec(qid_mask_wrapper_io_out_dec)
  );
  IPFilter ip_filter ( // @[PackageFilterPipeline.scala 47:25]
    .clock(ip_filter_clock),
    .reset(ip_filter_reset),
    .io_in_tdata(ip_filter_io_in_tdata),
    .io_in_tvalid(ip_filter_io_in_tvalid),
    .io_in_tready(ip_filter_io_in_tready),
    .io_in_tlast(ip_filter_io_in_tlast),
    .io_in_tlen(ip_filter_io_in_tlen),
    .io_in_qid(ip_filter_io_in_qid),
    .io_in_extern_config_c2h_ipfilter_hash_seed(ip_filter_io_in_extern_config_c2h_ipfilter_hash_seed),
    .io_out_tdata(ip_filter_io_out_tdata),
    .io_out_tvalid(ip_filter_io_out_tvalid),
    .io_out_tready(ip_filter_io_out_tready),
    .io_out_tlast(ip_filter_io_out_tlast),
    .io_out_tlen(ip_filter_io_out_tlen),
    .io_out_qid(ip_filter_io_out_qid)
  );
  assign io_in_tready = ip_filter_io_in_tready; // @[PackageFilterPipeline.scala 55:26]
  assign io_out_tdata = ip_filter_io_out_tdata; // @[PackageFilterPipeline.scala 59:17]
  assign io_out_tvalid = ip_filter_io_out_tvalid; // @[PackageFilterPipeline.scala 57:17]
  assign io_out_tlast = ip_filter_io_out_tlast; // @[PackageFilterPipeline.scala 58:17]
  assign io_out_tlen = ip_filter_io_out_tlen; // @[PackageFilterPipeline.scala 60:17]
  assign io_c2h_qid = ip_filter_io_out_qid; // @[PackageFilterPipeline.scala 63:14]
  assign qid_mask_wrapper_clock = clock;
  assign qid_mask_wrapper_reset = reset;
  assign qid_mask_wrapper_io_in_mask = extern_config_reg_c2h_sw_qid_mask; // @[PackageFilterPipeline.scala 44:31]
  assign qid_mask_wrapper_io_in_tlast = io_in_tvalid & io_in_tready & io_in_tlast; // @[PackageFilterPipeline.scala 45:63]
  assign ip_filter_clock = clock;
  assign ip_filter_reset = reset;
  assign ip_filter_io_in_tdata = io_in_tdata; // @[PackageFilterPipeline.scala 53:26]
  assign ip_filter_io_in_tvalid = io_in_tvalid; // @[PackageFilterPipeline.scala 51:26]
  assign ip_filter_io_in_tlast = io_in_tlast; // @[PackageFilterPipeline.scala 52:26]
  assign ip_filter_io_in_tlen = io_in_tlen; // @[PackageFilterPipeline.scala 54:26]
  assign ip_filter_io_in_qid = qid_mask_wrapper_io_out_dec; // @[PackageFilterPipeline.scala 50:23]
  assign ip_filter_io_in_extern_config_c2h_ipfilter_hash_seed = extern_config_reg_c2h_ipfilter_hash_seed; // @[PackageFilterPipeline.scala 49:33]
  assign ip_filter_io_out_tready = io_out_tready; // @[PackageFilterPipeline.scala 61:27]
  always @(posedge clock) begin
    if (reset) begin // @[PackageFilterPipeline.scala 40:34]
      extern_config_reg_c2h_sw_qid_mask <= 32'h0; // @[PackageFilterPipeline.scala 40:34]
    end else begin
      extern_config_reg_c2h_sw_qid_mask <= io_extern_config_c2h_sw_qid_mask; // @[PackageFilterPipeline.scala 41:21]
    end
    if (reset) begin // @[PackageFilterPipeline.scala 40:34]
      extern_config_reg_c2h_ipfilter_hash_seed <= 32'h0; // @[PackageFilterPipeline.scala 40:34]
    end else begin
      extern_config_reg_c2h_ipfilter_hash_seed <= io_extern_config_c2h_ipfilter_hash_seed; // @[PackageFilterPipeline.scala 41:21]
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
  extern_config_reg_c2h_sw_qid_mask = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  extern_config_reg_c2h_ipfilter_hash_seed = _RAND_1[31:0];
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
  input  [31:0]  io_extern_config_c2h_sw_qid_mask,
  input  [31:0]  io_extern_config_c2h_ipfilter_hash_seed
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  rx_buffer_fifo_clock; // @[RxHandler.scala 39:30]
  wire  rx_buffer_fifo_reset; // @[RxHandler.scala 39:30]
  wire [511:0] rx_buffer_fifo_io_in_tdata; // @[RxHandler.scala 39:30]
  wire  rx_buffer_fifo_io_in_tvalid; // @[RxHandler.scala 39:30]
  wire  rx_buffer_fifo_io_in_tready; // @[RxHandler.scala 39:30]
  wire  rx_buffer_fifo_io_in_tlast; // @[RxHandler.scala 39:30]
  wire  rx_buffer_fifo_io_in_tuser; // @[RxHandler.scala 39:30]
  wire [63:0] rx_buffer_fifo_io_in_tkeep; // @[RxHandler.scala 39:30]
  wire [511:0] rx_buffer_fifo_io_out_tdata; // @[RxHandler.scala 39:30]
  wire  rx_buffer_fifo_io_out_tvalid; // @[RxHandler.scala 39:30]
  wire  rx_buffer_fifo_io_out_tready; // @[RxHandler.scala 39:30]
  wire  rx_buffer_fifo_io_out_tlast; // @[RxHandler.scala 39:30]
  wire [15:0] rx_buffer_fifo_io_out_tlen; // @[RxHandler.scala 39:30]
  wire  rx_buffer_fifo_io_reset_counter; // @[RxHandler.scala 39:30]
  wire [31:0] rx_buffer_fifo_io_c2h_pack_counter; // @[RxHandler.scala 39:30]
  wire [31:0] rx_buffer_fifo_io_c2h_err_counter; // @[RxHandler.scala 39:30]
  wire  package_filter_clock; // @[RxHandler.scala 56:30]
  wire  package_filter_reset; // @[RxHandler.scala 56:30]
  wire [511:0] package_filter_io_in_tdata; // @[RxHandler.scala 56:30]
  wire  package_filter_io_in_tvalid; // @[RxHandler.scala 56:30]
  wire  package_filter_io_in_tready; // @[RxHandler.scala 56:30]
  wire  package_filter_io_in_tlast; // @[RxHandler.scala 56:30]
  wire [15:0] package_filter_io_in_tlen; // @[RxHandler.scala 56:30]
  wire [511:0] package_filter_io_out_tdata; // @[RxHandler.scala 56:30]
  wire  package_filter_io_out_tvalid; // @[RxHandler.scala 56:30]
  wire  package_filter_io_out_tready; // @[RxHandler.scala 56:30]
  wire  package_filter_io_out_tlast; // @[RxHandler.scala 56:30]
  wire [15:0] package_filter_io_out_tlen; // @[RxHandler.scala 56:30]
  wire [31:0] package_filter_io_extern_config_c2h_sw_qid_mask; // @[RxHandler.scala 56:30]
  wire [31:0] package_filter_io_extern_config_c2h_ipfilter_hash_seed; // @[RxHandler.scala 56:30]
  wire [5:0] package_filter_io_c2h_qid; // @[RxHandler.scala 56:30]
  reg  QDMA_c2h_stub_in_tuser_reg; // @[RxHandler.scala 47:43]
  wire  _GEN_0 = io_QDMA_c2h_stub_in_tvalid & io_QDMA_c2h_stub_in_tready ? io_QDMA_c2h_stub_in_tlast :
    QDMA_c2h_stub_in_tuser_reg; // @[RxHandler.scala 48:65 49:32 47:43]
  wire  _io_QDMA_c2h_stub_in_tlast_T = ~io_QDMA_c2h_stub_in_tuser; // @[RxHandler.scala 64:63]
  wire [10:0] Gen_c2h_hdr_qid = {{5'd0}, package_filter_io_c2h_qid};
  wire [5:0] Gen_c2h_hdr_flow_id = Gen_c2h_hdr_qid[5:0];
  wire [15:0] Gen_c2h_hdr_tdest = {{5'd0}, Gen_c2h_hdr_qid};
  wire [15:0] Gen_c2h_hdr_pkt_len = package_filter_io_out_tlen;
  wire [511:0] _io_QDMA_c2h_stub_in_tdata_T = {362'h0,2'h0,4'h0,Gen_c2h_hdr_pkt_len,80'h0,Gen_c2h_hdr_tdest,10'h0,
    Gen_c2h_hdr_flow_id,5'h0,Gen_c2h_hdr_qid}; // @[RxHandler.scala 75:46]
  RxBufferFifo rx_buffer_fifo ( // @[RxHandler.scala 39:30]
    .clock(rx_buffer_fifo_clock),
    .reset(rx_buffer_fifo_reset),
    .io_in_tdata(rx_buffer_fifo_io_in_tdata),
    .io_in_tvalid(rx_buffer_fifo_io_in_tvalid),
    .io_in_tready(rx_buffer_fifo_io_in_tready),
    .io_in_tlast(rx_buffer_fifo_io_in_tlast),
    .io_in_tuser(rx_buffer_fifo_io_in_tuser),
    .io_in_tkeep(rx_buffer_fifo_io_in_tkeep),
    .io_out_tdata(rx_buffer_fifo_io_out_tdata),
    .io_out_tvalid(rx_buffer_fifo_io_out_tvalid),
    .io_out_tready(rx_buffer_fifo_io_out_tready),
    .io_out_tlast(rx_buffer_fifo_io_out_tlast),
    .io_out_tlen(rx_buffer_fifo_io_out_tlen),
    .io_reset_counter(rx_buffer_fifo_io_reset_counter),
    .io_c2h_pack_counter(rx_buffer_fifo_io_c2h_pack_counter),
    .io_c2h_err_counter(rx_buffer_fifo_io_c2h_err_counter)
  );
  PackageFilterPipeline package_filter ( // @[RxHandler.scala 56:30]
    .clock(package_filter_clock),
    .reset(package_filter_reset),
    .io_in_tdata(package_filter_io_in_tdata),
    .io_in_tvalid(package_filter_io_in_tvalid),
    .io_in_tready(package_filter_io_in_tready),
    .io_in_tlast(package_filter_io_in_tlast),
    .io_in_tlen(package_filter_io_in_tlen),
    .io_out_tdata(package_filter_io_out_tdata),
    .io_out_tvalid(package_filter_io_out_tvalid),
    .io_out_tready(package_filter_io_out_tready),
    .io_out_tlast(package_filter_io_out_tlast),
    .io_out_tlen(package_filter_io_out_tlen),
    .io_extern_config_c2h_sw_qid_mask(package_filter_io_extern_config_c2h_sw_qid_mask),
    .io_extern_config_c2h_ipfilter_hash_seed(package_filter_io_extern_config_c2h_ipfilter_hash_seed),
    .io_c2h_qid(package_filter_io_c2h_qid)
  );
  assign io_CMAC_out_tready = rx_buffer_fifo_io_in_tready; // @[RxHandler.scala 41:15]
  assign io_QDMA_c2h_stub_in_tdata = io_QDMA_c2h_stub_in_tuser ? _io_QDMA_c2h_stub_in_tdata_T :
    package_filter_io_out_tdata; // @[RxHandler.scala 68:34 75:31 78:31]
  assign io_QDMA_c2h_stub_in_tvalid = package_filter_io_out_tvalid; // @[RxHandler.scala 62:30]
  assign io_QDMA_c2h_stub_in_tlast = package_filter_io_out_tlast & ~io_QDMA_c2h_stub_in_tuser; // @[RxHandler.scala 64:61]
  assign io_QDMA_c2h_stub_in_tuser = QDMA_c2h_stub_in_tuser_reg & io_QDMA_c2h_stub_in_tvalid; // @[RxHandler.scala 52:59]
  assign io_c2h_pack_counter = rx_buffer_fifo_io_c2h_pack_counter; // @[RxHandler.scala 44:23]
  assign io_c2h_err_counter = rx_buffer_fifo_io_c2h_err_counter; // @[RxHandler.scala 45:22]
  assign rx_buffer_fifo_clock = clock;
  assign rx_buffer_fifo_reset = reset;
  assign rx_buffer_fifo_io_in_tdata = io_CMAC_out_tdata; // @[RxHandler.scala 41:15]
  assign rx_buffer_fifo_io_in_tvalid = io_CMAC_out_tvalid; // @[RxHandler.scala 41:15]
  assign rx_buffer_fifo_io_in_tlast = io_CMAC_out_tlast; // @[RxHandler.scala 41:15]
  assign rx_buffer_fifo_io_in_tuser = io_CMAC_out_tuser; // @[RxHandler.scala 41:15]
  assign rx_buffer_fifo_io_in_tkeep = io_CMAC_out_tkeep; // @[RxHandler.scala 41:15]
  assign rx_buffer_fifo_io_out_tready = package_filter_io_in_tready; // @[RxHandler.scala 58:24]
  assign rx_buffer_fifo_io_reset_counter = io_reset_counter; // @[RxHandler.scala 43:35]
  assign package_filter_clock = clock;
  assign package_filter_reset = reset;
  assign package_filter_io_in_tdata = rx_buffer_fifo_io_out_tdata; // @[RxHandler.scala 58:24]
  assign package_filter_io_in_tvalid = rx_buffer_fifo_io_out_tvalid; // @[RxHandler.scala 58:24]
  assign package_filter_io_in_tlast = rx_buffer_fifo_io_out_tlast; // @[RxHandler.scala 58:24]
  assign package_filter_io_in_tlen = rx_buffer_fifo_io_out_tlen; // @[RxHandler.scala 58:24]
  assign package_filter_io_out_tready = io_QDMA_c2h_stub_in_tready & _io_QDMA_c2h_stub_in_tlast_T; // @[RxHandler.scala 65:62]
  assign package_filter_io_extern_config_c2h_sw_qid_mask = io_extern_config_c2h_sw_qid_mask; // @[RxHandler.scala 60:35]
  assign package_filter_io_extern_config_c2h_ipfilter_hash_seed = io_extern_config_c2h_ipfilter_hash_seed; // @[RxHandler.scala 60:35]
  always @(posedge clock) begin
    QDMA_c2h_stub_in_tuser_reg <= reset | _GEN_0; // @[RxHandler.scala 47:{43,43}]
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
  wire  tx_handler_clock; // @[PackageHandler.scala 32:26]
  wire  tx_handler_reset; // @[PackageHandler.scala 32:26]
  wire [511:0] tx_handler_io_QDMA_h2c_stub_out_tdata; // @[PackageHandler.scala 32:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tvalid; // @[PackageHandler.scala 32:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tready; // @[PackageHandler.scala 32:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tlast; // @[PackageHandler.scala 32:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tuser; // @[PackageHandler.scala 32:26]
  wire [511:0] tx_handler_io_CMAC_in_tdata; // @[PackageHandler.scala 32:26]
  wire  tx_handler_io_CMAC_in_tvalid; // @[PackageHandler.scala 32:26]
  wire  tx_handler_io_CMAC_in_tready; // @[PackageHandler.scala 32:26]
  wire  tx_handler_io_CMAC_in_tlast; // @[PackageHandler.scala 32:26]
  wire  tx_handler_io_reset_counter; // @[PackageHandler.scala 32:26]
  wire [31:0] tx_handler_io_h2c_pack_counter; // @[PackageHandler.scala 32:26]
  wire [31:0] tx_handler_io_h2c_err_counter; // @[PackageHandler.scala 32:26]
  wire  rx_handler_clock; // @[PackageHandler.scala 39:26]
  wire  rx_handler_reset; // @[PackageHandler.scala 39:26]
  wire [511:0] rx_handler_io_CMAC_out_tdata; // @[PackageHandler.scala 39:26]
  wire  rx_handler_io_CMAC_out_tvalid; // @[PackageHandler.scala 39:26]
  wire  rx_handler_io_CMAC_out_tready; // @[PackageHandler.scala 39:26]
  wire  rx_handler_io_CMAC_out_tlast; // @[PackageHandler.scala 39:26]
  wire  rx_handler_io_CMAC_out_tuser; // @[PackageHandler.scala 39:26]
  wire [63:0] rx_handler_io_CMAC_out_tkeep; // @[PackageHandler.scala 39:26]
  wire [511:0] rx_handler_io_QDMA_c2h_stub_in_tdata; // @[PackageHandler.scala 39:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tvalid; // @[PackageHandler.scala 39:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tready; // @[PackageHandler.scala 39:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tlast; // @[PackageHandler.scala 39:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 39:26]
  wire  rx_handler_io_reset_counter; // @[PackageHandler.scala 39:26]
  wire [31:0] rx_handler_io_c2h_pack_counter; // @[PackageHandler.scala 39:26]
  wire [31:0] rx_handler_io_c2h_err_counter; // @[PackageHandler.scala 39:26]
  wire [31:0] rx_handler_io_extern_config_c2h_sw_qid_mask; // @[PackageHandler.scala 39:26]
  wire [31:0] rx_handler_io_extern_config_c2h_ipfilter_hash_seed; // @[PackageHandler.scala 39:26]
  TxHandler tx_handler ( // @[PackageHandler.scala 32:26]
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
  RxHandler rx_handler ( // @[PackageHandler.scala 39:26]
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
    .io_extern_config_c2h_sw_qid_mask(rx_handler_io_extern_config_c2h_sw_qid_mask),
    .io_extern_config_c2h_ipfilter_hash_seed(rx_handler_io_extern_config_c2h_ipfilter_hash_seed)
  );
  assign io_QDMA_h2c_stub_out_tready = tx_handler_io_QDMA_h2c_stub_out_tready; // @[PackageHandler.scala 33:24]
  assign io_CMAC_in_tdata = tx_handler_io_CMAC_in_tdata; // @[PackageHandler.scala 34:24]
  assign io_CMAC_in_tvalid = tx_handler_io_CMAC_in_tvalid; // @[PackageHandler.scala 34:24]
  assign io_CMAC_in_tlast = tx_handler_io_CMAC_in_tlast; // @[PackageHandler.scala 34:24]
  assign io_CMAC_in_tuser = 1'h0; // @[PackageHandler.scala 34:24]
  assign io_CMAC_in_tkeep = 64'hffffffffffffffff; // @[PackageHandler.scala 34:24]
  assign io_CMAC_out_tready = rx_handler_io_CMAC_out_tready; // @[PackageHandler.scala 41:23]
  assign io_QDMA_c2h_stub_in_tdata = rx_handler_io_QDMA_c2h_stub_in_tdata; // @[PackageHandler.scala 40:23]
  assign io_QDMA_c2h_stub_in_tvalid = rx_handler_io_QDMA_c2h_stub_in_tvalid; // @[PackageHandler.scala 40:23]
  assign io_QDMA_c2h_stub_in_tlast = rx_handler_io_QDMA_c2h_stub_in_tlast; // @[PackageHandler.scala 40:23]
  assign io_QDMA_c2h_stub_in_tuser = rx_handler_io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 40:23]
  assign io_c2h_pack_counter = rx_handler_io_c2h_pack_counter; // @[PackageHandler.scala 44:33]
  assign io_c2h_err_counter = rx_handler_io_c2h_err_counter; // @[PackageHandler.scala 45:33]
  assign io_h2c_pack_counter = tx_handler_io_h2c_pack_counter; // @[PackageHandler.scala 36:31]
  assign io_h2c_err_counter = tx_handler_io_h2c_err_counter; // @[PackageHandler.scala 37:31]
  assign tx_handler_clock = clock;
  assign tx_handler_reset = reset;
  assign tx_handler_io_QDMA_h2c_stub_out_tdata = io_QDMA_h2c_stub_out_tdata; // @[PackageHandler.scala 33:24]
  assign tx_handler_io_QDMA_h2c_stub_out_tvalid = io_QDMA_h2c_stub_out_tvalid; // @[PackageHandler.scala 33:24]
  assign tx_handler_io_QDMA_h2c_stub_out_tlast = io_QDMA_h2c_stub_out_tlast; // @[PackageHandler.scala 33:24]
  assign tx_handler_io_QDMA_h2c_stub_out_tuser = io_QDMA_h2c_stub_out_tuser; // @[PackageHandler.scala 33:24]
  assign tx_handler_io_CMAC_in_tready = io_CMAC_in_tready; // @[PackageHandler.scala 34:24]
  assign tx_handler_io_reset_counter = io_reset_counter; // @[PackageHandler.scala 35:31]
  assign rx_handler_clock = clock;
  assign rx_handler_reset = reset;
  assign rx_handler_io_CMAC_out_tdata = io_CMAC_out_tdata; // @[PackageHandler.scala 41:23]
  assign rx_handler_io_CMAC_out_tvalid = io_CMAC_out_tvalid; // @[PackageHandler.scala 41:23]
  assign rx_handler_io_CMAC_out_tlast = io_CMAC_out_tlast; // @[PackageHandler.scala 41:23]
  assign rx_handler_io_CMAC_out_tuser = io_CMAC_out_tuser; // @[PackageHandler.scala 41:23]
  assign rx_handler_io_CMAC_out_tkeep = io_CMAC_out_tkeep; // @[PackageHandler.scala 41:23]
  assign rx_handler_io_QDMA_c2h_stub_in_tready = io_QDMA_c2h_stub_in_tready; // @[PackageHandler.scala 40:23]
  assign rx_handler_io_reset_counter = io_reset_counter; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_sw_qid_mask = io_extern_config_c2h_sw_qid_mask; // @[PackageHandler.scala 43:33]
  assign rx_handler_io_extern_config_c2h_ipfilter_hash_seed = io_extern_config_c2h_ipfilter_hash_seed; // @[PackageHandler.scala 43:33]
endmodule
