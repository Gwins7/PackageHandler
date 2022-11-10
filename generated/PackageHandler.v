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
`endif // RANDOMIZE_REG_INIT
  reg [511:0] data_buf_reg [0:63]; // @[TxBufferFifo.scala 41:33]
  wire  data_buf_reg_rd_data_en; // @[TxBufferFifo.scala 41:33]
  wire [5:0] data_buf_reg_rd_data_addr; // @[TxBufferFifo.scala 41:33]
  wire [511:0] data_buf_reg_rd_data_data; // @[TxBufferFifo.scala 41:33]
  wire [511:0] data_buf_reg_MPORT_data; // @[TxBufferFifo.scala 41:33]
  wire [5:0] data_buf_reg_MPORT_addr; // @[TxBufferFifo.scala 41:33]
  wire  data_buf_reg_MPORT_mask; // @[TxBufferFifo.scala 41:33]
  wire  data_buf_reg_MPORT_en; // @[TxBufferFifo.scala 41:33]
  reg  data_buf_reg_rd_data_en_pipe_0;
  reg [5:0] data_buf_reg_rd_data_addr_pipe_0;
  reg  info_buf_reg_0_used; // @[TxBufferFifo.scala 44:29]
  reg  info_buf_reg_0_valid; // @[TxBufferFifo.scala 44:29]
  reg [31:0] info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 44:29]
  reg [31:0] info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 44:29]
  reg [5:0] info_buf_reg_0_burst; // @[TxBufferFifo.scala 44:29]
  reg  info_buf_reg_1_used; // @[TxBufferFifo.scala 44:29]
  reg  info_buf_reg_1_valid; // @[TxBufferFifo.scala 44:29]
  reg [31:0] info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 44:29]
  reg [31:0] info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 44:29]
  reg [5:0] info_buf_reg_1_burst; // @[TxBufferFifo.scala 44:29]
  reg [6:0] wr_index_reg; // @[TxBufferFifo.scala 45:29]
  reg [6:0] rd_index_reg; // @[TxBufferFifo.scala 46:29]
  reg [6:0] wr_pos_reg; // @[TxBufferFifo.scala 47:29]
  reg [6:0] rd_pos_reg; // @[TxBufferFifo.scala 48:29]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[TxBufferFifo.scala 53:40]
  reg [31:0] pack_counter; // @[TxBufferFifo.scala 56:29]
  reg [31:0] err_counter; // @[TxBufferFifo.scala 57:28]
  reg  is_overflowed; // @[TxBufferFifo.scala 62:30]
  wire [15:0] _ip_chksum_vec_0_T_2 = {io_in_tdata[119:112],io_in_tdata[127:120]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_1_T_2 = {io_in_tdata[135:128],io_in_tdata[143:136]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_2_T_2 = {io_in_tdata[151:144],io_in_tdata[159:152]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_3_T_2 = {io_in_tdata[167:160],io_in_tdata[175:168]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_4_T_2 = {io_in_tdata[183:176],io_in_tdata[191:184]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_6_T_2 = {io_in_tdata[215:208],io_in_tdata[223:216]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_7_T_2 = {io_in_tdata[231:224],io_in_tdata[239:232]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_8_T_2 = {io_in_tdata[247:240],io_in_tdata[255:248]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_9_T_2 = {io_in_tdata[263:256],io_in_tdata[271:264]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_0_T_2 = {io_in_tdata[7:0],io_in_tdata[15:8]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_1_T_2 = {io_in_tdata[23:16],io_in_tdata[31:24]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_2_T_2 = {io_in_tdata[39:32],io_in_tdata[47:40]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_3_T_2 = {io_in_tdata[55:48],io_in_tdata[63:56]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_4_T_2 = {io_in_tdata[71:64],io_in_tdata[79:72]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_5_T_2 = {io_in_tdata[87:80],io_in_tdata[95:88]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_6_T_2 = {io_in_tdata[103:96],io_in_tdata[111:104]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_12_T_2 = {io_in_tdata[199:192],io_in_tdata[207:200]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_17_T_2 = {io_in_tdata[279:272],io_in_tdata[287:280]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_18_T_2 = {io_in_tdata[295:288],io_in_tdata[303:296]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_19_T_2 = {io_in_tdata[311:304],io_in_tdata[319:312]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_20_T_2 = {io_in_tdata[327:320],io_in_tdata[335:328]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_21_T_2 = {io_in_tdata[343:336],io_in_tdata[351:344]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_22_T_2 = {io_in_tdata[359:352],io_in_tdata[367:360]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_23_T_2 = {io_in_tdata[375:368],io_in_tdata[383:376]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_24_T_2 = {io_in_tdata[391:384],io_in_tdata[399:392]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_25_T_2 = {io_in_tdata[407:400],io_in_tdata[415:408]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_26_T_2 = {io_in_tdata[423:416],io_in_tdata[431:424]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_27_T_2 = {io_in_tdata[439:432],io_in_tdata[447:440]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_28_T_2 = {io_in_tdata[455:448],io_in_tdata[463:456]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_29_T_2 = {io_in_tdata[471:464],io_in_tdata[479:472]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_30_T_2 = {io_in_tdata[487:480],io_in_tdata[495:488]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_31_T_2 = {io_in_tdata[503:496],io_in_tdata[511:504]}; // @[Cat.scala 31:58]
  wire [31:0] _pack_counter_T_1 = pack_counter + 32'h1; // @[TxBufferFifo.scala 96:38]
  wire [5:0] _GEN_2 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[TxBufferFifo.scala 98:{46,46}]
  wire [11:0] _GEN_184 = {wr_index_reg, 5'h0}; // @[TxBufferFifo.scala 107:40]
  wire [13:0] _wr_pos_reg_T = {{2'd0}, _GEN_184}; // @[TxBufferFifo.scala 107:40]
  wire  _GEN_3 = ~io_in_tlast | is_overflowed; // @[TxBufferFifo.scala 100:29 101:25 62:30]
  wire [13:0] _GEN_4 = ~io_in_tlast ? {{7'd0}, wr_pos_reg} : _wr_pos_reg_T; // @[TxBufferFifo.scala 100:29 107:24 47:29]
  wire [31:0] _err_counter_T_1 = err_counter + 32'h1; // @[TxBufferFifo.scala 110:36]
  wire [5:0] _GEN_5 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 111:{36,36} 44:29]
  wire [5:0] _GEN_6 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 111:{36,36} 44:29]
  wire [31:0] _GEN_7 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 111:{36,36} 44:29]
  wire [31:0] _GEN_8 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 111:{36,36} 44:29]
  wire [31:0] _GEN_9 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 111:{36,36} 44:29]
  wire [31:0] _GEN_10 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 111:{36,36} 44:29]
  wire  _GEN_11 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 111:{36,36} 44:29]
  wire  _GEN_12 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 111:{36,36} 44:29]
  wire  _GEN_13 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_used; // @[TxBufferFifo.scala 111:{36,36} 44:29]
  wire  _GEN_14 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_used; // @[TxBufferFifo.scala 111:{36,36} 44:29]
  wire  _T_5 = ~is_overflowed; // @[TxBufferFifo.scala 115:15]
  wire  _GEN_16 = wr_index_reg[0] ? info_buf_reg_1_used : info_buf_reg_0_used; // @[TxBufferFifo.scala 117:{17,17}]
  wire  _GEN_185 = ~wr_index_reg[0]; // @[TxBufferFifo.scala 118:{45,45} 44:29]
  wire  _GEN_17 = ~wr_index_reg[0] | info_buf_reg_0_used; // @[TxBufferFifo.scala 118:{45,45} 44:29]
  wire  _GEN_18 = wr_index_reg[0] | info_buf_reg_1_used; // @[TxBufferFifo.scala 118:{45,45} 44:29]
  wire [31:0] ip_chksum_vec_0 = {{16'd0}, _ip_chksum_vec_0_T_2}; // @[TxBufferFifo.scala 70:27 73:27]
  wire [31:0] ip_chksum_vec_1 = {{16'd0}, _ip_chksum_vec_1_T_2}; // @[TxBufferFifo.scala 70:27 73:27]
  wire [31:0] _info_buf_reg_ip_chksum_T_1 = ip_chksum_vec_0 + ip_chksum_vec_1; // @[TxBufferFifo.scala 119:79]
  wire [31:0] ip_chksum_vec_2 = {{16'd0}, _ip_chksum_vec_2_T_2}; // @[TxBufferFifo.scala 70:27 73:27]
  wire [31:0] ip_chksum_vec_3 = {{16'd0}, _ip_chksum_vec_3_T_2}; // @[TxBufferFifo.scala 70:27 73:27]
  wire [31:0] _info_buf_reg_ip_chksum_T_3 = ip_chksum_vec_2 + ip_chksum_vec_3; // @[TxBufferFifo.scala 119:79]
  wire [31:0] ip_chksum_vec_4 = {{16'd0}, _ip_chksum_vec_4_T_2}; // @[TxBufferFifo.scala 70:27 73:27]
  wire [32:0] _info_buf_reg_ip_chksum_T_4 = {{1'd0}, ip_chksum_vec_4}; // @[TxBufferFifo.scala 119:79]
  wire [31:0] ip_chksum_vec_6 = {{16'd0}, _ip_chksum_vec_6_T_2}; // @[TxBufferFifo.scala 70:27 73:27]
  wire [31:0] ip_chksum_vec_7 = {{16'd0}, _ip_chksum_vec_7_T_2}; // @[TxBufferFifo.scala 70:27 73:27]
  wire [31:0] _info_buf_reg_ip_chksum_T_7 = ip_chksum_vec_6 + ip_chksum_vec_7; // @[TxBufferFifo.scala 119:79]
  wire [31:0] ip_chksum_vec_8 = {{16'd0}, _ip_chksum_vec_8_T_2}; // @[TxBufferFifo.scala 70:27 73:27]
  wire [31:0] ip_chksum_vec_9 = {{16'd0}, _ip_chksum_vec_9_T_2}; // @[TxBufferFifo.scala 70:27 73:27]
  wire [31:0] _info_buf_reg_ip_chksum_T_9 = ip_chksum_vec_8 + ip_chksum_vec_9; // @[TxBufferFifo.scala 119:79]
  wire [31:0] _info_buf_reg_ip_chksum_T_11 = _info_buf_reg_ip_chksum_T_1 + _info_buf_reg_ip_chksum_T_3; // @[TxBufferFifo.scala 119:79]
  wire [31:0] _info_buf_reg_ip_chksum_T_13 = _info_buf_reg_ip_chksum_T_4[31:0] + _info_buf_reg_ip_chksum_T_7; // @[TxBufferFifo.scala 119:79]
  wire [31:0] _info_buf_reg_ip_chksum_T_15 = _info_buf_reg_ip_chksum_T_11 + _info_buf_reg_ip_chksum_T_13; // @[TxBufferFifo.scala 119:79]
  wire [31:0] _info_buf_reg_ip_chksum_T_17 = _info_buf_reg_ip_chksum_T_15 + _info_buf_reg_ip_chksum_T_9; // @[TxBufferFifo.scala 119:79]
  wire [31:0] _GEN_19 = ~wr_index_reg[0] ? _info_buf_reg_ip_chksum_T_17 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 119:{50,50} 44:29]
  wire [31:0] _GEN_20 = wr_index_reg[0] ? _info_buf_reg_ip_chksum_T_17 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 119:{50,50} 44:29]
  wire [32:0] _info_buf_reg_tcp_chksum_T_8 = {{1'd0}, ip_chksum_vec_1}; // @[TxBufferFifo.scala 120:85]
  wire [31:0] tcp_hdr_chksum_vec_11 = {{24'd0}, io_in_tdata[191:184]}; // @[TxBufferFifo.scala 81:32 84:43]
  wire [32:0] _info_buf_reg_tcp_chksum_T_10 = {{1'd0}, tcp_hdr_chksum_vec_11}; // @[TxBufferFifo.scala 120:85]
  wire [32:0] _info_buf_reg_tcp_chksum_T_12 = {{1'd0}, ip_chksum_vec_6}; // @[TxBufferFifo.scala 120:85]
  wire [31:0] _info_buf_reg_tcp_chksum_T_15 = ip_chksum_vec_7 + ip_chksum_vec_8; // @[TxBufferFifo.scala 120:85]
  wire [31:0] tcp_hdr_chksum_vec_17 = {{16'd0}, _tcp_pld_chksum_vec_17_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [31:0] _info_buf_reg_tcp_chksum_T_17 = ip_chksum_vec_9 + tcp_hdr_chksum_vec_17; // @[TxBufferFifo.scala 120:85]
  wire [31:0] tcp_hdr_chksum_vec_18 = {{16'd0}, _tcp_pld_chksum_vec_18_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [31:0] tcp_hdr_chksum_vec_19 = {{16'd0}, _tcp_pld_chksum_vec_19_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [31:0] _info_buf_reg_tcp_chksum_T_19 = tcp_hdr_chksum_vec_18 + tcp_hdr_chksum_vec_19; // @[TxBufferFifo.scala 120:85]
  wire [31:0] tcp_hdr_chksum_vec_20 = {{16'd0}, _tcp_pld_chksum_vec_20_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [31:0] tcp_hdr_chksum_vec_21 = {{16'd0}, _tcp_pld_chksum_vec_21_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [31:0] _info_buf_reg_tcp_chksum_T_21 = tcp_hdr_chksum_vec_20 + tcp_hdr_chksum_vec_21; // @[TxBufferFifo.scala 120:85]
  wire [31:0] tcp_hdr_chksum_vec_22 = {{16'd0}, _tcp_pld_chksum_vec_22_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [31:0] tcp_hdr_chksum_vec_23 = {{16'd0}, _tcp_pld_chksum_vec_23_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [31:0] _info_buf_reg_tcp_chksum_T_23 = tcp_hdr_chksum_vec_22 + tcp_hdr_chksum_vec_23; // @[TxBufferFifo.scala 120:85]
  wire [31:0] tcp_hdr_chksum_vec_24 = {{16'd0}, _tcp_pld_chksum_vec_24_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [32:0] _info_buf_reg_tcp_chksum_T_24 = {{1'd0}, tcp_hdr_chksum_vec_24}; // @[TxBufferFifo.scala 120:85]
  wire [31:0] tcp_hdr_chksum_vec_26 = {{16'd0}, _tcp_pld_chksum_vec_26_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [31:0] tcp_hdr_chksum_vec_27 = {{16'd0}, _tcp_pld_chksum_vec_27_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [31:0] _info_buf_reg_tcp_chksum_T_27 = tcp_hdr_chksum_vec_26 + tcp_hdr_chksum_vec_27; // @[TxBufferFifo.scala 120:85]
  wire [31:0] tcp_hdr_chksum_vec_28 = {{16'd0}, _tcp_pld_chksum_vec_28_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [31:0] tcp_hdr_chksum_vec_29 = {{16'd0}, _tcp_pld_chksum_vec_29_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [31:0] _info_buf_reg_tcp_chksum_T_29 = tcp_hdr_chksum_vec_28 + tcp_hdr_chksum_vec_29; // @[TxBufferFifo.scala 120:85]
  wire [31:0] tcp_hdr_chksum_vec_30 = {{16'd0}, _tcp_pld_chksum_vec_30_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [31:0] tcp_hdr_chksum_vec_31 = {{16'd0}, _tcp_pld_chksum_vec_31_T_2}; // @[TxBufferFifo.scala 81:32 83:57]
  wire [31:0] _info_buf_reg_tcp_chksum_T_31 = tcp_hdr_chksum_vec_30 + tcp_hdr_chksum_vec_31; // @[TxBufferFifo.scala 120:85]
  wire [31:0] _info_buf_reg_tcp_chksum_T_37 = _info_buf_reg_tcp_chksum_T_8[31:0] + _info_buf_reg_tcp_chksum_T_10[31:0]; // @[TxBufferFifo.scala 120:85]
  wire [31:0] _info_buf_reg_tcp_chksum_T_39 = _info_buf_reg_tcp_chksum_T_12[31:0] + _info_buf_reg_tcp_chksum_T_15; // @[TxBufferFifo.scala 120:85]
  wire [31:0] _info_buf_reg_tcp_chksum_T_41 = _info_buf_reg_tcp_chksum_T_17 + _info_buf_reg_tcp_chksum_T_19; // @[TxBufferFifo.scala 120:85]
  wire [31:0] _info_buf_reg_tcp_chksum_T_43 = _info_buf_reg_tcp_chksum_T_21 + _info_buf_reg_tcp_chksum_T_23; // @[TxBufferFifo.scala 120:85]
  wire [31:0] _info_buf_reg_tcp_chksum_T_45 = _info_buf_reg_tcp_chksum_T_24[31:0] + _info_buf_reg_tcp_chksum_T_27; // @[TxBufferFifo.scala 120:85]
  wire [31:0] _info_buf_reg_tcp_chksum_T_47 = _info_buf_reg_tcp_chksum_T_29 + _info_buf_reg_tcp_chksum_T_31; // @[TxBufferFifo.scala 120:85]
  wire [31:0] _info_buf_reg_tcp_chksum_T_51 = _info_buf_reg_tcp_chksum_T_37 + _info_buf_reg_tcp_chksum_T_39; // @[TxBufferFifo.scala 120:85]
  wire [31:0] _info_buf_reg_tcp_chksum_T_53 = _info_buf_reg_tcp_chksum_T_41 + _info_buf_reg_tcp_chksum_T_43; // @[TxBufferFifo.scala 120:85]
  wire [31:0] _info_buf_reg_tcp_chksum_T_55 = _info_buf_reg_tcp_chksum_T_45 + _info_buf_reg_tcp_chksum_T_47; // @[TxBufferFifo.scala 120:85]
  wire [32:0] _info_buf_reg_tcp_chksum_T_56 = {{1'd0}, _info_buf_reg_tcp_chksum_T_51}; // @[TxBufferFifo.scala 120:85]
  wire [31:0] _info_buf_reg_tcp_chksum_T_59 = _info_buf_reg_tcp_chksum_T_53 + _info_buf_reg_tcp_chksum_T_55; // @[TxBufferFifo.scala 120:85]
  wire [31:0] _info_buf_reg_tcp_chksum_T_61 = _info_buf_reg_tcp_chksum_T_56[31:0] + _info_buf_reg_tcp_chksum_T_59; // @[TxBufferFifo.scala 120:85]
  wire [31:0] _info_buf_reg_tcp_chksum_T_63 = _info_buf_reg_tcp_chksum_T_61 - 32'h14; // @[TxBufferFifo.scala 120:89]
  wire [31:0] _GEN_21 = ~wr_index_reg[0] ? _info_buf_reg_tcp_chksum_T_63 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 120:{51,51} 44:29]
  wire [31:0] _GEN_22 = wr_index_reg[0] ? _info_buf_reg_tcp_chksum_T_63 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 120:{51,51} 44:29]
  wire [31:0] tcp_pld_chksum_vec_0 = {{16'd0}, _tcp_pld_chksum_vec_0_T_2}; // @[TxBufferFifo.scala 76:32 78:27]
  wire [31:0] tcp_pld_chksum_vec_1 = {{16'd0}, _tcp_pld_chksum_vec_1_T_2}; // @[TxBufferFifo.scala 76:32 78:27]
  wire [31:0] _info_buf_reg_tcp_chksum_T_66 = tcp_pld_chksum_vec_0 + tcp_pld_chksum_vec_1; // @[TxBufferFifo.scala 122:125]
  wire [31:0] tcp_pld_chksum_vec_2 = {{16'd0}, _tcp_pld_chksum_vec_2_T_2}; // @[TxBufferFifo.scala 76:32 78:27]
  wire [31:0] tcp_pld_chksum_vec_3 = {{16'd0}, _tcp_pld_chksum_vec_3_T_2}; // @[TxBufferFifo.scala 76:32 78:27]
  wire [31:0] _info_buf_reg_tcp_chksum_T_68 = tcp_pld_chksum_vec_2 + tcp_pld_chksum_vec_3; // @[TxBufferFifo.scala 122:125]
  wire [31:0] tcp_pld_chksum_vec_4 = {{16'd0}, _tcp_pld_chksum_vec_4_T_2}; // @[TxBufferFifo.scala 76:32 78:27]
  wire [31:0] tcp_pld_chksum_vec_5 = {{16'd0}, _tcp_pld_chksum_vec_5_T_2}; // @[TxBufferFifo.scala 76:32 78:27]
  wire [31:0] _info_buf_reg_tcp_chksum_T_70 = tcp_pld_chksum_vec_4 + tcp_pld_chksum_vec_5; // @[TxBufferFifo.scala 122:125]
  wire [31:0] tcp_pld_chksum_vec_6 = {{16'd0}, _tcp_pld_chksum_vec_6_T_2}; // @[TxBufferFifo.scala 76:32 78:27]
  wire [31:0] _info_buf_reg_tcp_chksum_T_72 = tcp_pld_chksum_vec_6 + ip_chksum_vec_0; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _info_buf_reg_tcp_chksum_T_74 = ip_chksum_vec_1 + ip_chksum_vec_2; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _info_buf_reg_tcp_chksum_T_76 = ip_chksum_vec_3 + ip_chksum_vec_4; // @[TxBufferFifo.scala 122:125]
  wire [31:0] tcp_pld_chksum_vec_12 = {{16'd0}, _tcp_pld_chksum_vec_12_T_2}; // @[TxBufferFifo.scala 76:32 78:27]
  wire [31:0] _info_buf_reg_tcp_chksum_T_78 = tcp_pld_chksum_vec_12 + ip_chksum_vec_6; // @[TxBufferFifo.scala 122:125]
  wire [31:0] tcp_pld_chksum_vec_25 = {{16'd0}, _tcp_pld_chksum_vec_25_T_2}; // @[TxBufferFifo.scala 76:32 78:27]
  wire [31:0] _info_buf_reg_tcp_chksum_T_90 = tcp_hdr_chksum_vec_24 + tcp_pld_chksum_vec_25; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _info_buf_reg_tcp_chksum_T_98 = _info_buf_reg_tcp_chksum_T_66 + _info_buf_reg_tcp_chksum_T_68; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _info_buf_reg_tcp_chksum_T_100 = _info_buf_reg_tcp_chksum_T_70 + _info_buf_reg_tcp_chksum_T_72; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _info_buf_reg_tcp_chksum_T_102 = _info_buf_reg_tcp_chksum_T_74 + _info_buf_reg_tcp_chksum_T_76; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _info_buf_reg_tcp_chksum_T_104 = _info_buf_reg_tcp_chksum_T_78 + _info_buf_reg_tcp_chksum_T_15; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _info_buf_reg_tcp_chksum_T_110 = _info_buf_reg_tcp_chksum_T_90 + _info_buf_reg_tcp_chksum_T_27; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _info_buf_reg_tcp_chksum_T_114 = _info_buf_reg_tcp_chksum_T_98 + _info_buf_reg_tcp_chksum_T_100; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _info_buf_reg_tcp_chksum_T_116 = _info_buf_reg_tcp_chksum_T_102 + _info_buf_reg_tcp_chksum_T_104; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _info_buf_reg_tcp_chksum_T_120 = _info_buf_reg_tcp_chksum_T_110 + _info_buf_reg_tcp_chksum_T_47; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _info_buf_reg_tcp_chksum_T_122 = _info_buf_reg_tcp_chksum_T_114 + _info_buf_reg_tcp_chksum_T_116; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _info_buf_reg_tcp_chksum_T_124 = _info_buf_reg_tcp_chksum_T_53 + _info_buf_reg_tcp_chksum_T_120; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _info_buf_reg_tcp_chksum_T_126 = _info_buf_reg_tcp_chksum_T_122 + _info_buf_reg_tcp_chksum_T_124; // @[TxBufferFifo.scala 122:125]
  wire [31:0] _GEN_24 = wr_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 122:{92,92}]
  wire [31:0] _info_buf_reg_tcp_chksum_T_128 = _GEN_24 + _info_buf_reg_tcp_chksum_T_126; // @[TxBufferFifo.scala 122:92]
  wire [31:0] _GEN_25 = ~wr_index_reg[0] ? _info_buf_reg_tcp_chksum_T_128 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 122:{51,51} 44:29]
  wire [31:0] _GEN_26 = wr_index_reg[0] ? _info_buf_reg_tcp_chksum_T_128 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 122:{51,51} 44:29]
  wire  _GEN_27 = ~_GEN_16 ? _GEN_17 : info_buf_reg_0_used; // @[TxBufferFifo.scala 117:51 44:29]
  wire  _GEN_28 = ~_GEN_16 ? _GEN_18 : info_buf_reg_1_used; // @[TxBufferFifo.scala 117:51 44:29]
  wire [31:0] _GEN_29 = ~_GEN_16 ? _GEN_19 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 117:51 44:29]
  wire [31:0] _GEN_30 = ~_GEN_16 ? _GEN_20 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 117:51 44:29]
  wire [31:0] _GEN_31 = ~_GEN_16 ? _GEN_21 : _GEN_25; // @[TxBufferFifo.scala 117:51]
  wire [31:0] _GEN_32 = ~_GEN_16 ? _GEN_22 : _GEN_26; // @[TxBufferFifo.scala 117:51]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_2 + 6'h1; // @[TxBufferFifo.scala 125:80]
  wire [5:0] _GEN_35 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 125:{44,44} 44:29]
  wire [5:0] _GEN_36 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 125:{44,44} 44:29]
  wire  _GEN_37 = _GEN_185 | info_buf_reg_0_valid; // @[TxBufferFifo.scala 127:{46,46} 44:29]
  wire  _GEN_38 = wr_index_reg[0] | info_buf_reg_1_valid; // @[TxBufferFifo.scala 127:{46,46} 44:29]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[TxBufferFifo.scala 37:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[TxBufferFifo.scala 37:19]
  wire [11:0] _GEN_187 = {_wr_index_reg_T_2, 5'h0}; // @[TxBufferFifo.scala 129:51]
  wire [13:0] _wr_pos_reg_T_4 = {{2'd0}, _GEN_187}; // @[TxBufferFifo.scala 129:51]
  wire [6:0] _wr_pos_reg_T_6 = wr_pos_reg + 7'h1; // @[TxBufferFifo.scala 131:38]
  wire  _GEN_39 = io_in_tlast ? _GEN_37 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 126:30 44:29]
  wire  _GEN_40 = io_in_tlast ? _GEN_38 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 126:30 44:29]
  wire [6:0] _GEN_41 = io_in_tlast ? _wr_index_reg_T_2 : wr_index_reg; // @[TxBufferFifo.scala 126:30 128:26 45:29]
  wire [13:0] _GEN_42 = io_in_tlast ? _wr_pos_reg_T_4 : {{7'd0}, _wr_pos_reg_T_6}; // @[TxBufferFifo.scala 126:30 129:24 131:24]
  wire  _GEN_43 = io_in_tlast ? 1'h0 : is_overflowed; // @[TxBufferFifo.scala 133:34 135:25 62:30]
  wire [13:0] _GEN_44 = io_in_tlast ? _wr_pos_reg_T : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 133:34 136:22 47:29]
  wire  _GEN_45 = ~is_overflowed ? _GEN_27 : info_buf_reg_0_used; // @[TxBufferFifo.scala 115:30 44:29]
  wire  _GEN_46 = ~is_overflowed ? _GEN_28 : info_buf_reg_1_used; // @[TxBufferFifo.scala 115:30 44:29]
  wire [31:0] _GEN_47 = ~is_overflowed ? _GEN_29 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 115:30 44:29]
  wire [31:0] _GEN_48 = ~is_overflowed ? _GEN_30 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 115:30 44:29]
  wire [31:0] _GEN_49 = ~is_overflowed ? _GEN_31 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 115:30 44:29]
  wire [31:0] _GEN_50 = ~is_overflowed ? _GEN_32 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 115:30 44:29]
  wire [5:0] _GEN_56 = ~is_overflowed ? _GEN_35 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 115:30 44:29]
  wire [5:0] _GEN_57 = ~is_overflowed ? _GEN_36 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 115:30 44:29]
  wire  _GEN_58 = ~is_overflowed ? _GEN_39 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 115:30 44:29]
  wire  _GEN_59 = ~is_overflowed ? _GEN_40 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 115:30 44:29]
  wire [6:0] _GEN_60 = ~is_overflowed ? _GEN_41 : wr_index_reg; // @[TxBufferFifo.scala 115:30 45:29]
  wire [13:0] _GEN_61 = ~is_overflowed ? _GEN_42 : _GEN_44; // @[TxBufferFifo.scala 115:30]
  wire  _GEN_62 = ~is_overflowed ? is_overflowed : _GEN_43; // @[TxBufferFifo.scala 115:30 62:30]
  wire [13:0] _GEN_64 = _GEN_2 == 6'h20 ? _GEN_4 : _GEN_61; // @[TxBufferFifo.scala 98:63]
  wire [5:0] _GEN_66 = _GEN_2 == 6'h20 ? _GEN_5 : _GEN_56; // @[TxBufferFifo.scala 98:63]
  wire [5:0] _GEN_67 = _GEN_2 == 6'h20 ? _GEN_6 : _GEN_57; // @[TxBufferFifo.scala 98:63]
  wire [31:0] _GEN_68 = _GEN_2 == 6'h20 ? _GEN_7 : _GEN_49; // @[TxBufferFifo.scala 98:63]
  wire [31:0] _GEN_69 = _GEN_2 == 6'h20 ? _GEN_8 : _GEN_50; // @[TxBufferFifo.scala 98:63]
  wire [31:0] _GEN_70 = _GEN_2 == 6'h20 ? _GEN_9 : _GEN_47; // @[TxBufferFifo.scala 98:63]
  wire [31:0] _GEN_71 = _GEN_2 == 6'h20 ? _GEN_10 : _GEN_48; // @[TxBufferFifo.scala 98:63]
  wire  _GEN_72 = _GEN_2 == 6'h20 ? _GEN_11 : _GEN_58; // @[TxBufferFifo.scala 98:63]
  wire  _GEN_73 = _GEN_2 == 6'h20 ? _GEN_12 : _GEN_59; // @[TxBufferFifo.scala 98:63]
  wire  _GEN_74 = _GEN_2 == 6'h20 ? _GEN_13 : _GEN_45; // @[TxBufferFifo.scala 98:63]
  wire  _GEN_75 = _GEN_2 == 6'h20 ? _GEN_14 : _GEN_46; // @[TxBufferFifo.scala 98:63]
  wire  _GEN_78 = _GEN_2 == 6'h20 ? 1'h0 : _T_5; // @[TxBufferFifo.scala 41:33 98:63]
  wire [13:0] _GEN_84 = io_in_tready & io_in_tvalid ? _GEN_64 : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 47:29 94:45]
  wire [5:0] _GEN_86 = io_in_tready & io_in_tvalid ? _GEN_66 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 44:29 94:45]
  wire [5:0] _GEN_87 = io_in_tready & io_in_tvalid ? _GEN_67 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 44:29 94:45]
  wire [31:0] _GEN_88 = io_in_tready & io_in_tvalid ? _GEN_68 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 44:29 94:45]
  wire [31:0] _GEN_89 = io_in_tready & io_in_tvalid ? _GEN_69 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 44:29 94:45]
  wire [31:0] _GEN_90 = io_in_tready & io_in_tvalid ? _GEN_70 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 44:29 94:45]
  wire [31:0] _GEN_91 = io_in_tready & io_in_tvalid ? _GEN_71 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 44:29 94:45]
  wire  _GEN_92 = io_in_tready & io_in_tvalid ? _GEN_72 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 44:29 94:45]
  wire  _GEN_93 = io_in_tready & io_in_tvalid ? _GEN_73 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 44:29 94:45]
  wire  _GEN_94 = io_in_tready & io_in_tvalid ? _GEN_74 : info_buf_reg_0_used; // @[TxBufferFifo.scala 44:29 94:45]
  wire  _GEN_95 = io_in_tready & io_in_tvalid ? _GEN_75 : info_buf_reg_1_used; // @[TxBufferFifo.scala 44:29 94:45]
  wire  _GEN_98 = io_in_tready & io_in_tvalid & _GEN_78; // @[TxBufferFifo.scala 41:33 94:45]
  wire [13:0] _GEN_105 = io_reset_counter ? {{7'd0}, wr_pos_reg} : _GEN_84; // @[TxBufferFifo.scala 90:26 47:29]
  wire [5:0] _GEN_106 = io_reset_counter ? info_buf_reg_0_burst : _GEN_86; // @[TxBufferFifo.scala 90:26 44:29]
  wire [5:0] _GEN_107 = io_reset_counter ? info_buf_reg_1_burst : _GEN_87; // @[TxBufferFifo.scala 90:26 44:29]
  wire [31:0] _GEN_108 = io_reset_counter ? info_buf_reg_0_tcp_chksum : _GEN_88; // @[TxBufferFifo.scala 90:26 44:29]
  wire [31:0] _GEN_109 = io_reset_counter ? info_buf_reg_1_tcp_chksum : _GEN_89; // @[TxBufferFifo.scala 90:26 44:29]
  wire [31:0] _GEN_110 = io_reset_counter ? info_buf_reg_0_ip_chksum : _GEN_90; // @[TxBufferFifo.scala 90:26 44:29]
  wire [31:0] _GEN_111 = io_reset_counter ? info_buf_reg_1_ip_chksum : _GEN_91; // @[TxBufferFifo.scala 90:26 44:29]
  wire  _GEN_112 = io_reset_counter ? info_buf_reg_0_valid : _GEN_92; // @[TxBufferFifo.scala 90:26 44:29]
  wire  _GEN_113 = io_reset_counter ? info_buf_reg_1_valid : _GEN_93; // @[TxBufferFifo.scala 90:26 44:29]
  wire  _GEN_114 = io_reset_counter ? info_buf_reg_0_used : _GEN_94; // @[TxBufferFifo.scala 90:26 44:29]
  wire  _GEN_115 = io_reset_counter ? info_buf_reg_1_used : _GEN_95; // @[TxBufferFifo.scala 90:26 44:29]
  wire  shake_hand = io_out_tready & io_out_tvalid; // @[TxBufferFifo.scala 143:34]
  wire [5:0] _GEN_125 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[TxBufferFifo.scala 146:{70,70}]
  wire  _io_out_tlast_T_1 = _GEN_125 == 6'h1; // @[TxBufferFifo.scala 146:70]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[TxBufferFifo.scala 37:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[TxBufferFifo.scala 37:19]
  wire [11:0] _GEN_189 = {_rd_pos_next_T_2, 5'h0}; // @[TxBufferFifo.scala 176:44]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_189}; // @[TxBufferFifo.scala 176:44]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[TxBufferFifo.scala 178:31]
  wire [13:0] _GEN_183 = _io_out_tlast_T_1 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[TxBufferFifo.scala 175:51 176:17 178:17]
  wire [6:0] rd_pos_next = _GEN_183[6:0];
  wire [6:0] _rd_data_T = shake_hand ? rd_pos_next : rd_pos_reg; // @[TxBufferFifo.scala 149:33]
  wire [31:0] _GEN_127 = rd_index_reg[0] ? info_buf_reg_1_ip_chksum : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 152:{60,60}]
  wire [15:0] _end_ip_chksum_T_8 = _GEN_127[31:16] + _GEN_127[15:0]; // @[TxBufferFifo.scala 153:71]
  wire [15:0] _end_ip_chksum_T_9 = ~_end_ip_chksum_T_8; // @[TxBufferFifo.scala 153:25]
  wire [15:0] _end_ip_chksum_T_12 = ~_GEN_127[15:0]; // @[TxBufferFifo.scala 153:118]
  wire [15:0] end_ip_chksum = _GEN_127[31:16] > 16'h0 ? _end_ip_chksum_T_9 : _end_ip_chksum_T_12; // @[TxBufferFifo.scala 152:23]
  wire [31:0] _GEN_135 = rd_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 155:{62,62}]
  wire [15:0] _end_tcp_chksum_T_8 = _GEN_135[31:16] + _GEN_135[15:0]; // @[TxBufferFifo.scala 156:72]
  wire [15:0] _end_tcp_chksum_T_9 = ~_end_tcp_chksum_T_8; // @[TxBufferFifo.scala 156:25]
  wire [15:0] _end_tcp_chksum_T_12 = ~_GEN_135[15:0]; // @[TxBufferFifo.scala 156:120]
  wire [15:0] end_tcp_chksum = _GEN_135[31:16] > 16'h0 ? _end_tcp_chksum_T_9 : _end_tcp_chksum_T_12; // @[TxBufferFifo.scala 155:24]
  wire [11:0] _GEN_190 = {rd_index_reg, 5'h0}; // @[TxBufferFifo.scala 161:52]
  wire [13:0] _io_out_tdata_T = {{2'd0}, _GEN_190}; // @[TxBufferFifo.scala 161:52]
  wire [13:0] _GEN_191 = {{7'd0}, rd_pos_reg}; // @[TxBufferFifo.scala 161:34]
  wire [511:0] _io_out_tdata_T_5 = {data_buf_reg_rd_data_data[511:416],end_tcp_chksum[7:0],end_tcp_chksum[15:8],
    data_buf_reg_rd_data_data[399:208],end_ip_chksum[7:0],end_ip_chksum[15:8],data_buf_reg_rd_data_data[191:0]}; // @[Cat.scala 31:58]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_125 - 6'h1; // @[TxBufferFifo.scala 172:76]
  wire [13:0] _GEN_192 = reset ? 14'h0 : _GEN_105; // @[TxBufferFifo.scala 47:{29,29}]
  assign data_buf_reg_rd_data_en = data_buf_reg_rd_data_en_pipe_0;
  assign data_buf_reg_rd_data_addr = data_buf_reg_rd_data_addr_pipe_0;
  assign data_buf_reg_rd_data_data = data_buf_reg[data_buf_reg_rd_data_addr]; // @[TxBufferFifo.scala 41:33]
  assign data_buf_reg_MPORT_data = io_in_tdata;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_reset_counter ? 1'h0 : _GEN_98;
  assign io_in_tready = ~buf_full; // @[TxBufferFifo.scala 55:19]
  assign io_out_tdata = _GEN_191 == _io_out_tdata_T ? _io_out_tdata_T_5 : data_buf_reg_rd_data_data; // @[TxBufferFifo.scala 161:22]
  assign io_out_tlast = io_out_tvalid & _GEN_125 == 6'h1; // @[TxBufferFifo.scala 146:34]
  assign io_out_tvalid = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[TxBufferFifo.scala 145:{17,17}]
  assign io_out_pack_counter = pack_counter; // @[TxBufferFifo.scala 59:23]
  assign io_out_err_counter = err_counter; // @[TxBufferFifo.scala 60:22]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[TxBufferFifo.scala 41:33]
    end
    data_buf_reg_rd_data_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      data_buf_reg_rd_data_addr_pipe_0 <= _rd_data_T[5:0];
    end
    if (reset) begin // @[TxBufferFifo.scala 44:29]
      info_buf_reg_0_used <= 1'h0; // @[TxBufferFifo.scala 44:29]
    end else if (shake_hand) begin // @[TxBufferFifo.scala 164:20]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 168:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 169:34]
          info_buf_reg_0_used <= 1'h0; // @[TxBufferFifo.scala 169:34]
        end else begin
          info_buf_reg_0_used <= _GEN_114;
        end
      end else begin
        info_buf_reg_0_used <= _GEN_114;
      end
    end else begin
      info_buf_reg_0_used <= _GEN_114;
    end
    if (reset) begin // @[TxBufferFifo.scala 44:29]
      info_buf_reg_0_valid <= 1'h0; // @[TxBufferFifo.scala 44:29]
    end else if (shake_hand) begin // @[TxBufferFifo.scala 164:20]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 168:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 169:34]
          info_buf_reg_0_valid <= 1'h0; // @[TxBufferFifo.scala 169:34]
        end else begin
          info_buf_reg_0_valid <= _GEN_112;
        end
      end else begin
        info_buf_reg_0_valid <= _GEN_112;
      end
    end else begin
      info_buf_reg_0_valid <= _GEN_112;
    end
    if (reset) begin // @[TxBufferFifo.scala 44:29]
      info_buf_reg_0_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 44:29]
    end else if (shake_hand) begin // @[TxBufferFifo.scala 164:20]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 168:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 169:34]
          info_buf_reg_0_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 169:34]
        end else begin
          info_buf_reg_0_ip_chksum <= _GEN_110;
        end
      end else begin
        info_buf_reg_0_ip_chksum <= _GEN_110;
      end
    end else begin
      info_buf_reg_0_ip_chksum <= _GEN_110;
    end
    if (reset) begin // @[TxBufferFifo.scala 44:29]
      info_buf_reg_0_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 44:29]
    end else if (shake_hand) begin // @[TxBufferFifo.scala 164:20]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 168:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 169:34]
          info_buf_reg_0_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 169:34]
        end else begin
          info_buf_reg_0_tcp_chksum <= _GEN_108;
        end
      end else begin
        info_buf_reg_0_tcp_chksum <= _GEN_108;
      end
    end else begin
      info_buf_reg_0_tcp_chksum <= _GEN_108;
    end
    if (reset) begin // @[TxBufferFifo.scala 44:29]
      info_buf_reg_0_burst <= 6'h0; // @[TxBufferFifo.scala 44:29]
    end else if (shake_hand) begin // @[TxBufferFifo.scala 164:20]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 168:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 169:34]
          info_buf_reg_0_burst <= 6'h0; // @[TxBufferFifo.scala 169:34]
        end else begin
          info_buf_reg_0_burst <= _GEN_106;
        end
      end else if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 172:40]
        info_buf_reg_0_burst <= _info_buf_reg_burst_T_5; // @[TxBufferFifo.scala 172:40]
      end else begin
        info_buf_reg_0_burst <= _GEN_106;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_106;
    end
    if (reset) begin // @[TxBufferFifo.scala 44:29]
      info_buf_reg_1_used <= 1'h0; // @[TxBufferFifo.scala 44:29]
    end else if (shake_hand) begin // @[TxBufferFifo.scala 164:20]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 168:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 169:34]
          info_buf_reg_1_used <= 1'h0; // @[TxBufferFifo.scala 169:34]
        end else begin
          info_buf_reg_1_used <= _GEN_115;
        end
      end else begin
        info_buf_reg_1_used <= _GEN_115;
      end
    end else begin
      info_buf_reg_1_used <= _GEN_115;
    end
    if (reset) begin // @[TxBufferFifo.scala 44:29]
      info_buf_reg_1_valid <= 1'h0; // @[TxBufferFifo.scala 44:29]
    end else if (shake_hand) begin // @[TxBufferFifo.scala 164:20]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 168:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 169:34]
          info_buf_reg_1_valid <= 1'h0; // @[TxBufferFifo.scala 169:34]
        end else begin
          info_buf_reg_1_valid <= _GEN_113;
        end
      end else begin
        info_buf_reg_1_valid <= _GEN_113;
      end
    end else begin
      info_buf_reg_1_valid <= _GEN_113;
    end
    if (reset) begin // @[TxBufferFifo.scala 44:29]
      info_buf_reg_1_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 44:29]
    end else if (shake_hand) begin // @[TxBufferFifo.scala 164:20]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 168:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 169:34]
          info_buf_reg_1_ip_chksum <= 32'h0; // @[TxBufferFifo.scala 169:34]
        end else begin
          info_buf_reg_1_ip_chksum <= _GEN_111;
        end
      end else begin
        info_buf_reg_1_ip_chksum <= _GEN_111;
      end
    end else begin
      info_buf_reg_1_ip_chksum <= _GEN_111;
    end
    if (reset) begin // @[TxBufferFifo.scala 44:29]
      info_buf_reg_1_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 44:29]
    end else if (shake_hand) begin // @[TxBufferFifo.scala 164:20]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 168:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 169:34]
          info_buf_reg_1_tcp_chksum <= 32'h0; // @[TxBufferFifo.scala 169:34]
        end else begin
          info_buf_reg_1_tcp_chksum <= _GEN_109;
        end
      end else begin
        info_buf_reg_1_tcp_chksum <= _GEN_109;
      end
    end else begin
      info_buf_reg_1_tcp_chksum <= _GEN_109;
    end
    if (reset) begin // @[TxBufferFifo.scala 44:29]
      info_buf_reg_1_burst <= 6'h0; // @[TxBufferFifo.scala 44:29]
    end else if (shake_hand) begin // @[TxBufferFifo.scala 164:20]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 168:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 169:34]
          info_buf_reg_1_burst <= 6'h0; // @[TxBufferFifo.scala 169:34]
        end else begin
          info_buf_reg_1_burst <= _GEN_107;
        end
      end else if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 172:40]
        info_buf_reg_1_burst <= _info_buf_reg_burst_T_5; // @[TxBufferFifo.scala 172:40]
      end else begin
        info_buf_reg_1_burst <= _GEN_107;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_107;
    end
    if (reset) begin // @[TxBufferFifo.scala 45:29]
      wr_index_reg <= 7'h0; // @[TxBufferFifo.scala 45:29]
    end else if (!(io_reset_counter)) begin // @[TxBufferFifo.scala 90:26]
      if (io_in_tready & io_in_tvalid) begin // @[TxBufferFifo.scala 94:45]
        if (!(_GEN_2 == 6'h20)) begin // @[TxBufferFifo.scala 98:63]
          wr_index_reg <= _GEN_60;
        end
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 46:29]
      rd_index_reg <= 7'h0; // @[TxBufferFifo.scala 46:29]
    end else if (shake_hand) begin // @[TxBufferFifo.scala 164:20]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 168:53]
        rd_index_reg <= _rd_pos_next_T_2; // @[TxBufferFifo.scala 170:20]
      end
    end
    wr_pos_reg <= _GEN_192[6:0]; // @[TxBufferFifo.scala 47:{29,29}]
    if (reset) begin // @[TxBufferFifo.scala 48:29]
      rd_pos_reg <= 7'h0; // @[TxBufferFifo.scala 48:29]
    end else if (shake_hand) begin // @[TxBufferFifo.scala 149:33]
      rd_pos_reg <= rd_pos_next;
    end
    if (reset) begin // @[TxBufferFifo.scala 56:29]
      pack_counter <= 32'h0; // @[TxBufferFifo.scala 56:29]
    end else if (io_reset_counter) begin // @[TxBufferFifo.scala 90:26]
      pack_counter <= 32'h0; // @[TxBufferFifo.scala 91:18]
    end else if (io_in_tready & io_in_tvalid) begin // @[TxBufferFifo.scala 94:45]
      if (io_in_tlast) begin // @[TxBufferFifo.scala 95:26]
        pack_counter <= _pack_counter_T_1; // @[TxBufferFifo.scala 96:22]
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 57:28]
      err_counter <= 32'h0; // @[TxBufferFifo.scala 57:28]
    end else if (io_reset_counter) begin // @[TxBufferFifo.scala 90:26]
      err_counter <= 32'h0; // @[TxBufferFifo.scala 92:17]
    end else if (io_in_tready & io_in_tvalid) begin // @[TxBufferFifo.scala 94:45]
      if (_GEN_2 == 6'h20) begin // @[TxBufferFifo.scala 98:63]
        err_counter <= _err_counter_T_1; // @[TxBufferFifo.scala 110:21]
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 62:30]
      is_overflowed <= 1'h0; // @[TxBufferFifo.scala 62:30]
    end else if (!(io_reset_counter)) begin // @[TxBufferFifo.scala 90:26]
      if (io_in_tready & io_in_tvalid) begin // @[TxBufferFifo.scala 94:45]
        if (_GEN_2 == 6'h20) begin // @[TxBufferFifo.scala 98:63]
          is_overflowed <= _GEN_3;
        end else begin
          is_overflowed <= _GEN_62;
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
  info_buf_reg_0_used = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  info_buf_reg_0_valid = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  info_buf_reg_0_ip_chksum = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  info_buf_reg_0_tcp_chksum = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  info_buf_reg_0_burst = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  info_buf_reg_1_used = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  info_buf_reg_1_valid = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  info_buf_reg_1_ip_chksum = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  info_buf_reg_1_tcp_chksum = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  info_buf_reg_1_burst = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  wr_index_reg = _RAND_13[6:0];
  _RAND_14 = {1{`RANDOM}};
  rd_index_reg = _RAND_14[6:0];
  _RAND_15 = {1{`RANDOM}};
  wr_pos_reg = _RAND_15[6:0];
  _RAND_16 = {1{`RANDOM}};
  rd_pos_reg = _RAND_16[6:0];
  _RAND_17 = {1{`RANDOM}};
  pack_counter = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  err_counter = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  is_overflowed = _RAND_19[0:0];
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
`endif // RANDOMIZE_REG_INIT
  reg [511:0] data_buf_reg [0:63]; // @[RxBufferFifo.scala 45:33]
  wire  data_buf_reg_io_out_tdata_MPORT_en; // @[RxBufferFifo.scala 45:33]
  wire [5:0] data_buf_reg_io_out_tdata_MPORT_addr; // @[RxBufferFifo.scala 45:33]
  wire [511:0] data_buf_reg_io_out_tdata_MPORT_data; // @[RxBufferFifo.scala 45:33]
  wire [511:0] data_buf_reg_MPORT_data; // @[RxBufferFifo.scala 45:33]
  wire [5:0] data_buf_reg_MPORT_addr; // @[RxBufferFifo.scala 45:33]
  wire  data_buf_reg_MPORT_mask; // @[RxBufferFifo.scala 45:33]
  wire  data_buf_reg_MPORT_en; // @[RxBufferFifo.scala 45:33]
  reg  data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  reg [5:0] data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  wire [63:0] burst_add_64_io_in_vec; // @[RxBufferFifo.scala 55:28]
  wire [7:0] burst_add_64_io_out_sum; // @[RxBufferFifo.scala 55:28]
  reg  info_buf_reg_0_valid; // @[RxBufferFifo.scala 48:29]
  reg [15:0] info_buf_reg_0_len; // @[RxBufferFifo.scala 48:29]
  reg [31:0] info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 48:29]
  reg [31:0] info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 48:29]
  reg [5:0] info_buf_reg_0_burst; // @[RxBufferFifo.scala 48:29]
  reg  info_buf_reg_1_valid; // @[RxBufferFifo.scala 48:29]
  reg [15:0] info_buf_reg_1_len; // @[RxBufferFifo.scala 48:29]
  reg [31:0] info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 48:29]
  reg [31:0] info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 48:29]
  reg [5:0] info_buf_reg_1_burst; // @[RxBufferFifo.scala 48:29]
  reg [6:0] wr_index_reg; // @[RxBufferFifo.scala 49:29]
  reg [6:0] rd_index_reg; // @[RxBufferFifo.scala 50:29]
  reg [6:0] wr_pos_reg; // @[RxBufferFifo.scala 51:29]
  reg [6:0] rd_pos_reg; // @[RxBufferFifo.scala 52:29]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[RxBufferFifo.scala 61:40]
  reg [31:0] pack_counter; // @[RxBufferFifo.scala 64:29]
  reg [31:0] err_counter; // @[RxBufferFifo.scala 65:28]
  reg  is_overflowed; // @[RxBufferFifo.scala 70:30]
  wire [15:0] _ip_chksum_vec_0_T_2 = {io_in_tdata[119:112],io_in_tdata[127:120]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_1_T_2 = {io_in_tdata[135:128],io_in_tdata[143:136]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_2_T_2 = {io_in_tdata[151:144],io_in_tdata[159:152]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_3_T_2 = {io_in_tdata[167:160],io_in_tdata[175:168]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_4_T_2 = {io_in_tdata[183:176],io_in_tdata[191:184]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_5_T_2 = {io_in_tdata[199:192],io_in_tdata[207:200]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_6_T_2 = {io_in_tdata[215:208],io_in_tdata[223:216]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_7_T_2 = {io_in_tdata[231:224],io_in_tdata[239:232]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_8_T_2 = {io_in_tdata[247:240],io_in_tdata[255:248]}; // @[Cat.scala 31:58]
  wire [15:0] _ip_chksum_vec_9_T_2 = {io_in_tdata[263:256],io_in_tdata[271:264]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_0_T_2 = {io_in_tdata[7:0],io_in_tdata[15:8]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_1_T_2 = {io_in_tdata[23:16],io_in_tdata[31:24]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_2_T_2 = {io_in_tdata[39:32],io_in_tdata[47:40]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_3_T_2 = {io_in_tdata[55:48],io_in_tdata[63:56]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_4_T_2 = {io_in_tdata[71:64],io_in_tdata[79:72]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_5_T_2 = {io_in_tdata[87:80],io_in_tdata[95:88]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_6_T_2 = {io_in_tdata[103:96],io_in_tdata[111:104]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_17_T_2 = {io_in_tdata[279:272],io_in_tdata[287:280]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_18_T_2 = {io_in_tdata[295:288],io_in_tdata[303:296]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_19_T_2 = {io_in_tdata[311:304],io_in_tdata[319:312]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_20_T_2 = {io_in_tdata[327:320],io_in_tdata[335:328]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_21_T_2 = {io_in_tdata[343:336],io_in_tdata[351:344]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_22_T_2 = {io_in_tdata[359:352],io_in_tdata[367:360]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_23_T_2 = {io_in_tdata[375:368],io_in_tdata[383:376]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_24_T_2 = {io_in_tdata[391:384],io_in_tdata[399:392]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_25_T_2 = {io_in_tdata[407:400],io_in_tdata[415:408]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_26_T_2 = {io_in_tdata[423:416],io_in_tdata[431:424]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_27_T_2 = {io_in_tdata[439:432],io_in_tdata[447:440]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_28_T_2 = {io_in_tdata[455:448],io_in_tdata[463:456]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_29_T_2 = {io_in_tdata[471:464],io_in_tdata[479:472]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_30_T_2 = {io_in_tdata[487:480],io_in_tdata[495:488]}; // @[Cat.scala 31:58]
  wire [15:0] _tcp_pld_chksum_vec_31_T_2 = {io_in_tdata[503:496],io_in_tdata[511:504]}; // @[Cat.scala 31:58]
  wire [5:0] _GEN_1 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[RxBufferFifo.scala 92:{57,57}]
  wire  _cal_ip_chksum_T_1 = _GEN_1 == 6'h0; // @[RxBufferFifo.scala 92:57]
  wire [31:0] ip_chksum_vec_0 = {{16'd0}, _ip_chksum_vec_0_T_2}; // @[RxBufferFifo.scala 75:27 77:22]
  wire [31:0] ip_chksum_vec_1 = {{16'd0}, _ip_chksum_vec_1_T_2}; // @[RxBufferFifo.scala 75:27 77:22]
  wire [31:0] _cal_ip_chksum_T_3 = ip_chksum_vec_0 + ip_chksum_vec_1; // @[RxBufferFifo.scala 93:33]
  wire [31:0] ip_chksum_vec_2 = {{16'd0}, _ip_chksum_vec_2_T_2}; // @[RxBufferFifo.scala 75:27 77:22]
  wire [31:0] ip_chksum_vec_3 = {{16'd0}, _ip_chksum_vec_3_T_2}; // @[RxBufferFifo.scala 75:27 77:22]
  wire [31:0] _cal_ip_chksum_T_5 = ip_chksum_vec_2 + ip_chksum_vec_3; // @[RxBufferFifo.scala 93:33]
  wire [31:0] ip_chksum_vec_4 = {{16'd0}, _ip_chksum_vec_4_T_2}; // @[RxBufferFifo.scala 75:27 77:22]
  wire [31:0] ip_chksum_vec_5 = {{16'd0}, _ip_chksum_vec_5_T_2}; // @[RxBufferFifo.scala 75:27 77:22]
  wire [31:0] _cal_ip_chksum_T_7 = ip_chksum_vec_4 + ip_chksum_vec_5; // @[RxBufferFifo.scala 93:33]
  wire [31:0] ip_chksum_vec_6 = {{16'd0}, _ip_chksum_vec_6_T_2}; // @[RxBufferFifo.scala 75:27 77:22]
  wire [31:0] ip_chksum_vec_7 = {{16'd0}, _ip_chksum_vec_7_T_2}; // @[RxBufferFifo.scala 75:27 77:22]
  wire [31:0] _cal_ip_chksum_T_9 = ip_chksum_vec_6 + ip_chksum_vec_7; // @[RxBufferFifo.scala 93:33]
  wire [31:0] ip_chksum_vec_8 = {{16'd0}, _ip_chksum_vec_8_T_2}; // @[RxBufferFifo.scala 75:27 77:22]
  wire [31:0] ip_chksum_vec_9 = {{16'd0}, _ip_chksum_vec_9_T_2}; // @[RxBufferFifo.scala 75:27 77:22]
  wire [31:0] _cal_ip_chksum_T_11 = ip_chksum_vec_8 + ip_chksum_vec_9; // @[RxBufferFifo.scala 93:33]
  wire [31:0] _cal_ip_chksum_T_13 = _cal_ip_chksum_T_3 + _cal_ip_chksum_T_5; // @[RxBufferFifo.scala 93:33]
  wire [31:0] _cal_ip_chksum_T_15 = _cal_ip_chksum_T_7 + _cal_ip_chksum_T_9; // @[RxBufferFifo.scala 93:33]
  wire [31:0] _cal_ip_chksum_T_17 = _cal_ip_chksum_T_13 + _cal_ip_chksum_T_15; // @[RxBufferFifo.scala 93:33]
  wire [31:0] _cal_ip_chksum_T_19 = _cal_ip_chksum_T_17 + _cal_ip_chksum_T_11; // @[RxBufferFifo.scala 93:33]
  wire [31:0] _GEN_3 = wr_index_reg[0] ? info_buf_reg_1_ip_chksum : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 92:{23,23}]
  wire [31:0] cal_ip_chksum = _GEN_1 == 6'h0 ? _cal_ip_chksum_T_19 : _GEN_3; // @[RxBufferFifo.scala 92:23]
  wire [32:0] _cal_tcp_chksum_T_11 = {{1'd0}, ip_chksum_vec_1}; // @[RxBufferFifo.scala 96:78]
  wire [31:0] tcp_hdr_chksum_vec_11 = {{24'd0}, io_in_tdata[191:184]}; // @[RxBufferFifo.scala 85:32 88:43]
  wire [32:0] _cal_tcp_chksum_T_13 = {{1'd0}, tcp_hdr_chksum_vec_11}; // @[RxBufferFifo.scala 96:78]
  wire [32:0] _cal_tcp_chksum_T_15 = {{1'd0}, ip_chksum_vec_6}; // @[RxBufferFifo.scala 96:78]
  wire [31:0] _cal_tcp_chksum_T_18 = ip_chksum_vec_7 + ip_chksum_vec_8; // @[RxBufferFifo.scala 96:78]
  wire [31:0] tcp_hdr_chksum_vec_17 = {{16'd0}, _tcp_pld_chksum_vec_17_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] _cal_tcp_chksum_T_20 = ip_chksum_vec_9 + tcp_hdr_chksum_vec_17; // @[RxBufferFifo.scala 96:78]
  wire [31:0] tcp_hdr_chksum_vec_18 = {{16'd0}, _tcp_pld_chksum_vec_18_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] tcp_hdr_chksum_vec_19 = {{16'd0}, _tcp_pld_chksum_vec_19_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] _cal_tcp_chksum_T_22 = tcp_hdr_chksum_vec_18 + tcp_hdr_chksum_vec_19; // @[RxBufferFifo.scala 96:78]
  wire [31:0] tcp_hdr_chksum_vec_20 = {{16'd0}, _tcp_pld_chksum_vec_20_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] tcp_hdr_chksum_vec_21 = {{16'd0}, _tcp_pld_chksum_vec_21_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] _cal_tcp_chksum_T_24 = tcp_hdr_chksum_vec_20 + tcp_hdr_chksum_vec_21; // @[RxBufferFifo.scala 96:78]
  wire [31:0] tcp_hdr_chksum_vec_22 = {{16'd0}, _tcp_pld_chksum_vec_22_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] tcp_hdr_chksum_vec_23 = {{16'd0}, _tcp_pld_chksum_vec_23_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] _cal_tcp_chksum_T_26 = tcp_hdr_chksum_vec_22 + tcp_hdr_chksum_vec_23; // @[RxBufferFifo.scala 96:78]
  wire [31:0] tcp_hdr_chksum_vec_24 = {{16'd0}, _tcp_pld_chksum_vec_24_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] tcp_hdr_chksum_vec_25 = {{16'd0}, _tcp_pld_chksum_vec_25_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] _cal_tcp_chksum_T_28 = tcp_hdr_chksum_vec_24 + tcp_hdr_chksum_vec_25; // @[RxBufferFifo.scala 96:78]
  wire [31:0] tcp_hdr_chksum_vec_26 = {{16'd0}, _tcp_pld_chksum_vec_26_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] tcp_hdr_chksum_vec_27 = {{16'd0}, _tcp_pld_chksum_vec_27_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] _cal_tcp_chksum_T_30 = tcp_hdr_chksum_vec_26 + tcp_hdr_chksum_vec_27; // @[RxBufferFifo.scala 96:78]
  wire [31:0] tcp_hdr_chksum_vec_28 = {{16'd0}, _tcp_pld_chksum_vec_28_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] tcp_hdr_chksum_vec_29 = {{16'd0}, _tcp_pld_chksum_vec_29_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] _cal_tcp_chksum_T_32 = tcp_hdr_chksum_vec_28 + tcp_hdr_chksum_vec_29; // @[RxBufferFifo.scala 96:78]
  wire [31:0] tcp_hdr_chksum_vec_30 = {{16'd0}, _tcp_pld_chksum_vec_30_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] tcp_hdr_chksum_vec_31 = {{16'd0}, _tcp_pld_chksum_vec_31_T_2}; // @[RxBufferFifo.scala 85:32 87:46]
  wire [31:0] _cal_tcp_chksum_T_34 = tcp_hdr_chksum_vec_30 + tcp_hdr_chksum_vec_31; // @[RxBufferFifo.scala 96:78]
  wire [31:0] _cal_tcp_chksum_T_40 = _cal_tcp_chksum_T_11[31:0] + _cal_tcp_chksum_T_13[31:0]; // @[RxBufferFifo.scala 96:78]
  wire [31:0] _cal_tcp_chksum_T_42 = _cal_tcp_chksum_T_15[31:0] + _cal_tcp_chksum_T_18; // @[RxBufferFifo.scala 96:78]
  wire [31:0] _cal_tcp_chksum_T_44 = _cal_tcp_chksum_T_20 + _cal_tcp_chksum_T_22; // @[RxBufferFifo.scala 96:78]
  wire [31:0] _cal_tcp_chksum_T_46 = _cal_tcp_chksum_T_24 + _cal_tcp_chksum_T_26; // @[RxBufferFifo.scala 96:78]
  wire [31:0] _cal_tcp_chksum_T_48 = _cal_tcp_chksum_T_28 + _cal_tcp_chksum_T_30; // @[RxBufferFifo.scala 96:78]
  wire [31:0] _cal_tcp_chksum_T_50 = _cal_tcp_chksum_T_32 + _cal_tcp_chksum_T_34; // @[RxBufferFifo.scala 96:78]
  wire [31:0] _cal_tcp_chksum_T_54 = _cal_tcp_chksum_T_40 + _cal_tcp_chksum_T_42; // @[RxBufferFifo.scala 96:78]
  wire [31:0] _cal_tcp_chksum_T_56 = _cal_tcp_chksum_T_44 + _cal_tcp_chksum_T_46; // @[RxBufferFifo.scala 96:78]
  wire [31:0] _cal_tcp_chksum_T_58 = _cal_tcp_chksum_T_48 + _cal_tcp_chksum_T_50; // @[RxBufferFifo.scala 96:78]
  wire [32:0] _cal_tcp_chksum_T_59 = {{1'd0}, _cal_tcp_chksum_T_54}; // @[RxBufferFifo.scala 96:78]
  wire [31:0] _cal_tcp_chksum_T_62 = _cal_tcp_chksum_T_56 + _cal_tcp_chksum_T_58; // @[RxBufferFifo.scala 96:78]
  wire [31:0] _cal_tcp_chksum_T_64 = _cal_tcp_chksum_T_59[31:0] + _cal_tcp_chksum_T_62; // @[RxBufferFifo.scala 96:78]
  wire [31:0] _GEN_7 = wr_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 96:{45,45}]
  wire [31:0] _cal_tcp_chksum_T_66 = _GEN_7 + _cal_tcp_chksum_T_64; // @[RxBufferFifo.scala 96:45]
  wire [31:0] _cal_tcp_chksum_T_68 = _cal_tcp_chksum_T_66 - 32'h14; // @[RxBufferFifo.scala 96:82]
  wire [31:0] tcp_pld_chksum_vec_0 = {{16'd0}, _tcp_pld_chksum_vec_0_T_2}; // @[RxBufferFifo.scala 80:32 82:27]
  wire [31:0] tcp_pld_chksum_vec_1 = {{16'd0}, _tcp_pld_chksum_vec_1_T_2}; // @[RxBufferFifo.scala 80:32 82:27]
  wire [31:0] _cal_tcp_chksum_T_71 = tcp_pld_chksum_vec_0 + tcp_pld_chksum_vec_1; // @[RxBufferFifo.scala 96:161]
  wire [31:0] tcp_pld_chksum_vec_2 = {{16'd0}, _tcp_pld_chksum_vec_2_T_2}; // @[RxBufferFifo.scala 80:32 82:27]
  wire [31:0] tcp_pld_chksum_vec_3 = {{16'd0}, _tcp_pld_chksum_vec_3_T_2}; // @[RxBufferFifo.scala 80:32 82:27]
  wire [31:0] _cal_tcp_chksum_T_73 = tcp_pld_chksum_vec_2 + tcp_pld_chksum_vec_3; // @[RxBufferFifo.scala 96:161]
  wire [31:0] tcp_pld_chksum_vec_4 = {{16'd0}, _tcp_pld_chksum_vec_4_T_2}; // @[RxBufferFifo.scala 80:32 82:27]
  wire [31:0] tcp_pld_chksum_vec_5 = {{16'd0}, _tcp_pld_chksum_vec_5_T_2}; // @[RxBufferFifo.scala 80:32 82:27]
  wire [31:0] _cal_tcp_chksum_T_75 = tcp_pld_chksum_vec_4 + tcp_pld_chksum_vec_5; // @[RxBufferFifo.scala 96:161]
  wire [31:0] tcp_pld_chksum_vec_6 = {{16'd0}, _tcp_pld_chksum_vec_6_T_2}; // @[RxBufferFifo.scala 80:32 82:27]
  wire [31:0] _cal_tcp_chksum_T_77 = tcp_pld_chksum_vec_6 + ip_chksum_vec_0; // @[RxBufferFifo.scala 96:161]
  wire [31:0] _cal_tcp_chksum_T_79 = ip_chksum_vec_1 + ip_chksum_vec_2; // @[RxBufferFifo.scala 96:161]
  wire [31:0] _cal_tcp_chksum_T_81 = ip_chksum_vec_3 + ip_chksum_vec_4; // @[RxBufferFifo.scala 96:161]
  wire [31:0] _cal_tcp_chksum_T_83 = ip_chksum_vec_5 + ip_chksum_vec_6; // @[RxBufferFifo.scala 96:161]
  wire [31:0] _cal_tcp_chksum_T_103 = _cal_tcp_chksum_T_71 + _cal_tcp_chksum_T_73; // @[RxBufferFifo.scala 96:161]
  wire [31:0] _cal_tcp_chksum_T_105 = _cal_tcp_chksum_T_75 + _cal_tcp_chksum_T_77; // @[RxBufferFifo.scala 96:161]
  wire [31:0] _cal_tcp_chksum_T_107 = _cal_tcp_chksum_T_79 + _cal_tcp_chksum_T_81; // @[RxBufferFifo.scala 96:161]
  wire [31:0] _cal_tcp_chksum_T_109 = _cal_tcp_chksum_T_83 + _cal_tcp_chksum_T_18; // @[RxBufferFifo.scala 96:161]
  wire [31:0] _cal_tcp_chksum_T_119 = _cal_tcp_chksum_T_103 + _cal_tcp_chksum_T_105; // @[RxBufferFifo.scala 96:161]
  wire [31:0] _cal_tcp_chksum_T_121 = _cal_tcp_chksum_T_107 + _cal_tcp_chksum_T_109; // @[RxBufferFifo.scala 96:161]
  wire [31:0] _cal_tcp_chksum_T_127 = _cal_tcp_chksum_T_119 + _cal_tcp_chksum_T_121; // @[RxBufferFifo.scala 96:161]
  wire [31:0] _cal_tcp_chksum_T_131 = _cal_tcp_chksum_T_127 + _cal_tcp_chksum_T_62; // @[RxBufferFifo.scala 96:161]
  wire [31:0] _cal_tcp_chksum_T_133 = _GEN_7 + _cal_tcp_chksum_T_131; // @[RxBufferFifo.scala 96:128]
  wire [31:0] cal_tcp_chksum = _cal_ip_chksum_T_1 ? _cal_tcp_chksum_T_68 : _cal_tcp_chksum_T_133; // @[RxBufferFifo.scala 95:24]
  wire [15:0] _end_ip_chksum_T_5 = cal_ip_chksum[31:16] + cal_ip_chksum[15:0]; // @[RxBufferFifo.scala 100:28]
  wire [15:0] _end_ip_chksum_T_6 = ~_end_ip_chksum_T_5; // @[RxBufferFifo.scala 100:5]
  wire [15:0] _end_ip_chksum_T_8 = ~cal_ip_chksum[15:0]; // @[RxBufferFifo.scala 100:52]
  wire [15:0] end_ip_chksum = cal_ip_chksum[31:16] > 16'h0 ? _end_ip_chksum_T_6 : _end_ip_chksum_T_8; // @[RxBufferFifo.scala 99:23]
  wire [15:0] _end_tcp_chksum_T_5 = cal_tcp_chksum[31:16] + cal_tcp_chksum[15:0]; // @[RxBufferFifo.scala 103:29]
  wire [15:0] _end_tcp_chksum_T_6 = ~_end_tcp_chksum_T_5; // @[RxBufferFifo.scala 103:5]
  wire [15:0] _end_tcp_chksum_T_8 = ~cal_tcp_chksum[15:0]; // @[RxBufferFifo.scala 103:54]
  wire [15:0] end_tcp_chksum = cal_tcp_chksum[31:16] > 16'h0 ? _end_tcp_chksum_T_6 : _end_tcp_chksum_T_8; // @[RxBufferFifo.scala 102:24]
  wire [31:0] _pack_counter_T_1 = pack_counter + 32'h1; // @[RxBufferFifo.scala 112:36]
  wire [11:0] _GEN_225 = {wr_index_reg, 5'h0}; // @[RxBufferFifo.scala 123:38]
  wire [13:0] _wr_pos_reg_T = {{2'd0}, _GEN_225}; // @[RxBufferFifo.scala 123:38]
  wire  _GEN_13 = ~io_in_tlast | is_overflowed; // @[RxBufferFifo.scala 116:27 117:23 70:30]
  wire [13:0] _GEN_14 = ~io_in_tlast ? {{7'd0}, wr_pos_reg} : _wr_pos_reg_T; // @[RxBufferFifo.scala 116:27 123:22 51:29]
  wire [31:0] _err_counter_T_1 = err_counter + 32'h1; // @[RxBufferFifo.scala 126:34]
  wire [5:0] _GEN_15 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 127:{34,34} 48:29]
  wire [5:0] _GEN_16 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 127:{34,34} 48:29]
  wire [31:0] _GEN_17 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 127:{34,34} 48:29]
  wire [31:0] _GEN_18 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 127:{34,34} 48:29]
  wire [31:0] _GEN_19 = ~wr_index_reg[0] ? 32'h0 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 127:{34,34} 48:29]
  wire [31:0] _GEN_20 = wr_index_reg[0] ? 32'h0 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 127:{34,34} 48:29]
  wire [15:0] _GEN_21 = ~wr_index_reg[0] ? 16'h0 : info_buf_reg_0_len; // @[RxBufferFifo.scala 127:{34,34} 48:29]
  wire [15:0] _GEN_22 = wr_index_reg[0] ? 16'h0 : info_buf_reg_1_len; // @[RxBufferFifo.scala 127:{34,34} 48:29]
  wire  _GEN_23 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 127:{34,34} 48:29]
  wire  _GEN_24 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 127:{34,34} 48:29]
  wire  _T_11 = ~is_overflowed; // @[RxBufferFifo.scala 135:13]
  wire  _GEN_227 = ~wr_index_reg[0]; // @[RxBufferFifo.scala 138:{43,43} 48:29]
  wire [31:0] _GEN_45 = ~wr_index_reg[0] ? cal_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 141:{47,47} 48:29]
  wire [31:0] _GEN_46 = wr_index_reg[0] ? cal_tcp_chksum : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 141:{47,47} 48:29]
  wire [31:0] _GEN_47 = ~wr_index_reg[0] ? cal_ip_chksum : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 142:{46,46} 48:29]
  wire [31:0] _GEN_48 = wr_index_reg[0] ? cal_ip_chksum : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 142:{46,46} 48:29]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_1 + 6'h1; // @[RxBufferFifo.scala 144:78]
  wire [5:0] _GEN_51 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 144:{42,42} 48:29]
  wire [5:0] _GEN_52 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 144:{42,42} 48:29]
  wire [15:0] _GEN_54 = wr_index_reg[0] ? info_buf_reg_1_len : info_buf_reg_0_len; // @[RxBufferFifo.scala 145:{74,74}]
  wire [15:0] _GEN_228 = {{8'd0}, burst_add_64_io_out_sum}; // @[RxBufferFifo.scala 145:74]
  wire [15:0] _info_buf_reg_len_T_2 = _GEN_54 + _GEN_228; // @[RxBufferFifo.scala 145:74]
  wire [15:0] _GEN_55 = ~wr_index_reg[0] ? _info_buf_reg_len_T_2 : info_buf_reg_0_len; // @[RxBufferFifo.scala 145:{40,40} 48:29]
  wire [15:0] _GEN_56 = wr_index_reg[0] ? _info_buf_reg_len_T_2 : info_buf_reg_1_len; // @[RxBufferFifo.scala 145:{40,40} 48:29]
  wire  _GEN_57 = _GEN_227 | info_buf_reg_0_valid; // @[RxBufferFifo.scala 147:{44,44} 48:29]
  wire  _GEN_58 = wr_index_reg[0] | info_buf_reg_1_valid; // @[RxBufferFifo.scala 147:{44,44} 48:29]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[RxBufferFifo.scala 41:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[RxBufferFifo.scala 41:19]
  wire [11:0] _GEN_230 = {_wr_index_reg_T_2, 5'h0}; // @[RxBufferFifo.scala 149:49]
  wire [13:0] _wr_pos_reg_T_5 = {{2'd0}, _GEN_230}; // @[RxBufferFifo.scala 149:49]
  wire [6:0] _wr_pos_reg_T_7 = wr_pos_reg + 7'h1; // @[RxBufferFifo.scala 151:36]
  wire  _GEN_59 = io_in_tlast ? _GEN_57 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 146:28 48:29]
  wire  _GEN_60 = io_in_tlast ? _GEN_58 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 146:28 48:29]
  wire [6:0] _GEN_61 = io_in_tlast ? _wr_index_reg_T_2 : wr_index_reg; // @[RxBufferFifo.scala 146:28 148:24 49:29]
  wire [13:0] _GEN_62 = io_in_tlast ? _wr_pos_reg_T_5 : {{7'd0}, _wr_pos_reg_T_7}; // @[RxBufferFifo.scala 146:28 149:22 151:22]
  wire  _GEN_63 = io_in_tlast ? 1'h0 : is_overflowed; // @[RxBufferFifo.scala 153:32 155:25 70:30]
  wire [13:0] _GEN_64 = io_in_tlast ? _wr_pos_reg_T : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 153:32 156:22 51:29]
  wire [31:0] _GEN_67 = ~is_overflowed ? _GEN_45 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 135:28 48:29]
  wire [31:0] _GEN_68 = ~is_overflowed ? _GEN_46 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 135:28 48:29]
  wire [31:0] _GEN_69 = ~is_overflowed ? _GEN_47 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 135:28 48:29]
  wire [31:0] _GEN_70 = ~is_overflowed ? _GEN_48 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 135:28 48:29]
  wire [5:0] _GEN_76 = ~is_overflowed ? _GEN_51 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 135:28 48:29]
  wire [5:0] _GEN_77 = ~is_overflowed ? _GEN_52 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 135:28 48:29]
  wire [15:0] _GEN_78 = ~is_overflowed ? _GEN_55 : info_buf_reg_0_len; // @[RxBufferFifo.scala 135:28 48:29]
  wire [15:0] _GEN_79 = ~is_overflowed ? _GEN_56 : info_buf_reg_1_len; // @[RxBufferFifo.scala 135:28 48:29]
  wire  _GEN_80 = ~is_overflowed ? _GEN_59 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 135:28 48:29]
  wire  _GEN_81 = ~is_overflowed ? _GEN_60 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 135:28 48:29]
  wire [6:0] _GEN_82 = ~is_overflowed ? _GEN_61 : wr_index_reg; // @[RxBufferFifo.scala 135:28 49:29]
  wire [13:0] _GEN_83 = ~is_overflowed ? _GEN_62 : _GEN_64; // @[RxBufferFifo.scala 135:28]
  wire  _GEN_84 = ~is_overflowed ? is_overflowed : _GEN_63; // @[RxBufferFifo.scala 135:28 70:30]
  wire [31:0] _GEN_85 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ?
    _err_counter_T_1 : err_counter; // @[RxBufferFifo.scala 129:102 130:19 65:28]
  wire [13:0] _GEN_86 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? _wr_pos_reg_T
     : _GEN_83; // @[RxBufferFifo.scala 129:102 131:18]
  wire [5:0] _GEN_87 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? _GEN_15 :
    _GEN_76; // @[RxBufferFifo.scala 129:102]
  wire [5:0] _GEN_88 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? _GEN_16 :
    _GEN_77; // @[RxBufferFifo.scala 129:102]
  wire [31:0] _GEN_89 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? _GEN_17 :
    _GEN_67; // @[RxBufferFifo.scala 129:102]
  wire [31:0] _GEN_90 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? _GEN_18 :
    _GEN_68; // @[RxBufferFifo.scala 129:102]
  wire [31:0] _GEN_91 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? _GEN_19 :
    _GEN_69; // @[RxBufferFifo.scala 129:102]
  wire [31:0] _GEN_92 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? _GEN_20 :
    _GEN_70; // @[RxBufferFifo.scala 129:102]
  wire [15:0] _GEN_93 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? _GEN_21 :
    _GEN_78; // @[RxBufferFifo.scala 129:102]
  wire [15:0] _GEN_94 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? _GEN_22 :
    _GEN_79; // @[RxBufferFifo.scala 129:102]
  wire  _GEN_95 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? _GEN_23 : _GEN_80; // @[RxBufferFifo.scala 129:102]
  wire  _GEN_96 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? _GEN_24 : _GEN_81; // @[RxBufferFifo.scala 129:102]
  wire  _GEN_101 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? 1'h0 : _T_11; // @[RxBufferFifo.scala 129:102 45:33]
  wire [6:0] _GEN_104 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? wr_index_reg :
    _GEN_82; // @[RxBufferFifo.scala 129:102 49:29]
  wire  _GEN_105 = io_in_tlast & (end_tcp_chksum != 16'h0 | end_ip_chksum != 16'h0 | io_in_tuser) ? is_overflowed :
    _GEN_84; // @[RxBufferFifo.scala 129:102 70:30]
  wire [13:0] _GEN_107 = _GEN_1 == 6'h20 ? _GEN_14 : _GEN_86; // @[RxBufferFifo.scala 114:61]
  wire [5:0] _GEN_109 = _GEN_1 == 6'h20 ? _GEN_15 : _GEN_87; // @[RxBufferFifo.scala 114:61]
  wire [5:0] _GEN_110 = _GEN_1 == 6'h20 ? _GEN_16 : _GEN_88; // @[RxBufferFifo.scala 114:61]
  wire [31:0] _GEN_111 = _GEN_1 == 6'h20 ? _GEN_17 : _GEN_89; // @[RxBufferFifo.scala 114:61]
  wire [31:0] _GEN_112 = _GEN_1 == 6'h20 ? _GEN_18 : _GEN_90; // @[RxBufferFifo.scala 114:61]
  wire [31:0] _GEN_113 = _GEN_1 == 6'h20 ? _GEN_19 : _GEN_91; // @[RxBufferFifo.scala 114:61]
  wire [31:0] _GEN_114 = _GEN_1 == 6'h20 ? _GEN_20 : _GEN_92; // @[RxBufferFifo.scala 114:61]
  wire [15:0] _GEN_115 = _GEN_1 == 6'h20 ? _GEN_21 : _GEN_93; // @[RxBufferFifo.scala 114:61]
  wire [15:0] _GEN_116 = _GEN_1 == 6'h20 ? _GEN_22 : _GEN_94; // @[RxBufferFifo.scala 114:61]
  wire  _GEN_117 = _GEN_1 == 6'h20 ? _GEN_23 : _GEN_95; // @[RxBufferFifo.scala 114:61]
  wire  _GEN_118 = _GEN_1 == 6'h20 ? _GEN_24 : _GEN_96; // @[RxBufferFifo.scala 114:61]
  wire  _GEN_123 = _GEN_1 == 6'h20 ? 1'h0 : _GEN_101; // @[RxBufferFifo.scala 114:61 45:33]
  wire [13:0] _GEN_129 = io_in_tready & io_in_tvalid ? _GEN_107 : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 110:43 51:29]
  wire [5:0] _GEN_131 = io_in_tready & io_in_tvalid ? _GEN_109 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 110:43 48:29]
  wire [5:0] _GEN_132 = io_in_tready & io_in_tvalid ? _GEN_110 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 110:43 48:29]
  wire [31:0] _GEN_133 = io_in_tready & io_in_tvalid ? _GEN_111 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 110:43 48:29]
  wire [31:0] _GEN_134 = io_in_tready & io_in_tvalid ? _GEN_112 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 110:43 48:29]
  wire [31:0] _GEN_135 = io_in_tready & io_in_tvalid ? _GEN_113 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 110:43 48:29]
  wire [31:0] _GEN_136 = io_in_tready & io_in_tvalid ? _GEN_114 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 110:43 48:29]
  wire [15:0] _GEN_137 = io_in_tready & io_in_tvalid ? _GEN_115 : info_buf_reg_0_len; // @[RxBufferFifo.scala 110:43 48:29]
  wire [15:0] _GEN_138 = io_in_tready & io_in_tvalid ? _GEN_116 : info_buf_reg_1_len; // @[RxBufferFifo.scala 110:43 48:29]
  wire  _GEN_139 = io_in_tready & io_in_tvalid ? _GEN_117 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 110:43 48:29]
  wire  _GEN_140 = io_in_tready & io_in_tvalid ? _GEN_118 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 110:43 48:29]
  wire  _GEN_145 = io_in_tready & io_in_tvalid & _GEN_123; // @[RxBufferFifo.scala 110:43 45:33]
  wire [13:0] _GEN_152 = io_reset_counter ? {{7'd0}, wr_pos_reg} : _GEN_129; // @[RxBufferFifo.scala 106:26 51:29]
  wire [5:0] _GEN_153 = io_reset_counter ? info_buf_reg_0_burst : _GEN_131; // @[RxBufferFifo.scala 106:26 48:29]
  wire [5:0] _GEN_154 = io_reset_counter ? info_buf_reg_1_burst : _GEN_132; // @[RxBufferFifo.scala 106:26 48:29]
  wire [31:0] _GEN_155 = io_reset_counter ? info_buf_reg_0_tcp_chksum : _GEN_133; // @[RxBufferFifo.scala 106:26 48:29]
  wire [31:0] _GEN_156 = io_reset_counter ? info_buf_reg_1_tcp_chksum : _GEN_134; // @[RxBufferFifo.scala 106:26 48:29]
  wire [31:0] _GEN_157 = io_reset_counter ? info_buf_reg_0_ip_chksum : _GEN_135; // @[RxBufferFifo.scala 106:26 48:29]
  wire [31:0] _GEN_158 = io_reset_counter ? info_buf_reg_1_ip_chksum : _GEN_136; // @[RxBufferFifo.scala 106:26 48:29]
  wire [15:0] _GEN_159 = io_reset_counter ? info_buf_reg_0_len : _GEN_137; // @[RxBufferFifo.scala 106:26 48:29]
  wire [15:0] _GEN_160 = io_reset_counter ? info_buf_reg_1_len : _GEN_138; // @[RxBufferFifo.scala 106:26 48:29]
  wire  _GEN_161 = io_reset_counter ? info_buf_reg_0_valid : _GEN_139; // @[RxBufferFifo.scala 106:26 48:29]
  wire  _GEN_162 = io_reset_counter ? info_buf_reg_1_valid : _GEN_140; // @[RxBufferFifo.scala 106:26 48:29]
  wire  shake_hand = io_out_tready & io_out_tvalid; // @[RxBufferFifo.scala 162:34]
  wire [5:0] _GEN_176 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[RxBufferFifo.scala 166:{70,70}]
  wire  _io_out_tlast_T_1 = _GEN_176 == 6'h1; // @[RxBufferFifo.scala 166:70]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[RxBufferFifo.scala 41:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[RxBufferFifo.scala 41:19]
  wire [11:0] _GEN_232 = {_rd_pos_next_T_2, 5'h0}; // @[RxBufferFifo.scala 184:44]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_232}; // @[RxBufferFifo.scala 184:44]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[RxBufferFifo.scala 186:31]
  wire [13:0] _GEN_224 = _io_out_tlast_T_1 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[RxBufferFifo.scala 183:51 184:17 186:17]
  wire [6:0] rd_pos_next = _GEN_224[6:0];
  wire [6:0] _io_out_tdata_T = shake_hand ? rd_pos_next : rd_pos_reg; // @[RxBufferFifo.scala 169:36]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_176 - 6'h1; // @[RxBufferFifo.scala 179:78]
  wire [13:0] _GEN_233 = reset ? 14'h0 : _GEN_152; // @[RxBufferFifo.scala 51:{29,29}]
  reduce_add_64 burst_add_64 ( // @[RxBufferFifo.scala 55:28]
    .io_in_vec(burst_add_64_io_in_vec),
    .io_out_sum(burst_add_64_io_out_sum)
  );
  assign data_buf_reg_io_out_tdata_MPORT_en = data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_addr = data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_data = data_buf_reg[data_buf_reg_io_out_tdata_MPORT_addr]; // @[RxBufferFifo.scala 45:33]
  assign data_buf_reg_MPORT_data = io_in_tdata;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_reset_counter ? 1'h0 : _GEN_145;
  assign io_in_tready = ~buf_full; // @[RxBufferFifo.scala 63:19]
  assign io_out_tlen = rd_index_reg[0] ? info_buf_reg_1_len : info_buf_reg_0_len; // @[RxBufferFifo.scala 165:{17,17}]
  assign io_out_tdata = data_buf_reg_io_out_tdata_MPORT_data; // @[RxBufferFifo.scala 169:17]
  assign io_out_tlast = io_out_tvalid & _GEN_176 == 6'h1; // @[RxBufferFifo.scala 166:34]
  assign io_out_tvalid = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[RxBufferFifo.scala 164:{17,17}]
  assign io_out_pack_counter = pack_counter; // @[RxBufferFifo.scala 67:23]
  assign io_out_err_counter = err_counter; // @[RxBufferFifo.scala 68:22]
  assign burst_add_64_io_in_vec = io_in_tkeep; // @[RxBufferFifo.scala 56:26]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[RxBufferFifo.scala 45:33]
    end
    data_buf_reg_io_out_tdata_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      data_buf_reg_io_out_tdata_MPORT_addr_pipe_0 <= _io_out_tdata_T[5:0];
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_valid <= 1'h0; // @[RxBufferFifo.scala 48:29]
    end else if (shake_hand) begin // @[RxBufferFifo.scala 171:20]
      if (_io_out_tlast_T_1) begin // @[RxBufferFifo.scala 175:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 176:36]
          info_buf_reg_0_valid <= 1'h0; // @[RxBufferFifo.scala 176:36]
        end else begin
          info_buf_reg_0_valid <= _GEN_161;
        end
      end else begin
        info_buf_reg_0_valid <= _GEN_161;
      end
    end else begin
      info_buf_reg_0_valid <= _GEN_161;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_len <= 16'h0; // @[RxBufferFifo.scala 48:29]
    end else if (shake_hand) begin // @[RxBufferFifo.scala 171:20]
      if (_io_out_tlast_T_1) begin // @[RxBufferFifo.scala 175:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 176:36]
          info_buf_reg_0_len <= 16'h0; // @[RxBufferFifo.scala 176:36]
        end else begin
          info_buf_reg_0_len <= _GEN_159;
        end
      end else begin
        info_buf_reg_0_len <= _GEN_159;
      end
    end else begin
      info_buf_reg_0_len <= _GEN_159;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 48:29]
    end else if (shake_hand) begin // @[RxBufferFifo.scala 171:20]
      if (_io_out_tlast_T_1) begin // @[RxBufferFifo.scala 175:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 176:36]
          info_buf_reg_0_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 176:36]
        end else begin
          info_buf_reg_0_ip_chksum <= _GEN_157;
        end
      end else begin
        info_buf_reg_0_ip_chksum <= _GEN_157;
      end
    end else begin
      info_buf_reg_0_ip_chksum <= _GEN_157;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 48:29]
    end else if (shake_hand) begin // @[RxBufferFifo.scala 171:20]
      if (_io_out_tlast_T_1) begin // @[RxBufferFifo.scala 175:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 176:36]
          info_buf_reg_0_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 176:36]
        end else begin
          info_buf_reg_0_tcp_chksum <= _GEN_155;
        end
      end else begin
        info_buf_reg_0_tcp_chksum <= _GEN_155;
      end
    end else begin
      info_buf_reg_0_tcp_chksum <= _GEN_155;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_burst <= 6'h0; // @[RxBufferFifo.scala 48:29]
    end else if (shake_hand) begin // @[RxBufferFifo.scala 171:20]
      if (_io_out_tlast_T_1) begin // @[RxBufferFifo.scala 175:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 176:36]
          info_buf_reg_0_burst <= 6'h0; // @[RxBufferFifo.scala 176:36]
        end else begin
          info_buf_reg_0_burst <= _GEN_153;
        end
      end else if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 179:42]
        info_buf_reg_0_burst <= _info_buf_reg_burst_T_5; // @[RxBufferFifo.scala 179:42]
      end else begin
        info_buf_reg_0_burst <= _GEN_153;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_153;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_valid <= 1'h0; // @[RxBufferFifo.scala 48:29]
    end else if (shake_hand) begin // @[RxBufferFifo.scala 171:20]
      if (_io_out_tlast_T_1) begin // @[RxBufferFifo.scala 175:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 176:36]
          info_buf_reg_1_valid <= 1'h0; // @[RxBufferFifo.scala 176:36]
        end else begin
          info_buf_reg_1_valid <= _GEN_162;
        end
      end else begin
        info_buf_reg_1_valid <= _GEN_162;
      end
    end else begin
      info_buf_reg_1_valid <= _GEN_162;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_len <= 16'h0; // @[RxBufferFifo.scala 48:29]
    end else if (shake_hand) begin // @[RxBufferFifo.scala 171:20]
      if (_io_out_tlast_T_1) begin // @[RxBufferFifo.scala 175:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 176:36]
          info_buf_reg_1_len <= 16'h0; // @[RxBufferFifo.scala 176:36]
        end else begin
          info_buf_reg_1_len <= _GEN_160;
        end
      end else begin
        info_buf_reg_1_len <= _GEN_160;
      end
    end else begin
      info_buf_reg_1_len <= _GEN_160;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 48:29]
    end else if (shake_hand) begin // @[RxBufferFifo.scala 171:20]
      if (_io_out_tlast_T_1) begin // @[RxBufferFifo.scala 175:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 176:36]
          info_buf_reg_1_ip_chksum <= 32'h0; // @[RxBufferFifo.scala 176:36]
        end else begin
          info_buf_reg_1_ip_chksum <= _GEN_158;
        end
      end else begin
        info_buf_reg_1_ip_chksum <= _GEN_158;
      end
    end else begin
      info_buf_reg_1_ip_chksum <= _GEN_158;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 48:29]
    end else if (shake_hand) begin // @[RxBufferFifo.scala 171:20]
      if (_io_out_tlast_T_1) begin // @[RxBufferFifo.scala 175:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 176:36]
          info_buf_reg_1_tcp_chksum <= 32'h0; // @[RxBufferFifo.scala 176:36]
        end else begin
          info_buf_reg_1_tcp_chksum <= _GEN_156;
        end
      end else begin
        info_buf_reg_1_tcp_chksum <= _GEN_156;
      end
    end else begin
      info_buf_reg_1_tcp_chksum <= _GEN_156;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_burst <= 6'h0; // @[RxBufferFifo.scala 48:29]
    end else if (shake_hand) begin // @[RxBufferFifo.scala 171:20]
      if (_io_out_tlast_T_1) begin // @[RxBufferFifo.scala 175:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 176:36]
          info_buf_reg_1_burst <= 6'h0; // @[RxBufferFifo.scala 176:36]
        end else begin
          info_buf_reg_1_burst <= _GEN_154;
        end
      end else if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 179:42]
        info_buf_reg_1_burst <= _info_buf_reg_burst_T_5; // @[RxBufferFifo.scala 179:42]
      end else begin
        info_buf_reg_1_burst <= _GEN_154;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_154;
    end
    if (reset) begin // @[RxBufferFifo.scala 49:29]
      wr_index_reg <= 7'h0; // @[RxBufferFifo.scala 49:29]
    end else if (!(io_reset_counter)) begin // @[RxBufferFifo.scala 106:26]
      if (io_in_tready & io_in_tvalid) begin // @[RxBufferFifo.scala 110:43]
        if (!(_GEN_1 == 6'h20)) begin // @[RxBufferFifo.scala 114:61]
          wr_index_reg <= _GEN_104;
        end
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 50:29]
      rd_index_reg <= 7'h0; // @[RxBufferFifo.scala 50:29]
    end else if (shake_hand) begin // @[RxBufferFifo.scala 171:20]
      if (_io_out_tlast_T_1) begin // @[RxBufferFifo.scala 175:55]
        rd_index_reg <= _rd_pos_next_T_2; // @[RxBufferFifo.scala 177:22]
      end
    end
    wr_pos_reg <= _GEN_233[6:0]; // @[RxBufferFifo.scala 51:{29,29}]
    if (reset) begin // @[RxBufferFifo.scala 52:29]
      rd_pos_reg <= 7'h0; // @[RxBufferFifo.scala 52:29]
    end else if (shake_hand) begin // @[RxBufferFifo.scala 169:36]
      rd_pos_reg <= rd_pos_next;
    end
    if (reset) begin // @[RxBufferFifo.scala 64:29]
      pack_counter <= 32'h0; // @[RxBufferFifo.scala 64:29]
    end else if (io_reset_counter) begin // @[RxBufferFifo.scala 106:26]
      pack_counter <= 32'h0; // @[RxBufferFifo.scala 107:18]
    end else if (io_in_tready & io_in_tvalid) begin // @[RxBufferFifo.scala 110:43]
      if (io_in_tlast) begin // @[RxBufferFifo.scala 111:24]
        pack_counter <= _pack_counter_T_1; // @[RxBufferFifo.scala 112:20]
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 65:28]
      err_counter <= 32'h0; // @[RxBufferFifo.scala 65:28]
    end else if (io_reset_counter) begin // @[RxBufferFifo.scala 106:26]
      err_counter <= 32'h0; // @[RxBufferFifo.scala 108:17]
    end else if (io_in_tready & io_in_tvalid) begin // @[RxBufferFifo.scala 110:43]
      if (_GEN_1 == 6'h20) begin // @[RxBufferFifo.scala 114:61]
        err_counter <= _err_counter_T_1; // @[RxBufferFifo.scala 126:19]
      end else begin
        err_counter <= _GEN_85;
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 70:30]
      is_overflowed <= 1'h0; // @[RxBufferFifo.scala 70:30]
    end else if (!(io_reset_counter)) begin // @[RxBufferFifo.scala 106:26]
      if (io_in_tready & io_in_tvalid) begin // @[RxBufferFifo.scala 110:43]
        if (_GEN_1 == 6'h20) begin // @[RxBufferFifo.scala 114:61]
          is_overflowed <= _GEN_13;
        end else begin
          is_overflowed <= _GEN_105;
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
  info_buf_reg_0_ip_chksum = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  info_buf_reg_0_tcp_chksum = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  info_buf_reg_0_burst = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  info_buf_reg_1_valid = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  info_buf_reg_1_len = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  info_buf_reg_1_ip_chksum = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  info_buf_reg_1_tcp_chksum = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  info_buf_reg_1_burst = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  wr_index_reg = _RAND_13[6:0];
  _RAND_14 = {1{`RANDOM}};
  rd_index_reg = _RAND_14[6:0];
  _RAND_15 = {1{`RANDOM}};
  wr_pos_reg = _RAND_15[6:0];
  _RAND_16 = {1{`RANDOM}};
  rd_pos_reg = _RAND_16[6:0];
  _RAND_17 = {1{`RANDOM}};
  pack_counter = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  err_counter = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  is_overflowed = _RAND_19[0:0];
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
