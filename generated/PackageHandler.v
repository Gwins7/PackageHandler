module reduce_add_64(
  input  [63:0] io_in_vec,
  output [7:0]  io_out_sum
);
  wire [7:0] add_vec_0 = {{7'd0}, io_in_vec[0]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_1 = {{7'd0}, io_in_vec[1]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_1 = add_vec_0 + add_vec_1; // @[misc.scala 13:37]
  wire [7:0] add_vec_2 = {{7'd0}, io_in_vec[2]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_3 = {{7'd0}, io_in_vec[3]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_3 = add_vec_2 + add_vec_3; // @[misc.scala 13:37]
  wire [7:0] add_vec_4 = {{7'd0}, io_in_vec[4]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_5 = {{7'd0}, io_in_vec[5]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_5 = add_vec_4 + add_vec_5; // @[misc.scala 13:37]
  wire [7:0] add_vec_6 = {{7'd0}, io_in_vec[6]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_7 = {{7'd0}, io_in_vec[7]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_7 = add_vec_6 + add_vec_7; // @[misc.scala 13:37]
  wire [7:0] add_vec_8 = {{7'd0}, io_in_vec[8]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_9 = {{7'd0}, io_in_vec[9]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_9 = add_vec_8 + add_vec_9; // @[misc.scala 13:37]
  wire [7:0] add_vec_10 = {{7'd0}, io_in_vec[10]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_11 = {{7'd0}, io_in_vec[11]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_11 = add_vec_10 + add_vec_11; // @[misc.scala 13:37]
  wire [7:0] add_vec_12 = {{7'd0}, io_in_vec[12]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_13 = {{7'd0}, io_in_vec[13]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_13 = add_vec_12 + add_vec_13; // @[misc.scala 13:37]
  wire [7:0] add_vec_14 = {{7'd0}, io_in_vec[14]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_15 = {{7'd0}, io_in_vec[15]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_15 = add_vec_14 + add_vec_15; // @[misc.scala 13:37]
  wire [7:0] add_vec_16 = {{7'd0}, io_in_vec[16]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_17 = {{7'd0}, io_in_vec[17]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_17 = add_vec_16 + add_vec_17; // @[misc.scala 13:37]
  wire [7:0] add_vec_18 = {{7'd0}, io_in_vec[18]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_19 = {{7'd0}, io_in_vec[19]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_19 = add_vec_18 + add_vec_19; // @[misc.scala 13:37]
  wire [7:0] add_vec_20 = {{7'd0}, io_in_vec[20]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_21 = {{7'd0}, io_in_vec[21]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_21 = add_vec_20 + add_vec_21; // @[misc.scala 13:37]
  wire [7:0] add_vec_22 = {{7'd0}, io_in_vec[22]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_23 = {{7'd0}, io_in_vec[23]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_23 = add_vec_22 + add_vec_23; // @[misc.scala 13:37]
  wire [7:0] add_vec_24 = {{7'd0}, io_in_vec[24]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_25 = {{7'd0}, io_in_vec[25]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_25 = add_vec_24 + add_vec_25; // @[misc.scala 13:37]
  wire [7:0] add_vec_26 = {{7'd0}, io_in_vec[26]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_27 = {{7'd0}, io_in_vec[27]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_27 = add_vec_26 + add_vec_27; // @[misc.scala 13:37]
  wire [7:0] add_vec_28 = {{7'd0}, io_in_vec[28]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_29 = {{7'd0}, io_in_vec[29]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_29 = add_vec_28 + add_vec_29; // @[misc.scala 13:37]
  wire [7:0] add_vec_30 = {{7'd0}, io_in_vec[30]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_31 = {{7'd0}, io_in_vec[31]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_31 = add_vec_30 + add_vec_31; // @[misc.scala 13:37]
  wire [7:0] add_vec_32 = {{7'd0}, io_in_vec[32]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_33 = {{7'd0}, io_in_vec[33]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_33 = add_vec_32 + add_vec_33; // @[misc.scala 13:37]
  wire [7:0] add_vec_34 = {{7'd0}, io_in_vec[34]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_35 = {{7'd0}, io_in_vec[35]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_35 = add_vec_34 + add_vec_35; // @[misc.scala 13:37]
  wire [7:0] add_vec_36 = {{7'd0}, io_in_vec[36]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_37 = {{7'd0}, io_in_vec[37]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_37 = add_vec_36 + add_vec_37; // @[misc.scala 13:37]
  wire [7:0] add_vec_38 = {{7'd0}, io_in_vec[38]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_39 = {{7'd0}, io_in_vec[39]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_39 = add_vec_38 + add_vec_39; // @[misc.scala 13:37]
  wire [7:0] add_vec_40 = {{7'd0}, io_in_vec[40]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_41 = {{7'd0}, io_in_vec[41]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_41 = add_vec_40 + add_vec_41; // @[misc.scala 13:37]
  wire [7:0] add_vec_42 = {{7'd0}, io_in_vec[42]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_43 = {{7'd0}, io_in_vec[43]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_43 = add_vec_42 + add_vec_43; // @[misc.scala 13:37]
  wire [7:0] add_vec_44 = {{7'd0}, io_in_vec[44]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_45 = {{7'd0}, io_in_vec[45]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_45 = add_vec_44 + add_vec_45; // @[misc.scala 13:37]
  wire [7:0] add_vec_46 = {{7'd0}, io_in_vec[46]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_47 = {{7'd0}, io_in_vec[47]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_47 = add_vec_46 + add_vec_47; // @[misc.scala 13:37]
  wire [7:0] add_vec_48 = {{7'd0}, io_in_vec[48]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_49 = {{7'd0}, io_in_vec[49]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_49 = add_vec_48 + add_vec_49; // @[misc.scala 13:37]
  wire [7:0] add_vec_50 = {{7'd0}, io_in_vec[50]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_51 = {{7'd0}, io_in_vec[51]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_51 = add_vec_50 + add_vec_51; // @[misc.scala 13:37]
  wire [7:0] add_vec_52 = {{7'd0}, io_in_vec[52]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_53 = {{7'd0}, io_in_vec[53]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_53 = add_vec_52 + add_vec_53; // @[misc.scala 13:37]
  wire [7:0] add_vec_54 = {{7'd0}, io_in_vec[54]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_55 = {{7'd0}, io_in_vec[55]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_55 = add_vec_54 + add_vec_55; // @[misc.scala 13:37]
  wire [7:0] add_vec_56 = {{7'd0}, io_in_vec[56]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_57 = {{7'd0}, io_in_vec[57]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_57 = add_vec_56 + add_vec_57; // @[misc.scala 13:37]
  wire [7:0] add_vec_58 = {{7'd0}, io_in_vec[58]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_59 = {{7'd0}, io_in_vec[59]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_59 = add_vec_58 + add_vec_59; // @[misc.scala 13:37]
  wire [7:0] add_vec_60 = {{7'd0}, io_in_vec[60]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_61 = {{7'd0}, io_in_vec[61]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_61 = add_vec_60 + add_vec_61; // @[misc.scala 13:37]
  wire [7:0] add_vec_62 = {{7'd0}, io_in_vec[62]}; // @[misc.scala 11:21 12:36]
  wire [7:0] add_vec_63 = {{7'd0}, io_in_vec[63]}; // @[misc.scala 11:21 12:36]
  wire [7:0] _io_out_sum_T_63 = add_vec_62 + add_vec_63; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_65 = _io_out_sum_T_1 + _io_out_sum_T_3; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_67 = _io_out_sum_T_5 + _io_out_sum_T_7; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_69 = _io_out_sum_T_9 + _io_out_sum_T_11; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_71 = _io_out_sum_T_13 + _io_out_sum_T_15; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_73 = _io_out_sum_T_17 + _io_out_sum_T_19; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_75 = _io_out_sum_T_21 + _io_out_sum_T_23; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_77 = _io_out_sum_T_25 + _io_out_sum_T_27; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_79 = _io_out_sum_T_29 + _io_out_sum_T_31; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_81 = _io_out_sum_T_33 + _io_out_sum_T_35; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_83 = _io_out_sum_T_37 + _io_out_sum_T_39; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_85 = _io_out_sum_T_41 + _io_out_sum_T_43; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_87 = _io_out_sum_T_45 + _io_out_sum_T_47; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_89 = _io_out_sum_T_49 + _io_out_sum_T_51; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_91 = _io_out_sum_T_53 + _io_out_sum_T_55; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_93 = _io_out_sum_T_57 + _io_out_sum_T_59; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_95 = _io_out_sum_T_61 + _io_out_sum_T_63; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_97 = _io_out_sum_T_65 + _io_out_sum_T_67; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_99 = _io_out_sum_T_69 + _io_out_sum_T_71; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_101 = _io_out_sum_T_73 + _io_out_sum_T_75; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_103 = _io_out_sum_T_77 + _io_out_sum_T_79; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_105 = _io_out_sum_T_81 + _io_out_sum_T_83; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_107 = _io_out_sum_T_85 + _io_out_sum_T_87; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_109 = _io_out_sum_T_89 + _io_out_sum_T_91; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_111 = _io_out_sum_T_93 + _io_out_sum_T_95; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_113 = _io_out_sum_T_97 + _io_out_sum_T_99; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_115 = _io_out_sum_T_101 + _io_out_sum_T_103; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_117 = _io_out_sum_T_105 + _io_out_sum_T_107; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_119 = _io_out_sum_T_109 + _io_out_sum_T_111; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_121 = _io_out_sum_T_113 + _io_out_sum_T_115; // @[misc.scala 13:37]
  wire [7:0] _io_out_sum_T_123 = _io_out_sum_T_117 + _io_out_sum_T_119; // @[misc.scala 13:37]
  assign io_out_sum = _io_out_sum_T_121 + _io_out_sum_T_123; // @[misc.scala 13:37]
endmodule
module PackageBufferFifo(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tlast,
  input          io_in_tvalid,
  output         io_in_tready,
  input  [63:0]  io_in_tkeep,
  output [15:0]  io_out_tlen,
  output [511:0] io_out_tdata,
  output         io_out_tlast,
  output         io_out_tvalid,
  input          io_out_tready,
  input          io_reset_counter,
  output [31:0]  io_out_pack_counter,
  output [31:0]  io_out_overflow_counter
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
`endif // RANDOMIZE_REG_INIT
  reg [511:0] data_buf_reg [0:63]; // @[PackageBufferFifo.scala 42:33]
  wire  data_buf_reg_io_out_tdata_MPORT_en; // @[PackageBufferFifo.scala 42:33]
  wire [5:0] data_buf_reg_io_out_tdata_MPORT_addr; // @[PackageBufferFifo.scala 42:33]
  wire [511:0] data_buf_reg_io_out_tdata_MPORT_data; // @[PackageBufferFifo.scala 42:33]
  wire [511:0] data_buf_reg_MPORT_data; // @[PackageBufferFifo.scala 42:33]
  wire [5:0] data_buf_reg_MPORT_addr; // @[PackageBufferFifo.scala 42:33]
  wire  data_buf_reg_MPORT_mask; // @[PackageBufferFifo.scala 42:33]
  wire  data_buf_reg_MPORT_en; // @[PackageBufferFifo.scala 42:33]
  reg  data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  reg [5:0] data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  wire [63:0] burst_add_64_io_in_vec; // @[PackageBufferFifo.scala 52:28]
  wire [7:0] burst_add_64_io_out_sum; // @[PackageBufferFifo.scala 52:28]
  reg  info_buf_reg_0_valid; // @[PackageBufferFifo.scala 45:29]
  reg [15:0] info_buf_reg_0_len; // @[PackageBufferFifo.scala 45:29]
  reg [5:0] info_buf_reg_0_burst; // @[PackageBufferFifo.scala 45:29]
  reg  info_buf_reg_1_valid; // @[PackageBufferFifo.scala 45:29]
  reg [15:0] info_buf_reg_1_len; // @[PackageBufferFifo.scala 45:29]
  reg [5:0] info_buf_reg_1_burst; // @[PackageBufferFifo.scala 45:29]
  reg [6:0] wr_index_reg; // @[PackageBufferFifo.scala 46:29]
  reg [6:0] rd_index_reg; // @[PackageBufferFifo.scala 47:29]
  reg [6:0] wr_pos_reg; // @[PackageBufferFifo.scala 48:29]
  reg [6:0] rd_pos_reg; // @[PackageBufferFifo.scala 49:29]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[PackageBufferFifo.scala 58:40]
  reg [31:0] pack_counter; // @[PackageBufferFifo.scala 61:29]
  reg [31:0] overflow_counter; // @[PackageBufferFifo.scala 62:33]
  reg  is_overflowed; // @[PackageBufferFifo.scala 67:30]
  wire [31:0] _pack_counter_T_1 = pack_counter + 32'h1; // @[PackageBufferFifo.scala 79:36]
  wire [5:0] _GEN_2 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[PackageBufferFifo.scala 81:{44,44}]
  wire [11:0] _GEN_146 = {wr_index_reg, 5'h0}; // @[PackageBufferFifo.scala 90:38]
  wire [13:0] _wr_pos_reg_T = {{2'd0}, _GEN_146}; // @[PackageBufferFifo.scala 90:38]
  wire  _GEN_3 = ~io_in_tlast | is_overflowed; // @[PackageBufferFifo.scala 83:27 84:23 67:30]
  wire [13:0] _GEN_4 = ~io_in_tlast ? {{7'd0}, wr_pos_reg} : _wr_pos_reg_T; // @[PackageBufferFifo.scala 83:27 48:29 90:22]
  wire [31:0] _overflow_counter_T_1 = overflow_counter + 32'h1; // @[PackageBufferFifo.scala 93:44]
  wire [5:0] _GEN_5 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_burst; // @[PackageBufferFifo.scala 45:29 94:{34,34}]
  wire [5:0] _GEN_6 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_burst; // @[PackageBufferFifo.scala 45:29 94:{34,34}]
  wire [15:0] _GEN_7 = ~wr_index_reg[0] ? 16'h0 : info_buf_reg_0_len; // @[PackageBufferFifo.scala 45:29 94:{34,34}]
  wire [15:0] _GEN_8 = wr_index_reg[0] ? 16'h0 : info_buf_reg_1_len; // @[PackageBufferFifo.scala 45:29 94:{34,34}]
  wire  _GEN_9 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_valid; // @[PackageBufferFifo.scala 45:29 94:{34,34}]
  wire  _GEN_10 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_valid; // @[PackageBufferFifo.scala 45:29 94:{34,34}]
  wire  _T_5 = ~is_overflowed; // @[PackageBufferFifo.scala 98:13]
  wire  _GEN_147 = ~wr_index_reg[0]; // @[PackageBufferFifo.scala 101:{43,43} 45:29]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_2 + 6'h1; // @[PackageBufferFifo.scala 104:78]
  wire [5:0] _GEN_21 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[PackageBufferFifo.scala 104:{42,42} 45:29]
  wire [5:0] _GEN_22 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[PackageBufferFifo.scala 104:{42,42} 45:29]
  wire [15:0] _GEN_24 = wr_index_reg[0] ? info_buf_reg_1_len : info_buf_reg_0_len; // @[PackageBufferFifo.scala 105:{74,74}]
  wire [15:0] _GEN_148 = {{8'd0}, burst_add_64_io_out_sum}; // @[PackageBufferFifo.scala 105:74]
  wire [15:0] _info_buf_reg_len_T_2 = _GEN_24 + _GEN_148; // @[PackageBufferFifo.scala 105:74]
  wire [15:0] _GEN_25 = ~wr_index_reg[0] ? _info_buf_reg_len_T_2 : info_buf_reg_0_len; // @[PackageBufferFifo.scala 105:{40,40} 45:29]
  wire [15:0] _GEN_26 = wr_index_reg[0] ? _info_buf_reg_len_T_2 : info_buf_reg_1_len; // @[PackageBufferFifo.scala 105:{40,40} 45:29]
  wire  _GEN_27 = _GEN_147 | info_buf_reg_0_valid; // @[PackageBufferFifo.scala 107:{44,44} 45:29]
  wire  _GEN_28 = wr_index_reg[0] | info_buf_reg_1_valid; // @[PackageBufferFifo.scala 107:{44,44} 45:29]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[PackageBufferFifo.scala 38:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[PackageBufferFifo.scala 38:19]
  wire [11:0] _GEN_150 = {_wr_index_reg_T_2, 5'h0}; // @[PackageBufferFifo.scala 109:49]
  wire [13:0] _wr_pos_reg_T_4 = {{2'd0}, _GEN_150}; // @[PackageBufferFifo.scala 109:49]
  wire [6:0] _wr_pos_reg_T_6 = wr_pos_reg + 7'h1; // @[PackageBufferFifo.scala 111:36]
  wire  _GEN_29 = io_in_tlast ? _GEN_27 : info_buf_reg_0_valid; // @[PackageBufferFifo.scala 106:28 45:29]
  wire  _GEN_30 = io_in_tlast ? _GEN_28 : info_buf_reg_1_valid; // @[PackageBufferFifo.scala 106:28 45:29]
  wire [6:0] _GEN_31 = io_in_tlast ? _wr_index_reg_T_2 : wr_index_reg; // @[PackageBufferFifo.scala 106:28 108:24 46:29]
  wire [13:0] _GEN_32 = io_in_tlast ? _wr_pos_reg_T_4 : {{7'd0}, _wr_pos_reg_T_6}; // @[PackageBufferFifo.scala 106:28 109:22 111:22]
  wire  _GEN_33 = io_in_tlast ? 1'h0 : is_overflowed; // @[PackageBufferFifo.scala 113:32 115:25 67:30]
  wire [13:0] _GEN_34 = io_in_tlast ? _wr_pos_reg_T : {{7'd0}, wr_pos_reg}; // @[PackageBufferFifo.scala 113:32 116:22 48:29]
  wire [5:0] _GEN_42 = ~is_overflowed ? _GEN_21 : info_buf_reg_0_burst; // @[PackageBufferFifo.scala 98:28 45:29]
  wire [5:0] _GEN_43 = ~is_overflowed ? _GEN_22 : info_buf_reg_1_burst; // @[PackageBufferFifo.scala 98:28 45:29]
  wire [15:0] _GEN_44 = ~is_overflowed ? _GEN_25 : info_buf_reg_0_len; // @[PackageBufferFifo.scala 98:28 45:29]
  wire [15:0] _GEN_45 = ~is_overflowed ? _GEN_26 : info_buf_reg_1_len; // @[PackageBufferFifo.scala 98:28 45:29]
  wire  _GEN_46 = ~is_overflowed ? _GEN_29 : info_buf_reg_0_valid; // @[PackageBufferFifo.scala 98:28 45:29]
  wire  _GEN_47 = ~is_overflowed ? _GEN_30 : info_buf_reg_1_valid; // @[PackageBufferFifo.scala 98:28 45:29]
  wire [6:0] _GEN_48 = ~is_overflowed ? _GEN_31 : wr_index_reg; // @[PackageBufferFifo.scala 98:28 46:29]
  wire [13:0] _GEN_49 = ~is_overflowed ? _GEN_32 : _GEN_34; // @[PackageBufferFifo.scala 98:28]
  wire  _GEN_50 = ~is_overflowed ? is_overflowed : _GEN_33; // @[PackageBufferFifo.scala 98:28 67:30]
  wire [13:0] _GEN_52 = _GEN_2 == 6'h20 ? _GEN_4 : _GEN_49; // @[PackageBufferFifo.scala 81:61]
  wire [5:0] _GEN_54 = _GEN_2 == 6'h20 ? _GEN_5 : _GEN_42; // @[PackageBufferFifo.scala 81:61]
  wire [5:0] _GEN_55 = _GEN_2 == 6'h20 ? _GEN_6 : _GEN_43; // @[PackageBufferFifo.scala 81:61]
  wire [15:0] _GEN_56 = _GEN_2 == 6'h20 ? _GEN_7 : _GEN_44; // @[PackageBufferFifo.scala 81:61]
  wire [15:0] _GEN_57 = _GEN_2 == 6'h20 ? _GEN_8 : _GEN_45; // @[PackageBufferFifo.scala 81:61]
  wire  _GEN_58 = _GEN_2 == 6'h20 ? _GEN_9 : _GEN_46; // @[PackageBufferFifo.scala 81:61]
  wire  _GEN_59 = _GEN_2 == 6'h20 ? _GEN_10 : _GEN_47; // @[PackageBufferFifo.scala 81:61]
  wire  _GEN_64 = _GEN_2 == 6'h20 ? 1'h0 : _T_5; // @[PackageBufferFifo.scala 42:33 81:61]
  wire [13:0] _GEN_70 = io_in_tready & io_in_tvalid ? _GEN_52 : {{7'd0}, wr_pos_reg}; // @[PackageBufferFifo.scala 48:29 77:43]
  wire [5:0] _GEN_72 = io_in_tready & io_in_tvalid ? _GEN_54 : info_buf_reg_0_burst; // @[PackageBufferFifo.scala 45:29 77:43]
  wire [5:0] _GEN_73 = io_in_tready & io_in_tvalid ? _GEN_55 : info_buf_reg_1_burst; // @[PackageBufferFifo.scala 45:29 77:43]
  wire [15:0] _GEN_74 = io_in_tready & io_in_tvalid ? _GEN_56 : info_buf_reg_0_len; // @[PackageBufferFifo.scala 45:29 77:43]
  wire [15:0] _GEN_75 = io_in_tready & io_in_tvalid ? _GEN_57 : info_buf_reg_1_len; // @[PackageBufferFifo.scala 45:29 77:43]
  wire  _GEN_76 = io_in_tready & io_in_tvalid ? _GEN_58 : info_buf_reg_0_valid; // @[PackageBufferFifo.scala 45:29 77:43]
  wire  _GEN_77 = io_in_tready & io_in_tvalid ? _GEN_59 : info_buf_reg_1_valid; // @[PackageBufferFifo.scala 45:29 77:43]
  wire  _GEN_82 = io_in_tready & io_in_tvalid & _GEN_64; // @[PackageBufferFifo.scala 42:33 77:43]
  wire [13:0] _GEN_89 = io_reset_counter ? {{7'd0}, wr_pos_reg} : _GEN_70; // @[PackageBufferFifo.scala 73:26 48:29]
  wire [5:0] _GEN_90 = io_reset_counter ? info_buf_reg_0_burst : _GEN_72; // @[PackageBufferFifo.scala 73:26 45:29]
  wire [5:0] _GEN_91 = io_reset_counter ? info_buf_reg_1_burst : _GEN_73; // @[PackageBufferFifo.scala 73:26 45:29]
  wire [15:0] _GEN_92 = io_reset_counter ? info_buf_reg_0_len : _GEN_74; // @[PackageBufferFifo.scala 73:26 45:29]
  wire [15:0] _GEN_93 = io_reset_counter ? info_buf_reg_1_len : _GEN_75; // @[PackageBufferFifo.scala 73:26 45:29]
  wire  _GEN_94 = io_reset_counter ? info_buf_reg_0_valid : _GEN_76; // @[PackageBufferFifo.scala 73:26 45:29]
  wire  _GEN_95 = io_reset_counter ? info_buf_reg_1_valid : _GEN_77; // @[PackageBufferFifo.scala 73:26 45:29]
  wire  shake_hand = io_out_tready & io_out_tvalid; // @[PackageBufferFifo.scala 123:34]
  wire [5:0] _GEN_109 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[PackageBufferFifo.scala 127:{70,70}]
  wire  _io_out_tlast_T_1 = _GEN_109 == 6'h1; // @[PackageBufferFifo.scala 127:70]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[PackageBufferFifo.scala 38:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[PackageBufferFifo.scala 38:19]
  wire [11:0] _GEN_152 = {_rd_pos_next_T_2, 5'h0}; // @[PackageBufferFifo.scala 145:44]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_152}; // @[PackageBufferFifo.scala 145:44]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[PackageBufferFifo.scala 147:31]
  wire [13:0] _GEN_145 = _io_out_tlast_T_1 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[PackageBufferFifo.scala 144:51 145:17 147:17]
  wire [6:0] rd_pos_next = _GEN_145[6:0];
  wire [6:0] _io_out_tdata_T = shake_hand ? rd_pos_next : rd_pos_reg; // @[PackageBufferFifo.scala 130:36]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_109 - 6'h1; // @[PackageBufferFifo.scala 140:78]
  wire [13:0] _GEN_153 = reset ? 14'h0 : _GEN_89; // @[PackageBufferFifo.scala 48:{29,29}]
  reduce_add_64 burst_add_64 ( // @[PackageBufferFifo.scala 52:28]
    .io_in_vec(burst_add_64_io_in_vec),
    .io_out_sum(burst_add_64_io_out_sum)
  );
  assign data_buf_reg_io_out_tdata_MPORT_en = data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_addr = data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_data = data_buf_reg[data_buf_reg_io_out_tdata_MPORT_addr]; // @[PackageBufferFifo.scala 42:33]
  assign data_buf_reg_MPORT_data = io_in_tdata;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_reset_counter ? 1'h0 : _GEN_82;
  assign io_in_tready = ~buf_full; // @[PackageBufferFifo.scala 60:19]
  assign io_out_tlen = rd_index_reg[0] ? info_buf_reg_1_len : info_buf_reg_0_len; // @[PackageBufferFifo.scala 126:{17,17}]
  assign io_out_tdata = data_buf_reg_io_out_tdata_MPORT_data; // @[PackageBufferFifo.scala 130:17]
  assign io_out_tlast = io_out_tvalid & _GEN_109 == 6'h1; // @[PackageBufferFifo.scala 127:34]
  assign io_out_tvalid = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[PackageBufferFifo.scala 125:{17,17}]
  assign io_out_pack_counter = pack_counter; // @[PackageBufferFifo.scala 64:23]
  assign io_out_overflow_counter = overflow_counter; // @[PackageBufferFifo.scala 65:27]
  assign burst_add_64_io_in_vec = io_in_tkeep; // @[PackageBufferFifo.scala 53:26]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[PackageBufferFifo.scala 42:33]
    end
    data_buf_reg_io_out_tdata_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      data_buf_reg_io_out_tdata_MPORT_addr_pipe_0 <= _io_out_tdata_T[5:0];
    end
    if (reset) begin // @[PackageBufferFifo.scala 45:29]
      info_buf_reg_0_valid <= 1'h0; // @[PackageBufferFifo.scala 45:29]
    end else if (shake_hand) begin // @[PackageBufferFifo.scala 132:20]
      if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 136:55]
        if (~rd_index_reg[0]) begin // @[PackageBufferFifo.scala 137:36]
          info_buf_reg_0_valid <= 1'h0; // @[PackageBufferFifo.scala 137:36]
        end else begin
          info_buf_reg_0_valid <= _GEN_94;
        end
      end else begin
        info_buf_reg_0_valid <= _GEN_94;
      end
    end else begin
      info_buf_reg_0_valid <= _GEN_94;
    end
    if (reset) begin // @[PackageBufferFifo.scala 45:29]
      info_buf_reg_0_len <= 16'h0; // @[PackageBufferFifo.scala 45:29]
    end else if (shake_hand) begin // @[PackageBufferFifo.scala 132:20]
      if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 136:55]
        if (~rd_index_reg[0]) begin // @[PackageBufferFifo.scala 137:36]
          info_buf_reg_0_len <= 16'h0; // @[PackageBufferFifo.scala 137:36]
        end else begin
          info_buf_reg_0_len <= _GEN_92;
        end
      end else begin
        info_buf_reg_0_len <= _GEN_92;
      end
    end else begin
      info_buf_reg_0_len <= _GEN_92;
    end
    if (reset) begin // @[PackageBufferFifo.scala 45:29]
      info_buf_reg_0_burst <= 6'h0; // @[PackageBufferFifo.scala 45:29]
    end else if (shake_hand) begin // @[PackageBufferFifo.scala 132:20]
      if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 136:55]
        if (~rd_index_reg[0]) begin // @[PackageBufferFifo.scala 137:36]
          info_buf_reg_0_burst <= 6'h0; // @[PackageBufferFifo.scala 137:36]
        end else begin
          info_buf_reg_0_burst <= _GEN_90;
        end
      end else if (~rd_index_reg[0]) begin // @[PackageBufferFifo.scala 140:42]
        info_buf_reg_0_burst <= _info_buf_reg_burst_T_5; // @[PackageBufferFifo.scala 140:42]
      end else begin
        info_buf_reg_0_burst <= _GEN_90;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_90;
    end
    if (reset) begin // @[PackageBufferFifo.scala 45:29]
      info_buf_reg_1_valid <= 1'h0; // @[PackageBufferFifo.scala 45:29]
    end else if (shake_hand) begin // @[PackageBufferFifo.scala 132:20]
      if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 136:55]
        if (rd_index_reg[0]) begin // @[PackageBufferFifo.scala 137:36]
          info_buf_reg_1_valid <= 1'h0; // @[PackageBufferFifo.scala 137:36]
        end else begin
          info_buf_reg_1_valid <= _GEN_95;
        end
      end else begin
        info_buf_reg_1_valid <= _GEN_95;
      end
    end else begin
      info_buf_reg_1_valid <= _GEN_95;
    end
    if (reset) begin // @[PackageBufferFifo.scala 45:29]
      info_buf_reg_1_len <= 16'h0; // @[PackageBufferFifo.scala 45:29]
    end else if (shake_hand) begin // @[PackageBufferFifo.scala 132:20]
      if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 136:55]
        if (rd_index_reg[0]) begin // @[PackageBufferFifo.scala 137:36]
          info_buf_reg_1_len <= 16'h0; // @[PackageBufferFifo.scala 137:36]
        end else begin
          info_buf_reg_1_len <= _GEN_93;
        end
      end else begin
        info_buf_reg_1_len <= _GEN_93;
      end
    end else begin
      info_buf_reg_1_len <= _GEN_93;
    end
    if (reset) begin // @[PackageBufferFifo.scala 45:29]
      info_buf_reg_1_burst <= 6'h0; // @[PackageBufferFifo.scala 45:29]
    end else if (shake_hand) begin // @[PackageBufferFifo.scala 132:20]
      if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 136:55]
        if (rd_index_reg[0]) begin // @[PackageBufferFifo.scala 137:36]
          info_buf_reg_1_burst <= 6'h0; // @[PackageBufferFifo.scala 137:36]
        end else begin
          info_buf_reg_1_burst <= _GEN_91;
        end
      end else if (rd_index_reg[0]) begin // @[PackageBufferFifo.scala 140:42]
        info_buf_reg_1_burst <= _info_buf_reg_burst_T_5; // @[PackageBufferFifo.scala 140:42]
      end else begin
        info_buf_reg_1_burst <= _GEN_91;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_91;
    end
    if (reset) begin // @[PackageBufferFifo.scala 46:29]
      wr_index_reg <= 7'h0; // @[PackageBufferFifo.scala 46:29]
    end else if (!(io_reset_counter)) begin // @[PackageBufferFifo.scala 73:26]
      if (io_in_tready & io_in_tvalid) begin // @[PackageBufferFifo.scala 77:43]
        if (!(_GEN_2 == 6'h20)) begin // @[PackageBufferFifo.scala 81:61]
          wr_index_reg <= _GEN_48;
        end
      end
    end
    if (reset) begin // @[PackageBufferFifo.scala 47:29]
      rd_index_reg <= 7'h0; // @[PackageBufferFifo.scala 47:29]
    end else if (shake_hand) begin // @[PackageBufferFifo.scala 132:20]
      if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 136:55]
        rd_index_reg <= _rd_pos_next_T_2; // @[PackageBufferFifo.scala 138:22]
      end
    end
    wr_pos_reg <= _GEN_153[6:0]; // @[PackageBufferFifo.scala 48:{29,29}]
    if (reset) begin // @[PackageBufferFifo.scala 49:29]
      rd_pos_reg <= 7'h0; // @[PackageBufferFifo.scala 49:29]
    end else if (shake_hand) begin // @[PackageBufferFifo.scala 130:36]
      rd_pos_reg <= rd_pos_next;
    end
    if (reset) begin // @[PackageBufferFifo.scala 61:29]
      pack_counter <= 32'h0; // @[PackageBufferFifo.scala 61:29]
    end else if (io_reset_counter) begin // @[PackageBufferFifo.scala 73:26]
      pack_counter <= 32'h0; // @[PackageBufferFifo.scala 74:18]
    end else if (io_in_tready & io_in_tvalid) begin // @[PackageBufferFifo.scala 77:43]
      if (io_in_tlast) begin // @[PackageBufferFifo.scala 78:24]
        pack_counter <= _pack_counter_T_1; // @[PackageBufferFifo.scala 79:20]
      end
    end
    if (reset) begin // @[PackageBufferFifo.scala 62:33]
      overflow_counter <= 32'h0; // @[PackageBufferFifo.scala 62:33]
    end else if (io_reset_counter) begin // @[PackageBufferFifo.scala 73:26]
      overflow_counter <= 32'h0; // @[PackageBufferFifo.scala 75:22]
    end else if (io_in_tready & io_in_tvalid) begin // @[PackageBufferFifo.scala 77:43]
      if (_GEN_2 == 6'h20) begin // @[PackageBufferFifo.scala 81:61]
        overflow_counter <= _overflow_counter_T_1; // @[PackageBufferFifo.scala 93:24]
      end
    end
    if (reset) begin // @[PackageBufferFifo.scala 67:30]
      is_overflowed <= 1'h0; // @[PackageBufferFifo.scala 67:30]
    end else if (!(io_reset_counter)) begin // @[PackageBufferFifo.scala 73:26]
      if (io_in_tready & io_in_tvalid) begin // @[PackageBufferFifo.scala 77:43]
        if (_GEN_2 == 6'h20) begin // @[PackageBufferFifo.scala 81:61]
          is_overflowed <= _GEN_3;
        end else begin
          is_overflowed <= _GEN_50;
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
  info_buf_reg_0_burst = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  info_buf_reg_1_valid = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  info_buf_reg_1_len = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  info_buf_reg_1_burst = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  wr_index_reg = _RAND_9[6:0];
  _RAND_10 = {1{`RANDOM}};
  rd_index_reg = _RAND_10[6:0];
  _RAND_11 = {1{`RANDOM}};
  wr_pos_reg = _RAND_11[6:0];
  _RAND_12 = {1{`RANDOM}};
  rd_pos_reg = _RAND_12[6:0];
  _RAND_13 = {1{`RANDOM}};
  pack_counter = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  overflow_counter = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  is_overflowed = _RAND_15[0:0];
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
  assign qid_mask_wrapper_io_in_tlast = io_in_tlast; // @[PackageFilter.scala 42:32]
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
  output [511:0] io_QDMA_c2h_stub_in_tdata,
  output         io_QDMA_c2h_stub_in_tuser,
  output         io_QDMA_c2h_stub_in_tlast,
  output         io_QDMA_c2h_stub_in_tvalid,
  input          io_QDMA_c2h_stub_in_tready,
  input          io_c2h_reset_counter,
  input  [31:0]  io_c2h_sw_qid_mask,
  output [31:0]  io_c2h_pack_counter,
  output [31:0]  io_c2h_overflow_counter
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  buf__clock; // @[PackageHandler.scala 75:19]
  wire  buf__reset; // @[PackageHandler.scala 75:19]
  wire [511:0] buf__io_in_tdata; // @[PackageHandler.scala 75:19]
  wire  buf__io_in_tlast; // @[PackageHandler.scala 75:19]
  wire  buf__io_in_tvalid; // @[PackageHandler.scala 75:19]
  wire  buf__io_in_tready; // @[PackageHandler.scala 75:19]
  wire [63:0] buf__io_in_tkeep; // @[PackageHandler.scala 75:19]
  wire [15:0] buf__io_out_tlen; // @[PackageHandler.scala 75:19]
  wire [511:0] buf__io_out_tdata; // @[PackageHandler.scala 75:19]
  wire  buf__io_out_tlast; // @[PackageHandler.scala 75:19]
  wire  buf__io_out_tvalid; // @[PackageHandler.scala 75:19]
  wire  buf__io_out_tready; // @[PackageHandler.scala 75:19]
  wire  buf__io_reset_counter; // @[PackageHandler.scala 75:19]
  wire [31:0] buf__io_out_pack_counter; // @[PackageHandler.scala 75:19]
  wire [31:0] buf__io_out_overflow_counter; // @[PackageHandler.scala 75:19]
  wire  package_filter_clock; // @[PackageHandler.scala 97:30]
  wire  package_filter_reset; // @[PackageHandler.scala 97:30]
  wire [511:0] package_filter_io_in_tdata; // @[PackageHandler.scala 97:30]
  wire  package_filter_io_in_tvalid; // @[PackageHandler.scala 97:30]
  wire  package_filter_io_in_tready; // @[PackageHandler.scala 97:30]
  wire  package_filter_io_in_tlast; // @[PackageHandler.scala 97:30]
  wire [15:0] package_filter_io_in_tlen; // @[PackageHandler.scala 97:30]
  wire [31:0] package_filter_io_in_sw_qid_mask; // @[PackageHandler.scala 97:30]
  wire [511:0] package_filter_io_out_tdata; // @[PackageHandler.scala 97:30]
  wire  package_filter_io_out_tvalid; // @[PackageHandler.scala 97:30]
  wire  package_filter_io_out_tready; // @[PackageHandler.scala 97:30]
  wire  package_filter_io_out_tlast; // @[PackageHandler.scala 97:30]
  wire [15:0] package_filter_io_out_tlen; // @[PackageHandler.scala 97:30]
  wire [5:0] package_filter_io_out_qid; // @[PackageHandler.scala 97:30]
  reg  QDMA_c2h_stub_in_tuser_reg; // @[PackageHandler.scala 88:43]
  wire  _GEN_0 = io_QDMA_c2h_stub_in_tvalid & io_QDMA_c2h_stub_in_tready ? io_QDMA_c2h_stub_in_tlast :
    QDMA_c2h_stub_in_tuser_reg; // @[PackageHandler.scala 89:65 90:32 88:43]
  wire  _io_QDMA_c2h_stub_in_tlast_T = ~io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 110:63]
  wire [10:0] Gen_c2h_hdr_qid = {{5'd0}, package_filter_io_out_qid}; // @[PackageHandler.scala 116:27 123:21]
  wire [5:0] Gen_c2h_hdr_flow_id = Gen_c2h_hdr_qid[5:0]; // @[PackageHandler.scala 116:27 121:25]
  wire [15:0] Gen_c2h_hdr_tdest = {{5'd0}, Gen_c2h_hdr_qid}; // @[PackageHandler.scala 116:27 121:63]
  wire [15:0] Gen_c2h_hdr_pkt_len = package_filter_io_out_tlen; // @[PackageHandler.scala 116:27 124:25]
  wire [511:0] _io_QDMA_c2h_stub_in_tdata_T = {362'h0,2'h0,4'h0,Gen_c2h_hdr_pkt_len,80'h0,Gen_c2h_hdr_tdest,10'h0,
    Gen_c2h_hdr_flow_id,5'h0,Gen_c2h_hdr_qid}; // @[PackageHandler.scala 125:46]
  PackageBufferFifo buf_ ( // @[PackageHandler.scala 75:19]
    .clock(buf__clock),
    .reset(buf__reset),
    .io_in_tdata(buf__io_in_tdata),
    .io_in_tlast(buf__io_in_tlast),
    .io_in_tvalid(buf__io_in_tvalid),
    .io_in_tready(buf__io_in_tready),
    .io_in_tkeep(buf__io_in_tkeep),
    .io_out_tlen(buf__io_out_tlen),
    .io_out_tdata(buf__io_out_tdata),
    .io_out_tlast(buf__io_out_tlast),
    .io_out_tvalid(buf__io_out_tvalid),
    .io_out_tready(buf__io_out_tready),
    .io_reset_counter(buf__io_reset_counter),
    .io_out_pack_counter(buf__io_out_pack_counter),
    .io_out_overflow_counter(buf__io_out_overflow_counter)
  );
  PackageFilter package_filter ( // @[PackageHandler.scala 97:30]
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
  assign io_QDMA_h2c_stub_out_tready = io_CMAC_in_tready; // @[PackageHandler.scala 64:31]
  assign io_CMAC_in_tdata = io_QDMA_h2c_stub_out_tdata; // @[PackageHandler.scala 65:31]
  assign io_CMAC_in_tkeep = 64'hffffffffffffffff; // @[Bitwise.scala 74:12]
  assign io_CMAC_in_tlast = io_QDMA_h2c_stub_out_tlast; // @[PackageHandler.scala 66:31]
  assign io_CMAC_in_tvalid = io_QDMA_h2c_stub_out_tvalid & ~io_QDMA_h2c_stub_out_tuser; // @[PackageHandler.scala 67:62]
  assign io_CMAC_out_tready = buf__io_in_tready; // @[PackageHandler.scala 81:31]
  assign io_QDMA_c2h_stub_in_tdata = io_QDMA_c2h_stub_in_tuser ? _io_QDMA_c2h_stub_in_tdata_T :
    package_filter_io_out_tdata; // @[PackageHandler.scala 114:34 125:31 128:31]
  assign io_QDMA_c2h_stub_in_tuser = QDMA_c2h_stub_in_tuser_reg & io_QDMA_c2h_stub_in_tvalid; // @[PackageHandler.scala 93:59]
  assign io_QDMA_c2h_stub_in_tlast = package_filter_io_out_tlast & ~io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 110:61]
  assign io_QDMA_c2h_stub_in_tvalid = package_filter_io_out_tvalid; // @[PackageHandler.scala 108:30]
  assign io_c2h_pack_counter = buf__io_out_pack_counter; // @[PackageHandler.scala 84:23]
  assign io_c2h_overflow_counter = buf__io_out_overflow_counter; // @[PackageHandler.scala 85:27]
  assign buf__clock = clock;
  assign buf__reset = reset;
  assign buf__io_in_tdata = io_CMAC_out_tdata; // @[PackageHandler.scala 77:31]
  assign buf__io_in_tlast = io_CMAC_out_tlast; // @[PackageHandler.scala 79:31]
  assign buf__io_in_tvalid = io_CMAC_out_tvalid; // @[PackageHandler.scala 78:31]
  assign buf__io_in_tkeep = io_CMAC_out_tkeep; // @[PackageHandler.scala 80:31]
  assign buf__io_out_tready = package_filter_io_in_tready; // @[PackageHandler.scala 103:21]
  assign buf__io_reset_counter = io_c2h_reset_counter; // @[PackageHandler.scala 83:24]
  assign package_filter_clock = clock;
  assign package_filter_reset = reset;
  assign package_filter_io_in_tdata = buf__io_out_tdata; // @[PackageHandler.scala 99:31]
  assign package_filter_io_in_tvalid = buf__io_out_tvalid; // @[PackageHandler.scala 100:31]
  assign package_filter_io_in_tlast = buf__io_out_tlast; // @[PackageHandler.scala 101:31]
  assign package_filter_io_in_tlen = buf__io_out_tlen; // @[PackageHandler.scala 102:31]
  assign package_filter_io_in_sw_qid_mask = io_c2h_sw_qid_mask; // @[PackageHandler.scala 107:36]
  assign package_filter_io_out_tready = io_QDMA_c2h_stub_in_tready & _io_QDMA_c2h_stub_in_tlast_T; // @[PackageHandler.scala 111:62]
  always @(posedge clock) begin
    QDMA_c2h_stub_in_tuser_reg <= reset | _GEN_0; // @[PackageHandler.scala 88:{43,43}]
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
