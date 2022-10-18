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
module ArbitDecoder(
  input  [31:0] io_in_mask,
  output [5:0]  io_out_dec
);
  wire  grant_0 = io_in_mask[0]; // @[ArbitDecoder.scala 18:25]
  wire  notgranted_0 = ~grant_0; // @[ArbitDecoder.scala 19:20]
  wire  grant_1 = notgranted_0 & io_in_mask[1]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_1 = notgranted_0 & ~io_in_mask[1]; // @[ArbitDecoder.scala 22:38]
  wire  grant_2 = notgranted_1 & io_in_mask[2]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_2 = notgranted_1 & ~io_in_mask[2]; // @[ArbitDecoder.scala 22:38]
  wire  grant_3 = notgranted_2 & io_in_mask[3]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_3 = notgranted_2 & ~io_in_mask[3]; // @[ArbitDecoder.scala 22:38]
  wire  grant_4 = notgranted_3 & io_in_mask[4]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_4 = notgranted_3 & ~io_in_mask[4]; // @[ArbitDecoder.scala 22:38]
  wire  grant_5 = notgranted_4 & io_in_mask[5]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_5 = notgranted_4 & ~io_in_mask[5]; // @[ArbitDecoder.scala 22:38]
  wire  grant_6 = notgranted_5 & io_in_mask[6]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_6 = notgranted_5 & ~io_in_mask[6]; // @[ArbitDecoder.scala 22:38]
  wire  grant_7 = notgranted_6 & io_in_mask[7]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_7 = notgranted_6 & ~io_in_mask[7]; // @[ArbitDecoder.scala 22:38]
  wire  grant_8 = notgranted_7 & io_in_mask[8]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_8 = notgranted_7 & ~io_in_mask[8]; // @[ArbitDecoder.scala 22:38]
  wire  grant_9 = notgranted_8 & io_in_mask[9]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_9 = notgranted_8 & ~io_in_mask[9]; // @[ArbitDecoder.scala 22:38]
  wire  grant_10 = notgranted_9 & io_in_mask[10]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_10 = notgranted_9 & ~io_in_mask[10]; // @[ArbitDecoder.scala 22:38]
  wire  grant_11 = notgranted_10 & io_in_mask[11]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_11 = notgranted_10 & ~io_in_mask[11]; // @[ArbitDecoder.scala 22:38]
  wire  grant_12 = notgranted_11 & io_in_mask[12]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_12 = notgranted_11 & ~io_in_mask[12]; // @[ArbitDecoder.scala 22:38]
  wire  grant_13 = notgranted_12 & io_in_mask[13]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_13 = notgranted_12 & ~io_in_mask[13]; // @[ArbitDecoder.scala 22:38]
  wire  grant_14 = notgranted_13 & io_in_mask[14]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_14 = notgranted_13 & ~io_in_mask[14]; // @[ArbitDecoder.scala 22:38]
  wire  grant_15 = notgranted_14 & io_in_mask[15]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_15 = notgranted_14 & ~io_in_mask[15]; // @[ArbitDecoder.scala 22:38]
  wire  grant_16 = notgranted_15 & io_in_mask[16]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_16 = notgranted_15 & ~io_in_mask[16]; // @[ArbitDecoder.scala 22:38]
  wire  grant_17 = notgranted_16 & io_in_mask[17]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_17 = notgranted_16 & ~io_in_mask[17]; // @[ArbitDecoder.scala 22:38]
  wire  grant_18 = notgranted_17 & io_in_mask[18]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_18 = notgranted_17 & ~io_in_mask[18]; // @[ArbitDecoder.scala 22:38]
  wire  grant_19 = notgranted_18 & io_in_mask[19]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_19 = notgranted_18 & ~io_in_mask[19]; // @[ArbitDecoder.scala 22:38]
  wire  grant_20 = notgranted_19 & io_in_mask[20]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_20 = notgranted_19 & ~io_in_mask[20]; // @[ArbitDecoder.scala 22:38]
  wire  grant_21 = notgranted_20 & io_in_mask[21]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_21 = notgranted_20 & ~io_in_mask[21]; // @[ArbitDecoder.scala 22:38]
  wire  grant_22 = notgranted_21 & io_in_mask[22]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_22 = notgranted_21 & ~io_in_mask[22]; // @[ArbitDecoder.scala 22:38]
  wire  grant_23 = notgranted_22 & io_in_mask[23]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_23 = notgranted_22 & ~io_in_mask[23]; // @[ArbitDecoder.scala 22:38]
  wire  grant_24 = notgranted_23 & io_in_mask[24]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_24 = notgranted_23 & ~io_in_mask[24]; // @[ArbitDecoder.scala 22:38]
  wire  grant_25 = notgranted_24 & io_in_mask[25]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_25 = notgranted_24 & ~io_in_mask[25]; // @[ArbitDecoder.scala 22:38]
  wire  grant_26 = notgranted_25 & io_in_mask[26]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_26 = notgranted_25 & ~io_in_mask[26]; // @[ArbitDecoder.scala 22:38]
  wire  grant_27 = notgranted_26 & io_in_mask[27]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_27 = notgranted_26 & ~io_in_mask[27]; // @[ArbitDecoder.scala 22:38]
  wire  grant_28 = notgranted_27 & io_in_mask[28]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_28 = notgranted_27 & ~io_in_mask[28]; // @[ArbitDecoder.scala 22:38]
  wire  grant_29 = notgranted_28 & io_in_mask[29]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_29 = notgranted_28 & ~io_in_mask[29]; // @[ArbitDecoder.scala 22:38]
  wire  grant_30 = notgranted_29 & io_in_mask[30]; // @[ArbitDecoder.scala 21:33]
  wire  notgranted_30 = notgranted_29 & ~io_in_mask[30]; // @[ArbitDecoder.scala 22:38]
  wire  grant_31 = notgranted_30 & io_in_mask[31]; // @[ArbitDecoder.scala 21:33]
  wire [1:0] _T_7 = grant_2 ? 2'h2 : {{1'd0}, grant_1}; // @[ArbitDecoder.scala 25:73]
  wire [1:0] _T_11 = grant_3 ? 2'h3 : _T_7; // @[ArbitDecoder.scala 25:73]
  wire [2:0] _T_15 = grant_4 ? 3'h4 : {{1'd0}, _T_11}; // @[ArbitDecoder.scala 25:73]
  wire [2:0] _T_19 = grant_5 ? 3'h5 : _T_15; // @[ArbitDecoder.scala 25:73]
  wire [2:0] _T_23 = grant_6 ? 3'h6 : _T_19; // @[ArbitDecoder.scala 25:73]
  wire [2:0] _T_27 = grant_7 ? 3'h7 : _T_23; // @[ArbitDecoder.scala 25:73]
  wire [3:0] _T_31 = grant_8 ? 4'h8 : {{1'd0}, _T_27}; // @[ArbitDecoder.scala 25:73]
  wire [3:0] _T_35 = grant_9 ? 4'h9 : _T_31; // @[ArbitDecoder.scala 25:73]
  wire [3:0] _T_39 = grant_10 ? 4'ha : _T_35; // @[ArbitDecoder.scala 25:73]
  wire [3:0] _T_43 = grant_11 ? 4'hb : _T_39; // @[ArbitDecoder.scala 25:73]
  wire [3:0] _T_47 = grant_12 ? 4'hc : _T_43; // @[ArbitDecoder.scala 25:73]
  wire [3:0] _T_51 = grant_13 ? 4'hd : _T_47; // @[ArbitDecoder.scala 25:73]
  wire [3:0] _T_55 = grant_14 ? 4'he : _T_51; // @[ArbitDecoder.scala 25:73]
  wire [3:0] _T_59 = grant_15 ? 4'hf : _T_55; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_63 = grant_16 ? 5'h10 : {{1'd0}, _T_59}; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_67 = grant_17 ? 5'h11 : _T_63; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_71 = grant_18 ? 5'h12 : _T_67; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_75 = grant_19 ? 5'h13 : _T_71; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_79 = grant_20 ? 5'h14 : _T_75; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_83 = grant_21 ? 5'h15 : _T_79; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_87 = grant_22 ? 5'h16 : _T_83; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_91 = grant_23 ? 5'h17 : _T_87; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_95 = grant_24 ? 5'h18 : _T_91; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_99 = grant_25 ? 5'h19 : _T_95; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_103 = grant_26 ? 5'h1a : _T_99; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_107 = grant_27 ? 5'h1b : _T_103; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_111 = grant_28 ? 5'h1c : _T_107; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_115 = grant_29 ? 5'h1d : _T_111; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_119 = grant_30 ? 5'h1e : _T_115; // @[ArbitDecoder.scala 25:73]
  wire [4:0] _T_123 = grant_31 ? 5'h1f : _T_119; // @[ArbitDecoder.scala 25:73]
  assign io_out_dec = {{1'd0}, _T_123}; // @[ArbitDecoder.scala 26:14]
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
  input  [31:0]  io_c2h_sw_qid_mask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  buf__clock; // @[PackageHandler.scala 72:19]
  wire  buf__reset; // @[PackageHandler.scala 72:19]
  wire [511:0] buf__io_in_tdata; // @[PackageHandler.scala 72:19]
  wire  buf__io_in_tlast; // @[PackageHandler.scala 72:19]
  wire  buf__io_in_tvalid; // @[PackageHandler.scala 72:19]
  wire  buf__io_in_tready; // @[PackageHandler.scala 72:19]
  wire [63:0] buf__io_in_tkeep; // @[PackageHandler.scala 72:19]
  wire [15:0] buf__io_out_tlen; // @[PackageHandler.scala 72:19]
  wire [511:0] buf__io_out_tdata; // @[PackageHandler.scala 72:19]
  wire  buf__io_out_tlast; // @[PackageHandler.scala 72:19]
  wire  buf__io_out_tvalid; // @[PackageHandler.scala 72:19]
  wire  buf__io_out_tready; // @[PackageHandler.scala 72:19]
  wire [31:0] arbitDecoder_io_in_mask; // @[PackageHandler.scala 98:28]
  wire [5:0] arbitDecoder_io_out_dec; // @[PackageHandler.scala 98:28]
  wire  _buf_io_out_tready_T = ~io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 82:63]
  reg  QDMA_c2h_stub_in_tuser_status_reg; // @[PackageHandler.scala 85:50]
  wire  _T = io_QDMA_c2h_stub_in_tlast & io_QDMA_c2h_stub_in_tvalid; // @[PackageHandler.scala 86:34]
  wire  _T_1 = _T & io_QDMA_c2h_stub_in_tready; // @[PackageHandler.scala 87:35]
  wire  _T_3 = _T_1 & _buf_io_out_tready_T; // @[PackageHandler.scala 88:35]
  wire  _GEN_0 = io_QDMA_c2h_stub_in_tvalid & io_QDMA_c2h_stub_in_tready ? 1'h0 : QDMA_c2h_stub_in_tuser_status_reg; // @[PackageHandler.scala 90:104 85:50 90:69]
  wire  _GEN_1 = _T_3 | _GEN_0; // @[PackageHandler.scala 89:{36,71}]
  reg [31:0] sav_qid_mask_reg; // @[PackageHandler.scala 94:33]
  reg [31:0] cur_qid_mask_reg; // @[PackageHandler.scala 95:33]
  wire [5:0] cur_qid = arbitDecoder_io_out_dec; // @[PackageHandler.scala 102:11 97:21]
  wire [94:0] _next_qid_mask_T = 95'h1 << cur_qid; // @[PackageHandler.scala 100:53]
  wire [94:0] _next_qid_mask_T_1 = ~_next_qid_mask_T; // @[PackageHandler.scala 100:41]
  wire [94:0] _GEN_7 = {{63'd0}, cur_qid_mask_reg}; // @[PackageHandler.scala 100:38]
  wire [94:0] _next_qid_mask_T_2 = _GEN_7 & _next_qid_mask_T_1; // @[PackageHandler.scala 100:38]
  wire [31:0] next_qid_mask = _next_qid_mask_T_2[31:0]; // @[PackageHandler.scala 100:17 96:27]
  wire [10:0] Gen_c2h_hdr_qid = {{5'd0}, cur_qid}; // @[PackageHandler.scala 120:27 127:21]
  wire [5:0] Gen_c2h_hdr_flow_id = Gen_c2h_hdr_qid[5:0]; // @[PackageHandler.scala 120:27 125:25]
  wire [15:0] Gen_c2h_hdr_tdest = {{5'd0}, Gen_c2h_hdr_qid}; // @[PackageHandler.scala 120:27 125:63]
  wire [15:0] Gen_c2h_hdr_pkt_len = buf__io_out_tlen; // @[PackageHandler.scala 120:27 128:25]
  wire [511:0] _io_QDMA_c2h_stub_in_tdata_T = {362'h0,2'h0,4'h0,Gen_c2h_hdr_pkt_len,80'h0,Gen_c2h_hdr_tdest,10'h0,
    Gen_c2h_hdr_flow_id,5'h0,Gen_c2h_hdr_qid}; // @[PackageHandler.scala 129:46]
  PackageBufferFifo buf_ ( // @[PackageHandler.scala 72:19]
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
  ArbitDecoder arbitDecoder ( // @[PackageHandler.scala 98:28]
    .io_in_mask(arbitDecoder_io_in_mask),
    .io_out_dec(arbitDecoder_io_out_dec)
  );
  assign io_QDMA_h2c_stub_out_tready = io_CMAC_in_tready; // @[PackageHandler.scala 61:31]
  assign io_CMAC_in_tdata = io_QDMA_h2c_stub_out_tdata; // @[PackageHandler.scala 62:31]
  assign io_CMAC_in_tkeep = 64'hffffffffffffffff; // @[Bitwise.scala 74:12]
  assign io_CMAC_in_tlast = io_QDMA_h2c_stub_out_tlast; // @[PackageHandler.scala 63:31]
  assign io_CMAC_in_tvalid = io_QDMA_h2c_stub_out_tvalid & ~io_QDMA_h2c_stub_out_tuser; // @[PackageHandler.scala 64:62]
  assign io_CMAC_out_tready = buf__io_in_tready; // @[PackageHandler.scala 78:31]
  assign io_QDMA_c2h_stub_in_tdata = io_QDMA_c2h_stub_in_tuser ? _io_QDMA_c2h_stub_in_tdata_T : buf__io_out_tdata; // @[PackageHandler.scala 118:34 129:31 132:31]
  assign io_QDMA_c2h_stub_in_tuser = QDMA_c2h_stub_in_tuser_status_reg & io_QDMA_c2h_stub_in_tvalid; // @[PackageHandler.scala 92:73]
  assign io_QDMA_c2h_stub_in_tlast = buf__io_out_tlast; // @[PackageHandler.scala 80:31]
  assign io_QDMA_c2h_stub_in_tvalid = buf__io_out_tvalid; // @[PackageHandler.scala 81:31]
  assign buf__clock = clock;
  assign buf__reset = reset;
  assign buf__io_in_tdata = io_CMAC_out_tdata; // @[PackageHandler.scala 74:31]
  assign buf__io_in_tlast = io_CMAC_out_tlast; // @[PackageHandler.scala 76:31]
  assign buf__io_in_tvalid = io_CMAC_out_tvalid; // @[PackageHandler.scala 75:31]
  assign buf__io_in_tkeep = io_CMAC_out_tkeep; // @[PackageHandler.scala 77:31]
  assign buf__io_out_tready = io_QDMA_c2h_stub_in_tready & ~io_QDMA_c2h_stub_in_tuser; // @[PackageHandler.scala 82:61]
  assign arbitDecoder_io_in_mask = cur_qid_mask_reg; // @[PackageHandler.scala 101:27]
  always @(posedge clock) begin
    QDMA_c2h_stub_in_tuser_status_reg <= reset | _GEN_1; // @[PackageHandler.scala 85:{50,50}]
    if (reset) begin // @[PackageHandler.scala 94:33]
      sav_qid_mask_reg <= io_c2h_sw_qid_mask; // @[PackageHandler.scala 94:33]
    end else if (sav_qid_mask_reg != io_c2h_sw_qid_mask) begin // @[PackageHandler.scala 104:58]
      sav_qid_mask_reg <= io_c2h_sw_qid_mask; // @[PackageHandler.scala 106:22]
    end
    if (reset) begin // @[PackageHandler.scala 95:33]
      cur_qid_mask_reg <= io_c2h_sw_qid_mask; // @[PackageHandler.scala 95:33]
    end else if (sav_qid_mask_reg != io_c2h_sw_qid_mask) begin // @[PackageHandler.scala 104:58]
      cur_qid_mask_reg <= io_c2h_sw_qid_mask; // @[PackageHandler.scala 105:22]
    end else if (io_QDMA_c2h_stub_in_tlast) begin // @[PackageHandler.scala 108:40]
      if (next_qid_mask == 32'h0) begin // @[PackageHandler.scala 109:36]
        cur_qid_mask_reg <= sav_qid_mask_reg; // @[PackageHandler.scala 110:26]
      end else begin
        cur_qid_mask_reg <= next_qid_mask; // @[PackageHandler.scala 113:26]
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
  QDMA_c2h_stub_in_tuser_status_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  sav_qid_mask_reg = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  cur_qid_mask_reg = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
