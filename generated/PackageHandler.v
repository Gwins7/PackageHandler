module reduce_add_pipeline2(
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
  reg [31:0] cal_reg_0; // @[misc.scala 19:20]
  reg [31:0] cal_reg_1; // @[misc.scala 19:20]
  reg [31:0] cal_reg_2; // @[misc.scala 19:20]
  wire [31:0] _cal_reg_0_T_1 = io_in_vec_0 + io_in_vec_1; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_0_T_3 = io_in_vec_2 + io_in_vec_3; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_1_T_1 = io_in_vec_4 + io_in_vec_5; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_1_T_3 = io_in_vec_6 + io_in_vec_7; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_2_T_1 = io_in_vec_8 + io_in_vec_9; // @[misc.scala 31:44]
  wire [32:0] _cal_reg_2_T_4 = {{1'd0}, _cal_reg_2_T_1}; // @[misc.scala 31:44]
  wire [31:0] _io_out_sum_T_1 = cal_reg_0 + cal_reg_1; // @[misc.scala 34:37]
  wire [32:0] _io_out_sum_T_2 = {{1'd0}, cal_reg_2}; // @[misc.scala 34:37]
  assign io_out_sum = _io_out_sum_T_1 + _io_out_sum_T_2[31:0]; // @[misc.scala 34:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_1 + _cal_reg_0_T_3; // @[misc.scala 31:44]
    cal_reg_1 <= _cal_reg_1_T_1 + _cal_reg_1_T_3; // @[misc.scala 31:44]
    cal_reg_2 <= _cal_reg_2_T_4[31:0]; // @[misc.scala 31:44]
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
module reduce_add_pipeline2_1(
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
  reg [31:0] cal_reg_0; // @[misc.scala 19:20]
  reg [31:0] cal_reg_1; // @[misc.scala 19:20]
  reg [31:0] cal_reg_2; // @[misc.scala 19:20]
  reg [31:0] cal_reg_3; // @[misc.scala 19:20]
  wire [31:0] _cal_reg_0_T_1 = io_in_vec_0 + io_in_vec_1; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_0_T_3 = io_in_vec_2 + io_in_vec_3; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_0_T_5 = io_in_vec_4 + io_in_vec_5; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_0_T_7 = io_in_vec_6 + io_in_vec_7; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_0_T_9 = _cal_reg_0_T_1 + _cal_reg_0_T_3; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_0_T_11 = _cal_reg_0_T_5 + _cal_reg_0_T_7; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_1_T_1 = io_in_vec_8 + io_in_vec_9; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_1_T_3 = io_in_vec_10 + io_in_vec_11; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_1_T_5 = io_in_vec_12 + io_in_vec_13; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_1_T_7 = io_in_vec_14 + io_in_vec_15; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_1_T_9 = _cal_reg_1_T_1 + _cal_reg_1_T_3; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_1_T_11 = _cal_reg_1_T_5 + _cal_reg_1_T_7; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_2_T_1 = io_in_vec_16 + io_in_vec_17; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_2_T_3 = io_in_vec_18 + io_in_vec_19; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_2_T_5 = io_in_vec_20 + io_in_vec_21; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_2_T_7 = io_in_vec_22 + io_in_vec_23; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_2_T_9 = _cal_reg_2_T_1 + _cal_reg_2_T_3; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_2_T_11 = _cal_reg_2_T_5 + _cal_reg_2_T_7; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_3_T_1 = io_in_vec_24 + io_in_vec_25; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_3_T_3 = io_in_vec_26 + io_in_vec_27; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_3_T_5 = io_in_vec_28 + io_in_vec_29; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_3_T_7 = io_in_vec_30 + io_in_vec_31; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_3_T_9 = _cal_reg_3_T_1 + _cal_reg_3_T_3; // @[misc.scala 31:44]
  wire [31:0] _cal_reg_3_T_11 = _cal_reg_3_T_5 + _cal_reg_3_T_7; // @[misc.scala 31:44]
  wire [31:0] _io_out_sum_T_1 = cal_reg_0 + cal_reg_1; // @[misc.scala 34:37]
  wire [31:0] _io_out_sum_T_3 = cal_reg_2 + cal_reg_3; // @[misc.scala 34:37]
  assign io_out_sum = _io_out_sum_T_1 + _io_out_sum_T_3; // @[misc.scala 34:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_9 + _cal_reg_0_T_11; // @[misc.scala 31:44]
    cal_reg_1 <= _cal_reg_1_T_9 + _cal_reg_1_T_11; // @[misc.scala 31:44]
    cal_reg_2 <= _cal_reg_2_T_9 + _cal_reg_2_T_11; // @[misc.scala 31:44]
    cal_reg_3 <= _cal_reg_3_T_9 + _cal_reg_3_T_11; // @[misc.scala 31:44]
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
  input          io_in_tlast,
  input          io_in_tvalid,
  output         io_in_tready,
  output [511:0] io_out_tdata,
  output         io_out_tlast,
  output         io_out_tvalid,
  input          io_out_tready,
  input          io_reset_counter,
  output [31:0]  io_out_pack_counter,
  output [31:0]  io_out_err_counter
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
`endif // RANDOMIZE_REG_INIT
  reg [511:0] data_buf_reg [0:63]; // @[TxBufferFifo.scala 47:33]
  wire  data_buf_reg_rd_data_en; // @[TxBufferFifo.scala 47:33]
  wire [5:0] data_buf_reg_rd_data_addr; // @[TxBufferFifo.scala 47:33]
  wire [511:0] data_buf_reg_rd_data_data; // @[TxBufferFifo.scala 47:33]
  wire [511:0] data_buf_reg_MPORT_data; // @[TxBufferFifo.scala 47:33]
  wire [5:0] data_buf_reg_MPORT_addr; // @[TxBufferFifo.scala 47:33]
  wire  data_buf_reg_MPORT_mask; // @[TxBufferFifo.scala 47:33]
  wire  data_buf_reg_MPORT_en; // @[TxBufferFifo.scala 47:33]
  reg  data_buf_reg_rd_data_en_pipe_0;
  reg [5:0] data_buf_reg_rd_data_addr_pipe_0;
  wire  ip_chksum_cal_clock; // @[TxBufferFifo.scala 78:29]
  wire [31:0] ip_chksum_cal_io_in_vec_0; // @[TxBufferFifo.scala 78:29]
  wire [31:0] ip_chksum_cal_io_in_vec_1; // @[TxBufferFifo.scala 78:29]
  wire [31:0] ip_chksum_cal_io_in_vec_2; // @[TxBufferFifo.scala 78:29]
  wire [31:0] ip_chksum_cal_io_in_vec_3; // @[TxBufferFifo.scala 78:29]
  wire [31:0] ip_chksum_cal_io_in_vec_4; // @[TxBufferFifo.scala 78:29]
  wire [31:0] ip_chksum_cal_io_in_vec_5; // @[TxBufferFifo.scala 78:29]
  wire [31:0] ip_chksum_cal_io_in_vec_6; // @[TxBufferFifo.scala 78:29]
  wire [31:0] ip_chksum_cal_io_in_vec_7; // @[TxBufferFifo.scala 78:29]
  wire [31:0] ip_chksum_cal_io_in_vec_8; // @[TxBufferFifo.scala 78:29]
  wire [31:0] ip_chksum_cal_io_in_vec_9; // @[TxBufferFifo.scala 78:29]
  wire [31:0] ip_chksum_cal_io_out_sum; // @[TxBufferFifo.scala 78:29]
  wire  tcp_pld_chksum_cal_clock; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_0; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_1; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_2; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_3; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_4; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_5; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_6; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_7; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_8; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_9; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_10; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_11; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_12; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_13; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_14; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_15; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_16; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_17; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_18; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_19; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_20; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_21; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_22; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_23; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_24; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_25; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_26; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_27; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_28; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_29; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_30; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_31; // @[TxBufferFifo.scala 85:34]
  wire [31:0] tcp_pld_chksum_cal_io_out_sum; // @[TxBufferFifo.scala 85:34]
  wire  tcp_hdr_chksum_cal_clock; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_0; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_1; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_2; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_3; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_4; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_5; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_6; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_7; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_8; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_9; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_10; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_11; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_12; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_13; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_14; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_15; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_16; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_17; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_18; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_19; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_20; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_21; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_22; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_23; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_24; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_25; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_26; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_27; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_28; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_29; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_30; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_31; // @[TxBufferFifo.scala 91:34]
  wire [31:0] tcp_hdr_chksum_cal_io_out_sum; // @[TxBufferFifo.scala 91:34]
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[TxBufferFifo.scala 41:36]
  reg [511:0] in_tdata_reg; // @[Reg.scala 28:20]
  wire [511:0] _GEN_0 = in_shake_hand ? io_in_tdata : in_tdata_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_tlast_reg; // @[Reg.scala 28:20]
  reg  info_buf_reg_0_used; // @[TxBufferFifo.scala 50:29]
  reg  info_buf_reg_0_valid; // @[TxBufferFifo.scala 50:29]
  reg [31:0] info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 50:29]
  reg [31:0] info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 50:29]
  reg [5:0] info_buf_reg_0_burst; // @[TxBufferFifo.scala 50:29]
  reg  info_buf_reg_1_used; // @[TxBufferFifo.scala 50:29]
  reg  info_buf_reg_1_valid; // @[TxBufferFifo.scala 50:29]
  reg [31:0] info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 50:29]
  reg [31:0] info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 50:29]
  reg [5:0] info_buf_reg_1_burst; // @[TxBufferFifo.scala 50:29]
  reg [6:0] wr_index_reg; // @[TxBufferFifo.scala 51:29]
  reg [6:0] rd_index_reg; // @[TxBufferFifo.scala 52:29]
  reg [6:0] wr_pos_reg; // @[TxBufferFifo.scala 53:29]
  reg [6:0] rd_pos_reg; // @[TxBufferFifo.scala 54:29]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[TxBufferFifo.scala 59:40]
  reg [31:0] pack_counter; // @[TxBufferFifo.scala 62:29]
  reg [31:0] err_counter; // @[TxBufferFifo.scala 63:28]
  reg  is_overflowed; // @[TxBufferFifo.scala 68:30]
  wire [15:0] _ip_chksum_cal_io_in_vec_0_T_2 = {_GEN_0[119:112],_GEN_0[127:120]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_1_T_2 = {_GEN_0[135:128],_GEN_0[143:136]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_2_T_2 = {_GEN_0[151:144],_GEN_0[159:152]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_3_T_2 = {_GEN_0[167:160],_GEN_0[175:168]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_4_T_2 = {_GEN_0[183:176],_GEN_0[191:184]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_6_T_2 = {_GEN_0[215:208],_GEN_0[223:216]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_7_T_2 = {_GEN_0[231:224],_GEN_0[239:232]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_8_T_2 = {_GEN_0[247:240],_GEN_0[255:248]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_9_T_2 = {_GEN_0[263:256],_GEN_0[271:264]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_0_T_2 = {_GEN_0[7:0],_GEN_0[15:8]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_1_T_2 = {_GEN_0[23:16],_GEN_0[31:24]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_2_T_2 = {_GEN_0[39:32],_GEN_0[47:40]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_3_T_2 = {_GEN_0[55:48],_GEN_0[63:56]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_4_T_2 = {_GEN_0[71:64],_GEN_0[79:72]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_5_T_2 = {_GEN_0[87:80],_GEN_0[95:88]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_6_T_2 = {_GEN_0[103:96],_GEN_0[111:104]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_12_T_2 = {_GEN_0[199:192],_GEN_0[207:200]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_17_T_2 = {_GEN_0[279:272],_GEN_0[287:280]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_18_T_2 = {_GEN_0[295:288],_GEN_0[303:296]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_19_T_2 = {_GEN_0[311:304],_GEN_0[319:312]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_20_T_2 = {_GEN_0[327:320],_GEN_0[335:328]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_21_T_2 = {_GEN_0[343:336],_GEN_0[351:344]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_22_T_2 = {_GEN_0[359:352],_GEN_0[367:360]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_23_T_2 = {_GEN_0[375:368],_GEN_0[383:376]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_24_T_2 = {_GEN_0[391:384],_GEN_0[399:392]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_25_T_2 = {_GEN_0[407:400],_GEN_0[415:408]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_26_T_2 = {_GEN_0[423:416],_GEN_0[431:424]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_27_T_2 = {_GEN_0[439:432],_GEN_0[447:440]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_28_T_2 = {_GEN_0[455:448],_GEN_0[463:456]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_29_T_2 = {_GEN_0[471:464],_GEN_0[479:472]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_30_T_2 = {_GEN_0[487:480],_GEN_0[495:488]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_31_T_2 = {_GEN_0[503:496],_GEN_0[511:504]}; // @[Cat.scala 31:58]
  wire [31:0] tcp_hdr_chksum_result = tcp_hdr_chksum_cal_io_out_sum - 32'h14; // @[TxBufferFifo.scala 97:61]
  wire [31:0] _pack_counter_T_1 = pack_counter + 32'h1; // @[TxBufferFifo.scala 106:38]
  wire [5:0] _GEN_5 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[TxBufferFifo.scala 108:{46,46}]
  wire [11:0] _GEN_187 = {wr_index_reg, 5'h0}; // @[TxBufferFifo.scala 117:40]
  wire [13:0] _wr_pos_reg_T = {{2'd0}, _GEN_187}; // @[TxBufferFifo.scala 117:40]
  wire  _GEN_6 = ~in_tlast_reg | is_overflowed; // @[TxBufferFifo.scala 110:30 111:25 68:30]
  wire [13:0] _GEN_7 = ~in_tlast_reg ? {{7'd0}, wr_pos_reg} : _wr_pos_reg_T; // @[TxBufferFifo.scala 110:30 117:24 53:29]
  wire [31:0] _err_counter_T_1 = err_counter + 32'h1; // @[TxBufferFifo.scala 120:36]
  wire [5:0] _GEN_8 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 121:{36,36} 50:29]
  wire [5:0] _GEN_9 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 121:{36,36} 50:29]
  wire [31:0] _GEN_10 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 121:{36,36} 50:29]
  wire [31:0] _GEN_11 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 121:{36,36} 50:29]
  wire [31:0] _GEN_12 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 121:{36,36} 50:29]
  wire [31:0] _GEN_13 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 121:{36,36} 50:29]
  wire  _GEN_14 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 121:{36,36} 50:29]
  wire  _GEN_15 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 121:{36,36} 50:29]
  wire  _GEN_16 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_used; // @[TxBufferFifo.scala 121:{36,36} 50:29]
  wire  _GEN_17 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_used; // @[TxBufferFifo.scala 121:{36,36} 50:29]
  wire  _T_4 = ~is_overflowed; // @[TxBufferFifo.scala 125:15]
  wire  _GEN_19 = wr_index_reg[0] ? info_buf_reg_1_used : info_buf_reg_0_used; // @[TxBufferFifo.scala 127:{17,17}]
  wire  _GEN_188 = ~wr_index_reg[0]; // @[TxBufferFifo.scala 128:{45,45} 50:29]
  wire  _GEN_20 = ~wr_index_reg[0] | info_buf_reg_0_used; // @[TxBufferFifo.scala 128:{45,45} 50:29]
  wire  _GEN_21 = wr_index_reg[0] | info_buf_reg_1_used; // @[TxBufferFifo.scala 128:{45,45} 50:29]
  wire [31:0] _info_buf_reg_T_8_ip_chksum = ip_chksum_cal_io_out_sum; // @[TxBufferFifo.scala 129:{50,50}]
  wire [31:0] _GEN_22 = ~wr_index_reg[0] ? _info_buf_reg_T_8_ip_chksum : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 129:{50,50} 50:29]
  wire [31:0] _GEN_23 = wr_index_reg[0] ? _info_buf_reg_T_8_ip_chksum : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 129:{50,50} 50:29]
  wire [31:0] _GEN_24 = ~wr_index_reg[0] ? tcp_hdr_chksum_result : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 130:{51,51} 50:29]
  wire [31:0] _GEN_25 = wr_index_reg[0] ? tcp_hdr_chksum_result : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 130:{51,51} 50:29]
  wire [31:0] _GEN_27 = wr_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 132:{92,92}]
  wire [31:0] _info_buf_reg_tcp_chksum_T_2 = _GEN_27 + tcp_pld_chksum_cal_io_out_sum; // @[TxBufferFifo.scala 132:92]
  wire [31:0] _GEN_28 = ~wr_index_reg[0] ? _info_buf_reg_tcp_chksum_T_2 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 132:{51,51} 50:29]
  wire [31:0] _GEN_29 = wr_index_reg[0] ? _info_buf_reg_tcp_chksum_T_2 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 132:{51,51} 50:29]
  wire  _GEN_30 = ~_GEN_19 ? _GEN_20 : info_buf_reg_0_used; // @[TxBufferFifo.scala 127:51 50:29]
  wire  _GEN_31 = ~_GEN_19 ? _GEN_21 : info_buf_reg_1_used; // @[TxBufferFifo.scala 127:51 50:29]
  wire [31:0] _GEN_32 = ~_GEN_19 ? _GEN_22 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 127:51 50:29]
  wire [31:0] _GEN_33 = ~_GEN_19 ? _GEN_23 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 127:51 50:29]
  wire [31:0] _GEN_34 = ~_GEN_19 ? _GEN_24 : _GEN_28; // @[TxBufferFifo.scala 127:51]
  wire [31:0] _GEN_35 = ~_GEN_19 ? _GEN_25 : _GEN_29; // @[TxBufferFifo.scala 127:51]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_5 + 6'h1; // @[TxBufferFifo.scala 135:80]
  wire [5:0] _GEN_38 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 135:{44,44} 50:29]
  wire [5:0] _GEN_39 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 135:{44,44} 50:29]
  wire  _GEN_40 = _GEN_188 | info_buf_reg_0_valid; // @[TxBufferFifo.scala 137:{46,46} 50:29]
  wire  _GEN_41 = wr_index_reg[0] | info_buf_reg_1_valid; // @[TxBufferFifo.scala 137:{46,46} 50:29]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[TxBufferFifo.scala 37:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[TxBufferFifo.scala 37:19]
  wire [11:0] _GEN_190 = {_wr_index_reg_T_2, 5'h0}; // @[TxBufferFifo.scala 139:51]
  wire [13:0] _wr_pos_reg_T_4 = {{2'd0}, _GEN_190}; // @[TxBufferFifo.scala 139:51]
  wire [6:0] _wr_pos_reg_T_6 = wr_pos_reg + 7'h1; // @[TxBufferFifo.scala 141:38]
  wire  _GEN_42 = in_tlast_reg ? _GEN_40 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 136:31 50:29]
  wire  _GEN_43 = in_tlast_reg ? _GEN_41 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 136:31 50:29]
  wire [6:0] _GEN_44 = in_tlast_reg ? _wr_index_reg_T_2 : wr_index_reg; // @[TxBufferFifo.scala 136:31 138:26 51:29]
  wire [13:0] _GEN_45 = in_tlast_reg ? _wr_pos_reg_T_4 : {{7'd0}, _wr_pos_reg_T_6}; // @[TxBufferFifo.scala 136:31 139:24 141:24]
  wire  _GEN_46 = in_tlast_reg ? 1'h0 : is_overflowed; // @[TxBufferFifo.scala 143:35 145:25 68:30]
  wire [13:0] _GEN_47 = in_tlast_reg ? _wr_pos_reg_T : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 143:35 146:22 53:29]
  wire  _GEN_48 = ~is_overflowed ? _GEN_30 : info_buf_reg_0_used; // @[TxBufferFifo.scala 125:30 50:29]
  wire  _GEN_49 = ~is_overflowed ? _GEN_31 : info_buf_reg_1_used; // @[TxBufferFifo.scala 125:30 50:29]
  wire [31:0] _GEN_50 = ~is_overflowed ? _GEN_32 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 125:30 50:29]
  wire [31:0] _GEN_51 = ~is_overflowed ? _GEN_33 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 125:30 50:29]
  wire [31:0] _GEN_52 = ~is_overflowed ? _GEN_34 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 125:30 50:29]
  wire [31:0] _GEN_53 = ~is_overflowed ? _GEN_35 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 125:30 50:29]
  wire [5:0] _GEN_59 = ~is_overflowed ? _GEN_38 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 125:30 50:29]
  wire [5:0] _GEN_60 = ~is_overflowed ? _GEN_39 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 125:30 50:29]
  wire  _GEN_61 = ~is_overflowed ? _GEN_42 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 125:30 50:29]
  wire  _GEN_62 = ~is_overflowed ? _GEN_43 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 125:30 50:29]
  wire [6:0] _GEN_63 = ~is_overflowed ? _GEN_44 : wr_index_reg; // @[TxBufferFifo.scala 125:30 51:29]
  wire [13:0] _GEN_64 = ~is_overflowed ? _GEN_45 : _GEN_47; // @[TxBufferFifo.scala 125:30]
  wire  _GEN_65 = ~is_overflowed ? is_overflowed : _GEN_46; // @[TxBufferFifo.scala 125:30 68:30]
  wire [13:0] _GEN_67 = _GEN_5 == 6'h20 ? _GEN_7 : _GEN_64; // @[TxBufferFifo.scala 108:63]
  wire [5:0] _GEN_69 = _GEN_5 == 6'h20 ? _GEN_8 : _GEN_59; // @[TxBufferFifo.scala 108:63]
  wire [5:0] _GEN_70 = _GEN_5 == 6'h20 ? _GEN_9 : _GEN_60; // @[TxBufferFifo.scala 108:63]
  wire [31:0] _GEN_71 = _GEN_5 == 6'h20 ? _GEN_10 : _GEN_52; // @[TxBufferFifo.scala 108:63]
  wire [31:0] _GEN_72 = _GEN_5 == 6'h20 ? _GEN_11 : _GEN_53; // @[TxBufferFifo.scala 108:63]
  wire [31:0] _GEN_73 = _GEN_5 == 6'h20 ? _GEN_12 : _GEN_50; // @[TxBufferFifo.scala 108:63]
  wire [31:0] _GEN_74 = _GEN_5 == 6'h20 ? _GEN_13 : _GEN_51; // @[TxBufferFifo.scala 108:63]
  wire  _GEN_75 = _GEN_5 == 6'h20 ? _GEN_14 : _GEN_61; // @[TxBufferFifo.scala 108:63]
  wire  _GEN_76 = _GEN_5 == 6'h20 ? _GEN_15 : _GEN_62; // @[TxBufferFifo.scala 108:63]
  wire  _GEN_77 = _GEN_5 == 6'h20 ? _GEN_16 : _GEN_48; // @[TxBufferFifo.scala 108:63]
  wire  _GEN_78 = _GEN_5 == 6'h20 ? _GEN_17 : _GEN_49; // @[TxBufferFifo.scala 108:63]
  wire  _GEN_81 = _GEN_5 == 6'h20 ? 1'h0 : _T_4; // @[TxBufferFifo.scala 108:63 47:33]
  wire [13:0] _GEN_87 = in_shake_hand ? _GEN_67 : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 104:31 53:29]
  wire [5:0] _GEN_89 = in_shake_hand ? _GEN_69 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 104:31 50:29]
  wire [5:0] _GEN_90 = in_shake_hand ? _GEN_70 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 104:31 50:29]
  wire [31:0] _GEN_91 = in_shake_hand ? _GEN_71 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 104:31 50:29]
  wire [31:0] _GEN_92 = in_shake_hand ? _GEN_72 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 104:31 50:29]
  wire [31:0] _GEN_93 = in_shake_hand ? _GEN_73 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 104:31 50:29]
  wire [31:0] _GEN_94 = in_shake_hand ? _GEN_74 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 104:31 50:29]
  wire  _GEN_95 = in_shake_hand ? _GEN_75 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 104:31 50:29]
  wire  _GEN_96 = in_shake_hand ? _GEN_76 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 104:31 50:29]
  wire  _GEN_97 = in_shake_hand ? _GEN_77 : info_buf_reg_0_used; // @[TxBufferFifo.scala 104:31 50:29]
  wire  _GEN_98 = in_shake_hand ? _GEN_78 : info_buf_reg_1_used; // @[TxBufferFifo.scala 104:31 50:29]
  wire  _GEN_101 = in_shake_hand & _GEN_81; // @[TxBufferFifo.scala 104:31 47:33]
  wire [13:0] _GEN_108 = io_reset_counter ? {{7'd0}, wr_pos_reg} : _GEN_87; // @[TxBufferFifo.scala 100:26 53:29]
  wire [5:0] _GEN_109 = io_reset_counter ? info_buf_reg_0_burst : _GEN_89; // @[TxBufferFifo.scala 100:26 50:29]
  wire [5:0] _GEN_110 = io_reset_counter ? info_buf_reg_1_burst : _GEN_90; // @[TxBufferFifo.scala 100:26 50:29]
  wire [31:0] _GEN_111 = io_reset_counter ? info_buf_reg_0_tcp_chksum : _GEN_91; // @[TxBufferFifo.scala 100:26 50:29]
  wire [31:0] _GEN_112 = io_reset_counter ? info_buf_reg_1_tcp_chksum : _GEN_92; // @[TxBufferFifo.scala 100:26 50:29]
  wire [31:0] _GEN_113 = io_reset_counter ? info_buf_reg_0_ip_chksum : _GEN_93; // @[TxBufferFifo.scala 100:26 50:29]
  wire [31:0] _GEN_114 = io_reset_counter ? info_buf_reg_1_ip_chksum : _GEN_94; // @[TxBufferFifo.scala 100:26 50:29]
  wire  _GEN_115 = io_reset_counter ? info_buf_reg_0_valid : _GEN_95; // @[TxBufferFifo.scala 100:26 50:29]
  wire  _GEN_116 = io_reset_counter ? info_buf_reg_1_valid : _GEN_96; // @[TxBufferFifo.scala 100:26 50:29]
  wire  _GEN_117 = io_reset_counter ? info_buf_reg_0_used : _GEN_97; // @[TxBufferFifo.scala 100:26 50:29]
  wire  _GEN_118 = io_reset_counter ? info_buf_reg_1_used : _GEN_98; // @[TxBufferFifo.scala 100:26 50:29]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[TxBufferFifo.scala 153:38]
  wire [5:0] _GEN_128 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[TxBufferFifo.scala 156:{70,70}]
  wire  _io_out_tlast_T_1 = _GEN_128 == 6'h1; // @[TxBufferFifo.scala 156:70]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[TxBufferFifo.scala 37:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[TxBufferFifo.scala 37:19]
  wire [11:0] _GEN_192 = {_rd_pos_next_T_2, 5'h0}; // @[TxBufferFifo.scala 186:44]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_192}; // @[TxBufferFifo.scala 186:44]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[TxBufferFifo.scala 188:31]
  wire [13:0] _GEN_186 = _io_out_tlast_T_1 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[TxBufferFifo.scala 185:51 186:17 188:17]
  wire [6:0] rd_pos_next = _GEN_186[6:0];
  wire [6:0] _rd_data_T = out_shake_hand ? rd_pos_next : rd_pos_reg; // @[TxBufferFifo.scala 159:33]
  wire [31:0] _GEN_130 = rd_index_reg[0] ? info_buf_reg_1_ip_chksum : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 162:{60,60}]
  wire [15:0] _end_ip_chksum_T_8 = _GEN_130[31:16] + _GEN_130[15:0]; // @[TxBufferFifo.scala 163:71]
  wire [15:0] _end_ip_chksum_T_9 = ~_end_ip_chksum_T_8; // @[TxBufferFifo.scala 163:25]
  wire [15:0] _end_ip_chksum_T_12 = ~_GEN_130[15:0]; // @[TxBufferFifo.scala 163:118]
  wire [15:0] end_ip_chksum = _GEN_130[31:16] > 16'h0 ? _end_ip_chksum_T_9 : _end_ip_chksum_T_12; // @[TxBufferFifo.scala 162:23]
  wire [31:0] _GEN_138 = rd_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 165:{62,62}]
  wire [15:0] _end_tcp_chksum_T_8 = _GEN_138[31:16] + _GEN_138[15:0]; // @[TxBufferFifo.scala 166:72]
  wire [15:0] _end_tcp_chksum_T_9 = ~_end_tcp_chksum_T_8; // @[TxBufferFifo.scala 166:25]
  wire [15:0] _end_tcp_chksum_T_12 = ~_GEN_138[15:0]; // @[TxBufferFifo.scala 166:120]
  wire [15:0] end_tcp_chksum = _GEN_138[31:16] > 16'h0 ? _end_tcp_chksum_T_9 : _end_tcp_chksum_T_12; // @[TxBufferFifo.scala 165:24]
  wire [11:0] _GEN_193 = {rd_index_reg, 5'h0}; // @[TxBufferFifo.scala 171:52]
  wire [13:0] _io_out_tdata_T = {{2'd0}, _GEN_193}; // @[TxBufferFifo.scala 171:52]
  wire [13:0] _GEN_194 = {{7'd0}, rd_pos_reg}; // @[TxBufferFifo.scala 171:34]
  wire [511:0] _io_out_tdata_T_5 = {data_buf_reg_rd_data_data[511:416],end_tcp_chksum[7:0],end_tcp_chksum[15:8],
    data_buf_reg_rd_data_data[399:208],end_ip_chksum[7:0],end_ip_chksum[15:8],data_buf_reg_rd_data_data[191:0]}; // @[Cat.scala 31:58]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_128 - 6'h1; // @[TxBufferFifo.scala 182:76]
  wire [13:0] _GEN_195 = reset ? 14'h0 : _GEN_108; // @[TxBufferFifo.scala 53:{29,29}]
  reduce_add_pipeline2 ip_chksum_cal ( // @[TxBufferFifo.scala 78:29]
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
  reduce_add_pipeline2_1 tcp_pld_chksum_cal ( // @[TxBufferFifo.scala 85:34]
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
  reduce_add_pipeline2_1 tcp_hdr_chksum_cal ( // @[TxBufferFifo.scala 91:34]
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
  assign data_buf_reg_rd_data_data = data_buf_reg[data_buf_reg_rd_data_addr]; // @[TxBufferFifo.scala 47:33]
  assign data_buf_reg_MPORT_data = in_tdata_reg;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_reset_counter ? 1'h0 : _GEN_101;
  assign io_in_tready = ~buf_full; // @[TxBufferFifo.scala 61:19]
  assign io_out_tdata = _GEN_194 == _io_out_tdata_T ? _io_out_tdata_T_5 : data_buf_reg_rd_data_data; // @[TxBufferFifo.scala 171:22]
  assign io_out_tlast = io_out_tvalid & _GEN_128 == 6'h1; // @[TxBufferFifo.scala 156:34]
  assign io_out_tvalid = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[TxBufferFifo.scala 155:{17,17}]
  assign io_out_pack_counter = pack_counter; // @[TxBufferFifo.scala 65:23]
  assign io_out_err_counter = err_counter; // @[TxBufferFifo.scala 66:22]
  assign ip_chksum_cal_clock = clock;
  assign ip_chksum_cal_io_in_vec_0 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_2}; // @[TxBufferFifo.scala 81:37]
  assign ip_chksum_cal_io_in_vec_1 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_2}; // @[TxBufferFifo.scala 81:37]
  assign ip_chksum_cal_io_in_vec_2 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_2}; // @[TxBufferFifo.scala 81:37]
  assign ip_chksum_cal_io_in_vec_3 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_2}; // @[TxBufferFifo.scala 81:37]
  assign ip_chksum_cal_io_in_vec_4 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_2}; // @[TxBufferFifo.scala 81:37]
  assign ip_chksum_cal_io_in_vec_5 = 32'h0; // @[TxBufferFifo.scala 80:44]
  assign ip_chksum_cal_io_in_vec_6 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_2}; // @[TxBufferFifo.scala 81:37]
  assign ip_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_2}; // @[TxBufferFifo.scala 81:37]
  assign ip_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_2}; // @[TxBufferFifo.scala 81:37]
  assign ip_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_2}; // @[TxBufferFifo.scala 81:37]
  assign tcp_pld_chksum_cal_clock = clock;
  assign tcp_pld_chksum_cal_io_in_vec_0 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_0_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_1 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_1_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_2 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_2_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_3 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_3_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_4 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_4_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_5 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_5_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_6 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_6_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_10 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_11 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_12 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_12_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_25 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_25_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_pld_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_2}; // @[TxBufferFifo.scala 87:37]
  assign tcp_hdr_chksum_cal_clock = clock;
  assign tcp_hdr_chksum_cal_io_in_vec_0 = 32'h0; // @[TxBufferFifo.scala 95:42]
  assign tcp_hdr_chksum_cal_io_in_vec_1 = 32'h0; // @[TxBufferFifo.scala 95:42]
  assign tcp_hdr_chksum_cal_io_in_vec_2 = 32'h0; // @[TxBufferFifo.scala 95:42]
  assign tcp_hdr_chksum_cal_io_in_vec_3 = 32'h0; // @[TxBufferFifo.scala 95:42]
  assign tcp_hdr_chksum_cal_io_in_vec_4 = 32'h0; // @[TxBufferFifo.scala 95:42]
  assign tcp_hdr_chksum_cal_io_in_vec_5 = 32'h0; // @[TxBufferFifo.scala 95:42]
  assign tcp_hdr_chksum_cal_io_in_vec_6 = 32'h0; // @[TxBufferFifo.scala 95:42]
  assign tcp_hdr_chksum_cal_io_in_vec_7 = 32'h0; // @[TxBufferFifo.scala 95:42]
  assign tcp_hdr_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_9 = 32'h0; // @[TxBufferFifo.scala 95:42]
  assign tcp_hdr_chksum_cal_io_in_vec_10 = 32'h0; // @[TxBufferFifo.scala 95:42]
  assign tcp_hdr_chksum_cal_io_in_vec_11 = {{24'd0}, _GEN_0[191:184]}; // @[TxBufferFifo.scala 94:53]
  assign tcp_hdr_chksum_cal_io_in_vec_12 = 32'h0; // @[TxBufferFifo.scala 95:42]
  assign tcp_hdr_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_25 = 32'h0; // @[TxBufferFifo.scala 95:42]
  assign tcp_hdr_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_2}; // @[TxBufferFifo.scala 93:67]
  assign tcp_hdr_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_2}; // @[TxBufferFifo.scala 93:67]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[TxBufferFifo.scala 47:33]
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
    if (reset) begin // @[TxBufferFifo.scala 50:29]
      info_buf_reg_0_used <= 1'h0; // @[TxBufferFifo.scala 50:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 174:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 178:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 179:34]
          info_buf_reg_0_used <= 1'h0; // @[TxBufferFifo.scala 179:34]
        end else begin
          info_buf_reg_0_used <= _GEN_117;
        end
      end else begin
        info_buf_reg_0_used <= _GEN_117;
      end
    end else begin
      info_buf_reg_0_used <= _GEN_117;
    end
    if (reset) begin // @[TxBufferFifo.scala 50:29]
      info_buf_reg_0_valid <= 1'h0; // @[TxBufferFifo.scala 50:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 174:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 178:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 179:34]
          info_buf_reg_0_valid <= 1'h0; // @[TxBufferFifo.scala 179:34]
        end else begin
          info_buf_reg_0_valid <= _GEN_115;
        end
      end else begin
        info_buf_reg_0_valid <= _GEN_115;
      end
    end else begin
      info_buf_reg_0_valid <= _GEN_115;
    end
    if (reset) begin // @[TxBufferFifo.scala 50:29]
      info_buf_reg_0_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 50:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 174:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 178:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 179:34]
          info_buf_reg_0_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 179:34]
        end else begin
          info_buf_reg_0_ip_chksum <= _GEN_113;
        end
      end else begin
        info_buf_reg_0_ip_chksum <= _GEN_113;
      end
    end else begin
      info_buf_reg_0_ip_chksum <= _GEN_113;
    end
    if (reset) begin // @[TxBufferFifo.scala 50:29]
      info_buf_reg_0_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 50:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 174:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 178:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 179:34]
          info_buf_reg_0_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 179:34]
        end else begin
          info_buf_reg_0_tcp_chksum <= _GEN_111;
        end
      end else begin
        info_buf_reg_0_tcp_chksum <= _GEN_111;
      end
    end else begin
      info_buf_reg_0_tcp_chksum <= _GEN_111;
    end
    if (reset) begin // @[TxBufferFifo.scala 50:29]
      info_buf_reg_0_burst <= 6'h0; // @[TxBufferFifo.scala 50:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 174:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 178:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 179:34]
          info_buf_reg_0_burst <= 6'h0; // @[TxBufferFifo.scala 179:34]
        end else begin
          info_buf_reg_0_burst <= _GEN_109;
        end
      end else if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 182:40]
        info_buf_reg_0_burst <= _info_buf_reg_burst_T_5; // @[TxBufferFifo.scala 182:40]
      end else begin
        info_buf_reg_0_burst <= _GEN_109;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_109;
    end
    if (reset) begin // @[TxBufferFifo.scala 50:29]
      info_buf_reg_1_used <= 1'h0; // @[TxBufferFifo.scala 50:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 174:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 178:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 179:34]
          info_buf_reg_1_used <= 1'h0; // @[TxBufferFifo.scala 179:34]
        end else begin
          info_buf_reg_1_used <= _GEN_118;
        end
      end else begin
        info_buf_reg_1_used <= _GEN_118;
      end
    end else begin
      info_buf_reg_1_used <= _GEN_118;
    end
    if (reset) begin // @[TxBufferFifo.scala 50:29]
      info_buf_reg_1_valid <= 1'h0; // @[TxBufferFifo.scala 50:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 174:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 178:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 179:34]
          info_buf_reg_1_valid <= 1'h0; // @[TxBufferFifo.scala 179:34]
        end else begin
          info_buf_reg_1_valid <= _GEN_116;
        end
      end else begin
        info_buf_reg_1_valid <= _GEN_116;
      end
    end else begin
      info_buf_reg_1_valid <= _GEN_116;
    end
    if (reset) begin // @[TxBufferFifo.scala 50:29]
      info_buf_reg_1_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 50:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 174:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 178:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 179:34]
          info_buf_reg_1_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 179:34]
        end else begin
          info_buf_reg_1_ip_chksum <= _GEN_114;
        end
      end else begin
        info_buf_reg_1_ip_chksum <= _GEN_114;
      end
    end else begin
      info_buf_reg_1_ip_chksum <= _GEN_114;
    end
    if (reset) begin // @[TxBufferFifo.scala 50:29]
      info_buf_reg_1_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 50:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 174:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 178:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 179:34]
          info_buf_reg_1_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 179:34]
        end else begin
          info_buf_reg_1_tcp_chksum <= _GEN_112;
        end
      end else begin
        info_buf_reg_1_tcp_chksum <= _GEN_112;
      end
    end else begin
      info_buf_reg_1_tcp_chksum <= _GEN_112;
    end
    if (reset) begin // @[TxBufferFifo.scala 50:29]
      info_buf_reg_1_burst <= 6'h0; // @[TxBufferFifo.scala 50:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 174:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 178:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 179:34]
          info_buf_reg_1_burst <= 6'h0; // @[TxBufferFifo.scala 179:34]
        end else begin
          info_buf_reg_1_burst <= _GEN_110;
        end
      end else if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 182:40]
        info_buf_reg_1_burst <= _info_buf_reg_burst_T_5; // @[TxBufferFifo.scala 182:40]
      end else begin
        info_buf_reg_1_burst <= _GEN_110;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_110;
    end
    if (reset) begin // @[TxBufferFifo.scala 51:29]
      wr_index_reg <= 7'h0; // @[TxBufferFifo.scala 51:29]
    end else if (!(io_reset_counter)) begin // @[TxBufferFifo.scala 100:26]
      if (in_shake_hand) begin // @[TxBufferFifo.scala 104:31]
        if (!(_GEN_5 == 6'h20)) begin // @[TxBufferFifo.scala 108:63]
          wr_index_reg <= _GEN_63;
        end
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 52:29]
      rd_index_reg <= 7'h0; // @[TxBufferFifo.scala 52:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 174:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 178:53]
        rd_index_reg <= _rd_pos_next_T_2; // @[TxBufferFifo.scala 180:20]
      end
    end
    wr_pos_reg <= _GEN_195[6:0]; // @[TxBufferFifo.scala 53:{29,29}]
    if (reset) begin // @[TxBufferFifo.scala 54:29]
      rd_pos_reg <= 7'h0; // @[TxBufferFifo.scala 54:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 159:33]
      rd_pos_reg <= rd_pos_next;
    end
    if (reset) begin // @[TxBufferFifo.scala 62:29]
      pack_counter <= 32'h0; // @[TxBufferFifo.scala 62:29]
    end else if (io_reset_counter) begin // @[TxBufferFifo.scala 100:26]
      pack_counter <= 32'h0; // @[TxBufferFifo.scala 101:18]
    end else if (in_shake_hand) begin // @[TxBufferFifo.scala 104:31]
      if (in_tlast_reg) begin // @[TxBufferFifo.scala 105:27]
        pack_counter <= _pack_counter_T_1; // @[TxBufferFifo.scala 106:22]
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 63:28]
      err_counter <= 32'h0; // @[TxBufferFifo.scala 63:28]
    end else if (io_reset_counter) begin // @[TxBufferFifo.scala 100:26]
      err_counter <= 32'h0; // @[TxBufferFifo.scala 102:17]
    end else if (in_shake_hand) begin // @[TxBufferFifo.scala 104:31]
      if (_GEN_5 == 6'h20) begin // @[TxBufferFifo.scala 108:63]
        err_counter <= _err_counter_T_1; // @[TxBufferFifo.scala 120:21]
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 68:30]
      is_overflowed <= 1'h0; // @[TxBufferFifo.scala 68:30]
    end else if (!(io_reset_counter)) begin // @[TxBufferFifo.scala 100:26]
      if (in_shake_hand) begin // @[TxBufferFifo.scala 104:31]
        if (_GEN_5 == 6'h20) begin // @[TxBufferFifo.scala 108:63]
          is_overflowed <= _GEN_6;
        end else begin
          is_overflowed <= _GEN_65;
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
  info_buf_reg_0_used = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  info_buf_reg_0_valid = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  info_buf_reg_0_ip_chksum = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  info_buf_reg_0_tcp_chksum = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  info_buf_reg_0_burst = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  info_buf_reg_1_used = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  info_buf_reg_1_valid = _RAND_11[0:0];
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
  is_overflowed = _RAND_21[0:0];
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
  input          io_QDMA_h2c_stub_out_tuser,
  input          io_QDMA_h2c_stub_out_tlast,
  input          io_QDMA_h2c_stub_out_tvalid,
  output         io_QDMA_h2c_stub_out_tready,
  output [511:0] io_CMAC_in_tdata,
  output         io_CMAC_in_tlast,
  output         io_CMAC_in_tvalid,
  input          io_CMAC_in_tready,
  input          io_reset_counter,
  output [31:0]  io_h2c_pack_counter,
  output [31:0]  io_h2c_err_counter
);
  wire  tx_buffer_fifo_clock; // @[TxHandler.scala 29:30]
  wire  tx_buffer_fifo_reset; // @[TxHandler.scala 29:30]
  wire [511:0] tx_buffer_fifo_io_in_tdata; // @[TxHandler.scala 29:30]
  wire  tx_buffer_fifo_io_in_tlast; // @[TxHandler.scala 29:30]
  wire  tx_buffer_fifo_io_in_tvalid; // @[TxHandler.scala 29:30]
  wire  tx_buffer_fifo_io_in_tready; // @[TxHandler.scala 29:30]
  wire [511:0] tx_buffer_fifo_io_out_tdata; // @[TxHandler.scala 29:30]
  wire  tx_buffer_fifo_io_out_tlast; // @[TxHandler.scala 29:30]
  wire  tx_buffer_fifo_io_out_tvalid; // @[TxHandler.scala 29:30]
  wire  tx_buffer_fifo_io_out_tready; // @[TxHandler.scala 29:30]
  wire  tx_buffer_fifo_io_reset_counter; // @[TxHandler.scala 29:30]
  wire [31:0] tx_buffer_fifo_io_out_pack_counter; // @[TxHandler.scala 29:30]
  wire [31:0] tx_buffer_fifo_io_out_err_counter; // @[TxHandler.scala 29:30]
  TxBufferFifo tx_buffer_fifo ( // @[TxHandler.scala 29:30]
    .clock(tx_buffer_fifo_clock),
    .reset(tx_buffer_fifo_reset),
    .io_in_tdata(tx_buffer_fifo_io_in_tdata),
    .io_in_tlast(tx_buffer_fifo_io_in_tlast),
    .io_in_tvalid(tx_buffer_fifo_io_in_tvalid),
    .io_in_tready(tx_buffer_fifo_io_in_tready),
    .io_out_tdata(tx_buffer_fifo_io_out_tdata),
    .io_out_tlast(tx_buffer_fifo_io_out_tlast),
    .io_out_tvalid(tx_buffer_fifo_io_out_tvalid),
    .io_out_tready(tx_buffer_fifo_io_out_tready),
    .io_reset_counter(tx_buffer_fifo_io_reset_counter),
    .io_out_pack_counter(tx_buffer_fifo_io_out_pack_counter),
    .io_out_err_counter(tx_buffer_fifo_io_out_err_counter)
  );
  assign io_QDMA_h2c_stub_out_tready = tx_buffer_fifo_io_in_tready; // @[TxHandler.scala 33:31]
  assign io_CMAC_in_tdata = tx_buffer_fifo_io_out_tdata; // @[TxHandler.scala 40:20]
  assign io_CMAC_in_tlast = tx_buffer_fifo_io_out_tlast; // @[TxHandler.scala 42:20]
  assign io_CMAC_in_tvalid = tx_buffer_fifo_io_out_tvalid; // @[TxHandler.scala 41:21]
  assign io_h2c_pack_counter = tx_buffer_fifo_io_out_pack_counter; // @[TxHandler.scala 36:23]
  assign io_h2c_err_counter = tx_buffer_fifo_io_out_err_counter; // @[TxHandler.scala 37:22]
  assign tx_buffer_fifo_clock = clock;
  assign tx_buffer_fifo_reset = reset;
  assign tx_buffer_fifo_io_in_tdata = io_QDMA_h2c_stub_out_tdata; // @[TxHandler.scala 32:30]
  assign tx_buffer_fifo_io_in_tlast = io_QDMA_h2c_stub_out_tlast; // @[TxHandler.scala 30:30]
  assign tx_buffer_fifo_io_in_tvalid = io_QDMA_h2c_stub_out_tvalid & ~io_QDMA_h2c_stub_out_tuser; // @[TxHandler.scala 31:62]
  assign tx_buffer_fifo_io_out_tready = io_CMAC_in_tready; // @[TxHandler.scala 43:32]
  assign tx_buffer_fifo_io_reset_counter = io_reset_counter; // @[TxHandler.scala 35:35]
endmodule
module reduce_add_pipeline2_3(
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
  reg [7:0] cal_reg_0; // @[misc.scala 19:20]
  reg [7:0] cal_reg_1; // @[misc.scala 19:20]
  reg [7:0] cal_reg_2; // @[misc.scala 19:20]
  reg [7:0] cal_reg_3; // @[misc.scala 19:20]
  reg [7:0] cal_reg_4; // @[misc.scala 19:20]
  reg [7:0] cal_reg_5; // @[misc.scala 19:20]
  reg [7:0] cal_reg_6; // @[misc.scala 19:20]
  reg [7:0] cal_reg_7; // @[misc.scala 19:20]
  wire [7:0] _cal_reg_0_T_1 = io_in_vec_0 + io_in_vec_1; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_0_T_3 = io_in_vec_2 + io_in_vec_3; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_0_T_5 = io_in_vec_4 + io_in_vec_5; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_0_T_7 = io_in_vec_6 + io_in_vec_7; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_0_T_9 = _cal_reg_0_T_1 + _cal_reg_0_T_3; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_0_T_11 = _cal_reg_0_T_5 + _cal_reg_0_T_7; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_1_T_1 = io_in_vec_8 + io_in_vec_9; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_1_T_3 = io_in_vec_10 + io_in_vec_11; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_1_T_5 = io_in_vec_12 + io_in_vec_13; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_1_T_7 = io_in_vec_14 + io_in_vec_15; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_1_T_9 = _cal_reg_1_T_1 + _cal_reg_1_T_3; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_1_T_11 = _cal_reg_1_T_5 + _cal_reg_1_T_7; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_2_T_1 = io_in_vec_16 + io_in_vec_17; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_2_T_3 = io_in_vec_18 + io_in_vec_19; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_2_T_5 = io_in_vec_20 + io_in_vec_21; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_2_T_7 = io_in_vec_22 + io_in_vec_23; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_2_T_9 = _cal_reg_2_T_1 + _cal_reg_2_T_3; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_2_T_11 = _cal_reg_2_T_5 + _cal_reg_2_T_7; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_3_T_1 = io_in_vec_24 + io_in_vec_25; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_3_T_3 = io_in_vec_26 + io_in_vec_27; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_3_T_5 = io_in_vec_28 + io_in_vec_29; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_3_T_7 = io_in_vec_30 + io_in_vec_31; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_3_T_9 = _cal_reg_3_T_1 + _cal_reg_3_T_3; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_3_T_11 = _cal_reg_3_T_5 + _cal_reg_3_T_7; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_4_T_1 = io_in_vec_32 + io_in_vec_33; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_4_T_3 = io_in_vec_34 + io_in_vec_35; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_4_T_5 = io_in_vec_36 + io_in_vec_37; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_4_T_7 = io_in_vec_38 + io_in_vec_39; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_4_T_9 = _cal_reg_4_T_1 + _cal_reg_4_T_3; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_4_T_11 = _cal_reg_4_T_5 + _cal_reg_4_T_7; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_5_T_1 = io_in_vec_40 + io_in_vec_41; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_5_T_3 = io_in_vec_42 + io_in_vec_43; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_5_T_5 = io_in_vec_44 + io_in_vec_45; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_5_T_7 = io_in_vec_46 + io_in_vec_47; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_5_T_9 = _cal_reg_5_T_1 + _cal_reg_5_T_3; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_5_T_11 = _cal_reg_5_T_5 + _cal_reg_5_T_7; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_6_T_1 = io_in_vec_48 + io_in_vec_49; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_6_T_3 = io_in_vec_50 + io_in_vec_51; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_6_T_5 = io_in_vec_52 + io_in_vec_53; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_6_T_7 = io_in_vec_54 + io_in_vec_55; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_6_T_9 = _cal_reg_6_T_1 + _cal_reg_6_T_3; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_6_T_11 = _cal_reg_6_T_5 + _cal_reg_6_T_7; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_7_T_1 = io_in_vec_56 + io_in_vec_57; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_7_T_3 = io_in_vec_58 + io_in_vec_59; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_7_T_5 = io_in_vec_60 + io_in_vec_61; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_7_T_7 = io_in_vec_62 + io_in_vec_63; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_7_T_9 = _cal_reg_7_T_1 + _cal_reg_7_T_3; // @[misc.scala 31:44]
  wire [7:0] _cal_reg_7_T_11 = _cal_reg_7_T_5 + _cal_reg_7_T_7; // @[misc.scala 31:44]
  wire [7:0] _io_out_sum_T_1 = cal_reg_0 + cal_reg_1; // @[misc.scala 34:37]
  wire [7:0] _io_out_sum_T_3 = cal_reg_2 + cal_reg_3; // @[misc.scala 34:37]
  wire [7:0] _io_out_sum_T_5 = cal_reg_4 + cal_reg_5; // @[misc.scala 34:37]
  wire [7:0] _io_out_sum_T_7 = cal_reg_6 + cal_reg_7; // @[misc.scala 34:37]
  wire [7:0] _io_out_sum_T_9 = _io_out_sum_T_1 + _io_out_sum_T_3; // @[misc.scala 34:37]
  wire [7:0] _io_out_sum_T_11 = _io_out_sum_T_5 + _io_out_sum_T_7; // @[misc.scala 34:37]
  assign io_out_sum = _io_out_sum_T_9 + _io_out_sum_T_11; // @[misc.scala 34:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_9 + _cal_reg_0_T_11; // @[misc.scala 31:44]
    cal_reg_1 <= _cal_reg_1_T_9 + _cal_reg_1_T_11; // @[misc.scala 31:44]
    cal_reg_2 <= _cal_reg_2_T_9 + _cal_reg_2_T_11; // @[misc.scala 31:44]
    cal_reg_3 <= _cal_reg_3_T_9 + _cal_reg_3_T_11; // @[misc.scala 31:44]
    cal_reg_4 <= _cal_reg_4_T_9 + _cal_reg_4_T_11; // @[misc.scala 31:44]
    cal_reg_5 <= _cal_reg_5_T_9 + _cal_reg_5_T_11; // @[misc.scala 31:44]
    cal_reg_6 <= _cal_reg_6_T_9 + _cal_reg_6_T_11; // @[misc.scala 31:44]
    cal_reg_7 <= _cal_reg_7_T_9 + _cal_reg_7_T_11; // @[misc.scala 31:44]
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
  input          io_in_tlast,
  input          io_in_tvalid,
  output         io_in_tready,
  input  [63:0]  io_in_tkeep,
  input          io_in_tuser,
  output [15:0]  io_out_tlen,
  output [511:0] io_out_tdata,
  output         io_out_tlast,
  output         io_out_tvalid,
  input          io_out_tready,
  input          io_reset_counter,
  output [31:0]  io_out_pack_counter,
  output [31:0]  io_out_err_counter
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
`endif // RANDOMIZE_REG_INIT
  reg [511:0] data_buf_reg [0:63]; // @[RxBufferFifo.scala 53:33]
  wire  data_buf_reg_io_out_tdata_MPORT_en; // @[RxBufferFifo.scala 53:33]
  wire [5:0] data_buf_reg_io_out_tdata_MPORT_addr; // @[RxBufferFifo.scala 53:33]
  wire [511:0] data_buf_reg_io_out_tdata_MPORT_data; // @[RxBufferFifo.scala 53:33]
  wire [511:0] data_buf_reg_MPORT_data; // @[RxBufferFifo.scala 53:33]
  wire [5:0] data_buf_reg_MPORT_addr; // @[RxBufferFifo.scala 53:33]
  wire  data_buf_reg_MPORT_mask; // @[RxBufferFifo.scala 53:33]
  wire  data_buf_reg_MPORT_en; // @[RxBufferFifo.scala 53:33]
  reg  data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  reg [5:0] data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  wire  burst_size_cal_clock; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_0; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_1; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_2; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_3; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_4; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_5; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_6; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_7; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_8; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_9; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_10; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_11; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_12; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_13; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_14; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_15; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_16; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_17; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_18; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_19; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_20; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_21; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_22; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_23; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_24; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_25; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_26; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_27; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_28; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_29; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_30; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_31; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_32; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_33; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_34; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_35; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_36; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_37; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_38; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_39; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_40; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_41; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_42; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_43; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_44; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_45; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_46; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_47; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_48; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_49; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_50; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_51; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_52; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_53; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_54; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_55; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_56; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_57; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_58; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_59; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_60; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_61; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_62; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_in_vec_63; // @[RxBufferFifo.scala 64:30]
  wire [7:0] burst_size_cal_io_out_sum; // @[RxBufferFifo.scala 64:30]
  wire  ip_chksum_cal_clock; // @[RxBufferFifo.scala 87:29]
  wire [31:0] ip_chksum_cal_io_in_vec_0; // @[RxBufferFifo.scala 87:29]
  wire [31:0] ip_chksum_cal_io_in_vec_1; // @[RxBufferFifo.scala 87:29]
  wire [31:0] ip_chksum_cal_io_in_vec_2; // @[RxBufferFifo.scala 87:29]
  wire [31:0] ip_chksum_cal_io_in_vec_3; // @[RxBufferFifo.scala 87:29]
  wire [31:0] ip_chksum_cal_io_in_vec_4; // @[RxBufferFifo.scala 87:29]
  wire [31:0] ip_chksum_cal_io_in_vec_5; // @[RxBufferFifo.scala 87:29]
  wire [31:0] ip_chksum_cal_io_in_vec_6; // @[RxBufferFifo.scala 87:29]
  wire [31:0] ip_chksum_cal_io_in_vec_7; // @[RxBufferFifo.scala 87:29]
  wire [31:0] ip_chksum_cal_io_in_vec_8; // @[RxBufferFifo.scala 87:29]
  wire [31:0] ip_chksum_cal_io_in_vec_9; // @[RxBufferFifo.scala 87:29]
  wire [31:0] ip_chksum_cal_io_out_sum; // @[RxBufferFifo.scala 87:29]
  wire  tcp_pld_chksum_cal_clock; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_0; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_1; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_2; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_3; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_4; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_5; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_6; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_7; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_8; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_9; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_10; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_11; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_12; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_13; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_14; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_15; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_16; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_17; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_18; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_19; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_20; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_21; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_22; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_23; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_24; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_25; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_26; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_27; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_28; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_29; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_30; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_in_vec_31; // @[RxBufferFifo.scala 93:34]
  wire [31:0] tcp_pld_chksum_cal_io_out_sum; // @[RxBufferFifo.scala 93:34]
  wire  tcp_hdr_chksum_cal_clock; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_0; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_1; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_2; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_3; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_4; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_5; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_6; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_7; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_8; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_9; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_10; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_11; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_12; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_13; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_14; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_15; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_16; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_17; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_18; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_19; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_20; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_21; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_22; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_23; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_24; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_25; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_26; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_27; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_28; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_29; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_30; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_in_vec_31; // @[RxBufferFifo.scala 99:34]
  wire [31:0] tcp_hdr_chksum_cal_io_out_sum; // @[RxBufferFifo.scala 99:34]
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[RxBufferFifo.scala 45:36]
  reg [511:0] in_tdata_reg; // @[Reg.scala 28:20]
  wire [511:0] _GEN_0 = in_shake_hand ? io_in_tdata : in_tdata_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg [63:0] in_tkeep_reg; // @[Reg.scala 28:20]
  wire [63:0] _GEN_1 = in_shake_hand ? io_in_tkeep : in_tkeep_reg; // @[Reg.scala 29:18 28:20 29:22]
  reg  in_tuser_reg; // @[Reg.scala 28:20]
  reg  in_tlast_reg; // @[Reg.scala 28:20]
  reg  info_buf_reg_0_used; // @[RxBufferFifo.scala 56:29]
  reg  info_buf_reg_0_valid; // @[RxBufferFifo.scala 56:29]
  reg [15:0] info_buf_reg_0_len; // @[RxBufferFifo.scala 56:29]
  reg [31:0] info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 56:29]
  reg [31:0] info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 56:29]
  reg [5:0] info_buf_reg_0_burst; // @[RxBufferFifo.scala 56:29]
  reg  info_buf_reg_1_used; // @[RxBufferFifo.scala 56:29]
  reg  info_buf_reg_1_valid; // @[RxBufferFifo.scala 56:29]
  reg [15:0] info_buf_reg_1_len; // @[RxBufferFifo.scala 56:29]
  reg [31:0] info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 56:29]
  reg [31:0] info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 56:29]
  reg [5:0] info_buf_reg_1_burst; // @[RxBufferFifo.scala 56:29]
  reg [6:0] wr_index_reg; // @[RxBufferFifo.scala 57:29]
  reg [6:0] rd_index_reg; // @[RxBufferFifo.scala 58:29]
  reg [6:0] wr_pos_reg; // @[RxBufferFifo.scala 59:29]
  reg [6:0] rd_pos_reg; // @[RxBufferFifo.scala 60:29]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[RxBufferFifo.scala 70:40]
  reg [31:0] pack_counter; // @[RxBufferFifo.scala 73:29]
  reg [31:0] err_counter; // @[RxBufferFifo.scala 74:28]
  reg [31:0] wrong_chksum_counter; // @[RxBufferFifo.scala 75:37]
  reg  is_overflowed; // @[RxBufferFifo.scala 80:30]
  wire [15:0] _ip_chksum_cal_io_in_vec_0_T_2 = {_GEN_0[119:112],_GEN_0[127:120]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_1_T_2 = {_GEN_0[135:128],_GEN_0[143:136]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_2_T_2 = {_GEN_0[151:144],_GEN_0[159:152]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_3_T_2 = {_GEN_0[167:160],_GEN_0[175:168]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_4_T_2 = {_GEN_0[183:176],_GEN_0[191:184]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_5_T_2 = {_GEN_0[199:192],_GEN_0[207:200]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_6_T_2 = {_GEN_0[215:208],_GEN_0[223:216]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_7_T_2 = {_GEN_0[231:224],_GEN_0[239:232]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_8_T_2 = {_GEN_0[247:240],_GEN_0[255:248]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_cal_io_in_vec_9_T_2 = {_GEN_0[263:256],_GEN_0[271:264]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_0_T_2 = {_GEN_0[7:0],_GEN_0[15:8]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_1_T_2 = {_GEN_0[23:16],_GEN_0[31:24]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_2_T_2 = {_GEN_0[39:32],_GEN_0[47:40]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_3_T_2 = {_GEN_0[55:48],_GEN_0[63:56]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_4_T_2 = {_GEN_0[71:64],_GEN_0[79:72]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_5_T_2 = {_GEN_0[87:80],_GEN_0[95:88]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_6_T_2 = {_GEN_0[103:96],_GEN_0[111:104]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_17_T_2 = {_GEN_0[279:272],_GEN_0[287:280]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_18_T_2 = {_GEN_0[295:288],_GEN_0[303:296]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_19_T_2 = {_GEN_0[311:304],_GEN_0[319:312]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_20_T_2 = {_GEN_0[327:320],_GEN_0[335:328]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_21_T_2 = {_GEN_0[343:336],_GEN_0[351:344]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_22_T_2 = {_GEN_0[359:352],_GEN_0[367:360]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_23_T_2 = {_GEN_0[375:368],_GEN_0[383:376]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_24_T_2 = {_GEN_0[391:384],_GEN_0[399:392]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_25_T_2 = {_GEN_0[407:400],_GEN_0[415:408]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_26_T_2 = {_GEN_0[423:416],_GEN_0[431:424]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_27_T_2 = {_GEN_0[439:432],_GEN_0[447:440]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_28_T_2 = {_GEN_0[455:448],_GEN_0[463:456]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_29_T_2 = {_GEN_0[471:464],_GEN_0[479:472]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_30_T_2 = {_GEN_0[487:480],_GEN_0[495:488]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_cal_io_in_vec_31_T_2 = {_GEN_0[503:496],_GEN_0[511:504]}; // @[Cat.scala 31:58]
  wire [31:0] tcp_hdr_chksum_result = tcp_hdr_chksum_cal_io_out_sum - 32'h14; // @[RxBufferFifo.scala 105:61]
  wire [31:0] _pack_counter_T_1 = pack_counter + 32'h1; // @[RxBufferFifo.scala 114:36]
  wire [5:0] _GEN_7 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[RxBufferFifo.scala 116:{44,44}]
  wire [11:0] _GEN_248 = {wr_index_reg, 5'h0}; // @[RxBufferFifo.scala 125:38]
  wire [13:0] _wr_pos_reg_T = {{2'd0}, _GEN_248}; // @[RxBufferFifo.scala 125:38]
  wire  _GEN_8 = ~in_tlast_reg | is_overflowed; // @[RxBufferFifo.scala 118:28 119:23 80:30]
  wire [13:0] _GEN_9 = ~in_tlast_reg ? {{7'd0}, wr_pos_reg} : _wr_pos_reg_T; // @[RxBufferFifo.scala 118:28 125:22 59:29]
  wire [31:0] _err_counter_T_1 = err_counter + 32'h1; // @[RxBufferFifo.scala 128:34]
  wire [5:0] _GEN_10 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 129:{34,34} 56:29]
  wire [5:0] _GEN_11 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 129:{34,34} 56:29]
  wire [31:0] _GEN_12 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 129:{34,34} 56:29]
  wire [31:0] _GEN_13 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 129:{34,34} 56:29]
  wire [31:0] _GEN_14 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 129:{34,34} 56:29]
  wire [31:0] _GEN_15 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 129:{34,34} 56:29]
  wire [15:0] _GEN_16 = ~wr_index_reg[0] ? 16'h0 : info_buf_reg_0_len; // @[RxBufferFifo.scala 129:{34,34} 56:29]
  wire [15:0] _GEN_17 = wr_index_reg[0] ? 16'h0 : info_buf_reg_1_len; // @[RxBufferFifo.scala 129:{34,34} 56:29]
  wire  _GEN_18 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 129:{34,34} 56:29]
  wire  _GEN_19 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 129:{34,34} 56:29]
  wire  _GEN_20 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_used; // @[RxBufferFifo.scala 129:{34,34} 56:29]
  wire  _GEN_21 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_used; // @[RxBufferFifo.scala 129:{34,34} 56:29]
  wire  _T_6 = ~is_overflowed; // @[RxBufferFifo.scala 137:13]
  wire  _GEN_35 = wr_index_reg[0] ? info_buf_reg_1_used : info_buf_reg_0_used; // @[RxBufferFifo.scala 139:{15,15}]
  wire  _GEN_250 = ~wr_index_reg[0]; // @[RxBufferFifo.scala 140:{43,43} 56:29]
  wire  _GEN_36 = ~wr_index_reg[0] | info_buf_reg_0_used; // @[RxBufferFifo.scala 140:{43,43} 56:29]
  wire  _GEN_37 = wr_index_reg[0] | info_buf_reg_1_used; // @[RxBufferFifo.scala 140:{43,43} 56:29]
  wire [31:0] _info_buf_reg_T_10_ip_chksum = ip_chksum_cal_io_out_sum; // @[RxBufferFifo.scala 141:{48,48}]
  wire [31:0] _GEN_38 = ~wr_index_reg[0] ? _info_buf_reg_T_10_ip_chksum : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 141:{48,48} 56:29]
  wire [31:0] _GEN_39 = wr_index_reg[0] ? _info_buf_reg_T_10_ip_chksum : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 141:{48,48} 56:29]
  wire [31:0] _GEN_40 = ~wr_index_reg[0] ? tcp_hdr_chksum_result : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 142:{49,49} 56:29]
  wire [31:0] _GEN_41 = wr_index_reg[0] ? tcp_hdr_chksum_result : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 142:{49,49} 56:29]
  wire [31:0] _GEN_43 = wr_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 144:{90,90}]
  wire [31:0] _info_buf_reg_tcp_chksum_T_2 = _GEN_43 + tcp_pld_chksum_cal_io_out_sum; // @[RxBufferFifo.scala 144:90]
  wire [31:0] _GEN_44 = ~wr_index_reg[0] ? _info_buf_reg_tcp_chksum_T_2 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 144:{49,49} 56:29]
  wire [31:0] _GEN_45 = wr_index_reg[0] ? _info_buf_reg_tcp_chksum_T_2 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 144:{49,49} 56:29]
  wire  _GEN_46 = ~_GEN_35 ? _GEN_36 : info_buf_reg_0_used; // @[RxBufferFifo.scala 139:49 56:29]
  wire  _GEN_47 = ~_GEN_35 ? _GEN_37 : info_buf_reg_1_used; // @[RxBufferFifo.scala 139:49 56:29]
  wire [31:0] _GEN_48 = ~_GEN_35 ? _GEN_38 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 139:49 56:29]
  wire [31:0] _GEN_49 = ~_GEN_35 ? _GEN_39 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 139:49 56:29]
  wire [31:0] _GEN_50 = ~_GEN_35 ? _GEN_40 : _GEN_44; // @[RxBufferFifo.scala 139:49]
  wire [31:0] _GEN_51 = ~_GEN_35 ? _GEN_41 : _GEN_45; // @[RxBufferFifo.scala 139:49]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_7 + 6'h1; // @[RxBufferFifo.scala 148:78]
  wire [5:0] _GEN_54 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 148:{42,42} 56:29]
  wire [5:0] _GEN_55 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 148:{42,42} 56:29]
  wire [15:0] _GEN_57 = wr_index_reg[0] ? info_buf_reg_1_len : info_buf_reg_0_len; // @[RxBufferFifo.scala 149:{74,74}]
  wire [15:0] _GEN_251 = {{8'd0}, burst_size_cal_io_out_sum}; // @[RxBufferFifo.scala 149:74]
  wire [15:0] _info_buf_reg_len_T_2 = _GEN_57 + _GEN_251; // @[RxBufferFifo.scala 149:74]
  wire [15:0] _GEN_58 = ~wr_index_reg[0] ? _info_buf_reg_len_T_2 : info_buf_reg_0_len; // @[RxBufferFifo.scala 149:{40,40} 56:29]
  wire [15:0] _GEN_59 = wr_index_reg[0] ? _info_buf_reg_len_T_2 : info_buf_reg_1_len; // @[RxBufferFifo.scala 149:{40,40} 56:29]
  wire  _GEN_60 = _GEN_250 | info_buf_reg_0_valid; // @[RxBufferFifo.scala 151:{44,44} 56:29]
  wire  _GEN_61 = wr_index_reg[0] | info_buf_reg_1_valid; // @[RxBufferFifo.scala 151:{44,44} 56:29]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[RxBufferFifo.scala 41:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[RxBufferFifo.scala 41:19]
  wire [11:0] _GEN_253 = {_wr_index_reg_T_2, 5'h0}; // @[RxBufferFifo.scala 153:49]
  wire [13:0] _wr_pos_reg_T_5 = {{2'd0}, _GEN_253}; // @[RxBufferFifo.scala 153:49]
  wire [6:0] _wr_pos_reg_T_7 = wr_pos_reg + 7'h1; // @[RxBufferFifo.scala 155:36]
  wire  _GEN_62 = in_tlast_reg ? _GEN_60 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 150:29 56:29]
  wire  _GEN_63 = in_tlast_reg ? _GEN_61 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 150:29 56:29]
  wire [6:0] _GEN_64 = in_tlast_reg ? _wr_index_reg_T_2 : wr_index_reg; // @[RxBufferFifo.scala 150:29 152:24 57:29]
  wire [13:0] _GEN_65 = in_tlast_reg ? _wr_pos_reg_T_5 : {{7'd0}, _wr_pos_reg_T_7}; // @[RxBufferFifo.scala 150:29 153:22 155:22]
  wire  _GEN_66 = in_tlast_reg ? 1'h0 : is_overflowed; // @[RxBufferFifo.scala 157:33 159:25 80:30]
  wire [13:0] _GEN_67 = in_tlast_reg ? _wr_pos_reg_T : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 157:33 160:22 59:29]
  wire  _GEN_68 = ~is_overflowed ? _GEN_46 : info_buf_reg_0_used; // @[RxBufferFifo.scala 137:28 56:29]
  wire  _GEN_69 = ~is_overflowed ? _GEN_47 : info_buf_reg_1_used; // @[RxBufferFifo.scala 137:28 56:29]
  wire [31:0] _GEN_70 = ~is_overflowed ? _GEN_48 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 137:28 56:29]
  wire [31:0] _GEN_71 = ~is_overflowed ? _GEN_49 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 137:28 56:29]
  wire [31:0] _GEN_72 = ~is_overflowed ? _GEN_50 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 137:28 56:29]
  wire [31:0] _GEN_73 = ~is_overflowed ? _GEN_51 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 137:28 56:29]
  wire [5:0] _GEN_79 = ~is_overflowed ? _GEN_54 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 137:28 56:29]
  wire [5:0] _GEN_80 = ~is_overflowed ? _GEN_55 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 137:28 56:29]
  wire [15:0] _GEN_81 = ~is_overflowed ? _GEN_58 : info_buf_reg_0_len; // @[RxBufferFifo.scala 137:28 56:29]
  wire [15:0] _GEN_82 = ~is_overflowed ? _GEN_59 : info_buf_reg_1_len; // @[RxBufferFifo.scala 137:28 56:29]
  wire  _GEN_83 = ~is_overflowed ? _GEN_62 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 137:28 56:29]
  wire  _GEN_84 = ~is_overflowed ? _GEN_63 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 137:28 56:29]
  wire [6:0] _GEN_85 = ~is_overflowed ? _GEN_64 : wr_index_reg; // @[RxBufferFifo.scala 137:28 57:29]
  wire [13:0] _GEN_86 = ~is_overflowed ? _GEN_65 : _GEN_67; // @[RxBufferFifo.scala 137:28]
  wire  _GEN_87 = ~is_overflowed ? is_overflowed : _GEN_66; // @[RxBufferFifo.scala 137:28 80:30]
  wire [31:0] _GEN_88 = in_tlast_reg & in_tuser_reg ? _err_counter_T_1 : err_counter; // @[RxBufferFifo.scala 131:47 132:19 74:28]
  wire [13:0] _GEN_89 = in_tlast_reg & in_tuser_reg ? _wr_pos_reg_T : _GEN_86; // @[RxBufferFifo.scala 131:47 133:18]
  wire [5:0] _GEN_90 = in_tlast_reg & in_tuser_reg ? _GEN_10 : _GEN_79; // @[RxBufferFifo.scala 131:47]
  wire [5:0] _GEN_91 = in_tlast_reg & in_tuser_reg ? _GEN_11 : _GEN_80; // @[RxBufferFifo.scala 131:47]
  wire [31:0] _GEN_92 = in_tlast_reg & in_tuser_reg ? _GEN_12 : _GEN_72; // @[RxBufferFifo.scala 131:47]
  wire [31:0] _GEN_93 = in_tlast_reg & in_tuser_reg ? _GEN_13 : _GEN_73; // @[RxBufferFifo.scala 131:47]
  wire [31:0] _GEN_94 = in_tlast_reg & in_tuser_reg ? _GEN_14 : _GEN_70; // @[RxBufferFifo.scala 131:47]
  wire [31:0] _GEN_95 = in_tlast_reg & in_tuser_reg ? _GEN_15 : _GEN_71; // @[RxBufferFifo.scala 131:47]
  wire [15:0] _GEN_96 = in_tlast_reg & in_tuser_reg ? _GEN_16 : _GEN_81; // @[RxBufferFifo.scala 131:47]
  wire [15:0] _GEN_97 = in_tlast_reg & in_tuser_reg ? _GEN_17 : _GEN_82; // @[RxBufferFifo.scala 131:47]
  wire  _GEN_98 = in_tlast_reg & in_tuser_reg ? _GEN_18 : _GEN_83; // @[RxBufferFifo.scala 131:47]
  wire  _GEN_99 = in_tlast_reg & in_tuser_reg ? _GEN_19 : _GEN_84; // @[RxBufferFifo.scala 131:47]
  wire  _GEN_100 = in_tlast_reg & in_tuser_reg ? _GEN_20 : _GEN_68; // @[RxBufferFifo.scala 131:47]
  wire  _GEN_101 = in_tlast_reg & in_tuser_reg ? _GEN_21 : _GEN_69; // @[RxBufferFifo.scala 131:47]
  wire  _GEN_104 = in_tlast_reg & in_tuser_reg ? 1'h0 : _T_6; // @[RxBufferFifo.scala 131:47 53:33]
  wire [6:0] _GEN_107 = in_tlast_reg & in_tuser_reg ? wr_index_reg : _GEN_85; // @[RxBufferFifo.scala 131:47 57:29]
  wire  _GEN_108 = in_tlast_reg & in_tuser_reg ? is_overflowed : _GEN_87; // @[RxBufferFifo.scala 131:47 80:30]
  wire [13:0] _GEN_110 = _GEN_7 == 6'h20 ? _GEN_9 : _GEN_89; // @[RxBufferFifo.scala 116:61]
  wire [5:0] _GEN_112 = _GEN_7 == 6'h20 ? _GEN_10 : _GEN_90; // @[RxBufferFifo.scala 116:61]
  wire [5:0] _GEN_113 = _GEN_7 == 6'h20 ? _GEN_11 : _GEN_91; // @[RxBufferFifo.scala 116:61]
  wire [31:0] _GEN_114 = _GEN_7 == 6'h20 ? _GEN_12 : _GEN_92; // @[RxBufferFifo.scala 116:61]
  wire [31:0] _GEN_115 = _GEN_7 == 6'h20 ? _GEN_13 : _GEN_93; // @[RxBufferFifo.scala 116:61]
  wire [31:0] _GEN_116 = _GEN_7 == 6'h20 ? _GEN_14 : _GEN_94; // @[RxBufferFifo.scala 116:61]
  wire [31:0] _GEN_117 = _GEN_7 == 6'h20 ? _GEN_15 : _GEN_95; // @[RxBufferFifo.scala 116:61]
  wire [15:0] _GEN_118 = _GEN_7 == 6'h20 ? _GEN_16 : _GEN_96; // @[RxBufferFifo.scala 116:61]
  wire [15:0] _GEN_119 = _GEN_7 == 6'h20 ? _GEN_17 : _GEN_97; // @[RxBufferFifo.scala 116:61]
  wire  _GEN_120 = _GEN_7 == 6'h20 ? _GEN_18 : _GEN_98; // @[RxBufferFifo.scala 116:61]
  wire  _GEN_121 = _GEN_7 == 6'h20 ? _GEN_19 : _GEN_99; // @[RxBufferFifo.scala 116:61]
  wire  _GEN_122 = _GEN_7 == 6'h20 ? _GEN_20 : _GEN_100; // @[RxBufferFifo.scala 116:61]
  wire  _GEN_123 = _GEN_7 == 6'h20 ? _GEN_21 : _GEN_101; // @[RxBufferFifo.scala 116:61]
  wire  _GEN_126 = _GEN_7 == 6'h20 ? 1'h0 : _GEN_104; // @[RxBufferFifo.scala 116:61 53:33]
  wire [13:0] _GEN_132 = in_shake_hand ? _GEN_110 : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 112:29 59:29]
  wire [5:0] _GEN_134 = in_shake_hand ? _GEN_112 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 112:29 56:29]
  wire [5:0] _GEN_135 = in_shake_hand ? _GEN_113 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 112:29 56:29]
  wire [31:0] _GEN_136 = in_shake_hand ? _GEN_114 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 112:29 56:29]
  wire [31:0] _GEN_137 = in_shake_hand ? _GEN_115 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 112:29 56:29]
  wire [31:0] _GEN_138 = in_shake_hand ? _GEN_116 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 112:29 56:29]
  wire [31:0] _GEN_139 = in_shake_hand ? _GEN_117 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 112:29 56:29]
  wire [15:0] _GEN_140 = in_shake_hand ? _GEN_118 : info_buf_reg_0_len; // @[RxBufferFifo.scala 112:29 56:29]
  wire [15:0] _GEN_141 = in_shake_hand ? _GEN_119 : info_buf_reg_1_len; // @[RxBufferFifo.scala 112:29 56:29]
  wire  _GEN_142 = in_shake_hand ? _GEN_120 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 112:29 56:29]
  wire  _GEN_143 = in_shake_hand ? _GEN_121 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 112:29 56:29]
  wire  _GEN_144 = in_shake_hand ? _GEN_122 : info_buf_reg_0_used; // @[RxBufferFifo.scala 112:29 56:29]
  wire  _GEN_145 = in_shake_hand ? _GEN_123 : info_buf_reg_1_used; // @[RxBufferFifo.scala 112:29 56:29]
  wire  _GEN_148 = in_shake_hand & _GEN_126; // @[RxBufferFifo.scala 112:29 53:33]
  wire [13:0] _GEN_155 = io_reset_counter ? {{7'd0}, wr_pos_reg} : _GEN_132; // @[RxBufferFifo.scala 108:26 59:29]
  wire [5:0] _GEN_156 = io_reset_counter ? info_buf_reg_0_burst : _GEN_134; // @[RxBufferFifo.scala 108:26 56:29]
  wire [5:0] _GEN_157 = io_reset_counter ? info_buf_reg_1_burst : _GEN_135; // @[RxBufferFifo.scala 108:26 56:29]
  wire [31:0] _GEN_158 = io_reset_counter ? info_buf_reg_0_tcp_chksum : _GEN_136; // @[RxBufferFifo.scala 108:26 56:29]
  wire [31:0] _GEN_159 = io_reset_counter ? info_buf_reg_1_tcp_chksum : _GEN_137; // @[RxBufferFifo.scala 108:26 56:29]
  wire [31:0] _GEN_160 = io_reset_counter ? info_buf_reg_0_ip_chksum : _GEN_138; // @[RxBufferFifo.scala 108:26 56:29]
  wire [31:0] _GEN_161 = io_reset_counter ? info_buf_reg_1_ip_chksum : _GEN_139; // @[RxBufferFifo.scala 108:26 56:29]
  wire [15:0] _GEN_162 = io_reset_counter ? info_buf_reg_0_len : _GEN_140; // @[RxBufferFifo.scala 108:26 56:29]
  wire [15:0] _GEN_163 = io_reset_counter ? info_buf_reg_1_len : _GEN_141; // @[RxBufferFifo.scala 108:26 56:29]
  wire  _GEN_164 = io_reset_counter ? info_buf_reg_0_valid : _GEN_142; // @[RxBufferFifo.scala 108:26 56:29]
  wire  _GEN_165 = io_reset_counter ? info_buf_reg_1_valid : _GEN_143; // @[RxBufferFifo.scala 108:26 56:29]
  wire  _GEN_166 = io_reset_counter ? info_buf_reg_0_used : _GEN_144; // @[RxBufferFifo.scala 108:26 56:29]
  wire  _GEN_167 = io_reset_counter ? info_buf_reg_1_used : _GEN_145; // @[RxBufferFifo.scala 108:26 56:29]
  wire  _GEN_175 = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[RxBufferFifo.scala 166:{38,38}]
  wire  out_shake_hand = io_out_tready & _GEN_175; // @[RxBufferFifo.scala 166:38]
  wire [31:0] _GEN_177 = rd_index_reg[0] ? info_buf_reg_1_ip_chksum : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 169:{60,60}]
  wire [15:0] _end_ip_chksum_T_8 = _GEN_177[31:16] + _GEN_177[15:0]; // @[RxBufferFifo.scala 170:51]
  wire [15:0] _end_ip_chksum_T_9 = ~_end_ip_chksum_T_8; // @[RxBufferFifo.scala 170:5]
  wire [15:0] _end_ip_chksum_T_12 = ~_GEN_177[15:0]; // @[RxBufferFifo.scala 170:98]
  wire [15:0] end_ip_chksum = _GEN_177[31:16] > 16'h0 ? _end_ip_chksum_T_9 : _end_ip_chksum_T_12; // @[RxBufferFifo.scala 169:23]
  wire [31:0] _GEN_185 = rd_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 172:{62,62}]
  wire [15:0] _end_tcp_chksum_T_8 = _GEN_185[31:16] + _GEN_185[15:0]; // @[RxBufferFifo.scala 173:52]
  wire [15:0] _end_tcp_chksum_T_9 = ~_end_tcp_chksum_T_8; // @[RxBufferFifo.scala 173:5]
  wire [15:0] _end_tcp_chksum_T_12 = ~_GEN_185[15:0]; // @[RxBufferFifo.scala 173:100]
  wire [15:0] end_tcp_chksum = _GEN_185[31:16] > 16'h0 ? _end_tcp_chksum_T_9 : _end_tcp_chksum_T_12; // @[RxBufferFifo.scala 172:24]
  wire  _io_out_tvalid_T_1 = end_ip_chksum == 16'h0; // @[RxBufferFifo.scala 175:71]
  wire  _io_out_tvalid_T_3 = end_tcp_chksum == 16'h0; // @[RxBufferFifo.scala 175:99]
  wire [5:0] _GEN_197 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[RxBufferFifo.scala 177:{89,89}]
  wire  _io_out_tlast_T_2 = _GEN_197 == 6'h1; // @[RxBufferFifo.scala 177:89]
  wire  _wrong_chksum_counter_T_4 = io_out_tlast & ~(_io_out_tvalid_T_1 & _io_out_tvalid_T_3); // @[RxBufferFifo.scala 178:64]
  wire [31:0] _GEN_255 = {{31'd0}, _wrong_chksum_counter_T_4}; // @[RxBufferFifo.scala 178:48]
  wire [31:0] _wrong_chksum_counter_T_6 = wrong_chksum_counter + _GEN_255; // @[RxBufferFifo.scala 178:48]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[RxBufferFifo.scala 41:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[RxBufferFifo.scala 41:19]
  wire [11:0] _GEN_256 = {_rd_pos_next_T_2, 5'h0}; // @[RxBufferFifo.scala 196:44]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_256}; // @[RxBufferFifo.scala 196:44]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[RxBufferFifo.scala 198:31]
  wire [13:0] _GEN_247 = _io_out_tlast_T_2 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[RxBufferFifo.scala 195:51 196:17 198:17]
  wire [6:0] rd_pos_next = _GEN_247[6:0];
  wire [6:0] _io_out_tdata_T = out_shake_hand ? rd_pos_next : rd_pos_reg; // @[RxBufferFifo.scala 181:36]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_197 - 6'h1; // @[RxBufferFifo.scala 191:78]
  wire [13:0] _GEN_257 = reset ? 14'h0 : _GEN_155; // @[RxBufferFifo.scala 59:{29,29}]
  reduce_add_pipeline2_3 burst_size_cal ( // @[RxBufferFifo.scala 64:30]
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
  reduce_add_pipeline2 ip_chksum_cal ( // @[RxBufferFifo.scala 87:29]
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
  reduce_add_pipeline2_1 tcp_pld_chksum_cal ( // @[RxBufferFifo.scala 93:34]
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
  reduce_add_pipeline2_1 tcp_hdr_chksum_cal ( // @[RxBufferFifo.scala 99:34]
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
  assign data_buf_reg_io_out_tdata_MPORT_data = data_buf_reg[data_buf_reg_io_out_tdata_MPORT_addr]; // @[RxBufferFifo.scala 53:33]
  assign data_buf_reg_MPORT_data = in_tdata_reg;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_reset_counter ? 1'h0 : _GEN_148;
  assign io_in_tready = ~buf_full; // @[RxBufferFifo.scala 72:19]
  assign io_out_tlen = rd_index_reg[0] ? info_buf_reg_1_len : info_buf_reg_0_len; // @[RxBufferFifo.scala 176:{17,17}]
  assign io_out_tdata = data_buf_reg_io_out_tdata_MPORT_data; // @[RxBufferFifo.scala 181:17]
  assign io_out_tlast = _GEN_175 & _GEN_197 == 6'h1; // @[RxBufferFifo.scala 177:53]
  assign io_out_tvalid = _GEN_175 & end_ip_chksum == 16'h0 & end_tcp_chksum == 16'h0; // @[RxBufferFifo.scala 175:80]
  assign io_out_pack_counter = pack_counter; // @[RxBufferFifo.scala 77:23]
  assign io_out_err_counter = err_counter + wrong_chksum_counter; // @[RxBufferFifo.scala 78:37]
  assign burst_size_cal_clock = clock;
  assign burst_size_cal_io_in_vec_0 = {{7'd0}, _GEN_1[0]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_1 = {{7'd0}, _GEN_1[1]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_2 = {{7'd0}, _GEN_1[2]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_3 = {{7'd0}, _GEN_1[3]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_4 = {{7'd0}, _GEN_1[4]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_5 = {{7'd0}, _GEN_1[5]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_6 = {{7'd0}, _GEN_1[6]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_7 = {{7'd0}, _GEN_1[7]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_8 = {{7'd0}, _GEN_1[8]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_9 = {{7'd0}, _GEN_1[9]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_10 = {{7'd0}, _GEN_1[10]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_11 = {{7'd0}, _GEN_1[11]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_12 = {{7'd0}, _GEN_1[12]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_13 = {{7'd0}, _GEN_1[13]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_14 = {{7'd0}, _GEN_1[14]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_15 = {{7'd0}, _GEN_1[15]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_16 = {{7'd0}, _GEN_1[16]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_17 = {{7'd0}, _GEN_1[17]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_18 = {{7'd0}, _GEN_1[18]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_19 = {{7'd0}, _GEN_1[19]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_20 = {{7'd0}, _GEN_1[20]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_21 = {{7'd0}, _GEN_1[21]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_22 = {{7'd0}, _GEN_1[22]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_23 = {{7'd0}, _GEN_1[23]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_24 = {{7'd0}, _GEN_1[24]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_25 = {{7'd0}, _GEN_1[25]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_26 = {{7'd0}, _GEN_1[26]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_27 = {{7'd0}, _GEN_1[27]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_28 = {{7'd0}, _GEN_1[28]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_29 = {{7'd0}, _GEN_1[29]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_30 = {{7'd0}, _GEN_1[30]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_31 = {{7'd0}, _GEN_1[31]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_32 = {{7'd0}, _GEN_1[32]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_33 = {{7'd0}, _GEN_1[33]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_34 = {{7'd0}, _GEN_1[34]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_35 = {{7'd0}, _GEN_1[35]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_36 = {{7'd0}, _GEN_1[36]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_37 = {{7'd0}, _GEN_1[37]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_38 = {{7'd0}, _GEN_1[38]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_39 = {{7'd0}, _GEN_1[39]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_40 = {{7'd0}, _GEN_1[40]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_41 = {{7'd0}, _GEN_1[41]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_42 = {{7'd0}, _GEN_1[42]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_43 = {{7'd0}, _GEN_1[43]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_44 = {{7'd0}, _GEN_1[44]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_45 = {{7'd0}, _GEN_1[45]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_46 = {{7'd0}, _GEN_1[46]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_47 = {{7'd0}, _GEN_1[47]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_48 = {{7'd0}, _GEN_1[48]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_49 = {{7'd0}, _GEN_1[49]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_50 = {{7'd0}, _GEN_1[50]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_51 = {{7'd0}, _GEN_1[51]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_52 = {{7'd0}, _GEN_1[52]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_53 = {{7'd0}, _GEN_1[53]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_54 = {{7'd0}, _GEN_1[54]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_55 = {{7'd0}, _GEN_1[55]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_56 = {{7'd0}, _GEN_1[56]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_57 = {{7'd0}, _GEN_1[57]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_58 = {{7'd0}, _GEN_1[58]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_59 = {{7'd0}, _GEN_1[59]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_60 = {{7'd0}, _GEN_1[60]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_61 = {{7'd0}, _GEN_1[61]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_62 = {{7'd0}, _GEN_1[62]}; // @[RxBufferFifo.scala 65:53]
  assign burst_size_cal_io_in_vec_63 = {{7'd0}, _GEN_1[63]}; // @[RxBufferFifo.scala 65:53]
  assign ip_chksum_cal_clock = clock;
  assign ip_chksum_cal_io_in_vec_0 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_2}; // @[RxBufferFifo.scala 89:32]
  assign ip_chksum_cal_io_in_vec_1 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_2}; // @[RxBufferFifo.scala 89:32]
  assign ip_chksum_cal_io_in_vec_2 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_2}; // @[RxBufferFifo.scala 89:32]
  assign ip_chksum_cal_io_in_vec_3 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_2}; // @[RxBufferFifo.scala 89:32]
  assign ip_chksum_cal_io_in_vec_4 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_2}; // @[RxBufferFifo.scala 89:32]
  assign ip_chksum_cal_io_in_vec_5 = {{16'd0}, _ip_chksum_cal_io_in_vec_5_T_2}; // @[RxBufferFifo.scala 89:32]
  assign ip_chksum_cal_io_in_vec_6 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_2}; // @[RxBufferFifo.scala 89:32]
  assign ip_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_2}; // @[RxBufferFifo.scala 89:32]
  assign ip_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_2}; // @[RxBufferFifo.scala 89:32]
  assign ip_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_2}; // @[RxBufferFifo.scala 89:32]
  assign tcp_pld_chksum_cal_clock = clock;
  assign tcp_pld_chksum_cal_io_in_vec_0 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_0_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_1 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_1_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_2 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_2_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_3 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_3_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_4 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_4_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_5 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_5_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_6 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_6_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_7 = {{16'd0}, _ip_chksum_cal_io_in_vec_0_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_9 = {{16'd0}, _ip_chksum_cal_io_in_vec_2_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_10 = {{16'd0}, _ip_chksum_cal_io_in_vec_3_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_11 = {{16'd0}, _ip_chksum_cal_io_in_vec_4_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_12 = {{16'd0}, _ip_chksum_cal_io_in_vec_5_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_25 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_25_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_pld_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_2}; // @[RxBufferFifo.scala 95:37]
  assign tcp_hdr_chksum_cal_clock = clock;
  assign tcp_hdr_chksum_cal_io_in_vec_0 = 32'h0; // @[RxBufferFifo.scala 103:42]
  assign tcp_hdr_chksum_cal_io_in_vec_1 = 32'h0; // @[RxBufferFifo.scala 103:42]
  assign tcp_hdr_chksum_cal_io_in_vec_2 = 32'h0; // @[RxBufferFifo.scala 103:42]
  assign tcp_hdr_chksum_cal_io_in_vec_3 = 32'h0; // @[RxBufferFifo.scala 103:42]
  assign tcp_hdr_chksum_cal_io_in_vec_4 = 32'h0; // @[RxBufferFifo.scala 103:42]
  assign tcp_hdr_chksum_cal_io_in_vec_5 = 32'h0; // @[RxBufferFifo.scala 103:42]
  assign tcp_hdr_chksum_cal_io_in_vec_6 = 32'h0; // @[RxBufferFifo.scala 103:42]
  assign tcp_hdr_chksum_cal_io_in_vec_7 = 32'h0; // @[RxBufferFifo.scala 103:42]
  assign tcp_hdr_chksum_cal_io_in_vec_8 = {{16'd0}, _ip_chksum_cal_io_in_vec_1_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_9 = 32'h0; // @[RxBufferFifo.scala 103:42]
  assign tcp_hdr_chksum_cal_io_in_vec_10 = 32'h0; // @[RxBufferFifo.scala 103:42]
  assign tcp_hdr_chksum_cal_io_in_vec_11 = {{24'd0}, _GEN_0[191:184]}; // @[RxBufferFifo.scala 102:53]
  assign tcp_hdr_chksum_cal_io_in_vec_12 = 32'h0; // @[RxBufferFifo.scala 103:42]
  assign tcp_hdr_chksum_cal_io_in_vec_13 = {{16'd0}, _ip_chksum_cal_io_in_vec_6_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_14 = {{16'd0}, _ip_chksum_cal_io_in_vec_7_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_15 = {{16'd0}, _ip_chksum_cal_io_in_vec_8_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_16 = {{16'd0}, _ip_chksum_cal_io_in_vec_9_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_17 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_17_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_18 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_18_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_19 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_19_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_20 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_20_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_21 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_21_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_22 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_22_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_23 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_23_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_24 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_24_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_25 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_25_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_26 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_26_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_27 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_27_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_28 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_28_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_29 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_29_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_30 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_30_T_2}; // @[RxBufferFifo.scala 101:56]
  assign tcp_hdr_chksum_cal_io_in_vec_31 = {{16'd0}, _tcp_pld_chksum_cal_io_in_vec_31_T_2}; // @[RxBufferFifo.scala 101:56]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[RxBufferFifo.scala 53:33]
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
    if (reset) begin // @[RxBufferFifo.scala 56:29]
      info_buf_reg_0_used <= 1'h0; // @[RxBufferFifo.scala 56:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_0_used <= 1'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_0_used <= _GEN_166;
        end
      end else begin
        info_buf_reg_0_used <= _GEN_166;
      end
    end else begin
      info_buf_reg_0_used <= _GEN_166;
    end
    if (reset) begin // @[RxBufferFifo.scala 56:29]
      info_buf_reg_0_valid <= 1'h0; // @[RxBufferFifo.scala 56:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_0_valid <= 1'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_0_valid <= _GEN_164;
        end
      end else begin
        info_buf_reg_0_valid <= _GEN_164;
      end
    end else begin
      info_buf_reg_0_valid <= _GEN_164;
    end
    if (reset) begin // @[RxBufferFifo.scala 56:29]
      info_buf_reg_0_len <= 16'h0; // @[RxBufferFifo.scala 56:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_0_len <= 16'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_0_len <= _GEN_162;
        end
      end else begin
        info_buf_reg_0_len <= _GEN_162;
      end
    end else begin
      info_buf_reg_0_len <= _GEN_162;
    end
    if (reset) begin // @[RxBufferFifo.scala 56:29]
      info_buf_reg_0_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 56:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_0_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_0_ip_chksum <= _GEN_160;
        end
      end else begin
        info_buf_reg_0_ip_chksum <= _GEN_160;
      end
    end else begin
      info_buf_reg_0_ip_chksum <= _GEN_160;
    end
    if (reset) begin // @[RxBufferFifo.scala 56:29]
      info_buf_reg_0_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 56:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_0_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_0_tcp_chksum <= _GEN_158;
        end
      end else begin
        info_buf_reg_0_tcp_chksum <= _GEN_158;
      end
    end else begin
      info_buf_reg_0_tcp_chksum <= _GEN_158;
    end
    if (reset) begin // @[RxBufferFifo.scala 56:29]
      info_buf_reg_0_burst <= 6'h0; // @[RxBufferFifo.scala 56:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_0_burst <= 6'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_0_burst <= _GEN_156;
        end
      end else if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 191:42]
        info_buf_reg_0_burst <= _info_buf_reg_burst_T_5; // @[RxBufferFifo.scala 191:42]
      end else begin
        info_buf_reg_0_burst <= _GEN_156;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_156;
    end
    if (reset) begin // @[RxBufferFifo.scala 56:29]
      info_buf_reg_1_used <= 1'h0; // @[RxBufferFifo.scala 56:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_1_used <= 1'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_1_used <= _GEN_167;
        end
      end else begin
        info_buf_reg_1_used <= _GEN_167;
      end
    end else begin
      info_buf_reg_1_used <= _GEN_167;
    end
    if (reset) begin // @[RxBufferFifo.scala 56:29]
      info_buf_reg_1_valid <= 1'h0; // @[RxBufferFifo.scala 56:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_1_valid <= 1'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_1_valid <= _GEN_165;
        end
      end else begin
        info_buf_reg_1_valid <= _GEN_165;
      end
    end else begin
      info_buf_reg_1_valid <= _GEN_165;
    end
    if (reset) begin // @[RxBufferFifo.scala 56:29]
      info_buf_reg_1_len <= 16'h0; // @[RxBufferFifo.scala 56:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_1_len <= 16'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_1_len <= _GEN_163;
        end
      end else begin
        info_buf_reg_1_len <= _GEN_163;
      end
    end else begin
      info_buf_reg_1_len <= _GEN_163;
    end
    if (reset) begin // @[RxBufferFifo.scala 56:29]
      info_buf_reg_1_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 56:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_1_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_1_ip_chksum <= _GEN_161;
        end
      end else begin
        info_buf_reg_1_ip_chksum <= _GEN_161;
      end
    end else begin
      info_buf_reg_1_ip_chksum <= _GEN_161;
    end
    if (reset) begin // @[RxBufferFifo.scala 56:29]
      info_buf_reg_1_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 56:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_1_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_1_tcp_chksum <= _GEN_159;
        end
      end else begin
        info_buf_reg_1_tcp_chksum <= _GEN_159;
      end
    end else begin
      info_buf_reg_1_tcp_chksum <= _GEN_159;
    end
    if (reset) begin // @[RxBufferFifo.scala 56:29]
      info_buf_reg_1_burst <= 6'h0; // @[RxBufferFifo.scala 56:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 188:36]
          info_buf_reg_1_burst <= 6'h0; // @[RxBufferFifo.scala 188:36]
        end else begin
          info_buf_reg_1_burst <= _GEN_157;
        end
      end else if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 191:42]
        info_buf_reg_1_burst <= _info_buf_reg_burst_T_5; // @[RxBufferFifo.scala 191:42]
      end else begin
        info_buf_reg_1_burst <= _GEN_157;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_157;
    end
    if (reset) begin // @[RxBufferFifo.scala 57:29]
      wr_index_reg <= 7'h0; // @[RxBufferFifo.scala 57:29]
    end else if (!(io_reset_counter)) begin // @[RxBufferFifo.scala 108:26]
      if (in_shake_hand) begin // @[RxBufferFifo.scala 112:29]
        if (!(_GEN_7 == 6'h20)) begin // @[RxBufferFifo.scala 116:61]
          wr_index_reg <= _GEN_107;
        end
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 58:29]
      rd_index_reg <= 7'h0; // @[RxBufferFifo.scala 58:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 183:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 187:55]
        rd_index_reg <= _rd_pos_next_T_2; // @[RxBufferFifo.scala 189:22]
      end
    end
    wr_pos_reg <= _GEN_257[6:0]; // @[RxBufferFifo.scala 59:{29,29}]
    if (reset) begin // @[RxBufferFifo.scala 60:29]
      rd_pos_reg <= 7'h0; // @[RxBufferFifo.scala 60:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 181:36]
      rd_pos_reg <= rd_pos_next;
    end
    if (reset) begin // @[RxBufferFifo.scala 73:29]
      pack_counter <= 32'h0; // @[RxBufferFifo.scala 73:29]
    end else if (io_reset_counter) begin // @[RxBufferFifo.scala 108:26]
      pack_counter <= 32'h0; // @[RxBufferFifo.scala 109:18]
    end else if (in_shake_hand) begin // @[RxBufferFifo.scala 112:29]
      if (in_tlast_reg) begin // @[RxBufferFifo.scala 113:25]
        pack_counter <= _pack_counter_T_1; // @[RxBufferFifo.scala 114:20]
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 74:28]
      err_counter <= 32'h0; // @[RxBufferFifo.scala 74:28]
    end else if (io_reset_counter) begin // @[RxBufferFifo.scala 108:26]
      err_counter <= 32'h0; // @[RxBufferFifo.scala 110:17]
    end else if (in_shake_hand) begin // @[RxBufferFifo.scala 112:29]
      if (_GEN_7 == 6'h20) begin // @[RxBufferFifo.scala 116:61]
        err_counter <= _err_counter_T_1; // @[RxBufferFifo.scala 128:19]
      end else begin
        err_counter <= _GEN_88;
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 75:37]
      wrong_chksum_counter <= 32'h0; // @[RxBufferFifo.scala 75:37]
    end else begin
      wrong_chksum_counter <= _wrong_chksum_counter_T_6; // @[RxBufferFifo.scala 178:24]
    end
    if (reset) begin // @[RxBufferFifo.scala 80:30]
      is_overflowed <= 1'h0; // @[RxBufferFifo.scala 80:30]
    end else if (!(io_reset_counter)) begin // @[RxBufferFifo.scala 108:26]
      if (in_shake_hand) begin // @[RxBufferFifo.scala 112:29]
        if (_GEN_7 == 6'h20) begin // @[RxBufferFifo.scala 116:61]
          is_overflowed <= _GEN_8;
        end else begin
          is_overflowed <= _GEN_108;
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
  info_buf_reg_0_used = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  info_buf_reg_0_valid = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  info_buf_reg_0_len = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  info_buf_reg_0_ip_chksum = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  info_buf_reg_0_tcp_chksum = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  info_buf_reg_0_burst = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  info_buf_reg_1_used = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  info_buf_reg_1_valid = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  info_buf_reg_1_len = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  info_buf_reg_1_ip_chksum = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  info_buf_reg_1_tcp_chksum = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  info_buf_reg_1_burst = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  wr_index_reg = _RAND_19[6:0];
  _RAND_20 = {1{`RANDOM}};
  rd_index_reg = _RAND_20[6:0];
  _RAND_21 = {1{`RANDOM}};
  wr_pos_reg = _RAND_21[6:0];
  _RAND_22 = {1{`RANDOM}};
  rd_pos_reg = _RAND_22[6:0];
  _RAND_23 = {1{`RANDOM}};
  pack_counter = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  err_counter = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  wrong_chksum_counter = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  is_overflowed = _RAND_26[0:0];
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
  wire  grant_0 = io_in_mask[0]; // @[SoftwareRegWrapper.scala 54:25]
  wire  notgranted_0 = ~grant_0; // @[SoftwareRegWrapper.scala 55:20]
  wire  grant_1 = notgranted_0 & io_in_mask[1]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_1 = notgranted_0 & ~io_in_mask[1]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_2 = notgranted_1 & io_in_mask[2]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_2 = notgranted_1 & ~io_in_mask[2]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_3 = notgranted_2 & io_in_mask[3]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_3 = notgranted_2 & ~io_in_mask[3]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_4 = notgranted_3 & io_in_mask[4]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_4 = notgranted_3 & ~io_in_mask[4]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_5 = notgranted_4 & io_in_mask[5]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_5 = notgranted_4 & ~io_in_mask[5]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_6 = notgranted_5 & io_in_mask[6]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_6 = notgranted_5 & ~io_in_mask[6]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_7 = notgranted_6 & io_in_mask[7]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_7 = notgranted_6 & ~io_in_mask[7]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_8 = notgranted_7 & io_in_mask[8]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_8 = notgranted_7 & ~io_in_mask[8]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_9 = notgranted_8 & io_in_mask[9]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_9 = notgranted_8 & ~io_in_mask[9]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_10 = notgranted_9 & io_in_mask[10]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_10 = notgranted_9 & ~io_in_mask[10]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_11 = notgranted_10 & io_in_mask[11]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_11 = notgranted_10 & ~io_in_mask[11]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_12 = notgranted_11 & io_in_mask[12]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_12 = notgranted_11 & ~io_in_mask[12]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_13 = notgranted_12 & io_in_mask[13]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_13 = notgranted_12 & ~io_in_mask[13]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_14 = notgranted_13 & io_in_mask[14]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_14 = notgranted_13 & ~io_in_mask[14]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_15 = notgranted_14 & io_in_mask[15]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_15 = notgranted_14 & ~io_in_mask[15]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_16 = notgranted_15 & io_in_mask[16]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_16 = notgranted_15 & ~io_in_mask[16]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_17 = notgranted_16 & io_in_mask[17]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_17 = notgranted_16 & ~io_in_mask[17]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_18 = notgranted_17 & io_in_mask[18]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_18 = notgranted_17 & ~io_in_mask[18]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_19 = notgranted_18 & io_in_mask[19]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_19 = notgranted_18 & ~io_in_mask[19]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_20 = notgranted_19 & io_in_mask[20]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_20 = notgranted_19 & ~io_in_mask[20]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_21 = notgranted_20 & io_in_mask[21]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_21 = notgranted_20 & ~io_in_mask[21]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_22 = notgranted_21 & io_in_mask[22]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_22 = notgranted_21 & ~io_in_mask[22]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_23 = notgranted_22 & io_in_mask[23]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_23 = notgranted_22 & ~io_in_mask[23]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_24 = notgranted_23 & io_in_mask[24]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_24 = notgranted_23 & ~io_in_mask[24]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_25 = notgranted_24 & io_in_mask[25]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_25 = notgranted_24 & ~io_in_mask[25]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_26 = notgranted_25 & io_in_mask[26]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_26 = notgranted_25 & ~io_in_mask[26]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_27 = notgranted_26 & io_in_mask[27]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_27 = notgranted_26 & ~io_in_mask[27]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_28 = notgranted_27 & io_in_mask[28]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_28 = notgranted_27 & ~io_in_mask[28]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_29 = notgranted_28 & io_in_mask[29]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_29 = notgranted_28 & ~io_in_mask[29]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_30 = notgranted_29 & io_in_mask[30]; // @[SoftwareRegWrapper.scala 57:33]
  wire  notgranted_30 = notgranted_29 & ~io_in_mask[30]; // @[SoftwareRegWrapper.scala 58:38]
  wire  grant_31 = notgranted_30 & io_in_mask[31]; // @[SoftwareRegWrapper.scala 57:33]
  wire [1:0] _T_7 = grant_2 ? 2'h2 : {{1'd0}, grant_1}; // @[SoftwareRegWrapper.scala 61:73]
  wire [1:0] _T_11 = grant_3 ? 2'h3 : _T_7; // @[SoftwareRegWrapper.scala 61:73]
  wire [2:0] _T_15 = grant_4 ? 3'h4 : {{1'd0}, _T_11}; // @[SoftwareRegWrapper.scala 61:73]
  wire [2:0] _T_19 = grant_5 ? 3'h5 : _T_15; // @[SoftwareRegWrapper.scala 61:73]
  wire [2:0] _T_23 = grant_6 ? 3'h6 : _T_19; // @[SoftwareRegWrapper.scala 61:73]
  wire [2:0] _T_27 = grant_7 ? 3'h7 : _T_23; // @[SoftwareRegWrapper.scala 61:73]
  wire [3:0] _T_31 = grant_8 ? 4'h8 : {{1'd0}, _T_27}; // @[SoftwareRegWrapper.scala 61:73]
  wire [3:0] _T_35 = grant_9 ? 4'h9 : _T_31; // @[SoftwareRegWrapper.scala 61:73]
  wire [3:0] _T_39 = grant_10 ? 4'ha : _T_35; // @[SoftwareRegWrapper.scala 61:73]
  wire [3:0] _T_43 = grant_11 ? 4'hb : _T_39; // @[SoftwareRegWrapper.scala 61:73]
  wire [3:0] _T_47 = grant_12 ? 4'hc : _T_43; // @[SoftwareRegWrapper.scala 61:73]
  wire [3:0] _T_51 = grant_13 ? 4'hd : _T_47; // @[SoftwareRegWrapper.scala 61:73]
  wire [3:0] _T_55 = grant_14 ? 4'he : _T_51; // @[SoftwareRegWrapper.scala 61:73]
  wire [3:0] _T_59 = grant_15 ? 4'hf : _T_55; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_63 = grant_16 ? 5'h10 : {{1'd0}, _T_59}; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_67 = grant_17 ? 5'h11 : _T_63; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_71 = grant_18 ? 5'h12 : _T_67; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_75 = grant_19 ? 5'h13 : _T_71; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_79 = grant_20 ? 5'h14 : _T_75; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_83 = grant_21 ? 5'h15 : _T_79; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_87 = grant_22 ? 5'h16 : _T_83; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_91 = grant_23 ? 5'h17 : _T_87; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_95 = grant_24 ? 5'h18 : _T_91; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_99 = grant_25 ? 5'h19 : _T_95; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_103 = grant_26 ? 5'h1a : _T_99; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_107 = grant_27 ? 5'h1b : _T_103; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_111 = grant_28 ? 5'h1c : _T_107; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_115 = grant_29 ? 5'h1d : _T_111; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_119 = grant_30 ? 5'h1e : _T_115; // @[SoftwareRegWrapper.scala 61:73]
  wire [4:0] _T_123 = grant_31 ? 5'h1f : _T_119; // @[SoftwareRegWrapper.scala 61:73]
  assign io_out_dec = {{1'd0}, _T_123}; // @[SoftwareRegWrapper.scala 62:14]
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
  wire [31:0] arbitDecoder_io_in_mask; // @[SoftwareRegWrapper.scala 22:28]
  wire [5:0] arbitDecoder_io_out_dec; // @[SoftwareRegWrapper.scala 22:28]
  reg [31:0] sav_mask_reg; // @[SoftwareRegWrapper.scala 18:29]
  reg [31:0] cur_mask_reg; // @[SoftwareRegWrapper.scala 19:29]
  wire [94:0] _next_mask_T = 95'h1 << io_out_dec; // @[SoftwareRegWrapper.scala 24:48]
  wire [94:0] _next_mask_T_1 = ~_next_mask_T; // @[SoftwareRegWrapper.scala 24:33]
  wire [94:0] _GEN_4 = {{63'd0}, cur_mask_reg}; // @[SoftwareRegWrapper.scala 24:30]
  wire [94:0] _next_mask_T_2 = _GEN_4 & _next_mask_T_1; // @[SoftwareRegWrapper.scala 24:30]
  wire [31:0] next_mask = _next_mask_T_2[31:0]; // @[SoftwareRegWrapper.scala 21:23 24:13]
  ArbitDecoder arbitDecoder ( // @[SoftwareRegWrapper.scala 22:28]
    .io_in_mask(arbitDecoder_io_in_mask),
    .io_out_dec(arbitDecoder_io_out_dec)
  );
  assign io_out_dec = arbitDecoder_io_out_dec; // @[SoftwareRegWrapper.scala 40:14]
  assign arbitDecoder_io_in_mask = cur_mask_reg; // @[SoftwareRegWrapper.scala 25:27]
  always @(posedge clock) begin
    if (reset) begin // @[SoftwareRegWrapper.scala 18:29]
      sav_mask_reg <= io_in_mask; // @[SoftwareRegWrapper.scala 18:29]
    end else if (sav_mask_reg != io_in_mask) begin // @[SoftwareRegWrapper.scala 27:46]
      sav_mask_reg <= io_in_mask; // @[SoftwareRegWrapper.scala 29:18]
    end
    if (reset) begin // @[SoftwareRegWrapper.scala 19:29]
      cur_mask_reg <= io_in_mask; // @[SoftwareRegWrapper.scala 19:29]
    end else if (sav_mask_reg != io_in_mask) begin // @[SoftwareRegWrapper.scala 27:46]
      cur_mask_reg <= io_in_mask; // @[SoftwareRegWrapper.scala 28:18]
    end else if (io_in_tlast) begin // @[SoftwareRegWrapper.scala 31:28]
      if (next_mask == 32'h0) begin // @[SoftwareRegWrapper.scala 32:32]
        cur_mask_reg <= sav_mask_reg; // @[SoftwareRegWrapper.scala 33:22]
      end else begin
        cur_mask_reg <= next_mask; // @[SoftwareRegWrapper.scala 36:24]
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
module PackageFilter(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input  [15:0]  io_in_tlen,
  input  [31:0]  io_in_sw_qid_mask,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output [15:0]  io_out_tlen,
  output [5:0]   io_out_qid
);
  wire  qid_mask_wrapper_clock; // @[PackageFilter.scala 40:32]
  wire  qid_mask_wrapper_reset; // @[PackageFilter.scala 40:32]
  wire [31:0] qid_mask_wrapper_io_in_mask; // @[PackageFilter.scala 40:32]
  wire  qid_mask_wrapper_io_in_tlast; // @[PackageFilter.scala 40:32]
  wire [5:0] qid_mask_wrapper_io_out_dec; // @[PackageFilter.scala 40:32]
  SoftwareRegWrapper qid_mask_wrapper ( // @[PackageFilter.scala 40:32]
    .clock(qid_mask_wrapper_clock),
    .reset(qid_mask_wrapper_reset),
    .io_in_mask(qid_mask_wrapper_io_in_mask),
    .io_in_tlast(qid_mask_wrapper_io_in_tlast),
    .io_out_dec(qid_mask_wrapper_io_out_dec)
  );
  assign io_in_tready = io_out_tready; // @[PackageFilter.scala 28:17]
  assign io_out_tdata = io_in_tdata; // @[PackageFilter.scala 26:17]
  assign io_out_tvalid = io_in_tvalid; // @[PackageFilter.scala 27:17]
  assign io_out_tlast = io_in_tlast; // @[PackageFilter.scala 29:17]
  assign io_out_tlen = io_in_tlen; // @[PackageFilter.scala 30:17]
  assign io_out_qid = qid_mask_wrapper_io_out_dec; // @[PackageFilter.scala 44:14]
  assign qid_mask_wrapper_clock = clock;
  assign qid_mask_wrapper_reset = reset;
  assign qid_mask_wrapper_io_in_mask = io_in_sw_qid_mask; // @[PackageFilter.scala 41:31]
  assign qid_mask_wrapper_io_in_tlast = io_in_tvalid & io_in_tready & io_in_tlast; // @[PackageFilter.scala 42:63]
endmodule
module RxHandler(
  input          clock,
  input          reset,
  input  [511:0] io_CMAC_out_tdata,
  input  [63:0]  io_CMAC_out_tkeep,
  input          io_CMAC_out_tlast,
  input          io_CMAC_out_tvalid,
  output         io_CMAC_out_tready,
  input          io_CMAC_out_tuser,
  output [511:0] io_QDMA_c2h_stub_in_tdata,
  output         io_QDMA_c2h_stub_in_tuser,
  output         io_QDMA_c2h_stub_in_tlast,
  output         io_QDMA_c2h_stub_in_tvalid,
  input          io_QDMA_c2h_stub_in_tready,
  input          io_reset_counter,
  input  [31:0]  io_c2h_sw_qid_mask,
  output [31:0]  io_c2h_pack_counter,
  output [31:0]  io_c2h_err_counter
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  rx_buffer_fifo_clock; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_reset; // @[RxHandler.scala 49:30]
  wire [511:0] rx_buffer_fifo_io_in_tdata; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_in_tlast; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_in_tvalid; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_in_tready; // @[RxHandler.scala 49:30]
  wire [63:0] rx_buffer_fifo_io_in_tkeep; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_in_tuser; // @[RxHandler.scala 49:30]
  wire [15:0] rx_buffer_fifo_io_out_tlen; // @[RxHandler.scala 49:30]
  wire [511:0] rx_buffer_fifo_io_out_tdata; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_out_tlast; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_out_tvalid; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_out_tready; // @[RxHandler.scala 49:30]
  wire  rx_buffer_fifo_io_reset_counter; // @[RxHandler.scala 49:30]
  wire [31:0] rx_buffer_fifo_io_out_pack_counter; // @[RxHandler.scala 49:30]
  wire [31:0] rx_buffer_fifo_io_out_err_counter; // @[RxHandler.scala 49:30]
  wire  package_filter_clock; // @[RxHandler.scala 71:30]
  wire  package_filter_reset; // @[RxHandler.scala 71:30]
  wire [511:0] package_filter_io_in_tdata; // @[RxHandler.scala 71:30]
  wire  package_filter_io_in_tvalid; // @[RxHandler.scala 71:30]
  wire  package_filter_io_in_tready; // @[RxHandler.scala 71:30]
  wire  package_filter_io_in_tlast; // @[RxHandler.scala 71:30]
  wire [15:0] package_filter_io_in_tlen; // @[RxHandler.scala 71:30]
  wire [31:0] package_filter_io_in_sw_qid_mask; // @[RxHandler.scala 71:30]
  wire [511:0] package_filter_io_out_tdata; // @[RxHandler.scala 71:30]
  wire  package_filter_io_out_tvalid; // @[RxHandler.scala 71:30]
  wire  package_filter_io_out_tready; // @[RxHandler.scala 71:30]
  wire  package_filter_io_out_tlast; // @[RxHandler.scala 71:30]
  wire [15:0] package_filter_io_out_tlen; // @[RxHandler.scala 71:30]
  wire [5:0] package_filter_io_out_qid; // @[RxHandler.scala 71:30]
  reg  QDMA_c2h_stub_in_tuser_reg; // @[RxHandler.scala 62:43]
  wire  _GEN_0 = io_QDMA_c2h_stub_in_tvalid & io_QDMA_c2h_stub_in_tready ? io_QDMA_c2h_stub_in_tlast :
    QDMA_c2h_stub_in_tuser_reg; // @[RxHandler.scala 63:65 64:32 62:43]
  wire  _io_QDMA_c2h_stub_in_tlast_T = ~io_QDMA_c2h_stub_in_tuser; // @[RxHandler.scala 82:63]
  wire [10:0] Gen_c2h_hdr_qid = {{5'd0}, package_filter_io_out_qid}; // @[RxHandler.scala 88:27 95:21]
  wire [5:0] Gen_c2h_hdr_flow_id = Gen_c2h_hdr_qid[5:0]; // @[RxHandler.scala 88:27 93:25]
  wire [15:0] Gen_c2h_hdr_tdest = {{5'd0}, Gen_c2h_hdr_qid}; // @[RxHandler.scala 88:27 93:63]
  wire [15:0] Gen_c2h_hdr_pkt_len = package_filter_io_out_tlen; // @[RxHandler.scala 88:27 96:25]
  wire [511:0] _io_QDMA_c2h_stub_in_tdata_T = {362'h0,2'h0,4'h0,Gen_c2h_hdr_pkt_len,80'h0,Gen_c2h_hdr_tdest,10'h0,
    Gen_c2h_hdr_flow_id,5'h0,Gen_c2h_hdr_qid}; // @[RxHandler.scala 97:46]
  RxBufferFifo rx_buffer_fifo ( // @[RxHandler.scala 49:30]
    .clock(rx_buffer_fifo_clock),
    .reset(rx_buffer_fifo_reset),
    .io_in_tdata(rx_buffer_fifo_io_in_tdata),
    .io_in_tlast(rx_buffer_fifo_io_in_tlast),
    .io_in_tvalid(rx_buffer_fifo_io_in_tvalid),
    .io_in_tready(rx_buffer_fifo_io_in_tready),
    .io_in_tkeep(rx_buffer_fifo_io_in_tkeep),
    .io_in_tuser(rx_buffer_fifo_io_in_tuser),
    .io_out_tlen(rx_buffer_fifo_io_out_tlen),
    .io_out_tdata(rx_buffer_fifo_io_out_tdata),
    .io_out_tlast(rx_buffer_fifo_io_out_tlast),
    .io_out_tvalid(rx_buffer_fifo_io_out_tvalid),
    .io_out_tready(rx_buffer_fifo_io_out_tready),
    .io_reset_counter(rx_buffer_fifo_io_reset_counter),
    .io_out_pack_counter(rx_buffer_fifo_io_out_pack_counter),
    .io_out_err_counter(rx_buffer_fifo_io_out_err_counter)
  );
  PackageFilter package_filter ( // @[RxHandler.scala 71:30]
    .clock(package_filter_clock),
    .reset(package_filter_reset),
    .io_in_tdata(package_filter_io_in_tdata),
    .io_in_tvalid(package_filter_io_in_tvalid),
    .io_in_tready(package_filter_io_in_tready),
    .io_in_tlast(package_filter_io_in_tlast),
    .io_in_tlen(package_filter_io_in_tlen),
    .io_in_sw_qid_mask(package_filter_io_in_sw_qid_mask),
    .io_out_tdata(package_filter_io_out_tdata),
    .io_out_tvalid(package_filter_io_out_tvalid),
    .io_out_tready(package_filter_io_out_tready),
    .io_out_tlast(package_filter_io_out_tlast),
    .io_out_tlen(package_filter_io_out_tlen),
    .io_out_qid(package_filter_io_out_qid)
  );
  assign io_CMAC_out_tready = rx_buffer_fifo_io_in_tready; // @[RxHandler.scala 56:31]
  assign io_QDMA_c2h_stub_in_tdata = io_QDMA_c2h_stub_in_tuser ? _io_QDMA_c2h_stub_in_tdata_T :
    package_filter_io_out_tdata; // @[RxHandler.scala 100:31 86:34 97:31]
  assign io_QDMA_c2h_stub_in_tuser = QDMA_c2h_stub_in_tuser_reg & io_QDMA_c2h_stub_in_tvalid; // @[RxHandler.scala 67:59]
  assign io_QDMA_c2h_stub_in_tlast = package_filter_io_out_tlast & ~io_QDMA_c2h_stub_in_tuser; // @[RxHandler.scala 82:61]
  assign io_QDMA_c2h_stub_in_tvalid = package_filter_io_out_tvalid; // @[RxHandler.scala 80:30]
  assign io_c2h_pack_counter = rx_buffer_fifo_io_out_pack_counter; // @[RxHandler.scala 59:23]
  assign io_c2h_err_counter = rx_buffer_fifo_io_out_err_counter; // @[RxHandler.scala 60:22]
  assign rx_buffer_fifo_clock = clock;
  assign rx_buffer_fifo_reset = reset;
  assign rx_buffer_fifo_io_in_tdata = io_CMAC_out_tdata; // @[RxHandler.scala 51:42]
  assign rx_buffer_fifo_io_in_tlast = io_CMAC_out_tlast; // @[RxHandler.scala 53:42]
  assign rx_buffer_fifo_io_in_tvalid = io_CMAC_out_tvalid; // @[RxHandler.scala 52:42]
  assign rx_buffer_fifo_io_in_tkeep = io_CMAC_out_tkeep; // @[RxHandler.scala 54:42]
  assign rx_buffer_fifo_io_in_tuser = io_CMAC_out_tuser; // @[RxHandler.scala 55:42]
  assign rx_buffer_fifo_io_out_tready = package_filter_io_in_tready; // @[RxHandler.scala 77:32]
  assign rx_buffer_fifo_io_reset_counter = io_reset_counter; // @[RxHandler.scala 58:35]
  assign package_filter_clock = clock;
  assign package_filter_reset = reset;
  assign package_filter_io_in_tdata = rx_buffer_fifo_io_out_tdata; // @[RxHandler.scala 73:31]
  assign package_filter_io_in_tvalid = rx_buffer_fifo_io_out_tvalid; // @[RxHandler.scala 74:31]
  assign package_filter_io_in_tlast = rx_buffer_fifo_io_out_tlast; // @[RxHandler.scala 75:31]
  assign package_filter_io_in_tlen = rx_buffer_fifo_io_out_tlen; // @[RxHandler.scala 76:31]
  assign package_filter_io_in_sw_qid_mask = io_c2h_sw_qid_mask; // @[RxHandler.scala 79:36]
  assign package_filter_io_out_tready = io_QDMA_c2h_stub_in_tready & _io_QDMA_c2h_stub_in_tlast_T; // @[RxHandler.scala 83:62]
  always @(posedge clock) begin
    QDMA_c2h_stub_in_tuser_reg <= reset | _GEN_0; // @[RxHandler.scala 62:{43,43}]
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
  input          io_QDMA_h2c_stub_out_tuser,
  input          io_QDMA_h2c_stub_out_tlast,
  input          io_QDMA_h2c_stub_out_tvalid,
  output         io_QDMA_h2c_stub_out_tready,
  output [511:0] io_CMAC_in_tdata,
  output [63:0]  io_CMAC_in_tkeep,
  output         io_CMAC_in_tlast,
  output         io_CMAC_in_tvalid,
  input          io_CMAC_in_tready,
  input  [511:0] io_CMAC_out_tdata,
  input  [63:0]  io_CMAC_out_tkeep,
  input          io_CMAC_out_tlast,
  input          io_CMAC_out_tvalid,
  output         io_CMAC_out_tready,
  input          io_CMAC_out_tuser,
  output [511:0] io_QDMA_c2h_stub_in_tdata,
  output         io_QDMA_c2h_stub_in_tuser,
  output         io_QDMA_c2h_stub_in_tlast,
  output         io_QDMA_c2h_stub_in_tvalid,
  input          io_QDMA_c2h_stub_in_tready,
  input          io_reset_counter,
  input  [31:0]  io_c2h_sw_qid_mask,
  output [31:0]  io_c2h_pack_counter,
  output [31:0]  io_c2h_err_counter,
  output [31:0]  io_h2c_pack_counter,
  output [31:0]  io_h2c_err_counter
);
  wire  tx_handler_clock; // @[PackageHandler.scala 47:26]
  wire  tx_handler_reset; // @[PackageHandler.scala 47:26]
  wire [511:0] tx_handler_io_QDMA_h2c_stub_out_tdata; // @[PackageHandler.scala 47:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tuser; // @[PackageHandler.scala 47:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tlast; // @[PackageHandler.scala 47:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tvalid; // @[PackageHandler.scala 47:26]
  wire  tx_handler_io_QDMA_h2c_stub_out_tready; // @[PackageHandler.scala 47:26]
  wire [511:0] tx_handler_io_CMAC_in_tdata; // @[PackageHandler.scala 47:26]
  wire  tx_handler_io_CMAC_in_tlast; // @[PackageHandler.scala 47:26]
  wire  tx_handler_io_CMAC_in_tvalid; // @[PackageHandler.scala 47:26]
  wire  tx_handler_io_CMAC_in_tready; // @[PackageHandler.scala 47:26]
  wire  tx_handler_io_reset_counter; // @[PackageHandler.scala 47:26]
  wire [31:0] tx_handler_io_h2c_pack_counter; // @[PackageHandler.scala 47:26]
  wire [31:0] tx_handler_io_h2c_err_counter; // @[PackageHandler.scala 47:26]
  wire  rx_handler_clock; // @[PackageHandler.scala 64:26]
  wire  rx_handler_reset; // @[PackageHandler.scala 64:26]
  wire [511:0] rx_handler_io_CMAC_out_tdata; // @[PackageHandler.scala 64:26]
  wire [63:0] rx_handler_io_CMAC_out_tkeep; // @[PackageHandler.scala 64:26]
  wire  rx_handler_io_CMAC_out_tlast; // @[PackageHandler.scala 64:26]
  wire  rx_handler_io_CMAC_out_tvalid; // @[PackageHandler.scala 64:26]
  wire  rx_handler_io_CMAC_out_tready; // @[PackageHandler.scala 64:26]
  wire  rx_handler_io_CMAC_out_tuser; // @[PackageHandler.scala 64:26]
  wire [511:0] rx_handler_io_QDMA_c2h_stub_in_tdata; // @[PackageHandler.scala 64:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 64:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tlast; // @[PackageHandler.scala 64:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tvalid; // @[PackageHandler.scala 64:26]
  wire  rx_handler_io_QDMA_c2h_stub_in_tready; // @[PackageHandler.scala 64:26]
  wire  rx_handler_io_reset_counter; // @[PackageHandler.scala 64:26]
  wire [31:0] rx_handler_io_c2h_sw_qid_mask; // @[PackageHandler.scala 64:26]
  wire [31:0] rx_handler_io_c2h_pack_counter; // @[PackageHandler.scala 64:26]
  wire [31:0] rx_handler_io_c2h_err_counter; // @[PackageHandler.scala 64:26]
  TxHandler tx_handler ( // @[PackageHandler.scala 47:26]
    .clock(tx_handler_clock),
    .reset(tx_handler_reset),
    .io_QDMA_h2c_stub_out_tdata(tx_handler_io_QDMA_h2c_stub_out_tdata),
    .io_QDMA_h2c_stub_out_tuser(tx_handler_io_QDMA_h2c_stub_out_tuser),
    .io_QDMA_h2c_stub_out_tlast(tx_handler_io_QDMA_h2c_stub_out_tlast),
    .io_QDMA_h2c_stub_out_tvalid(tx_handler_io_QDMA_h2c_stub_out_tvalid),
    .io_QDMA_h2c_stub_out_tready(tx_handler_io_QDMA_h2c_stub_out_tready),
    .io_CMAC_in_tdata(tx_handler_io_CMAC_in_tdata),
    .io_CMAC_in_tlast(tx_handler_io_CMAC_in_tlast),
    .io_CMAC_in_tvalid(tx_handler_io_CMAC_in_tvalid),
    .io_CMAC_in_tready(tx_handler_io_CMAC_in_tready),
    .io_reset_counter(tx_handler_io_reset_counter),
    .io_h2c_pack_counter(tx_handler_io_h2c_pack_counter),
    .io_h2c_err_counter(tx_handler_io_h2c_err_counter)
  );
  RxHandler rx_handler ( // @[PackageHandler.scala 64:26]
    .clock(rx_handler_clock),
    .reset(rx_handler_reset),
    .io_CMAC_out_tdata(rx_handler_io_CMAC_out_tdata),
    .io_CMAC_out_tkeep(rx_handler_io_CMAC_out_tkeep),
    .io_CMAC_out_tlast(rx_handler_io_CMAC_out_tlast),
    .io_CMAC_out_tvalid(rx_handler_io_CMAC_out_tvalid),
    .io_CMAC_out_tready(rx_handler_io_CMAC_out_tready),
    .io_CMAC_out_tuser(rx_handler_io_CMAC_out_tuser),
    .io_QDMA_c2h_stub_in_tdata(rx_handler_io_QDMA_c2h_stub_in_tdata),
    .io_QDMA_c2h_stub_in_tuser(rx_handler_io_QDMA_c2h_stub_in_tuser),
    .io_QDMA_c2h_stub_in_tlast(rx_handler_io_QDMA_c2h_stub_in_tlast),
    .io_QDMA_c2h_stub_in_tvalid(rx_handler_io_QDMA_c2h_stub_in_tvalid),
    .io_QDMA_c2h_stub_in_tready(rx_handler_io_QDMA_c2h_stub_in_tready),
    .io_reset_counter(rx_handler_io_reset_counter),
    .io_c2h_sw_qid_mask(rx_handler_io_c2h_sw_qid_mask),
    .io_c2h_pack_counter(rx_handler_io_c2h_pack_counter),
    .io_c2h_err_counter(rx_handler_io_c2h_err_counter)
  );
  assign io_QDMA_h2c_stub_out_tready = tx_handler_io_QDMA_h2c_stub_out_tready; // @[PackageHandler.scala 48:32]
  assign io_CMAC_in_tdata = tx_handler_io_CMAC_in_tdata; // @[PackageHandler.scala 55:21]
  assign io_CMAC_in_tkeep = 64'hffffffffffffffff; // @[PackageHandler.scala 58:21]
  assign io_CMAC_in_tlast = tx_handler_io_CMAC_in_tlast; // @[PackageHandler.scala 57:21]
  assign io_CMAC_in_tvalid = tx_handler_io_CMAC_in_tvalid; // @[PackageHandler.scala 56:21]
  assign io_CMAC_out_tready = rx_handler_io_CMAC_out_tready; // @[PackageHandler.scala 65:23]
  assign io_QDMA_c2h_stub_in_tdata = rx_handler_io_QDMA_c2h_stub_in_tdata; // @[PackageHandler.scala 73:30]
  assign io_QDMA_c2h_stub_in_tuser = rx_handler_io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 76:30]
  assign io_QDMA_c2h_stub_in_tlast = rx_handler_io_QDMA_c2h_stub_in_tlast; // @[PackageHandler.scala 75:30]
  assign io_QDMA_c2h_stub_in_tvalid = rx_handler_io_QDMA_c2h_stub_in_tvalid; // @[PackageHandler.scala 74:30]
  assign io_c2h_pack_counter = rx_handler_io_c2h_pack_counter; // @[PackageHandler.scala 80:42]
  assign io_c2h_err_counter = rx_handler_io_c2h_err_counter; // @[PackageHandler.scala 81:37]
  assign io_h2c_pack_counter = tx_handler_io_h2c_pack_counter; // @[PackageHandler.scala 61:23]
  assign io_h2c_err_counter = tx_handler_io_h2c_err_counter; // @[PackageHandler.scala 62:22]
  assign tx_handler_clock = clock;
  assign tx_handler_reset = reset;
  assign tx_handler_io_QDMA_h2c_stub_out_tdata = io_QDMA_h2c_stub_out_tdata; // @[PackageHandler.scala 49:42]
  assign tx_handler_io_QDMA_h2c_stub_out_tuser = io_QDMA_h2c_stub_out_tuser; // @[PackageHandler.scala 52:42]
  assign tx_handler_io_QDMA_h2c_stub_out_tlast = io_QDMA_h2c_stub_out_tlast; // @[PackageHandler.scala 51:42]
  assign tx_handler_io_QDMA_h2c_stub_out_tvalid = io_QDMA_h2c_stub_out_tvalid; // @[PackageHandler.scala 50:42]
  assign tx_handler_io_CMAC_in_tready = io_CMAC_in_tready; // @[PackageHandler.scala 54:32]
  assign tx_handler_io_reset_counter = io_reset_counter; // @[PackageHandler.scala 60:31]
  assign rx_handler_clock = clock;
  assign rx_handler_reset = reset;
  assign rx_handler_io_CMAC_out_tdata = io_CMAC_out_tdata; // @[PackageHandler.scala 66:33]
  assign rx_handler_io_CMAC_out_tkeep = io_CMAC_out_tkeep; // @[PackageHandler.scala 69:33]
  assign rx_handler_io_CMAC_out_tlast = io_CMAC_out_tlast; // @[PackageHandler.scala 68:33]
  assign rx_handler_io_CMAC_out_tvalid = io_CMAC_out_tvalid; // @[PackageHandler.scala 67:33]
  assign rx_handler_io_CMAC_out_tuser = io_CMAC_out_tuser; // @[PackageHandler.scala 70:33]
  assign rx_handler_io_QDMA_c2h_stub_in_tready = io_QDMA_c2h_stub_in_tready; // @[PackageHandler.scala 72:41]
  assign rx_handler_io_reset_counter = io_reset_counter; // @[PackageHandler.scala 78:42]
  assign rx_handler_io_c2h_sw_qid_mask = io_c2h_sw_qid_mask; // @[PackageHandler.scala 79:42]
endmodule
