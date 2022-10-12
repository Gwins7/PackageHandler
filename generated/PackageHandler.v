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
  input          io_out_tready
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
`endif // RANDOMIZE_REG_INIT
  reg [511:0] data_buf_reg [0:63]; // @[PackageBufferFifo.scala 38:33]
  wire  data_buf_reg_io_out_tdata_MPORT_en; // @[PackageBufferFifo.scala 38:33]
  wire [5:0] data_buf_reg_io_out_tdata_MPORT_addr; // @[PackageBufferFifo.scala 38:33]
  wire [511:0] data_buf_reg_io_out_tdata_MPORT_data; // @[PackageBufferFifo.scala 38:33]
  wire [511:0] data_buf_reg_MPORT_data; // @[PackageBufferFifo.scala 38:33]
  wire [5:0] data_buf_reg_MPORT_addr; // @[PackageBufferFifo.scala 38:33]
  wire  data_buf_reg_MPORT_mask; // @[PackageBufferFifo.scala 38:33]
  wire  data_buf_reg_MPORT_en; // @[PackageBufferFifo.scala 38:33]
  wire [511:0] data_buf_reg_MPORT_1_data; // @[PackageBufferFifo.scala 38:33]
  wire [5:0] data_buf_reg_MPORT_1_addr; // @[PackageBufferFifo.scala 38:33]
  wire  data_buf_reg_MPORT_1_mask; // @[PackageBufferFifo.scala 38:33]
  wire  data_buf_reg_MPORT_1_en; // @[PackageBufferFifo.scala 38:33]
  reg  data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  reg [5:0] data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  reg  info_buf_reg_0_valid; // @[PackageBufferFifo.scala 41:29]
  reg [15:0] info_buf_reg_0_len; // @[PackageBufferFifo.scala 41:29]
  reg [5:0] info_buf_reg_0_burst; // @[PackageBufferFifo.scala 41:29]
  reg  info_buf_reg_1_valid; // @[PackageBufferFifo.scala 41:29]
  reg [15:0] info_buf_reg_1_len; // @[PackageBufferFifo.scala 41:29]
  reg [5:0] info_buf_reg_1_burst; // @[PackageBufferFifo.scala 41:29]
  reg [6:0] wr_index_reg; // @[PackageBufferFifo.scala 42:29]
  reg [6:0] rd_index_reg; // @[PackageBufferFifo.scala 43:29]
  reg [6:0] wr_pos_reg; // @[PackageBufferFifo.scala 44:29]
  reg [6:0] rd_pos_reg; // @[PackageBufferFifo.scala 45:29]
  wire [7:0] burst_vec_0 = {{7'd0}, io_in_tkeep[0]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_1 = {{7'd0}, io_in_tkeep[1]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_1 = burst_vec_0 + burst_vec_1; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_2 = {{7'd0}, io_in_tkeep[2]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_3 = {{7'd0}, io_in_tkeep[3]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_3 = burst_vec_2 + burst_vec_3; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_4 = {{7'd0}, io_in_tkeep[4]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_5 = {{7'd0}, io_in_tkeep[5]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_5 = burst_vec_4 + burst_vec_5; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_6 = {{7'd0}, io_in_tkeep[6]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_7 = {{7'd0}, io_in_tkeep[7]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_7 = burst_vec_6 + burst_vec_7; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_8 = {{7'd0}, io_in_tkeep[8]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_9 = {{7'd0}, io_in_tkeep[9]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_9 = burst_vec_8 + burst_vec_9; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_10 = {{7'd0}, io_in_tkeep[10]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_11 = {{7'd0}, io_in_tkeep[11]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_11 = burst_vec_10 + burst_vec_11; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_12 = {{7'd0}, io_in_tkeep[12]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_13 = {{7'd0}, io_in_tkeep[13]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_13 = burst_vec_12 + burst_vec_13; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_14 = {{7'd0}, io_in_tkeep[14]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_15 = {{7'd0}, io_in_tkeep[15]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_15 = burst_vec_14 + burst_vec_15; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_16 = {{7'd0}, io_in_tkeep[16]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_17 = {{7'd0}, io_in_tkeep[17]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_17 = burst_vec_16 + burst_vec_17; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_18 = {{7'd0}, io_in_tkeep[18]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_19 = {{7'd0}, io_in_tkeep[19]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_19 = burst_vec_18 + burst_vec_19; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_20 = {{7'd0}, io_in_tkeep[20]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_21 = {{7'd0}, io_in_tkeep[21]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_21 = burst_vec_20 + burst_vec_21; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_22 = {{7'd0}, io_in_tkeep[22]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_23 = {{7'd0}, io_in_tkeep[23]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_23 = burst_vec_22 + burst_vec_23; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_24 = {{7'd0}, io_in_tkeep[24]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_25 = {{7'd0}, io_in_tkeep[25]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_25 = burst_vec_24 + burst_vec_25; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_26 = {{7'd0}, io_in_tkeep[26]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_27 = {{7'd0}, io_in_tkeep[27]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_27 = burst_vec_26 + burst_vec_27; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_28 = {{7'd0}, io_in_tkeep[28]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_29 = {{7'd0}, io_in_tkeep[29]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_29 = burst_vec_28 + burst_vec_29; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_30 = {{7'd0}, io_in_tkeep[30]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_31 = {{7'd0}, io_in_tkeep[31]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_31 = burst_vec_30 + burst_vec_31; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_32 = {{7'd0}, io_in_tkeep[32]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_33 = {{7'd0}, io_in_tkeep[33]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_33 = burst_vec_32 + burst_vec_33; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_34 = {{7'd0}, io_in_tkeep[34]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_35 = {{7'd0}, io_in_tkeep[35]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_35 = burst_vec_34 + burst_vec_35; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_36 = {{7'd0}, io_in_tkeep[36]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_37 = {{7'd0}, io_in_tkeep[37]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_37 = burst_vec_36 + burst_vec_37; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_38 = {{7'd0}, io_in_tkeep[38]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_39 = {{7'd0}, io_in_tkeep[39]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_39 = burst_vec_38 + burst_vec_39; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_40 = {{7'd0}, io_in_tkeep[40]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_41 = {{7'd0}, io_in_tkeep[41]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_41 = burst_vec_40 + burst_vec_41; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_42 = {{7'd0}, io_in_tkeep[42]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_43 = {{7'd0}, io_in_tkeep[43]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_43 = burst_vec_42 + burst_vec_43; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_44 = {{7'd0}, io_in_tkeep[44]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_45 = {{7'd0}, io_in_tkeep[45]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_45 = burst_vec_44 + burst_vec_45; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_46 = {{7'd0}, io_in_tkeep[46]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_47 = {{7'd0}, io_in_tkeep[47]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_47 = burst_vec_46 + burst_vec_47; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_48 = {{7'd0}, io_in_tkeep[48]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_49 = {{7'd0}, io_in_tkeep[49]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_49 = burst_vec_48 + burst_vec_49; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_50 = {{7'd0}, io_in_tkeep[50]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_51 = {{7'd0}, io_in_tkeep[51]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_51 = burst_vec_50 + burst_vec_51; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_52 = {{7'd0}, io_in_tkeep[52]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_53 = {{7'd0}, io_in_tkeep[53]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_53 = burst_vec_52 + burst_vec_53; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_54 = {{7'd0}, io_in_tkeep[54]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_55 = {{7'd0}, io_in_tkeep[55]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_55 = burst_vec_54 + burst_vec_55; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_56 = {{7'd0}, io_in_tkeep[56]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_57 = {{7'd0}, io_in_tkeep[57]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_57 = burst_vec_56 + burst_vec_57; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_58 = {{7'd0}, io_in_tkeep[58]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_59 = {{7'd0}, io_in_tkeep[59]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_59 = burst_vec_58 + burst_vec_59; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_60 = {{7'd0}, io_in_tkeep[60]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_61 = {{7'd0}, io_in_tkeep[61]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_61 = burst_vec_60 + burst_vec_61; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] burst_vec_62 = {{7'd0}, io_in_tkeep[62]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] burst_vec_63 = {{7'd0}, io_in_tkeep[63]}; // @[PackageBufferFifo.scala 48:23 49:38]
  wire [7:0] _cur_burst_size_T_63 = burst_vec_62 + burst_vec_63; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_65 = _cur_burst_size_T_1 + _cur_burst_size_T_3; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_67 = _cur_burst_size_T_5 + _cur_burst_size_T_7; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_69 = _cur_burst_size_T_9 + _cur_burst_size_T_11; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_71 = _cur_burst_size_T_13 + _cur_burst_size_T_15; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_73 = _cur_burst_size_T_17 + _cur_burst_size_T_19; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_75 = _cur_burst_size_T_21 + _cur_burst_size_T_23; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_77 = _cur_burst_size_T_25 + _cur_burst_size_T_27; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_79 = _cur_burst_size_T_29 + _cur_burst_size_T_31; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_81 = _cur_burst_size_T_33 + _cur_burst_size_T_35; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_83 = _cur_burst_size_T_37 + _cur_burst_size_T_39; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_85 = _cur_burst_size_T_41 + _cur_burst_size_T_43; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_87 = _cur_burst_size_T_45 + _cur_burst_size_T_47; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_89 = _cur_burst_size_T_49 + _cur_burst_size_T_51; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_91 = _cur_burst_size_T_53 + _cur_burst_size_T_55; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_93 = _cur_burst_size_T_57 + _cur_burst_size_T_59; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_95 = _cur_burst_size_T_61 + _cur_burst_size_T_63; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_97 = _cur_burst_size_T_65 + _cur_burst_size_T_67; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_99 = _cur_burst_size_T_69 + _cur_burst_size_T_71; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_101 = _cur_burst_size_T_73 + _cur_burst_size_T_75; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_103 = _cur_burst_size_T_77 + _cur_burst_size_T_79; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_105 = _cur_burst_size_T_81 + _cur_burst_size_T_83; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_107 = _cur_burst_size_T_85 + _cur_burst_size_T_87; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_109 = _cur_burst_size_T_89 + _cur_burst_size_T_91; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_111 = _cur_burst_size_T_93 + _cur_burst_size_T_95; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_113 = _cur_burst_size_T_97 + _cur_burst_size_T_99; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_115 = _cur_burst_size_T_101 + _cur_burst_size_T_103; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_117 = _cur_burst_size_T_105 + _cur_burst_size_T_107; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_119 = _cur_burst_size_T_109 + _cur_burst_size_T_111; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_121 = _cur_burst_size_T_113 + _cur_burst_size_T_115; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] _cur_burst_size_T_123 = _cur_burst_size_T_117 + _cur_burst_size_T_119; // @[PackageBufferFifo.scala 50:46]
  wire [7:0] cur_burst_size = _cur_burst_size_T_121 + _cur_burst_size_T_123; // @[PackageBufferFifo.scala 50:46]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[PackageBufferFifo.scala 54:40]
  wire  _GEN_99 = ~wr_index_reg[0]; // @[PackageBufferFifo.scala 41:29 62:{39,39}]
  wire  _GEN_6 = _GEN_99 | info_buf_reg_0_valid; // @[PackageBufferFifo.scala 41:29 66:{40,40}]
  wire  _GEN_7 = wr_index_reg[0] | info_buf_reg_1_valid; // @[PackageBufferFifo.scala 41:29 66:{40,40}]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[PackageBufferFifo.scala 34:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[PackageBufferFifo.scala 34:19]
  wire [11:0] _GEN_101 = {_wr_index_reg_T_2, 5'h0}; // @[PackageBufferFifo.scala 68:45]
  wire [13:0] _wr_pos_reg_T_3 = {{2'd0}, _GEN_101}; // @[PackageBufferFifo.scala 68:45]
  wire [6:0] _wr_pos_reg_T_5 = wr_pos_reg + 7'h1; // @[PackageBufferFifo.scala 70:32]
  wire  _GEN_8 = io_in_tlast ? _GEN_6 : info_buf_reg_0_valid; // @[PackageBufferFifo.scala 65:24 41:29]
  wire  _GEN_9 = io_in_tlast ? _GEN_7 : info_buf_reg_1_valid; // @[PackageBufferFifo.scala 65:24 41:29]
  wire [13:0] _GEN_11 = io_in_tlast ? _wr_pos_reg_T_3 : {{7'd0}, _wr_pos_reg_T_5}; // @[PackageBufferFifo.scala 65:24 68:18 70:18]
  wire [5:0] _GEN_13 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[PackageBufferFifo.scala 74:{74,74}]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_13 + 6'h1; // @[PackageBufferFifo.scala 74:74]
  wire [5:0] _GEN_14 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[PackageBufferFifo.scala 41:29 74:{38,38}]
  wire [5:0] _GEN_15 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[PackageBufferFifo.scala 41:29 74:{38,38}]
  wire [15:0] _GEN_17 = wr_index_reg[0] ? info_buf_reg_1_len : info_buf_reg_0_len; // @[PackageBufferFifo.scala 75:{70,70}]
  wire [15:0] _GEN_102 = {{8'd0}, cur_burst_size}; // @[PackageBufferFifo.scala 75:70]
  wire [15:0] _info_buf_reg_len_T_2 = _GEN_17 + _GEN_102; // @[PackageBufferFifo.scala 75:70]
  wire [15:0] _GEN_18 = ~wr_index_reg[0] ? _info_buf_reg_len_T_2 : info_buf_reg_0_len; // @[PackageBufferFifo.scala 41:29 75:{36,36}]
  wire [15:0] _GEN_19 = wr_index_reg[0] ? _info_buf_reg_len_T_2 : info_buf_reg_1_len; // @[PackageBufferFifo.scala 41:29 75:{36,36}]
  wire  _GEN_22 = io_in_tready & io_in_tvalid ? _GEN_8 : info_buf_reg_0_valid; // @[PackageBufferFifo.scala 41:29 59:38]
  wire  _GEN_23 = io_in_tready & io_in_tvalid ? _GEN_9 : info_buf_reg_1_valid; // @[PackageBufferFifo.scala 41:29 59:38]
  wire [13:0] _GEN_25 = io_in_tready & io_in_tvalid ? _GEN_11 : {{7'd0}, wr_pos_reg}; // @[PackageBufferFifo.scala 44:29 59:38]
  wire [5:0] _GEN_31 = io_in_tready & io_in_tvalid ? _GEN_14 : info_buf_reg_0_burst; // @[PackageBufferFifo.scala 41:29 59:38]
  wire [5:0] _GEN_32 = io_in_tready & io_in_tvalid ? _GEN_15 : info_buf_reg_1_burst; // @[PackageBufferFifo.scala 41:29 59:38]
  wire [15:0] _GEN_33 = io_in_tready & io_in_tvalid ? _GEN_18 : info_buf_reg_0_len; // @[PackageBufferFifo.scala 41:29 59:38]
  wire [15:0] _GEN_34 = io_in_tready & io_in_tvalid ? _GEN_19 : info_buf_reg_1_len; // @[PackageBufferFifo.scala 41:29 59:38]
  wire [5:0] _GEN_40 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[PackageBufferFifo.scala 81:{70,70}]
  wire  _io_out_tlast_T_1 = _GEN_40 == 6'h1; // @[PackageBufferFifo.scala 81:70]
  wire  _T_8 = io_out_tready & io_out_tvalid; // @[PackageBufferFifo.scala 84:23]
  wire  _T_10 = _GEN_40 > 6'h0; // @[PackageBufferFifo.scala 85:44]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[PackageBufferFifo.scala 34:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[PackageBufferFifo.scala 34:19]
  wire [11:0] _GEN_103 = {_rd_pos_next_T_2, 5'h0}; // @[PackageBufferFifo.scala 91:48]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_103}; // @[PackageBufferFifo.scala 91:48]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[PackageBufferFifo.scala 94:35]
  wire [13:0] _GEN_66 = _io_out_tlast_T_1 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[PackageBufferFifo.scala 88:55 91:21 94:21]
  wire [13:0] _GEN_82 = _GEN_40 > 6'h0 ? _GEN_66 : 14'h0; // @[PackageBufferFifo.scala 85:51]
  wire [13:0] _GEN_98 = io_out_tready & io_out_tvalid ? _GEN_82 : 14'h0; // @[PackageBufferFifo.scala 84:39]
  wire [6:0] rd_pos_next = _GEN_98[6:0];
  wire [5:0] _GEN_45 = ~rd_index_reg[0] ? 6'h0 : _GEN_31; // @[PackageBufferFifo.scala 89:{36,36}]
  wire [5:0] _GEN_46 = rd_index_reg[0] ? 6'h0 : _GEN_32; // @[PackageBufferFifo.scala 89:{36,36}]
  wire [15:0] _GEN_47 = ~rd_index_reg[0] ? 16'h0 : _GEN_33; // @[PackageBufferFifo.scala 89:{36,36}]
  wire [15:0] _GEN_48 = rd_index_reg[0] ? 16'h0 : _GEN_34; // @[PackageBufferFifo.scala 89:{36,36}]
  wire  _GEN_49 = ~rd_index_reg[0] ? 1'h0 : _GEN_22; // @[PackageBufferFifo.scala 89:{36,36}]
  wire  _GEN_50 = rd_index_reg[0] ? 1'h0 : _GEN_23; // @[PackageBufferFifo.scala 89:{36,36}]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_40 - 6'h1; // @[PackageBufferFifo.scala 93:78]
  wire [5:0] _GEN_55 = ~rd_index_reg[0] ? _info_buf_reg_burst_T_5 : _GEN_31; // @[PackageBufferFifo.scala 93:{42,42}]
  wire [5:0] _GEN_56 = rd_index_reg[0] ? _info_buf_reg_burst_T_5 : _GEN_32; // @[PackageBufferFifo.scala 93:{42,42}]
  wire [13:0] _GEN_104 = reset ? 14'h0 : _GEN_25; // @[PackageBufferFifo.scala 44:{29,29}]
  assign data_buf_reg_io_out_tdata_MPORT_en = data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_addr = data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_data = data_buf_reg[data_buf_reg_io_out_tdata_MPORT_addr]; // @[PackageBufferFifo.scala 38:33]
  assign data_buf_reg_MPORT_data = io_in_tdata;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_in_tready & io_in_tvalid;
  assign data_buf_reg_MPORT_1_data = 512'h0;
  assign data_buf_reg_MPORT_1_addr = rd_pos_reg[5:0];
  assign data_buf_reg_MPORT_1_mask = 1'h1;
  assign data_buf_reg_MPORT_1_en = _T_8 & _T_10;
  assign io_in_tready = ~buf_full; // @[PackageBufferFifo.scala 56:19]
  assign io_out_tlen = rd_index_reg[0] ? info_buf_reg_1_len : info_buf_reg_0_len; // @[PackageBufferFifo.scala 80:{17,17}]
  assign io_out_tdata = data_buf_reg_io_out_tdata_MPORT_data; // @[PackageBufferFifo.scala 82:17]
  assign io_out_tlast = io_out_tvalid & _GEN_40 == 6'h1; // @[PackageBufferFifo.scala 81:34]
  assign io_out_tvalid = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[PackageBufferFifo.scala 79:{17,17}]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[PackageBufferFifo.scala 38:33]
    end
    if (data_buf_reg_MPORT_1_en & data_buf_reg_MPORT_1_mask) begin
      data_buf_reg[data_buf_reg_MPORT_1_addr] <= data_buf_reg_MPORT_1_data; // @[PackageBufferFifo.scala 38:33]
    end
    data_buf_reg_io_out_tdata_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      data_buf_reg_io_out_tdata_MPORT_addr_pipe_0 <= rd_pos_next[5:0];
    end
    if (reset) begin // @[PackageBufferFifo.scala 41:29]
      info_buf_reg_0_valid <= 1'h0; // @[PackageBufferFifo.scala 41:29]
    end else if (io_out_tready & io_out_tvalid) begin // @[PackageBufferFifo.scala 84:39]
      if (_GEN_40 > 6'h0) begin // @[PackageBufferFifo.scala 85:51]
        if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 88:55]
          info_buf_reg_0_valid <= _GEN_49;
        end else begin
          info_buf_reg_0_valid <= _GEN_22;
        end
      end else begin
        info_buf_reg_0_valid <= _GEN_22;
      end
    end else begin
      info_buf_reg_0_valid <= _GEN_22;
    end
    if (reset) begin // @[PackageBufferFifo.scala 41:29]
      info_buf_reg_0_len <= 16'h0; // @[PackageBufferFifo.scala 41:29]
    end else if (io_out_tready & io_out_tvalid) begin // @[PackageBufferFifo.scala 84:39]
      if (_GEN_40 > 6'h0) begin // @[PackageBufferFifo.scala 85:51]
        if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 88:55]
          info_buf_reg_0_len <= _GEN_47;
        end else begin
          info_buf_reg_0_len <= _GEN_33;
        end
      end else begin
        info_buf_reg_0_len <= _GEN_33;
      end
    end else begin
      info_buf_reg_0_len <= _GEN_33;
    end
    if (reset) begin // @[PackageBufferFifo.scala 41:29]
      info_buf_reg_0_burst <= 6'h0; // @[PackageBufferFifo.scala 41:29]
    end else if (io_out_tready & io_out_tvalid) begin // @[PackageBufferFifo.scala 84:39]
      if (_GEN_40 > 6'h0) begin // @[PackageBufferFifo.scala 85:51]
        if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 88:55]
          info_buf_reg_0_burst <= _GEN_45;
        end else begin
          info_buf_reg_0_burst <= _GEN_55;
        end
      end else begin
        info_buf_reg_0_burst <= _GEN_31;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_31;
    end
    if (reset) begin // @[PackageBufferFifo.scala 41:29]
      info_buf_reg_1_valid <= 1'h0; // @[PackageBufferFifo.scala 41:29]
    end else if (io_out_tready & io_out_tvalid) begin // @[PackageBufferFifo.scala 84:39]
      if (_GEN_40 > 6'h0) begin // @[PackageBufferFifo.scala 85:51]
        if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 88:55]
          info_buf_reg_1_valid <= _GEN_50;
        end else begin
          info_buf_reg_1_valid <= _GEN_23;
        end
      end else begin
        info_buf_reg_1_valid <= _GEN_23;
      end
    end else begin
      info_buf_reg_1_valid <= _GEN_23;
    end
    if (reset) begin // @[PackageBufferFifo.scala 41:29]
      info_buf_reg_1_len <= 16'h0; // @[PackageBufferFifo.scala 41:29]
    end else if (io_out_tready & io_out_tvalid) begin // @[PackageBufferFifo.scala 84:39]
      if (_GEN_40 > 6'h0) begin // @[PackageBufferFifo.scala 85:51]
        if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 88:55]
          info_buf_reg_1_len <= _GEN_48;
        end else begin
          info_buf_reg_1_len <= _GEN_34;
        end
      end else begin
        info_buf_reg_1_len <= _GEN_34;
      end
    end else begin
      info_buf_reg_1_len <= _GEN_34;
    end
    if (reset) begin // @[PackageBufferFifo.scala 41:29]
      info_buf_reg_1_burst <= 6'h0; // @[PackageBufferFifo.scala 41:29]
    end else if (io_out_tready & io_out_tvalid) begin // @[PackageBufferFifo.scala 84:39]
      if (_GEN_40 > 6'h0) begin // @[PackageBufferFifo.scala 85:51]
        if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 88:55]
          info_buf_reg_1_burst <= _GEN_46;
        end else begin
          info_buf_reg_1_burst <= _GEN_56;
        end
      end else begin
        info_buf_reg_1_burst <= _GEN_32;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_32;
    end
    if (reset) begin // @[PackageBufferFifo.scala 42:29]
      wr_index_reg <= 7'h0; // @[PackageBufferFifo.scala 42:29]
    end else if (io_in_tready & io_in_tvalid) begin // @[PackageBufferFifo.scala 59:38]
      if (io_in_tlast) begin // @[PackageBufferFifo.scala 65:24]
        wr_index_reg <= _wr_index_reg_T_2; // @[PackageBufferFifo.scala 67:20]
      end
    end
    if (reset) begin // @[PackageBufferFifo.scala 43:29]
      rd_index_reg <= 7'h0; // @[PackageBufferFifo.scala 43:29]
    end else if (io_out_tready & io_out_tvalid) begin // @[PackageBufferFifo.scala 84:39]
      if (_GEN_40 > 6'h0) begin // @[PackageBufferFifo.scala 85:51]
        if (_io_out_tlast_T_1) begin // @[PackageBufferFifo.scala 88:55]
          rd_index_reg <= _rd_pos_next_T_2; // @[PackageBufferFifo.scala 90:22]
        end
      end
    end
    wr_pos_reg <= _GEN_104[6:0]; // @[PackageBufferFifo.scala 44:{29,29}]
    if (reset) begin // @[PackageBufferFifo.scala 45:29]
      rd_pos_reg <= 7'h0; // @[PackageBufferFifo.scala 45:29]
    end else if (io_out_tready & io_out_tvalid) begin // @[PackageBufferFifo.scala 84:39]
      if (_GEN_40 > 6'h0) begin // @[PackageBufferFifo.scala 85:51]
        rd_pos_reg <= rd_pos_next; // @[PackageBufferFifo.scala 87:18]
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
  output [511:0] io_QDMA_c2h_stub_in_tdata,
  output         io_QDMA_c2h_stub_in_tuser,
  output         io_QDMA_c2h_stub_in_tlast,
  output         io_QDMA_c2h_stub_in_tvalid,
  input          io_QDMA_c2h_stub_in_tready
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  buf__clock; // @[PackageHandler.scala 70:19]
  wire  buf__reset; // @[PackageHandler.scala 70:19]
  wire [511:0] buf__io_in_tdata; // @[PackageHandler.scala 70:19]
  wire  buf__io_in_tlast; // @[PackageHandler.scala 70:19]
  wire  buf__io_in_tvalid; // @[PackageHandler.scala 70:19]
  wire  buf__io_in_tready; // @[PackageHandler.scala 70:19]
  wire [63:0] buf__io_in_tkeep; // @[PackageHandler.scala 70:19]
  wire [15:0] buf__io_out_tlen; // @[PackageHandler.scala 70:19]
  wire [511:0] buf__io_out_tdata; // @[PackageHandler.scala 70:19]
  wire  buf__io_out_tlast; // @[PackageHandler.scala 70:19]
  wire  buf__io_out_tvalid; // @[PackageHandler.scala 70:19]
  wire  buf__io_out_tready; // @[PackageHandler.scala 70:19]
  wire  _buf_io_out_tready_T = ~io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 80:63]
  reg  QDMA_c2h_stub_in_tuser_status_reg; // @[PackageHandler.scala 83:50]
  wire  _T = io_QDMA_c2h_stub_in_tlast & io_QDMA_c2h_stub_in_tvalid; // @[PackageHandler.scala 84:34]
  wire  _T_1 = _T & io_QDMA_c2h_stub_in_tready; // @[PackageHandler.scala 85:35]
  wire  _T_3 = _T_1 & _buf_io_out_tready_T; // @[PackageHandler.scala 86:35]
  wire  _GEN_0 = io_QDMA_c2h_stub_in_tvalid & io_QDMA_c2h_stub_in_tready ? 1'h0 : QDMA_c2h_stub_in_tuser_status_reg; // @[PackageHandler.scala 88:104 83:50 88:69]
  wire  _GEN_1 = _T_3 | _GEN_0; // @[PackageHandler.scala 87:{36,71}]
  reg [1:0] RR_counter_reg; // @[PackageHandler.scala 92:31]
  wire [1:0] _GEN_3 = {{1'd0}, io_QDMA_c2h_stub_in_tlast}; // @[PackageHandler.scala 93:36]
  wire [1:0] _RR_counter_reg_T_1 = RR_counter_reg + _GEN_3; // @[PackageHandler.scala 93:36]
  wire [10:0] Gen_c2h_hdr_qid = {{9'd0}, RR_counter_reg}; // @[PackageHandler.scala 105:21 98:27]
  wire [5:0] Gen_c2h_hdr_flow_id = Gen_c2h_hdr_qid[5:0]; // @[PackageHandler.scala 103:25 98:27]
  wire [15:0] Gen_c2h_hdr_tdest = {{5'd0}, Gen_c2h_hdr_qid}; // @[PackageHandler.scala 98:27 103:63]
  wire [15:0] Gen_c2h_hdr_pkt_len = buf__io_out_tlen; // @[PackageHandler.scala 106:25 98:27]
  wire [511:0] _io_QDMA_c2h_stub_in_tdata_T = {362'h0,2'h0,4'h0,Gen_c2h_hdr_pkt_len,80'h0,Gen_c2h_hdr_tdest,10'h0,
    Gen_c2h_hdr_flow_id,5'h0,Gen_c2h_hdr_qid}; // @[PackageHandler.scala 107:46]
  PackageBufferFifo buf_ ( // @[PackageHandler.scala 70:19]
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
    .io_out_tready(buf__io_out_tready)
  );
  assign io_QDMA_h2c_stub_out_tready = io_CMAC_in_tready; // @[PackageHandler.scala 59:31]
  assign io_CMAC_in_tdata = io_QDMA_h2c_stub_out_tdata; // @[PackageHandler.scala 60:31]
  assign io_CMAC_in_tkeep = 64'hffffffffffffffff; // @[Bitwise.scala 74:12]
  assign io_CMAC_in_tlast = io_QDMA_h2c_stub_out_tlast; // @[PackageHandler.scala 61:31]
  assign io_CMAC_in_tvalid = io_QDMA_h2c_stub_out_tvalid & ~io_QDMA_h2c_stub_out_tuser; // @[PackageHandler.scala 62:62]
  assign io_CMAC_out_tready = buf__io_in_tready; // @[PackageHandler.scala 76:31]
  assign io_QDMA_c2h_stub_in_tdata = io_QDMA_c2h_stub_in_tuser ? _io_QDMA_c2h_stub_in_tdata_T : buf__io_out_tdata; // @[PackageHandler.scala 107:31 110:31 96:34]
  assign io_QDMA_c2h_stub_in_tuser = QDMA_c2h_stub_in_tuser_status_reg & io_QDMA_c2h_stub_in_tvalid; // @[PackageHandler.scala 90:73]
  assign io_QDMA_c2h_stub_in_tlast = buf__io_out_tlast; // @[PackageHandler.scala 78:31]
  assign io_QDMA_c2h_stub_in_tvalid = buf__io_out_tvalid; // @[PackageHandler.scala 79:31]
  assign buf__clock = clock;
  assign buf__reset = reset;
  assign buf__io_in_tdata = io_CMAC_out_tdata; // @[PackageHandler.scala 72:31]
  assign buf__io_in_tlast = io_CMAC_out_tlast; // @[PackageHandler.scala 74:31]
  assign buf__io_in_tvalid = io_CMAC_out_tvalid; // @[PackageHandler.scala 73:31]
  assign buf__io_in_tkeep = io_CMAC_out_tkeep; // @[PackageHandler.scala 75:31]
  assign buf__io_out_tready = io_QDMA_c2h_stub_in_tready & ~io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 80:61]
  always @(posedge clock) begin
    QDMA_c2h_stub_in_tuser_status_reg <= reset | _GEN_1; // @[PackageHandler.scala 83:{50,50}]
    if (reset) begin // @[PackageHandler.scala 92:31]
      RR_counter_reg <= 2'h0; // @[PackageHandler.scala 92:31]
    end else begin
      RR_counter_reg <= _RR_counter_reg_T_1; // @[PackageHandler.scala 93:18]
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
  QDMA_c2h_stub_in_tuser_status_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  RR_counter_reg = _RAND_1[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
