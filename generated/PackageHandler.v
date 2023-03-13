module TxConverter(
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
  output [15:0]  io_out_extern_config_c2h_match_op,
  output [31:0]  io_out_extern_config_c2h_match_arg_12,
  output [31:0]  io_out_extern_config_c2h_match_arg_13,
  output [31:0]  io_out_extern_config_c2h_match_arg_14,
  output [31:0]  io_out_extern_config_c2h_match_arg_15,
  input  [15:0]  io_extern_config_c2h_match_op,
  input  [31:0]  io_extern_config_c2h_match_arg_0,
  input  [31:0]  io_extern_config_c2h_match_arg_1,
  input  [31:0]  io_extern_config_c2h_match_arg_2,
  input  [31:0]  io_extern_config_c2h_match_arg_3,
  input  [31:0]  io_extern_config_c2h_match_arg_4,
  input  [31:0]  io_extern_config_c2h_match_arg_5,
  input  [31:0]  io_extern_config_c2h_match_arg_6,
  input  [31:0]  io_extern_config_c2h_match_arg_7,
  input  [31:0]  io_extern_config_c2h_match_arg_8,
  input  [31:0]  io_extern_config_c2h_match_arg_9,
  input  [31:0]  io_extern_config_c2h_match_arg_10,
  input  [31:0]  io_extern_config_c2h_match_arg_11,
  input  [31:0]  io_extern_config_c2h_match_arg_12,
  input  [31:0]  io_extern_config_c2h_match_arg_13,
  input  [31:0]  io_extern_config_c2h_match_arg_14,
  input  [31:0]  io_extern_config_c2h_match_arg_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [543:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [255:0] extern_config_reg_lo = {io_extern_config_c2h_match_arg_7,io_extern_config_c2h_match_arg_6,
    io_extern_config_c2h_match_arg_5,io_extern_config_c2h_match_arg_4,io_extern_config_c2h_match_arg_3,
    io_extern_config_c2h_match_arg_2,io_extern_config_c2h_match_arg_1,io_extern_config_c2h_match_arg_0}; // @[TxConverter.scala 17:54]
  wire [527:0] _extern_config_reg_T = {io_extern_config_c2h_match_op,io_extern_config_c2h_match_arg_15,
    io_extern_config_c2h_match_arg_14,io_extern_config_c2h_match_arg_13,io_extern_config_c2h_match_arg_12,
    io_extern_config_c2h_match_arg_11,io_extern_config_c2h_match_arg_10,io_extern_config_c2h_match_arg_9,
    io_extern_config_c2h_match_arg_8,extern_config_reg_lo}; // @[TxConverter.scala 17:54]
  wire  _extern_config_reg_T_1 = io_out_tready & io_out_tvalid; // @[TxConverter.scala 17:79]
  reg [527:0] extern_config_reg_r; // @[Reg.scala 28:20]
  assign io_in_tready = io_out_tready; // @[TxConverter.scala 24:26]
  assign io_out_tdata = io_in_tdata; // @[TxConverter.scala 23:26]
  assign io_out_tvalid = io_in_tvalid & ~io_in_tuser; // @[TxConverter.scala 15:34]
  assign io_out_tlast = io_in_tlast; // @[TxConverter.scala 22:26]
  assign io_out_extern_config_c2h_match_op = extern_config_reg_r[527:512]; // @[TxConverter.scala 17:104]
  assign io_out_extern_config_c2h_match_arg_12 = extern_config_reg_r[415:384]; // @[TxConverter.scala 17:104]
  assign io_out_extern_config_c2h_match_arg_13 = extern_config_reg_r[447:416]; // @[TxConverter.scala 17:104]
  assign io_out_extern_config_c2h_match_arg_14 = extern_config_reg_r[479:448]; // @[TxConverter.scala 17:104]
  assign io_out_extern_config_c2h_match_arg_15 = extern_config_reg_r[511:480]; // @[TxConverter.scala 17:104]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      extern_config_reg_r <= 528'h0; // @[Reg.scala 28:20]
    end else if (_extern_config_reg_T_1) begin // @[Reg.scala 29:18]
      extern_config_reg_r <= _extern_config_reg_T; // @[Reg.scala 29:22]
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
  extern_config_reg_r = _RAND_0[527:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TxAESEncrypter(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input  [15:0]  io_in_extern_config_c2h_match_op,
  input  [31:0]  io_in_extern_config_c2h_match_arg_12,
  input  [31:0]  io_in_extern_config_c2h_match_arg_13,
  input  [31:0]  io_in_extern_config_c2h_match_arg_14,
  input  [31:0]  io_in_extern_config_c2h_match_arg_15,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output [15:0]  io_out_extern_config_c2h_match_op
);
`ifdef RANDOMIZE_REG_INIT
  reg [607:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [127:0] _RAND_2;
  reg [127:0] _RAND_3;
  reg [127:0] _RAND_4;
  reg [127:0] _RAND_5;
  reg [127:0] _RAND_6;
  reg [127:0] _RAND_7;
  reg [127:0] _RAND_8;
  reg [127:0] _RAND_9;
  reg [127:0] _RAND_10;
  reg [127:0] _RAND_11;
  reg [127:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [511:0] _RAND_14;
`endif // RANDOMIZE_REG_INIT
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[TxPipelineHandler.scala 12:36]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[TxPipelineHandler.scala 13:38]
  wire [577:0] _in_reg_T_1 = {64'h0,io_in_tdata,io_in_tvalid,io_in_tlast}; // @[Cat.scala 31:58]
  reg [577:0] in_reg_r; // @[Reg.scala 28:20]
  wire  in_reg_tvalid = in_reg_r[1]; // @[TxPipelineHandler.scala 15:116]
  wire [511:0] in_reg_tdata = in_reg_r[513:2]; // @[TxPipelineHandler.scala 15:116]
  reg  in_reg_used_reg; // @[TxPipelineHandler.scala 19:32]
  wire  _GEN_2 = out_shake_hand ? 1'h0 : in_reg_used_reg; // @[TxPipelineHandler.scala 22:29 23:21 19:32]
  wire  _GEN_3 = in_shake_hand | _GEN_2; // @[TxPipelineHandler.scala 20:23 21:21]
  wire  _io_in_tready_T = ~in_reg_used_reg; // @[TxPipelineHandler.scala 26:48]
  wire  _io_out_tvalid_T = in_reg_tvalid & in_reg_used_reg; // @[TxPipelineHandler.scala 28:46]
  reg [127:0] aes_key_reg_0; // @[TxAESEncrypter.scala 12:24]
  reg [127:0] aes_key_reg_1; // @[TxAESEncrypter.scala 12:24]
  reg [127:0] aes_key_reg_2; // @[TxAESEncrypter.scala 12:24]
  reg [127:0] aes_key_reg_3; // @[TxAESEncrypter.scala 12:24]
  reg [127:0] aes_key_reg_4; // @[TxAESEncrypter.scala 12:24]
  reg [127:0] aes_key_reg_5; // @[TxAESEncrypter.scala 12:24]
  reg [127:0] aes_key_reg_6; // @[TxAESEncrypter.scala 12:24]
  reg [127:0] aes_key_reg_7; // @[TxAESEncrypter.scala 12:24]
  reg [127:0] aes_key_reg_8; // @[TxAESEncrypter.scala 12:24]
  reg [127:0] aes_key_reg_9; // @[TxAESEncrypter.scala 12:24]
  reg [127:0] aes_key_reg_10; // @[TxAESEncrypter.scala 12:24]
  reg [7:0] cur_round_counter; // @[TxAESEncrypter.scala 43:34]
  wire [7:0] _cur_round_T_2 = cur_round_counter - 8'ha; // @[TxAESEncrypter.scala 44:74]
  wire [7:0] _cur_round_T_3 = {{2'd0}, _cur_round_T_2[7:2]}; // @[TxAESEncrypter.scala 44:82]
  wire [7:0] cur_round = cur_round_counter <= 8'hb ? 8'h0 : _cur_round_T_3; // @[TxAESEncrypter.scala 44:22]
  reg [511:0] tmp_tdata_reg; // @[TxAESEncrypter.scala 45:26]
  wire [63:0] aes_key_0_lo_4 = {io_in_extern_config_c2h_match_arg_14[7:0],io_in_extern_config_c2h_match_arg_14[15:8],
    io_in_extern_config_c2h_match_arg_14[23:16],io_in_extern_config_c2h_match_arg_14[31:24],
    io_in_extern_config_c2h_match_arg_15[7:0],io_in_extern_config_c2h_match_arg_15[15:8],
    io_in_extern_config_c2h_match_arg_15[23:16],io_in_extern_config_c2h_match_arg_15[31:24]}; // @[Cat.scala 31:58]
  wire [127:0] aes_key_0 = {io_in_extern_config_c2h_match_arg_12[7:0],io_in_extern_config_c2h_match_arg_12[15:8],
    io_in_extern_config_c2h_match_arg_12[23:16],io_in_extern_config_c2h_match_arg_12[31:24],
    io_in_extern_config_c2h_match_arg_13[7:0],io_in_extern_config_c2h_match_arg_13[15:8],
    io_in_extern_config_c2h_match_arg_13[23:16],io_in_extern_config_c2h_match_arg_13[31:24],aes_key_0_lo_4}; // @[Cat.scala 31:58]
  wire [6:0] _tmp_result_0_trans_tdata_0_T_2 = {tmp_tdata_reg[3:0], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_5 = 4'h1 == tmp_tdata_reg[7:4] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_6 = 4'h2 == tmp_tdata_reg[7:4] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_5; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_7 = 4'h3 == tmp_tdata_reg[7:4] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_6; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_8 = 4'h4 == tmp_tdata_reg[7:4] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_7; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_9 = 4'h5 == tmp_tdata_reg[7:4] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_8; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_10 = 4'h6 == tmp_tdata_reg[7:4] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_9; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_11 = 4'h7 == tmp_tdata_reg[7:4] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_10; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_12 = 4'h8 == tmp_tdata_reg[7:4] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_11; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_13 = 4'h9 == tmp_tdata_reg[7:4] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_12; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_14 = 4'ha == tmp_tdata_reg[7:4] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_13; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_15 = 4'hb == tmp_tdata_reg[7:4] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_14; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_16 = 4'hc == tmp_tdata_reg[7:4] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_15; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_17 = 4'hd == tmp_tdata_reg[7:4] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_16; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_18 = 4'he == tmp_tdata_reg[7:4] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_17; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_19 = 4'hf == tmp_tdata_reg[7:4] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_18; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_0_T_3 = _GEN_19 >> _tmp_result_0_trans_tdata_0_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_0 = _tmp_result_0_trans_tdata_0_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_1_T_2 = {tmp_tdata_reg[11:8], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_21 = 4'h1 == tmp_tdata_reg[15:12] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_22 = 4'h2 == tmp_tdata_reg[15:12] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_21; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_23 = 4'h3 == tmp_tdata_reg[15:12] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_22; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_24 = 4'h4 == tmp_tdata_reg[15:12] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_23; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_25 = 4'h5 == tmp_tdata_reg[15:12] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_24; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_26 = 4'h6 == tmp_tdata_reg[15:12] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_25; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_27 = 4'h7 == tmp_tdata_reg[15:12] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_26; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_28 = 4'h8 == tmp_tdata_reg[15:12] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_27; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_29 = 4'h9 == tmp_tdata_reg[15:12] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_28; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_30 = 4'ha == tmp_tdata_reg[15:12] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_29; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_31 = 4'hb == tmp_tdata_reg[15:12] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_30; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_32 = 4'hc == tmp_tdata_reg[15:12] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_31; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_33 = 4'hd == tmp_tdata_reg[15:12] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_32; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_34 = 4'he == tmp_tdata_reg[15:12] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_33; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_35 = 4'hf == tmp_tdata_reg[15:12] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_34; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_1_T_3 = _GEN_35 >> _tmp_result_0_trans_tdata_1_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_1 = _tmp_result_0_trans_tdata_1_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_2_T_2 = {tmp_tdata_reg[19:16], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_37 = 4'h1 == tmp_tdata_reg[23:20] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_38 = 4'h2 == tmp_tdata_reg[23:20] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_37; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_39 = 4'h3 == tmp_tdata_reg[23:20] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_38; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_40 = 4'h4 == tmp_tdata_reg[23:20] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_39; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_41 = 4'h5 == tmp_tdata_reg[23:20] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_40; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_42 = 4'h6 == tmp_tdata_reg[23:20] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_41; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_43 = 4'h7 == tmp_tdata_reg[23:20] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_42; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_44 = 4'h8 == tmp_tdata_reg[23:20] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_43; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_45 = 4'h9 == tmp_tdata_reg[23:20] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_44; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_46 = 4'ha == tmp_tdata_reg[23:20] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_45; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_47 = 4'hb == tmp_tdata_reg[23:20] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_46; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_48 = 4'hc == tmp_tdata_reg[23:20] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_47; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_49 = 4'hd == tmp_tdata_reg[23:20] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_48; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_50 = 4'he == tmp_tdata_reg[23:20] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_49; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_51 = 4'hf == tmp_tdata_reg[23:20] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_50; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_2_T_3 = _GEN_51 >> _tmp_result_0_trans_tdata_2_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_2 = _tmp_result_0_trans_tdata_2_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_3_T_2 = {tmp_tdata_reg[27:24], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_53 = 4'h1 == tmp_tdata_reg[31:28] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_54 = 4'h2 == tmp_tdata_reg[31:28] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_53; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_55 = 4'h3 == tmp_tdata_reg[31:28] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_54; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_56 = 4'h4 == tmp_tdata_reg[31:28] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_55; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_57 = 4'h5 == tmp_tdata_reg[31:28] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_56; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_58 = 4'h6 == tmp_tdata_reg[31:28] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_57; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_59 = 4'h7 == tmp_tdata_reg[31:28] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_58; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_60 = 4'h8 == tmp_tdata_reg[31:28] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_59; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_61 = 4'h9 == tmp_tdata_reg[31:28] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_60; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_62 = 4'ha == tmp_tdata_reg[31:28] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_61; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_63 = 4'hb == tmp_tdata_reg[31:28] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_62; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_64 = 4'hc == tmp_tdata_reg[31:28] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_63; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_65 = 4'hd == tmp_tdata_reg[31:28] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_64; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_66 = 4'he == tmp_tdata_reg[31:28] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_65; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_67 = 4'hf == tmp_tdata_reg[31:28] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_66; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_3_T_3 = _GEN_67 >> _tmp_result_0_trans_tdata_3_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_3 = _tmp_result_0_trans_tdata_3_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_4_T_2 = {tmp_tdata_reg[35:32], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_69 = 4'h1 == tmp_tdata_reg[39:36] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_70 = 4'h2 == tmp_tdata_reg[39:36] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_69; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_71 = 4'h3 == tmp_tdata_reg[39:36] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_70; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_72 = 4'h4 == tmp_tdata_reg[39:36] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_71; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_73 = 4'h5 == tmp_tdata_reg[39:36] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_72; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_74 = 4'h6 == tmp_tdata_reg[39:36] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_73; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_75 = 4'h7 == tmp_tdata_reg[39:36] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_74; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_76 = 4'h8 == tmp_tdata_reg[39:36] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_75; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_77 = 4'h9 == tmp_tdata_reg[39:36] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_76; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_78 = 4'ha == tmp_tdata_reg[39:36] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_77; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_79 = 4'hb == tmp_tdata_reg[39:36] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_78; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_80 = 4'hc == tmp_tdata_reg[39:36] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_79; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_81 = 4'hd == tmp_tdata_reg[39:36] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_80; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_82 = 4'he == tmp_tdata_reg[39:36] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_81; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_83 = 4'hf == tmp_tdata_reg[39:36] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_82; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_4_T_3 = _GEN_83 >> _tmp_result_0_trans_tdata_4_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_4 = _tmp_result_0_trans_tdata_4_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_5_T_2 = {tmp_tdata_reg[43:40], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_85 = 4'h1 == tmp_tdata_reg[47:44] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_86 = 4'h2 == tmp_tdata_reg[47:44] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_85; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_87 = 4'h3 == tmp_tdata_reg[47:44] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_86; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_88 = 4'h4 == tmp_tdata_reg[47:44] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_87; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_89 = 4'h5 == tmp_tdata_reg[47:44] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_88; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_90 = 4'h6 == tmp_tdata_reg[47:44] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_89; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_91 = 4'h7 == tmp_tdata_reg[47:44] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_90; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_92 = 4'h8 == tmp_tdata_reg[47:44] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_91; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_93 = 4'h9 == tmp_tdata_reg[47:44] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_92; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_94 = 4'ha == tmp_tdata_reg[47:44] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_93; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_95 = 4'hb == tmp_tdata_reg[47:44] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_94; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_96 = 4'hc == tmp_tdata_reg[47:44] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_95; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_97 = 4'hd == tmp_tdata_reg[47:44] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_96; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_98 = 4'he == tmp_tdata_reg[47:44] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_97; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_99 = 4'hf == tmp_tdata_reg[47:44] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_98; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_5_T_3 = _GEN_99 >> _tmp_result_0_trans_tdata_5_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_5 = _tmp_result_0_trans_tdata_5_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_6_T_2 = {tmp_tdata_reg[51:48], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_101 = 4'h1 == tmp_tdata_reg[55:52] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_102 = 4'h2 == tmp_tdata_reg[55:52] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_101; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_103 = 4'h3 == tmp_tdata_reg[55:52] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_102; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_104 = 4'h4 == tmp_tdata_reg[55:52] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_103; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_105 = 4'h5 == tmp_tdata_reg[55:52] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_104; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_106 = 4'h6 == tmp_tdata_reg[55:52] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_105; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_107 = 4'h7 == tmp_tdata_reg[55:52] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_106; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_108 = 4'h8 == tmp_tdata_reg[55:52] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_107; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_109 = 4'h9 == tmp_tdata_reg[55:52] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_108; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_110 = 4'ha == tmp_tdata_reg[55:52] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_109; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_111 = 4'hb == tmp_tdata_reg[55:52] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_110; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_112 = 4'hc == tmp_tdata_reg[55:52] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_111; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_113 = 4'hd == tmp_tdata_reg[55:52] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_112; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_114 = 4'he == tmp_tdata_reg[55:52] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_113; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_115 = 4'hf == tmp_tdata_reg[55:52] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_114; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_6_T_3 = _GEN_115 >> _tmp_result_0_trans_tdata_6_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_6 = _tmp_result_0_trans_tdata_6_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_7_T_2 = {tmp_tdata_reg[59:56], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_117 = 4'h1 == tmp_tdata_reg[63:60] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_118 = 4'h2 == tmp_tdata_reg[63:60] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_117; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_119 = 4'h3 == tmp_tdata_reg[63:60] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_118; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_120 = 4'h4 == tmp_tdata_reg[63:60] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_119; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_121 = 4'h5 == tmp_tdata_reg[63:60] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_120; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_122 = 4'h6 == tmp_tdata_reg[63:60] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_121; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_123 = 4'h7 == tmp_tdata_reg[63:60] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_122; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_124 = 4'h8 == tmp_tdata_reg[63:60] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_123; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_125 = 4'h9 == tmp_tdata_reg[63:60] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_124; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_126 = 4'ha == tmp_tdata_reg[63:60] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_125; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_127 = 4'hb == tmp_tdata_reg[63:60] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_126; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_128 = 4'hc == tmp_tdata_reg[63:60] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_127; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_129 = 4'hd == tmp_tdata_reg[63:60] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_128; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_130 = 4'he == tmp_tdata_reg[63:60] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_129; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_131 = 4'hf == tmp_tdata_reg[63:60] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_130; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_7_T_3 = _GEN_131 >> _tmp_result_0_trans_tdata_7_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_7 = _tmp_result_0_trans_tdata_7_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_8_T_2 = {tmp_tdata_reg[67:64], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_133 = 4'h1 == tmp_tdata_reg[71:68] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_134 = 4'h2 == tmp_tdata_reg[71:68] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_133; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_135 = 4'h3 == tmp_tdata_reg[71:68] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_134; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_136 = 4'h4 == tmp_tdata_reg[71:68] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_135; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_137 = 4'h5 == tmp_tdata_reg[71:68] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_136; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_138 = 4'h6 == tmp_tdata_reg[71:68] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_137; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_139 = 4'h7 == tmp_tdata_reg[71:68] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_138; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_140 = 4'h8 == tmp_tdata_reg[71:68] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_139; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_141 = 4'h9 == tmp_tdata_reg[71:68] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_140; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_142 = 4'ha == tmp_tdata_reg[71:68] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_141; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_143 = 4'hb == tmp_tdata_reg[71:68] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_142; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_144 = 4'hc == tmp_tdata_reg[71:68] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_143; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_145 = 4'hd == tmp_tdata_reg[71:68] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_144; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_146 = 4'he == tmp_tdata_reg[71:68] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_145; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_147 = 4'hf == tmp_tdata_reg[71:68] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_146; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_8_T_3 = _GEN_147 >> _tmp_result_0_trans_tdata_8_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_8 = _tmp_result_0_trans_tdata_8_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_9_T_2 = {tmp_tdata_reg[75:72], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_149 = 4'h1 == tmp_tdata_reg[79:76] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_150 = 4'h2 == tmp_tdata_reg[79:76] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_149; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_151 = 4'h3 == tmp_tdata_reg[79:76] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_150; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_152 = 4'h4 == tmp_tdata_reg[79:76] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_151; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_153 = 4'h5 == tmp_tdata_reg[79:76] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_152; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_154 = 4'h6 == tmp_tdata_reg[79:76] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_153; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_155 = 4'h7 == tmp_tdata_reg[79:76] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_154; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_156 = 4'h8 == tmp_tdata_reg[79:76] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_155; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_157 = 4'h9 == tmp_tdata_reg[79:76] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_156; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_158 = 4'ha == tmp_tdata_reg[79:76] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_157; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_159 = 4'hb == tmp_tdata_reg[79:76] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_158; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_160 = 4'hc == tmp_tdata_reg[79:76] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_159; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_161 = 4'hd == tmp_tdata_reg[79:76] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_160; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_162 = 4'he == tmp_tdata_reg[79:76] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_161; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_163 = 4'hf == tmp_tdata_reg[79:76] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_162; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_9_T_3 = _GEN_163 >> _tmp_result_0_trans_tdata_9_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_9 = _tmp_result_0_trans_tdata_9_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_10_T_2 = {tmp_tdata_reg[83:80], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_165 = 4'h1 == tmp_tdata_reg[87:84] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_166 = 4'h2 == tmp_tdata_reg[87:84] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_165; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_167 = 4'h3 == tmp_tdata_reg[87:84] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_166; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_168 = 4'h4 == tmp_tdata_reg[87:84] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_167; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_169 = 4'h5 == tmp_tdata_reg[87:84] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_168; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_170 = 4'h6 == tmp_tdata_reg[87:84] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_169; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_171 = 4'h7 == tmp_tdata_reg[87:84] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_170; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_172 = 4'h8 == tmp_tdata_reg[87:84] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_171; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_173 = 4'h9 == tmp_tdata_reg[87:84] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_172; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_174 = 4'ha == tmp_tdata_reg[87:84] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_173; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_175 = 4'hb == tmp_tdata_reg[87:84] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_174; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_176 = 4'hc == tmp_tdata_reg[87:84] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_175; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_177 = 4'hd == tmp_tdata_reg[87:84] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_176; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_178 = 4'he == tmp_tdata_reg[87:84] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_177; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_179 = 4'hf == tmp_tdata_reg[87:84] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_178; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_10_T_3 = _GEN_179 >> _tmp_result_0_trans_tdata_10_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_10 = _tmp_result_0_trans_tdata_10_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_11_T_2 = {tmp_tdata_reg[91:88], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_181 = 4'h1 == tmp_tdata_reg[95:92] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_182 = 4'h2 == tmp_tdata_reg[95:92] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_181; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_183 = 4'h3 == tmp_tdata_reg[95:92] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_182; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_184 = 4'h4 == tmp_tdata_reg[95:92] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_183; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_185 = 4'h5 == tmp_tdata_reg[95:92] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_184; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_186 = 4'h6 == tmp_tdata_reg[95:92] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_185; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_187 = 4'h7 == tmp_tdata_reg[95:92] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_186; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_188 = 4'h8 == tmp_tdata_reg[95:92] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_187; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_189 = 4'h9 == tmp_tdata_reg[95:92] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_188; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_190 = 4'ha == tmp_tdata_reg[95:92] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_189; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_191 = 4'hb == tmp_tdata_reg[95:92] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_190; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_192 = 4'hc == tmp_tdata_reg[95:92] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_191; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_193 = 4'hd == tmp_tdata_reg[95:92] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_192; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_194 = 4'he == tmp_tdata_reg[95:92] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_193; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_195 = 4'hf == tmp_tdata_reg[95:92] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_194; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_11_T_3 = _GEN_195 >> _tmp_result_0_trans_tdata_11_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_11 = _tmp_result_0_trans_tdata_11_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_12_T_2 = {tmp_tdata_reg[99:96], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_197 = 4'h1 == tmp_tdata_reg[103:100] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_198 = 4'h2 == tmp_tdata_reg[103:100] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_197; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_199 = 4'h3 == tmp_tdata_reg[103:100] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_198; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_200 = 4'h4 == tmp_tdata_reg[103:100] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_199; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_201 = 4'h5 == tmp_tdata_reg[103:100] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_200; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_202 = 4'h6 == tmp_tdata_reg[103:100] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_201; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_203 = 4'h7 == tmp_tdata_reg[103:100] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_202; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_204 = 4'h8 == tmp_tdata_reg[103:100] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_203; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_205 = 4'h9 == tmp_tdata_reg[103:100] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_204; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_206 = 4'ha == tmp_tdata_reg[103:100] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_205; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_207 = 4'hb == tmp_tdata_reg[103:100] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_206; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_208 = 4'hc == tmp_tdata_reg[103:100] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_207; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_209 = 4'hd == tmp_tdata_reg[103:100] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_208; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_210 = 4'he == tmp_tdata_reg[103:100] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_209; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_211 = 4'hf == tmp_tdata_reg[103:100] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_210; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_12_T_3 = _GEN_211 >> _tmp_result_0_trans_tdata_12_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_12 = _tmp_result_0_trans_tdata_12_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_13_T_2 = {tmp_tdata_reg[107:104], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_213 = 4'h1 == tmp_tdata_reg[111:108] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_214 = 4'h2 == tmp_tdata_reg[111:108] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_213; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_215 = 4'h3 == tmp_tdata_reg[111:108] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_214; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_216 = 4'h4 == tmp_tdata_reg[111:108] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_215; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_217 = 4'h5 == tmp_tdata_reg[111:108] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_216; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_218 = 4'h6 == tmp_tdata_reg[111:108] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_217; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_219 = 4'h7 == tmp_tdata_reg[111:108] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_218; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_220 = 4'h8 == tmp_tdata_reg[111:108] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_219; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_221 = 4'h9 == tmp_tdata_reg[111:108] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_220; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_222 = 4'ha == tmp_tdata_reg[111:108] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_221; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_223 = 4'hb == tmp_tdata_reg[111:108] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_222; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_224 = 4'hc == tmp_tdata_reg[111:108] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_223; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_225 = 4'hd == tmp_tdata_reg[111:108] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_224; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_226 = 4'he == tmp_tdata_reg[111:108] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_225; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_227 = 4'hf == tmp_tdata_reg[111:108] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_226; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_13_T_3 = _GEN_227 >> _tmp_result_0_trans_tdata_13_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_13 = _tmp_result_0_trans_tdata_13_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_14_T_2 = {tmp_tdata_reg[115:112], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_229 = 4'h1 == tmp_tdata_reg[119:116] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_230 = 4'h2 == tmp_tdata_reg[119:116] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_229; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_231 = 4'h3 == tmp_tdata_reg[119:116] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_230; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_232 = 4'h4 == tmp_tdata_reg[119:116] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_231; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_233 = 4'h5 == tmp_tdata_reg[119:116] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_232; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_234 = 4'h6 == tmp_tdata_reg[119:116] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_233; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_235 = 4'h7 == tmp_tdata_reg[119:116] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_234; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_236 = 4'h8 == tmp_tdata_reg[119:116] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_235; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_237 = 4'h9 == tmp_tdata_reg[119:116] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_236; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_238 = 4'ha == tmp_tdata_reg[119:116] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_237; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_239 = 4'hb == tmp_tdata_reg[119:116] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_238; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_240 = 4'hc == tmp_tdata_reg[119:116] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_239; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_241 = 4'hd == tmp_tdata_reg[119:116] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_240; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_242 = 4'he == tmp_tdata_reg[119:116] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_241; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_243 = 4'hf == tmp_tdata_reg[119:116] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_242; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_14_T_3 = _GEN_243 >> _tmp_result_0_trans_tdata_14_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_14 = _tmp_result_0_trans_tdata_14_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_15_T_2 = {tmp_tdata_reg[123:120], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_245 = 4'h1 == tmp_tdata_reg[127:124] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_246 = 4'h2 == tmp_tdata_reg[127:124] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_245; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_247 = 4'h3 == tmp_tdata_reg[127:124] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_246; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_248 = 4'h4 == tmp_tdata_reg[127:124] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_247; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_249 = 4'h5 == tmp_tdata_reg[127:124] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_248; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_250 = 4'h6 == tmp_tdata_reg[127:124] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_249; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_251 = 4'h7 == tmp_tdata_reg[127:124] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_250; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_252 = 4'h8 == tmp_tdata_reg[127:124] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_251; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_253 = 4'h9 == tmp_tdata_reg[127:124] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_252; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_254 = 4'ha == tmp_tdata_reg[127:124] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_253; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_255 = 4'hb == tmp_tdata_reg[127:124] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_254; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_256 = 4'hc == tmp_tdata_reg[127:124] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_255; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_257 = 4'hd == tmp_tdata_reg[127:124] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_256; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_258 = 4'he == tmp_tdata_reg[127:124] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_257; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_259 = 4'hf == tmp_tdata_reg[127:124] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_258; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_15_T_3 = _GEN_259 >> _tmp_result_0_trans_tdata_15_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_15 = _tmp_result_0_trans_tdata_15_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_16_T_2 = {tmp_tdata_reg[131:128], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_261 = 4'h1 == tmp_tdata_reg[135:132] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_262 = 4'h2 == tmp_tdata_reg[135:132] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_261; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_263 = 4'h3 == tmp_tdata_reg[135:132] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_262; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_264 = 4'h4 == tmp_tdata_reg[135:132] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_263; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_265 = 4'h5 == tmp_tdata_reg[135:132] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_264; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_266 = 4'h6 == tmp_tdata_reg[135:132] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_265; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_267 = 4'h7 == tmp_tdata_reg[135:132] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_266; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_268 = 4'h8 == tmp_tdata_reg[135:132] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_267; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_269 = 4'h9 == tmp_tdata_reg[135:132] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_268; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_270 = 4'ha == tmp_tdata_reg[135:132] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_269; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_271 = 4'hb == tmp_tdata_reg[135:132] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_270; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_272 = 4'hc == tmp_tdata_reg[135:132] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_271; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_273 = 4'hd == tmp_tdata_reg[135:132] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_272; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_274 = 4'he == tmp_tdata_reg[135:132] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_273; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_275 = 4'hf == tmp_tdata_reg[135:132] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_274; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_16_T_3 = _GEN_275 >> _tmp_result_0_trans_tdata_16_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_16 = _tmp_result_0_trans_tdata_16_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_17_T_2 = {tmp_tdata_reg[139:136], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_277 = 4'h1 == tmp_tdata_reg[143:140] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_278 = 4'h2 == tmp_tdata_reg[143:140] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_277; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_279 = 4'h3 == tmp_tdata_reg[143:140] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_278; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_280 = 4'h4 == tmp_tdata_reg[143:140] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_279; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_281 = 4'h5 == tmp_tdata_reg[143:140] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_280; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_282 = 4'h6 == tmp_tdata_reg[143:140] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_281; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_283 = 4'h7 == tmp_tdata_reg[143:140] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_282; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_284 = 4'h8 == tmp_tdata_reg[143:140] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_283; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_285 = 4'h9 == tmp_tdata_reg[143:140] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_284; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_286 = 4'ha == tmp_tdata_reg[143:140] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_285; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_287 = 4'hb == tmp_tdata_reg[143:140] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_286; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_288 = 4'hc == tmp_tdata_reg[143:140] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_287; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_289 = 4'hd == tmp_tdata_reg[143:140] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_288; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_290 = 4'he == tmp_tdata_reg[143:140] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_289; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_291 = 4'hf == tmp_tdata_reg[143:140] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_290; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_17_T_3 = _GEN_291 >> _tmp_result_0_trans_tdata_17_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_17 = _tmp_result_0_trans_tdata_17_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_18_T_2 = {tmp_tdata_reg[147:144], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_293 = 4'h1 == tmp_tdata_reg[151:148] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_294 = 4'h2 == tmp_tdata_reg[151:148] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_293; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_295 = 4'h3 == tmp_tdata_reg[151:148] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_294; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_296 = 4'h4 == tmp_tdata_reg[151:148] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_295; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_297 = 4'h5 == tmp_tdata_reg[151:148] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_296; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_298 = 4'h6 == tmp_tdata_reg[151:148] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_297; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_299 = 4'h7 == tmp_tdata_reg[151:148] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_298; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_300 = 4'h8 == tmp_tdata_reg[151:148] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_299; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_301 = 4'h9 == tmp_tdata_reg[151:148] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_300; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_302 = 4'ha == tmp_tdata_reg[151:148] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_301; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_303 = 4'hb == tmp_tdata_reg[151:148] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_302; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_304 = 4'hc == tmp_tdata_reg[151:148] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_303; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_305 = 4'hd == tmp_tdata_reg[151:148] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_304; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_306 = 4'he == tmp_tdata_reg[151:148] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_305; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_307 = 4'hf == tmp_tdata_reg[151:148] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_306; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_18_T_3 = _GEN_307 >> _tmp_result_0_trans_tdata_18_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_18 = _tmp_result_0_trans_tdata_18_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_19_T_2 = {tmp_tdata_reg[155:152], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_309 = 4'h1 == tmp_tdata_reg[159:156] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_310 = 4'h2 == tmp_tdata_reg[159:156] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_309; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_311 = 4'h3 == tmp_tdata_reg[159:156] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_310; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_312 = 4'h4 == tmp_tdata_reg[159:156] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_311; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_313 = 4'h5 == tmp_tdata_reg[159:156] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_312; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_314 = 4'h6 == tmp_tdata_reg[159:156] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_313; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_315 = 4'h7 == tmp_tdata_reg[159:156] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_314; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_316 = 4'h8 == tmp_tdata_reg[159:156] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_315; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_317 = 4'h9 == tmp_tdata_reg[159:156] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_316; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_318 = 4'ha == tmp_tdata_reg[159:156] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_317; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_319 = 4'hb == tmp_tdata_reg[159:156] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_318; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_320 = 4'hc == tmp_tdata_reg[159:156] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_319; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_321 = 4'hd == tmp_tdata_reg[159:156] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_320; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_322 = 4'he == tmp_tdata_reg[159:156] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_321; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_323 = 4'hf == tmp_tdata_reg[159:156] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_322; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_19_T_3 = _GEN_323 >> _tmp_result_0_trans_tdata_19_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_19 = _tmp_result_0_trans_tdata_19_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_20_T_2 = {tmp_tdata_reg[163:160], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_325 = 4'h1 == tmp_tdata_reg[167:164] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_326 = 4'h2 == tmp_tdata_reg[167:164] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_325; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_327 = 4'h3 == tmp_tdata_reg[167:164] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_326; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_328 = 4'h4 == tmp_tdata_reg[167:164] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_327; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_329 = 4'h5 == tmp_tdata_reg[167:164] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_328; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_330 = 4'h6 == tmp_tdata_reg[167:164] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_329; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_331 = 4'h7 == tmp_tdata_reg[167:164] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_330; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_332 = 4'h8 == tmp_tdata_reg[167:164] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_331; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_333 = 4'h9 == tmp_tdata_reg[167:164] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_332; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_334 = 4'ha == tmp_tdata_reg[167:164] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_333; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_335 = 4'hb == tmp_tdata_reg[167:164] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_334; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_336 = 4'hc == tmp_tdata_reg[167:164] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_335; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_337 = 4'hd == tmp_tdata_reg[167:164] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_336; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_338 = 4'he == tmp_tdata_reg[167:164] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_337; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_339 = 4'hf == tmp_tdata_reg[167:164] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_338; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_20_T_3 = _GEN_339 >> _tmp_result_0_trans_tdata_20_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_20 = _tmp_result_0_trans_tdata_20_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_21_T_2 = {tmp_tdata_reg[171:168], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_341 = 4'h1 == tmp_tdata_reg[175:172] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_342 = 4'h2 == tmp_tdata_reg[175:172] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_341; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_343 = 4'h3 == tmp_tdata_reg[175:172] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_342; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_344 = 4'h4 == tmp_tdata_reg[175:172] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_343; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_345 = 4'h5 == tmp_tdata_reg[175:172] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_344; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_346 = 4'h6 == tmp_tdata_reg[175:172] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_345; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_347 = 4'h7 == tmp_tdata_reg[175:172] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_346; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_348 = 4'h8 == tmp_tdata_reg[175:172] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_347; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_349 = 4'h9 == tmp_tdata_reg[175:172] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_348; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_350 = 4'ha == tmp_tdata_reg[175:172] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_349; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_351 = 4'hb == tmp_tdata_reg[175:172] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_350; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_352 = 4'hc == tmp_tdata_reg[175:172] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_351; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_353 = 4'hd == tmp_tdata_reg[175:172] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_352; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_354 = 4'he == tmp_tdata_reg[175:172] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_353; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_355 = 4'hf == tmp_tdata_reg[175:172] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_354; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_21_T_3 = _GEN_355 >> _tmp_result_0_trans_tdata_21_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_21 = _tmp_result_0_trans_tdata_21_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_22_T_2 = {tmp_tdata_reg[179:176], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_357 = 4'h1 == tmp_tdata_reg[183:180] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_358 = 4'h2 == tmp_tdata_reg[183:180] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_357; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_359 = 4'h3 == tmp_tdata_reg[183:180] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_358; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_360 = 4'h4 == tmp_tdata_reg[183:180] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_359; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_361 = 4'h5 == tmp_tdata_reg[183:180] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_360; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_362 = 4'h6 == tmp_tdata_reg[183:180] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_361; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_363 = 4'h7 == tmp_tdata_reg[183:180] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_362; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_364 = 4'h8 == tmp_tdata_reg[183:180] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_363; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_365 = 4'h9 == tmp_tdata_reg[183:180] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_364; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_366 = 4'ha == tmp_tdata_reg[183:180] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_365; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_367 = 4'hb == tmp_tdata_reg[183:180] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_366; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_368 = 4'hc == tmp_tdata_reg[183:180] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_367; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_369 = 4'hd == tmp_tdata_reg[183:180] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_368; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_370 = 4'he == tmp_tdata_reg[183:180] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_369; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_371 = 4'hf == tmp_tdata_reg[183:180] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_370; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_22_T_3 = _GEN_371 >> _tmp_result_0_trans_tdata_22_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_22 = _tmp_result_0_trans_tdata_22_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_23_T_2 = {tmp_tdata_reg[187:184], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_373 = 4'h1 == tmp_tdata_reg[191:188] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_374 = 4'h2 == tmp_tdata_reg[191:188] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_373; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_375 = 4'h3 == tmp_tdata_reg[191:188] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_374; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_376 = 4'h4 == tmp_tdata_reg[191:188] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_375; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_377 = 4'h5 == tmp_tdata_reg[191:188] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_376; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_378 = 4'h6 == tmp_tdata_reg[191:188] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_377; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_379 = 4'h7 == tmp_tdata_reg[191:188] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_378; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_380 = 4'h8 == tmp_tdata_reg[191:188] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_379; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_381 = 4'h9 == tmp_tdata_reg[191:188] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_380; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_382 = 4'ha == tmp_tdata_reg[191:188] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_381; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_383 = 4'hb == tmp_tdata_reg[191:188] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_382; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_384 = 4'hc == tmp_tdata_reg[191:188] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_383; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_385 = 4'hd == tmp_tdata_reg[191:188] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_384; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_386 = 4'he == tmp_tdata_reg[191:188] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_385; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_387 = 4'hf == tmp_tdata_reg[191:188] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_386; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_23_T_3 = _GEN_387 >> _tmp_result_0_trans_tdata_23_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_23 = _tmp_result_0_trans_tdata_23_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_24_T_2 = {tmp_tdata_reg[195:192], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_389 = 4'h1 == tmp_tdata_reg[199:196] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_390 = 4'h2 == tmp_tdata_reg[199:196] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_389; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_391 = 4'h3 == tmp_tdata_reg[199:196] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_390; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_392 = 4'h4 == tmp_tdata_reg[199:196] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_391; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_393 = 4'h5 == tmp_tdata_reg[199:196] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_392; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_394 = 4'h6 == tmp_tdata_reg[199:196] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_393; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_395 = 4'h7 == tmp_tdata_reg[199:196] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_394; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_396 = 4'h8 == tmp_tdata_reg[199:196] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_395; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_397 = 4'h9 == tmp_tdata_reg[199:196] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_396; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_398 = 4'ha == tmp_tdata_reg[199:196] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_397; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_399 = 4'hb == tmp_tdata_reg[199:196] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_398; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_400 = 4'hc == tmp_tdata_reg[199:196] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_399; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_401 = 4'hd == tmp_tdata_reg[199:196] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_400; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_402 = 4'he == tmp_tdata_reg[199:196] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_401; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_403 = 4'hf == tmp_tdata_reg[199:196] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_402; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_24_T_3 = _GEN_403 >> _tmp_result_0_trans_tdata_24_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_24 = _tmp_result_0_trans_tdata_24_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_25_T_2 = {tmp_tdata_reg[203:200], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_405 = 4'h1 == tmp_tdata_reg[207:204] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_406 = 4'h2 == tmp_tdata_reg[207:204] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_405; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_407 = 4'h3 == tmp_tdata_reg[207:204] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_406; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_408 = 4'h4 == tmp_tdata_reg[207:204] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_407; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_409 = 4'h5 == tmp_tdata_reg[207:204] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_408; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_410 = 4'h6 == tmp_tdata_reg[207:204] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_409; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_411 = 4'h7 == tmp_tdata_reg[207:204] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_410; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_412 = 4'h8 == tmp_tdata_reg[207:204] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_411; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_413 = 4'h9 == tmp_tdata_reg[207:204] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_412; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_414 = 4'ha == tmp_tdata_reg[207:204] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_413; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_415 = 4'hb == tmp_tdata_reg[207:204] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_414; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_416 = 4'hc == tmp_tdata_reg[207:204] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_415; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_417 = 4'hd == tmp_tdata_reg[207:204] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_416; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_418 = 4'he == tmp_tdata_reg[207:204] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_417; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_419 = 4'hf == tmp_tdata_reg[207:204] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_418; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_25_T_3 = _GEN_419 >> _tmp_result_0_trans_tdata_25_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_25 = _tmp_result_0_trans_tdata_25_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_26_T_2 = {tmp_tdata_reg[211:208], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_421 = 4'h1 == tmp_tdata_reg[215:212] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_422 = 4'h2 == tmp_tdata_reg[215:212] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_421; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_423 = 4'h3 == tmp_tdata_reg[215:212] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_422; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_424 = 4'h4 == tmp_tdata_reg[215:212] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_423; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_425 = 4'h5 == tmp_tdata_reg[215:212] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_424; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_426 = 4'h6 == tmp_tdata_reg[215:212] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_425; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_427 = 4'h7 == tmp_tdata_reg[215:212] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_426; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_428 = 4'h8 == tmp_tdata_reg[215:212] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_427; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_429 = 4'h9 == tmp_tdata_reg[215:212] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_428; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_430 = 4'ha == tmp_tdata_reg[215:212] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_429; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_431 = 4'hb == tmp_tdata_reg[215:212] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_430; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_432 = 4'hc == tmp_tdata_reg[215:212] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_431; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_433 = 4'hd == tmp_tdata_reg[215:212] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_432; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_434 = 4'he == tmp_tdata_reg[215:212] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_433; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_435 = 4'hf == tmp_tdata_reg[215:212] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_434; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_26_T_3 = _GEN_435 >> _tmp_result_0_trans_tdata_26_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_26 = _tmp_result_0_trans_tdata_26_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_27_T_2 = {tmp_tdata_reg[219:216], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_437 = 4'h1 == tmp_tdata_reg[223:220] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_438 = 4'h2 == tmp_tdata_reg[223:220] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_437; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_439 = 4'h3 == tmp_tdata_reg[223:220] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_438; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_440 = 4'h4 == tmp_tdata_reg[223:220] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_439; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_441 = 4'h5 == tmp_tdata_reg[223:220] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_440; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_442 = 4'h6 == tmp_tdata_reg[223:220] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_441; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_443 = 4'h7 == tmp_tdata_reg[223:220] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_442; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_444 = 4'h8 == tmp_tdata_reg[223:220] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_443; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_445 = 4'h9 == tmp_tdata_reg[223:220] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_444; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_446 = 4'ha == tmp_tdata_reg[223:220] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_445; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_447 = 4'hb == tmp_tdata_reg[223:220] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_446; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_448 = 4'hc == tmp_tdata_reg[223:220] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_447; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_449 = 4'hd == tmp_tdata_reg[223:220] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_448; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_450 = 4'he == tmp_tdata_reg[223:220] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_449; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_451 = 4'hf == tmp_tdata_reg[223:220] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_450; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_27_T_3 = _GEN_451 >> _tmp_result_0_trans_tdata_27_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_27 = _tmp_result_0_trans_tdata_27_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_28_T_2 = {tmp_tdata_reg[227:224], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_453 = 4'h1 == tmp_tdata_reg[231:228] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_454 = 4'h2 == tmp_tdata_reg[231:228] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_453; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_455 = 4'h3 == tmp_tdata_reg[231:228] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_454; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_456 = 4'h4 == tmp_tdata_reg[231:228] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_455; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_457 = 4'h5 == tmp_tdata_reg[231:228] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_456; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_458 = 4'h6 == tmp_tdata_reg[231:228] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_457; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_459 = 4'h7 == tmp_tdata_reg[231:228] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_458; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_460 = 4'h8 == tmp_tdata_reg[231:228] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_459; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_461 = 4'h9 == tmp_tdata_reg[231:228] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_460; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_462 = 4'ha == tmp_tdata_reg[231:228] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_461; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_463 = 4'hb == tmp_tdata_reg[231:228] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_462; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_464 = 4'hc == tmp_tdata_reg[231:228] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_463; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_465 = 4'hd == tmp_tdata_reg[231:228] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_464; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_466 = 4'he == tmp_tdata_reg[231:228] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_465; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_467 = 4'hf == tmp_tdata_reg[231:228] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_466; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_28_T_3 = _GEN_467 >> _tmp_result_0_trans_tdata_28_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_28 = _tmp_result_0_trans_tdata_28_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_29_T_2 = {tmp_tdata_reg[235:232], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_469 = 4'h1 == tmp_tdata_reg[239:236] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_470 = 4'h2 == tmp_tdata_reg[239:236] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_469; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_471 = 4'h3 == tmp_tdata_reg[239:236] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_470; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_472 = 4'h4 == tmp_tdata_reg[239:236] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_471; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_473 = 4'h5 == tmp_tdata_reg[239:236] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_472; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_474 = 4'h6 == tmp_tdata_reg[239:236] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_473; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_475 = 4'h7 == tmp_tdata_reg[239:236] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_474; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_476 = 4'h8 == tmp_tdata_reg[239:236] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_475; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_477 = 4'h9 == tmp_tdata_reg[239:236] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_476; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_478 = 4'ha == tmp_tdata_reg[239:236] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_477; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_479 = 4'hb == tmp_tdata_reg[239:236] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_478; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_480 = 4'hc == tmp_tdata_reg[239:236] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_479; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_481 = 4'hd == tmp_tdata_reg[239:236] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_480; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_482 = 4'he == tmp_tdata_reg[239:236] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_481; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_483 = 4'hf == tmp_tdata_reg[239:236] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_482; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_29_T_3 = _GEN_483 >> _tmp_result_0_trans_tdata_29_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_29 = _tmp_result_0_trans_tdata_29_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_30_T_2 = {tmp_tdata_reg[243:240], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_485 = 4'h1 == tmp_tdata_reg[247:244] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_486 = 4'h2 == tmp_tdata_reg[247:244] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_485; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_487 = 4'h3 == tmp_tdata_reg[247:244] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_486; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_488 = 4'h4 == tmp_tdata_reg[247:244] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_487; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_489 = 4'h5 == tmp_tdata_reg[247:244] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_488; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_490 = 4'h6 == tmp_tdata_reg[247:244] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_489; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_491 = 4'h7 == tmp_tdata_reg[247:244] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_490; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_492 = 4'h8 == tmp_tdata_reg[247:244] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_491; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_493 = 4'h9 == tmp_tdata_reg[247:244] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_492; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_494 = 4'ha == tmp_tdata_reg[247:244] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_493; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_495 = 4'hb == tmp_tdata_reg[247:244] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_494; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_496 = 4'hc == tmp_tdata_reg[247:244] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_495; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_497 = 4'hd == tmp_tdata_reg[247:244] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_496; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_498 = 4'he == tmp_tdata_reg[247:244] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_497; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_499 = 4'hf == tmp_tdata_reg[247:244] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_498; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_30_T_3 = _GEN_499 >> _tmp_result_0_trans_tdata_30_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_30 = _tmp_result_0_trans_tdata_30_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_31_T_2 = {tmp_tdata_reg[251:248], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_501 = 4'h1 == tmp_tdata_reg[255:252] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_502 = 4'h2 == tmp_tdata_reg[255:252] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_501; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_503 = 4'h3 == tmp_tdata_reg[255:252] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_502; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_504 = 4'h4 == tmp_tdata_reg[255:252] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_503; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_505 = 4'h5 == tmp_tdata_reg[255:252] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_504; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_506 = 4'h6 == tmp_tdata_reg[255:252] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_505; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_507 = 4'h7 == tmp_tdata_reg[255:252] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_506; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_508 = 4'h8 == tmp_tdata_reg[255:252] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_507; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_509 = 4'h9 == tmp_tdata_reg[255:252] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_508; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_510 = 4'ha == tmp_tdata_reg[255:252] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_509; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_511 = 4'hb == tmp_tdata_reg[255:252] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_510; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_512 = 4'hc == tmp_tdata_reg[255:252] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_511; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_513 = 4'hd == tmp_tdata_reg[255:252] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_512; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_514 = 4'he == tmp_tdata_reg[255:252] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_513; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_515 = 4'hf == tmp_tdata_reg[255:252] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_514; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_31_T_3 = _GEN_515 >> _tmp_result_0_trans_tdata_31_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_31 = _tmp_result_0_trans_tdata_31_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_32_T_2 = {tmp_tdata_reg[259:256], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_517 = 4'h1 == tmp_tdata_reg[263:260] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_518 = 4'h2 == tmp_tdata_reg[263:260] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_517; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_519 = 4'h3 == tmp_tdata_reg[263:260] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_518; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_520 = 4'h4 == tmp_tdata_reg[263:260] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_519; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_521 = 4'h5 == tmp_tdata_reg[263:260] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_520; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_522 = 4'h6 == tmp_tdata_reg[263:260] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_521; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_523 = 4'h7 == tmp_tdata_reg[263:260] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_522; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_524 = 4'h8 == tmp_tdata_reg[263:260] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_523; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_525 = 4'h9 == tmp_tdata_reg[263:260] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_524; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_526 = 4'ha == tmp_tdata_reg[263:260] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_525; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_527 = 4'hb == tmp_tdata_reg[263:260] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_526; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_528 = 4'hc == tmp_tdata_reg[263:260] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_527; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_529 = 4'hd == tmp_tdata_reg[263:260] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_528; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_530 = 4'he == tmp_tdata_reg[263:260] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_529; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_531 = 4'hf == tmp_tdata_reg[263:260] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_530; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_32_T_3 = _GEN_531 >> _tmp_result_0_trans_tdata_32_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_32 = _tmp_result_0_trans_tdata_32_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_33_T_2 = {tmp_tdata_reg[267:264], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_533 = 4'h1 == tmp_tdata_reg[271:268] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_534 = 4'h2 == tmp_tdata_reg[271:268] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_533; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_535 = 4'h3 == tmp_tdata_reg[271:268] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_534; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_536 = 4'h4 == tmp_tdata_reg[271:268] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_535; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_537 = 4'h5 == tmp_tdata_reg[271:268] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_536; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_538 = 4'h6 == tmp_tdata_reg[271:268] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_537; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_539 = 4'h7 == tmp_tdata_reg[271:268] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_538; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_540 = 4'h8 == tmp_tdata_reg[271:268] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_539; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_541 = 4'h9 == tmp_tdata_reg[271:268] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_540; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_542 = 4'ha == tmp_tdata_reg[271:268] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_541; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_543 = 4'hb == tmp_tdata_reg[271:268] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_542; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_544 = 4'hc == tmp_tdata_reg[271:268] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_543; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_545 = 4'hd == tmp_tdata_reg[271:268] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_544; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_546 = 4'he == tmp_tdata_reg[271:268] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_545; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_547 = 4'hf == tmp_tdata_reg[271:268] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_546; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_33_T_3 = _GEN_547 >> _tmp_result_0_trans_tdata_33_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_33 = _tmp_result_0_trans_tdata_33_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_34_T_2 = {tmp_tdata_reg[275:272], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_549 = 4'h1 == tmp_tdata_reg[279:276] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_550 = 4'h2 == tmp_tdata_reg[279:276] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_549; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_551 = 4'h3 == tmp_tdata_reg[279:276] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_550; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_552 = 4'h4 == tmp_tdata_reg[279:276] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_551; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_553 = 4'h5 == tmp_tdata_reg[279:276] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_552; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_554 = 4'h6 == tmp_tdata_reg[279:276] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_553; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_555 = 4'h7 == tmp_tdata_reg[279:276] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_554; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_556 = 4'h8 == tmp_tdata_reg[279:276] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_555; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_557 = 4'h9 == tmp_tdata_reg[279:276] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_556; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_558 = 4'ha == tmp_tdata_reg[279:276] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_557; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_559 = 4'hb == tmp_tdata_reg[279:276] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_558; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_560 = 4'hc == tmp_tdata_reg[279:276] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_559; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_561 = 4'hd == tmp_tdata_reg[279:276] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_560; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_562 = 4'he == tmp_tdata_reg[279:276] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_561; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_563 = 4'hf == tmp_tdata_reg[279:276] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_562; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_34_T_3 = _GEN_563 >> _tmp_result_0_trans_tdata_34_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_34 = _tmp_result_0_trans_tdata_34_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_35_T_2 = {tmp_tdata_reg[283:280], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_565 = 4'h1 == tmp_tdata_reg[287:284] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_566 = 4'h2 == tmp_tdata_reg[287:284] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_565; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_567 = 4'h3 == tmp_tdata_reg[287:284] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_566; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_568 = 4'h4 == tmp_tdata_reg[287:284] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_567; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_569 = 4'h5 == tmp_tdata_reg[287:284] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_568; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_570 = 4'h6 == tmp_tdata_reg[287:284] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_569; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_571 = 4'h7 == tmp_tdata_reg[287:284] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_570; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_572 = 4'h8 == tmp_tdata_reg[287:284] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_571; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_573 = 4'h9 == tmp_tdata_reg[287:284] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_572; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_574 = 4'ha == tmp_tdata_reg[287:284] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_573; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_575 = 4'hb == tmp_tdata_reg[287:284] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_574; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_576 = 4'hc == tmp_tdata_reg[287:284] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_575; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_577 = 4'hd == tmp_tdata_reg[287:284] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_576; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_578 = 4'he == tmp_tdata_reg[287:284] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_577; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_579 = 4'hf == tmp_tdata_reg[287:284] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_578; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_35_T_3 = _GEN_579 >> _tmp_result_0_trans_tdata_35_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_35 = _tmp_result_0_trans_tdata_35_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_36_T_2 = {tmp_tdata_reg[291:288], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_581 = 4'h1 == tmp_tdata_reg[295:292] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_582 = 4'h2 == tmp_tdata_reg[295:292] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_581; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_583 = 4'h3 == tmp_tdata_reg[295:292] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_582; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_584 = 4'h4 == tmp_tdata_reg[295:292] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_583; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_585 = 4'h5 == tmp_tdata_reg[295:292] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_584; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_586 = 4'h6 == tmp_tdata_reg[295:292] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_585; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_587 = 4'h7 == tmp_tdata_reg[295:292] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_586; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_588 = 4'h8 == tmp_tdata_reg[295:292] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_587; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_589 = 4'h9 == tmp_tdata_reg[295:292] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_588; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_590 = 4'ha == tmp_tdata_reg[295:292] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_589; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_591 = 4'hb == tmp_tdata_reg[295:292] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_590; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_592 = 4'hc == tmp_tdata_reg[295:292] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_591; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_593 = 4'hd == tmp_tdata_reg[295:292] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_592; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_594 = 4'he == tmp_tdata_reg[295:292] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_593; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_595 = 4'hf == tmp_tdata_reg[295:292] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_594; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_36_T_3 = _GEN_595 >> _tmp_result_0_trans_tdata_36_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_36 = _tmp_result_0_trans_tdata_36_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_37_T_2 = {tmp_tdata_reg[299:296], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_597 = 4'h1 == tmp_tdata_reg[303:300] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_598 = 4'h2 == tmp_tdata_reg[303:300] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_597; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_599 = 4'h3 == tmp_tdata_reg[303:300] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_598; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_600 = 4'h4 == tmp_tdata_reg[303:300] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_599; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_601 = 4'h5 == tmp_tdata_reg[303:300] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_600; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_602 = 4'h6 == tmp_tdata_reg[303:300] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_601; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_603 = 4'h7 == tmp_tdata_reg[303:300] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_602; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_604 = 4'h8 == tmp_tdata_reg[303:300] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_603; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_605 = 4'h9 == tmp_tdata_reg[303:300] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_604; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_606 = 4'ha == tmp_tdata_reg[303:300] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_605; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_607 = 4'hb == tmp_tdata_reg[303:300] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_606; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_608 = 4'hc == tmp_tdata_reg[303:300] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_607; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_609 = 4'hd == tmp_tdata_reg[303:300] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_608; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_610 = 4'he == tmp_tdata_reg[303:300] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_609; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_611 = 4'hf == tmp_tdata_reg[303:300] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_610; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_37_T_3 = _GEN_611 >> _tmp_result_0_trans_tdata_37_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_37 = _tmp_result_0_trans_tdata_37_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_38_T_2 = {tmp_tdata_reg[307:304], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_613 = 4'h1 == tmp_tdata_reg[311:308] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_614 = 4'h2 == tmp_tdata_reg[311:308] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_613; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_615 = 4'h3 == tmp_tdata_reg[311:308] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_614; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_616 = 4'h4 == tmp_tdata_reg[311:308] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_615; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_617 = 4'h5 == tmp_tdata_reg[311:308] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_616; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_618 = 4'h6 == tmp_tdata_reg[311:308] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_617; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_619 = 4'h7 == tmp_tdata_reg[311:308] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_618; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_620 = 4'h8 == tmp_tdata_reg[311:308] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_619; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_621 = 4'h9 == tmp_tdata_reg[311:308] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_620; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_622 = 4'ha == tmp_tdata_reg[311:308] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_621; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_623 = 4'hb == tmp_tdata_reg[311:308] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_622; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_624 = 4'hc == tmp_tdata_reg[311:308] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_623; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_625 = 4'hd == tmp_tdata_reg[311:308] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_624; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_626 = 4'he == tmp_tdata_reg[311:308] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_625; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_627 = 4'hf == tmp_tdata_reg[311:308] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_626; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_38_T_3 = _GEN_627 >> _tmp_result_0_trans_tdata_38_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_38 = _tmp_result_0_trans_tdata_38_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_39_T_2 = {tmp_tdata_reg[315:312], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_629 = 4'h1 == tmp_tdata_reg[319:316] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_630 = 4'h2 == tmp_tdata_reg[319:316] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_629; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_631 = 4'h3 == tmp_tdata_reg[319:316] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_630; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_632 = 4'h4 == tmp_tdata_reg[319:316] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_631; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_633 = 4'h5 == tmp_tdata_reg[319:316] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_632; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_634 = 4'h6 == tmp_tdata_reg[319:316] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_633; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_635 = 4'h7 == tmp_tdata_reg[319:316] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_634; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_636 = 4'h8 == tmp_tdata_reg[319:316] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_635; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_637 = 4'h9 == tmp_tdata_reg[319:316] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_636; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_638 = 4'ha == tmp_tdata_reg[319:316] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_637; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_639 = 4'hb == tmp_tdata_reg[319:316] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_638; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_640 = 4'hc == tmp_tdata_reg[319:316] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_639; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_641 = 4'hd == tmp_tdata_reg[319:316] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_640; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_642 = 4'he == tmp_tdata_reg[319:316] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_641; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_643 = 4'hf == tmp_tdata_reg[319:316] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_642; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_39_T_3 = _GEN_643 >> _tmp_result_0_trans_tdata_39_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_39 = _tmp_result_0_trans_tdata_39_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_40_T_2 = {tmp_tdata_reg[323:320], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_645 = 4'h1 == tmp_tdata_reg[327:324] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_646 = 4'h2 == tmp_tdata_reg[327:324] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_645; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_647 = 4'h3 == tmp_tdata_reg[327:324] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_646; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_648 = 4'h4 == tmp_tdata_reg[327:324] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_647; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_649 = 4'h5 == tmp_tdata_reg[327:324] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_648; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_650 = 4'h6 == tmp_tdata_reg[327:324] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_649; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_651 = 4'h7 == tmp_tdata_reg[327:324] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_650; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_652 = 4'h8 == tmp_tdata_reg[327:324] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_651; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_653 = 4'h9 == tmp_tdata_reg[327:324] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_652; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_654 = 4'ha == tmp_tdata_reg[327:324] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_653; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_655 = 4'hb == tmp_tdata_reg[327:324] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_654; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_656 = 4'hc == tmp_tdata_reg[327:324] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_655; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_657 = 4'hd == tmp_tdata_reg[327:324] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_656; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_658 = 4'he == tmp_tdata_reg[327:324] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_657; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_659 = 4'hf == tmp_tdata_reg[327:324] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_658; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_40_T_3 = _GEN_659 >> _tmp_result_0_trans_tdata_40_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_40 = _tmp_result_0_trans_tdata_40_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_41_T_2 = {tmp_tdata_reg[331:328], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_661 = 4'h1 == tmp_tdata_reg[335:332] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_662 = 4'h2 == tmp_tdata_reg[335:332] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_661; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_663 = 4'h3 == tmp_tdata_reg[335:332] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_662; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_664 = 4'h4 == tmp_tdata_reg[335:332] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_663; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_665 = 4'h5 == tmp_tdata_reg[335:332] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_664; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_666 = 4'h6 == tmp_tdata_reg[335:332] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_665; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_667 = 4'h7 == tmp_tdata_reg[335:332] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_666; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_668 = 4'h8 == tmp_tdata_reg[335:332] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_667; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_669 = 4'h9 == tmp_tdata_reg[335:332] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_668; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_670 = 4'ha == tmp_tdata_reg[335:332] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_669; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_671 = 4'hb == tmp_tdata_reg[335:332] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_670; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_672 = 4'hc == tmp_tdata_reg[335:332] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_671; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_673 = 4'hd == tmp_tdata_reg[335:332] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_672; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_674 = 4'he == tmp_tdata_reg[335:332] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_673; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_675 = 4'hf == tmp_tdata_reg[335:332] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_674; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_41_T_3 = _GEN_675 >> _tmp_result_0_trans_tdata_41_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_41 = _tmp_result_0_trans_tdata_41_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_42_T_2 = {tmp_tdata_reg[339:336], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_677 = 4'h1 == tmp_tdata_reg[343:340] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_678 = 4'h2 == tmp_tdata_reg[343:340] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_677; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_679 = 4'h3 == tmp_tdata_reg[343:340] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_678; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_680 = 4'h4 == tmp_tdata_reg[343:340] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_679; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_681 = 4'h5 == tmp_tdata_reg[343:340] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_680; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_682 = 4'h6 == tmp_tdata_reg[343:340] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_681; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_683 = 4'h7 == tmp_tdata_reg[343:340] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_682; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_684 = 4'h8 == tmp_tdata_reg[343:340] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_683; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_685 = 4'h9 == tmp_tdata_reg[343:340] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_684; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_686 = 4'ha == tmp_tdata_reg[343:340] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_685; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_687 = 4'hb == tmp_tdata_reg[343:340] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_686; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_688 = 4'hc == tmp_tdata_reg[343:340] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_687; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_689 = 4'hd == tmp_tdata_reg[343:340] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_688; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_690 = 4'he == tmp_tdata_reg[343:340] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_689; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_691 = 4'hf == tmp_tdata_reg[343:340] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_690; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_42_T_3 = _GEN_691 >> _tmp_result_0_trans_tdata_42_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_42 = _tmp_result_0_trans_tdata_42_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_43_T_2 = {tmp_tdata_reg[347:344], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_693 = 4'h1 == tmp_tdata_reg[351:348] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_694 = 4'h2 == tmp_tdata_reg[351:348] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_693; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_695 = 4'h3 == tmp_tdata_reg[351:348] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_694; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_696 = 4'h4 == tmp_tdata_reg[351:348] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_695; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_697 = 4'h5 == tmp_tdata_reg[351:348] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_696; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_698 = 4'h6 == tmp_tdata_reg[351:348] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_697; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_699 = 4'h7 == tmp_tdata_reg[351:348] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_698; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_700 = 4'h8 == tmp_tdata_reg[351:348] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_699; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_701 = 4'h9 == tmp_tdata_reg[351:348] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_700; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_702 = 4'ha == tmp_tdata_reg[351:348] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_701; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_703 = 4'hb == tmp_tdata_reg[351:348] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_702; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_704 = 4'hc == tmp_tdata_reg[351:348] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_703; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_705 = 4'hd == tmp_tdata_reg[351:348] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_704; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_706 = 4'he == tmp_tdata_reg[351:348] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_705; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_707 = 4'hf == tmp_tdata_reg[351:348] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_706; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_43_T_3 = _GEN_707 >> _tmp_result_0_trans_tdata_43_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_43 = _tmp_result_0_trans_tdata_43_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_44_T_2 = {tmp_tdata_reg[355:352], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_709 = 4'h1 == tmp_tdata_reg[359:356] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_710 = 4'h2 == tmp_tdata_reg[359:356] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_709; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_711 = 4'h3 == tmp_tdata_reg[359:356] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_710; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_712 = 4'h4 == tmp_tdata_reg[359:356] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_711; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_713 = 4'h5 == tmp_tdata_reg[359:356] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_712; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_714 = 4'h6 == tmp_tdata_reg[359:356] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_713; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_715 = 4'h7 == tmp_tdata_reg[359:356] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_714; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_716 = 4'h8 == tmp_tdata_reg[359:356] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_715; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_717 = 4'h9 == tmp_tdata_reg[359:356] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_716; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_718 = 4'ha == tmp_tdata_reg[359:356] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_717; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_719 = 4'hb == tmp_tdata_reg[359:356] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_718; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_720 = 4'hc == tmp_tdata_reg[359:356] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_719; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_721 = 4'hd == tmp_tdata_reg[359:356] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_720; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_722 = 4'he == tmp_tdata_reg[359:356] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_721; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_723 = 4'hf == tmp_tdata_reg[359:356] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_722; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_44_T_3 = _GEN_723 >> _tmp_result_0_trans_tdata_44_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_44 = _tmp_result_0_trans_tdata_44_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_45_T_2 = {tmp_tdata_reg[363:360], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_725 = 4'h1 == tmp_tdata_reg[367:364] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_726 = 4'h2 == tmp_tdata_reg[367:364] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_725; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_727 = 4'h3 == tmp_tdata_reg[367:364] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_726; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_728 = 4'h4 == tmp_tdata_reg[367:364] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_727; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_729 = 4'h5 == tmp_tdata_reg[367:364] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_728; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_730 = 4'h6 == tmp_tdata_reg[367:364] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_729; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_731 = 4'h7 == tmp_tdata_reg[367:364] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_730; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_732 = 4'h8 == tmp_tdata_reg[367:364] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_731; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_733 = 4'h9 == tmp_tdata_reg[367:364] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_732; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_734 = 4'ha == tmp_tdata_reg[367:364] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_733; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_735 = 4'hb == tmp_tdata_reg[367:364] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_734; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_736 = 4'hc == tmp_tdata_reg[367:364] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_735; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_737 = 4'hd == tmp_tdata_reg[367:364] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_736; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_738 = 4'he == tmp_tdata_reg[367:364] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_737; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_739 = 4'hf == tmp_tdata_reg[367:364] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_738; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_45_T_3 = _GEN_739 >> _tmp_result_0_trans_tdata_45_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_45 = _tmp_result_0_trans_tdata_45_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_46_T_2 = {tmp_tdata_reg[371:368], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_741 = 4'h1 == tmp_tdata_reg[375:372] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_742 = 4'h2 == tmp_tdata_reg[375:372] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_741; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_743 = 4'h3 == tmp_tdata_reg[375:372] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_742; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_744 = 4'h4 == tmp_tdata_reg[375:372] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_743; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_745 = 4'h5 == tmp_tdata_reg[375:372] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_744; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_746 = 4'h6 == tmp_tdata_reg[375:372] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_745; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_747 = 4'h7 == tmp_tdata_reg[375:372] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_746; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_748 = 4'h8 == tmp_tdata_reg[375:372] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_747; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_749 = 4'h9 == tmp_tdata_reg[375:372] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_748; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_750 = 4'ha == tmp_tdata_reg[375:372] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_749; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_751 = 4'hb == tmp_tdata_reg[375:372] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_750; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_752 = 4'hc == tmp_tdata_reg[375:372] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_751; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_753 = 4'hd == tmp_tdata_reg[375:372] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_752; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_754 = 4'he == tmp_tdata_reg[375:372] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_753; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_755 = 4'hf == tmp_tdata_reg[375:372] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_754; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_46_T_3 = _GEN_755 >> _tmp_result_0_trans_tdata_46_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_46 = _tmp_result_0_trans_tdata_46_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_47_T_2 = {tmp_tdata_reg[379:376], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_757 = 4'h1 == tmp_tdata_reg[383:380] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_758 = 4'h2 == tmp_tdata_reg[383:380] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_757; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_759 = 4'h3 == tmp_tdata_reg[383:380] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_758; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_760 = 4'h4 == tmp_tdata_reg[383:380] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_759; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_761 = 4'h5 == tmp_tdata_reg[383:380] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_760; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_762 = 4'h6 == tmp_tdata_reg[383:380] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_761; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_763 = 4'h7 == tmp_tdata_reg[383:380] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_762; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_764 = 4'h8 == tmp_tdata_reg[383:380] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_763; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_765 = 4'h9 == tmp_tdata_reg[383:380] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_764; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_766 = 4'ha == tmp_tdata_reg[383:380] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_765; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_767 = 4'hb == tmp_tdata_reg[383:380] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_766; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_768 = 4'hc == tmp_tdata_reg[383:380] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_767; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_769 = 4'hd == tmp_tdata_reg[383:380] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_768; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_770 = 4'he == tmp_tdata_reg[383:380] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_769; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_771 = 4'hf == tmp_tdata_reg[383:380] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_770; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_47_T_3 = _GEN_771 >> _tmp_result_0_trans_tdata_47_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_47 = _tmp_result_0_trans_tdata_47_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_48_T_2 = {tmp_tdata_reg[387:384], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_773 = 4'h1 == tmp_tdata_reg[391:388] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_774 = 4'h2 == tmp_tdata_reg[391:388] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_773; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_775 = 4'h3 == tmp_tdata_reg[391:388] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_774; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_776 = 4'h4 == tmp_tdata_reg[391:388] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_775; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_777 = 4'h5 == tmp_tdata_reg[391:388] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_776; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_778 = 4'h6 == tmp_tdata_reg[391:388] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_777; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_779 = 4'h7 == tmp_tdata_reg[391:388] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_778; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_780 = 4'h8 == tmp_tdata_reg[391:388] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_779; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_781 = 4'h9 == tmp_tdata_reg[391:388] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_780; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_782 = 4'ha == tmp_tdata_reg[391:388] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_781; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_783 = 4'hb == tmp_tdata_reg[391:388] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_782; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_784 = 4'hc == tmp_tdata_reg[391:388] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_783; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_785 = 4'hd == tmp_tdata_reg[391:388] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_784; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_786 = 4'he == tmp_tdata_reg[391:388] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_785; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_787 = 4'hf == tmp_tdata_reg[391:388] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_786; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_48_T_3 = _GEN_787 >> _tmp_result_0_trans_tdata_48_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_48 = _tmp_result_0_trans_tdata_48_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_49_T_2 = {tmp_tdata_reg[395:392], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_789 = 4'h1 == tmp_tdata_reg[399:396] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_790 = 4'h2 == tmp_tdata_reg[399:396] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_789; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_791 = 4'h3 == tmp_tdata_reg[399:396] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_790; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_792 = 4'h4 == tmp_tdata_reg[399:396] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_791; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_793 = 4'h5 == tmp_tdata_reg[399:396] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_792; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_794 = 4'h6 == tmp_tdata_reg[399:396] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_793; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_795 = 4'h7 == tmp_tdata_reg[399:396] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_794; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_796 = 4'h8 == tmp_tdata_reg[399:396] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_795; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_797 = 4'h9 == tmp_tdata_reg[399:396] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_796; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_798 = 4'ha == tmp_tdata_reg[399:396] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_797; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_799 = 4'hb == tmp_tdata_reg[399:396] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_798; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_800 = 4'hc == tmp_tdata_reg[399:396] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_799; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_801 = 4'hd == tmp_tdata_reg[399:396] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_800; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_802 = 4'he == tmp_tdata_reg[399:396] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_801; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_803 = 4'hf == tmp_tdata_reg[399:396] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_802; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_49_T_3 = _GEN_803 >> _tmp_result_0_trans_tdata_49_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_49 = _tmp_result_0_trans_tdata_49_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_50_T_2 = {tmp_tdata_reg[403:400], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_805 = 4'h1 == tmp_tdata_reg[407:404] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_806 = 4'h2 == tmp_tdata_reg[407:404] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_805; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_807 = 4'h3 == tmp_tdata_reg[407:404] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_806; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_808 = 4'h4 == tmp_tdata_reg[407:404] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_807; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_809 = 4'h5 == tmp_tdata_reg[407:404] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_808; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_810 = 4'h6 == tmp_tdata_reg[407:404] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_809; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_811 = 4'h7 == tmp_tdata_reg[407:404] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_810; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_812 = 4'h8 == tmp_tdata_reg[407:404] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_811; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_813 = 4'h9 == tmp_tdata_reg[407:404] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_812; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_814 = 4'ha == tmp_tdata_reg[407:404] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_813; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_815 = 4'hb == tmp_tdata_reg[407:404] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_814; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_816 = 4'hc == tmp_tdata_reg[407:404] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_815; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_817 = 4'hd == tmp_tdata_reg[407:404] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_816; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_818 = 4'he == tmp_tdata_reg[407:404] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_817; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_819 = 4'hf == tmp_tdata_reg[407:404] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_818; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_50_T_3 = _GEN_819 >> _tmp_result_0_trans_tdata_50_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_50 = _tmp_result_0_trans_tdata_50_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_51_T_2 = {tmp_tdata_reg[411:408], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_821 = 4'h1 == tmp_tdata_reg[415:412] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_822 = 4'h2 == tmp_tdata_reg[415:412] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_821; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_823 = 4'h3 == tmp_tdata_reg[415:412] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_822; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_824 = 4'h4 == tmp_tdata_reg[415:412] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_823; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_825 = 4'h5 == tmp_tdata_reg[415:412] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_824; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_826 = 4'h6 == tmp_tdata_reg[415:412] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_825; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_827 = 4'h7 == tmp_tdata_reg[415:412] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_826; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_828 = 4'h8 == tmp_tdata_reg[415:412] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_827; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_829 = 4'h9 == tmp_tdata_reg[415:412] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_828; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_830 = 4'ha == tmp_tdata_reg[415:412] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_829; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_831 = 4'hb == tmp_tdata_reg[415:412] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_830; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_832 = 4'hc == tmp_tdata_reg[415:412] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_831; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_833 = 4'hd == tmp_tdata_reg[415:412] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_832; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_834 = 4'he == tmp_tdata_reg[415:412] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_833; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_835 = 4'hf == tmp_tdata_reg[415:412] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_834; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_51_T_3 = _GEN_835 >> _tmp_result_0_trans_tdata_51_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_51 = _tmp_result_0_trans_tdata_51_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_52_T_2 = {tmp_tdata_reg[419:416], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_837 = 4'h1 == tmp_tdata_reg[423:420] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_838 = 4'h2 == tmp_tdata_reg[423:420] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_837; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_839 = 4'h3 == tmp_tdata_reg[423:420] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_838; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_840 = 4'h4 == tmp_tdata_reg[423:420] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_839; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_841 = 4'h5 == tmp_tdata_reg[423:420] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_840; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_842 = 4'h6 == tmp_tdata_reg[423:420] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_841; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_843 = 4'h7 == tmp_tdata_reg[423:420] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_842; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_844 = 4'h8 == tmp_tdata_reg[423:420] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_843; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_845 = 4'h9 == tmp_tdata_reg[423:420] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_844; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_846 = 4'ha == tmp_tdata_reg[423:420] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_845; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_847 = 4'hb == tmp_tdata_reg[423:420] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_846; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_848 = 4'hc == tmp_tdata_reg[423:420] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_847; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_849 = 4'hd == tmp_tdata_reg[423:420] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_848; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_850 = 4'he == tmp_tdata_reg[423:420] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_849; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_851 = 4'hf == tmp_tdata_reg[423:420] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_850; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_52_T_3 = _GEN_851 >> _tmp_result_0_trans_tdata_52_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_52 = _tmp_result_0_trans_tdata_52_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_53_T_2 = {tmp_tdata_reg[427:424], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_853 = 4'h1 == tmp_tdata_reg[431:428] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_854 = 4'h2 == tmp_tdata_reg[431:428] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_853; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_855 = 4'h3 == tmp_tdata_reg[431:428] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_854; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_856 = 4'h4 == tmp_tdata_reg[431:428] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_855; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_857 = 4'h5 == tmp_tdata_reg[431:428] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_856; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_858 = 4'h6 == tmp_tdata_reg[431:428] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_857; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_859 = 4'h7 == tmp_tdata_reg[431:428] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_858; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_860 = 4'h8 == tmp_tdata_reg[431:428] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_859; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_861 = 4'h9 == tmp_tdata_reg[431:428] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_860; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_862 = 4'ha == tmp_tdata_reg[431:428] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_861; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_863 = 4'hb == tmp_tdata_reg[431:428] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_862; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_864 = 4'hc == tmp_tdata_reg[431:428] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_863; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_865 = 4'hd == tmp_tdata_reg[431:428] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_864; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_866 = 4'he == tmp_tdata_reg[431:428] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_865; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_867 = 4'hf == tmp_tdata_reg[431:428] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_866; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_53_T_3 = _GEN_867 >> _tmp_result_0_trans_tdata_53_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_53 = _tmp_result_0_trans_tdata_53_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_54_T_2 = {tmp_tdata_reg[435:432], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_869 = 4'h1 == tmp_tdata_reg[439:436] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_870 = 4'h2 == tmp_tdata_reg[439:436] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_869; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_871 = 4'h3 == tmp_tdata_reg[439:436] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_870; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_872 = 4'h4 == tmp_tdata_reg[439:436] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_871; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_873 = 4'h5 == tmp_tdata_reg[439:436] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_872; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_874 = 4'h6 == tmp_tdata_reg[439:436] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_873; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_875 = 4'h7 == tmp_tdata_reg[439:436] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_874; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_876 = 4'h8 == tmp_tdata_reg[439:436] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_875; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_877 = 4'h9 == tmp_tdata_reg[439:436] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_876; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_878 = 4'ha == tmp_tdata_reg[439:436] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_877; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_879 = 4'hb == tmp_tdata_reg[439:436] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_878; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_880 = 4'hc == tmp_tdata_reg[439:436] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_879; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_881 = 4'hd == tmp_tdata_reg[439:436] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_880; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_882 = 4'he == tmp_tdata_reg[439:436] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_881; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_883 = 4'hf == tmp_tdata_reg[439:436] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_882; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_54_T_3 = _GEN_883 >> _tmp_result_0_trans_tdata_54_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_54 = _tmp_result_0_trans_tdata_54_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_55_T_2 = {tmp_tdata_reg[443:440], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_885 = 4'h1 == tmp_tdata_reg[447:444] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_886 = 4'h2 == tmp_tdata_reg[447:444] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_885; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_887 = 4'h3 == tmp_tdata_reg[447:444] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_886; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_888 = 4'h4 == tmp_tdata_reg[447:444] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_887; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_889 = 4'h5 == tmp_tdata_reg[447:444] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_888; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_890 = 4'h6 == tmp_tdata_reg[447:444] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_889; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_891 = 4'h7 == tmp_tdata_reg[447:444] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_890; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_892 = 4'h8 == tmp_tdata_reg[447:444] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_891; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_893 = 4'h9 == tmp_tdata_reg[447:444] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_892; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_894 = 4'ha == tmp_tdata_reg[447:444] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_893; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_895 = 4'hb == tmp_tdata_reg[447:444] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_894; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_896 = 4'hc == tmp_tdata_reg[447:444] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_895; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_897 = 4'hd == tmp_tdata_reg[447:444] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_896; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_898 = 4'he == tmp_tdata_reg[447:444] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_897; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_899 = 4'hf == tmp_tdata_reg[447:444] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_898; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_55_T_3 = _GEN_899 >> _tmp_result_0_trans_tdata_55_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_55 = _tmp_result_0_trans_tdata_55_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_56_T_2 = {tmp_tdata_reg[451:448], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_901 = 4'h1 == tmp_tdata_reg[455:452] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_902 = 4'h2 == tmp_tdata_reg[455:452] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_901; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_903 = 4'h3 == tmp_tdata_reg[455:452] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_902; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_904 = 4'h4 == tmp_tdata_reg[455:452] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_903; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_905 = 4'h5 == tmp_tdata_reg[455:452] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_904; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_906 = 4'h6 == tmp_tdata_reg[455:452] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_905; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_907 = 4'h7 == tmp_tdata_reg[455:452] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_906; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_908 = 4'h8 == tmp_tdata_reg[455:452] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_907; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_909 = 4'h9 == tmp_tdata_reg[455:452] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_908; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_910 = 4'ha == tmp_tdata_reg[455:452] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_909; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_911 = 4'hb == tmp_tdata_reg[455:452] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_910; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_912 = 4'hc == tmp_tdata_reg[455:452] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_911; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_913 = 4'hd == tmp_tdata_reg[455:452] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_912; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_914 = 4'he == tmp_tdata_reg[455:452] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_913; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_915 = 4'hf == tmp_tdata_reg[455:452] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_914; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_56_T_3 = _GEN_915 >> _tmp_result_0_trans_tdata_56_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_56 = _tmp_result_0_trans_tdata_56_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_57_T_2 = {tmp_tdata_reg[459:456], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_917 = 4'h1 == tmp_tdata_reg[463:460] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_918 = 4'h2 == tmp_tdata_reg[463:460] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_917; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_919 = 4'h3 == tmp_tdata_reg[463:460] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_918; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_920 = 4'h4 == tmp_tdata_reg[463:460] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_919; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_921 = 4'h5 == tmp_tdata_reg[463:460] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_920; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_922 = 4'h6 == tmp_tdata_reg[463:460] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_921; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_923 = 4'h7 == tmp_tdata_reg[463:460] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_922; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_924 = 4'h8 == tmp_tdata_reg[463:460] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_923; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_925 = 4'h9 == tmp_tdata_reg[463:460] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_924; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_926 = 4'ha == tmp_tdata_reg[463:460] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_925; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_927 = 4'hb == tmp_tdata_reg[463:460] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_926; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_928 = 4'hc == tmp_tdata_reg[463:460] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_927; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_929 = 4'hd == tmp_tdata_reg[463:460] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_928; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_930 = 4'he == tmp_tdata_reg[463:460] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_929; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_931 = 4'hf == tmp_tdata_reg[463:460] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_930; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_57_T_3 = _GEN_931 >> _tmp_result_0_trans_tdata_57_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_57 = _tmp_result_0_trans_tdata_57_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_58_T_2 = {tmp_tdata_reg[467:464], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_933 = 4'h1 == tmp_tdata_reg[471:468] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_934 = 4'h2 == tmp_tdata_reg[471:468] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_933; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_935 = 4'h3 == tmp_tdata_reg[471:468] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_934; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_936 = 4'h4 == tmp_tdata_reg[471:468] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_935; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_937 = 4'h5 == tmp_tdata_reg[471:468] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_936; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_938 = 4'h6 == tmp_tdata_reg[471:468] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_937; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_939 = 4'h7 == tmp_tdata_reg[471:468] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_938; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_940 = 4'h8 == tmp_tdata_reg[471:468] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_939; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_941 = 4'h9 == tmp_tdata_reg[471:468] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_940; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_942 = 4'ha == tmp_tdata_reg[471:468] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_941; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_943 = 4'hb == tmp_tdata_reg[471:468] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_942; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_944 = 4'hc == tmp_tdata_reg[471:468] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_943; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_945 = 4'hd == tmp_tdata_reg[471:468] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_944; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_946 = 4'he == tmp_tdata_reg[471:468] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_945; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_947 = 4'hf == tmp_tdata_reg[471:468] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_946; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_58_T_3 = _GEN_947 >> _tmp_result_0_trans_tdata_58_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_58 = _tmp_result_0_trans_tdata_58_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_59_T_2 = {tmp_tdata_reg[475:472], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_949 = 4'h1 == tmp_tdata_reg[479:476] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_950 = 4'h2 == tmp_tdata_reg[479:476] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_949; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_951 = 4'h3 == tmp_tdata_reg[479:476] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_950; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_952 = 4'h4 == tmp_tdata_reg[479:476] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_951; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_953 = 4'h5 == tmp_tdata_reg[479:476] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_952; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_954 = 4'h6 == tmp_tdata_reg[479:476] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_953; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_955 = 4'h7 == tmp_tdata_reg[479:476] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_954; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_956 = 4'h8 == tmp_tdata_reg[479:476] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_955; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_957 = 4'h9 == tmp_tdata_reg[479:476] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_956; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_958 = 4'ha == tmp_tdata_reg[479:476] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_957; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_959 = 4'hb == tmp_tdata_reg[479:476] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_958; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_960 = 4'hc == tmp_tdata_reg[479:476] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_959; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_961 = 4'hd == tmp_tdata_reg[479:476] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_960; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_962 = 4'he == tmp_tdata_reg[479:476] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_961; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_963 = 4'hf == tmp_tdata_reg[479:476] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_962; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_59_T_3 = _GEN_963 >> _tmp_result_0_trans_tdata_59_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_59 = _tmp_result_0_trans_tdata_59_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_60_T_2 = {tmp_tdata_reg[483:480], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_965 = 4'h1 == tmp_tdata_reg[487:484] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_966 = 4'h2 == tmp_tdata_reg[487:484] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_965; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_967 = 4'h3 == tmp_tdata_reg[487:484] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_966; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_968 = 4'h4 == tmp_tdata_reg[487:484] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_967; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_969 = 4'h5 == tmp_tdata_reg[487:484] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_968; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_970 = 4'h6 == tmp_tdata_reg[487:484] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_969; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_971 = 4'h7 == tmp_tdata_reg[487:484] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_970; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_972 = 4'h8 == tmp_tdata_reg[487:484] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_971; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_973 = 4'h9 == tmp_tdata_reg[487:484] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_972; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_974 = 4'ha == tmp_tdata_reg[487:484] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_973; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_975 = 4'hb == tmp_tdata_reg[487:484] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_974; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_976 = 4'hc == tmp_tdata_reg[487:484] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_975; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_977 = 4'hd == tmp_tdata_reg[487:484] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_976; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_978 = 4'he == tmp_tdata_reg[487:484] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_977; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_979 = 4'hf == tmp_tdata_reg[487:484] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_978; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_60_T_3 = _GEN_979 >> _tmp_result_0_trans_tdata_60_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_60 = _tmp_result_0_trans_tdata_60_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_61_T_2 = {tmp_tdata_reg[491:488], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_981 = 4'h1 == tmp_tdata_reg[495:492] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_982 = 4'h2 == tmp_tdata_reg[495:492] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_981; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_983 = 4'h3 == tmp_tdata_reg[495:492] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_982; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_984 = 4'h4 == tmp_tdata_reg[495:492] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_983; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_985 = 4'h5 == tmp_tdata_reg[495:492] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_984; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_986 = 4'h6 == tmp_tdata_reg[495:492] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_985; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_987 = 4'h7 == tmp_tdata_reg[495:492] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_986; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_988 = 4'h8 == tmp_tdata_reg[495:492] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_987; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_989 = 4'h9 == tmp_tdata_reg[495:492] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_988; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_990 = 4'ha == tmp_tdata_reg[495:492] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_989; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_991 = 4'hb == tmp_tdata_reg[495:492] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_990; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_992 = 4'hc == tmp_tdata_reg[495:492] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_991; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_993 = 4'hd == tmp_tdata_reg[495:492] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_992; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_994 = 4'he == tmp_tdata_reg[495:492] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_993; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_995 = 4'hf == tmp_tdata_reg[495:492] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_994; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_61_T_3 = _GEN_995 >> _tmp_result_0_trans_tdata_61_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_61 = _tmp_result_0_trans_tdata_61_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_62_T_2 = {tmp_tdata_reg[499:496], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_997 = 4'h1 == tmp_tdata_reg[503:500] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_998 = 4'h2 == tmp_tdata_reg[503:500] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_997; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_999 = 4'h3 == tmp_tdata_reg[503:500] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_998; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1000 = 4'h4 == tmp_tdata_reg[503:500] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_999; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1001 = 4'h5 == tmp_tdata_reg[503:500] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_1000; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1002 = 4'h6 == tmp_tdata_reg[503:500] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_1001; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1003 = 4'h7 == tmp_tdata_reg[503:500] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_1002; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1004 = 4'h8 == tmp_tdata_reg[503:500] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_1003; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1005 = 4'h9 == tmp_tdata_reg[503:500] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_1004; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1006 = 4'ha == tmp_tdata_reg[503:500] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_1005; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1007 = 4'hb == tmp_tdata_reg[503:500] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_1006; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1008 = 4'hc == tmp_tdata_reg[503:500] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_1007; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1009 = 4'hd == tmp_tdata_reg[503:500] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_1008; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1010 = 4'he == tmp_tdata_reg[503:500] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_1009; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1011 = 4'hf == tmp_tdata_reg[503:500] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_1010; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_62_T_3 = _GEN_1011 >> _tmp_result_0_trans_tdata_62_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_62 = _tmp_result_0_trans_tdata_62_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [6:0] _tmp_result_0_trans_tdata_63_T_2 = {tmp_tdata_reg[507:504], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_1013 = 4'h1 == tmp_tdata_reg[511:508] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1014 = 4'h2 == tmp_tdata_reg[511:508] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_1013; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1015 = 4'h3 == tmp_tdata_reg[511:508] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_1014; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1016 = 4'h4 == tmp_tdata_reg[511:508] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_1015; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1017 = 4'h5 == tmp_tdata_reg[511:508] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_1016; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1018 = 4'h6 == tmp_tdata_reg[511:508] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_1017; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1019 = 4'h7 == tmp_tdata_reg[511:508] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_1018; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1020 = 4'h8 == tmp_tdata_reg[511:508] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_1019; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1021 = 4'h9 == tmp_tdata_reg[511:508] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_1020; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1022 = 4'ha == tmp_tdata_reg[511:508] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_1021; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1023 = 4'hb == tmp_tdata_reg[511:508] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_1022; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1024 = 4'hc == tmp_tdata_reg[511:508] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_1023; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1025 = 4'hd == tmp_tdata_reg[511:508] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_1024; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1026 = 4'he == tmp_tdata_reg[511:508] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_1025; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1027 = 4'hf == tmp_tdata_reg[511:508] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_1026; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _tmp_result_0_trans_tdata_63_T_3 = _GEN_1027 >> _tmp_result_0_trans_tdata_63_T_2; // @[cal_gf256.scala 27:17]
  wire [7:0] tmp_result_0_trans_tdata_63 = _tmp_result_0_trans_tdata_63_T_3[7:0]; // @[cal_gf256.scala 27:33]
  wire [63:0] tmp_result_0_lo_lo_lo = {tmp_result_0_trans_tdata_7,tmp_result_0_trans_tdata_6,tmp_result_0_trans_tdata_5,
    tmp_result_0_trans_tdata_4,tmp_result_0_trans_tdata_3,tmp_result_0_trans_tdata_2,tmp_result_0_trans_tdata_1,
    tmp_result_0_trans_tdata_0}; // @[TxAESEncrypter.scala 22:17]
  wire [127:0] tmp_result_0_lo_lo = {tmp_result_0_trans_tdata_15,tmp_result_0_trans_tdata_14,tmp_result_0_trans_tdata_13
    ,tmp_result_0_trans_tdata_12,tmp_result_0_trans_tdata_11,tmp_result_0_trans_tdata_10,tmp_result_0_trans_tdata_9,
    tmp_result_0_trans_tdata_8,tmp_result_0_lo_lo_lo}; // @[TxAESEncrypter.scala 22:17]
  wire [63:0] tmp_result_0_lo_hi_lo = {tmp_result_0_trans_tdata_23,tmp_result_0_trans_tdata_22,
    tmp_result_0_trans_tdata_21,tmp_result_0_trans_tdata_20,tmp_result_0_trans_tdata_19,tmp_result_0_trans_tdata_18,
    tmp_result_0_trans_tdata_17,tmp_result_0_trans_tdata_16}; // @[TxAESEncrypter.scala 22:17]
  wire [255:0] tmp_result_0_lo = {tmp_result_0_trans_tdata_31,tmp_result_0_trans_tdata_30,tmp_result_0_trans_tdata_29,
    tmp_result_0_trans_tdata_28,tmp_result_0_trans_tdata_27,tmp_result_0_trans_tdata_26,tmp_result_0_trans_tdata_25,
    tmp_result_0_trans_tdata_24,tmp_result_0_lo_hi_lo,tmp_result_0_lo_lo}; // @[TxAESEncrypter.scala 22:17]
  wire [63:0] tmp_result_0_hi_lo_lo = {tmp_result_0_trans_tdata_39,tmp_result_0_trans_tdata_38,
    tmp_result_0_trans_tdata_37,tmp_result_0_trans_tdata_36,tmp_result_0_trans_tdata_35,tmp_result_0_trans_tdata_34,
    tmp_result_0_trans_tdata_33,tmp_result_0_trans_tdata_32}; // @[TxAESEncrypter.scala 22:17]
  wire [127:0] tmp_result_0_hi_lo = {tmp_result_0_trans_tdata_47,tmp_result_0_trans_tdata_46,tmp_result_0_trans_tdata_45
    ,tmp_result_0_trans_tdata_44,tmp_result_0_trans_tdata_43,tmp_result_0_trans_tdata_42,tmp_result_0_trans_tdata_41,
    tmp_result_0_trans_tdata_40,tmp_result_0_hi_lo_lo}; // @[TxAESEncrypter.scala 22:17]
  wire [63:0] tmp_result_0_hi_hi_lo = {tmp_result_0_trans_tdata_55,tmp_result_0_trans_tdata_54,
    tmp_result_0_trans_tdata_53,tmp_result_0_trans_tdata_52,tmp_result_0_trans_tdata_51,tmp_result_0_trans_tdata_50,
    tmp_result_0_trans_tdata_49,tmp_result_0_trans_tdata_48}; // @[TxAESEncrypter.scala 22:17]
  wire [255:0] tmp_result_0_hi = {tmp_result_0_trans_tdata_63,tmp_result_0_trans_tdata_62,tmp_result_0_trans_tdata_61,
    tmp_result_0_trans_tdata_60,tmp_result_0_trans_tdata_59,tmp_result_0_trans_tdata_58,tmp_result_0_trans_tdata_57,
    tmp_result_0_trans_tdata_56,tmp_result_0_hi_hi_lo,tmp_result_0_hi_lo}; // @[TxAESEncrypter.scala 22:17]
  wire [511:0] tmp_result_0 = {tmp_result_0_hi,tmp_result_0_lo}; // @[TxAESEncrypter.scala 22:17]
  wire [63:0] tmp_result_1_trans_tdata_0_lo_4 = {tmp_tdata_reg[31:24],tmp_tdata_reg[119:112],tmp_tdata_reg[79:72],
    tmp_tdata_reg[39:32],tmp_tdata_reg[127:120],tmp_tdata_reg[87:80],tmp_tdata_reg[47:40],tmp_tdata_reg[7:0]}; // @[Cat.scala 31:58]
  wire [127:0] tmp_result_1_trans_tdata_0 = {tmp_tdata_reg[95:88],tmp_tdata_reg[55:48],tmp_tdata_reg[15:8],tmp_tdata_reg
    [103:96],tmp_tdata_reg[63:56],tmp_tdata_reg[23:16],tmp_tdata_reg[111:104],tmp_tdata_reg[71:64],
    tmp_result_1_trans_tdata_0_lo_4}; // @[Cat.scala 31:58]
  wire [63:0] tmp_result_1_trans_tdata_1_lo_4 = {tmp_tdata_reg[159:152],tmp_tdata_reg[247:240],tmp_tdata_reg[207:200],
    tmp_tdata_reg[167:160],tmp_tdata_reg[255:248],tmp_tdata_reg[215:208],tmp_tdata_reg[175:168],tmp_tdata_reg[135:128]}; // @[Cat.scala 31:58]
  wire [63:0] tmp_result_1_trans_tdata_2_lo_4 = {tmp_tdata_reg[287:280],tmp_tdata_reg[375:368],tmp_tdata_reg[335:328],
    tmp_tdata_reg[295:288],tmp_tdata_reg[383:376],tmp_tdata_reg[343:336],tmp_tdata_reg[303:296],tmp_tdata_reg[263:256]}; // @[Cat.scala 31:58]
  wire [127:0] tmp_result_1_trans_tdata_2 = {tmp_tdata_reg[351:344],tmp_tdata_reg[311:304],tmp_tdata_reg[271:264],
    tmp_tdata_reg[359:352],tmp_tdata_reg[319:312],tmp_tdata_reg[279:272],tmp_tdata_reg[367:360],tmp_tdata_reg[327:320],
    tmp_result_1_trans_tdata_2_lo_4}; // @[Cat.scala 31:58]
  wire [63:0] tmp_result_1_trans_tdata_3_lo_4 = {tmp_tdata_reg[415:408],tmp_tdata_reg[503:496],tmp_tdata_reg[463:456],
    tmp_tdata_reg[423:416],tmp_tdata_reg[511:504],tmp_tdata_reg[471:464],tmp_tdata_reg[431:424],tmp_tdata_reg[391:384]}; // @[Cat.scala 31:58]
  wire [255:0] tmp_result_1_lo = {tmp_tdata_reg[223:216],tmp_tdata_reg[183:176],tmp_tdata_reg[143:136],tmp_tdata_reg[231
    :224],tmp_tdata_reg[191:184],tmp_tdata_reg[151:144],tmp_tdata_reg[239:232],tmp_tdata_reg[199:192],
    tmp_result_1_trans_tdata_1_lo_4,tmp_result_1_trans_tdata_0}; // @[TxAESEncrypter.scala 30:17]
  wire [255:0] tmp_result_1_hi = {tmp_tdata_reg[479:472],tmp_tdata_reg[439:432],tmp_tdata_reg[399:392],tmp_tdata_reg[487
    :480],tmp_tdata_reg[447:440],tmp_tdata_reg[407:400],tmp_tdata_reg[495:488],tmp_tdata_reg[455:448],
    tmp_result_1_trans_tdata_3_lo_4,tmp_result_1_trans_tdata_2}; // @[TxAESEncrypter.scala 30:17]
  wire [511:0] tmp_result_1 = {tmp_result_1_hi,tmp_result_1_lo}; // @[TxAESEncrypter.scala 30:17]
  wire [7:0] _tmp_result_2_trans_tdata_0_T_6 = {tmp_tdata_reg[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_0_T_7 = _tmp_result_2_trans_tdata_0_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_0_T_10 = tmp_tdata_reg[7] ? _tmp_result_2_trans_tdata_0_T_7 :
    _tmp_result_2_trans_tdata_0_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_0_T_16 = {tmp_tdata_reg[14:8],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_0_T_17 = _tmp_result_2_trans_tdata_0_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_0_T_20 = tmp_tdata_reg[15] ? _tmp_result_2_trans_tdata_0_T_17 :
    _tmp_result_2_trans_tdata_0_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_0_T_21 = _tmp_result_2_trans_tdata_0_T_20 ^ tmp_tdata_reg[15:8]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_0_T_22 = _tmp_result_2_trans_tdata_0_T_10 ^ _tmp_result_2_trans_tdata_0_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_0_T_25 = _tmp_result_2_trans_tdata_0_T_22 ^ tmp_tdata_reg[23:16]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_0 = _tmp_result_2_trans_tdata_0_T_25 ^ tmp_tdata_reg[31:24]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_1_T_13 = tmp_tdata_reg[7:0] ^ _tmp_result_2_trans_tdata_0_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_1_T_19 = {tmp_tdata_reg[22:16],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_1_T_20 = _tmp_result_2_trans_tdata_1_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_1_T_23 = tmp_tdata_reg[23] ? _tmp_result_2_trans_tdata_1_T_20 :
    _tmp_result_2_trans_tdata_1_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_1_T_24 = _tmp_result_2_trans_tdata_1_T_23 ^ tmp_tdata_reg[23:16]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_1_T_25 = _tmp_result_2_trans_tdata_1_T_13 ^ _tmp_result_2_trans_tdata_1_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_1 = _tmp_result_2_trans_tdata_1_T_25 ^ tmp_tdata_reg[31:24]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_2_T_5 = tmp_tdata_reg[7:0] ^ tmp_tdata_reg[15:8]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_2_T_16 = _tmp_result_2_trans_tdata_2_T_5 ^ _tmp_result_2_trans_tdata_1_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_2_T_22 = {tmp_tdata_reg[30:24],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_2_T_23 = _tmp_result_2_trans_tdata_2_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_2_T_26 = tmp_tdata_reg[31] ? _tmp_result_2_trans_tdata_2_T_23 :
    _tmp_result_2_trans_tdata_2_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_2_T_27 = _tmp_result_2_trans_tdata_2_T_26 ^ tmp_tdata_reg[31:24]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_2 = _tmp_result_2_trans_tdata_2_T_16 ^ _tmp_result_2_trans_tdata_2_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_3_T_11 = _tmp_result_2_trans_tdata_0_T_10 ^ tmp_tdata_reg[7:0]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_3_T_14 = _tmp_result_2_trans_tdata_3_T_11 ^ tmp_tdata_reg[15:8]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_3_T_17 = _tmp_result_2_trans_tdata_3_T_14 ^ tmp_tdata_reg[23:16]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_3 = _tmp_result_2_trans_tdata_3_T_17 ^ _tmp_result_2_trans_tdata_2_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_4_T_6 = {tmp_tdata_reg[38:32],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_4_T_7 = _tmp_result_2_trans_tdata_4_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_4_T_10 = tmp_tdata_reg[39] ? _tmp_result_2_trans_tdata_4_T_7 :
    _tmp_result_2_trans_tdata_4_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_4_T_16 = {tmp_tdata_reg[46:40],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_4_T_17 = _tmp_result_2_trans_tdata_4_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_4_T_20 = tmp_tdata_reg[47] ? _tmp_result_2_trans_tdata_4_T_17 :
    _tmp_result_2_trans_tdata_4_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_4_T_21 = _tmp_result_2_trans_tdata_4_T_20 ^ tmp_tdata_reg[47:40]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_4_T_22 = _tmp_result_2_trans_tdata_4_T_10 ^ _tmp_result_2_trans_tdata_4_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_4_T_25 = _tmp_result_2_trans_tdata_4_T_22 ^ tmp_tdata_reg[55:48]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_4 = _tmp_result_2_trans_tdata_4_T_25 ^ tmp_tdata_reg[63:56]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_5_T_13 = tmp_tdata_reg[39:32] ^ _tmp_result_2_trans_tdata_4_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_5_T_19 = {tmp_tdata_reg[54:48],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_5_T_20 = _tmp_result_2_trans_tdata_5_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_5_T_23 = tmp_tdata_reg[55] ? _tmp_result_2_trans_tdata_5_T_20 :
    _tmp_result_2_trans_tdata_5_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_5_T_24 = _tmp_result_2_trans_tdata_5_T_23 ^ tmp_tdata_reg[55:48]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_5_T_25 = _tmp_result_2_trans_tdata_5_T_13 ^ _tmp_result_2_trans_tdata_5_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_5 = _tmp_result_2_trans_tdata_5_T_25 ^ tmp_tdata_reg[63:56]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_6_T_5 = tmp_tdata_reg[39:32] ^ tmp_tdata_reg[47:40]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_6_T_16 = _tmp_result_2_trans_tdata_6_T_5 ^ _tmp_result_2_trans_tdata_5_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_6_T_22 = {tmp_tdata_reg[62:56],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_6_T_23 = _tmp_result_2_trans_tdata_6_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_6_T_26 = tmp_tdata_reg[63] ? _tmp_result_2_trans_tdata_6_T_23 :
    _tmp_result_2_trans_tdata_6_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_6_T_27 = _tmp_result_2_trans_tdata_6_T_26 ^ tmp_tdata_reg[63:56]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_6 = _tmp_result_2_trans_tdata_6_T_16 ^ _tmp_result_2_trans_tdata_6_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_7_T_11 = _tmp_result_2_trans_tdata_4_T_10 ^ tmp_tdata_reg[39:32]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_7_T_14 = _tmp_result_2_trans_tdata_7_T_11 ^ tmp_tdata_reg[47:40]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_7_T_17 = _tmp_result_2_trans_tdata_7_T_14 ^ tmp_tdata_reg[55:48]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_7 = _tmp_result_2_trans_tdata_7_T_17 ^ _tmp_result_2_trans_tdata_6_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_8_T_6 = {tmp_tdata_reg[70:64],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_8_T_7 = _tmp_result_2_trans_tdata_8_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_8_T_10 = tmp_tdata_reg[71] ? _tmp_result_2_trans_tdata_8_T_7 :
    _tmp_result_2_trans_tdata_8_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_8_T_16 = {tmp_tdata_reg[78:72],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_8_T_17 = _tmp_result_2_trans_tdata_8_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_8_T_20 = tmp_tdata_reg[79] ? _tmp_result_2_trans_tdata_8_T_17 :
    _tmp_result_2_trans_tdata_8_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_8_T_21 = _tmp_result_2_trans_tdata_8_T_20 ^ tmp_tdata_reg[79:72]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_8_T_22 = _tmp_result_2_trans_tdata_8_T_10 ^ _tmp_result_2_trans_tdata_8_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_8_T_25 = _tmp_result_2_trans_tdata_8_T_22 ^ tmp_tdata_reg[87:80]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_8 = _tmp_result_2_trans_tdata_8_T_25 ^ tmp_tdata_reg[95:88]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_9_T_13 = tmp_tdata_reg[71:64] ^ _tmp_result_2_trans_tdata_8_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_9_T_19 = {tmp_tdata_reg[86:80],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_9_T_20 = _tmp_result_2_trans_tdata_9_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_9_T_23 = tmp_tdata_reg[87] ? _tmp_result_2_trans_tdata_9_T_20 :
    _tmp_result_2_trans_tdata_9_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_9_T_24 = _tmp_result_2_trans_tdata_9_T_23 ^ tmp_tdata_reg[87:80]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_9_T_25 = _tmp_result_2_trans_tdata_9_T_13 ^ _tmp_result_2_trans_tdata_9_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_9 = _tmp_result_2_trans_tdata_9_T_25 ^ tmp_tdata_reg[95:88]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_10_T_5 = tmp_tdata_reg[71:64] ^ tmp_tdata_reg[79:72]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_10_T_16 = _tmp_result_2_trans_tdata_10_T_5 ^ _tmp_result_2_trans_tdata_9_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_10_T_22 = {tmp_tdata_reg[94:88],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_10_T_23 = _tmp_result_2_trans_tdata_10_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_10_T_26 = tmp_tdata_reg[95] ? _tmp_result_2_trans_tdata_10_T_23 :
    _tmp_result_2_trans_tdata_10_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_10_T_27 = _tmp_result_2_trans_tdata_10_T_26 ^ tmp_tdata_reg[95:88]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_10 = _tmp_result_2_trans_tdata_10_T_16 ^ _tmp_result_2_trans_tdata_10_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_11_T_11 = _tmp_result_2_trans_tdata_8_T_10 ^ tmp_tdata_reg[71:64]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_11_T_14 = _tmp_result_2_trans_tdata_11_T_11 ^ tmp_tdata_reg[79:72]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_11_T_17 = _tmp_result_2_trans_tdata_11_T_14 ^ tmp_tdata_reg[87:80]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_11 = _tmp_result_2_trans_tdata_11_T_17 ^ _tmp_result_2_trans_tdata_10_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_12_T_6 = {tmp_tdata_reg[102:96],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_12_T_7 = _tmp_result_2_trans_tdata_12_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_12_T_10 = tmp_tdata_reg[103] ? _tmp_result_2_trans_tdata_12_T_7 :
    _tmp_result_2_trans_tdata_12_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_12_T_16 = {tmp_tdata_reg[110:104],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_12_T_17 = _tmp_result_2_trans_tdata_12_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_12_T_20 = tmp_tdata_reg[111] ? _tmp_result_2_trans_tdata_12_T_17 :
    _tmp_result_2_trans_tdata_12_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_12_T_21 = _tmp_result_2_trans_tdata_12_T_20 ^ tmp_tdata_reg[111:104]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_12_T_22 = _tmp_result_2_trans_tdata_12_T_10 ^ _tmp_result_2_trans_tdata_12_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_12_T_25 = _tmp_result_2_trans_tdata_12_T_22 ^ tmp_tdata_reg[119:112]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_12 = _tmp_result_2_trans_tdata_12_T_25 ^ tmp_tdata_reg[127:120]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_13_T_13 = tmp_tdata_reg[103:96] ^ _tmp_result_2_trans_tdata_12_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_13_T_19 = {tmp_tdata_reg[118:112],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_13_T_20 = _tmp_result_2_trans_tdata_13_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_13_T_23 = tmp_tdata_reg[119] ? _tmp_result_2_trans_tdata_13_T_20 :
    _tmp_result_2_trans_tdata_13_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_13_T_24 = _tmp_result_2_trans_tdata_13_T_23 ^ tmp_tdata_reg[119:112]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_13_T_25 = _tmp_result_2_trans_tdata_13_T_13 ^ _tmp_result_2_trans_tdata_13_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_13 = _tmp_result_2_trans_tdata_13_T_25 ^ tmp_tdata_reg[127:120]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_14_T_5 = tmp_tdata_reg[103:96] ^ tmp_tdata_reg[111:104]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_14_T_16 = _tmp_result_2_trans_tdata_14_T_5 ^ _tmp_result_2_trans_tdata_13_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_14_T_22 = {tmp_tdata_reg[126:120],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_14_T_23 = _tmp_result_2_trans_tdata_14_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_14_T_26 = tmp_tdata_reg[127] ? _tmp_result_2_trans_tdata_14_T_23 :
    _tmp_result_2_trans_tdata_14_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_14_T_27 = _tmp_result_2_trans_tdata_14_T_26 ^ tmp_tdata_reg[127:120]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_14 = _tmp_result_2_trans_tdata_14_T_16 ^ _tmp_result_2_trans_tdata_14_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_15_T_11 = _tmp_result_2_trans_tdata_12_T_10 ^ tmp_tdata_reg[103:96]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_15_T_14 = _tmp_result_2_trans_tdata_15_T_11 ^ tmp_tdata_reg[111:104]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_15_T_17 = _tmp_result_2_trans_tdata_15_T_14 ^ tmp_tdata_reg[119:112]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_15 = _tmp_result_2_trans_tdata_15_T_17 ^ _tmp_result_2_trans_tdata_14_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_16_T_6 = {tmp_tdata_reg[134:128],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_16_T_7 = _tmp_result_2_trans_tdata_16_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_16_T_10 = tmp_tdata_reg[135] ? _tmp_result_2_trans_tdata_16_T_7 :
    _tmp_result_2_trans_tdata_16_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_16_T_16 = {tmp_tdata_reg[142:136],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_16_T_17 = _tmp_result_2_trans_tdata_16_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_16_T_20 = tmp_tdata_reg[143] ? _tmp_result_2_trans_tdata_16_T_17 :
    _tmp_result_2_trans_tdata_16_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_16_T_21 = _tmp_result_2_trans_tdata_16_T_20 ^ tmp_tdata_reg[143:136]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_16_T_22 = _tmp_result_2_trans_tdata_16_T_10 ^ _tmp_result_2_trans_tdata_16_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_16_T_25 = _tmp_result_2_trans_tdata_16_T_22 ^ tmp_tdata_reg[151:144]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_16 = _tmp_result_2_trans_tdata_16_T_25 ^ tmp_tdata_reg[159:152]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_17_T_13 = tmp_tdata_reg[135:128] ^ _tmp_result_2_trans_tdata_16_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_17_T_19 = {tmp_tdata_reg[150:144],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_17_T_20 = _tmp_result_2_trans_tdata_17_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_17_T_23 = tmp_tdata_reg[151] ? _tmp_result_2_trans_tdata_17_T_20 :
    _tmp_result_2_trans_tdata_17_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_17_T_24 = _tmp_result_2_trans_tdata_17_T_23 ^ tmp_tdata_reg[151:144]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_17_T_25 = _tmp_result_2_trans_tdata_17_T_13 ^ _tmp_result_2_trans_tdata_17_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_17 = _tmp_result_2_trans_tdata_17_T_25 ^ tmp_tdata_reg[159:152]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_18_T_5 = tmp_tdata_reg[135:128] ^ tmp_tdata_reg[143:136]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_18_T_16 = _tmp_result_2_trans_tdata_18_T_5 ^ _tmp_result_2_trans_tdata_17_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_18_T_22 = {tmp_tdata_reg[158:152],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_18_T_23 = _tmp_result_2_trans_tdata_18_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_18_T_26 = tmp_tdata_reg[159] ? _tmp_result_2_trans_tdata_18_T_23 :
    _tmp_result_2_trans_tdata_18_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_18_T_27 = _tmp_result_2_trans_tdata_18_T_26 ^ tmp_tdata_reg[159:152]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_18 = _tmp_result_2_trans_tdata_18_T_16 ^ _tmp_result_2_trans_tdata_18_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_19_T_11 = _tmp_result_2_trans_tdata_16_T_10 ^ tmp_tdata_reg[135:128]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_19_T_14 = _tmp_result_2_trans_tdata_19_T_11 ^ tmp_tdata_reg[143:136]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_19_T_17 = _tmp_result_2_trans_tdata_19_T_14 ^ tmp_tdata_reg[151:144]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_19 = _tmp_result_2_trans_tdata_19_T_17 ^ _tmp_result_2_trans_tdata_18_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_20_T_6 = {tmp_tdata_reg[166:160],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_20_T_7 = _tmp_result_2_trans_tdata_20_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_20_T_10 = tmp_tdata_reg[167] ? _tmp_result_2_trans_tdata_20_T_7 :
    _tmp_result_2_trans_tdata_20_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_20_T_16 = {tmp_tdata_reg[174:168],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_20_T_17 = _tmp_result_2_trans_tdata_20_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_20_T_20 = tmp_tdata_reg[175] ? _tmp_result_2_trans_tdata_20_T_17 :
    _tmp_result_2_trans_tdata_20_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_20_T_21 = _tmp_result_2_trans_tdata_20_T_20 ^ tmp_tdata_reg[175:168]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_20_T_22 = _tmp_result_2_trans_tdata_20_T_10 ^ _tmp_result_2_trans_tdata_20_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_20_T_25 = _tmp_result_2_trans_tdata_20_T_22 ^ tmp_tdata_reg[183:176]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_20 = _tmp_result_2_trans_tdata_20_T_25 ^ tmp_tdata_reg[191:184]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_21_T_13 = tmp_tdata_reg[167:160] ^ _tmp_result_2_trans_tdata_20_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_21_T_19 = {tmp_tdata_reg[182:176],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_21_T_20 = _tmp_result_2_trans_tdata_21_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_21_T_23 = tmp_tdata_reg[183] ? _tmp_result_2_trans_tdata_21_T_20 :
    _tmp_result_2_trans_tdata_21_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_21_T_24 = _tmp_result_2_trans_tdata_21_T_23 ^ tmp_tdata_reg[183:176]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_21_T_25 = _tmp_result_2_trans_tdata_21_T_13 ^ _tmp_result_2_trans_tdata_21_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_21 = _tmp_result_2_trans_tdata_21_T_25 ^ tmp_tdata_reg[191:184]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_22_T_5 = tmp_tdata_reg[167:160] ^ tmp_tdata_reg[175:168]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_22_T_16 = _tmp_result_2_trans_tdata_22_T_5 ^ _tmp_result_2_trans_tdata_21_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_22_T_22 = {tmp_tdata_reg[190:184],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_22_T_23 = _tmp_result_2_trans_tdata_22_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_22_T_26 = tmp_tdata_reg[191] ? _tmp_result_2_trans_tdata_22_T_23 :
    _tmp_result_2_trans_tdata_22_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_22_T_27 = _tmp_result_2_trans_tdata_22_T_26 ^ tmp_tdata_reg[191:184]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_22 = _tmp_result_2_trans_tdata_22_T_16 ^ _tmp_result_2_trans_tdata_22_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_23_T_11 = _tmp_result_2_trans_tdata_20_T_10 ^ tmp_tdata_reg[167:160]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_23_T_14 = _tmp_result_2_trans_tdata_23_T_11 ^ tmp_tdata_reg[175:168]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_23_T_17 = _tmp_result_2_trans_tdata_23_T_14 ^ tmp_tdata_reg[183:176]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_23 = _tmp_result_2_trans_tdata_23_T_17 ^ _tmp_result_2_trans_tdata_22_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_24_T_6 = {tmp_tdata_reg[198:192],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_24_T_7 = _tmp_result_2_trans_tdata_24_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_24_T_10 = tmp_tdata_reg[199] ? _tmp_result_2_trans_tdata_24_T_7 :
    _tmp_result_2_trans_tdata_24_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_24_T_16 = {tmp_tdata_reg[206:200],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_24_T_17 = _tmp_result_2_trans_tdata_24_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_24_T_20 = tmp_tdata_reg[207] ? _tmp_result_2_trans_tdata_24_T_17 :
    _tmp_result_2_trans_tdata_24_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_24_T_21 = _tmp_result_2_trans_tdata_24_T_20 ^ tmp_tdata_reg[207:200]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_24_T_22 = _tmp_result_2_trans_tdata_24_T_10 ^ _tmp_result_2_trans_tdata_24_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_24_T_25 = _tmp_result_2_trans_tdata_24_T_22 ^ tmp_tdata_reg[215:208]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_24 = _tmp_result_2_trans_tdata_24_T_25 ^ tmp_tdata_reg[223:216]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_25_T_13 = tmp_tdata_reg[199:192] ^ _tmp_result_2_trans_tdata_24_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_25_T_19 = {tmp_tdata_reg[214:208],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_25_T_20 = _tmp_result_2_trans_tdata_25_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_25_T_23 = tmp_tdata_reg[215] ? _tmp_result_2_trans_tdata_25_T_20 :
    _tmp_result_2_trans_tdata_25_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_25_T_24 = _tmp_result_2_trans_tdata_25_T_23 ^ tmp_tdata_reg[215:208]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_25_T_25 = _tmp_result_2_trans_tdata_25_T_13 ^ _tmp_result_2_trans_tdata_25_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_25 = _tmp_result_2_trans_tdata_25_T_25 ^ tmp_tdata_reg[223:216]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_26_T_5 = tmp_tdata_reg[199:192] ^ tmp_tdata_reg[207:200]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_26_T_16 = _tmp_result_2_trans_tdata_26_T_5 ^ _tmp_result_2_trans_tdata_25_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_26_T_22 = {tmp_tdata_reg[222:216],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_26_T_23 = _tmp_result_2_trans_tdata_26_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_26_T_26 = tmp_tdata_reg[223] ? _tmp_result_2_trans_tdata_26_T_23 :
    _tmp_result_2_trans_tdata_26_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_26_T_27 = _tmp_result_2_trans_tdata_26_T_26 ^ tmp_tdata_reg[223:216]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_26 = _tmp_result_2_trans_tdata_26_T_16 ^ _tmp_result_2_trans_tdata_26_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_27_T_11 = _tmp_result_2_trans_tdata_24_T_10 ^ tmp_tdata_reg[199:192]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_27_T_14 = _tmp_result_2_trans_tdata_27_T_11 ^ tmp_tdata_reg[207:200]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_27_T_17 = _tmp_result_2_trans_tdata_27_T_14 ^ tmp_tdata_reg[215:208]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_27 = _tmp_result_2_trans_tdata_27_T_17 ^ _tmp_result_2_trans_tdata_26_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_28_T_6 = {tmp_tdata_reg[230:224],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_28_T_7 = _tmp_result_2_trans_tdata_28_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_28_T_10 = tmp_tdata_reg[231] ? _tmp_result_2_trans_tdata_28_T_7 :
    _tmp_result_2_trans_tdata_28_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_28_T_16 = {tmp_tdata_reg[238:232],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_28_T_17 = _tmp_result_2_trans_tdata_28_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_28_T_20 = tmp_tdata_reg[239] ? _tmp_result_2_trans_tdata_28_T_17 :
    _tmp_result_2_trans_tdata_28_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_28_T_21 = _tmp_result_2_trans_tdata_28_T_20 ^ tmp_tdata_reg[239:232]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_28_T_22 = _tmp_result_2_trans_tdata_28_T_10 ^ _tmp_result_2_trans_tdata_28_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_28_T_25 = _tmp_result_2_trans_tdata_28_T_22 ^ tmp_tdata_reg[247:240]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_28 = _tmp_result_2_trans_tdata_28_T_25 ^ tmp_tdata_reg[255:248]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_29_T_13 = tmp_tdata_reg[231:224] ^ _tmp_result_2_trans_tdata_28_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_29_T_19 = {tmp_tdata_reg[246:240],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_29_T_20 = _tmp_result_2_trans_tdata_29_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_29_T_23 = tmp_tdata_reg[247] ? _tmp_result_2_trans_tdata_29_T_20 :
    _tmp_result_2_trans_tdata_29_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_29_T_24 = _tmp_result_2_trans_tdata_29_T_23 ^ tmp_tdata_reg[247:240]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_29_T_25 = _tmp_result_2_trans_tdata_29_T_13 ^ _tmp_result_2_trans_tdata_29_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_29 = _tmp_result_2_trans_tdata_29_T_25 ^ tmp_tdata_reg[255:248]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_30_T_5 = tmp_tdata_reg[231:224] ^ tmp_tdata_reg[239:232]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_30_T_16 = _tmp_result_2_trans_tdata_30_T_5 ^ _tmp_result_2_trans_tdata_29_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_30_T_22 = {tmp_tdata_reg[254:248],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_30_T_23 = _tmp_result_2_trans_tdata_30_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_30_T_26 = tmp_tdata_reg[255] ? _tmp_result_2_trans_tdata_30_T_23 :
    _tmp_result_2_trans_tdata_30_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_30_T_27 = _tmp_result_2_trans_tdata_30_T_26 ^ tmp_tdata_reg[255:248]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_30 = _tmp_result_2_trans_tdata_30_T_16 ^ _tmp_result_2_trans_tdata_30_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_31_T_11 = _tmp_result_2_trans_tdata_28_T_10 ^ tmp_tdata_reg[231:224]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_31_T_14 = _tmp_result_2_trans_tdata_31_T_11 ^ tmp_tdata_reg[239:232]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_31_T_17 = _tmp_result_2_trans_tdata_31_T_14 ^ tmp_tdata_reg[247:240]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_31 = _tmp_result_2_trans_tdata_31_T_17 ^ _tmp_result_2_trans_tdata_30_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_32_T_6 = {tmp_tdata_reg[262:256],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_32_T_7 = _tmp_result_2_trans_tdata_32_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_32_T_10 = tmp_tdata_reg[263] ? _tmp_result_2_trans_tdata_32_T_7 :
    _tmp_result_2_trans_tdata_32_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_32_T_16 = {tmp_tdata_reg[270:264],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_32_T_17 = _tmp_result_2_trans_tdata_32_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_32_T_20 = tmp_tdata_reg[271] ? _tmp_result_2_trans_tdata_32_T_17 :
    _tmp_result_2_trans_tdata_32_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_32_T_21 = _tmp_result_2_trans_tdata_32_T_20 ^ tmp_tdata_reg[271:264]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_32_T_22 = _tmp_result_2_trans_tdata_32_T_10 ^ _tmp_result_2_trans_tdata_32_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_32_T_25 = _tmp_result_2_trans_tdata_32_T_22 ^ tmp_tdata_reg[279:272]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_32 = _tmp_result_2_trans_tdata_32_T_25 ^ tmp_tdata_reg[287:280]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_33_T_13 = tmp_tdata_reg[263:256] ^ _tmp_result_2_trans_tdata_32_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_33_T_19 = {tmp_tdata_reg[278:272],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_33_T_20 = _tmp_result_2_trans_tdata_33_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_33_T_23 = tmp_tdata_reg[279] ? _tmp_result_2_trans_tdata_33_T_20 :
    _tmp_result_2_trans_tdata_33_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_33_T_24 = _tmp_result_2_trans_tdata_33_T_23 ^ tmp_tdata_reg[279:272]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_33_T_25 = _tmp_result_2_trans_tdata_33_T_13 ^ _tmp_result_2_trans_tdata_33_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_33 = _tmp_result_2_trans_tdata_33_T_25 ^ tmp_tdata_reg[287:280]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_34_T_5 = tmp_tdata_reg[263:256] ^ tmp_tdata_reg[271:264]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_34_T_16 = _tmp_result_2_trans_tdata_34_T_5 ^ _tmp_result_2_trans_tdata_33_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_34_T_22 = {tmp_tdata_reg[286:280],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_34_T_23 = _tmp_result_2_trans_tdata_34_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_34_T_26 = tmp_tdata_reg[287] ? _tmp_result_2_trans_tdata_34_T_23 :
    _tmp_result_2_trans_tdata_34_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_34_T_27 = _tmp_result_2_trans_tdata_34_T_26 ^ tmp_tdata_reg[287:280]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_34 = _tmp_result_2_trans_tdata_34_T_16 ^ _tmp_result_2_trans_tdata_34_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_35_T_11 = _tmp_result_2_trans_tdata_32_T_10 ^ tmp_tdata_reg[263:256]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_35_T_14 = _tmp_result_2_trans_tdata_35_T_11 ^ tmp_tdata_reg[271:264]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_35_T_17 = _tmp_result_2_trans_tdata_35_T_14 ^ tmp_tdata_reg[279:272]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_35 = _tmp_result_2_trans_tdata_35_T_17 ^ _tmp_result_2_trans_tdata_34_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_36_T_6 = {tmp_tdata_reg[294:288],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_36_T_7 = _tmp_result_2_trans_tdata_36_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_36_T_10 = tmp_tdata_reg[295] ? _tmp_result_2_trans_tdata_36_T_7 :
    _tmp_result_2_trans_tdata_36_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_36_T_16 = {tmp_tdata_reg[302:296],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_36_T_17 = _tmp_result_2_trans_tdata_36_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_36_T_20 = tmp_tdata_reg[303] ? _tmp_result_2_trans_tdata_36_T_17 :
    _tmp_result_2_trans_tdata_36_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_36_T_21 = _tmp_result_2_trans_tdata_36_T_20 ^ tmp_tdata_reg[303:296]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_36_T_22 = _tmp_result_2_trans_tdata_36_T_10 ^ _tmp_result_2_trans_tdata_36_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_36_T_25 = _tmp_result_2_trans_tdata_36_T_22 ^ tmp_tdata_reg[311:304]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_36 = _tmp_result_2_trans_tdata_36_T_25 ^ tmp_tdata_reg[319:312]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_37_T_13 = tmp_tdata_reg[295:288] ^ _tmp_result_2_trans_tdata_36_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_37_T_19 = {tmp_tdata_reg[310:304],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_37_T_20 = _tmp_result_2_trans_tdata_37_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_37_T_23 = tmp_tdata_reg[311] ? _tmp_result_2_trans_tdata_37_T_20 :
    _tmp_result_2_trans_tdata_37_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_37_T_24 = _tmp_result_2_trans_tdata_37_T_23 ^ tmp_tdata_reg[311:304]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_37_T_25 = _tmp_result_2_trans_tdata_37_T_13 ^ _tmp_result_2_trans_tdata_37_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_37 = _tmp_result_2_trans_tdata_37_T_25 ^ tmp_tdata_reg[319:312]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_38_T_5 = tmp_tdata_reg[295:288] ^ tmp_tdata_reg[303:296]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_38_T_16 = _tmp_result_2_trans_tdata_38_T_5 ^ _tmp_result_2_trans_tdata_37_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_38_T_22 = {tmp_tdata_reg[318:312],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_38_T_23 = _tmp_result_2_trans_tdata_38_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_38_T_26 = tmp_tdata_reg[319] ? _tmp_result_2_trans_tdata_38_T_23 :
    _tmp_result_2_trans_tdata_38_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_38_T_27 = _tmp_result_2_trans_tdata_38_T_26 ^ tmp_tdata_reg[319:312]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_38 = _tmp_result_2_trans_tdata_38_T_16 ^ _tmp_result_2_trans_tdata_38_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_39_T_11 = _tmp_result_2_trans_tdata_36_T_10 ^ tmp_tdata_reg[295:288]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_39_T_14 = _tmp_result_2_trans_tdata_39_T_11 ^ tmp_tdata_reg[303:296]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_39_T_17 = _tmp_result_2_trans_tdata_39_T_14 ^ tmp_tdata_reg[311:304]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_39 = _tmp_result_2_trans_tdata_39_T_17 ^ _tmp_result_2_trans_tdata_38_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_40_T_6 = {tmp_tdata_reg[326:320],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_40_T_7 = _tmp_result_2_trans_tdata_40_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_40_T_10 = tmp_tdata_reg[327] ? _tmp_result_2_trans_tdata_40_T_7 :
    _tmp_result_2_trans_tdata_40_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_40_T_16 = {tmp_tdata_reg[334:328],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_40_T_17 = _tmp_result_2_trans_tdata_40_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_40_T_20 = tmp_tdata_reg[335] ? _tmp_result_2_trans_tdata_40_T_17 :
    _tmp_result_2_trans_tdata_40_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_40_T_21 = _tmp_result_2_trans_tdata_40_T_20 ^ tmp_tdata_reg[335:328]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_40_T_22 = _tmp_result_2_trans_tdata_40_T_10 ^ _tmp_result_2_trans_tdata_40_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_40_T_25 = _tmp_result_2_trans_tdata_40_T_22 ^ tmp_tdata_reg[343:336]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_40 = _tmp_result_2_trans_tdata_40_T_25 ^ tmp_tdata_reg[351:344]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_41_T_13 = tmp_tdata_reg[327:320] ^ _tmp_result_2_trans_tdata_40_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_41_T_19 = {tmp_tdata_reg[342:336],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_41_T_20 = _tmp_result_2_trans_tdata_41_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_41_T_23 = tmp_tdata_reg[343] ? _tmp_result_2_trans_tdata_41_T_20 :
    _tmp_result_2_trans_tdata_41_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_41_T_24 = _tmp_result_2_trans_tdata_41_T_23 ^ tmp_tdata_reg[343:336]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_41_T_25 = _tmp_result_2_trans_tdata_41_T_13 ^ _tmp_result_2_trans_tdata_41_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_41 = _tmp_result_2_trans_tdata_41_T_25 ^ tmp_tdata_reg[351:344]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_42_T_5 = tmp_tdata_reg[327:320] ^ tmp_tdata_reg[335:328]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_42_T_16 = _tmp_result_2_trans_tdata_42_T_5 ^ _tmp_result_2_trans_tdata_41_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_42_T_22 = {tmp_tdata_reg[350:344],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_42_T_23 = _tmp_result_2_trans_tdata_42_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_42_T_26 = tmp_tdata_reg[351] ? _tmp_result_2_trans_tdata_42_T_23 :
    _tmp_result_2_trans_tdata_42_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_42_T_27 = _tmp_result_2_trans_tdata_42_T_26 ^ tmp_tdata_reg[351:344]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_42 = _tmp_result_2_trans_tdata_42_T_16 ^ _tmp_result_2_trans_tdata_42_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_43_T_11 = _tmp_result_2_trans_tdata_40_T_10 ^ tmp_tdata_reg[327:320]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_43_T_14 = _tmp_result_2_trans_tdata_43_T_11 ^ tmp_tdata_reg[335:328]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_43_T_17 = _tmp_result_2_trans_tdata_43_T_14 ^ tmp_tdata_reg[343:336]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_43 = _tmp_result_2_trans_tdata_43_T_17 ^ _tmp_result_2_trans_tdata_42_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_44_T_6 = {tmp_tdata_reg[358:352],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_44_T_7 = _tmp_result_2_trans_tdata_44_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_44_T_10 = tmp_tdata_reg[359] ? _tmp_result_2_trans_tdata_44_T_7 :
    _tmp_result_2_trans_tdata_44_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_44_T_16 = {tmp_tdata_reg[366:360],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_44_T_17 = _tmp_result_2_trans_tdata_44_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_44_T_20 = tmp_tdata_reg[367] ? _tmp_result_2_trans_tdata_44_T_17 :
    _tmp_result_2_trans_tdata_44_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_44_T_21 = _tmp_result_2_trans_tdata_44_T_20 ^ tmp_tdata_reg[367:360]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_44_T_22 = _tmp_result_2_trans_tdata_44_T_10 ^ _tmp_result_2_trans_tdata_44_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_44_T_25 = _tmp_result_2_trans_tdata_44_T_22 ^ tmp_tdata_reg[375:368]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_44 = _tmp_result_2_trans_tdata_44_T_25 ^ tmp_tdata_reg[383:376]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_45_T_13 = tmp_tdata_reg[359:352] ^ _tmp_result_2_trans_tdata_44_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_45_T_19 = {tmp_tdata_reg[374:368],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_45_T_20 = _tmp_result_2_trans_tdata_45_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_45_T_23 = tmp_tdata_reg[375] ? _tmp_result_2_trans_tdata_45_T_20 :
    _tmp_result_2_trans_tdata_45_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_45_T_24 = _tmp_result_2_trans_tdata_45_T_23 ^ tmp_tdata_reg[375:368]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_45_T_25 = _tmp_result_2_trans_tdata_45_T_13 ^ _tmp_result_2_trans_tdata_45_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_45 = _tmp_result_2_trans_tdata_45_T_25 ^ tmp_tdata_reg[383:376]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_46_T_5 = tmp_tdata_reg[359:352] ^ tmp_tdata_reg[367:360]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_46_T_16 = _tmp_result_2_trans_tdata_46_T_5 ^ _tmp_result_2_trans_tdata_45_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_46_T_22 = {tmp_tdata_reg[382:376],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_46_T_23 = _tmp_result_2_trans_tdata_46_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_46_T_26 = tmp_tdata_reg[383] ? _tmp_result_2_trans_tdata_46_T_23 :
    _tmp_result_2_trans_tdata_46_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_46_T_27 = _tmp_result_2_trans_tdata_46_T_26 ^ tmp_tdata_reg[383:376]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_46 = _tmp_result_2_trans_tdata_46_T_16 ^ _tmp_result_2_trans_tdata_46_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_47_T_11 = _tmp_result_2_trans_tdata_44_T_10 ^ tmp_tdata_reg[359:352]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_47_T_14 = _tmp_result_2_trans_tdata_47_T_11 ^ tmp_tdata_reg[367:360]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_47_T_17 = _tmp_result_2_trans_tdata_47_T_14 ^ tmp_tdata_reg[375:368]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_47 = _tmp_result_2_trans_tdata_47_T_17 ^ _tmp_result_2_trans_tdata_46_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_48_T_6 = {tmp_tdata_reg[390:384],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_48_T_7 = _tmp_result_2_trans_tdata_48_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_48_T_10 = tmp_tdata_reg[391] ? _tmp_result_2_trans_tdata_48_T_7 :
    _tmp_result_2_trans_tdata_48_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_48_T_16 = {tmp_tdata_reg[398:392],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_48_T_17 = _tmp_result_2_trans_tdata_48_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_48_T_20 = tmp_tdata_reg[399] ? _tmp_result_2_trans_tdata_48_T_17 :
    _tmp_result_2_trans_tdata_48_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_48_T_21 = _tmp_result_2_trans_tdata_48_T_20 ^ tmp_tdata_reg[399:392]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_48_T_22 = _tmp_result_2_trans_tdata_48_T_10 ^ _tmp_result_2_trans_tdata_48_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_48_T_25 = _tmp_result_2_trans_tdata_48_T_22 ^ tmp_tdata_reg[407:400]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_48 = _tmp_result_2_trans_tdata_48_T_25 ^ tmp_tdata_reg[415:408]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_49_T_13 = tmp_tdata_reg[391:384] ^ _tmp_result_2_trans_tdata_48_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_49_T_19 = {tmp_tdata_reg[406:400],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_49_T_20 = _tmp_result_2_trans_tdata_49_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_49_T_23 = tmp_tdata_reg[407] ? _tmp_result_2_trans_tdata_49_T_20 :
    _tmp_result_2_trans_tdata_49_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_49_T_24 = _tmp_result_2_trans_tdata_49_T_23 ^ tmp_tdata_reg[407:400]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_49_T_25 = _tmp_result_2_trans_tdata_49_T_13 ^ _tmp_result_2_trans_tdata_49_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_49 = _tmp_result_2_trans_tdata_49_T_25 ^ tmp_tdata_reg[415:408]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_50_T_5 = tmp_tdata_reg[391:384] ^ tmp_tdata_reg[399:392]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_50_T_16 = _tmp_result_2_trans_tdata_50_T_5 ^ _tmp_result_2_trans_tdata_49_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_50_T_22 = {tmp_tdata_reg[414:408],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_50_T_23 = _tmp_result_2_trans_tdata_50_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_50_T_26 = tmp_tdata_reg[415] ? _tmp_result_2_trans_tdata_50_T_23 :
    _tmp_result_2_trans_tdata_50_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_50_T_27 = _tmp_result_2_trans_tdata_50_T_26 ^ tmp_tdata_reg[415:408]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_50 = _tmp_result_2_trans_tdata_50_T_16 ^ _tmp_result_2_trans_tdata_50_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_51_T_11 = _tmp_result_2_trans_tdata_48_T_10 ^ tmp_tdata_reg[391:384]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_51_T_14 = _tmp_result_2_trans_tdata_51_T_11 ^ tmp_tdata_reg[399:392]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_51_T_17 = _tmp_result_2_trans_tdata_51_T_14 ^ tmp_tdata_reg[407:400]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_51 = _tmp_result_2_trans_tdata_51_T_17 ^ _tmp_result_2_trans_tdata_50_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_52_T_6 = {tmp_tdata_reg[422:416],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_52_T_7 = _tmp_result_2_trans_tdata_52_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_52_T_10 = tmp_tdata_reg[423] ? _tmp_result_2_trans_tdata_52_T_7 :
    _tmp_result_2_trans_tdata_52_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_52_T_16 = {tmp_tdata_reg[430:424],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_52_T_17 = _tmp_result_2_trans_tdata_52_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_52_T_20 = tmp_tdata_reg[431] ? _tmp_result_2_trans_tdata_52_T_17 :
    _tmp_result_2_trans_tdata_52_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_52_T_21 = _tmp_result_2_trans_tdata_52_T_20 ^ tmp_tdata_reg[431:424]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_52_T_22 = _tmp_result_2_trans_tdata_52_T_10 ^ _tmp_result_2_trans_tdata_52_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_52_T_25 = _tmp_result_2_trans_tdata_52_T_22 ^ tmp_tdata_reg[439:432]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_52 = _tmp_result_2_trans_tdata_52_T_25 ^ tmp_tdata_reg[447:440]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_53_T_13 = tmp_tdata_reg[423:416] ^ _tmp_result_2_trans_tdata_52_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_53_T_19 = {tmp_tdata_reg[438:432],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_53_T_20 = _tmp_result_2_trans_tdata_53_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_53_T_23 = tmp_tdata_reg[439] ? _tmp_result_2_trans_tdata_53_T_20 :
    _tmp_result_2_trans_tdata_53_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_53_T_24 = _tmp_result_2_trans_tdata_53_T_23 ^ tmp_tdata_reg[439:432]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_53_T_25 = _tmp_result_2_trans_tdata_53_T_13 ^ _tmp_result_2_trans_tdata_53_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_53 = _tmp_result_2_trans_tdata_53_T_25 ^ tmp_tdata_reg[447:440]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_54_T_5 = tmp_tdata_reg[423:416] ^ tmp_tdata_reg[431:424]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_54_T_16 = _tmp_result_2_trans_tdata_54_T_5 ^ _tmp_result_2_trans_tdata_53_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_54_T_22 = {tmp_tdata_reg[446:440],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_54_T_23 = _tmp_result_2_trans_tdata_54_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_54_T_26 = tmp_tdata_reg[447] ? _tmp_result_2_trans_tdata_54_T_23 :
    _tmp_result_2_trans_tdata_54_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_54_T_27 = _tmp_result_2_trans_tdata_54_T_26 ^ tmp_tdata_reg[447:440]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_54 = _tmp_result_2_trans_tdata_54_T_16 ^ _tmp_result_2_trans_tdata_54_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_55_T_11 = _tmp_result_2_trans_tdata_52_T_10 ^ tmp_tdata_reg[423:416]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_55_T_14 = _tmp_result_2_trans_tdata_55_T_11 ^ tmp_tdata_reg[431:424]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_55_T_17 = _tmp_result_2_trans_tdata_55_T_14 ^ tmp_tdata_reg[439:432]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_55 = _tmp_result_2_trans_tdata_55_T_17 ^ _tmp_result_2_trans_tdata_54_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_56_T_6 = {tmp_tdata_reg[454:448],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_56_T_7 = _tmp_result_2_trans_tdata_56_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_56_T_10 = tmp_tdata_reg[455] ? _tmp_result_2_trans_tdata_56_T_7 :
    _tmp_result_2_trans_tdata_56_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_56_T_16 = {tmp_tdata_reg[462:456],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_56_T_17 = _tmp_result_2_trans_tdata_56_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_56_T_20 = tmp_tdata_reg[463] ? _tmp_result_2_trans_tdata_56_T_17 :
    _tmp_result_2_trans_tdata_56_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_56_T_21 = _tmp_result_2_trans_tdata_56_T_20 ^ tmp_tdata_reg[463:456]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_56_T_22 = _tmp_result_2_trans_tdata_56_T_10 ^ _tmp_result_2_trans_tdata_56_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_56_T_25 = _tmp_result_2_trans_tdata_56_T_22 ^ tmp_tdata_reg[471:464]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_56 = _tmp_result_2_trans_tdata_56_T_25 ^ tmp_tdata_reg[479:472]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_57_T_13 = tmp_tdata_reg[455:448] ^ _tmp_result_2_trans_tdata_56_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_57_T_19 = {tmp_tdata_reg[470:464],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_57_T_20 = _tmp_result_2_trans_tdata_57_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_57_T_23 = tmp_tdata_reg[471] ? _tmp_result_2_trans_tdata_57_T_20 :
    _tmp_result_2_trans_tdata_57_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_57_T_24 = _tmp_result_2_trans_tdata_57_T_23 ^ tmp_tdata_reg[471:464]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_57_T_25 = _tmp_result_2_trans_tdata_57_T_13 ^ _tmp_result_2_trans_tdata_57_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_57 = _tmp_result_2_trans_tdata_57_T_25 ^ tmp_tdata_reg[479:472]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_58_T_5 = tmp_tdata_reg[455:448] ^ tmp_tdata_reg[463:456]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_58_T_16 = _tmp_result_2_trans_tdata_58_T_5 ^ _tmp_result_2_trans_tdata_57_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_58_T_22 = {tmp_tdata_reg[478:472],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_58_T_23 = _tmp_result_2_trans_tdata_58_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_58_T_26 = tmp_tdata_reg[479] ? _tmp_result_2_trans_tdata_58_T_23 :
    _tmp_result_2_trans_tdata_58_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_58_T_27 = _tmp_result_2_trans_tdata_58_T_26 ^ tmp_tdata_reg[479:472]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_58 = _tmp_result_2_trans_tdata_58_T_16 ^ _tmp_result_2_trans_tdata_58_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_59_T_11 = _tmp_result_2_trans_tdata_56_T_10 ^ tmp_tdata_reg[455:448]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_59_T_14 = _tmp_result_2_trans_tdata_59_T_11 ^ tmp_tdata_reg[463:456]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_59_T_17 = _tmp_result_2_trans_tdata_59_T_14 ^ tmp_tdata_reg[471:464]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_59 = _tmp_result_2_trans_tdata_59_T_17 ^ _tmp_result_2_trans_tdata_58_T_26; // @[cal_gf256.scala 107:47]
  wire [7:0] _tmp_result_2_trans_tdata_60_T_6 = {tmp_tdata_reg[486:480],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_60_T_7 = _tmp_result_2_trans_tdata_60_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_60_T_10 = tmp_tdata_reg[487] ? _tmp_result_2_trans_tdata_60_T_7 :
    _tmp_result_2_trans_tdata_60_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_60_T_16 = {tmp_tdata_reg[494:488],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_60_T_17 = _tmp_result_2_trans_tdata_60_T_16 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_60_T_20 = tmp_tdata_reg[495] ? _tmp_result_2_trans_tdata_60_T_17 :
    _tmp_result_2_trans_tdata_60_T_16; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_60_T_21 = _tmp_result_2_trans_tdata_60_T_20 ^ tmp_tdata_reg[495:488]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_60_T_22 = _tmp_result_2_trans_tdata_60_T_10 ^ _tmp_result_2_trans_tdata_60_T_21; // @[cal_gf256.scala 97:55]
  wire [7:0] _tmp_result_2_trans_tdata_60_T_25 = _tmp_result_2_trans_tdata_60_T_22 ^ tmp_tdata_reg[503:496]; // @[cal_gf256.scala 97:95]
  wire [7:0] tmp_result_2_trans_tdata_60 = _tmp_result_2_trans_tdata_60_T_25 ^ tmp_tdata_reg[511:504]; // @[cal_gf256.scala 98:47]
  wire [7:0] _tmp_result_2_trans_tdata_61_T_13 = tmp_tdata_reg[487:480] ^ _tmp_result_2_trans_tdata_60_T_20; // @[cal_gf256.scala 100:55]
  wire [7:0] _tmp_result_2_trans_tdata_61_T_19 = {tmp_tdata_reg[502:496],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_61_T_20 = _tmp_result_2_trans_tdata_61_T_19 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_61_T_23 = tmp_tdata_reg[503] ? _tmp_result_2_trans_tdata_61_T_20 :
    _tmp_result_2_trans_tdata_61_T_19; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_61_T_24 = _tmp_result_2_trans_tdata_61_T_23 ^ tmp_tdata_reg[503:496]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_61_T_25 = _tmp_result_2_trans_tdata_61_T_13 ^ _tmp_result_2_trans_tdata_61_T_24; // @[cal_gf256.scala 100:95]
  wire [7:0] tmp_result_2_trans_tdata_61 = _tmp_result_2_trans_tdata_61_T_25 ^ tmp_tdata_reg[511:504]; // @[cal_gf256.scala 101:47]
  wire [7:0] _tmp_result_2_trans_tdata_62_T_5 = tmp_tdata_reg[487:480] ^ tmp_tdata_reg[495:488]; // @[cal_gf256.scala 103:55]
  wire [7:0] _tmp_result_2_trans_tdata_62_T_16 = _tmp_result_2_trans_tdata_62_T_5 ^ _tmp_result_2_trans_tdata_61_T_23; // @[cal_gf256.scala 103:95]
  wire [7:0] _tmp_result_2_trans_tdata_62_T_22 = {tmp_tdata_reg[510:504],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_2_trans_tdata_62_T_23 = _tmp_result_2_trans_tdata_62_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_2_trans_tdata_62_T_26 = tmp_tdata_reg[511] ? _tmp_result_2_trans_tdata_62_T_23 :
    _tmp_result_2_trans_tdata_62_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_2_trans_tdata_62_T_27 = _tmp_result_2_trans_tdata_62_T_26 ^ tmp_tdata_reg[511:504]; // @[cal_gf256.scala 74:34]
  wire [7:0] tmp_result_2_trans_tdata_62 = _tmp_result_2_trans_tdata_62_T_16 ^ _tmp_result_2_trans_tdata_62_T_27; // @[cal_gf256.scala 104:47]
  wire [7:0] _tmp_result_2_trans_tdata_63_T_11 = _tmp_result_2_trans_tdata_60_T_10 ^ tmp_tdata_reg[487:480]; // @[cal_gf256.scala 74:34]
  wire [7:0] _tmp_result_2_trans_tdata_63_T_14 = _tmp_result_2_trans_tdata_63_T_11 ^ tmp_tdata_reg[495:488]; // @[cal_gf256.scala 106:55]
  wire [7:0] _tmp_result_2_trans_tdata_63_T_17 = _tmp_result_2_trans_tdata_63_T_14 ^ tmp_tdata_reg[503:496]; // @[cal_gf256.scala 106:95]
  wire [7:0] tmp_result_2_trans_tdata_63 = _tmp_result_2_trans_tdata_63_T_17 ^ _tmp_result_2_trans_tdata_62_T_26; // @[cal_gf256.scala 107:47]
  wire [63:0] tmp_result_2_lo_lo_lo = {tmp_result_2_trans_tdata_7,tmp_result_2_trans_tdata_6,tmp_result_2_trans_tdata_5,
    tmp_result_2_trans_tdata_4,tmp_result_2_trans_tdata_3,tmp_result_2_trans_tdata_2,tmp_result_2_trans_tdata_1,
    tmp_result_2_trans_tdata_0}; // @[TxAESEncrypter.scala 40:17]
  wire [127:0] tmp_result_2_lo_lo = {tmp_result_2_trans_tdata_15,tmp_result_2_trans_tdata_14,tmp_result_2_trans_tdata_13
    ,tmp_result_2_trans_tdata_12,tmp_result_2_trans_tdata_11,tmp_result_2_trans_tdata_10,tmp_result_2_trans_tdata_9,
    tmp_result_2_trans_tdata_8,tmp_result_2_lo_lo_lo}; // @[TxAESEncrypter.scala 40:17]
  wire [63:0] tmp_result_2_lo_hi_lo = {tmp_result_2_trans_tdata_23,tmp_result_2_trans_tdata_22,
    tmp_result_2_trans_tdata_21,tmp_result_2_trans_tdata_20,tmp_result_2_trans_tdata_19,tmp_result_2_trans_tdata_18,
    tmp_result_2_trans_tdata_17,tmp_result_2_trans_tdata_16}; // @[TxAESEncrypter.scala 40:17]
  wire [255:0] tmp_result_2_lo = {tmp_result_2_trans_tdata_31,tmp_result_2_trans_tdata_30,tmp_result_2_trans_tdata_29,
    tmp_result_2_trans_tdata_28,tmp_result_2_trans_tdata_27,tmp_result_2_trans_tdata_26,tmp_result_2_trans_tdata_25,
    tmp_result_2_trans_tdata_24,tmp_result_2_lo_hi_lo,tmp_result_2_lo_lo}; // @[TxAESEncrypter.scala 40:17]
  wire [63:0] tmp_result_2_hi_lo_lo = {tmp_result_2_trans_tdata_39,tmp_result_2_trans_tdata_38,
    tmp_result_2_trans_tdata_37,tmp_result_2_trans_tdata_36,tmp_result_2_trans_tdata_35,tmp_result_2_trans_tdata_34,
    tmp_result_2_trans_tdata_33,tmp_result_2_trans_tdata_32}; // @[TxAESEncrypter.scala 40:17]
  wire [127:0] tmp_result_2_hi_lo = {tmp_result_2_trans_tdata_47,tmp_result_2_trans_tdata_46,tmp_result_2_trans_tdata_45
    ,tmp_result_2_trans_tdata_44,tmp_result_2_trans_tdata_43,tmp_result_2_trans_tdata_42,tmp_result_2_trans_tdata_41,
    tmp_result_2_trans_tdata_40,tmp_result_2_hi_lo_lo}; // @[TxAESEncrypter.scala 40:17]
  wire [63:0] tmp_result_2_hi_hi_lo = {tmp_result_2_trans_tdata_55,tmp_result_2_trans_tdata_54,
    tmp_result_2_trans_tdata_53,tmp_result_2_trans_tdata_52,tmp_result_2_trans_tdata_51,tmp_result_2_trans_tdata_50,
    tmp_result_2_trans_tdata_49,tmp_result_2_trans_tdata_48}; // @[TxAESEncrypter.scala 40:17]
  wire [255:0] tmp_result_2_hi = {tmp_result_2_trans_tdata_63,tmp_result_2_trans_tdata_62,tmp_result_2_trans_tdata_61,
    tmp_result_2_trans_tdata_60,tmp_result_2_trans_tdata_59,tmp_result_2_trans_tdata_58,tmp_result_2_trans_tdata_57,
    tmp_result_2_trans_tdata_56,tmp_result_2_hi_hi_lo,tmp_result_2_hi_lo}; // @[TxAESEncrypter.scala 40:17]
  wire [511:0] tmp_result_2 = {tmp_result_2_hi,tmp_result_2_lo}; // @[TxAESEncrypter.scala 40:17]
  wire [127:0] _GEN_1029 = 4'h1 == cur_round[3:0] ? aes_key_reg_1 : aes_key_reg_0; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1030 = 4'h2 == cur_round[3:0] ? aes_key_reg_2 : _GEN_1029; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1031 = 4'h3 == cur_round[3:0] ? aes_key_reg_3 : _GEN_1030; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1032 = 4'h4 == cur_round[3:0] ? aes_key_reg_4 : _GEN_1031; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1033 = 4'h5 == cur_round[3:0] ? aes_key_reg_5 : _GEN_1032; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1034 = 4'h6 == cur_round[3:0] ? aes_key_reg_6 : _GEN_1033; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1035 = 4'h7 == cur_round[3:0] ? aes_key_reg_7 : _GEN_1034; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1036 = 4'h8 == cur_round[3:0] ? aes_key_reg_8 : _GEN_1035; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1037 = 4'h9 == cur_round[3:0] ? aes_key_reg_9 : _GEN_1036; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1038 = 4'ha == cur_round[3:0] ? aes_key_reg_10 : _GEN_1037; // @[Cat.scala 31:{58,58}]
  wire [511:0] _tmp_result_3_T_2 = {_GEN_1038,_GEN_1038,_GEN_1038,_GEN_1038}; // @[Cat.scala 31:58]
  wire [511:0] tmp_result_3 = tmp_tdata_reg ^ _tmp_result_3_T_2; // @[TxAESEncrypter.scala 14:11]
  wire [511:0] _GEN_1039 = in_shake_hand ? io_in_tdata : tmp_tdata_reg; // @[TxAESEncrypter.scala 66:23 67:19 45:26]
  wire [7:0] _aes_key_reg_T_1 = cur_round_counter - 8'h1; // @[TxAESEncrypter.scala 78:86]
  wire [127:0] _GEN_1041 = 4'h1 == _aes_key_reg_T_1[3:0] ? aes_key_reg_1 : aes_key_reg_0; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1042 = 4'h2 == _aes_key_reg_T_1[3:0] ? aes_key_reg_2 : _GEN_1041; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1043 = 4'h3 == _aes_key_reg_T_1[3:0] ? aes_key_reg_3 : _GEN_1042; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1044 = 4'h4 == _aes_key_reg_T_1[3:0] ? aes_key_reg_4 : _GEN_1043; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1045 = 4'h5 == _aes_key_reg_T_1[3:0] ? aes_key_reg_5 : _GEN_1044; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1046 = 4'h6 == _aes_key_reg_T_1[3:0] ? aes_key_reg_6 : _GEN_1045; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1047 = 4'h7 == _aes_key_reg_T_1[3:0] ? aes_key_reg_7 : _GEN_1046; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1048 = 4'h8 == _aes_key_reg_T_1[3:0] ? aes_key_reg_8 : _GEN_1047; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1049 = 4'h9 == _aes_key_reg_T_1[3:0] ? aes_key_reg_9 : _GEN_1048; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1050 = 4'ha == _aes_key_reg_T_1[3:0] ? aes_key_reg_10 : _GEN_1049; // @[cal_gf256.scala 134:{27,27}]
  wire [6:0] _aes_key_reg_next_key_0_T_3 = {_GEN_1050[99:96], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_1052 = 4'h1 == _GEN_1050[103:100] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1053 = 4'h2 == _GEN_1050[103:100] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_1052; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1054 = 4'h3 == _GEN_1050[103:100] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_1053; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1055 = 4'h4 == _GEN_1050[103:100] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_1054; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1056 = 4'h5 == _GEN_1050[103:100] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_1055; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1057 = 4'h6 == _GEN_1050[103:100] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_1056; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1058 = 4'h7 == _GEN_1050[103:100] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_1057; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1059 = 4'h8 == _GEN_1050[103:100] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_1058; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1060 = 4'h9 == _GEN_1050[103:100] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_1059; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1061 = 4'ha == _GEN_1050[103:100] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_1060; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1062 = 4'hb == _GEN_1050[103:100] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_1061; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1063 = 4'hc == _GEN_1050[103:100] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_1062; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1064 = 4'hd == _GEN_1050[103:100] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_1063; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1065 = 4'he == _GEN_1050[103:100] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_1064; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1066 = 4'hf == _GEN_1050[103:100] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_1065; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _aes_key_reg_next_key_0_T_4 = _GEN_1066 >> _aes_key_reg_next_key_0_T_3; // @[cal_gf256.scala 27:17]
  wire [6:0] _aes_key_reg_next_key_0_T_8 = {_GEN_1050[123:120], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_1068 = 4'h1 == _GEN_1050[127:124] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1069 = 4'h2 == _GEN_1050[127:124] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_1068; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1070 = 4'h3 == _GEN_1050[127:124] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_1069; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1071 = 4'h4 == _GEN_1050[127:124] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_1070; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1072 = 4'h5 == _GEN_1050[127:124] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_1071; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1073 = 4'h6 == _GEN_1050[127:124] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_1072; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1074 = 4'h7 == _GEN_1050[127:124] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_1073; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1075 = 4'h8 == _GEN_1050[127:124] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_1074; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1076 = 4'h9 == _GEN_1050[127:124] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_1075; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1077 = 4'ha == _GEN_1050[127:124] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_1076; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1078 = 4'hb == _GEN_1050[127:124] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_1077; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1079 = 4'hc == _GEN_1050[127:124] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_1078; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1080 = 4'hd == _GEN_1050[127:124] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_1079; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1081 = 4'he == _GEN_1050[127:124] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_1080; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1082 = 4'hf == _GEN_1050[127:124] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_1081; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _aes_key_reg_next_key_0_T_9 = _GEN_1082 >> _aes_key_reg_next_key_0_T_8; // @[cal_gf256.scala 27:17]
  wire [6:0] _aes_key_reg_next_key_0_T_13 = {_GEN_1050[115:112], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_1084 = 4'h1 == _GEN_1050[119:116] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1085 = 4'h2 == _GEN_1050[119:116] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_1084; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1086 = 4'h3 == _GEN_1050[119:116] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_1085; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1087 = 4'h4 == _GEN_1050[119:116] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_1086; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1088 = 4'h5 == _GEN_1050[119:116] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_1087; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1089 = 4'h6 == _GEN_1050[119:116] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_1088; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1090 = 4'h7 == _GEN_1050[119:116] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_1089; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1091 = 4'h8 == _GEN_1050[119:116] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_1090; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1092 = 4'h9 == _GEN_1050[119:116] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_1091; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1093 = 4'ha == _GEN_1050[119:116] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_1092; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1094 = 4'hb == _GEN_1050[119:116] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_1093; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1095 = 4'hc == _GEN_1050[119:116] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_1094; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1096 = 4'hd == _GEN_1050[119:116] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_1095; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1097 = 4'he == _GEN_1050[119:116] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_1096; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1098 = 4'hf == _GEN_1050[119:116] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_1097; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _aes_key_reg_next_key_0_T_14 = _GEN_1098 >> _aes_key_reg_next_key_0_T_13; // @[cal_gf256.scala 27:17]
  wire [6:0] _aes_key_reg_next_key_0_T_18 = {_GEN_1050[107:104], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_1100 = 4'h1 == _GEN_1050[111:108] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1101 = 4'h2 == _GEN_1050[111:108] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_1100; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1102 = 4'h3 == _GEN_1050[111:108] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_1101; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1103 = 4'h4 == _GEN_1050[111:108] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_1102; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1104 = 4'h5 == _GEN_1050[111:108] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_1103; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1105 = 4'h6 == _GEN_1050[111:108] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_1104; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1106 = 4'h7 == _GEN_1050[111:108] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_1105; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1107 = 4'h8 == _GEN_1050[111:108] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_1106; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1108 = 4'h9 == _GEN_1050[111:108] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_1107; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1109 = 4'ha == _GEN_1050[111:108] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_1108; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1110 = 4'hb == _GEN_1050[111:108] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_1109; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1111 = 4'hc == _GEN_1050[111:108] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_1110; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1112 = 4'hd == _GEN_1050[111:108] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_1111; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1113 = 4'he == _GEN_1050[111:108] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_1112; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1114 = 4'hf == _GEN_1050[111:108] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_1113; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _aes_key_reg_next_key_0_T_19 = _GEN_1114 >> _aes_key_reg_next_key_0_T_18; // @[cal_gf256.scala 27:17]
  wire [31:0] _aes_key_reg_next_key_0_T_21 = {_aes_key_reg_next_key_0_T_4[7:0],_aes_key_reg_next_key_0_T_9[7:0],
    _aes_key_reg_next_key_0_T_14[7:0],_aes_key_reg_next_key_0_T_19[7:0]}; // @[Cat.scala 31:58]
  wire [31:0] _aes_key_reg_next_key_0_T_22 = _GEN_1050[31:0] ^ _aes_key_reg_next_key_0_T_21; // @[cal_gf256.scala 134:34]
  wire [255:0] _aes_key_reg_next_key_0_T_26 = 256'h1 << _aes_key_reg_T_1; // @[cal_gf256.scala 130:23]
  wire [5:0] _aes_key_reg_next_key_0_T_28 = cur_round_counter == 8'h9 ? 6'h1b : 6'h36; // @[cal_gf256.scala 130:47]
  wire [255:0] _aes_key_reg_next_key_0_T_29 = cur_round_counter <= 8'h8 ? _aes_key_reg_next_key_0_T_26 : {{250'd0},
    _aes_key_reg_next_key_0_T_28}; // @[cal_gf256.scala 130:8]
  wire [255:0] _GEN_1174 = {{224'd0}, _aes_key_reg_next_key_0_T_22}; // @[cal_gf256.scala 139:9]
  wire [255:0] _aes_key_reg_next_key_0_T_30 = _GEN_1174 ^ _aes_key_reg_next_key_0_T_29; // @[cal_gf256.scala 139:9]
  wire [31:0] aes_key_reg_next_key_0 = _aes_key_reg_next_key_0_T_30[31:0]; // @[cal_gf256.scala 133:24 134:17]
  wire [31:0] aes_key_reg_next_key_1 = _GEN_1050[63:32] ^ aes_key_reg_next_key_0; // @[cal_gf256.scala 140:35]
  wire [31:0] aes_key_reg_next_key_2 = _GEN_1050[95:64] ^ aes_key_reg_next_key_1; // @[cal_gf256.scala 141:35]
  wire [31:0] aes_key_reg_next_key_3 = _GEN_1050[127:96] ^ aes_key_reg_next_key_2; // @[cal_gf256.scala 142:36]
  wire [127:0] _aes_key_reg_T_3 = {aes_key_reg_next_key_3,aes_key_reg_next_key_2,aes_key_reg_next_key_1,
    aes_key_reg_next_key_0}; // @[cal_gf256.scala 143:14]
  wire [3:0] _cur_round_counter_T_1 = aes_key_reg_0 == aes_key_0 ? 4'hb : 4'h0; // @[TxAESEncrypter.scala 83:31]
  wire [7:0] _cur_round_counter_T_3 = cur_round_counter + 8'h1; // @[TxAESEncrypter.scala 85:46]
  wire  _T_6 = cur_round_counter >= 8'hb; // @[TxAESEncrypter.scala 88:28]
  wire [511:0] _GEN_1151 = 2'h1 == cur_round_counter[1:0] ? tmp_result_1 : tmp_result_0; // @[TxAESEncrypter.scala 90:{23,23}]
  wire [511:0] _GEN_1152 = 2'h2 == cur_round_counter[1:0] ? tmp_result_2 : _GEN_1151; // @[TxAESEncrypter.scala 90:{23,23}]
  assign io_in_tready = ~io_in_extern_config_c2h_match_op[8] ? io_out_tready | ~in_reg_used_reg : _T_6 & (out_shake_hand
     | _io_in_tready_T); // @[TxAESEncrypter.scala 70:47 TxPipelineHandler.scala 26:17 TxAESEncrypter.scala 97:18]
  assign io_out_tdata = ~io_in_extern_config_c2h_match_op[8] ? in_reg_tdata : tmp_tdata_reg; // @[TxAESEncrypter.scala 70:47 TxPipelineHandler.scala 27:17 TxAESEncrypter.scala 96:18]
  assign io_out_tvalid = ~io_in_extern_config_c2h_match_op[8] ? in_reg_tvalid & in_reg_used_reg : cur_round_counter == 8'h33
     & _io_out_tvalid_T; // @[TxAESEncrypter.scala 70:47 TxPipelineHandler.scala 28:17 TxAESEncrypter.scala 98:19]
  assign io_out_tlast = in_reg_r[0]; // @[TxPipelineHandler.scala 15:116]
  assign io_out_extern_config_c2h_match_op = io_in_extern_config_c2h_match_op; // @[TxPipelineHandler.scala 31:24]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      in_reg_r <= 578'h1; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_reg_r <= _in_reg_T_1; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[TxPipelineHandler.scala 19:32]
      in_reg_used_reg <= 1'h0; // @[TxPipelineHandler.scala 19:32]
    end else begin
      in_reg_used_reg <= _GEN_3;
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[TxAESEncrypter.scala 70:47]
      if (cur_round_counter < 8'hb) begin // @[TxAESEncrypter.scala 74:36]
        if (cur_round_counter == 8'h0) begin // @[TxAESEncrypter.scala 75:39]
          aes_key_reg_0 <= aes_key_0; // @[TxAESEncrypter.scala 76:24]
        end else if (4'h0 == cur_round_counter[3:0]) begin // @[TxAESEncrypter.scala 78:40]
          aes_key_reg_0 <= _aes_key_reg_T_3; // @[TxAESEncrypter.scala 78:40]
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[TxAESEncrypter.scala 70:47]
      if (cur_round_counter < 8'hb) begin // @[TxAESEncrypter.scala 74:36]
        if (!(cur_round_counter == 8'h0)) begin // @[TxAESEncrypter.scala 75:39]
          if (4'h1 == cur_round_counter[3:0]) begin // @[TxAESEncrypter.scala 78:40]
            aes_key_reg_1 <= _aes_key_reg_T_3; // @[TxAESEncrypter.scala 78:40]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[TxAESEncrypter.scala 70:47]
      if (cur_round_counter < 8'hb) begin // @[TxAESEncrypter.scala 74:36]
        if (!(cur_round_counter == 8'h0)) begin // @[TxAESEncrypter.scala 75:39]
          if (4'h2 == cur_round_counter[3:0]) begin // @[TxAESEncrypter.scala 78:40]
            aes_key_reg_2 <= _aes_key_reg_T_3; // @[TxAESEncrypter.scala 78:40]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[TxAESEncrypter.scala 70:47]
      if (cur_round_counter < 8'hb) begin // @[TxAESEncrypter.scala 74:36]
        if (!(cur_round_counter == 8'h0)) begin // @[TxAESEncrypter.scala 75:39]
          if (4'h3 == cur_round_counter[3:0]) begin // @[TxAESEncrypter.scala 78:40]
            aes_key_reg_3 <= _aes_key_reg_T_3; // @[TxAESEncrypter.scala 78:40]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[TxAESEncrypter.scala 70:47]
      if (cur_round_counter < 8'hb) begin // @[TxAESEncrypter.scala 74:36]
        if (!(cur_round_counter == 8'h0)) begin // @[TxAESEncrypter.scala 75:39]
          if (4'h4 == cur_round_counter[3:0]) begin // @[TxAESEncrypter.scala 78:40]
            aes_key_reg_4 <= _aes_key_reg_T_3; // @[TxAESEncrypter.scala 78:40]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[TxAESEncrypter.scala 70:47]
      if (cur_round_counter < 8'hb) begin // @[TxAESEncrypter.scala 74:36]
        if (!(cur_round_counter == 8'h0)) begin // @[TxAESEncrypter.scala 75:39]
          if (4'h5 == cur_round_counter[3:0]) begin // @[TxAESEncrypter.scala 78:40]
            aes_key_reg_5 <= _aes_key_reg_T_3; // @[TxAESEncrypter.scala 78:40]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[TxAESEncrypter.scala 70:47]
      if (cur_round_counter < 8'hb) begin // @[TxAESEncrypter.scala 74:36]
        if (!(cur_round_counter == 8'h0)) begin // @[TxAESEncrypter.scala 75:39]
          if (4'h6 == cur_round_counter[3:0]) begin // @[TxAESEncrypter.scala 78:40]
            aes_key_reg_6 <= _aes_key_reg_T_3; // @[TxAESEncrypter.scala 78:40]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[TxAESEncrypter.scala 70:47]
      if (cur_round_counter < 8'hb) begin // @[TxAESEncrypter.scala 74:36]
        if (!(cur_round_counter == 8'h0)) begin // @[TxAESEncrypter.scala 75:39]
          if (4'h7 == cur_round_counter[3:0]) begin // @[TxAESEncrypter.scala 78:40]
            aes_key_reg_7 <= _aes_key_reg_T_3; // @[TxAESEncrypter.scala 78:40]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[TxAESEncrypter.scala 70:47]
      if (cur_round_counter < 8'hb) begin // @[TxAESEncrypter.scala 74:36]
        if (!(cur_round_counter == 8'h0)) begin // @[TxAESEncrypter.scala 75:39]
          if (4'h8 == cur_round_counter[3:0]) begin // @[TxAESEncrypter.scala 78:40]
            aes_key_reg_8 <= _aes_key_reg_T_3; // @[TxAESEncrypter.scala 78:40]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[TxAESEncrypter.scala 70:47]
      if (cur_round_counter < 8'hb) begin // @[TxAESEncrypter.scala 74:36]
        if (!(cur_round_counter == 8'h0)) begin // @[TxAESEncrypter.scala 75:39]
          if (4'h9 == cur_round_counter[3:0]) begin // @[TxAESEncrypter.scala 78:40]
            aes_key_reg_9 <= _aes_key_reg_T_3; // @[TxAESEncrypter.scala 78:40]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[TxAESEncrypter.scala 70:47]
      if (cur_round_counter < 8'hb) begin // @[TxAESEncrypter.scala 74:36]
        if (!(cur_round_counter == 8'h0)) begin // @[TxAESEncrypter.scala 75:39]
          if (4'ha == cur_round_counter[3:0]) begin // @[TxAESEncrypter.scala 78:40]
            aes_key_reg_10 <= _aes_key_reg_T_3; // @[TxAESEncrypter.scala 78:40]
          end
        end
      end
    end
    if (reset) begin // @[TxAESEncrypter.scala 43:34]
      cur_round_counter <= 8'h0; // @[TxAESEncrypter.scala 43:34]
    end else if (~io_in_extern_config_c2h_match_op[8]) begin // @[TxAESEncrypter.scala 70:47]
      cur_round_counter <= 8'h0; // @[TxAESEncrypter.scala 71:23]
    end else if (in_shake_hand) begin // @[TxAESEncrypter.scala 82:25]
      cur_round_counter <= {{4'd0}, _cur_round_counter_T_1}; // @[TxAESEncrypter.scala 83:25]
    end else if (cur_round_counter < 8'h33) begin // @[TxAESEncrypter.scala 84:42]
      cur_round_counter <= _cur_round_counter_T_3; // @[TxAESEncrypter.scala 85:25]
    end
    if (~io_in_extern_config_c2h_match_op[8]) begin // @[TxAESEncrypter.scala 70:47]
      tmp_tdata_reg <= _GEN_1039;
    end else if (cur_round_counter >= 8'hb & in_reg_used_reg) begin // @[TxAESEncrypter.scala 88:56]
      if (cur_round_counter < 8'h32) begin // @[TxAESEncrypter.scala 89:38]
        if (2'h3 == cur_round_counter[1:0]) begin // @[TxAESEncrypter.scala 90:23]
          tmp_tdata_reg <= tmp_result_3; // @[TxAESEncrypter.scala 90:23]
        end else begin
          tmp_tdata_reg <= _GEN_1152;
        end
      end else if (cur_round_counter == 8'h32) begin // @[TxAESEncrypter.scala 91:46]
        tmp_tdata_reg <= tmp_result_3; // @[TxAESEncrypter.scala 92:23]
      end else begin
        tmp_tdata_reg <= _GEN_1039;
      end
    end else begin
      tmp_tdata_reg <= _GEN_1039;
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
  in_reg_used_reg = _RAND_1[0:0];
  _RAND_2 = {4{`RANDOM}};
  aes_key_reg_0 = _RAND_2[127:0];
  _RAND_3 = {4{`RANDOM}};
  aes_key_reg_1 = _RAND_3[127:0];
  _RAND_4 = {4{`RANDOM}};
  aes_key_reg_2 = _RAND_4[127:0];
  _RAND_5 = {4{`RANDOM}};
  aes_key_reg_3 = _RAND_5[127:0];
  _RAND_6 = {4{`RANDOM}};
  aes_key_reg_4 = _RAND_6[127:0];
  _RAND_7 = {4{`RANDOM}};
  aes_key_reg_5 = _RAND_7[127:0];
  _RAND_8 = {4{`RANDOM}};
  aes_key_reg_6 = _RAND_8[127:0];
  _RAND_9 = {4{`RANDOM}};
  aes_key_reg_7 = _RAND_9[127:0];
  _RAND_10 = {4{`RANDOM}};
  aes_key_reg_8 = _RAND_10[127:0];
  _RAND_11 = {4{`RANDOM}};
  aes_key_reg_9 = _RAND_11[127:0];
  _RAND_12 = {4{`RANDOM}};
  aes_key_reg_10 = _RAND_12[127:0];
  _RAND_13 = {1{`RANDOM}};
  cur_round_counter = _RAND_13[7:0];
  _RAND_14 = {16{`RANDOM}};
  tmp_tdata_reg = _RAND_14[511:0];
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
  input  [15:0]  io_in_extern_config_c2h_match_op,
  input  [31:0]  io_in_extern_config_c2h_match_arg_12,
  input  [31:0]  io_in_extern_config_c2h_match_arg_13,
  input  [31:0]  io_in_extern_config_c2h_match_arg_14,
  input  [31:0]  io_in_extern_config_c2h_match_arg_15,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output [15:0]  io_out_extern_config_c2h_match_op
);
  wire  tx_aes_encrypter_clock; // @[TxPipeline.scala 15:34]
  wire  tx_aes_encrypter_reset; // @[TxPipeline.scala 15:34]
  wire [511:0] tx_aes_encrypter_io_in_tdata; // @[TxPipeline.scala 15:34]
  wire  tx_aes_encrypter_io_in_tvalid; // @[TxPipeline.scala 15:34]
  wire  tx_aes_encrypter_io_in_tready; // @[TxPipeline.scala 15:34]
  wire  tx_aes_encrypter_io_in_tlast; // @[TxPipeline.scala 15:34]
  wire [15:0] tx_aes_encrypter_io_in_extern_config_c2h_match_op; // @[TxPipeline.scala 15:34]
  wire [31:0] tx_aes_encrypter_io_in_extern_config_c2h_match_arg_12; // @[TxPipeline.scala 15:34]
  wire [31:0] tx_aes_encrypter_io_in_extern_config_c2h_match_arg_13; // @[TxPipeline.scala 15:34]
  wire [31:0] tx_aes_encrypter_io_in_extern_config_c2h_match_arg_14; // @[TxPipeline.scala 15:34]
  wire [31:0] tx_aes_encrypter_io_in_extern_config_c2h_match_arg_15; // @[TxPipeline.scala 15:34]
  wire [511:0] tx_aes_encrypter_io_out_tdata; // @[TxPipeline.scala 15:34]
  wire  tx_aes_encrypter_io_out_tvalid; // @[TxPipeline.scala 15:34]
  wire  tx_aes_encrypter_io_out_tready; // @[TxPipeline.scala 15:34]
  wire  tx_aes_encrypter_io_out_tlast; // @[TxPipeline.scala 15:34]
  wire [15:0] tx_aes_encrypter_io_out_extern_config_c2h_match_op; // @[TxPipeline.scala 15:34]
  TxAESEncrypter tx_aes_encrypter ( // @[TxPipeline.scala 15:34]
    .clock(tx_aes_encrypter_clock),
    .reset(tx_aes_encrypter_reset),
    .io_in_tdata(tx_aes_encrypter_io_in_tdata),
    .io_in_tvalid(tx_aes_encrypter_io_in_tvalid),
    .io_in_tready(tx_aes_encrypter_io_in_tready),
    .io_in_tlast(tx_aes_encrypter_io_in_tlast),
    .io_in_extern_config_c2h_match_op(tx_aes_encrypter_io_in_extern_config_c2h_match_op),
    .io_in_extern_config_c2h_match_arg_12(tx_aes_encrypter_io_in_extern_config_c2h_match_arg_12),
    .io_in_extern_config_c2h_match_arg_13(tx_aes_encrypter_io_in_extern_config_c2h_match_arg_13),
    .io_in_extern_config_c2h_match_arg_14(tx_aes_encrypter_io_in_extern_config_c2h_match_arg_14),
    .io_in_extern_config_c2h_match_arg_15(tx_aes_encrypter_io_in_extern_config_c2h_match_arg_15),
    .io_out_tdata(tx_aes_encrypter_io_out_tdata),
    .io_out_tvalid(tx_aes_encrypter_io_out_tvalid),
    .io_out_tready(tx_aes_encrypter_io_out_tready),
    .io_out_tlast(tx_aes_encrypter_io_out_tlast),
    .io_out_extern_config_c2h_match_op(tx_aes_encrypter_io_out_extern_config_c2h_match_op)
  );
  assign io_in_tready = tx_aes_encrypter_io_in_tready; // @[TxPipeline.scala 16:11]
  assign io_out_tdata = tx_aes_encrypter_io_out_tdata; // @[TxPipeline.scala 17:29]
  assign io_out_tvalid = tx_aes_encrypter_io_out_tvalid; // @[TxPipeline.scala 17:29]
  assign io_out_tlast = tx_aes_encrypter_io_out_tlast; // @[TxPipeline.scala 17:29]
  assign io_out_extern_config_c2h_match_op = tx_aes_encrypter_io_out_extern_config_c2h_match_op; // @[TxPipeline.scala 17:29]
  assign tx_aes_encrypter_clock = clock;
  assign tx_aes_encrypter_reset = reset;
  assign tx_aes_encrypter_io_in_tdata = io_in_tdata; // @[TxPipeline.scala 16:11]
  assign tx_aes_encrypter_io_in_tvalid = io_in_tvalid; // @[TxPipeline.scala 16:11]
  assign tx_aes_encrypter_io_in_tlast = io_in_tlast; // @[TxPipeline.scala 16:11]
  assign tx_aes_encrypter_io_in_extern_config_c2h_match_op = io_in_extern_config_c2h_match_op; // @[TxPipeline.scala 16:11]
  assign tx_aes_encrypter_io_in_extern_config_c2h_match_arg_12 = io_in_extern_config_c2h_match_arg_12; // @[TxPipeline.scala 16:11]
  assign tx_aes_encrypter_io_in_extern_config_c2h_match_arg_13 = io_in_extern_config_c2h_match_arg_13; // @[TxPipeline.scala 16:11]
  assign tx_aes_encrypter_io_in_extern_config_c2h_match_arg_14 = io_in_extern_config_c2h_match_arg_14; // @[TxPipeline.scala 16:11]
  assign tx_aes_encrypter_io_in_extern_config_c2h_match_arg_15 = io_in_extern_config_c2h_match_arg_15; // @[TxPipeline.scala 16:11]
  assign tx_aes_encrypter_io_out_tready = io_out_tready; // @[TxPipeline.scala 17:29]
endmodule
module TxBufferFifo(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input  [15:0]  io_in_extern_config_c2h_match_op,
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
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
`endif // RANDOMIZE_REG_INIT
  reg [511:0] data_buf_reg [0:63]; // @[TxBufferFifo.scala 40:33]
  wire  data_buf_reg_rd_data_en; // @[TxBufferFifo.scala 40:33]
  wire [5:0] data_buf_reg_rd_data_addr; // @[TxBufferFifo.scala 40:33]
  wire [511:0] data_buf_reg_rd_data_data; // @[TxBufferFifo.scala 40:33]
  wire [511:0] data_buf_reg_MPORT_data; // @[TxBufferFifo.scala 40:33]
  wire [5:0] data_buf_reg_MPORT_addr; // @[TxBufferFifo.scala 40:33]
  wire  data_buf_reg_MPORT_mask; // @[TxBufferFifo.scala 40:33]
  wire  data_buf_reg_MPORT_en; // @[TxBufferFifo.scala 40:33]
  reg  data_buf_reg_rd_data_en_pipe_0;
  reg [5:0] data_buf_reg_rd_data_addr_pipe_0;
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[TxBufferFifo.scala 39:36]
  reg  info_buf_reg_0_used; // @[TxBufferFifo.scala 43:29]
  reg  info_buf_reg_0_valid; // @[TxBufferFifo.scala 43:29]
  reg  info_buf_reg_0_pre_valid; // @[TxBufferFifo.scala 43:29]
  reg  info_buf_reg_0_chksum_offload; // @[TxBufferFifo.scala 43:29]
  reg [1:0] info_buf_reg_0_pkt_type; // @[TxBufferFifo.scala 43:29]
  reg [15:0] info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 43:29]
  reg [15:0] info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 43:29]
  reg [5:0] info_buf_reg_0_burst; // @[TxBufferFifo.scala 43:29]
  reg  info_buf_reg_1_used; // @[TxBufferFifo.scala 43:29]
  reg  info_buf_reg_1_valid; // @[TxBufferFifo.scala 43:29]
  reg  info_buf_reg_1_pre_valid; // @[TxBufferFifo.scala 43:29]
  reg  info_buf_reg_1_chksum_offload; // @[TxBufferFifo.scala 43:29]
  reg [1:0] info_buf_reg_1_pkt_type; // @[TxBufferFifo.scala 43:29]
  reg [15:0] info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 43:29]
  reg [15:0] info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 43:29]
  reg [5:0] info_buf_reg_1_burst; // @[TxBufferFifo.scala 43:29]
  reg [6:0] wr_index_reg; // @[TxBufferFifo.scala 44:29]
  reg [6:0] rd_index_reg; // @[TxBufferFifo.scala 45:29]
  reg [6:0] wr_pos_reg; // @[TxBufferFifo.scala 46:29]
  reg [6:0] rd_pos_reg; // @[TxBufferFifo.scala 47:29]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[TxBufferFifo.scala 52:40]
  reg [31:0] pack_counter; // @[TxBufferFifo.scala 55:29]
  reg [31:0] err_counter; // @[TxBufferFifo.scala 56:28]
  reg  is_overflowed; // @[TxBufferFifo.scala 63:30]
  wire [31:0] _pack_counter_T_1 = pack_counter + 32'h1; // @[TxBufferFifo.scala 83:38]
  wire [5:0] _GEN_2 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[TxBufferFifo.scala 85:{46,46}]
  wire [11:0] _GEN_268 = {wr_index_reg, 5'h0}; // @[TxBufferFifo.scala 95:40]
  wire [13:0] _wr_pos_reg_T = {{2'd0}, _GEN_268}; // @[TxBufferFifo.scala 95:40]
  wire  _GEN_3 = ~io_in_tlast | is_overflowed; // @[TxBufferFifo.scala 87:29 88:25 63:30]
  wire [13:0] _GEN_4 = ~io_in_tlast ? {{7'd0}, wr_pos_reg} : _wr_pos_reg_T; // @[TxBufferFifo.scala 46:29 87:29 95:24]
  wire [31:0] _err_counter_T_1 = err_counter + 32'h1; // @[TxBufferFifo.scala 98:36]
  wire [5:0] _GEN_5 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire [5:0] _GEN_6 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire [15:0] _GEN_7 = ~wr_index_reg[0] ? 16'h0 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire [15:0] _GEN_8 = wr_index_reg[0] ? 16'h0 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire [15:0] _GEN_9 = ~wr_index_reg[0] ? 16'h0 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire [15:0] _GEN_10 = wr_index_reg[0] ? 16'h0 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire [1:0] _GEN_11 = ~wr_index_reg[0] ? 2'h0 : info_buf_reg_0_pkt_type; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire [1:0] _GEN_12 = wr_index_reg[0] ? 2'h0 : info_buf_reg_1_pkt_type; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire  _GEN_13 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_chksum_offload; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire  _GEN_14 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_chksum_offload; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire  _GEN_15 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_pre_valid; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire  _GEN_16 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_pre_valid; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire  _GEN_17 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire  _GEN_18 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire  _GEN_19 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_used; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire  _GEN_20 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_used; // @[TxBufferFifo.scala 43:29 99:{36,36}]
  wire  _T_4 = ~is_overflowed; // @[TxBufferFifo.scala 103:15]
  wire  _GEN_22 = wr_index_reg[0] ? info_buf_reg_1_used : info_buf_reg_0_used; // @[TxBufferFifo.scala 105:{17,17}]
  wire [15:0] _info_buf_reg_pkt_type_T_3 = {io_in_tdata[103:96],io_in_tdata[111:104]}; // @[Cat.scala 31:58]
  wire  _info_buf_reg_pkt_type_T_4 = _info_buf_reg_pkt_type_T_3 == 16'h800; // @[TxBufferFifo.scala 106:94]
  wire  _info_buf_reg_pkt_type_T_7 = _info_buf_reg_pkt_type_T_3 == 16'h800 & io_in_tdata[191:184] == 8'h6; // @[TxBufferFifo.scala 106:110]
  wire [1:0] _info_buf_reg_pkt_type_T_13 = {_info_buf_reg_pkt_type_T_7,_info_buf_reg_pkt_type_T_4}; // @[Cat.scala 31:58]
  wire [1:0] _GEN_23 = ~wr_index_reg[0] ? _info_buf_reg_pkt_type_T_13 : info_buf_reg_0_pkt_type; // @[TxBufferFifo.scala 106:{49,49} 43:29]
  wire [1:0] _GEN_24 = wr_index_reg[0] ? _info_buf_reg_pkt_type_T_13 : info_buf_reg_1_pkt_type; // @[TxBufferFifo.scala 106:{49,49} 43:29]
  wire  _GEN_269 = ~wr_index_reg[0]; // @[TxBufferFifo.scala 108:{45,45} 43:29]
  wire  _GEN_25 = ~wr_index_reg[0] | info_buf_reg_0_used; // @[TxBufferFifo.scala 108:{45,45} 43:29]
  wire  _GEN_26 = wr_index_reg[0] | info_buf_reg_1_used; // @[TxBufferFifo.scala 108:{45,45} 43:29]
  wire  _GEN_27 = ~wr_index_reg[0] ? io_in_extern_config_c2h_match_op[6] : info_buf_reg_0_chksum_offload; // @[TxBufferFifo.scala 109:{55,55} 43:29]
  wire  _GEN_28 = wr_index_reg[0] ? io_in_extern_config_c2h_match_op[6] : info_buf_reg_1_chksum_offload; // @[TxBufferFifo.scala 109:{55,55} 43:29]
  wire [1:0] _GEN_29 = ~_GEN_22 ? _GEN_23 : info_buf_reg_0_pkt_type; // @[TxBufferFifo.scala 105:51 43:29]
  wire [1:0] _GEN_30 = ~_GEN_22 ? _GEN_24 : info_buf_reg_1_pkt_type; // @[TxBufferFifo.scala 105:51 43:29]
  wire  _GEN_31 = ~_GEN_22 ? _GEN_25 : info_buf_reg_0_used; // @[TxBufferFifo.scala 105:51 43:29]
  wire  _GEN_32 = ~_GEN_22 ? _GEN_26 : info_buf_reg_1_used; // @[TxBufferFifo.scala 105:51 43:29]
  wire  _GEN_33 = ~_GEN_22 ? _GEN_27 : info_buf_reg_0_chksum_offload; // @[TxBufferFifo.scala 105:51 43:29]
  wire  _GEN_34 = ~_GEN_22 ? _GEN_28 : info_buf_reg_1_chksum_offload; // @[TxBufferFifo.scala 105:51 43:29]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_2 + 6'h1; // @[TxBufferFifo.scala 112:80]
  wire [5:0] _GEN_37 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 112:{44,44} 43:29]
  wire [5:0] _GEN_38 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 112:{44,44} 43:29]
  wire  _GEN_41 = _GEN_269 | info_buf_reg_0_pre_valid; // @[TxBufferFifo.scala 115:{52,52} 43:29]
  wire  _GEN_42 = wr_index_reg[0] | info_buf_reg_1_pre_valid; // @[TxBufferFifo.scala 115:{52,52} 43:29]
  wire  _GEN_43 = _GEN_269 | info_buf_reg_0_valid; // @[TxBufferFifo.scala 119:{48,48} 43:29]
  wire  _GEN_44 = wr_index_reg[0] | info_buf_reg_1_valid; // @[TxBufferFifo.scala 119:{48,48} 43:29]
  wire  _GEN_45 = _GEN_2 == 6'h0 ? _GEN_41 : info_buf_reg_0_pre_valid; // @[TxBufferFifo.scala 114:60 43:29]
  wire  _GEN_46 = _GEN_2 == 6'h0 ? _GEN_42 : info_buf_reg_1_pre_valid; // @[TxBufferFifo.scala 114:60 43:29]
  wire  _GEN_47 = _GEN_2 == 6'h0 ? info_buf_reg_0_valid : _GEN_43; // @[TxBufferFifo.scala 114:60 43:29]
  wire  _GEN_48 = _GEN_2 == 6'h0 ? info_buf_reg_1_valid : _GEN_44; // @[TxBufferFifo.scala 114:60 43:29]
  wire [15:0] _GEN_49 = ~wr_index_reg[0] ? 16'hffff : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 121:{50,50} 43:29]
  wire [15:0] _GEN_50 = wr_index_reg[0] ? 16'hffff : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 121:{50,50} 43:29]
  wire [15:0] _GEN_51 = ~wr_index_reg[0] ? 16'hffff : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 122:{51,51} 43:29]
  wire [15:0] _GEN_52 = wr_index_reg[0] ? 16'hffff : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 122:{51,51} 43:29]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[TxBufferFifo.scala 34:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[TxBufferFifo.scala 34:19]
  wire [11:0] _GEN_272 = {_wr_index_reg_T_2, 5'h0}; // @[TxBufferFifo.scala 124:51]
  wire [13:0] _wr_pos_reg_T_4 = {{2'd0}, _GEN_272}; // @[TxBufferFifo.scala 124:51]
  wire [6:0] _wr_pos_reg_T_6 = wr_pos_reg + 7'h1; // @[TxBufferFifo.scala 126:38]
  wire  _GEN_53 = io_in_tlast ? _GEN_45 : info_buf_reg_0_pre_valid; // @[TxBufferFifo.scala 113:30 43:29]
  wire  _GEN_54 = io_in_tlast ? _GEN_46 : info_buf_reg_1_pre_valid; // @[TxBufferFifo.scala 113:30 43:29]
  wire  _GEN_55 = io_in_tlast ? _GEN_47 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 113:30 43:29]
  wire  _GEN_56 = io_in_tlast ? _GEN_48 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 113:30 43:29]
  wire [15:0] _GEN_57 = io_in_tlast ? _GEN_49 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 113:30 43:29]
  wire [15:0] _GEN_58 = io_in_tlast ? _GEN_50 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 113:30 43:29]
  wire [15:0] _GEN_59 = io_in_tlast ? _GEN_51 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 113:30 43:29]
  wire [15:0] _GEN_60 = io_in_tlast ? _GEN_52 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 113:30 43:29]
  wire [6:0] _GEN_61 = io_in_tlast ? _wr_index_reg_T_2 : wr_index_reg; // @[TxBufferFifo.scala 113:30 123:26 44:29]
  wire [13:0] _GEN_62 = io_in_tlast ? _wr_pos_reg_T_4 : {{7'd0}, _wr_pos_reg_T_6}; // @[TxBufferFifo.scala 113:30 124:24 126:24]
  wire  _GEN_63 = io_in_tlast ? 1'h0 : is_overflowed; // @[TxBufferFifo.scala 128:34 130:25 63:30]
  wire [13:0] _GEN_64 = io_in_tlast ? _wr_pos_reg_T : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 128:34 131:22 46:29]
  wire [1:0] _GEN_65 = ~is_overflowed ? _GEN_29 : info_buf_reg_0_pkt_type; // @[TxBufferFifo.scala 103:30 43:29]
  wire [1:0] _GEN_66 = ~is_overflowed ? _GEN_30 : info_buf_reg_1_pkt_type; // @[TxBufferFifo.scala 103:30 43:29]
  wire  _GEN_67 = ~is_overflowed ? _GEN_31 : info_buf_reg_0_used; // @[TxBufferFifo.scala 103:30 43:29]
  wire  _GEN_68 = ~is_overflowed ? _GEN_32 : info_buf_reg_1_used; // @[TxBufferFifo.scala 103:30 43:29]
  wire  _GEN_69 = ~is_overflowed ? _GEN_33 : info_buf_reg_0_chksum_offload; // @[TxBufferFifo.scala 103:30 43:29]
  wire  _GEN_70 = ~is_overflowed ? _GEN_34 : info_buf_reg_1_chksum_offload; // @[TxBufferFifo.scala 103:30 43:29]
  wire [5:0] _GEN_76 = ~is_overflowed ? _GEN_37 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 103:30 43:29]
  wire [5:0] _GEN_77 = ~is_overflowed ? _GEN_38 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 103:30 43:29]
  wire  _GEN_78 = ~is_overflowed ? _GEN_53 : info_buf_reg_0_pre_valid; // @[TxBufferFifo.scala 103:30 43:29]
  wire  _GEN_79 = ~is_overflowed ? _GEN_54 : info_buf_reg_1_pre_valid; // @[TxBufferFifo.scala 103:30 43:29]
  wire  _GEN_80 = ~is_overflowed ? _GEN_55 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 103:30 43:29]
  wire  _GEN_81 = ~is_overflowed ? _GEN_56 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 103:30 43:29]
  wire [15:0] _GEN_82 = ~is_overflowed ? _GEN_57 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 103:30 43:29]
  wire [15:0] _GEN_83 = ~is_overflowed ? _GEN_58 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 103:30 43:29]
  wire [15:0] _GEN_84 = ~is_overflowed ? _GEN_59 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 103:30 43:29]
  wire [15:0] _GEN_85 = ~is_overflowed ? _GEN_60 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 103:30 43:29]
  wire [6:0] _GEN_86 = ~is_overflowed ? _GEN_61 : wr_index_reg; // @[TxBufferFifo.scala 103:30 44:29]
  wire [13:0] _GEN_87 = ~is_overflowed ? _GEN_62 : _GEN_64; // @[TxBufferFifo.scala 103:30]
  wire  _GEN_88 = ~is_overflowed ? is_overflowed : _GEN_63; // @[TxBufferFifo.scala 103:30 63:30]
  wire [1:0] _GEN_89 = io_in_tvalid ? _GEN_65 : info_buf_reg_0_pkt_type; // @[TxBufferFifo.scala 101:31 43:29]
  wire [1:0] _GEN_90 = io_in_tvalid ? _GEN_66 : info_buf_reg_1_pkt_type; // @[TxBufferFifo.scala 101:31 43:29]
  wire  _GEN_91 = io_in_tvalid ? _GEN_67 : info_buf_reg_0_used; // @[TxBufferFifo.scala 101:31 43:29]
  wire  _GEN_92 = io_in_tvalid ? _GEN_68 : info_buf_reg_1_used; // @[TxBufferFifo.scala 101:31 43:29]
  wire  _GEN_93 = io_in_tvalid ? _GEN_69 : info_buf_reg_0_chksum_offload; // @[TxBufferFifo.scala 101:31 43:29]
  wire  _GEN_94 = io_in_tvalid ? _GEN_70 : info_buf_reg_1_chksum_offload; // @[TxBufferFifo.scala 101:31 43:29]
  wire  _GEN_97 = io_in_tvalid & _T_4; // @[TxBufferFifo.scala 101:31 40:33]
  wire [5:0] _GEN_100 = io_in_tvalid ? _GEN_76 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 101:31 43:29]
  wire [5:0] _GEN_101 = io_in_tvalid ? _GEN_77 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 101:31 43:29]
  wire  _GEN_102 = io_in_tvalid ? _GEN_78 : info_buf_reg_0_pre_valid; // @[TxBufferFifo.scala 101:31 43:29]
  wire  _GEN_103 = io_in_tvalid ? _GEN_79 : info_buf_reg_1_pre_valid; // @[TxBufferFifo.scala 101:31 43:29]
  wire  _GEN_104 = io_in_tvalid ? _GEN_80 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 101:31 43:29]
  wire  _GEN_105 = io_in_tvalid ? _GEN_81 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 101:31 43:29]
  wire [15:0] _GEN_106 = io_in_tvalid ? _GEN_82 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 101:31 43:29]
  wire [15:0] _GEN_107 = io_in_tvalid ? _GEN_83 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 101:31 43:29]
  wire [15:0] _GEN_108 = io_in_tvalid ? _GEN_84 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 101:31 43:29]
  wire [15:0] _GEN_109 = io_in_tvalid ? _GEN_85 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 101:31 43:29]
  wire [6:0] _GEN_110 = io_in_tvalid ? _GEN_86 : wr_index_reg; // @[TxBufferFifo.scala 101:31 44:29]
  wire [13:0] _GEN_111 = io_in_tvalid ? _GEN_87 : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 101:31 46:29]
  wire  _GEN_112 = io_in_tvalid ? _GEN_88 : is_overflowed; // @[TxBufferFifo.scala 101:31 63:30]
  wire [13:0] _GEN_114 = _GEN_2 == 6'h20 ? _GEN_4 : _GEN_111; // @[TxBufferFifo.scala 85:63]
  wire [5:0] _GEN_116 = _GEN_2 == 6'h20 ? _GEN_5 : _GEN_100; // @[TxBufferFifo.scala 85:63]
  wire [5:0] _GEN_117 = _GEN_2 == 6'h20 ? _GEN_6 : _GEN_101; // @[TxBufferFifo.scala 85:63]
  wire [15:0] _GEN_118 = _GEN_2 == 6'h20 ? _GEN_7 : _GEN_108; // @[TxBufferFifo.scala 85:63]
  wire [15:0] _GEN_119 = _GEN_2 == 6'h20 ? _GEN_8 : _GEN_109; // @[TxBufferFifo.scala 85:63]
  wire [15:0] _GEN_120 = _GEN_2 == 6'h20 ? _GEN_9 : _GEN_106; // @[TxBufferFifo.scala 85:63]
  wire [15:0] _GEN_121 = _GEN_2 == 6'h20 ? _GEN_10 : _GEN_107; // @[TxBufferFifo.scala 85:63]
  wire [1:0] _GEN_122 = _GEN_2 == 6'h20 ? _GEN_11 : _GEN_89; // @[TxBufferFifo.scala 85:63]
  wire [1:0] _GEN_123 = _GEN_2 == 6'h20 ? _GEN_12 : _GEN_90; // @[TxBufferFifo.scala 85:63]
  wire  _GEN_124 = _GEN_2 == 6'h20 ? _GEN_13 : _GEN_93; // @[TxBufferFifo.scala 85:63]
  wire  _GEN_125 = _GEN_2 == 6'h20 ? _GEN_14 : _GEN_94; // @[TxBufferFifo.scala 85:63]
  wire  _GEN_126 = _GEN_2 == 6'h20 ? _GEN_15 : _GEN_102; // @[TxBufferFifo.scala 85:63]
  wire  _GEN_127 = _GEN_2 == 6'h20 ? _GEN_16 : _GEN_103; // @[TxBufferFifo.scala 85:63]
  wire  _GEN_128 = _GEN_2 == 6'h20 ? _GEN_17 : _GEN_104; // @[TxBufferFifo.scala 85:63]
  wire  _GEN_129 = _GEN_2 == 6'h20 ? _GEN_18 : _GEN_105; // @[TxBufferFifo.scala 85:63]
  wire  _GEN_130 = _GEN_2 == 6'h20 ? _GEN_19 : _GEN_91; // @[TxBufferFifo.scala 85:63]
  wire  _GEN_131 = _GEN_2 == 6'h20 ? _GEN_20 : _GEN_92; // @[TxBufferFifo.scala 85:63]
  wire  _GEN_134 = _GEN_2 == 6'h20 ? 1'h0 : _GEN_97; // @[TxBufferFifo.scala 40:33 85:63]
  wire [13:0] _GEN_140 = in_shake_hand ? _GEN_114 : {{7'd0}, wr_pos_reg}; // @[TxBufferFifo.scala 46:29 81:31]
  wire [5:0] _GEN_142 = in_shake_hand ? _GEN_116 : info_buf_reg_0_burst; // @[TxBufferFifo.scala 43:29 81:31]
  wire [5:0] _GEN_143 = in_shake_hand ? _GEN_117 : info_buf_reg_1_burst; // @[TxBufferFifo.scala 43:29 81:31]
  wire [15:0] _GEN_144 = in_shake_hand ? _GEN_118 : info_buf_reg_0_tcp_chksum; // @[TxBufferFifo.scala 43:29 81:31]
  wire [15:0] _GEN_145 = in_shake_hand ? _GEN_119 : info_buf_reg_1_tcp_chksum; // @[TxBufferFifo.scala 43:29 81:31]
  wire [15:0] _GEN_146 = in_shake_hand ? _GEN_120 : info_buf_reg_0_ip_chksum; // @[TxBufferFifo.scala 43:29 81:31]
  wire [15:0] _GEN_147 = in_shake_hand ? _GEN_121 : info_buf_reg_1_ip_chksum; // @[TxBufferFifo.scala 43:29 81:31]
  wire [1:0] _GEN_148 = in_shake_hand ? _GEN_122 : info_buf_reg_0_pkt_type; // @[TxBufferFifo.scala 43:29 81:31]
  wire [1:0] _GEN_149 = in_shake_hand ? _GEN_123 : info_buf_reg_1_pkt_type; // @[TxBufferFifo.scala 43:29 81:31]
  wire  _GEN_150 = in_shake_hand ? _GEN_124 : info_buf_reg_0_chksum_offload; // @[TxBufferFifo.scala 43:29 81:31]
  wire  _GEN_151 = in_shake_hand ? _GEN_125 : info_buf_reg_1_chksum_offload; // @[TxBufferFifo.scala 43:29 81:31]
  wire  _GEN_152 = in_shake_hand ? _GEN_126 : info_buf_reg_0_pre_valid; // @[TxBufferFifo.scala 43:29 81:31]
  wire  _GEN_153 = in_shake_hand ? _GEN_127 : info_buf_reg_1_pre_valid; // @[TxBufferFifo.scala 43:29 81:31]
  wire  _GEN_154 = in_shake_hand ? _GEN_128 : info_buf_reg_0_valid; // @[TxBufferFifo.scala 43:29 81:31]
  wire  _GEN_155 = in_shake_hand ? _GEN_129 : info_buf_reg_1_valid; // @[TxBufferFifo.scala 43:29 81:31]
  wire  _GEN_156 = in_shake_hand ? _GEN_130 : info_buf_reg_0_used; // @[TxBufferFifo.scala 43:29 81:31]
  wire  _GEN_157 = in_shake_hand ? _GEN_131 : info_buf_reg_1_used; // @[TxBufferFifo.scala 43:29 81:31]
  wire  _GEN_160 = in_shake_hand & _GEN_134; // @[TxBufferFifo.scala 81:31 40:33]
  wire [13:0] _GEN_167 = io_reset_counter ? {{7'd0}, wr_pos_reg} : _GEN_140; // @[TxBufferFifo.scala 77:26 46:29]
  wire [5:0] _GEN_168 = io_reset_counter ? info_buf_reg_0_burst : _GEN_142; // @[TxBufferFifo.scala 77:26 43:29]
  wire [5:0] _GEN_169 = io_reset_counter ? info_buf_reg_1_burst : _GEN_143; // @[TxBufferFifo.scala 77:26 43:29]
  wire [15:0] _GEN_170 = io_reset_counter ? info_buf_reg_0_tcp_chksum : _GEN_144; // @[TxBufferFifo.scala 77:26 43:29]
  wire [15:0] _GEN_171 = io_reset_counter ? info_buf_reg_1_tcp_chksum : _GEN_145; // @[TxBufferFifo.scala 77:26 43:29]
  wire [15:0] _GEN_172 = io_reset_counter ? info_buf_reg_0_ip_chksum : _GEN_146; // @[TxBufferFifo.scala 77:26 43:29]
  wire [15:0] _GEN_173 = io_reset_counter ? info_buf_reg_1_ip_chksum : _GEN_147; // @[TxBufferFifo.scala 77:26 43:29]
  wire [1:0] _GEN_174 = io_reset_counter ? info_buf_reg_0_pkt_type : _GEN_148; // @[TxBufferFifo.scala 77:26 43:29]
  wire [1:0] _GEN_175 = io_reset_counter ? info_buf_reg_1_pkt_type : _GEN_149; // @[TxBufferFifo.scala 77:26 43:29]
  wire  _GEN_176 = io_reset_counter ? info_buf_reg_0_chksum_offload : _GEN_150; // @[TxBufferFifo.scala 77:26 43:29]
  wire  _GEN_177 = io_reset_counter ? info_buf_reg_1_chksum_offload : _GEN_151; // @[TxBufferFifo.scala 77:26 43:29]
  wire  _GEN_178 = io_reset_counter ? info_buf_reg_0_pre_valid : _GEN_152; // @[TxBufferFifo.scala 77:26 43:29]
  wire  _GEN_179 = io_reset_counter ? info_buf_reg_1_pre_valid : _GEN_153; // @[TxBufferFifo.scala 77:26 43:29]
  wire  _GEN_180 = io_reset_counter ? info_buf_reg_0_valid : _GEN_154; // @[TxBufferFifo.scala 77:26 43:29]
  wire  _GEN_181 = io_reset_counter ? info_buf_reg_1_valid : _GEN_155; // @[TxBufferFifo.scala 77:26 43:29]
  wire  _GEN_182 = io_reset_counter ? info_buf_reg_0_used : _GEN_156; // @[TxBufferFifo.scala 77:26 43:29]
  wire  _GEN_183 = io_reset_counter ? info_buf_reg_1_used : _GEN_157; // @[TxBufferFifo.scala 77:26 43:29]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[TxBufferFifo.scala 137:38]
  wire [5:0] _GEN_193 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[TxBufferFifo.scala 142:{70,70}]
  wire  _io_out_tlast_T_1 = _GEN_193 == 6'h1; // @[TxBufferFifo.scala 142:70]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[TxBufferFifo.scala 34:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[TxBufferFifo.scala 34:19]
  wire [11:0] _GEN_274 = {_rd_pos_next_T_2, 5'h0}; // @[TxBufferFifo.scala 172:44]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_274}; // @[TxBufferFifo.scala 172:44]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[TxBufferFifo.scala 174:31]
  wire [13:0] _GEN_263 = _io_out_tlast_T_1 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[TxBufferFifo.scala 171:51 172:17 174:17]
  wire [6:0] rd_pos_next = _GEN_263[6:0];
  wire [6:0] _rd_data_T = out_shake_hand ? rd_pos_next : rd_pos_reg; // @[TxBufferFifo.scala 145:33]
  wire [15:0] _GEN_195 = rd_index_reg[0] ? info_buf_reg_1_ip_chksum : info_buf_reg_0_ip_chksum; // @[Misc.scala 8:{10,10}]
  wire [15:0] rev_ip_chksum = {_GEN_195[7:0],_GEN_195[15:8]}; // @[Cat.scala 31:58]
  wire [15:0] _GEN_197 = rd_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[Misc.scala 8:{10,10}]
  wire [15:0] rev_tcp_chksum = {_GEN_197[7:0],_GEN_197[15:8]}; // @[Cat.scala 31:58]
  wire [11:0] _GEN_275 = {rd_index_reg, 5'h0}; // @[TxBufferFifo.scala 153:52]
  wire [13:0] _io_out_tdata_T = {{2'd0}, _GEN_275}; // @[TxBufferFifo.scala 153:52]
  wire [13:0] _GEN_276 = {{7'd0}, rd_pos_reg}; // @[TxBufferFifo.scala 153:34]
  wire  _GEN_199 = rd_index_reg[0] ? info_buf_reg_1_chksum_offload : info_buf_reg_0_chksum_offload; // @[TxBufferFifo.scala 153:{86,86}]
  wire [1:0] _GEN_201 = rd_index_reg[0] ? info_buf_reg_1_pkt_type : info_buf_reg_0_pkt_type; // @[TxBufferFifo.scala 155:{66,66}]
  wire [15:0] _io_out_tdata_T_8 = _GEN_201[1] ? rev_tcp_chksum : data_buf_reg_rd_data_data[415:400]; // @[TxBufferFifo.scala 155:30]
  wire [15:0] _io_out_tdata_T_13 = _GEN_201[0] ? rev_ip_chksum : data_buf_reg_rd_data_data[207:192]; // @[TxBufferFifo.scala 157:30]
  wire [511:0] _io_out_tdata_T_15 = {data_buf_reg_rd_data_data[511:416],_io_out_tdata_T_8,data_buf_reg_rd_data_data[399:
    208],_io_out_tdata_T_13,data_buf_reg_rd_data_data[191:0]}; // @[Cat.scala 31:58]
  wire  _GEN_216 = ~rd_index_reg[0] ? 1'h0 : _GEN_178; // @[TxBufferFifo.scala 165:{34,34}]
  wire  _GEN_217 = rd_index_reg[0] ? 1'h0 : _GEN_179; // @[TxBufferFifo.scala 165:{34,34}]
  wire  _GEN_218 = ~rd_index_reg[0] ? 1'h0 : _GEN_180; // @[TxBufferFifo.scala 165:{34,34}]
  wire  _GEN_219 = rd_index_reg[0] ? 1'h0 : _GEN_181; // @[TxBufferFifo.scala 165:{34,34}]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_193 - 6'h1; // @[TxBufferFifo.scala 168:76]
  wire  _GEN_238 = _io_out_tlast_T_1 ? _GEN_218 : _GEN_180; // @[TxBufferFifo.scala 164:53]
  wire  _GEN_239 = _io_out_tlast_T_1 ? _GEN_219 : _GEN_181; // @[TxBufferFifo.scala 164:53]
  wire  _GEN_256 = out_shake_hand ? _GEN_238 : _GEN_180; // @[TxBufferFifo.scala 160:24]
  wire  _GEN_257 = out_shake_hand ? _GEN_239 : _GEN_181; // @[TxBufferFifo.scala 160:24]
  wire  _GEN_265 = info_buf_reg_0_pre_valid | _GEN_256; // @[TxBufferFifo.scala 178:37 180:29]
  wire  _GEN_267 = info_buf_reg_1_pre_valid | _GEN_257; // @[TxBufferFifo.scala 178:37 180:29]
  wire [13:0] _GEN_277 = reset ? 14'h0 : _GEN_167; // @[TxBufferFifo.scala 46:{29,29}]
  assign data_buf_reg_rd_data_en = data_buf_reg_rd_data_en_pipe_0;
  assign data_buf_reg_rd_data_addr = data_buf_reg_rd_data_addr_pipe_0;
  assign data_buf_reg_rd_data_data = data_buf_reg[data_buf_reg_rd_data_addr]; // @[TxBufferFifo.scala 40:33]
  assign data_buf_reg_MPORT_data = io_in_tdata;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_reset_counter ? 1'h0 : _GEN_160;
  assign io_in_tready = ~buf_full; // @[TxBufferFifo.scala 54:19]
  assign io_out_tdata = _GEN_276 == _io_out_tdata_T & _GEN_199 ? _io_out_tdata_T_15 : data_buf_reg_rd_data_data; // @[TxBufferFifo.scala 153:22]
  assign io_out_tvalid = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[TxBufferFifo.scala 141:{17,17}]
  assign io_out_tlast = io_out_tvalid & _GEN_193 == 6'h1; // @[TxBufferFifo.scala 142:34]
  assign io_h2c_pack_counter = pack_counter; // @[TxBufferFifo.scala 58:23]
  assign io_h2c_err_counter = err_counter; // @[TxBufferFifo.scala 59:22]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[TxBufferFifo.scala 40:33]
    end
    data_buf_reg_rd_data_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      data_buf_reg_rd_data_addr_pipe_0 <= _rd_data_T[5:0];
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_0_used <= 1'h0; // @[TxBufferFifo.scala 43:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 165:34]
          info_buf_reg_0_used <= 1'h0; // @[TxBufferFifo.scala 165:34]
        end else begin
          info_buf_reg_0_used <= _GEN_182;
        end
      end else begin
        info_buf_reg_0_used <= _GEN_182;
      end
    end else begin
      info_buf_reg_0_used <= _GEN_182;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_0_valid <= 1'h0; // @[TxBufferFifo.scala 43:29]
    end else begin
      info_buf_reg_0_valid <= _GEN_265;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_0_pre_valid <= 1'h0; // @[TxBufferFifo.scala 43:29]
    end else if (info_buf_reg_0_pre_valid) begin // @[TxBufferFifo.scala 178:37]
      info_buf_reg_0_pre_valid <= 1'h0; // @[TxBufferFifo.scala 179:33]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        info_buf_reg_0_pre_valid <= _GEN_216;
      end else begin
        info_buf_reg_0_pre_valid <= _GEN_178;
      end
    end else begin
      info_buf_reg_0_pre_valid <= _GEN_178;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_0_chksum_offload <= 1'h0; // @[TxBufferFifo.scala 43:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 165:34]
          info_buf_reg_0_chksum_offload <= 1'h0; // @[TxBufferFifo.scala 165:34]
        end else begin
          info_buf_reg_0_chksum_offload <= _GEN_176;
        end
      end else begin
        info_buf_reg_0_chksum_offload <= _GEN_176;
      end
    end else begin
      info_buf_reg_0_chksum_offload <= _GEN_176;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_0_pkt_type <= 2'h0; // @[TxBufferFifo.scala 43:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 165:34]
          info_buf_reg_0_pkt_type <= 2'h0; // @[TxBufferFifo.scala 165:34]
        end else begin
          info_buf_reg_0_pkt_type <= _GEN_174;
        end
      end else begin
        info_buf_reg_0_pkt_type <= _GEN_174;
      end
    end else begin
      info_buf_reg_0_pkt_type <= _GEN_174;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_0_ip_chksum <= 16'h0; // @[TxBufferFifo.scala 43:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 165:34]
          info_buf_reg_0_ip_chksum <= 16'h0; // @[TxBufferFifo.scala 165:34]
        end else begin
          info_buf_reg_0_ip_chksum <= _GEN_172;
        end
      end else begin
        info_buf_reg_0_ip_chksum <= _GEN_172;
      end
    end else begin
      info_buf_reg_0_ip_chksum <= _GEN_172;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_0_tcp_chksum <= 16'h0; // @[TxBufferFifo.scala 43:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 165:34]
          info_buf_reg_0_tcp_chksum <= 16'h0; // @[TxBufferFifo.scala 165:34]
        end else begin
          info_buf_reg_0_tcp_chksum <= _GEN_170;
        end
      end else begin
        info_buf_reg_0_tcp_chksum <= _GEN_170;
      end
    end else begin
      info_buf_reg_0_tcp_chksum <= _GEN_170;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_0_burst <= 6'h0; // @[TxBufferFifo.scala 43:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 165:34]
          info_buf_reg_0_burst <= 6'h0; // @[TxBufferFifo.scala 165:34]
        end else begin
          info_buf_reg_0_burst <= _GEN_168;
        end
      end else if (~rd_index_reg[0]) begin // @[TxBufferFifo.scala 168:40]
        info_buf_reg_0_burst <= _info_buf_reg_burst_T_5; // @[TxBufferFifo.scala 168:40]
      end else begin
        info_buf_reg_0_burst <= _GEN_168;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_168;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_1_used <= 1'h0; // @[TxBufferFifo.scala 43:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 165:34]
          info_buf_reg_1_used <= 1'h0; // @[TxBufferFifo.scala 165:34]
        end else begin
          info_buf_reg_1_used <= _GEN_183;
        end
      end else begin
        info_buf_reg_1_used <= _GEN_183;
      end
    end else begin
      info_buf_reg_1_used <= _GEN_183;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_1_valid <= 1'h0; // @[TxBufferFifo.scala 43:29]
    end else begin
      info_buf_reg_1_valid <= _GEN_267;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_1_pre_valid <= 1'h0; // @[TxBufferFifo.scala 43:29]
    end else if (info_buf_reg_1_pre_valid) begin // @[TxBufferFifo.scala 178:37]
      info_buf_reg_1_pre_valid <= 1'h0; // @[TxBufferFifo.scala 179:33]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        info_buf_reg_1_pre_valid <= _GEN_217;
      end else begin
        info_buf_reg_1_pre_valid <= _GEN_179;
      end
    end else begin
      info_buf_reg_1_pre_valid <= _GEN_179;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_1_chksum_offload <= 1'h0; // @[TxBufferFifo.scala 43:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 165:34]
          info_buf_reg_1_chksum_offload <= 1'h0; // @[TxBufferFifo.scala 165:34]
        end else begin
          info_buf_reg_1_chksum_offload <= _GEN_177;
        end
      end else begin
        info_buf_reg_1_chksum_offload <= _GEN_177;
      end
    end else begin
      info_buf_reg_1_chksum_offload <= _GEN_177;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_1_pkt_type <= 2'h0; // @[TxBufferFifo.scala 43:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 165:34]
          info_buf_reg_1_pkt_type <= 2'h0; // @[TxBufferFifo.scala 165:34]
        end else begin
          info_buf_reg_1_pkt_type <= _GEN_175;
        end
      end else begin
        info_buf_reg_1_pkt_type <= _GEN_175;
      end
    end else begin
      info_buf_reg_1_pkt_type <= _GEN_175;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_1_ip_chksum <= 16'h0; // @[TxBufferFifo.scala 43:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 165:34]
          info_buf_reg_1_ip_chksum <= 16'h0; // @[TxBufferFifo.scala 165:34]
        end else begin
          info_buf_reg_1_ip_chksum <= _GEN_173;
        end
      end else begin
        info_buf_reg_1_ip_chksum <= _GEN_173;
      end
    end else begin
      info_buf_reg_1_ip_chksum <= _GEN_173;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_1_tcp_chksum <= 16'h0; // @[TxBufferFifo.scala 43:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 165:34]
          info_buf_reg_1_tcp_chksum <= 16'h0; // @[TxBufferFifo.scala 165:34]
        end else begin
          info_buf_reg_1_tcp_chksum <= _GEN_171;
        end
      end else begin
        info_buf_reg_1_tcp_chksum <= _GEN_171;
      end
    end else begin
      info_buf_reg_1_tcp_chksum <= _GEN_171;
    end
    if (reset) begin // @[TxBufferFifo.scala 43:29]
      info_buf_reg_1_burst <= 6'h0; // @[TxBufferFifo.scala 43:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 165:34]
          info_buf_reg_1_burst <= 6'h0; // @[TxBufferFifo.scala 165:34]
        end else begin
          info_buf_reg_1_burst <= _GEN_169;
        end
      end else if (rd_index_reg[0]) begin // @[TxBufferFifo.scala 168:40]
        info_buf_reg_1_burst <= _info_buf_reg_burst_T_5; // @[TxBufferFifo.scala 168:40]
      end else begin
        info_buf_reg_1_burst <= _GEN_169;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_169;
    end
    if (reset) begin // @[TxBufferFifo.scala 44:29]
      wr_index_reg <= 7'h0; // @[TxBufferFifo.scala 44:29]
    end else if (!(io_reset_counter)) begin // @[TxBufferFifo.scala 77:26]
      if (in_shake_hand) begin // @[TxBufferFifo.scala 81:31]
        if (!(_GEN_2 == 6'h20)) begin // @[TxBufferFifo.scala 85:63]
          wr_index_reg <= _GEN_110;
        end
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 45:29]
      rd_index_reg <= 7'h0; // @[TxBufferFifo.scala 45:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 160:24]
      if (_io_out_tlast_T_1) begin // @[TxBufferFifo.scala 164:53]
        rd_index_reg <= _rd_pos_next_T_2; // @[TxBufferFifo.scala 166:20]
      end
    end
    wr_pos_reg <= _GEN_277[6:0]; // @[TxBufferFifo.scala 46:{29,29}]
    if (reset) begin // @[TxBufferFifo.scala 47:29]
      rd_pos_reg <= 7'h0; // @[TxBufferFifo.scala 47:29]
    end else if (out_shake_hand) begin // @[TxBufferFifo.scala 145:33]
      rd_pos_reg <= rd_pos_next;
    end
    if (reset) begin // @[TxBufferFifo.scala 55:29]
      pack_counter <= 32'h0; // @[TxBufferFifo.scala 55:29]
    end else if (io_reset_counter) begin // @[TxBufferFifo.scala 77:26]
      pack_counter <= 32'h0; // @[TxBufferFifo.scala 78:18]
    end else if (in_shake_hand) begin // @[TxBufferFifo.scala 81:31]
      if (io_in_tlast) begin // @[TxBufferFifo.scala 82:26]
        pack_counter <= _pack_counter_T_1; // @[TxBufferFifo.scala 83:22]
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 56:28]
      err_counter <= 32'h0; // @[TxBufferFifo.scala 56:28]
    end else if (io_reset_counter) begin // @[TxBufferFifo.scala 77:26]
      err_counter <= 32'h0; // @[TxBufferFifo.scala 79:17]
    end else if (in_shake_hand) begin // @[TxBufferFifo.scala 81:31]
      if (_GEN_2 == 6'h20) begin // @[TxBufferFifo.scala 85:63]
        err_counter <= _err_counter_T_1; // @[TxBufferFifo.scala 98:21]
      end
    end
    if (reset) begin // @[TxBufferFifo.scala 63:30]
      is_overflowed <= 1'h0; // @[TxBufferFifo.scala 63:30]
    end else if (!(io_reset_counter)) begin // @[TxBufferFifo.scala 77:26]
      if (in_shake_hand) begin // @[TxBufferFifo.scala 81:31]
        if (_GEN_2 == 6'h20) begin // @[TxBufferFifo.scala 85:63]
          is_overflowed <= _GEN_3;
        end else begin
          is_overflowed <= _GEN_112;
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
  info_buf_reg_0_pre_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  info_buf_reg_0_chksum_offload = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  info_buf_reg_0_pkt_type = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  info_buf_reg_0_ip_chksum = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  info_buf_reg_0_tcp_chksum = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  info_buf_reg_0_burst = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  info_buf_reg_1_used = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  info_buf_reg_1_valid = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  info_buf_reg_1_pre_valid = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  info_buf_reg_1_chksum_offload = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  info_buf_reg_1_pkt_type = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  info_buf_reg_1_ip_chksum = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  info_buf_reg_1_tcp_chksum = _RAND_17[15:0];
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
  is_overflowed = _RAND_25[0:0];
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
  output [31:0]  io_h2c_err_counter,
  input  [15:0]  io_extern_config_c2h_match_op,
  input  [31:0]  io_extern_config_c2h_match_arg_0,
  input  [31:0]  io_extern_config_c2h_match_arg_1,
  input  [31:0]  io_extern_config_c2h_match_arg_2,
  input  [31:0]  io_extern_config_c2h_match_arg_3,
  input  [31:0]  io_extern_config_c2h_match_arg_4,
  input  [31:0]  io_extern_config_c2h_match_arg_5,
  input  [31:0]  io_extern_config_c2h_match_arg_6,
  input  [31:0]  io_extern_config_c2h_match_arg_7,
  input  [31:0]  io_extern_config_c2h_match_arg_8,
  input  [31:0]  io_extern_config_c2h_match_arg_9,
  input  [31:0]  io_extern_config_c2h_match_arg_10,
  input  [31:0]  io_extern_config_c2h_match_arg_11,
  input  [31:0]  io_extern_config_c2h_match_arg_12,
  input  [31:0]  io_extern_config_c2h_match_arg_13,
  input  [31:0]  io_extern_config_c2h_match_arg_14,
  input  [31:0]  io_extern_config_c2h_match_arg_15
);
  wire  tx_converter_clock; // @[TxHandler.scala 20:28]
  wire  tx_converter_reset; // @[TxHandler.scala 20:28]
  wire [511:0] tx_converter_io_in_tdata; // @[TxHandler.scala 20:28]
  wire  tx_converter_io_in_tvalid; // @[TxHandler.scala 20:28]
  wire  tx_converter_io_in_tready; // @[TxHandler.scala 20:28]
  wire  tx_converter_io_in_tlast; // @[TxHandler.scala 20:28]
  wire  tx_converter_io_in_tuser; // @[TxHandler.scala 20:28]
  wire [511:0] tx_converter_io_out_tdata; // @[TxHandler.scala 20:28]
  wire  tx_converter_io_out_tvalid; // @[TxHandler.scala 20:28]
  wire  tx_converter_io_out_tready; // @[TxHandler.scala 20:28]
  wire  tx_converter_io_out_tlast; // @[TxHandler.scala 20:28]
  wire [15:0] tx_converter_io_out_extern_config_c2h_match_op; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_out_extern_config_c2h_match_arg_12; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_out_extern_config_c2h_match_arg_13; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_out_extern_config_c2h_match_arg_14; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_out_extern_config_c2h_match_arg_15; // @[TxHandler.scala 20:28]
  wire [15:0] tx_converter_io_extern_config_c2h_match_op; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_0; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_1; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_2; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_3; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_4; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_5; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_6; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_7; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_8; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_9; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_10; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_11; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_12; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_13; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_14; // @[TxHandler.scala 20:28]
  wire [31:0] tx_converter_io_extern_config_c2h_match_arg_15; // @[TxHandler.scala 20:28]
  wire  tx_pipeline_clock; // @[TxHandler.scala 24:27]
  wire  tx_pipeline_reset; // @[TxHandler.scala 24:27]
  wire [511:0] tx_pipeline_io_in_tdata; // @[TxHandler.scala 24:27]
  wire  tx_pipeline_io_in_tvalid; // @[TxHandler.scala 24:27]
  wire  tx_pipeline_io_in_tready; // @[TxHandler.scala 24:27]
  wire  tx_pipeline_io_in_tlast; // @[TxHandler.scala 24:27]
  wire [15:0] tx_pipeline_io_in_extern_config_c2h_match_op; // @[TxHandler.scala 24:27]
  wire [31:0] tx_pipeline_io_in_extern_config_c2h_match_arg_12; // @[TxHandler.scala 24:27]
  wire [31:0] tx_pipeline_io_in_extern_config_c2h_match_arg_13; // @[TxHandler.scala 24:27]
  wire [31:0] tx_pipeline_io_in_extern_config_c2h_match_arg_14; // @[TxHandler.scala 24:27]
  wire [31:0] tx_pipeline_io_in_extern_config_c2h_match_arg_15; // @[TxHandler.scala 24:27]
  wire [511:0] tx_pipeline_io_out_tdata; // @[TxHandler.scala 24:27]
  wire  tx_pipeline_io_out_tvalid; // @[TxHandler.scala 24:27]
  wire  tx_pipeline_io_out_tready; // @[TxHandler.scala 24:27]
  wire  tx_pipeline_io_out_tlast; // @[TxHandler.scala 24:27]
  wire [15:0] tx_pipeline_io_out_extern_config_c2h_match_op; // @[TxHandler.scala 24:27]
  wire  tx_buffer_fifo_clock; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_reset; // @[TxHandler.scala 27:30]
  wire [511:0] tx_buffer_fifo_io_in_tdata; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_in_tvalid; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_in_tready; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_in_tlast; // @[TxHandler.scala 27:30]
  wire [15:0] tx_buffer_fifo_io_in_extern_config_c2h_match_op; // @[TxHandler.scala 27:30]
  wire [511:0] tx_buffer_fifo_io_out_tdata; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_out_tvalid; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_out_tready; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_out_tlast; // @[TxHandler.scala 27:30]
  wire  tx_buffer_fifo_io_reset_counter; // @[TxHandler.scala 27:30]
  wire [31:0] tx_buffer_fifo_io_h2c_pack_counter; // @[TxHandler.scala 27:30]
  wire [31:0] tx_buffer_fifo_io_h2c_err_counter; // @[TxHandler.scala 27:30]
  TxConverter tx_converter ( // @[TxHandler.scala 20:28]
    .clock(tx_converter_clock),
    .reset(tx_converter_reset),
    .io_in_tdata(tx_converter_io_in_tdata),
    .io_in_tvalid(tx_converter_io_in_tvalid),
    .io_in_tready(tx_converter_io_in_tready),
    .io_in_tlast(tx_converter_io_in_tlast),
    .io_in_tuser(tx_converter_io_in_tuser),
    .io_out_tdata(tx_converter_io_out_tdata),
    .io_out_tvalid(tx_converter_io_out_tvalid),
    .io_out_tready(tx_converter_io_out_tready),
    .io_out_tlast(tx_converter_io_out_tlast),
    .io_out_extern_config_c2h_match_op(tx_converter_io_out_extern_config_c2h_match_op),
    .io_out_extern_config_c2h_match_arg_12(tx_converter_io_out_extern_config_c2h_match_arg_12),
    .io_out_extern_config_c2h_match_arg_13(tx_converter_io_out_extern_config_c2h_match_arg_13),
    .io_out_extern_config_c2h_match_arg_14(tx_converter_io_out_extern_config_c2h_match_arg_14),
    .io_out_extern_config_c2h_match_arg_15(tx_converter_io_out_extern_config_c2h_match_arg_15),
    .io_extern_config_c2h_match_op(tx_converter_io_extern_config_c2h_match_op),
    .io_extern_config_c2h_match_arg_0(tx_converter_io_extern_config_c2h_match_arg_0),
    .io_extern_config_c2h_match_arg_1(tx_converter_io_extern_config_c2h_match_arg_1),
    .io_extern_config_c2h_match_arg_2(tx_converter_io_extern_config_c2h_match_arg_2),
    .io_extern_config_c2h_match_arg_3(tx_converter_io_extern_config_c2h_match_arg_3),
    .io_extern_config_c2h_match_arg_4(tx_converter_io_extern_config_c2h_match_arg_4),
    .io_extern_config_c2h_match_arg_5(tx_converter_io_extern_config_c2h_match_arg_5),
    .io_extern_config_c2h_match_arg_6(tx_converter_io_extern_config_c2h_match_arg_6),
    .io_extern_config_c2h_match_arg_7(tx_converter_io_extern_config_c2h_match_arg_7),
    .io_extern_config_c2h_match_arg_8(tx_converter_io_extern_config_c2h_match_arg_8),
    .io_extern_config_c2h_match_arg_9(tx_converter_io_extern_config_c2h_match_arg_9),
    .io_extern_config_c2h_match_arg_10(tx_converter_io_extern_config_c2h_match_arg_10),
    .io_extern_config_c2h_match_arg_11(tx_converter_io_extern_config_c2h_match_arg_11),
    .io_extern_config_c2h_match_arg_12(tx_converter_io_extern_config_c2h_match_arg_12),
    .io_extern_config_c2h_match_arg_13(tx_converter_io_extern_config_c2h_match_arg_13),
    .io_extern_config_c2h_match_arg_14(tx_converter_io_extern_config_c2h_match_arg_14),
    .io_extern_config_c2h_match_arg_15(tx_converter_io_extern_config_c2h_match_arg_15)
  );
  TxPipeline tx_pipeline ( // @[TxHandler.scala 24:27]
    .clock(tx_pipeline_clock),
    .reset(tx_pipeline_reset),
    .io_in_tdata(tx_pipeline_io_in_tdata),
    .io_in_tvalid(tx_pipeline_io_in_tvalid),
    .io_in_tready(tx_pipeline_io_in_tready),
    .io_in_tlast(tx_pipeline_io_in_tlast),
    .io_in_extern_config_c2h_match_op(tx_pipeline_io_in_extern_config_c2h_match_op),
    .io_in_extern_config_c2h_match_arg_12(tx_pipeline_io_in_extern_config_c2h_match_arg_12),
    .io_in_extern_config_c2h_match_arg_13(tx_pipeline_io_in_extern_config_c2h_match_arg_13),
    .io_in_extern_config_c2h_match_arg_14(tx_pipeline_io_in_extern_config_c2h_match_arg_14),
    .io_in_extern_config_c2h_match_arg_15(tx_pipeline_io_in_extern_config_c2h_match_arg_15),
    .io_out_tdata(tx_pipeline_io_out_tdata),
    .io_out_tvalid(tx_pipeline_io_out_tvalid),
    .io_out_tready(tx_pipeline_io_out_tready),
    .io_out_tlast(tx_pipeline_io_out_tlast),
    .io_out_extern_config_c2h_match_op(tx_pipeline_io_out_extern_config_c2h_match_op)
  );
  TxBufferFifo tx_buffer_fifo ( // @[TxHandler.scala 27:30]
    .clock(tx_buffer_fifo_clock),
    .reset(tx_buffer_fifo_reset),
    .io_in_tdata(tx_buffer_fifo_io_in_tdata),
    .io_in_tvalid(tx_buffer_fifo_io_in_tvalid),
    .io_in_tready(tx_buffer_fifo_io_in_tready),
    .io_in_tlast(tx_buffer_fifo_io_in_tlast),
    .io_in_extern_config_c2h_match_op(tx_buffer_fifo_io_in_extern_config_c2h_match_op),
    .io_out_tdata(tx_buffer_fifo_io_out_tdata),
    .io_out_tvalid(tx_buffer_fifo_io_out_tvalid),
    .io_out_tready(tx_buffer_fifo_io_out_tready),
    .io_out_tlast(tx_buffer_fifo_io_out_tlast),
    .io_reset_counter(tx_buffer_fifo_io_reset_counter),
    .io_h2c_pack_counter(tx_buffer_fifo_io_h2c_pack_counter),
    .io_h2c_err_counter(tx_buffer_fifo_io_h2c_err_counter)
  );
  assign io_QDMA_h2c_stub_out_tready = tx_converter_io_in_tready; // @[TxHandler.scala 21:32]
  assign io_CMAC_in_tdata = tx_buffer_fifo_io_out_tdata; // @[TxHandler.scala 29:35]
  assign io_CMAC_in_tvalid = tx_buffer_fifo_io_out_tvalid; // @[TxHandler.scala 29:35]
  assign io_CMAC_in_tlast = tx_buffer_fifo_io_out_tlast; // @[TxHandler.scala 29:35]
  assign io_h2c_pack_counter = tx_buffer_fifo_io_h2c_pack_counter; // @[TxHandler.scala 31:35]
  assign io_h2c_err_counter = tx_buffer_fifo_io_h2c_err_counter; // @[TxHandler.scala 32:35]
  assign tx_converter_clock = clock;
  assign tx_converter_reset = reset;
  assign tx_converter_io_in_tdata = io_QDMA_h2c_stub_out_tdata; // @[TxHandler.scala 21:32]
  assign tx_converter_io_in_tvalid = io_QDMA_h2c_stub_out_tvalid; // @[TxHandler.scala 21:32]
  assign tx_converter_io_in_tlast = io_QDMA_h2c_stub_out_tlast; // @[TxHandler.scala 21:32]
  assign tx_converter_io_in_tuser = io_QDMA_h2c_stub_out_tuser; // @[TxHandler.scala 21:32]
  assign tx_converter_io_out_tready = tx_pipeline_io_in_tready; // @[TxHandler.scala 25:23]
  assign tx_converter_io_extern_config_c2h_match_op = io_extern_config_c2h_match_op; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_0 = io_extern_config_c2h_match_arg_0; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_1 = io_extern_config_c2h_match_arg_1; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_2 = io_extern_config_c2h_match_arg_2; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_3 = io_extern_config_c2h_match_arg_3; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_4 = io_extern_config_c2h_match_arg_4; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_5 = io_extern_config_c2h_match_arg_5; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_6 = io_extern_config_c2h_match_arg_6; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_7 = io_extern_config_c2h_match_arg_7; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_8 = io_extern_config_c2h_match_arg_8; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_9 = io_extern_config_c2h_match_arg_9; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_10 = io_extern_config_c2h_match_arg_10; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_11 = io_extern_config_c2h_match_arg_11; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_12 = io_extern_config_c2h_match_arg_12; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_13 = io_extern_config_c2h_match_arg_13; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_14 = io_extern_config_c2h_match_arg_14; // @[TxHandler.scala 22:33]
  assign tx_converter_io_extern_config_c2h_match_arg_15 = io_extern_config_c2h_match_arg_15; // @[TxHandler.scala 22:33]
  assign tx_pipeline_clock = clock;
  assign tx_pipeline_reset = reset;
  assign tx_pipeline_io_in_tdata = tx_converter_io_out_tdata; // @[TxHandler.scala 25:23]
  assign tx_pipeline_io_in_tvalid = tx_converter_io_out_tvalid; // @[TxHandler.scala 25:23]
  assign tx_pipeline_io_in_tlast = tx_converter_io_out_tlast; // @[TxHandler.scala 25:23]
  assign tx_pipeline_io_in_extern_config_c2h_match_op = tx_converter_io_out_extern_config_c2h_match_op; // @[TxHandler.scala 25:23]
  assign tx_pipeline_io_in_extern_config_c2h_match_arg_12 = tx_converter_io_out_extern_config_c2h_match_arg_12; // @[TxHandler.scala 25:23]
  assign tx_pipeline_io_in_extern_config_c2h_match_arg_13 = tx_converter_io_out_extern_config_c2h_match_arg_13; // @[TxHandler.scala 25:23]
  assign tx_pipeline_io_in_extern_config_c2h_match_arg_14 = tx_converter_io_out_extern_config_c2h_match_arg_14; // @[TxHandler.scala 25:23]
  assign tx_pipeline_io_in_extern_config_c2h_match_arg_15 = tx_converter_io_out_extern_config_c2h_match_arg_15; // @[TxHandler.scala 25:23]
  assign tx_pipeline_io_out_tready = tx_buffer_fifo_io_in_tready; // @[TxHandler.scala 28:35]
  assign tx_buffer_fifo_clock = clock;
  assign tx_buffer_fifo_reset = reset;
  assign tx_buffer_fifo_io_in_tdata = tx_pipeline_io_out_tdata; // @[TxHandler.scala 28:35]
  assign tx_buffer_fifo_io_in_tvalid = tx_pipeline_io_out_tvalid; // @[TxHandler.scala 28:35]
  assign tx_buffer_fifo_io_in_tlast = tx_pipeline_io_out_tlast; // @[TxHandler.scala 28:35]
  assign tx_buffer_fifo_io_in_extern_config_c2h_match_op = tx_pipeline_io_out_extern_config_c2h_match_op; // @[TxHandler.scala 28:35]
  assign tx_buffer_fifo_io_out_tready = io_CMAC_in_tready; // @[TxHandler.scala 29:35]
  assign tx_buffer_fifo_io_reset_counter = io_reset_counter; // @[TxHandler.scala 30:35]
endmodule
module ReduceAddSync(
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
  reg [7:0] cal_reg_0; // @[Misc.scala 35:20]
  reg [7:0] cal_reg_1; // @[Misc.scala 35:20]
  reg [7:0] cal_reg_2; // @[Misc.scala 35:20]
  reg [7:0] cal_reg_3; // @[Misc.scala 35:20]
  reg [7:0] cal_reg_4; // @[Misc.scala 35:20]
  reg [7:0] cal_reg_5; // @[Misc.scala 35:20]
  reg [7:0] cal_reg_6; // @[Misc.scala 35:20]
  reg [7:0] cal_reg_7; // @[Misc.scala 35:20]
  wire [7:0] _cal_reg_0_T_1 = io_in_vec_0 + io_in_vec_1; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_0_T_3 = io_in_vec_2 + io_in_vec_3; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_0_T_5 = io_in_vec_4 + io_in_vec_5; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_0_T_7 = io_in_vec_6 + io_in_vec_7; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_0_T_9 = _cal_reg_0_T_1 + _cal_reg_0_T_3; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_0_T_11 = _cal_reg_0_T_5 + _cal_reg_0_T_7; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_1_T_1 = io_in_vec_8 + io_in_vec_9; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_1_T_3 = io_in_vec_10 + io_in_vec_11; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_1_T_5 = io_in_vec_12 + io_in_vec_13; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_1_T_7 = io_in_vec_14 + io_in_vec_15; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_1_T_9 = _cal_reg_1_T_1 + _cal_reg_1_T_3; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_1_T_11 = _cal_reg_1_T_5 + _cal_reg_1_T_7; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_2_T_1 = io_in_vec_16 + io_in_vec_17; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_2_T_3 = io_in_vec_18 + io_in_vec_19; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_2_T_5 = io_in_vec_20 + io_in_vec_21; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_2_T_7 = io_in_vec_22 + io_in_vec_23; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_2_T_9 = _cal_reg_2_T_1 + _cal_reg_2_T_3; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_2_T_11 = _cal_reg_2_T_5 + _cal_reg_2_T_7; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_3_T_1 = io_in_vec_24 + io_in_vec_25; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_3_T_3 = io_in_vec_26 + io_in_vec_27; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_3_T_5 = io_in_vec_28 + io_in_vec_29; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_3_T_7 = io_in_vec_30 + io_in_vec_31; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_3_T_9 = _cal_reg_3_T_1 + _cal_reg_3_T_3; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_3_T_11 = _cal_reg_3_T_5 + _cal_reg_3_T_7; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_4_T_1 = io_in_vec_32 + io_in_vec_33; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_4_T_3 = io_in_vec_34 + io_in_vec_35; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_4_T_5 = io_in_vec_36 + io_in_vec_37; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_4_T_7 = io_in_vec_38 + io_in_vec_39; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_4_T_9 = _cal_reg_4_T_1 + _cal_reg_4_T_3; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_4_T_11 = _cal_reg_4_T_5 + _cal_reg_4_T_7; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_5_T_1 = io_in_vec_40 + io_in_vec_41; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_5_T_3 = io_in_vec_42 + io_in_vec_43; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_5_T_5 = io_in_vec_44 + io_in_vec_45; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_5_T_7 = io_in_vec_46 + io_in_vec_47; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_5_T_9 = _cal_reg_5_T_1 + _cal_reg_5_T_3; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_5_T_11 = _cal_reg_5_T_5 + _cal_reg_5_T_7; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_6_T_1 = io_in_vec_48 + io_in_vec_49; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_6_T_3 = io_in_vec_50 + io_in_vec_51; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_6_T_5 = io_in_vec_52 + io_in_vec_53; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_6_T_7 = io_in_vec_54 + io_in_vec_55; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_6_T_9 = _cal_reg_6_T_1 + _cal_reg_6_T_3; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_6_T_11 = _cal_reg_6_T_5 + _cal_reg_6_T_7; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_7_T_1 = io_in_vec_56 + io_in_vec_57; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_7_T_3 = io_in_vec_58 + io_in_vec_59; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_7_T_5 = io_in_vec_60 + io_in_vec_61; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_7_T_7 = io_in_vec_62 + io_in_vec_63; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_7_T_9 = _cal_reg_7_T_1 + _cal_reg_7_T_3; // @[Misc.scala 50:42]
  wire [7:0] _cal_reg_7_T_11 = _cal_reg_7_T_5 + _cal_reg_7_T_7; // @[Misc.scala 50:42]
  wire [7:0] _io_out_sum_T_1 = cal_reg_0 + cal_reg_1; // @[Misc.scala 52:37]
  wire [7:0] _io_out_sum_T_3 = cal_reg_2 + cal_reg_3; // @[Misc.scala 52:37]
  wire [7:0] _io_out_sum_T_5 = cal_reg_4 + cal_reg_5; // @[Misc.scala 52:37]
  wire [7:0] _io_out_sum_T_7 = cal_reg_6 + cal_reg_7; // @[Misc.scala 52:37]
  wire [7:0] _io_out_sum_T_9 = _io_out_sum_T_1 + _io_out_sum_T_3; // @[Misc.scala 52:37]
  wire [7:0] _io_out_sum_T_11 = _io_out_sum_T_5 + _io_out_sum_T_7; // @[Misc.scala 52:37]
  assign io_out_sum = _io_out_sum_T_9 + _io_out_sum_T_11; // @[Misc.scala 52:37]
  always @(posedge clock) begin
    cal_reg_0 <= _cal_reg_0_T_9 + _cal_reg_0_T_11; // @[Misc.scala 50:42]
    cal_reg_1 <= _cal_reg_1_T_9 + _cal_reg_1_T_11; // @[Misc.scala 50:42]
    cal_reg_2 <= _cal_reg_2_T_9 + _cal_reg_2_T_11; // @[Misc.scala 50:42]
    cal_reg_3 <= _cal_reg_3_T_9 + _cal_reg_3_T_11; // @[Misc.scala 50:42]
    cal_reg_4 <= _cal_reg_4_T_9 + _cal_reg_4_T_11; // @[Misc.scala 50:42]
    cal_reg_5 <= _cal_reg_5_T_9 + _cal_reg_5_T_11; // @[Misc.scala 50:42]
    cal_reg_6 <= _cal_reg_6_T_9 + _cal_reg_6_T_11; // @[Misc.scala 50:42]
    cal_reg_7 <= _cal_reg_7_T_9 + _cal_reg_7_T_11; // @[Misc.scala 50:42]
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
  output [15:0]  io_out_extern_config_c2h_match_op,
  output [31:0]  io_out_extern_config_c2h_match_arg_12,
  output [31:0]  io_out_extern_config_c2h_match_arg_13,
  output [31:0]  io_out_extern_config_c2h_match_arg_14,
  output [31:0]  io_out_extern_config_c2h_match_arg_15,
  input  [15:0]  io_extern_config_c2h_match_op,
  input  [31:0]  io_extern_config_c2h_match_arg_0,
  input  [31:0]  io_extern_config_c2h_match_arg_1,
  input  [31:0]  io_extern_config_c2h_match_arg_2,
  input  [31:0]  io_extern_config_c2h_match_arg_3,
  input  [31:0]  io_extern_config_c2h_match_arg_4,
  input  [31:0]  io_extern_config_c2h_match_arg_5,
  input  [31:0]  io_extern_config_c2h_match_arg_6,
  input  [31:0]  io_extern_config_c2h_match_arg_7,
  input  [31:0]  io_extern_config_c2h_match_arg_8,
  input  [31:0]  io_extern_config_c2h_match_arg_9,
  input  [31:0]  io_extern_config_c2h_match_arg_10,
  input  [31:0]  io_extern_config_c2h_match_arg_11,
  input  [31:0]  io_extern_config_c2h_match_arg_12,
  input  [31:0]  io_extern_config_c2h_match_arg_13,
  input  [31:0]  io_extern_config_c2h_match_arg_14,
  input  [31:0]  io_extern_config_c2h_match_arg_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [607:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [543:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  burst_size_cal_clock; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_0; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_1; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_2; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_3; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_4; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_5; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_6; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_7; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_8; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_9; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_10; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_11; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_12; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_13; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_14; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_15; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_16; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_17; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_18; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_19; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_20; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_21; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_22; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_23; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_24; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_25; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_26; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_27; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_28; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_29; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_30; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_31; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_32; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_33; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_34; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_35; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_36; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_37; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_38; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_39; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_40; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_41; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_42; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_43; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_44; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_45; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_46; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_47; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_48; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_49; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_50; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_51; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_52; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_53; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_54; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_55; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_56; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_57; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_58; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_59; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_60; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_61; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_62; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_in_vec_63; // @[RxConverter.scala 28:30]
  wire [7:0] burst_size_cal_io_out_sum; // @[RxConverter.scala 28:30]
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
  wire [255:0] extern_config_reg_lo = {io_extern_config_c2h_match_arg_7,io_extern_config_c2h_match_arg_6,
    io_extern_config_c2h_match_arg_5,io_extern_config_c2h_match_arg_4,io_extern_config_c2h_match_arg_3,
    io_extern_config_c2h_match_arg_2,io_extern_config_c2h_match_arg_1,io_extern_config_c2h_match_arg_0}; // @[RxConverter.scala 25:54]
  wire [527:0] _extern_config_reg_T = {io_extern_config_c2h_match_op,io_extern_config_c2h_match_arg_15,
    io_extern_config_c2h_match_arg_14,io_extern_config_c2h_match_arg_13,io_extern_config_c2h_match_arg_12,
    io_extern_config_c2h_match_arg_11,io_extern_config_c2h_match_arg_10,io_extern_config_c2h_match_arg_9,
    io_extern_config_c2h_match_arg_8,extern_config_reg_lo}; // @[RxConverter.scala 25:54]
  reg [527:0] extern_config_reg_r; // @[Reg.scala 28:20]
  wire [63:0] cal_tkeep = in_shake_hand ? io_in_tkeep : in_reg_tkeep; // @[RxConverter.scala 27:22]
  reg [15:0] tlen_reg; // @[RxConverter.scala 33:25]
  wire [15:0] _GEN_7 = {{8'd0}, burst_size_cal_io_out_sum}; // @[RxConverter.scala 38:28]
  wire [15:0] _tlen_reg_T_1 = tlen_reg + _GEN_7; // @[RxConverter.scala 38:28]
  wire  keep_val_0 = in_reg_tkeep[0]; // @[RxConverter.scala 44:32]
  wire  keep_val_8 = in_reg_tkeep[1]; // @[RxConverter.scala 44:32]
  wire  keep_val_16 = in_reg_tkeep[2]; // @[RxConverter.scala 44:32]
  wire  keep_val_24 = in_reg_tkeep[3]; // @[RxConverter.scala 44:32]
  wire  keep_val_32 = in_reg_tkeep[4]; // @[RxConverter.scala 44:32]
  wire  keep_val_40 = in_reg_tkeep[5]; // @[RxConverter.scala 44:32]
  wire  keep_val_48 = in_reg_tkeep[6]; // @[RxConverter.scala 44:32]
  wire  keep_val_56 = in_reg_tkeep[7]; // @[RxConverter.scala 44:32]
  wire  keep_val_64 = in_reg_tkeep[8]; // @[RxConverter.scala 44:32]
  wire  keep_val_72 = in_reg_tkeep[9]; // @[RxConverter.scala 44:32]
  wire  keep_val_80 = in_reg_tkeep[10]; // @[RxConverter.scala 44:32]
  wire  keep_val_88 = in_reg_tkeep[11]; // @[RxConverter.scala 44:32]
  wire  keep_val_96 = in_reg_tkeep[12]; // @[RxConverter.scala 44:32]
  wire  keep_val_104 = in_reg_tkeep[13]; // @[RxConverter.scala 44:32]
  wire  keep_val_112 = in_reg_tkeep[14]; // @[RxConverter.scala 44:32]
  wire  keep_val_120 = in_reg_tkeep[15]; // @[RxConverter.scala 44:32]
  wire  keep_val_128 = in_reg_tkeep[16]; // @[RxConverter.scala 44:32]
  wire  keep_val_136 = in_reg_tkeep[17]; // @[RxConverter.scala 44:32]
  wire  keep_val_144 = in_reg_tkeep[18]; // @[RxConverter.scala 44:32]
  wire  keep_val_152 = in_reg_tkeep[19]; // @[RxConverter.scala 44:32]
  wire  keep_val_160 = in_reg_tkeep[20]; // @[RxConverter.scala 44:32]
  wire  keep_val_168 = in_reg_tkeep[21]; // @[RxConverter.scala 44:32]
  wire  keep_val_176 = in_reg_tkeep[22]; // @[RxConverter.scala 44:32]
  wire  keep_val_184 = in_reg_tkeep[23]; // @[RxConverter.scala 44:32]
  wire  keep_val_192 = in_reg_tkeep[24]; // @[RxConverter.scala 44:32]
  wire  keep_val_200 = in_reg_tkeep[25]; // @[RxConverter.scala 44:32]
  wire  keep_val_208 = in_reg_tkeep[26]; // @[RxConverter.scala 44:32]
  wire  keep_val_216 = in_reg_tkeep[27]; // @[RxConverter.scala 44:32]
  wire  keep_val_224 = in_reg_tkeep[28]; // @[RxConverter.scala 44:32]
  wire  keep_val_232 = in_reg_tkeep[29]; // @[RxConverter.scala 44:32]
  wire  keep_val_240 = in_reg_tkeep[30]; // @[RxConverter.scala 44:32]
  wire  keep_val_248 = in_reg_tkeep[31]; // @[RxConverter.scala 44:32]
  wire  keep_val_256 = in_reg_tkeep[32]; // @[RxConverter.scala 44:32]
  wire  keep_val_264 = in_reg_tkeep[33]; // @[RxConverter.scala 44:32]
  wire  keep_val_272 = in_reg_tkeep[34]; // @[RxConverter.scala 44:32]
  wire  keep_val_280 = in_reg_tkeep[35]; // @[RxConverter.scala 44:32]
  wire  keep_val_288 = in_reg_tkeep[36]; // @[RxConverter.scala 44:32]
  wire  keep_val_296 = in_reg_tkeep[37]; // @[RxConverter.scala 44:32]
  wire  keep_val_304 = in_reg_tkeep[38]; // @[RxConverter.scala 44:32]
  wire  keep_val_312 = in_reg_tkeep[39]; // @[RxConverter.scala 44:32]
  wire  keep_val_320 = in_reg_tkeep[40]; // @[RxConverter.scala 44:32]
  wire  keep_val_328 = in_reg_tkeep[41]; // @[RxConverter.scala 44:32]
  wire  keep_val_336 = in_reg_tkeep[42]; // @[RxConverter.scala 44:32]
  wire  keep_val_344 = in_reg_tkeep[43]; // @[RxConverter.scala 44:32]
  wire  keep_val_352 = in_reg_tkeep[44]; // @[RxConverter.scala 44:32]
  wire  keep_val_360 = in_reg_tkeep[45]; // @[RxConverter.scala 44:32]
  wire  keep_val_368 = in_reg_tkeep[46]; // @[RxConverter.scala 44:32]
  wire  keep_val_376 = in_reg_tkeep[47]; // @[RxConverter.scala 44:32]
  wire  keep_val_384 = in_reg_tkeep[48]; // @[RxConverter.scala 44:32]
  wire  keep_val_392 = in_reg_tkeep[49]; // @[RxConverter.scala 44:32]
  wire  keep_val_400 = in_reg_tkeep[50]; // @[RxConverter.scala 44:32]
  wire  keep_val_408 = in_reg_tkeep[51]; // @[RxConverter.scala 44:32]
  wire  keep_val_416 = in_reg_tkeep[52]; // @[RxConverter.scala 44:32]
  wire  keep_val_424 = in_reg_tkeep[53]; // @[RxConverter.scala 44:32]
  wire  keep_val_432 = in_reg_tkeep[54]; // @[RxConverter.scala 44:32]
  wire  keep_val_440 = in_reg_tkeep[55]; // @[RxConverter.scala 44:32]
  wire  keep_val_448 = in_reg_tkeep[56]; // @[RxConverter.scala 44:32]
  wire  keep_val_456 = in_reg_tkeep[57]; // @[RxConverter.scala 44:32]
  wire  keep_val_464 = in_reg_tkeep[58]; // @[RxConverter.scala 44:32]
  wire  keep_val_472 = in_reg_tkeep[59]; // @[RxConverter.scala 44:32]
  wire  keep_val_480 = in_reg_tkeep[60]; // @[RxConverter.scala 44:32]
  wire  keep_val_488 = in_reg_tkeep[61]; // @[RxConverter.scala 44:32]
  wire  keep_val_496 = in_reg_tkeep[62]; // @[RxConverter.scala 44:32]
  wire  keep_val_504 = in_reg_tkeep[63]; // @[RxConverter.scala 44:32]
  wire [7:0] io_out_tdata_lo_lo_lo_lo_lo_lo = {keep_val_0,keep_val_0,keep_val_0,keep_val_0,keep_val_0,keep_val_0,
    keep_val_0,keep_val_0}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_lo_lo_lo_lo_lo = {keep_val_8,keep_val_8,keep_val_8,keep_val_8,keep_val_8,keep_val_8,
    keep_val_8,keep_val_8,io_out_tdata_lo_lo_lo_lo_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_lo_lo_lo_hi_lo = {keep_val_16,keep_val_16,keep_val_16,keep_val_16,keep_val_16,keep_val_16,
    keep_val_16,keep_val_16}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_lo_lo_lo_lo = {keep_val_24,keep_val_24,keep_val_24,keep_val_24,keep_val_24,keep_val_24,
    keep_val_24,keep_val_24,io_out_tdata_lo_lo_lo_lo_hi_lo,io_out_tdata_lo_lo_lo_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_lo_lo_hi_lo_lo = {keep_val_32,keep_val_32,keep_val_32,keep_val_32,keep_val_32,keep_val_32,
    keep_val_32,keep_val_32}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_lo_lo_lo_hi_lo = {keep_val_40,keep_val_40,keep_val_40,keep_val_40,keep_val_40,keep_val_40,
    keep_val_40,keep_val_40,io_out_tdata_lo_lo_lo_hi_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_lo_lo_hi_hi_lo = {keep_val_48,keep_val_48,keep_val_48,keep_val_48,keep_val_48,keep_val_48,
    keep_val_48,keep_val_48}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_lo_lo_lo_hi = {keep_val_56,keep_val_56,keep_val_56,keep_val_56,keep_val_56,keep_val_56,
    keep_val_56,keep_val_56,io_out_tdata_lo_lo_lo_hi_hi_lo,io_out_tdata_lo_lo_lo_hi_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_lo_hi_lo_lo_lo = {keep_val_64,keep_val_64,keep_val_64,keep_val_64,keep_val_64,keep_val_64,
    keep_val_64,keep_val_64}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_lo_lo_hi_lo_lo = {keep_val_72,keep_val_72,keep_val_72,keep_val_72,keep_val_72,keep_val_72,
    keep_val_72,keep_val_72,io_out_tdata_lo_lo_hi_lo_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_lo_hi_lo_hi_lo = {keep_val_80,keep_val_80,keep_val_80,keep_val_80,keep_val_80,keep_val_80,
    keep_val_80,keep_val_80}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_lo_lo_hi_lo = {keep_val_88,keep_val_88,keep_val_88,keep_val_88,keep_val_88,keep_val_88,
    keep_val_88,keep_val_88,io_out_tdata_lo_lo_hi_lo_hi_lo,io_out_tdata_lo_lo_hi_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_lo_hi_hi_lo_lo = {keep_val_96,keep_val_96,keep_val_96,keep_val_96,keep_val_96,keep_val_96,
    keep_val_96,keep_val_96}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_lo_lo_hi_hi_lo = {keep_val_104,keep_val_104,keep_val_104,keep_val_104,keep_val_104,
    keep_val_104,keep_val_104,keep_val_104,io_out_tdata_lo_lo_hi_hi_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_lo_hi_hi_hi_lo = {keep_val_112,keep_val_112,keep_val_112,keep_val_112,keep_val_112,
    keep_val_112,keep_val_112,keep_val_112}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_lo_lo_hi_hi = {keep_val_120,keep_val_120,keep_val_120,keep_val_120,keep_val_120,keep_val_120,
    keep_val_120,keep_val_120,io_out_tdata_lo_lo_hi_hi_hi_lo,io_out_tdata_lo_lo_hi_hi_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_hi_lo_lo_lo_lo = {keep_val_128,keep_val_128,keep_val_128,keep_val_128,keep_val_128,
    keep_val_128,keep_val_128,keep_val_128}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_lo_hi_lo_lo_lo = {keep_val_136,keep_val_136,keep_val_136,keep_val_136,keep_val_136,
    keep_val_136,keep_val_136,keep_val_136,io_out_tdata_lo_hi_lo_lo_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_hi_lo_lo_hi_lo = {keep_val_144,keep_val_144,keep_val_144,keep_val_144,keep_val_144,
    keep_val_144,keep_val_144,keep_val_144}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_lo_hi_lo_lo = {keep_val_152,keep_val_152,keep_val_152,keep_val_152,keep_val_152,keep_val_152,
    keep_val_152,keep_val_152,io_out_tdata_lo_hi_lo_lo_hi_lo,io_out_tdata_lo_hi_lo_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_hi_lo_hi_lo_lo = {keep_val_160,keep_val_160,keep_val_160,keep_val_160,keep_val_160,
    keep_val_160,keep_val_160,keep_val_160}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_lo_hi_lo_hi_lo = {keep_val_168,keep_val_168,keep_val_168,keep_val_168,keep_val_168,
    keep_val_168,keep_val_168,keep_val_168,io_out_tdata_lo_hi_lo_hi_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_hi_lo_hi_hi_lo = {keep_val_176,keep_val_176,keep_val_176,keep_val_176,keep_val_176,
    keep_val_176,keep_val_176,keep_val_176}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_lo_hi_lo_hi = {keep_val_184,keep_val_184,keep_val_184,keep_val_184,keep_val_184,keep_val_184,
    keep_val_184,keep_val_184,io_out_tdata_lo_hi_lo_hi_hi_lo,io_out_tdata_lo_hi_lo_hi_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_hi_hi_lo_lo_lo = {keep_val_192,keep_val_192,keep_val_192,keep_val_192,keep_val_192,
    keep_val_192,keep_val_192,keep_val_192}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_lo_hi_hi_lo_lo = {keep_val_200,keep_val_200,keep_val_200,keep_val_200,keep_val_200,
    keep_val_200,keep_val_200,keep_val_200,io_out_tdata_lo_hi_hi_lo_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_hi_hi_lo_hi_lo = {keep_val_208,keep_val_208,keep_val_208,keep_val_208,keep_val_208,
    keep_val_208,keep_val_208,keep_val_208}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_lo_hi_hi_lo = {keep_val_216,keep_val_216,keep_val_216,keep_val_216,keep_val_216,keep_val_216,
    keep_val_216,keep_val_216,io_out_tdata_lo_hi_hi_lo_hi_lo,io_out_tdata_lo_hi_hi_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_hi_hi_hi_lo_lo = {keep_val_224,keep_val_224,keep_val_224,keep_val_224,keep_val_224,
    keep_val_224,keep_val_224,keep_val_224}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_lo_hi_hi_hi_lo = {keep_val_232,keep_val_232,keep_val_232,keep_val_232,keep_val_232,
    keep_val_232,keep_val_232,keep_val_232,io_out_tdata_lo_hi_hi_hi_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_lo_hi_hi_hi_hi_lo = {keep_val_240,keep_val_240,keep_val_240,keep_val_240,keep_val_240,
    keep_val_240,keep_val_240,keep_val_240}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_lo_hi_hi_hi = {keep_val_248,keep_val_248,keep_val_248,keep_val_248,keep_val_248,keep_val_248,
    keep_val_248,keep_val_248,io_out_tdata_lo_hi_hi_hi_hi_lo,io_out_tdata_lo_hi_hi_hi_lo}; // @[RxConverter.scala 52:52]
  wire [255:0] io_out_tdata_lo = {io_out_tdata_lo_hi_hi_hi,io_out_tdata_lo_hi_hi_lo,io_out_tdata_lo_hi_lo_hi,
    io_out_tdata_lo_hi_lo_lo,io_out_tdata_lo_lo_hi_hi,io_out_tdata_lo_lo_hi_lo,io_out_tdata_lo_lo_lo_hi,
    io_out_tdata_lo_lo_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_lo_lo_lo_lo_lo = {keep_val_256,keep_val_256,keep_val_256,keep_val_256,keep_val_256,
    keep_val_256,keep_val_256,keep_val_256}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_hi_lo_lo_lo_lo = {keep_val_264,keep_val_264,keep_val_264,keep_val_264,keep_val_264,
    keep_val_264,keep_val_264,keep_val_264,io_out_tdata_hi_lo_lo_lo_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_lo_lo_lo_hi_lo = {keep_val_272,keep_val_272,keep_val_272,keep_val_272,keep_val_272,
    keep_val_272,keep_val_272,keep_val_272}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_hi_lo_lo_lo = {keep_val_280,keep_val_280,keep_val_280,keep_val_280,keep_val_280,keep_val_280,
    keep_val_280,keep_val_280,io_out_tdata_hi_lo_lo_lo_hi_lo,io_out_tdata_hi_lo_lo_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_lo_lo_hi_lo_lo = {keep_val_288,keep_val_288,keep_val_288,keep_val_288,keep_val_288,
    keep_val_288,keep_val_288,keep_val_288}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_hi_lo_lo_hi_lo = {keep_val_296,keep_val_296,keep_val_296,keep_val_296,keep_val_296,
    keep_val_296,keep_val_296,keep_val_296,io_out_tdata_hi_lo_lo_hi_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_lo_lo_hi_hi_lo = {keep_val_304,keep_val_304,keep_val_304,keep_val_304,keep_val_304,
    keep_val_304,keep_val_304,keep_val_304}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_hi_lo_lo_hi = {keep_val_312,keep_val_312,keep_val_312,keep_val_312,keep_val_312,keep_val_312,
    keep_val_312,keep_val_312,io_out_tdata_hi_lo_lo_hi_hi_lo,io_out_tdata_hi_lo_lo_hi_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_lo_hi_lo_lo_lo = {keep_val_320,keep_val_320,keep_val_320,keep_val_320,keep_val_320,
    keep_val_320,keep_val_320,keep_val_320}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_hi_lo_hi_lo_lo = {keep_val_328,keep_val_328,keep_val_328,keep_val_328,keep_val_328,
    keep_val_328,keep_val_328,keep_val_328,io_out_tdata_hi_lo_hi_lo_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_lo_hi_lo_hi_lo = {keep_val_336,keep_val_336,keep_val_336,keep_val_336,keep_val_336,
    keep_val_336,keep_val_336,keep_val_336}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_hi_lo_hi_lo = {keep_val_344,keep_val_344,keep_val_344,keep_val_344,keep_val_344,keep_val_344,
    keep_val_344,keep_val_344,io_out_tdata_hi_lo_hi_lo_hi_lo,io_out_tdata_hi_lo_hi_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_lo_hi_hi_lo_lo = {keep_val_352,keep_val_352,keep_val_352,keep_val_352,keep_val_352,
    keep_val_352,keep_val_352,keep_val_352}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_hi_lo_hi_hi_lo = {keep_val_360,keep_val_360,keep_val_360,keep_val_360,keep_val_360,
    keep_val_360,keep_val_360,keep_val_360,io_out_tdata_hi_lo_hi_hi_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_lo_hi_hi_hi_lo = {keep_val_368,keep_val_368,keep_val_368,keep_val_368,keep_val_368,
    keep_val_368,keep_val_368,keep_val_368}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_hi_lo_hi_hi = {keep_val_376,keep_val_376,keep_val_376,keep_val_376,keep_val_376,keep_val_376,
    keep_val_376,keep_val_376,io_out_tdata_hi_lo_hi_hi_hi_lo,io_out_tdata_hi_lo_hi_hi_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_hi_lo_lo_lo_lo = {keep_val_384,keep_val_384,keep_val_384,keep_val_384,keep_val_384,
    keep_val_384,keep_val_384,keep_val_384}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_hi_hi_lo_lo_lo = {keep_val_392,keep_val_392,keep_val_392,keep_val_392,keep_val_392,
    keep_val_392,keep_val_392,keep_val_392,io_out_tdata_hi_hi_lo_lo_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_hi_lo_lo_hi_lo = {keep_val_400,keep_val_400,keep_val_400,keep_val_400,keep_val_400,
    keep_val_400,keep_val_400,keep_val_400}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_hi_hi_lo_lo = {keep_val_408,keep_val_408,keep_val_408,keep_val_408,keep_val_408,keep_val_408,
    keep_val_408,keep_val_408,io_out_tdata_hi_hi_lo_lo_hi_lo,io_out_tdata_hi_hi_lo_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_hi_lo_hi_lo_lo = {keep_val_416,keep_val_416,keep_val_416,keep_val_416,keep_val_416,
    keep_val_416,keep_val_416,keep_val_416}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_hi_hi_lo_hi_lo = {keep_val_424,keep_val_424,keep_val_424,keep_val_424,keep_val_424,
    keep_val_424,keep_val_424,keep_val_424,io_out_tdata_hi_hi_lo_hi_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_hi_lo_hi_hi_lo = {keep_val_432,keep_val_432,keep_val_432,keep_val_432,keep_val_432,
    keep_val_432,keep_val_432,keep_val_432}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_hi_hi_lo_hi = {keep_val_440,keep_val_440,keep_val_440,keep_val_440,keep_val_440,keep_val_440,
    keep_val_440,keep_val_440,io_out_tdata_hi_hi_lo_hi_hi_lo,io_out_tdata_hi_hi_lo_hi_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_hi_hi_lo_lo_lo = {keep_val_448,keep_val_448,keep_val_448,keep_val_448,keep_val_448,
    keep_val_448,keep_val_448,keep_val_448}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_hi_hi_hi_lo_lo = {keep_val_456,keep_val_456,keep_val_456,keep_val_456,keep_val_456,
    keep_val_456,keep_val_456,keep_val_456,io_out_tdata_hi_hi_hi_lo_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_hi_hi_lo_hi_lo = {keep_val_464,keep_val_464,keep_val_464,keep_val_464,keep_val_464,
    keep_val_464,keep_val_464,keep_val_464}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_hi_hi_hi_lo = {keep_val_472,keep_val_472,keep_val_472,keep_val_472,keep_val_472,keep_val_472,
    keep_val_472,keep_val_472,io_out_tdata_hi_hi_hi_lo_hi_lo,io_out_tdata_hi_hi_hi_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_hi_hi_hi_lo_lo = {keep_val_480,keep_val_480,keep_val_480,keep_val_480,keep_val_480,
    keep_val_480,keep_val_480,keep_val_480}; // @[RxConverter.scala 52:52]
  wire [15:0] io_out_tdata_hi_hi_hi_hi_lo = {keep_val_488,keep_val_488,keep_val_488,keep_val_488,keep_val_488,
    keep_val_488,keep_val_488,keep_val_488,io_out_tdata_hi_hi_hi_hi_lo_lo}; // @[RxConverter.scala 52:52]
  wire [7:0] io_out_tdata_hi_hi_hi_hi_hi_lo = {keep_val_496,keep_val_496,keep_val_496,keep_val_496,keep_val_496,
    keep_val_496,keep_val_496,keep_val_496}; // @[RxConverter.scala 52:52]
  wire [31:0] io_out_tdata_hi_hi_hi_hi = {keep_val_504,keep_val_504,keep_val_504,keep_val_504,keep_val_504,keep_val_504,
    keep_val_504,keep_val_504,io_out_tdata_hi_hi_hi_hi_hi_lo,io_out_tdata_hi_hi_hi_hi_lo}; // @[RxConverter.scala 52:52]
  wire [511:0] _io_out_tdata_T = {io_out_tdata_hi_hi_hi_hi,io_out_tdata_hi_hi_hi_lo,io_out_tdata_hi_hi_lo_hi,
    io_out_tdata_hi_hi_lo_lo,io_out_tdata_hi_lo_hi_hi,io_out_tdata_hi_lo_hi_lo,io_out_tdata_hi_lo_lo_hi,
    io_out_tdata_hi_lo_lo_lo,io_out_tdata_lo}; // @[RxConverter.scala 52:52]
  ReduceAddSync burst_size_cal ( // @[RxConverter.scala 28:30]
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
  assign io_in_tready = io_out_tready | ~in_reg_used_reg; // @[RxConverter.scala 55:34]
  assign io_out_tdata = in_reg_tdata & _io_out_tdata_T; // @[RxConverter.scala 52:33]
  assign io_out_tvalid = in_reg_tvalid & in_reg_used_reg; // @[RxConverter.scala 53:34]
  assign io_out_tlast = in_reg_r[0]; // @[RxConverter.scala 17:119]
  assign io_out_tuser = in_reg_r[578]; // @[RxConverter.scala 17:119]
  assign io_out_rx_info_tlen = first_beat_reg ? {{8'd0}, burst_size_cal_io_out_sum} : _tlen_reg_T_1; // @[RxConverter.scala 57:29]
  assign io_out_extern_config_c2h_match_op = extern_config_reg_r[527:512]; // @[RxConverter.scala 25:104]
  assign io_out_extern_config_c2h_match_arg_12 = extern_config_reg_r[415:384]; // @[RxConverter.scala 25:104]
  assign io_out_extern_config_c2h_match_arg_13 = extern_config_reg_r[447:416]; // @[RxConverter.scala 25:104]
  assign io_out_extern_config_c2h_match_arg_14 = extern_config_reg_r[479:448]; // @[RxConverter.scala 25:104]
  assign io_out_extern_config_c2h_match_arg_15 = extern_config_reg_r[511:480]; // @[RxConverter.scala 25:104]
  assign burst_size_cal_clock = clock;
  assign burst_size_cal_io_in_vec_0 = {{7'd0}, cal_tkeep[0]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_1 = {{7'd0}, cal_tkeep[1]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_2 = {{7'd0}, cal_tkeep[2]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_3 = {{7'd0}, cal_tkeep[3]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_4 = {{7'd0}, cal_tkeep[4]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_5 = {{7'd0}, cal_tkeep[5]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_6 = {{7'd0}, cal_tkeep[6]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_7 = {{7'd0}, cal_tkeep[7]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_8 = {{7'd0}, cal_tkeep[8]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_9 = {{7'd0}, cal_tkeep[9]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_10 = {{7'd0}, cal_tkeep[10]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_11 = {{7'd0}, cal_tkeep[11]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_12 = {{7'd0}, cal_tkeep[12]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_13 = {{7'd0}, cal_tkeep[13]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_14 = {{7'd0}, cal_tkeep[14]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_15 = {{7'd0}, cal_tkeep[15]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_16 = {{7'd0}, cal_tkeep[16]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_17 = {{7'd0}, cal_tkeep[17]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_18 = {{7'd0}, cal_tkeep[18]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_19 = {{7'd0}, cal_tkeep[19]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_20 = {{7'd0}, cal_tkeep[20]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_21 = {{7'd0}, cal_tkeep[21]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_22 = {{7'd0}, cal_tkeep[22]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_23 = {{7'd0}, cal_tkeep[23]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_24 = {{7'd0}, cal_tkeep[24]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_25 = {{7'd0}, cal_tkeep[25]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_26 = {{7'd0}, cal_tkeep[26]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_27 = {{7'd0}, cal_tkeep[27]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_28 = {{7'd0}, cal_tkeep[28]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_29 = {{7'd0}, cal_tkeep[29]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_30 = {{7'd0}, cal_tkeep[30]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_31 = {{7'd0}, cal_tkeep[31]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_32 = {{7'd0}, cal_tkeep[32]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_33 = {{7'd0}, cal_tkeep[33]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_34 = {{7'd0}, cal_tkeep[34]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_35 = {{7'd0}, cal_tkeep[35]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_36 = {{7'd0}, cal_tkeep[36]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_37 = {{7'd0}, cal_tkeep[37]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_38 = {{7'd0}, cal_tkeep[38]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_39 = {{7'd0}, cal_tkeep[39]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_40 = {{7'd0}, cal_tkeep[40]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_41 = {{7'd0}, cal_tkeep[41]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_42 = {{7'd0}, cal_tkeep[42]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_43 = {{7'd0}, cal_tkeep[43]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_44 = {{7'd0}, cal_tkeep[44]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_45 = {{7'd0}, cal_tkeep[45]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_46 = {{7'd0}, cal_tkeep[46]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_47 = {{7'd0}, cal_tkeep[47]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_48 = {{7'd0}, cal_tkeep[48]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_49 = {{7'd0}, cal_tkeep[49]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_50 = {{7'd0}, cal_tkeep[50]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_51 = {{7'd0}, cal_tkeep[51]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_52 = {{7'd0}, cal_tkeep[52]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_53 = {{7'd0}, cal_tkeep[53]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_54 = {{7'd0}, cal_tkeep[54]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_55 = {{7'd0}, cal_tkeep[55]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_56 = {{7'd0}, cal_tkeep[56]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_57 = {{7'd0}, cal_tkeep[57]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_58 = {{7'd0}, cal_tkeep[58]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_59 = {{7'd0}, cal_tkeep[59]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_60 = {{7'd0}, cal_tkeep[60]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_61 = {{7'd0}, cal_tkeep[61]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_62 = {{7'd0}, cal_tkeep[62]}; // @[RxConverter.scala 29:53]
  assign burst_size_cal_io_in_vec_63 = {{7'd0}, cal_tkeep[63]}; // @[RxConverter.scala 29:53]
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
    if (reset) begin // @[Reg.scala 28:20]
      extern_config_reg_r <= 528'h0; // @[Reg.scala 28:20]
    end else if (out_shake_hand) begin // @[Reg.scala 29:18]
      extern_config_reg_r <= _extern_config_reg_T; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[RxConverter.scala 33:25]
      tlen_reg <= 16'h0; // @[RxConverter.scala 33:25]
    end else if (in_shake_hand) begin // @[RxConverter.scala 34:24]
      if (first_beat_reg) begin // @[RxConverter.scala 35:27]
        tlen_reg <= {{8'd0}, burst_size_cal_io_out_sum}; // @[RxConverter.scala 36:16]
      end else begin
        tlen_reg <= _tlen_reg_T_1; // @[RxConverter.scala 38:16]
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
  _RAND_3 = {17{`RANDOM}};
  extern_config_reg_r = _RAND_3[527:0];
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
module RxAESDecrypter(
  input          clock,
  input          reset,
  input  [511:0] io_in_tdata,
  input          io_in_tvalid,
  output         io_in_tready,
  input          io_in_tlast,
  input          io_in_tuser,
  input  [15:0]  io_in_rx_info_tlen,
  input  [15:0]  io_in_extern_config_c2h_match_op,
  input  [31:0]  io_in_extern_config_c2h_match_arg_12,
  input  [31:0]  io_in_extern_config_c2h_match_arg_13,
  input  [31:0]  io_in_extern_config_c2h_match_arg_14,
  input  [31:0]  io_in_extern_config_c2h_match_arg_15,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output         io_out_tuser,
  output [15:0]  io_out_rx_info_tlen,
  output [5:0]   io_out_rx_info_qid,
  output [31:0]  io_out_rx_info_ip_chksum,
  output [31:0]  io_out_rx_info_tcp_chksum,
  output [15:0]  io_out_extern_config_c2h_match_op
);
`ifdef RANDOMIZE_REG_INIT
  reg [607:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [127:0] _RAND_2;
  reg [127:0] _RAND_3;
  reg [127:0] _RAND_4;
  reg [127:0] _RAND_5;
  reg [127:0] _RAND_6;
  reg [127:0] _RAND_7;
  reg [127:0] _RAND_8;
  reg [127:0] _RAND_9;
  reg [127:0] _RAND_10;
  reg [127:0] _RAND_11;
  reg [127:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [511:0] _RAND_14;
`endif // RANDOMIZE_REG_INIT
  wire  in_shake_hand = io_in_tready & io_in_tvalid; // @[RxPipelineHandler.scala 12:38]
  wire  out_shake_hand = io_out_tready & io_out_tvalid; // @[RxPipelineHandler.scala 13:38]
  wire [600:0] _in_reg_T_1 = {io_in_rx_info_tlen,6'h0,64'h0,io_in_tuser,io_in_tdata,io_in_tvalid,io_in_tlast}; // @[Cat.scala 31:58]
  reg [600:0] in_reg_r; // @[Reg.scala 28:20]
  wire  in_reg_tvalid = in_reg_r[1]; // @[RxPipelineHandler.scala 14:128]
  wire [511:0] in_reg_tdata = in_reg_r[513:2]; // @[RxPipelineHandler.scala 14:128]
  reg  in_reg_used_reg; // @[RxPipelineHandler.scala 18:32]
  wire  _GEN_2 = out_shake_hand ? 1'h0 : in_reg_used_reg; // @[RxPipelineHandler.scala 21:29 22:21 18:32]
  wire  _GEN_3 = in_shake_hand | _GEN_2; // @[RxPipelineHandler.scala 19:23 20:21]
  wire  _io_out_tvalid_T = in_reg_tvalid & in_reg_used_reg; // @[RxPipelineHandler.scala 27:47]
  wire  _io_in_tready_T = ~in_reg_used_reg; // @[RxPipelineHandler.scala 30:49]
  reg [127:0] aes_key_reg_0; // @[RxAESDecrypter.scala 9:26]
  reg [127:0] aes_key_reg_1; // @[RxAESDecrypter.scala 9:26]
  reg [127:0] aes_key_reg_2; // @[RxAESDecrypter.scala 9:26]
  reg [127:0] aes_key_reg_3; // @[RxAESDecrypter.scala 9:26]
  reg [127:0] aes_key_reg_4; // @[RxAESDecrypter.scala 9:26]
  reg [127:0] aes_key_reg_5; // @[RxAESDecrypter.scala 9:26]
  reg [127:0] aes_key_reg_6; // @[RxAESDecrypter.scala 9:26]
  reg [127:0] aes_key_reg_7; // @[RxAESDecrypter.scala 9:26]
  reg [127:0] aes_key_reg_8; // @[RxAESDecrypter.scala 9:26]
  reg [127:0] aes_key_reg_9; // @[RxAESDecrypter.scala 9:26]
  reg [127:0] aes_key_reg_10; // @[RxAESDecrypter.scala 9:26]
  reg [7:0] cur_round_counter; // @[RxAESDecrypter.scala 39:36]
  wire [7:0] _cur_round_T_2 = cur_round_counter - 8'ha; // @[RxAESDecrypter.scala 40:74]
  wire [7:0] _cur_round_T_3 = {{2'd0}, _cur_round_T_2[7:2]}; // @[RxAESDecrypter.scala 40:82]
  wire [7:0] cur_round = cur_round_counter <= 8'hb ? 8'h0 : _cur_round_T_3; // @[RxAESDecrypter.scala 40:24]
  reg [511:0] tmp_tdata_reg; // @[RxAESDecrypter.scala 41:28]
  wire [63:0] aes_key_0_lo_4 = {io_in_extern_config_c2h_match_arg_14[7:0],io_in_extern_config_c2h_match_arg_14[15:8],
    io_in_extern_config_c2h_match_arg_14[23:16],io_in_extern_config_c2h_match_arg_14[31:24],
    io_in_extern_config_c2h_match_arg_15[7:0],io_in_extern_config_c2h_match_arg_15[15:8],
    io_in_extern_config_c2h_match_arg_15[23:16],io_in_extern_config_c2h_match_arg_15[31:24]}; // @[Cat.scala 31:58]
  wire [127:0] aes_key_0 = {io_in_extern_config_c2h_match_arg_12[7:0],io_in_extern_config_c2h_match_arg_12[15:8],
    io_in_extern_config_c2h_match_arg_12[23:16],io_in_extern_config_c2h_match_arg_12[31:24],
    io_in_extern_config_c2h_match_arg_13[7:0],io_in_extern_config_c2h_match_arg_13[15:8],
    io_in_extern_config_c2h_match_arg_13[23:16],io_in_extern_config_c2h_match_arg_13[31:24],aes_key_0_lo_4}; // @[Cat.scala 31:58]
  wire [63:0] tmp_result_0_trans_tdata_0_lo_4 = {tmp_tdata_reg[95:88],tmp_tdata_reg[119:112],tmp_tdata_reg[15:8],
    tmp_tdata_reg[39:32],tmp_tdata_reg[63:56],tmp_tdata_reg[87:80],tmp_tdata_reg[111:104],tmp_tdata_reg[7:0]}; // @[Cat.scala 31:58]
  wire [127:0] tmp_result_0_trans_tdata_0 = {tmp_tdata_reg[31:24],tmp_tdata_reg[55:48],tmp_tdata_reg[79:72],
    tmp_tdata_reg[103:96],tmp_tdata_reg[127:120],tmp_tdata_reg[23:16],tmp_tdata_reg[47:40],tmp_tdata_reg[71:64],
    tmp_result_0_trans_tdata_0_lo_4}; // @[Cat.scala 31:58]
  wire [63:0] tmp_result_0_trans_tdata_1_lo_4 = {tmp_tdata_reg[223:216],tmp_tdata_reg[247:240],tmp_tdata_reg[143:136],
    tmp_tdata_reg[167:160],tmp_tdata_reg[191:184],tmp_tdata_reg[215:208],tmp_tdata_reg[239:232],tmp_tdata_reg[135:128]}; // @[Cat.scala 31:58]
  wire [63:0] tmp_result_0_trans_tdata_2_lo_4 = {tmp_tdata_reg[351:344],tmp_tdata_reg[375:368],tmp_tdata_reg[271:264],
    tmp_tdata_reg[295:288],tmp_tdata_reg[319:312],tmp_tdata_reg[343:336],tmp_tdata_reg[367:360],tmp_tdata_reg[263:256]}; // @[Cat.scala 31:58]
  wire [127:0] tmp_result_0_trans_tdata_2 = {tmp_tdata_reg[287:280],tmp_tdata_reg[311:304],tmp_tdata_reg[335:328],
    tmp_tdata_reg[359:352],tmp_tdata_reg[383:376],tmp_tdata_reg[279:272],tmp_tdata_reg[303:296],tmp_tdata_reg[327:320],
    tmp_result_0_trans_tdata_2_lo_4}; // @[Cat.scala 31:58]
  wire [63:0] tmp_result_0_trans_tdata_3_lo_4 = {tmp_tdata_reg[479:472],tmp_tdata_reg[503:496],tmp_tdata_reg[399:392],
    tmp_tdata_reg[423:416],tmp_tdata_reg[447:440],tmp_tdata_reg[471:464],tmp_tdata_reg[495:488],tmp_tdata_reg[391:384]}; // @[Cat.scala 31:58]
  wire [255:0] tmp_result_0_lo = {tmp_tdata_reg[159:152],tmp_tdata_reg[183:176],tmp_tdata_reg[207:200],tmp_tdata_reg[231
    :224],tmp_tdata_reg[255:248],tmp_tdata_reg[151:144],tmp_tdata_reg[175:168],tmp_tdata_reg[199:192],
    tmp_result_0_trans_tdata_1_lo_4,tmp_result_0_trans_tdata_0}; // @[RxAESDecrypter.scala 26:21]
  wire [255:0] tmp_result_0_hi = {tmp_tdata_reg[415:408],tmp_tdata_reg[439:432],tmp_tdata_reg[463:456],tmp_tdata_reg[487
    :480],tmp_tdata_reg[511:504],tmp_tdata_reg[407:400],tmp_tdata_reg[431:424],tmp_tdata_reg[455:448],
    tmp_result_0_trans_tdata_3_lo_4,tmp_result_0_trans_tdata_2}; // @[RxAESDecrypter.scala 26:21]
  wire [511:0] tmp_result_0 = {tmp_result_0_hi,tmp_result_0_lo}; // @[RxAESDecrypter.scala 26:21]
  wire [6:0] _tmp_result_1_trans_tdata_0_T_2 = {tmp_tdata_reg[3:0], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_5 = 4'h1 == tmp_tdata_reg[7:4] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_6 = 4'h2 == tmp_tdata_reg[7:4] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_5; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_7 = 4'h3 == tmp_tdata_reg[7:4] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_6; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_8 = 4'h4 == tmp_tdata_reg[7:4] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_7; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_9 = 4'h5 == tmp_tdata_reg[7:4] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_8; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_10 = 4'h6 == tmp_tdata_reg[7:4] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_9; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_11 = 4'h7 == tmp_tdata_reg[7:4] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_10; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_12 = 4'h8 == tmp_tdata_reg[7:4] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_11; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_13 = 4'h9 == tmp_tdata_reg[7:4] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_12; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_14 = 4'ha == tmp_tdata_reg[7:4] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_13; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_15 = 4'hb == tmp_tdata_reg[7:4] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_14; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_16 = 4'hc == tmp_tdata_reg[7:4] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_15; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_17 = 4'hd == tmp_tdata_reg[7:4] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_16; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_18 = 4'he == tmp_tdata_reg[7:4] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_17; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_19 = 4'hf == tmp_tdata_reg[7:4] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_18; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_0_T_3 = _GEN_19 >> _tmp_result_1_trans_tdata_0_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_0 = _tmp_result_1_trans_tdata_0_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_1_T_2 = {tmp_tdata_reg[11:8], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_21 = 4'h1 == tmp_tdata_reg[15:12] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_22 = 4'h2 == tmp_tdata_reg[15:12] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_21; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_23 = 4'h3 == tmp_tdata_reg[15:12] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_22; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_24 = 4'h4 == tmp_tdata_reg[15:12] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_23; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_25 = 4'h5 == tmp_tdata_reg[15:12] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_24; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_26 = 4'h6 == tmp_tdata_reg[15:12] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_25; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_27 = 4'h7 == tmp_tdata_reg[15:12] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_26; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_28 = 4'h8 == tmp_tdata_reg[15:12] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_27; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_29 = 4'h9 == tmp_tdata_reg[15:12] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_28; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_30 = 4'ha == tmp_tdata_reg[15:12] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_29; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_31 = 4'hb == tmp_tdata_reg[15:12] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_30; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_32 = 4'hc == tmp_tdata_reg[15:12] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_31; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_33 = 4'hd == tmp_tdata_reg[15:12] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_32; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_34 = 4'he == tmp_tdata_reg[15:12] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_33; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_35 = 4'hf == tmp_tdata_reg[15:12] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_34; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_1_T_3 = _GEN_35 >> _tmp_result_1_trans_tdata_1_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_1 = _tmp_result_1_trans_tdata_1_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_2_T_2 = {tmp_tdata_reg[19:16], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_37 = 4'h1 == tmp_tdata_reg[23:20] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_38 = 4'h2 == tmp_tdata_reg[23:20] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_37; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_39 = 4'h3 == tmp_tdata_reg[23:20] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_38; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_40 = 4'h4 == tmp_tdata_reg[23:20] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_39; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_41 = 4'h5 == tmp_tdata_reg[23:20] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_40; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_42 = 4'h6 == tmp_tdata_reg[23:20] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_41; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_43 = 4'h7 == tmp_tdata_reg[23:20] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_42; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_44 = 4'h8 == tmp_tdata_reg[23:20] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_43; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_45 = 4'h9 == tmp_tdata_reg[23:20] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_44; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_46 = 4'ha == tmp_tdata_reg[23:20] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_45; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_47 = 4'hb == tmp_tdata_reg[23:20] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_46; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_48 = 4'hc == tmp_tdata_reg[23:20] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_47; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_49 = 4'hd == tmp_tdata_reg[23:20] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_48; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_50 = 4'he == tmp_tdata_reg[23:20] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_49; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_51 = 4'hf == tmp_tdata_reg[23:20] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_50; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_2_T_3 = _GEN_51 >> _tmp_result_1_trans_tdata_2_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_2 = _tmp_result_1_trans_tdata_2_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_3_T_2 = {tmp_tdata_reg[27:24], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_53 = 4'h1 == tmp_tdata_reg[31:28] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_54 = 4'h2 == tmp_tdata_reg[31:28] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_53; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_55 = 4'h3 == tmp_tdata_reg[31:28] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_54; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_56 = 4'h4 == tmp_tdata_reg[31:28] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_55; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_57 = 4'h5 == tmp_tdata_reg[31:28] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_56; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_58 = 4'h6 == tmp_tdata_reg[31:28] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_57; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_59 = 4'h7 == tmp_tdata_reg[31:28] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_58; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_60 = 4'h8 == tmp_tdata_reg[31:28] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_59; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_61 = 4'h9 == tmp_tdata_reg[31:28] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_60; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_62 = 4'ha == tmp_tdata_reg[31:28] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_61; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_63 = 4'hb == tmp_tdata_reg[31:28] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_62; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_64 = 4'hc == tmp_tdata_reg[31:28] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_63; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_65 = 4'hd == tmp_tdata_reg[31:28] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_64; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_66 = 4'he == tmp_tdata_reg[31:28] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_65; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_67 = 4'hf == tmp_tdata_reg[31:28] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_66; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_3_T_3 = _GEN_67 >> _tmp_result_1_trans_tdata_3_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_3 = _tmp_result_1_trans_tdata_3_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_4_T_2 = {tmp_tdata_reg[35:32], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_69 = 4'h1 == tmp_tdata_reg[39:36] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_70 = 4'h2 == tmp_tdata_reg[39:36] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_69; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_71 = 4'h3 == tmp_tdata_reg[39:36] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_70; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_72 = 4'h4 == tmp_tdata_reg[39:36] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_71; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_73 = 4'h5 == tmp_tdata_reg[39:36] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_72; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_74 = 4'h6 == tmp_tdata_reg[39:36] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_73; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_75 = 4'h7 == tmp_tdata_reg[39:36] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_74; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_76 = 4'h8 == tmp_tdata_reg[39:36] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_75; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_77 = 4'h9 == tmp_tdata_reg[39:36] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_76; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_78 = 4'ha == tmp_tdata_reg[39:36] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_77; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_79 = 4'hb == tmp_tdata_reg[39:36] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_78; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_80 = 4'hc == tmp_tdata_reg[39:36] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_79; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_81 = 4'hd == tmp_tdata_reg[39:36] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_80; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_82 = 4'he == tmp_tdata_reg[39:36] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_81; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_83 = 4'hf == tmp_tdata_reg[39:36] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_82; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_4_T_3 = _GEN_83 >> _tmp_result_1_trans_tdata_4_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_4 = _tmp_result_1_trans_tdata_4_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_5_T_2 = {tmp_tdata_reg[43:40], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_85 = 4'h1 == tmp_tdata_reg[47:44] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_86 = 4'h2 == tmp_tdata_reg[47:44] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_85; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_87 = 4'h3 == tmp_tdata_reg[47:44] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_86; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_88 = 4'h4 == tmp_tdata_reg[47:44] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_87; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_89 = 4'h5 == tmp_tdata_reg[47:44] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_88; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_90 = 4'h6 == tmp_tdata_reg[47:44] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_89; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_91 = 4'h7 == tmp_tdata_reg[47:44] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_90; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_92 = 4'h8 == tmp_tdata_reg[47:44] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_91; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_93 = 4'h9 == tmp_tdata_reg[47:44] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_92; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_94 = 4'ha == tmp_tdata_reg[47:44] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_93; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_95 = 4'hb == tmp_tdata_reg[47:44] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_94; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_96 = 4'hc == tmp_tdata_reg[47:44] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_95; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_97 = 4'hd == tmp_tdata_reg[47:44] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_96; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_98 = 4'he == tmp_tdata_reg[47:44] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_97; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_99 = 4'hf == tmp_tdata_reg[47:44] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_98; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_5_T_3 = _GEN_99 >> _tmp_result_1_trans_tdata_5_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_5 = _tmp_result_1_trans_tdata_5_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_6_T_2 = {tmp_tdata_reg[51:48], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_101 = 4'h1 == tmp_tdata_reg[55:52] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_102 = 4'h2 == tmp_tdata_reg[55:52] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_101; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_103 = 4'h3 == tmp_tdata_reg[55:52] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_102; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_104 = 4'h4 == tmp_tdata_reg[55:52] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_103; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_105 = 4'h5 == tmp_tdata_reg[55:52] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_104; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_106 = 4'h6 == tmp_tdata_reg[55:52] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_105; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_107 = 4'h7 == tmp_tdata_reg[55:52] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_106; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_108 = 4'h8 == tmp_tdata_reg[55:52] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_107; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_109 = 4'h9 == tmp_tdata_reg[55:52] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_108; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_110 = 4'ha == tmp_tdata_reg[55:52] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_109; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_111 = 4'hb == tmp_tdata_reg[55:52] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_110; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_112 = 4'hc == tmp_tdata_reg[55:52] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_111; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_113 = 4'hd == tmp_tdata_reg[55:52] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_112; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_114 = 4'he == tmp_tdata_reg[55:52] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_113; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_115 = 4'hf == tmp_tdata_reg[55:52] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_114; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_6_T_3 = _GEN_115 >> _tmp_result_1_trans_tdata_6_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_6 = _tmp_result_1_trans_tdata_6_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_7_T_2 = {tmp_tdata_reg[59:56], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_117 = 4'h1 == tmp_tdata_reg[63:60] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_118 = 4'h2 == tmp_tdata_reg[63:60] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_117; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_119 = 4'h3 == tmp_tdata_reg[63:60] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_118; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_120 = 4'h4 == tmp_tdata_reg[63:60] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_119; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_121 = 4'h5 == tmp_tdata_reg[63:60] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_120; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_122 = 4'h6 == tmp_tdata_reg[63:60] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_121; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_123 = 4'h7 == tmp_tdata_reg[63:60] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_122; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_124 = 4'h8 == tmp_tdata_reg[63:60] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_123; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_125 = 4'h9 == tmp_tdata_reg[63:60] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_124; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_126 = 4'ha == tmp_tdata_reg[63:60] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_125; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_127 = 4'hb == tmp_tdata_reg[63:60] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_126; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_128 = 4'hc == tmp_tdata_reg[63:60] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_127; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_129 = 4'hd == tmp_tdata_reg[63:60] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_128; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_130 = 4'he == tmp_tdata_reg[63:60] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_129; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_131 = 4'hf == tmp_tdata_reg[63:60] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_130; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_7_T_3 = _GEN_131 >> _tmp_result_1_trans_tdata_7_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_7 = _tmp_result_1_trans_tdata_7_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_8_T_2 = {tmp_tdata_reg[67:64], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_133 = 4'h1 == tmp_tdata_reg[71:68] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_134 = 4'h2 == tmp_tdata_reg[71:68] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_133; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_135 = 4'h3 == tmp_tdata_reg[71:68] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_134; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_136 = 4'h4 == tmp_tdata_reg[71:68] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_135; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_137 = 4'h5 == tmp_tdata_reg[71:68] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_136; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_138 = 4'h6 == tmp_tdata_reg[71:68] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_137; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_139 = 4'h7 == tmp_tdata_reg[71:68] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_138; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_140 = 4'h8 == tmp_tdata_reg[71:68] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_139; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_141 = 4'h9 == tmp_tdata_reg[71:68] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_140; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_142 = 4'ha == tmp_tdata_reg[71:68] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_141; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_143 = 4'hb == tmp_tdata_reg[71:68] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_142; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_144 = 4'hc == tmp_tdata_reg[71:68] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_143; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_145 = 4'hd == tmp_tdata_reg[71:68] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_144; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_146 = 4'he == tmp_tdata_reg[71:68] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_145; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_147 = 4'hf == tmp_tdata_reg[71:68] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_146; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_8_T_3 = _GEN_147 >> _tmp_result_1_trans_tdata_8_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_8 = _tmp_result_1_trans_tdata_8_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_9_T_2 = {tmp_tdata_reg[75:72], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_149 = 4'h1 == tmp_tdata_reg[79:76] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_150 = 4'h2 == tmp_tdata_reg[79:76] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_149; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_151 = 4'h3 == tmp_tdata_reg[79:76] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_150; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_152 = 4'h4 == tmp_tdata_reg[79:76] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_151; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_153 = 4'h5 == tmp_tdata_reg[79:76] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_152; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_154 = 4'h6 == tmp_tdata_reg[79:76] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_153; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_155 = 4'h7 == tmp_tdata_reg[79:76] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_154; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_156 = 4'h8 == tmp_tdata_reg[79:76] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_155; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_157 = 4'h9 == tmp_tdata_reg[79:76] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_156; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_158 = 4'ha == tmp_tdata_reg[79:76] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_157; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_159 = 4'hb == tmp_tdata_reg[79:76] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_158; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_160 = 4'hc == tmp_tdata_reg[79:76] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_159; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_161 = 4'hd == tmp_tdata_reg[79:76] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_160; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_162 = 4'he == tmp_tdata_reg[79:76] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_161; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_163 = 4'hf == tmp_tdata_reg[79:76] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_162; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_9_T_3 = _GEN_163 >> _tmp_result_1_trans_tdata_9_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_9 = _tmp_result_1_trans_tdata_9_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_10_T_2 = {tmp_tdata_reg[83:80], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_165 = 4'h1 == tmp_tdata_reg[87:84] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_166 = 4'h2 == tmp_tdata_reg[87:84] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_165; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_167 = 4'h3 == tmp_tdata_reg[87:84] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_166; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_168 = 4'h4 == tmp_tdata_reg[87:84] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_167; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_169 = 4'h5 == tmp_tdata_reg[87:84] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_168; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_170 = 4'h6 == tmp_tdata_reg[87:84] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_169; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_171 = 4'h7 == tmp_tdata_reg[87:84] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_170; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_172 = 4'h8 == tmp_tdata_reg[87:84] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_171; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_173 = 4'h9 == tmp_tdata_reg[87:84] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_172; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_174 = 4'ha == tmp_tdata_reg[87:84] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_173; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_175 = 4'hb == tmp_tdata_reg[87:84] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_174; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_176 = 4'hc == tmp_tdata_reg[87:84] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_175; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_177 = 4'hd == tmp_tdata_reg[87:84] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_176; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_178 = 4'he == tmp_tdata_reg[87:84] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_177; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_179 = 4'hf == tmp_tdata_reg[87:84] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_178; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_10_T_3 = _GEN_179 >> _tmp_result_1_trans_tdata_10_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_10 = _tmp_result_1_trans_tdata_10_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_11_T_2 = {tmp_tdata_reg[91:88], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_181 = 4'h1 == tmp_tdata_reg[95:92] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_182 = 4'h2 == tmp_tdata_reg[95:92] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_181; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_183 = 4'h3 == tmp_tdata_reg[95:92] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_182; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_184 = 4'h4 == tmp_tdata_reg[95:92] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_183; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_185 = 4'h5 == tmp_tdata_reg[95:92] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_184; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_186 = 4'h6 == tmp_tdata_reg[95:92] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_185; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_187 = 4'h7 == tmp_tdata_reg[95:92] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_186; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_188 = 4'h8 == tmp_tdata_reg[95:92] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_187; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_189 = 4'h9 == tmp_tdata_reg[95:92] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_188; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_190 = 4'ha == tmp_tdata_reg[95:92] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_189; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_191 = 4'hb == tmp_tdata_reg[95:92] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_190; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_192 = 4'hc == tmp_tdata_reg[95:92] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_191; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_193 = 4'hd == tmp_tdata_reg[95:92] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_192; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_194 = 4'he == tmp_tdata_reg[95:92] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_193; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_195 = 4'hf == tmp_tdata_reg[95:92] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_194; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_11_T_3 = _GEN_195 >> _tmp_result_1_trans_tdata_11_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_11 = _tmp_result_1_trans_tdata_11_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_12_T_2 = {tmp_tdata_reg[99:96], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_197 = 4'h1 == tmp_tdata_reg[103:100] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_198 = 4'h2 == tmp_tdata_reg[103:100] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_197; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_199 = 4'h3 == tmp_tdata_reg[103:100] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_198; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_200 = 4'h4 == tmp_tdata_reg[103:100] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_199; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_201 = 4'h5 == tmp_tdata_reg[103:100] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_200; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_202 = 4'h6 == tmp_tdata_reg[103:100] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_201; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_203 = 4'h7 == tmp_tdata_reg[103:100] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_202; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_204 = 4'h8 == tmp_tdata_reg[103:100] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_203; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_205 = 4'h9 == tmp_tdata_reg[103:100] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_204; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_206 = 4'ha == tmp_tdata_reg[103:100] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_205; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_207 = 4'hb == tmp_tdata_reg[103:100] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_206; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_208 = 4'hc == tmp_tdata_reg[103:100] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_207; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_209 = 4'hd == tmp_tdata_reg[103:100] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_208; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_210 = 4'he == tmp_tdata_reg[103:100] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_209; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_211 = 4'hf == tmp_tdata_reg[103:100] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_210; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_12_T_3 = _GEN_211 >> _tmp_result_1_trans_tdata_12_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_12 = _tmp_result_1_trans_tdata_12_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_13_T_2 = {tmp_tdata_reg[107:104], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_213 = 4'h1 == tmp_tdata_reg[111:108] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_214 = 4'h2 == tmp_tdata_reg[111:108] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_213; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_215 = 4'h3 == tmp_tdata_reg[111:108] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_214; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_216 = 4'h4 == tmp_tdata_reg[111:108] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_215; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_217 = 4'h5 == tmp_tdata_reg[111:108] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_216; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_218 = 4'h6 == tmp_tdata_reg[111:108] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_217; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_219 = 4'h7 == tmp_tdata_reg[111:108] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_218; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_220 = 4'h8 == tmp_tdata_reg[111:108] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_219; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_221 = 4'h9 == tmp_tdata_reg[111:108] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_220; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_222 = 4'ha == tmp_tdata_reg[111:108] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_221; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_223 = 4'hb == tmp_tdata_reg[111:108] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_222; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_224 = 4'hc == tmp_tdata_reg[111:108] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_223; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_225 = 4'hd == tmp_tdata_reg[111:108] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_224; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_226 = 4'he == tmp_tdata_reg[111:108] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_225; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_227 = 4'hf == tmp_tdata_reg[111:108] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_226; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_13_T_3 = _GEN_227 >> _tmp_result_1_trans_tdata_13_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_13 = _tmp_result_1_trans_tdata_13_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_14_T_2 = {tmp_tdata_reg[115:112], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_229 = 4'h1 == tmp_tdata_reg[119:116] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_230 = 4'h2 == tmp_tdata_reg[119:116] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_229; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_231 = 4'h3 == tmp_tdata_reg[119:116] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_230; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_232 = 4'h4 == tmp_tdata_reg[119:116] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_231; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_233 = 4'h5 == tmp_tdata_reg[119:116] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_232; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_234 = 4'h6 == tmp_tdata_reg[119:116] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_233; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_235 = 4'h7 == tmp_tdata_reg[119:116] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_234; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_236 = 4'h8 == tmp_tdata_reg[119:116] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_235; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_237 = 4'h9 == tmp_tdata_reg[119:116] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_236; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_238 = 4'ha == tmp_tdata_reg[119:116] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_237; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_239 = 4'hb == tmp_tdata_reg[119:116] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_238; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_240 = 4'hc == tmp_tdata_reg[119:116] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_239; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_241 = 4'hd == tmp_tdata_reg[119:116] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_240; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_242 = 4'he == tmp_tdata_reg[119:116] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_241; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_243 = 4'hf == tmp_tdata_reg[119:116] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_242; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_14_T_3 = _GEN_243 >> _tmp_result_1_trans_tdata_14_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_14 = _tmp_result_1_trans_tdata_14_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_15_T_2 = {tmp_tdata_reg[123:120], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_245 = 4'h1 == tmp_tdata_reg[127:124] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_246 = 4'h2 == tmp_tdata_reg[127:124] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_245; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_247 = 4'h3 == tmp_tdata_reg[127:124] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_246; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_248 = 4'h4 == tmp_tdata_reg[127:124] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_247; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_249 = 4'h5 == tmp_tdata_reg[127:124] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_248; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_250 = 4'h6 == tmp_tdata_reg[127:124] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_249; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_251 = 4'h7 == tmp_tdata_reg[127:124] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_250; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_252 = 4'h8 == tmp_tdata_reg[127:124] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_251; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_253 = 4'h9 == tmp_tdata_reg[127:124] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_252; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_254 = 4'ha == tmp_tdata_reg[127:124] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_253; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_255 = 4'hb == tmp_tdata_reg[127:124] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_254; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_256 = 4'hc == tmp_tdata_reg[127:124] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_255; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_257 = 4'hd == tmp_tdata_reg[127:124] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_256; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_258 = 4'he == tmp_tdata_reg[127:124] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_257; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_259 = 4'hf == tmp_tdata_reg[127:124] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_258; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_15_T_3 = _GEN_259 >> _tmp_result_1_trans_tdata_15_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_15 = _tmp_result_1_trans_tdata_15_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_16_T_2 = {tmp_tdata_reg[131:128], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_261 = 4'h1 == tmp_tdata_reg[135:132] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_262 = 4'h2 == tmp_tdata_reg[135:132] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_261; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_263 = 4'h3 == tmp_tdata_reg[135:132] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_262; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_264 = 4'h4 == tmp_tdata_reg[135:132] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_263; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_265 = 4'h5 == tmp_tdata_reg[135:132] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_264; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_266 = 4'h6 == tmp_tdata_reg[135:132] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_265; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_267 = 4'h7 == tmp_tdata_reg[135:132] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_266; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_268 = 4'h8 == tmp_tdata_reg[135:132] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_267; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_269 = 4'h9 == tmp_tdata_reg[135:132] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_268; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_270 = 4'ha == tmp_tdata_reg[135:132] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_269; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_271 = 4'hb == tmp_tdata_reg[135:132] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_270; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_272 = 4'hc == tmp_tdata_reg[135:132] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_271; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_273 = 4'hd == tmp_tdata_reg[135:132] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_272; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_274 = 4'he == tmp_tdata_reg[135:132] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_273; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_275 = 4'hf == tmp_tdata_reg[135:132] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_274; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_16_T_3 = _GEN_275 >> _tmp_result_1_trans_tdata_16_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_16 = _tmp_result_1_trans_tdata_16_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_17_T_2 = {tmp_tdata_reg[139:136], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_277 = 4'h1 == tmp_tdata_reg[143:140] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_278 = 4'h2 == tmp_tdata_reg[143:140] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_277; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_279 = 4'h3 == tmp_tdata_reg[143:140] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_278; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_280 = 4'h4 == tmp_tdata_reg[143:140] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_279; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_281 = 4'h5 == tmp_tdata_reg[143:140] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_280; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_282 = 4'h6 == tmp_tdata_reg[143:140] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_281; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_283 = 4'h7 == tmp_tdata_reg[143:140] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_282; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_284 = 4'h8 == tmp_tdata_reg[143:140] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_283; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_285 = 4'h9 == tmp_tdata_reg[143:140] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_284; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_286 = 4'ha == tmp_tdata_reg[143:140] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_285; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_287 = 4'hb == tmp_tdata_reg[143:140] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_286; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_288 = 4'hc == tmp_tdata_reg[143:140] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_287; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_289 = 4'hd == tmp_tdata_reg[143:140] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_288; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_290 = 4'he == tmp_tdata_reg[143:140] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_289; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_291 = 4'hf == tmp_tdata_reg[143:140] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_290; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_17_T_3 = _GEN_291 >> _tmp_result_1_trans_tdata_17_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_17 = _tmp_result_1_trans_tdata_17_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_18_T_2 = {tmp_tdata_reg[147:144], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_293 = 4'h1 == tmp_tdata_reg[151:148] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_294 = 4'h2 == tmp_tdata_reg[151:148] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_293; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_295 = 4'h3 == tmp_tdata_reg[151:148] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_294; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_296 = 4'h4 == tmp_tdata_reg[151:148] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_295; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_297 = 4'h5 == tmp_tdata_reg[151:148] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_296; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_298 = 4'h6 == tmp_tdata_reg[151:148] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_297; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_299 = 4'h7 == tmp_tdata_reg[151:148] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_298; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_300 = 4'h8 == tmp_tdata_reg[151:148] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_299; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_301 = 4'h9 == tmp_tdata_reg[151:148] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_300; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_302 = 4'ha == tmp_tdata_reg[151:148] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_301; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_303 = 4'hb == tmp_tdata_reg[151:148] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_302; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_304 = 4'hc == tmp_tdata_reg[151:148] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_303; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_305 = 4'hd == tmp_tdata_reg[151:148] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_304; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_306 = 4'he == tmp_tdata_reg[151:148] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_305; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_307 = 4'hf == tmp_tdata_reg[151:148] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_306; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_18_T_3 = _GEN_307 >> _tmp_result_1_trans_tdata_18_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_18 = _tmp_result_1_trans_tdata_18_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_19_T_2 = {tmp_tdata_reg[155:152], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_309 = 4'h1 == tmp_tdata_reg[159:156] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_310 = 4'h2 == tmp_tdata_reg[159:156] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_309; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_311 = 4'h3 == tmp_tdata_reg[159:156] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_310; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_312 = 4'h4 == tmp_tdata_reg[159:156] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_311; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_313 = 4'h5 == tmp_tdata_reg[159:156] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_312; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_314 = 4'h6 == tmp_tdata_reg[159:156] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_313; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_315 = 4'h7 == tmp_tdata_reg[159:156] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_314; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_316 = 4'h8 == tmp_tdata_reg[159:156] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_315; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_317 = 4'h9 == tmp_tdata_reg[159:156] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_316; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_318 = 4'ha == tmp_tdata_reg[159:156] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_317; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_319 = 4'hb == tmp_tdata_reg[159:156] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_318; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_320 = 4'hc == tmp_tdata_reg[159:156] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_319; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_321 = 4'hd == tmp_tdata_reg[159:156] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_320; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_322 = 4'he == tmp_tdata_reg[159:156] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_321; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_323 = 4'hf == tmp_tdata_reg[159:156] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_322; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_19_T_3 = _GEN_323 >> _tmp_result_1_trans_tdata_19_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_19 = _tmp_result_1_trans_tdata_19_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_20_T_2 = {tmp_tdata_reg[163:160], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_325 = 4'h1 == tmp_tdata_reg[167:164] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_326 = 4'h2 == tmp_tdata_reg[167:164] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_325; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_327 = 4'h3 == tmp_tdata_reg[167:164] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_326; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_328 = 4'h4 == tmp_tdata_reg[167:164] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_327; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_329 = 4'h5 == tmp_tdata_reg[167:164] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_328; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_330 = 4'h6 == tmp_tdata_reg[167:164] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_329; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_331 = 4'h7 == tmp_tdata_reg[167:164] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_330; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_332 = 4'h8 == tmp_tdata_reg[167:164] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_331; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_333 = 4'h9 == tmp_tdata_reg[167:164] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_332; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_334 = 4'ha == tmp_tdata_reg[167:164] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_333; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_335 = 4'hb == tmp_tdata_reg[167:164] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_334; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_336 = 4'hc == tmp_tdata_reg[167:164] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_335; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_337 = 4'hd == tmp_tdata_reg[167:164] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_336; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_338 = 4'he == tmp_tdata_reg[167:164] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_337; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_339 = 4'hf == tmp_tdata_reg[167:164] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_338; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_20_T_3 = _GEN_339 >> _tmp_result_1_trans_tdata_20_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_20 = _tmp_result_1_trans_tdata_20_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_21_T_2 = {tmp_tdata_reg[171:168], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_341 = 4'h1 == tmp_tdata_reg[175:172] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_342 = 4'h2 == tmp_tdata_reg[175:172] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_341; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_343 = 4'h3 == tmp_tdata_reg[175:172] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_342; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_344 = 4'h4 == tmp_tdata_reg[175:172] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_343; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_345 = 4'h5 == tmp_tdata_reg[175:172] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_344; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_346 = 4'h6 == tmp_tdata_reg[175:172] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_345; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_347 = 4'h7 == tmp_tdata_reg[175:172] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_346; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_348 = 4'h8 == tmp_tdata_reg[175:172] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_347; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_349 = 4'h9 == tmp_tdata_reg[175:172] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_348; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_350 = 4'ha == tmp_tdata_reg[175:172] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_349; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_351 = 4'hb == tmp_tdata_reg[175:172] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_350; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_352 = 4'hc == tmp_tdata_reg[175:172] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_351; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_353 = 4'hd == tmp_tdata_reg[175:172] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_352; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_354 = 4'he == tmp_tdata_reg[175:172] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_353; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_355 = 4'hf == tmp_tdata_reg[175:172] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_354; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_21_T_3 = _GEN_355 >> _tmp_result_1_trans_tdata_21_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_21 = _tmp_result_1_trans_tdata_21_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_22_T_2 = {tmp_tdata_reg[179:176], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_357 = 4'h1 == tmp_tdata_reg[183:180] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_358 = 4'h2 == tmp_tdata_reg[183:180] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_357; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_359 = 4'h3 == tmp_tdata_reg[183:180] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_358; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_360 = 4'h4 == tmp_tdata_reg[183:180] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_359; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_361 = 4'h5 == tmp_tdata_reg[183:180] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_360; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_362 = 4'h6 == tmp_tdata_reg[183:180] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_361; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_363 = 4'h7 == tmp_tdata_reg[183:180] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_362; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_364 = 4'h8 == tmp_tdata_reg[183:180] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_363; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_365 = 4'h9 == tmp_tdata_reg[183:180] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_364; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_366 = 4'ha == tmp_tdata_reg[183:180] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_365; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_367 = 4'hb == tmp_tdata_reg[183:180] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_366; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_368 = 4'hc == tmp_tdata_reg[183:180] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_367; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_369 = 4'hd == tmp_tdata_reg[183:180] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_368; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_370 = 4'he == tmp_tdata_reg[183:180] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_369; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_371 = 4'hf == tmp_tdata_reg[183:180] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_370; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_22_T_3 = _GEN_371 >> _tmp_result_1_trans_tdata_22_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_22 = _tmp_result_1_trans_tdata_22_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_23_T_2 = {tmp_tdata_reg[187:184], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_373 = 4'h1 == tmp_tdata_reg[191:188] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_374 = 4'h2 == tmp_tdata_reg[191:188] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_373; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_375 = 4'h3 == tmp_tdata_reg[191:188] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_374; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_376 = 4'h4 == tmp_tdata_reg[191:188] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_375; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_377 = 4'h5 == tmp_tdata_reg[191:188] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_376; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_378 = 4'h6 == tmp_tdata_reg[191:188] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_377; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_379 = 4'h7 == tmp_tdata_reg[191:188] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_378; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_380 = 4'h8 == tmp_tdata_reg[191:188] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_379; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_381 = 4'h9 == tmp_tdata_reg[191:188] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_380; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_382 = 4'ha == tmp_tdata_reg[191:188] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_381; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_383 = 4'hb == tmp_tdata_reg[191:188] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_382; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_384 = 4'hc == tmp_tdata_reg[191:188] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_383; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_385 = 4'hd == tmp_tdata_reg[191:188] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_384; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_386 = 4'he == tmp_tdata_reg[191:188] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_385; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_387 = 4'hf == tmp_tdata_reg[191:188] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_386; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_23_T_3 = _GEN_387 >> _tmp_result_1_trans_tdata_23_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_23 = _tmp_result_1_trans_tdata_23_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_24_T_2 = {tmp_tdata_reg[195:192], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_389 = 4'h1 == tmp_tdata_reg[199:196] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_390 = 4'h2 == tmp_tdata_reg[199:196] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_389; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_391 = 4'h3 == tmp_tdata_reg[199:196] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_390; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_392 = 4'h4 == tmp_tdata_reg[199:196] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_391; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_393 = 4'h5 == tmp_tdata_reg[199:196] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_392; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_394 = 4'h6 == tmp_tdata_reg[199:196] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_393; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_395 = 4'h7 == tmp_tdata_reg[199:196] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_394; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_396 = 4'h8 == tmp_tdata_reg[199:196] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_395; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_397 = 4'h9 == tmp_tdata_reg[199:196] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_396; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_398 = 4'ha == tmp_tdata_reg[199:196] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_397; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_399 = 4'hb == tmp_tdata_reg[199:196] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_398; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_400 = 4'hc == tmp_tdata_reg[199:196] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_399; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_401 = 4'hd == tmp_tdata_reg[199:196] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_400; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_402 = 4'he == tmp_tdata_reg[199:196] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_401; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_403 = 4'hf == tmp_tdata_reg[199:196] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_402; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_24_T_3 = _GEN_403 >> _tmp_result_1_trans_tdata_24_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_24 = _tmp_result_1_trans_tdata_24_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_25_T_2 = {tmp_tdata_reg[203:200], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_405 = 4'h1 == tmp_tdata_reg[207:204] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_406 = 4'h2 == tmp_tdata_reg[207:204] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_405; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_407 = 4'h3 == tmp_tdata_reg[207:204] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_406; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_408 = 4'h4 == tmp_tdata_reg[207:204] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_407; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_409 = 4'h5 == tmp_tdata_reg[207:204] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_408; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_410 = 4'h6 == tmp_tdata_reg[207:204] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_409; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_411 = 4'h7 == tmp_tdata_reg[207:204] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_410; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_412 = 4'h8 == tmp_tdata_reg[207:204] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_411; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_413 = 4'h9 == tmp_tdata_reg[207:204] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_412; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_414 = 4'ha == tmp_tdata_reg[207:204] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_413; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_415 = 4'hb == tmp_tdata_reg[207:204] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_414; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_416 = 4'hc == tmp_tdata_reg[207:204] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_415; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_417 = 4'hd == tmp_tdata_reg[207:204] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_416; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_418 = 4'he == tmp_tdata_reg[207:204] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_417; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_419 = 4'hf == tmp_tdata_reg[207:204] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_418; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_25_T_3 = _GEN_419 >> _tmp_result_1_trans_tdata_25_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_25 = _tmp_result_1_trans_tdata_25_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_26_T_2 = {tmp_tdata_reg[211:208], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_421 = 4'h1 == tmp_tdata_reg[215:212] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_422 = 4'h2 == tmp_tdata_reg[215:212] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_421; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_423 = 4'h3 == tmp_tdata_reg[215:212] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_422; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_424 = 4'h4 == tmp_tdata_reg[215:212] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_423; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_425 = 4'h5 == tmp_tdata_reg[215:212] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_424; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_426 = 4'h6 == tmp_tdata_reg[215:212] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_425; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_427 = 4'h7 == tmp_tdata_reg[215:212] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_426; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_428 = 4'h8 == tmp_tdata_reg[215:212] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_427; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_429 = 4'h9 == tmp_tdata_reg[215:212] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_428; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_430 = 4'ha == tmp_tdata_reg[215:212] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_429; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_431 = 4'hb == tmp_tdata_reg[215:212] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_430; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_432 = 4'hc == tmp_tdata_reg[215:212] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_431; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_433 = 4'hd == tmp_tdata_reg[215:212] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_432; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_434 = 4'he == tmp_tdata_reg[215:212] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_433; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_435 = 4'hf == tmp_tdata_reg[215:212] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_434; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_26_T_3 = _GEN_435 >> _tmp_result_1_trans_tdata_26_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_26 = _tmp_result_1_trans_tdata_26_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_27_T_2 = {tmp_tdata_reg[219:216], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_437 = 4'h1 == tmp_tdata_reg[223:220] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_438 = 4'h2 == tmp_tdata_reg[223:220] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_437; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_439 = 4'h3 == tmp_tdata_reg[223:220] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_438; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_440 = 4'h4 == tmp_tdata_reg[223:220] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_439; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_441 = 4'h5 == tmp_tdata_reg[223:220] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_440; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_442 = 4'h6 == tmp_tdata_reg[223:220] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_441; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_443 = 4'h7 == tmp_tdata_reg[223:220] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_442; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_444 = 4'h8 == tmp_tdata_reg[223:220] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_443; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_445 = 4'h9 == tmp_tdata_reg[223:220] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_444; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_446 = 4'ha == tmp_tdata_reg[223:220] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_445; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_447 = 4'hb == tmp_tdata_reg[223:220] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_446; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_448 = 4'hc == tmp_tdata_reg[223:220] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_447; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_449 = 4'hd == tmp_tdata_reg[223:220] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_448; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_450 = 4'he == tmp_tdata_reg[223:220] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_449; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_451 = 4'hf == tmp_tdata_reg[223:220] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_450; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_27_T_3 = _GEN_451 >> _tmp_result_1_trans_tdata_27_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_27 = _tmp_result_1_trans_tdata_27_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_28_T_2 = {tmp_tdata_reg[227:224], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_453 = 4'h1 == tmp_tdata_reg[231:228] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_454 = 4'h2 == tmp_tdata_reg[231:228] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_453; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_455 = 4'h3 == tmp_tdata_reg[231:228] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_454; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_456 = 4'h4 == tmp_tdata_reg[231:228] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_455; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_457 = 4'h5 == tmp_tdata_reg[231:228] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_456; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_458 = 4'h6 == tmp_tdata_reg[231:228] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_457; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_459 = 4'h7 == tmp_tdata_reg[231:228] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_458; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_460 = 4'h8 == tmp_tdata_reg[231:228] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_459; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_461 = 4'h9 == tmp_tdata_reg[231:228] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_460; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_462 = 4'ha == tmp_tdata_reg[231:228] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_461; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_463 = 4'hb == tmp_tdata_reg[231:228] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_462; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_464 = 4'hc == tmp_tdata_reg[231:228] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_463; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_465 = 4'hd == tmp_tdata_reg[231:228] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_464; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_466 = 4'he == tmp_tdata_reg[231:228] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_465; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_467 = 4'hf == tmp_tdata_reg[231:228] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_466; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_28_T_3 = _GEN_467 >> _tmp_result_1_trans_tdata_28_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_28 = _tmp_result_1_trans_tdata_28_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_29_T_2 = {tmp_tdata_reg[235:232], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_469 = 4'h1 == tmp_tdata_reg[239:236] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_470 = 4'h2 == tmp_tdata_reg[239:236] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_469; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_471 = 4'h3 == tmp_tdata_reg[239:236] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_470; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_472 = 4'h4 == tmp_tdata_reg[239:236] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_471; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_473 = 4'h5 == tmp_tdata_reg[239:236] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_472; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_474 = 4'h6 == tmp_tdata_reg[239:236] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_473; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_475 = 4'h7 == tmp_tdata_reg[239:236] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_474; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_476 = 4'h8 == tmp_tdata_reg[239:236] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_475; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_477 = 4'h9 == tmp_tdata_reg[239:236] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_476; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_478 = 4'ha == tmp_tdata_reg[239:236] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_477; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_479 = 4'hb == tmp_tdata_reg[239:236] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_478; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_480 = 4'hc == tmp_tdata_reg[239:236] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_479; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_481 = 4'hd == tmp_tdata_reg[239:236] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_480; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_482 = 4'he == tmp_tdata_reg[239:236] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_481; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_483 = 4'hf == tmp_tdata_reg[239:236] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_482; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_29_T_3 = _GEN_483 >> _tmp_result_1_trans_tdata_29_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_29 = _tmp_result_1_trans_tdata_29_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_30_T_2 = {tmp_tdata_reg[243:240], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_485 = 4'h1 == tmp_tdata_reg[247:244] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_486 = 4'h2 == tmp_tdata_reg[247:244] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_485; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_487 = 4'h3 == tmp_tdata_reg[247:244] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_486; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_488 = 4'h4 == tmp_tdata_reg[247:244] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_487; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_489 = 4'h5 == tmp_tdata_reg[247:244] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_488; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_490 = 4'h6 == tmp_tdata_reg[247:244] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_489; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_491 = 4'h7 == tmp_tdata_reg[247:244] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_490; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_492 = 4'h8 == tmp_tdata_reg[247:244] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_491; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_493 = 4'h9 == tmp_tdata_reg[247:244] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_492; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_494 = 4'ha == tmp_tdata_reg[247:244] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_493; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_495 = 4'hb == tmp_tdata_reg[247:244] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_494; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_496 = 4'hc == tmp_tdata_reg[247:244] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_495; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_497 = 4'hd == tmp_tdata_reg[247:244] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_496; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_498 = 4'he == tmp_tdata_reg[247:244] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_497; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_499 = 4'hf == tmp_tdata_reg[247:244] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_498; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_30_T_3 = _GEN_499 >> _tmp_result_1_trans_tdata_30_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_30 = _tmp_result_1_trans_tdata_30_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_31_T_2 = {tmp_tdata_reg[251:248], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_501 = 4'h1 == tmp_tdata_reg[255:252] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_502 = 4'h2 == tmp_tdata_reg[255:252] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_501; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_503 = 4'h3 == tmp_tdata_reg[255:252] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_502; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_504 = 4'h4 == tmp_tdata_reg[255:252] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_503; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_505 = 4'h5 == tmp_tdata_reg[255:252] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_504; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_506 = 4'h6 == tmp_tdata_reg[255:252] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_505; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_507 = 4'h7 == tmp_tdata_reg[255:252] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_506; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_508 = 4'h8 == tmp_tdata_reg[255:252] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_507; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_509 = 4'h9 == tmp_tdata_reg[255:252] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_508; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_510 = 4'ha == tmp_tdata_reg[255:252] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_509; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_511 = 4'hb == tmp_tdata_reg[255:252] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_510; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_512 = 4'hc == tmp_tdata_reg[255:252] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_511; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_513 = 4'hd == tmp_tdata_reg[255:252] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_512; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_514 = 4'he == tmp_tdata_reg[255:252] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_513; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_515 = 4'hf == tmp_tdata_reg[255:252] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_514; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_31_T_3 = _GEN_515 >> _tmp_result_1_trans_tdata_31_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_31 = _tmp_result_1_trans_tdata_31_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_32_T_2 = {tmp_tdata_reg[259:256], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_517 = 4'h1 == tmp_tdata_reg[263:260] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_518 = 4'h2 == tmp_tdata_reg[263:260] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_517; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_519 = 4'h3 == tmp_tdata_reg[263:260] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_518; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_520 = 4'h4 == tmp_tdata_reg[263:260] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_519; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_521 = 4'h5 == tmp_tdata_reg[263:260] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_520; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_522 = 4'h6 == tmp_tdata_reg[263:260] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_521; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_523 = 4'h7 == tmp_tdata_reg[263:260] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_522; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_524 = 4'h8 == tmp_tdata_reg[263:260] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_523; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_525 = 4'h9 == tmp_tdata_reg[263:260] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_524; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_526 = 4'ha == tmp_tdata_reg[263:260] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_525; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_527 = 4'hb == tmp_tdata_reg[263:260] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_526; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_528 = 4'hc == tmp_tdata_reg[263:260] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_527; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_529 = 4'hd == tmp_tdata_reg[263:260] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_528; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_530 = 4'he == tmp_tdata_reg[263:260] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_529; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_531 = 4'hf == tmp_tdata_reg[263:260] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_530; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_32_T_3 = _GEN_531 >> _tmp_result_1_trans_tdata_32_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_32 = _tmp_result_1_trans_tdata_32_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_33_T_2 = {tmp_tdata_reg[267:264], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_533 = 4'h1 == tmp_tdata_reg[271:268] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_534 = 4'h2 == tmp_tdata_reg[271:268] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_533; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_535 = 4'h3 == tmp_tdata_reg[271:268] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_534; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_536 = 4'h4 == tmp_tdata_reg[271:268] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_535; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_537 = 4'h5 == tmp_tdata_reg[271:268] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_536; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_538 = 4'h6 == tmp_tdata_reg[271:268] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_537; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_539 = 4'h7 == tmp_tdata_reg[271:268] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_538; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_540 = 4'h8 == tmp_tdata_reg[271:268] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_539; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_541 = 4'h9 == tmp_tdata_reg[271:268] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_540; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_542 = 4'ha == tmp_tdata_reg[271:268] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_541; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_543 = 4'hb == tmp_tdata_reg[271:268] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_542; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_544 = 4'hc == tmp_tdata_reg[271:268] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_543; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_545 = 4'hd == tmp_tdata_reg[271:268] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_544; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_546 = 4'he == tmp_tdata_reg[271:268] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_545; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_547 = 4'hf == tmp_tdata_reg[271:268] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_546; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_33_T_3 = _GEN_547 >> _tmp_result_1_trans_tdata_33_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_33 = _tmp_result_1_trans_tdata_33_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_34_T_2 = {tmp_tdata_reg[275:272], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_549 = 4'h1 == tmp_tdata_reg[279:276] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_550 = 4'h2 == tmp_tdata_reg[279:276] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_549; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_551 = 4'h3 == tmp_tdata_reg[279:276] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_550; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_552 = 4'h4 == tmp_tdata_reg[279:276] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_551; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_553 = 4'h5 == tmp_tdata_reg[279:276] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_552; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_554 = 4'h6 == tmp_tdata_reg[279:276] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_553; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_555 = 4'h7 == tmp_tdata_reg[279:276] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_554; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_556 = 4'h8 == tmp_tdata_reg[279:276] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_555; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_557 = 4'h9 == tmp_tdata_reg[279:276] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_556; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_558 = 4'ha == tmp_tdata_reg[279:276] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_557; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_559 = 4'hb == tmp_tdata_reg[279:276] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_558; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_560 = 4'hc == tmp_tdata_reg[279:276] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_559; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_561 = 4'hd == tmp_tdata_reg[279:276] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_560; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_562 = 4'he == tmp_tdata_reg[279:276] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_561; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_563 = 4'hf == tmp_tdata_reg[279:276] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_562; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_34_T_3 = _GEN_563 >> _tmp_result_1_trans_tdata_34_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_34 = _tmp_result_1_trans_tdata_34_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_35_T_2 = {tmp_tdata_reg[283:280], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_565 = 4'h1 == tmp_tdata_reg[287:284] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_566 = 4'h2 == tmp_tdata_reg[287:284] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_565; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_567 = 4'h3 == tmp_tdata_reg[287:284] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_566; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_568 = 4'h4 == tmp_tdata_reg[287:284] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_567; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_569 = 4'h5 == tmp_tdata_reg[287:284] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_568; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_570 = 4'h6 == tmp_tdata_reg[287:284] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_569; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_571 = 4'h7 == tmp_tdata_reg[287:284] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_570; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_572 = 4'h8 == tmp_tdata_reg[287:284] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_571; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_573 = 4'h9 == tmp_tdata_reg[287:284] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_572; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_574 = 4'ha == tmp_tdata_reg[287:284] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_573; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_575 = 4'hb == tmp_tdata_reg[287:284] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_574; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_576 = 4'hc == tmp_tdata_reg[287:284] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_575; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_577 = 4'hd == tmp_tdata_reg[287:284] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_576; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_578 = 4'he == tmp_tdata_reg[287:284] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_577; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_579 = 4'hf == tmp_tdata_reg[287:284] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_578; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_35_T_3 = _GEN_579 >> _tmp_result_1_trans_tdata_35_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_35 = _tmp_result_1_trans_tdata_35_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_36_T_2 = {tmp_tdata_reg[291:288], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_581 = 4'h1 == tmp_tdata_reg[295:292] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_582 = 4'h2 == tmp_tdata_reg[295:292] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_581; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_583 = 4'h3 == tmp_tdata_reg[295:292] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_582; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_584 = 4'h4 == tmp_tdata_reg[295:292] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_583; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_585 = 4'h5 == tmp_tdata_reg[295:292] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_584; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_586 = 4'h6 == tmp_tdata_reg[295:292] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_585; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_587 = 4'h7 == tmp_tdata_reg[295:292] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_586; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_588 = 4'h8 == tmp_tdata_reg[295:292] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_587; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_589 = 4'h9 == tmp_tdata_reg[295:292] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_588; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_590 = 4'ha == tmp_tdata_reg[295:292] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_589; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_591 = 4'hb == tmp_tdata_reg[295:292] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_590; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_592 = 4'hc == tmp_tdata_reg[295:292] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_591; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_593 = 4'hd == tmp_tdata_reg[295:292] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_592; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_594 = 4'he == tmp_tdata_reg[295:292] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_593; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_595 = 4'hf == tmp_tdata_reg[295:292] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_594; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_36_T_3 = _GEN_595 >> _tmp_result_1_trans_tdata_36_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_36 = _tmp_result_1_trans_tdata_36_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_37_T_2 = {tmp_tdata_reg[299:296], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_597 = 4'h1 == tmp_tdata_reg[303:300] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_598 = 4'h2 == tmp_tdata_reg[303:300] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_597; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_599 = 4'h3 == tmp_tdata_reg[303:300] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_598; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_600 = 4'h4 == tmp_tdata_reg[303:300] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_599; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_601 = 4'h5 == tmp_tdata_reg[303:300] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_600; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_602 = 4'h6 == tmp_tdata_reg[303:300] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_601; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_603 = 4'h7 == tmp_tdata_reg[303:300] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_602; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_604 = 4'h8 == tmp_tdata_reg[303:300] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_603; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_605 = 4'h9 == tmp_tdata_reg[303:300] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_604; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_606 = 4'ha == tmp_tdata_reg[303:300] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_605; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_607 = 4'hb == tmp_tdata_reg[303:300] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_606; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_608 = 4'hc == tmp_tdata_reg[303:300] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_607; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_609 = 4'hd == tmp_tdata_reg[303:300] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_608; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_610 = 4'he == tmp_tdata_reg[303:300] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_609; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_611 = 4'hf == tmp_tdata_reg[303:300] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_610; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_37_T_3 = _GEN_611 >> _tmp_result_1_trans_tdata_37_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_37 = _tmp_result_1_trans_tdata_37_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_38_T_2 = {tmp_tdata_reg[307:304], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_613 = 4'h1 == tmp_tdata_reg[311:308] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_614 = 4'h2 == tmp_tdata_reg[311:308] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_613; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_615 = 4'h3 == tmp_tdata_reg[311:308] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_614; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_616 = 4'h4 == tmp_tdata_reg[311:308] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_615; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_617 = 4'h5 == tmp_tdata_reg[311:308] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_616; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_618 = 4'h6 == tmp_tdata_reg[311:308] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_617; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_619 = 4'h7 == tmp_tdata_reg[311:308] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_618; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_620 = 4'h8 == tmp_tdata_reg[311:308] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_619; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_621 = 4'h9 == tmp_tdata_reg[311:308] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_620; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_622 = 4'ha == tmp_tdata_reg[311:308] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_621; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_623 = 4'hb == tmp_tdata_reg[311:308] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_622; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_624 = 4'hc == tmp_tdata_reg[311:308] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_623; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_625 = 4'hd == tmp_tdata_reg[311:308] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_624; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_626 = 4'he == tmp_tdata_reg[311:308] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_625; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_627 = 4'hf == tmp_tdata_reg[311:308] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_626; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_38_T_3 = _GEN_627 >> _tmp_result_1_trans_tdata_38_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_38 = _tmp_result_1_trans_tdata_38_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_39_T_2 = {tmp_tdata_reg[315:312], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_629 = 4'h1 == tmp_tdata_reg[319:316] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_630 = 4'h2 == tmp_tdata_reg[319:316] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_629; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_631 = 4'h3 == tmp_tdata_reg[319:316] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_630; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_632 = 4'h4 == tmp_tdata_reg[319:316] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_631; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_633 = 4'h5 == tmp_tdata_reg[319:316] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_632; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_634 = 4'h6 == tmp_tdata_reg[319:316] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_633; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_635 = 4'h7 == tmp_tdata_reg[319:316] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_634; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_636 = 4'h8 == tmp_tdata_reg[319:316] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_635; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_637 = 4'h9 == tmp_tdata_reg[319:316] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_636; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_638 = 4'ha == tmp_tdata_reg[319:316] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_637; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_639 = 4'hb == tmp_tdata_reg[319:316] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_638; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_640 = 4'hc == tmp_tdata_reg[319:316] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_639; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_641 = 4'hd == tmp_tdata_reg[319:316] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_640; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_642 = 4'he == tmp_tdata_reg[319:316] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_641; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_643 = 4'hf == tmp_tdata_reg[319:316] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_642; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_39_T_3 = _GEN_643 >> _tmp_result_1_trans_tdata_39_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_39 = _tmp_result_1_trans_tdata_39_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_40_T_2 = {tmp_tdata_reg[323:320], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_645 = 4'h1 == tmp_tdata_reg[327:324] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_646 = 4'h2 == tmp_tdata_reg[327:324] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_645; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_647 = 4'h3 == tmp_tdata_reg[327:324] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_646; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_648 = 4'h4 == tmp_tdata_reg[327:324] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_647; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_649 = 4'h5 == tmp_tdata_reg[327:324] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_648; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_650 = 4'h6 == tmp_tdata_reg[327:324] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_649; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_651 = 4'h7 == tmp_tdata_reg[327:324] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_650; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_652 = 4'h8 == tmp_tdata_reg[327:324] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_651; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_653 = 4'h9 == tmp_tdata_reg[327:324] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_652; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_654 = 4'ha == tmp_tdata_reg[327:324] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_653; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_655 = 4'hb == tmp_tdata_reg[327:324] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_654; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_656 = 4'hc == tmp_tdata_reg[327:324] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_655; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_657 = 4'hd == tmp_tdata_reg[327:324] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_656; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_658 = 4'he == tmp_tdata_reg[327:324] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_657; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_659 = 4'hf == tmp_tdata_reg[327:324] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_658; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_40_T_3 = _GEN_659 >> _tmp_result_1_trans_tdata_40_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_40 = _tmp_result_1_trans_tdata_40_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_41_T_2 = {tmp_tdata_reg[331:328], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_661 = 4'h1 == tmp_tdata_reg[335:332] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_662 = 4'h2 == tmp_tdata_reg[335:332] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_661; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_663 = 4'h3 == tmp_tdata_reg[335:332] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_662; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_664 = 4'h4 == tmp_tdata_reg[335:332] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_663; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_665 = 4'h5 == tmp_tdata_reg[335:332] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_664; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_666 = 4'h6 == tmp_tdata_reg[335:332] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_665; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_667 = 4'h7 == tmp_tdata_reg[335:332] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_666; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_668 = 4'h8 == tmp_tdata_reg[335:332] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_667; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_669 = 4'h9 == tmp_tdata_reg[335:332] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_668; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_670 = 4'ha == tmp_tdata_reg[335:332] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_669; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_671 = 4'hb == tmp_tdata_reg[335:332] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_670; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_672 = 4'hc == tmp_tdata_reg[335:332] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_671; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_673 = 4'hd == tmp_tdata_reg[335:332] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_672; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_674 = 4'he == tmp_tdata_reg[335:332] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_673; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_675 = 4'hf == tmp_tdata_reg[335:332] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_674; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_41_T_3 = _GEN_675 >> _tmp_result_1_trans_tdata_41_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_41 = _tmp_result_1_trans_tdata_41_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_42_T_2 = {tmp_tdata_reg[339:336], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_677 = 4'h1 == tmp_tdata_reg[343:340] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_678 = 4'h2 == tmp_tdata_reg[343:340] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_677; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_679 = 4'h3 == tmp_tdata_reg[343:340] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_678; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_680 = 4'h4 == tmp_tdata_reg[343:340] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_679; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_681 = 4'h5 == tmp_tdata_reg[343:340] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_680; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_682 = 4'h6 == tmp_tdata_reg[343:340] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_681; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_683 = 4'h7 == tmp_tdata_reg[343:340] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_682; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_684 = 4'h8 == tmp_tdata_reg[343:340] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_683; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_685 = 4'h9 == tmp_tdata_reg[343:340] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_684; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_686 = 4'ha == tmp_tdata_reg[343:340] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_685; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_687 = 4'hb == tmp_tdata_reg[343:340] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_686; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_688 = 4'hc == tmp_tdata_reg[343:340] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_687; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_689 = 4'hd == tmp_tdata_reg[343:340] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_688; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_690 = 4'he == tmp_tdata_reg[343:340] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_689; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_691 = 4'hf == tmp_tdata_reg[343:340] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_690; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_42_T_3 = _GEN_691 >> _tmp_result_1_trans_tdata_42_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_42 = _tmp_result_1_trans_tdata_42_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_43_T_2 = {tmp_tdata_reg[347:344], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_693 = 4'h1 == tmp_tdata_reg[351:348] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_694 = 4'h2 == tmp_tdata_reg[351:348] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_693; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_695 = 4'h3 == tmp_tdata_reg[351:348] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_694; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_696 = 4'h4 == tmp_tdata_reg[351:348] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_695; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_697 = 4'h5 == tmp_tdata_reg[351:348] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_696; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_698 = 4'h6 == tmp_tdata_reg[351:348] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_697; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_699 = 4'h7 == tmp_tdata_reg[351:348] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_698; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_700 = 4'h8 == tmp_tdata_reg[351:348] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_699; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_701 = 4'h9 == tmp_tdata_reg[351:348] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_700; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_702 = 4'ha == tmp_tdata_reg[351:348] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_701; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_703 = 4'hb == tmp_tdata_reg[351:348] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_702; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_704 = 4'hc == tmp_tdata_reg[351:348] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_703; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_705 = 4'hd == tmp_tdata_reg[351:348] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_704; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_706 = 4'he == tmp_tdata_reg[351:348] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_705; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_707 = 4'hf == tmp_tdata_reg[351:348] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_706; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_43_T_3 = _GEN_707 >> _tmp_result_1_trans_tdata_43_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_43 = _tmp_result_1_trans_tdata_43_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_44_T_2 = {tmp_tdata_reg[355:352], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_709 = 4'h1 == tmp_tdata_reg[359:356] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_710 = 4'h2 == tmp_tdata_reg[359:356] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_709; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_711 = 4'h3 == tmp_tdata_reg[359:356] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_710; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_712 = 4'h4 == tmp_tdata_reg[359:356] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_711; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_713 = 4'h5 == tmp_tdata_reg[359:356] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_712; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_714 = 4'h6 == tmp_tdata_reg[359:356] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_713; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_715 = 4'h7 == tmp_tdata_reg[359:356] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_714; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_716 = 4'h8 == tmp_tdata_reg[359:356] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_715; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_717 = 4'h9 == tmp_tdata_reg[359:356] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_716; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_718 = 4'ha == tmp_tdata_reg[359:356] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_717; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_719 = 4'hb == tmp_tdata_reg[359:356] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_718; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_720 = 4'hc == tmp_tdata_reg[359:356] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_719; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_721 = 4'hd == tmp_tdata_reg[359:356] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_720; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_722 = 4'he == tmp_tdata_reg[359:356] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_721; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_723 = 4'hf == tmp_tdata_reg[359:356] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_722; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_44_T_3 = _GEN_723 >> _tmp_result_1_trans_tdata_44_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_44 = _tmp_result_1_trans_tdata_44_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_45_T_2 = {tmp_tdata_reg[363:360], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_725 = 4'h1 == tmp_tdata_reg[367:364] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_726 = 4'h2 == tmp_tdata_reg[367:364] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_725; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_727 = 4'h3 == tmp_tdata_reg[367:364] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_726; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_728 = 4'h4 == tmp_tdata_reg[367:364] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_727; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_729 = 4'h5 == tmp_tdata_reg[367:364] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_728; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_730 = 4'h6 == tmp_tdata_reg[367:364] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_729; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_731 = 4'h7 == tmp_tdata_reg[367:364] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_730; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_732 = 4'h8 == tmp_tdata_reg[367:364] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_731; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_733 = 4'h9 == tmp_tdata_reg[367:364] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_732; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_734 = 4'ha == tmp_tdata_reg[367:364] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_733; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_735 = 4'hb == tmp_tdata_reg[367:364] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_734; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_736 = 4'hc == tmp_tdata_reg[367:364] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_735; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_737 = 4'hd == tmp_tdata_reg[367:364] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_736; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_738 = 4'he == tmp_tdata_reg[367:364] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_737; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_739 = 4'hf == tmp_tdata_reg[367:364] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_738; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_45_T_3 = _GEN_739 >> _tmp_result_1_trans_tdata_45_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_45 = _tmp_result_1_trans_tdata_45_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_46_T_2 = {tmp_tdata_reg[371:368], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_741 = 4'h1 == tmp_tdata_reg[375:372] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_742 = 4'h2 == tmp_tdata_reg[375:372] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_741; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_743 = 4'h3 == tmp_tdata_reg[375:372] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_742; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_744 = 4'h4 == tmp_tdata_reg[375:372] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_743; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_745 = 4'h5 == tmp_tdata_reg[375:372] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_744; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_746 = 4'h6 == tmp_tdata_reg[375:372] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_745; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_747 = 4'h7 == tmp_tdata_reg[375:372] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_746; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_748 = 4'h8 == tmp_tdata_reg[375:372] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_747; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_749 = 4'h9 == tmp_tdata_reg[375:372] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_748; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_750 = 4'ha == tmp_tdata_reg[375:372] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_749; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_751 = 4'hb == tmp_tdata_reg[375:372] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_750; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_752 = 4'hc == tmp_tdata_reg[375:372] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_751; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_753 = 4'hd == tmp_tdata_reg[375:372] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_752; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_754 = 4'he == tmp_tdata_reg[375:372] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_753; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_755 = 4'hf == tmp_tdata_reg[375:372] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_754; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_46_T_3 = _GEN_755 >> _tmp_result_1_trans_tdata_46_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_46 = _tmp_result_1_trans_tdata_46_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_47_T_2 = {tmp_tdata_reg[379:376], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_757 = 4'h1 == tmp_tdata_reg[383:380] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_758 = 4'h2 == tmp_tdata_reg[383:380] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_757; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_759 = 4'h3 == tmp_tdata_reg[383:380] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_758; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_760 = 4'h4 == tmp_tdata_reg[383:380] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_759; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_761 = 4'h5 == tmp_tdata_reg[383:380] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_760; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_762 = 4'h6 == tmp_tdata_reg[383:380] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_761; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_763 = 4'h7 == tmp_tdata_reg[383:380] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_762; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_764 = 4'h8 == tmp_tdata_reg[383:380] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_763; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_765 = 4'h9 == tmp_tdata_reg[383:380] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_764; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_766 = 4'ha == tmp_tdata_reg[383:380] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_765; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_767 = 4'hb == tmp_tdata_reg[383:380] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_766; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_768 = 4'hc == tmp_tdata_reg[383:380] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_767; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_769 = 4'hd == tmp_tdata_reg[383:380] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_768; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_770 = 4'he == tmp_tdata_reg[383:380] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_769; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_771 = 4'hf == tmp_tdata_reg[383:380] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_770; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_47_T_3 = _GEN_771 >> _tmp_result_1_trans_tdata_47_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_47 = _tmp_result_1_trans_tdata_47_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_48_T_2 = {tmp_tdata_reg[387:384], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_773 = 4'h1 == tmp_tdata_reg[391:388] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_774 = 4'h2 == tmp_tdata_reg[391:388] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_773; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_775 = 4'h3 == tmp_tdata_reg[391:388] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_774; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_776 = 4'h4 == tmp_tdata_reg[391:388] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_775; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_777 = 4'h5 == tmp_tdata_reg[391:388] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_776; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_778 = 4'h6 == tmp_tdata_reg[391:388] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_777; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_779 = 4'h7 == tmp_tdata_reg[391:388] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_778; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_780 = 4'h8 == tmp_tdata_reg[391:388] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_779; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_781 = 4'h9 == tmp_tdata_reg[391:388] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_780; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_782 = 4'ha == tmp_tdata_reg[391:388] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_781; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_783 = 4'hb == tmp_tdata_reg[391:388] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_782; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_784 = 4'hc == tmp_tdata_reg[391:388] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_783; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_785 = 4'hd == tmp_tdata_reg[391:388] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_784; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_786 = 4'he == tmp_tdata_reg[391:388] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_785; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_787 = 4'hf == tmp_tdata_reg[391:388] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_786; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_48_T_3 = _GEN_787 >> _tmp_result_1_trans_tdata_48_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_48 = _tmp_result_1_trans_tdata_48_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_49_T_2 = {tmp_tdata_reg[395:392], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_789 = 4'h1 == tmp_tdata_reg[399:396] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_790 = 4'h2 == tmp_tdata_reg[399:396] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_789; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_791 = 4'h3 == tmp_tdata_reg[399:396] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_790; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_792 = 4'h4 == tmp_tdata_reg[399:396] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_791; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_793 = 4'h5 == tmp_tdata_reg[399:396] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_792; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_794 = 4'h6 == tmp_tdata_reg[399:396] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_793; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_795 = 4'h7 == tmp_tdata_reg[399:396] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_794; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_796 = 4'h8 == tmp_tdata_reg[399:396] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_795; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_797 = 4'h9 == tmp_tdata_reg[399:396] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_796; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_798 = 4'ha == tmp_tdata_reg[399:396] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_797; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_799 = 4'hb == tmp_tdata_reg[399:396] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_798; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_800 = 4'hc == tmp_tdata_reg[399:396] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_799; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_801 = 4'hd == tmp_tdata_reg[399:396] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_800; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_802 = 4'he == tmp_tdata_reg[399:396] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_801; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_803 = 4'hf == tmp_tdata_reg[399:396] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_802; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_49_T_3 = _GEN_803 >> _tmp_result_1_trans_tdata_49_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_49 = _tmp_result_1_trans_tdata_49_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_50_T_2 = {tmp_tdata_reg[403:400], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_805 = 4'h1 == tmp_tdata_reg[407:404] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_806 = 4'h2 == tmp_tdata_reg[407:404] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_805; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_807 = 4'h3 == tmp_tdata_reg[407:404] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_806; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_808 = 4'h4 == tmp_tdata_reg[407:404] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_807; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_809 = 4'h5 == tmp_tdata_reg[407:404] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_808; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_810 = 4'h6 == tmp_tdata_reg[407:404] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_809; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_811 = 4'h7 == tmp_tdata_reg[407:404] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_810; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_812 = 4'h8 == tmp_tdata_reg[407:404] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_811; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_813 = 4'h9 == tmp_tdata_reg[407:404] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_812; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_814 = 4'ha == tmp_tdata_reg[407:404] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_813; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_815 = 4'hb == tmp_tdata_reg[407:404] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_814; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_816 = 4'hc == tmp_tdata_reg[407:404] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_815; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_817 = 4'hd == tmp_tdata_reg[407:404] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_816; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_818 = 4'he == tmp_tdata_reg[407:404] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_817; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_819 = 4'hf == tmp_tdata_reg[407:404] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_818; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_50_T_3 = _GEN_819 >> _tmp_result_1_trans_tdata_50_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_50 = _tmp_result_1_trans_tdata_50_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_51_T_2 = {tmp_tdata_reg[411:408], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_821 = 4'h1 == tmp_tdata_reg[415:412] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_822 = 4'h2 == tmp_tdata_reg[415:412] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_821; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_823 = 4'h3 == tmp_tdata_reg[415:412] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_822; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_824 = 4'h4 == tmp_tdata_reg[415:412] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_823; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_825 = 4'h5 == tmp_tdata_reg[415:412] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_824; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_826 = 4'h6 == tmp_tdata_reg[415:412] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_825; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_827 = 4'h7 == tmp_tdata_reg[415:412] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_826; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_828 = 4'h8 == tmp_tdata_reg[415:412] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_827; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_829 = 4'h9 == tmp_tdata_reg[415:412] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_828; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_830 = 4'ha == tmp_tdata_reg[415:412] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_829; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_831 = 4'hb == tmp_tdata_reg[415:412] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_830; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_832 = 4'hc == tmp_tdata_reg[415:412] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_831; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_833 = 4'hd == tmp_tdata_reg[415:412] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_832; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_834 = 4'he == tmp_tdata_reg[415:412] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_833; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_835 = 4'hf == tmp_tdata_reg[415:412] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_834; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_51_T_3 = _GEN_835 >> _tmp_result_1_trans_tdata_51_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_51 = _tmp_result_1_trans_tdata_51_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_52_T_2 = {tmp_tdata_reg[419:416], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_837 = 4'h1 == tmp_tdata_reg[423:420] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_838 = 4'h2 == tmp_tdata_reg[423:420] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_837; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_839 = 4'h3 == tmp_tdata_reg[423:420] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_838; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_840 = 4'h4 == tmp_tdata_reg[423:420] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_839; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_841 = 4'h5 == tmp_tdata_reg[423:420] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_840; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_842 = 4'h6 == tmp_tdata_reg[423:420] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_841; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_843 = 4'h7 == tmp_tdata_reg[423:420] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_842; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_844 = 4'h8 == tmp_tdata_reg[423:420] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_843; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_845 = 4'h9 == tmp_tdata_reg[423:420] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_844; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_846 = 4'ha == tmp_tdata_reg[423:420] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_845; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_847 = 4'hb == tmp_tdata_reg[423:420] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_846; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_848 = 4'hc == tmp_tdata_reg[423:420] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_847; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_849 = 4'hd == tmp_tdata_reg[423:420] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_848; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_850 = 4'he == tmp_tdata_reg[423:420] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_849; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_851 = 4'hf == tmp_tdata_reg[423:420] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_850; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_52_T_3 = _GEN_851 >> _tmp_result_1_trans_tdata_52_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_52 = _tmp_result_1_trans_tdata_52_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_53_T_2 = {tmp_tdata_reg[427:424], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_853 = 4'h1 == tmp_tdata_reg[431:428] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_854 = 4'h2 == tmp_tdata_reg[431:428] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_853; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_855 = 4'h3 == tmp_tdata_reg[431:428] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_854; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_856 = 4'h4 == tmp_tdata_reg[431:428] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_855; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_857 = 4'h5 == tmp_tdata_reg[431:428] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_856; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_858 = 4'h6 == tmp_tdata_reg[431:428] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_857; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_859 = 4'h7 == tmp_tdata_reg[431:428] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_858; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_860 = 4'h8 == tmp_tdata_reg[431:428] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_859; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_861 = 4'h9 == tmp_tdata_reg[431:428] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_860; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_862 = 4'ha == tmp_tdata_reg[431:428] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_861; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_863 = 4'hb == tmp_tdata_reg[431:428] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_862; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_864 = 4'hc == tmp_tdata_reg[431:428] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_863; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_865 = 4'hd == tmp_tdata_reg[431:428] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_864; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_866 = 4'he == tmp_tdata_reg[431:428] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_865; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_867 = 4'hf == tmp_tdata_reg[431:428] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_866; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_53_T_3 = _GEN_867 >> _tmp_result_1_trans_tdata_53_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_53 = _tmp_result_1_trans_tdata_53_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_54_T_2 = {tmp_tdata_reg[435:432], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_869 = 4'h1 == tmp_tdata_reg[439:436] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_870 = 4'h2 == tmp_tdata_reg[439:436] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_869; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_871 = 4'h3 == tmp_tdata_reg[439:436] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_870; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_872 = 4'h4 == tmp_tdata_reg[439:436] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_871; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_873 = 4'h5 == tmp_tdata_reg[439:436] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_872; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_874 = 4'h6 == tmp_tdata_reg[439:436] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_873; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_875 = 4'h7 == tmp_tdata_reg[439:436] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_874; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_876 = 4'h8 == tmp_tdata_reg[439:436] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_875; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_877 = 4'h9 == tmp_tdata_reg[439:436] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_876; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_878 = 4'ha == tmp_tdata_reg[439:436] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_877; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_879 = 4'hb == tmp_tdata_reg[439:436] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_878; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_880 = 4'hc == tmp_tdata_reg[439:436] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_879; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_881 = 4'hd == tmp_tdata_reg[439:436] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_880; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_882 = 4'he == tmp_tdata_reg[439:436] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_881; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_883 = 4'hf == tmp_tdata_reg[439:436] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_882; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_54_T_3 = _GEN_883 >> _tmp_result_1_trans_tdata_54_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_54 = _tmp_result_1_trans_tdata_54_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_55_T_2 = {tmp_tdata_reg[443:440], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_885 = 4'h1 == tmp_tdata_reg[447:444] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_886 = 4'h2 == tmp_tdata_reg[447:444] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_885; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_887 = 4'h3 == tmp_tdata_reg[447:444] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_886; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_888 = 4'h4 == tmp_tdata_reg[447:444] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_887; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_889 = 4'h5 == tmp_tdata_reg[447:444] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_888; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_890 = 4'h6 == tmp_tdata_reg[447:444] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_889; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_891 = 4'h7 == tmp_tdata_reg[447:444] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_890; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_892 = 4'h8 == tmp_tdata_reg[447:444] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_891; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_893 = 4'h9 == tmp_tdata_reg[447:444] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_892; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_894 = 4'ha == tmp_tdata_reg[447:444] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_893; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_895 = 4'hb == tmp_tdata_reg[447:444] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_894; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_896 = 4'hc == tmp_tdata_reg[447:444] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_895; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_897 = 4'hd == tmp_tdata_reg[447:444] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_896; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_898 = 4'he == tmp_tdata_reg[447:444] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_897; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_899 = 4'hf == tmp_tdata_reg[447:444] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_898; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_55_T_3 = _GEN_899 >> _tmp_result_1_trans_tdata_55_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_55 = _tmp_result_1_trans_tdata_55_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_56_T_2 = {tmp_tdata_reg[451:448], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_901 = 4'h1 == tmp_tdata_reg[455:452] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_902 = 4'h2 == tmp_tdata_reg[455:452] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_901; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_903 = 4'h3 == tmp_tdata_reg[455:452] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_902; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_904 = 4'h4 == tmp_tdata_reg[455:452] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_903; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_905 = 4'h5 == tmp_tdata_reg[455:452] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_904; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_906 = 4'h6 == tmp_tdata_reg[455:452] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_905; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_907 = 4'h7 == tmp_tdata_reg[455:452] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_906; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_908 = 4'h8 == tmp_tdata_reg[455:452] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_907; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_909 = 4'h9 == tmp_tdata_reg[455:452] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_908; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_910 = 4'ha == tmp_tdata_reg[455:452] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_909; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_911 = 4'hb == tmp_tdata_reg[455:452] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_910; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_912 = 4'hc == tmp_tdata_reg[455:452] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_911; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_913 = 4'hd == tmp_tdata_reg[455:452] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_912; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_914 = 4'he == tmp_tdata_reg[455:452] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_913; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_915 = 4'hf == tmp_tdata_reg[455:452] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_914; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_56_T_3 = _GEN_915 >> _tmp_result_1_trans_tdata_56_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_56 = _tmp_result_1_trans_tdata_56_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_57_T_2 = {tmp_tdata_reg[459:456], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_917 = 4'h1 == tmp_tdata_reg[463:460] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_918 = 4'h2 == tmp_tdata_reg[463:460] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_917; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_919 = 4'h3 == tmp_tdata_reg[463:460] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_918; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_920 = 4'h4 == tmp_tdata_reg[463:460] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_919; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_921 = 4'h5 == tmp_tdata_reg[463:460] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_920; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_922 = 4'h6 == tmp_tdata_reg[463:460] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_921; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_923 = 4'h7 == tmp_tdata_reg[463:460] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_922; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_924 = 4'h8 == tmp_tdata_reg[463:460] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_923; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_925 = 4'h9 == tmp_tdata_reg[463:460] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_924; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_926 = 4'ha == tmp_tdata_reg[463:460] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_925; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_927 = 4'hb == tmp_tdata_reg[463:460] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_926; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_928 = 4'hc == tmp_tdata_reg[463:460] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_927; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_929 = 4'hd == tmp_tdata_reg[463:460] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_928; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_930 = 4'he == tmp_tdata_reg[463:460] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_929; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_931 = 4'hf == tmp_tdata_reg[463:460] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_930; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_57_T_3 = _GEN_931 >> _tmp_result_1_trans_tdata_57_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_57 = _tmp_result_1_trans_tdata_57_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_58_T_2 = {tmp_tdata_reg[467:464], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_933 = 4'h1 == tmp_tdata_reg[471:468] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_934 = 4'h2 == tmp_tdata_reg[471:468] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_933; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_935 = 4'h3 == tmp_tdata_reg[471:468] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_934; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_936 = 4'h4 == tmp_tdata_reg[471:468] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_935; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_937 = 4'h5 == tmp_tdata_reg[471:468] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_936; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_938 = 4'h6 == tmp_tdata_reg[471:468] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_937; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_939 = 4'h7 == tmp_tdata_reg[471:468] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_938; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_940 = 4'h8 == tmp_tdata_reg[471:468] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_939; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_941 = 4'h9 == tmp_tdata_reg[471:468] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_940; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_942 = 4'ha == tmp_tdata_reg[471:468] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_941; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_943 = 4'hb == tmp_tdata_reg[471:468] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_942; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_944 = 4'hc == tmp_tdata_reg[471:468] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_943; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_945 = 4'hd == tmp_tdata_reg[471:468] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_944; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_946 = 4'he == tmp_tdata_reg[471:468] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_945; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_947 = 4'hf == tmp_tdata_reg[471:468] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_946; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_58_T_3 = _GEN_947 >> _tmp_result_1_trans_tdata_58_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_58 = _tmp_result_1_trans_tdata_58_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_59_T_2 = {tmp_tdata_reg[475:472], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_949 = 4'h1 == tmp_tdata_reg[479:476] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_950 = 4'h2 == tmp_tdata_reg[479:476] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_949; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_951 = 4'h3 == tmp_tdata_reg[479:476] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_950; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_952 = 4'h4 == tmp_tdata_reg[479:476] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_951; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_953 = 4'h5 == tmp_tdata_reg[479:476] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_952; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_954 = 4'h6 == tmp_tdata_reg[479:476] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_953; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_955 = 4'h7 == tmp_tdata_reg[479:476] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_954; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_956 = 4'h8 == tmp_tdata_reg[479:476] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_955; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_957 = 4'h9 == tmp_tdata_reg[479:476] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_956; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_958 = 4'ha == tmp_tdata_reg[479:476] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_957; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_959 = 4'hb == tmp_tdata_reg[479:476] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_958; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_960 = 4'hc == tmp_tdata_reg[479:476] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_959; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_961 = 4'hd == tmp_tdata_reg[479:476] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_960; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_962 = 4'he == tmp_tdata_reg[479:476] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_961; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_963 = 4'hf == tmp_tdata_reg[479:476] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_962; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_59_T_3 = _GEN_963 >> _tmp_result_1_trans_tdata_59_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_59 = _tmp_result_1_trans_tdata_59_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_60_T_2 = {tmp_tdata_reg[483:480], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_965 = 4'h1 == tmp_tdata_reg[487:484] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_966 = 4'h2 == tmp_tdata_reg[487:484] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_965; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_967 = 4'h3 == tmp_tdata_reg[487:484] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_966; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_968 = 4'h4 == tmp_tdata_reg[487:484] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_967; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_969 = 4'h5 == tmp_tdata_reg[487:484] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_968; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_970 = 4'h6 == tmp_tdata_reg[487:484] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_969; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_971 = 4'h7 == tmp_tdata_reg[487:484] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_970; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_972 = 4'h8 == tmp_tdata_reg[487:484] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_971; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_973 = 4'h9 == tmp_tdata_reg[487:484] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_972; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_974 = 4'ha == tmp_tdata_reg[487:484] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_973; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_975 = 4'hb == tmp_tdata_reg[487:484] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_974; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_976 = 4'hc == tmp_tdata_reg[487:484] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_975; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_977 = 4'hd == tmp_tdata_reg[487:484] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_976; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_978 = 4'he == tmp_tdata_reg[487:484] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_977; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_979 = 4'hf == tmp_tdata_reg[487:484] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_978; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_60_T_3 = _GEN_979 >> _tmp_result_1_trans_tdata_60_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_60 = _tmp_result_1_trans_tdata_60_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_61_T_2 = {tmp_tdata_reg[491:488], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_981 = 4'h1 == tmp_tdata_reg[495:492] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_982 = 4'h2 == tmp_tdata_reg[495:492] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_981; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_983 = 4'h3 == tmp_tdata_reg[495:492] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_982; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_984 = 4'h4 == tmp_tdata_reg[495:492] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_983; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_985 = 4'h5 == tmp_tdata_reg[495:492] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_984; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_986 = 4'h6 == tmp_tdata_reg[495:492] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_985; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_987 = 4'h7 == tmp_tdata_reg[495:492] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_986; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_988 = 4'h8 == tmp_tdata_reg[495:492] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_987; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_989 = 4'h9 == tmp_tdata_reg[495:492] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_988; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_990 = 4'ha == tmp_tdata_reg[495:492] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_989; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_991 = 4'hb == tmp_tdata_reg[495:492] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_990; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_992 = 4'hc == tmp_tdata_reg[495:492] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_991; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_993 = 4'hd == tmp_tdata_reg[495:492] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_992; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_994 = 4'he == tmp_tdata_reg[495:492] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_993; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_995 = 4'hf == tmp_tdata_reg[495:492] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_994; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_61_T_3 = _GEN_995 >> _tmp_result_1_trans_tdata_61_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_61 = _tmp_result_1_trans_tdata_61_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_62_T_2 = {tmp_tdata_reg[499:496], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_997 = 4'h1 == tmp_tdata_reg[503:500] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_998 = 4'h2 == tmp_tdata_reg[503:500] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_997; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_999 = 4'h3 == tmp_tdata_reg[503:500] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_998; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1000 = 4'h4 == tmp_tdata_reg[503:500] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_999; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1001 = 4'h5 == tmp_tdata_reg[503:500] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_1000; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1002 = 4'h6 == tmp_tdata_reg[503:500] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_1001; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1003 = 4'h7 == tmp_tdata_reg[503:500] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_1002; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1004 = 4'h8 == tmp_tdata_reg[503:500] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_1003; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1005 = 4'h9 == tmp_tdata_reg[503:500] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_1004; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1006 = 4'ha == tmp_tdata_reg[503:500] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_1005; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1007 = 4'hb == tmp_tdata_reg[503:500] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_1006; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1008 = 4'hc == tmp_tdata_reg[503:500] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_1007; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1009 = 4'hd == tmp_tdata_reg[503:500] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_1008; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1010 = 4'he == tmp_tdata_reg[503:500] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_1009; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1011 = 4'hf == tmp_tdata_reg[503:500] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_1010; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_62_T_3 = _GEN_1011 >> _tmp_result_1_trans_tdata_62_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_62 = _tmp_result_1_trans_tdata_62_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [6:0] _tmp_result_1_trans_tdata_63_T_2 = {tmp_tdata_reg[507:504], 3'h0}; // @[cal_gf256.scala 49:29]
  wire [127:0] _GEN_1013 = 4'h1 == tmp_tdata_reg[511:508] ? 128'hcbe9dec444438e3487ff2f9b8239e37c : 128'hfbd7f3819ea340bf38a53630d56a0952
    ; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1014 = 4'h2 == tmp_tdata_reg[511:508] ? 128'h4ec3fa420b954cee3d23c2a632947b54 : _GEN_1013; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1015 = 4'h3 == tmp_tdata_reg[511:508] ? 128'h25d18b6d49a25b76b224d92866a12e08 : _GEN_1014; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1016 = 4'h4 == tmp_tdata_reg[511:508] ? 128'h92b6655dcc5ca4d41698688664f6f872 : _GEN_1015; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1017 = 4'h5 == tmp_tdata_reg[511:508] ? 128'h849d8da75746155edab9edfd5048706c : _GEN_1016; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1018 = 4'h6 == tmp_tdata_reg[511:508] ? 128'h645b3b80558e4f70ad3bc8c00abd890 : _GEN_1017; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1019 = 4'h7 == tmp_tdata_reg[511:508] ? 128'h6b8a130103bdafc1020f3fca8f1e2cd0 : _GEN_1018; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1020 = 4'h8 == tmp_tdata_reg[511:508] ? 128'h73e6b4f0cecff297eadc674f4111913a : _GEN_1019; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1021 = 4'h9 == tmp_tdata_reg[511:508] ? 128'h6edf751ce837f9e28535ade72274ac96 : _GEN_1020; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1022 = 4'ha == tmp_tdata_reg[511:508] ? 128'h1bbe18aa0e62b76f89c5291d711af147 : _GEN_1021; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1023 = 4'hb == tmp_tdata_reg[511:508] ? 128'hf45acd78fec0db9a2079d2c64b3e56fc : _GEN_1022; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1024 = 4'hc == tmp_tdata_reg[511:508] ? 128'h5fec8027591012b131c7078833a8dd1f : _GEN_1023; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1025 = 4'hd == tmp_tdata_reg[511:508] ? 128'hef9cc9939f7ae52d0d4ab519a97f5160 : _GEN_1024; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1026 = 4'he == tmp_tdata_reg[511:508] ? 128'h619953833cbbebc8b0f52aae4d3be0a0 : _GEN_1025; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _GEN_1027 = 4'hf == tmp_tdata_reg[511:508] ? 128'h7d0c2155631469e126d677ba7e042b17 : _GEN_1026; // @[cal_gf256.scala 49:{21,21}]
  wire [127:0] _tmp_result_1_trans_tdata_63_T_3 = _GEN_1027 >> _tmp_result_1_trans_tdata_63_T_2; // @[cal_gf256.scala 49:21]
  wire [7:0] tmp_result_1_trans_tdata_63 = _tmp_result_1_trans_tdata_63_T_3[7:0]; // @[cal_gf256.scala 49:37]
  wire [63:0] tmp_result_1_lo_lo_lo = {tmp_result_1_trans_tdata_7,tmp_result_1_trans_tdata_6,tmp_result_1_trans_tdata_5,
    tmp_result_1_trans_tdata_4,tmp_result_1_trans_tdata_3,tmp_result_1_trans_tdata_2,tmp_result_1_trans_tdata_1,
    tmp_result_1_trans_tdata_0}; // @[RxAESDecrypter.scala 18:21]
  wire [127:0] tmp_result_1_lo_lo = {tmp_result_1_trans_tdata_15,tmp_result_1_trans_tdata_14,tmp_result_1_trans_tdata_13
    ,tmp_result_1_trans_tdata_12,tmp_result_1_trans_tdata_11,tmp_result_1_trans_tdata_10,tmp_result_1_trans_tdata_9,
    tmp_result_1_trans_tdata_8,tmp_result_1_lo_lo_lo}; // @[RxAESDecrypter.scala 18:21]
  wire [63:0] tmp_result_1_lo_hi_lo = {tmp_result_1_trans_tdata_23,tmp_result_1_trans_tdata_22,
    tmp_result_1_trans_tdata_21,tmp_result_1_trans_tdata_20,tmp_result_1_trans_tdata_19,tmp_result_1_trans_tdata_18,
    tmp_result_1_trans_tdata_17,tmp_result_1_trans_tdata_16}; // @[RxAESDecrypter.scala 18:21]
  wire [255:0] tmp_result_1_lo = {tmp_result_1_trans_tdata_31,tmp_result_1_trans_tdata_30,tmp_result_1_trans_tdata_29,
    tmp_result_1_trans_tdata_28,tmp_result_1_trans_tdata_27,tmp_result_1_trans_tdata_26,tmp_result_1_trans_tdata_25,
    tmp_result_1_trans_tdata_24,tmp_result_1_lo_hi_lo,tmp_result_1_lo_lo}; // @[RxAESDecrypter.scala 18:21]
  wire [63:0] tmp_result_1_hi_lo_lo = {tmp_result_1_trans_tdata_39,tmp_result_1_trans_tdata_38,
    tmp_result_1_trans_tdata_37,tmp_result_1_trans_tdata_36,tmp_result_1_trans_tdata_35,tmp_result_1_trans_tdata_34,
    tmp_result_1_trans_tdata_33,tmp_result_1_trans_tdata_32}; // @[RxAESDecrypter.scala 18:21]
  wire [127:0] tmp_result_1_hi_lo = {tmp_result_1_trans_tdata_47,tmp_result_1_trans_tdata_46,tmp_result_1_trans_tdata_45
    ,tmp_result_1_trans_tdata_44,tmp_result_1_trans_tdata_43,tmp_result_1_trans_tdata_42,tmp_result_1_trans_tdata_41,
    tmp_result_1_trans_tdata_40,tmp_result_1_hi_lo_lo}; // @[RxAESDecrypter.scala 18:21]
  wire [63:0] tmp_result_1_hi_hi_lo = {tmp_result_1_trans_tdata_55,tmp_result_1_trans_tdata_54,
    tmp_result_1_trans_tdata_53,tmp_result_1_trans_tdata_52,tmp_result_1_trans_tdata_51,tmp_result_1_trans_tdata_50,
    tmp_result_1_trans_tdata_49,tmp_result_1_trans_tdata_48}; // @[RxAESDecrypter.scala 18:21]
  wire [255:0] tmp_result_1_hi = {tmp_result_1_trans_tdata_63,tmp_result_1_trans_tdata_62,tmp_result_1_trans_tdata_61,
    tmp_result_1_trans_tdata_60,tmp_result_1_trans_tdata_59,tmp_result_1_trans_tdata_58,tmp_result_1_trans_tdata_57,
    tmp_result_1_trans_tdata_56,tmp_result_1_hi_hi_lo,tmp_result_1_hi_lo}; // @[RxAESDecrypter.scala 18:21]
  wire [511:0] tmp_result_1 = {tmp_result_1_hi,tmp_result_1_lo}; // @[RxAESDecrypter.scala 18:21]
  wire [7:0] _tmp_result_2_T_1 = 8'ha - cur_round; // @[RxAESDecrypter.scala 59:55]
  wire [127:0] _GEN_1029 = 4'h1 == _tmp_result_2_T_1[3:0] ? aes_key_reg_1 : aes_key_reg_0; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1030 = 4'h2 == _tmp_result_2_T_1[3:0] ? aes_key_reg_2 : _GEN_1029; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1031 = 4'h3 == _tmp_result_2_T_1[3:0] ? aes_key_reg_3 : _GEN_1030; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1032 = 4'h4 == _tmp_result_2_T_1[3:0] ? aes_key_reg_4 : _GEN_1031; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1033 = 4'h5 == _tmp_result_2_T_1[3:0] ? aes_key_reg_5 : _GEN_1032; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1034 = 4'h6 == _tmp_result_2_T_1[3:0] ? aes_key_reg_6 : _GEN_1033; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1035 = 4'h7 == _tmp_result_2_T_1[3:0] ? aes_key_reg_7 : _GEN_1034; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1036 = 4'h8 == _tmp_result_2_T_1[3:0] ? aes_key_reg_8 : _GEN_1035; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1037 = 4'h9 == _tmp_result_2_T_1[3:0] ? aes_key_reg_9 : _GEN_1036; // @[Cat.scala 31:{58,58}]
  wire [127:0] _GEN_1038 = 4'ha == _tmp_result_2_T_1[3:0] ? aes_key_reg_10 : _GEN_1037; // @[Cat.scala 31:{58,58}]
  wire [511:0] _tmp_result_2_T_4 = {_GEN_1038,_GEN_1038,_GEN_1038,_GEN_1038}; // @[Cat.scala 31:58]
  wire [511:0] tmp_result_2 = tmp_tdata_reg ^ _tmp_result_2_T_4; // @[RxAESDecrypter.scala 11:15]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_6 = {tmp_tdata_reg[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_7 = _tmp_result_3_trans_tdata_0_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_10 = tmp_tdata_reg[7] ? _tmp_result_3_trans_tdata_0_T_7 :
    _tmp_result_3_trans_tdata_0_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_14 = {_tmp_result_3_trans_tdata_0_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_15 = _tmp_result_3_trans_tdata_0_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_18 = _tmp_result_3_trans_tdata_0_T_10[7] ? _tmp_result_3_trans_tdata_0_T_15
     : _tmp_result_3_trans_tdata_0_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_22 = {_tmp_result_3_trans_tdata_0_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_23 = _tmp_result_3_trans_tdata_0_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_26 = _tmp_result_3_trans_tdata_0_T_18[7] ? _tmp_result_3_trans_tdata_0_T_23
     : _tmp_result_3_trans_tdata_0_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_43 = _tmp_result_3_trans_tdata_0_T_26 ^ _tmp_result_3_trans_tdata_0_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_52 = _tmp_result_3_trans_tdata_0_T_43 ^ _tmp_result_3_trans_tdata_0_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_58 = {tmp_tdata_reg[14:8],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_59 = _tmp_result_3_trans_tdata_0_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_62 = tmp_tdata_reg[15] ? _tmp_result_3_trans_tdata_0_T_59 :
    _tmp_result_3_trans_tdata_0_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_66 = {_tmp_result_3_trans_tdata_0_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_67 = _tmp_result_3_trans_tdata_0_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_70 = _tmp_result_3_trans_tdata_0_T_62[7] ? _tmp_result_3_trans_tdata_0_T_67
     : _tmp_result_3_trans_tdata_0_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_74 = {_tmp_result_3_trans_tdata_0_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_75 = _tmp_result_3_trans_tdata_0_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_78 = _tmp_result_3_trans_tdata_0_T_70[7] ? _tmp_result_3_trans_tdata_0_T_75
     : _tmp_result_3_trans_tdata_0_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_87 = _tmp_result_3_trans_tdata_0_T_78 ^ _tmp_result_3_trans_tdata_0_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_88 = _tmp_result_3_trans_tdata_0_T_87 ^ tmp_tdata_reg[15:8]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_89 = _tmp_result_3_trans_tdata_0_T_52 ^ _tmp_result_3_trans_tdata_0_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_95 = {tmp_tdata_reg[22:16],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_96 = _tmp_result_3_trans_tdata_0_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_99 = tmp_tdata_reg[23] ? _tmp_result_3_trans_tdata_0_T_96 :
    _tmp_result_3_trans_tdata_0_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_103 = {_tmp_result_3_trans_tdata_0_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_104 = _tmp_result_3_trans_tdata_0_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_107 = _tmp_result_3_trans_tdata_0_T_99[7] ? _tmp_result_3_trans_tdata_0_T_104
     : _tmp_result_3_trans_tdata_0_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_111 = {_tmp_result_3_trans_tdata_0_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_112 = _tmp_result_3_trans_tdata_0_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_115 = _tmp_result_3_trans_tdata_0_T_107[7] ?
    _tmp_result_3_trans_tdata_0_T_112 : _tmp_result_3_trans_tdata_0_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_132 = _tmp_result_3_trans_tdata_0_T_115 ^ _tmp_result_3_trans_tdata_0_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_133 = _tmp_result_3_trans_tdata_0_T_132 ^ tmp_tdata_reg[23:16]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_134 = _tmp_result_3_trans_tdata_0_T_89 ^ _tmp_result_3_trans_tdata_0_T_133; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_140 = {tmp_tdata_reg[30:24],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_141 = _tmp_result_3_trans_tdata_0_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_144 = tmp_tdata_reg[31] ? _tmp_result_3_trans_tdata_0_T_141 :
    _tmp_result_3_trans_tdata_0_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_148 = {_tmp_result_3_trans_tdata_0_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_149 = _tmp_result_3_trans_tdata_0_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_152 = _tmp_result_3_trans_tdata_0_T_144[7] ?
    _tmp_result_3_trans_tdata_0_T_149 : _tmp_result_3_trans_tdata_0_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_156 = {_tmp_result_3_trans_tdata_0_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_157 = _tmp_result_3_trans_tdata_0_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_160 = _tmp_result_3_trans_tdata_0_T_152[7] ?
    _tmp_result_3_trans_tdata_0_T_157 : _tmp_result_3_trans_tdata_0_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_0_T_161 = _tmp_result_3_trans_tdata_0_T_160 ^ tmp_tdata_reg[31:24]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_0 = _tmp_result_3_trans_tdata_0_T_134 ^ _tmp_result_3_trans_tdata_0_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_1_T_27 = _tmp_result_3_trans_tdata_0_T_26 ^ tmp_tdata_reg[7:0]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_1_T_70 = _tmp_result_3_trans_tdata_0_T_78 ^ _tmp_result_3_trans_tdata_0_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_1_T_79 = _tmp_result_3_trans_tdata_1_T_70 ^ _tmp_result_3_trans_tdata_0_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_1_T_80 = _tmp_result_3_trans_tdata_1_T_27 ^ _tmp_result_3_trans_tdata_1_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_1_T_115 = _tmp_result_3_trans_tdata_0_T_115 ^ _tmp_result_3_trans_tdata_0_T_99; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_1_T_116 = _tmp_result_3_trans_tdata_1_T_115 ^ tmp_tdata_reg[23:16]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_1_T_117 = _tmp_result_3_trans_tdata_1_T_80 ^ _tmp_result_3_trans_tdata_1_T_116; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_1_T_160 = _tmp_result_3_trans_tdata_0_T_160 ^ _tmp_result_3_trans_tdata_0_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_1_T_161 = _tmp_result_3_trans_tdata_1_T_160 ^ tmp_tdata_reg[31:24]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_1 = _tmp_result_3_trans_tdata_1_T_117 ^ _tmp_result_3_trans_tdata_1_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_2_T_44 = _tmp_result_3_trans_tdata_0_T_43 ^ tmp_tdata_reg[7:0]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_2_T_71 = _tmp_result_3_trans_tdata_0_T_78 ^ tmp_tdata_reg[15:8]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_2_T_72 = _tmp_result_3_trans_tdata_2_T_44 ^ _tmp_result_3_trans_tdata_2_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_2_T_124 = _tmp_result_3_trans_tdata_0_T_132 ^ _tmp_result_3_trans_tdata_0_T_99; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_2_T_125 = _tmp_result_3_trans_tdata_2_T_72 ^ _tmp_result_3_trans_tdata_2_T_124; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_2_T_160 = _tmp_result_3_trans_tdata_0_T_160 ^ _tmp_result_3_trans_tdata_0_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_2_T_161 = _tmp_result_3_trans_tdata_2_T_160 ^ tmp_tdata_reg[31:24]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_2 = _tmp_result_3_trans_tdata_2_T_125 ^ _tmp_result_3_trans_tdata_2_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_3_T_35 = _tmp_result_3_trans_tdata_0_T_26 ^ _tmp_result_3_trans_tdata_0_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_3_T_36 = _tmp_result_3_trans_tdata_3_T_35 ^ tmp_tdata_reg[7:0]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_3_T_80 = _tmp_result_3_trans_tdata_1_T_70 ^ tmp_tdata_reg[15:8]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_3_T_81 = _tmp_result_3_trans_tdata_3_T_36 ^ _tmp_result_3_trans_tdata_3_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_3_T_108 = _tmp_result_3_trans_tdata_0_T_115 ^ tmp_tdata_reg[23:16]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_3_T_109 = _tmp_result_3_trans_tdata_3_T_81 ^ _tmp_result_3_trans_tdata_3_T_108; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_3_T_161 = _tmp_result_3_trans_tdata_1_T_160 ^ _tmp_result_3_trans_tdata_0_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_3 = _tmp_result_3_trans_tdata_3_T_109 ^ _tmp_result_3_trans_tdata_3_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_6 = {tmp_tdata_reg[38:32],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_7 = _tmp_result_3_trans_tdata_4_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_10 = tmp_tdata_reg[39] ? _tmp_result_3_trans_tdata_4_T_7 :
    _tmp_result_3_trans_tdata_4_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_14 = {_tmp_result_3_trans_tdata_4_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_15 = _tmp_result_3_trans_tdata_4_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_18 = _tmp_result_3_trans_tdata_4_T_10[7] ? _tmp_result_3_trans_tdata_4_T_15
     : _tmp_result_3_trans_tdata_4_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_22 = {_tmp_result_3_trans_tdata_4_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_23 = _tmp_result_3_trans_tdata_4_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_26 = _tmp_result_3_trans_tdata_4_T_18[7] ? _tmp_result_3_trans_tdata_4_T_23
     : _tmp_result_3_trans_tdata_4_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_43 = _tmp_result_3_trans_tdata_4_T_26 ^ _tmp_result_3_trans_tdata_4_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_52 = _tmp_result_3_trans_tdata_4_T_43 ^ _tmp_result_3_trans_tdata_4_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_58 = {tmp_tdata_reg[46:40],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_59 = _tmp_result_3_trans_tdata_4_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_62 = tmp_tdata_reg[47] ? _tmp_result_3_trans_tdata_4_T_59 :
    _tmp_result_3_trans_tdata_4_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_66 = {_tmp_result_3_trans_tdata_4_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_67 = _tmp_result_3_trans_tdata_4_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_70 = _tmp_result_3_trans_tdata_4_T_62[7] ? _tmp_result_3_trans_tdata_4_T_67
     : _tmp_result_3_trans_tdata_4_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_74 = {_tmp_result_3_trans_tdata_4_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_75 = _tmp_result_3_trans_tdata_4_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_78 = _tmp_result_3_trans_tdata_4_T_70[7] ? _tmp_result_3_trans_tdata_4_T_75
     : _tmp_result_3_trans_tdata_4_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_87 = _tmp_result_3_trans_tdata_4_T_78 ^ _tmp_result_3_trans_tdata_4_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_88 = _tmp_result_3_trans_tdata_4_T_87 ^ tmp_tdata_reg[47:40]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_89 = _tmp_result_3_trans_tdata_4_T_52 ^ _tmp_result_3_trans_tdata_4_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_95 = {tmp_tdata_reg[54:48],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_96 = _tmp_result_3_trans_tdata_4_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_99 = tmp_tdata_reg[55] ? _tmp_result_3_trans_tdata_4_T_96 :
    _tmp_result_3_trans_tdata_4_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_103 = {_tmp_result_3_trans_tdata_4_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_104 = _tmp_result_3_trans_tdata_4_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_107 = _tmp_result_3_trans_tdata_4_T_99[7] ? _tmp_result_3_trans_tdata_4_T_104
     : _tmp_result_3_trans_tdata_4_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_111 = {_tmp_result_3_trans_tdata_4_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_112 = _tmp_result_3_trans_tdata_4_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_115 = _tmp_result_3_trans_tdata_4_T_107[7] ?
    _tmp_result_3_trans_tdata_4_T_112 : _tmp_result_3_trans_tdata_4_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_132 = _tmp_result_3_trans_tdata_4_T_115 ^ _tmp_result_3_trans_tdata_4_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_133 = _tmp_result_3_trans_tdata_4_T_132 ^ tmp_tdata_reg[55:48]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_134 = _tmp_result_3_trans_tdata_4_T_89 ^ _tmp_result_3_trans_tdata_4_T_133; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_140 = {tmp_tdata_reg[62:56],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_141 = _tmp_result_3_trans_tdata_4_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_144 = tmp_tdata_reg[63] ? _tmp_result_3_trans_tdata_4_T_141 :
    _tmp_result_3_trans_tdata_4_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_148 = {_tmp_result_3_trans_tdata_4_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_149 = _tmp_result_3_trans_tdata_4_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_152 = _tmp_result_3_trans_tdata_4_T_144[7] ?
    _tmp_result_3_trans_tdata_4_T_149 : _tmp_result_3_trans_tdata_4_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_156 = {_tmp_result_3_trans_tdata_4_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_157 = _tmp_result_3_trans_tdata_4_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_160 = _tmp_result_3_trans_tdata_4_T_152[7] ?
    _tmp_result_3_trans_tdata_4_T_157 : _tmp_result_3_trans_tdata_4_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_4_T_161 = _tmp_result_3_trans_tdata_4_T_160 ^ tmp_tdata_reg[63:56]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_4 = _tmp_result_3_trans_tdata_4_T_134 ^ _tmp_result_3_trans_tdata_4_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_5_T_27 = _tmp_result_3_trans_tdata_4_T_26 ^ tmp_tdata_reg[39:32]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_5_T_70 = _tmp_result_3_trans_tdata_4_T_78 ^ _tmp_result_3_trans_tdata_4_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_5_T_79 = _tmp_result_3_trans_tdata_5_T_70 ^ _tmp_result_3_trans_tdata_4_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_5_T_80 = _tmp_result_3_trans_tdata_5_T_27 ^ _tmp_result_3_trans_tdata_5_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_5_T_115 = _tmp_result_3_trans_tdata_4_T_115 ^ _tmp_result_3_trans_tdata_4_T_99; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_5_T_116 = _tmp_result_3_trans_tdata_5_T_115 ^ tmp_tdata_reg[55:48]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_5_T_117 = _tmp_result_3_trans_tdata_5_T_80 ^ _tmp_result_3_trans_tdata_5_T_116; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_5_T_160 = _tmp_result_3_trans_tdata_4_T_160 ^ _tmp_result_3_trans_tdata_4_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_5_T_161 = _tmp_result_3_trans_tdata_5_T_160 ^ tmp_tdata_reg[63:56]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_5 = _tmp_result_3_trans_tdata_5_T_117 ^ _tmp_result_3_trans_tdata_5_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_6_T_44 = _tmp_result_3_trans_tdata_4_T_43 ^ tmp_tdata_reg[39:32]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_6_T_71 = _tmp_result_3_trans_tdata_4_T_78 ^ tmp_tdata_reg[47:40]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_6_T_72 = _tmp_result_3_trans_tdata_6_T_44 ^ _tmp_result_3_trans_tdata_6_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_6_T_124 = _tmp_result_3_trans_tdata_4_T_132 ^ _tmp_result_3_trans_tdata_4_T_99; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_6_T_125 = _tmp_result_3_trans_tdata_6_T_72 ^ _tmp_result_3_trans_tdata_6_T_124; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_6_T_160 = _tmp_result_3_trans_tdata_4_T_160 ^ _tmp_result_3_trans_tdata_4_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_6_T_161 = _tmp_result_3_trans_tdata_6_T_160 ^ tmp_tdata_reg[63:56]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_6 = _tmp_result_3_trans_tdata_6_T_125 ^ _tmp_result_3_trans_tdata_6_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_7_T_35 = _tmp_result_3_trans_tdata_4_T_26 ^ _tmp_result_3_trans_tdata_4_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_7_T_36 = _tmp_result_3_trans_tdata_7_T_35 ^ tmp_tdata_reg[39:32]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_7_T_80 = _tmp_result_3_trans_tdata_5_T_70 ^ tmp_tdata_reg[47:40]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_7_T_81 = _tmp_result_3_trans_tdata_7_T_36 ^ _tmp_result_3_trans_tdata_7_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_7_T_108 = _tmp_result_3_trans_tdata_4_T_115 ^ tmp_tdata_reg[55:48]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_7_T_109 = _tmp_result_3_trans_tdata_7_T_81 ^ _tmp_result_3_trans_tdata_7_T_108; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_7_T_161 = _tmp_result_3_trans_tdata_5_T_160 ^ _tmp_result_3_trans_tdata_4_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_7 = _tmp_result_3_trans_tdata_7_T_109 ^ _tmp_result_3_trans_tdata_7_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_6 = {tmp_tdata_reg[70:64],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_7 = _tmp_result_3_trans_tdata_8_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_10 = tmp_tdata_reg[71] ? _tmp_result_3_trans_tdata_8_T_7 :
    _tmp_result_3_trans_tdata_8_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_14 = {_tmp_result_3_trans_tdata_8_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_15 = _tmp_result_3_trans_tdata_8_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_18 = _tmp_result_3_trans_tdata_8_T_10[7] ? _tmp_result_3_trans_tdata_8_T_15
     : _tmp_result_3_trans_tdata_8_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_22 = {_tmp_result_3_trans_tdata_8_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_23 = _tmp_result_3_trans_tdata_8_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_26 = _tmp_result_3_trans_tdata_8_T_18[7] ? _tmp_result_3_trans_tdata_8_T_23
     : _tmp_result_3_trans_tdata_8_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_43 = _tmp_result_3_trans_tdata_8_T_26 ^ _tmp_result_3_trans_tdata_8_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_52 = _tmp_result_3_trans_tdata_8_T_43 ^ _tmp_result_3_trans_tdata_8_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_58 = {tmp_tdata_reg[78:72],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_59 = _tmp_result_3_trans_tdata_8_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_62 = tmp_tdata_reg[79] ? _tmp_result_3_trans_tdata_8_T_59 :
    _tmp_result_3_trans_tdata_8_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_66 = {_tmp_result_3_trans_tdata_8_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_67 = _tmp_result_3_trans_tdata_8_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_70 = _tmp_result_3_trans_tdata_8_T_62[7] ? _tmp_result_3_trans_tdata_8_T_67
     : _tmp_result_3_trans_tdata_8_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_74 = {_tmp_result_3_trans_tdata_8_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_75 = _tmp_result_3_trans_tdata_8_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_78 = _tmp_result_3_trans_tdata_8_T_70[7] ? _tmp_result_3_trans_tdata_8_T_75
     : _tmp_result_3_trans_tdata_8_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_87 = _tmp_result_3_trans_tdata_8_T_78 ^ _tmp_result_3_trans_tdata_8_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_88 = _tmp_result_3_trans_tdata_8_T_87 ^ tmp_tdata_reg[79:72]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_89 = _tmp_result_3_trans_tdata_8_T_52 ^ _tmp_result_3_trans_tdata_8_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_95 = {tmp_tdata_reg[86:80],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_96 = _tmp_result_3_trans_tdata_8_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_99 = tmp_tdata_reg[87] ? _tmp_result_3_trans_tdata_8_T_96 :
    _tmp_result_3_trans_tdata_8_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_103 = {_tmp_result_3_trans_tdata_8_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_104 = _tmp_result_3_trans_tdata_8_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_107 = _tmp_result_3_trans_tdata_8_T_99[7] ? _tmp_result_3_trans_tdata_8_T_104
     : _tmp_result_3_trans_tdata_8_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_111 = {_tmp_result_3_trans_tdata_8_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_112 = _tmp_result_3_trans_tdata_8_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_115 = _tmp_result_3_trans_tdata_8_T_107[7] ?
    _tmp_result_3_trans_tdata_8_T_112 : _tmp_result_3_trans_tdata_8_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_132 = _tmp_result_3_trans_tdata_8_T_115 ^ _tmp_result_3_trans_tdata_8_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_133 = _tmp_result_3_trans_tdata_8_T_132 ^ tmp_tdata_reg[87:80]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_134 = _tmp_result_3_trans_tdata_8_T_89 ^ _tmp_result_3_trans_tdata_8_T_133; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_140 = {tmp_tdata_reg[94:88],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_141 = _tmp_result_3_trans_tdata_8_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_144 = tmp_tdata_reg[95] ? _tmp_result_3_trans_tdata_8_T_141 :
    _tmp_result_3_trans_tdata_8_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_148 = {_tmp_result_3_trans_tdata_8_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_149 = _tmp_result_3_trans_tdata_8_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_152 = _tmp_result_3_trans_tdata_8_T_144[7] ?
    _tmp_result_3_trans_tdata_8_T_149 : _tmp_result_3_trans_tdata_8_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_156 = {_tmp_result_3_trans_tdata_8_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_157 = _tmp_result_3_trans_tdata_8_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_160 = _tmp_result_3_trans_tdata_8_T_152[7] ?
    _tmp_result_3_trans_tdata_8_T_157 : _tmp_result_3_trans_tdata_8_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_8_T_161 = _tmp_result_3_trans_tdata_8_T_160 ^ tmp_tdata_reg[95:88]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_8 = _tmp_result_3_trans_tdata_8_T_134 ^ _tmp_result_3_trans_tdata_8_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_9_T_27 = _tmp_result_3_trans_tdata_8_T_26 ^ tmp_tdata_reg[71:64]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_9_T_70 = _tmp_result_3_trans_tdata_8_T_78 ^ _tmp_result_3_trans_tdata_8_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_9_T_79 = _tmp_result_3_trans_tdata_9_T_70 ^ _tmp_result_3_trans_tdata_8_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_9_T_80 = _tmp_result_3_trans_tdata_9_T_27 ^ _tmp_result_3_trans_tdata_9_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_9_T_115 = _tmp_result_3_trans_tdata_8_T_115 ^ _tmp_result_3_trans_tdata_8_T_99; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_9_T_116 = _tmp_result_3_trans_tdata_9_T_115 ^ tmp_tdata_reg[87:80]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_9_T_117 = _tmp_result_3_trans_tdata_9_T_80 ^ _tmp_result_3_trans_tdata_9_T_116; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_9_T_160 = _tmp_result_3_trans_tdata_8_T_160 ^ _tmp_result_3_trans_tdata_8_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_9_T_161 = _tmp_result_3_trans_tdata_9_T_160 ^ tmp_tdata_reg[95:88]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_9 = _tmp_result_3_trans_tdata_9_T_117 ^ _tmp_result_3_trans_tdata_9_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_10_T_44 = _tmp_result_3_trans_tdata_8_T_43 ^ tmp_tdata_reg[71:64]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_10_T_71 = _tmp_result_3_trans_tdata_8_T_78 ^ tmp_tdata_reg[79:72]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_10_T_72 = _tmp_result_3_trans_tdata_10_T_44 ^ _tmp_result_3_trans_tdata_10_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_10_T_124 = _tmp_result_3_trans_tdata_8_T_132 ^ _tmp_result_3_trans_tdata_8_T_99; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_10_T_125 = _tmp_result_3_trans_tdata_10_T_72 ^ _tmp_result_3_trans_tdata_10_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_10_T_160 = _tmp_result_3_trans_tdata_8_T_160 ^ _tmp_result_3_trans_tdata_8_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_10_T_161 = _tmp_result_3_trans_tdata_10_T_160 ^ tmp_tdata_reg[95:88]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_10 = _tmp_result_3_trans_tdata_10_T_125 ^ _tmp_result_3_trans_tdata_10_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_11_T_35 = _tmp_result_3_trans_tdata_8_T_26 ^ _tmp_result_3_trans_tdata_8_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_11_T_36 = _tmp_result_3_trans_tdata_11_T_35 ^ tmp_tdata_reg[71:64]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_11_T_80 = _tmp_result_3_trans_tdata_9_T_70 ^ tmp_tdata_reg[79:72]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_11_T_81 = _tmp_result_3_trans_tdata_11_T_36 ^ _tmp_result_3_trans_tdata_11_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_11_T_108 = _tmp_result_3_trans_tdata_8_T_115 ^ tmp_tdata_reg[87:80]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_11_T_109 = _tmp_result_3_trans_tdata_11_T_81 ^ _tmp_result_3_trans_tdata_11_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_11_T_161 = _tmp_result_3_trans_tdata_9_T_160 ^ _tmp_result_3_trans_tdata_8_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_11 = _tmp_result_3_trans_tdata_11_T_109 ^ _tmp_result_3_trans_tdata_11_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_6 = {tmp_tdata_reg[102:96],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_7 = _tmp_result_3_trans_tdata_12_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_10 = tmp_tdata_reg[103] ? _tmp_result_3_trans_tdata_12_T_7 :
    _tmp_result_3_trans_tdata_12_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_14 = {_tmp_result_3_trans_tdata_12_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_15 = _tmp_result_3_trans_tdata_12_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_18 = _tmp_result_3_trans_tdata_12_T_10[7] ?
    _tmp_result_3_trans_tdata_12_T_15 : _tmp_result_3_trans_tdata_12_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_22 = {_tmp_result_3_trans_tdata_12_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_23 = _tmp_result_3_trans_tdata_12_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_26 = _tmp_result_3_trans_tdata_12_T_18[7] ?
    _tmp_result_3_trans_tdata_12_T_23 : _tmp_result_3_trans_tdata_12_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_43 = _tmp_result_3_trans_tdata_12_T_26 ^ _tmp_result_3_trans_tdata_12_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_52 = _tmp_result_3_trans_tdata_12_T_43 ^ _tmp_result_3_trans_tdata_12_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_58 = {tmp_tdata_reg[110:104],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_59 = _tmp_result_3_trans_tdata_12_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_62 = tmp_tdata_reg[111] ? _tmp_result_3_trans_tdata_12_T_59 :
    _tmp_result_3_trans_tdata_12_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_66 = {_tmp_result_3_trans_tdata_12_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_67 = _tmp_result_3_trans_tdata_12_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_70 = _tmp_result_3_trans_tdata_12_T_62[7] ?
    _tmp_result_3_trans_tdata_12_T_67 : _tmp_result_3_trans_tdata_12_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_74 = {_tmp_result_3_trans_tdata_12_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_75 = _tmp_result_3_trans_tdata_12_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_78 = _tmp_result_3_trans_tdata_12_T_70[7] ?
    _tmp_result_3_trans_tdata_12_T_75 : _tmp_result_3_trans_tdata_12_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_87 = _tmp_result_3_trans_tdata_12_T_78 ^ _tmp_result_3_trans_tdata_12_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_88 = _tmp_result_3_trans_tdata_12_T_87 ^ tmp_tdata_reg[111:104]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_89 = _tmp_result_3_trans_tdata_12_T_52 ^ _tmp_result_3_trans_tdata_12_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_95 = {tmp_tdata_reg[118:112],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_96 = _tmp_result_3_trans_tdata_12_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_99 = tmp_tdata_reg[119] ? _tmp_result_3_trans_tdata_12_T_96 :
    _tmp_result_3_trans_tdata_12_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_103 = {_tmp_result_3_trans_tdata_12_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_104 = _tmp_result_3_trans_tdata_12_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_107 = _tmp_result_3_trans_tdata_12_T_99[7] ?
    _tmp_result_3_trans_tdata_12_T_104 : _tmp_result_3_trans_tdata_12_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_111 = {_tmp_result_3_trans_tdata_12_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_112 = _tmp_result_3_trans_tdata_12_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_115 = _tmp_result_3_trans_tdata_12_T_107[7] ?
    _tmp_result_3_trans_tdata_12_T_112 : _tmp_result_3_trans_tdata_12_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_132 = _tmp_result_3_trans_tdata_12_T_115 ^
    _tmp_result_3_trans_tdata_12_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_133 = _tmp_result_3_trans_tdata_12_T_132 ^ tmp_tdata_reg[119:112]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_134 = _tmp_result_3_trans_tdata_12_T_89 ^ _tmp_result_3_trans_tdata_12_T_133
    ; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_140 = {tmp_tdata_reg[126:120],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_141 = _tmp_result_3_trans_tdata_12_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_144 = tmp_tdata_reg[127] ? _tmp_result_3_trans_tdata_12_T_141 :
    _tmp_result_3_trans_tdata_12_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_148 = {_tmp_result_3_trans_tdata_12_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_149 = _tmp_result_3_trans_tdata_12_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_152 = _tmp_result_3_trans_tdata_12_T_144[7] ?
    _tmp_result_3_trans_tdata_12_T_149 : _tmp_result_3_trans_tdata_12_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_156 = {_tmp_result_3_trans_tdata_12_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_157 = _tmp_result_3_trans_tdata_12_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_160 = _tmp_result_3_trans_tdata_12_T_152[7] ?
    _tmp_result_3_trans_tdata_12_T_157 : _tmp_result_3_trans_tdata_12_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_12_T_161 = _tmp_result_3_trans_tdata_12_T_160 ^ tmp_tdata_reg[127:120]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_12 = _tmp_result_3_trans_tdata_12_T_134 ^ _tmp_result_3_trans_tdata_12_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_13_T_27 = _tmp_result_3_trans_tdata_12_T_26 ^ tmp_tdata_reg[103:96]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_13_T_70 = _tmp_result_3_trans_tdata_12_T_78 ^ _tmp_result_3_trans_tdata_12_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_13_T_79 = _tmp_result_3_trans_tdata_13_T_70 ^ _tmp_result_3_trans_tdata_12_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_13_T_80 = _tmp_result_3_trans_tdata_13_T_27 ^ _tmp_result_3_trans_tdata_13_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_13_T_115 = _tmp_result_3_trans_tdata_12_T_115 ^ _tmp_result_3_trans_tdata_12_T_99
    ; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_13_T_116 = _tmp_result_3_trans_tdata_13_T_115 ^ tmp_tdata_reg[119:112]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_13_T_117 = _tmp_result_3_trans_tdata_13_T_80 ^ _tmp_result_3_trans_tdata_13_T_116
    ; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_13_T_160 = _tmp_result_3_trans_tdata_12_T_160 ^
    _tmp_result_3_trans_tdata_12_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_13_T_161 = _tmp_result_3_trans_tdata_13_T_160 ^ tmp_tdata_reg[127:120]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_13 = _tmp_result_3_trans_tdata_13_T_117 ^ _tmp_result_3_trans_tdata_13_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_14_T_44 = _tmp_result_3_trans_tdata_12_T_43 ^ tmp_tdata_reg[103:96]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_14_T_71 = _tmp_result_3_trans_tdata_12_T_78 ^ tmp_tdata_reg[111:104]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_14_T_72 = _tmp_result_3_trans_tdata_14_T_44 ^ _tmp_result_3_trans_tdata_14_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_14_T_124 = _tmp_result_3_trans_tdata_12_T_132 ^ _tmp_result_3_trans_tdata_12_T_99
    ; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_14_T_125 = _tmp_result_3_trans_tdata_14_T_72 ^ _tmp_result_3_trans_tdata_14_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_14_T_160 = _tmp_result_3_trans_tdata_12_T_160 ^
    _tmp_result_3_trans_tdata_12_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_14_T_161 = _tmp_result_3_trans_tdata_14_T_160 ^ tmp_tdata_reg[127:120]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_14 = _tmp_result_3_trans_tdata_14_T_125 ^ _tmp_result_3_trans_tdata_14_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_15_T_35 = _tmp_result_3_trans_tdata_12_T_26 ^ _tmp_result_3_trans_tdata_12_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_15_T_36 = _tmp_result_3_trans_tdata_15_T_35 ^ tmp_tdata_reg[103:96]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_15_T_80 = _tmp_result_3_trans_tdata_13_T_70 ^ tmp_tdata_reg[111:104]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_15_T_81 = _tmp_result_3_trans_tdata_15_T_36 ^ _tmp_result_3_trans_tdata_15_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_15_T_108 = _tmp_result_3_trans_tdata_12_T_115 ^ tmp_tdata_reg[119:112]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_15_T_109 = _tmp_result_3_trans_tdata_15_T_81 ^ _tmp_result_3_trans_tdata_15_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_15_T_161 = _tmp_result_3_trans_tdata_13_T_160 ^
    _tmp_result_3_trans_tdata_12_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_15 = _tmp_result_3_trans_tdata_15_T_109 ^ _tmp_result_3_trans_tdata_15_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_6 = {tmp_tdata_reg[134:128],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_7 = _tmp_result_3_trans_tdata_16_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_10 = tmp_tdata_reg[135] ? _tmp_result_3_trans_tdata_16_T_7 :
    _tmp_result_3_trans_tdata_16_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_14 = {_tmp_result_3_trans_tdata_16_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_15 = _tmp_result_3_trans_tdata_16_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_18 = _tmp_result_3_trans_tdata_16_T_10[7] ?
    _tmp_result_3_trans_tdata_16_T_15 : _tmp_result_3_trans_tdata_16_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_22 = {_tmp_result_3_trans_tdata_16_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_23 = _tmp_result_3_trans_tdata_16_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_26 = _tmp_result_3_trans_tdata_16_T_18[7] ?
    _tmp_result_3_trans_tdata_16_T_23 : _tmp_result_3_trans_tdata_16_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_43 = _tmp_result_3_trans_tdata_16_T_26 ^ _tmp_result_3_trans_tdata_16_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_52 = _tmp_result_3_trans_tdata_16_T_43 ^ _tmp_result_3_trans_tdata_16_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_58 = {tmp_tdata_reg[142:136],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_59 = _tmp_result_3_trans_tdata_16_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_62 = tmp_tdata_reg[143] ? _tmp_result_3_trans_tdata_16_T_59 :
    _tmp_result_3_trans_tdata_16_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_66 = {_tmp_result_3_trans_tdata_16_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_67 = _tmp_result_3_trans_tdata_16_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_70 = _tmp_result_3_trans_tdata_16_T_62[7] ?
    _tmp_result_3_trans_tdata_16_T_67 : _tmp_result_3_trans_tdata_16_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_74 = {_tmp_result_3_trans_tdata_16_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_75 = _tmp_result_3_trans_tdata_16_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_78 = _tmp_result_3_trans_tdata_16_T_70[7] ?
    _tmp_result_3_trans_tdata_16_T_75 : _tmp_result_3_trans_tdata_16_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_87 = _tmp_result_3_trans_tdata_16_T_78 ^ _tmp_result_3_trans_tdata_16_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_88 = _tmp_result_3_trans_tdata_16_T_87 ^ tmp_tdata_reg[143:136]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_89 = _tmp_result_3_trans_tdata_16_T_52 ^ _tmp_result_3_trans_tdata_16_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_95 = {tmp_tdata_reg[150:144],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_96 = _tmp_result_3_trans_tdata_16_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_99 = tmp_tdata_reg[151] ? _tmp_result_3_trans_tdata_16_T_96 :
    _tmp_result_3_trans_tdata_16_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_103 = {_tmp_result_3_trans_tdata_16_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_104 = _tmp_result_3_trans_tdata_16_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_107 = _tmp_result_3_trans_tdata_16_T_99[7] ?
    _tmp_result_3_trans_tdata_16_T_104 : _tmp_result_3_trans_tdata_16_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_111 = {_tmp_result_3_trans_tdata_16_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_112 = _tmp_result_3_trans_tdata_16_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_115 = _tmp_result_3_trans_tdata_16_T_107[7] ?
    _tmp_result_3_trans_tdata_16_T_112 : _tmp_result_3_trans_tdata_16_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_132 = _tmp_result_3_trans_tdata_16_T_115 ^
    _tmp_result_3_trans_tdata_16_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_133 = _tmp_result_3_trans_tdata_16_T_132 ^ tmp_tdata_reg[151:144]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_134 = _tmp_result_3_trans_tdata_16_T_89 ^ _tmp_result_3_trans_tdata_16_T_133
    ; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_140 = {tmp_tdata_reg[158:152],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_141 = _tmp_result_3_trans_tdata_16_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_144 = tmp_tdata_reg[159] ? _tmp_result_3_trans_tdata_16_T_141 :
    _tmp_result_3_trans_tdata_16_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_148 = {_tmp_result_3_trans_tdata_16_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_149 = _tmp_result_3_trans_tdata_16_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_152 = _tmp_result_3_trans_tdata_16_T_144[7] ?
    _tmp_result_3_trans_tdata_16_T_149 : _tmp_result_3_trans_tdata_16_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_156 = {_tmp_result_3_trans_tdata_16_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_157 = _tmp_result_3_trans_tdata_16_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_160 = _tmp_result_3_trans_tdata_16_T_152[7] ?
    _tmp_result_3_trans_tdata_16_T_157 : _tmp_result_3_trans_tdata_16_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_16_T_161 = _tmp_result_3_trans_tdata_16_T_160 ^ tmp_tdata_reg[159:152]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_16 = _tmp_result_3_trans_tdata_16_T_134 ^ _tmp_result_3_trans_tdata_16_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_17_T_27 = _tmp_result_3_trans_tdata_16_T_26 ^ tmp_tdata_reg[135:128]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_17_T_70 = _tmp_result_3_trans_tdata_16_T_78 ^ _tmp_result_3_trans_tdata_16_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_17_T_79 = _tmp_result_3_trans_tdata_17_T_70 ^ _tmp_result_3_trans_tdata_16_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_17_T_80 = _tmp_result_3_trans_tdata_17_T_27 ^ _tmp_result_3_trans_tdata_17_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_17_T_115 = _tmp_result_3_trans_tdata_16_T_115 ^ _tmp_result_3_trans_tdata_16_T_99
    ; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_17_T_116 = _tmp_result_3_trans_tdata_17_T_115 ^ tmp_tdata_reg[151:144]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_17_T_117 = _tmp_result_3_trans_tdata_17_T_80 ^ _tmp_result_3_trans_tdata_17_T_116
    ; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_17_T_160 = _tmp_result_3_trans_tdata_16_T_160 ^
    _tmp_result_3_trans_tdata_16_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_17_T_161 = _tmp_result_3_trans_tdata_17_T_160 ^ tmp_tdata_reg[159:152]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_17 = _tmp_result_3_trans_tdata_17_T_117 ^ _tmp_result_3_trans_tdata_17_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_18_T_44 = _tmp_result_3_trans_tdata_16_T_43 ^ tmp_tdata_reg[135:128]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_18_T_71 = _tmp_result_3_trans_tdata_16_T_78 ^ tmp_tdata_reg[143:136]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_18_T_72 = _tmp_result_3_trans_tdata_18_T_44 ^ _tmp_result_3_trans_tdata_18_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_18_T_124 = _tmp_result_3_trans_tdata_16_T_132 ^ _tmp_result_3_trans_tdata_16_T_99
    ; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_18_T_125 = _tmp_result_3_trans_tdata_18_T_72 ^ _tmp_result_3_trans_tdata_18_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_18_T_160 = _tmp_result_3_trans_tdata_16_T_160 ^
    _tmp_result_3_trans_tdata_16_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_18_T_161 = _tmp_result_3_trans_tdata_18_T_160 ^ tmp_tdata_reg[159:152]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_18 = _tmp_result_3_trans_tdata_18_T_125 ^ _tmp_result_3_trans_tdata_18_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_19_T_35 = _tmp_result_3_trans_tdata_16_T_26 ^ _tmp_result_3_trans_tdata_16_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_19_T_36 = _tmp_result_3_trans_tdata_19_T_35 ^ tmp_tdata_reg[135:128]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_19_T_80 = _tmp_result_3_trans_tdata_17_T_70 ^ tmp_tdata_reg[143:136]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_19_T_81 = _tmp_result_3_trans_tdata_19_T_36 ^ _tmp_result_3_trans_tdata_19_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_19_T_108 = _tmp_result_3_trans_tdata_16_T_115 ^ tmp_tdata_reg[151:144]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_19_T_109 = _tmp_result_3_trans_tdata_19_T_81 ^ _tmp_result_3_trans_tdata_19_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_19_T_161 = _tmp_result_3_trans_tdata_17_T_160 ^
    _tmp_result_3_trans_tdata_16_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_19 = _tmp_result_3_trans_tdata_19_T_109 ^ _tmp_result_3_trans_tdata_19_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_6 = {tmp_tdata_reg[166:160],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_7 = _tmp_result_3_trans_tdata_20_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_10 = tmp_tdata_reg[167] ? _tmp_result_3_trans_tdata_20_T_7 :
    _tmp_result_3_trans_tdata_20_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_14 = {_tmp_result_3_trans_tdata_20_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_15 = _tmp_result_3_trans_tdata_20_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_18 = _tmp_result_3_trans_tdata_20_T_10[7] ?
    _tmp_result_3_trans_tdata_20_T_15 : _tmp_result_3_trans_tdata_20_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_22 = {_tmp_result_3_trans_tdata_20_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_23 = _tmp_result_3_trans_tdata_20_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_26 = _tmp_result_3_trans_tdata_20_T_18[7] ?
    _tmp_result_3_trans_tdata_20_T_23 : _tmp_result_3_trans_tdata_20_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_43 = _tmp_result_3_trans_tdata_20_T_26 ^ _tmp_result_3_trans_tdata_20_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_52 = _tmp_result_3_trans_tdata_20_T_43 ^ _tmp_result_3_trans_tdata_20_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_58 = {tmp_tdata_reg[174:168],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_59 = _tmp_result_3_trans_tdata_20_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_62 = tmp_tdata_reg[175] ? _tmp_result_3_trans_tdata_20_T_59 :
    _tmp_result_3_trans_tdata_20_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_66 = {_tmp_result_3_trans_tdata_20_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_67 = _tmp_result_3_trans_tdata_20_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_70 = _tmp_result_3_trans_tdata_20_T_62[7] ?
    _tmp_result_3_trans_tdata_20_T_67 : _tmp_result_3_trans_tdata_20_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_74 = {_tmp_result_3_trans_tdata_20_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_75 = _tmp_result_3_trans_tdata_20_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_78 = _tmp_result_3_trans_tdata_20_T_70[7] ?
    _tmp_result_3_trans_tdata_20_T_75 : _tmp_result_3_trans_tdata_20_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_87 = _tmp_result_3_trans_tdata_20_T_78 ^ _tmp_result_3_trans_tdata_20_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_88 = _tmp_result_3_trans_tdata_20_T_87 ^ tmp_tdata_reg[175:168]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_89 = _tmp_result_3_trans_tdata_20_T_52 ^ _tmp_result_3_trans_tdata_20_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_95 = {tmp_tdata_reg[182:176],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_96 = _tmp_result_3_trans_tdata_20_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_99 = tmp_tdata_reg[183] ? _tmp_result_3_trans_tdata_20_T_96 :
    _tmp_result_3_trans_tdata_20_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_103 = {_tmp_result_3_trans_tdata_20_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_104 = _tmp_result_3_trans_tdata_20_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_107 = _tmp_result_3_trans_tdata_20_T_99[7] ?
    _tmp_result_3_trans_tdata_20_T_104 : _tmp_result_3_trans_tdata_20_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_111 = {_tmp_result_3_trans_tdata_20_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_112 = _tmp_result_3_trans_tdata_20_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_115 = _tmp_result_3_trans_tdata_20_T_107[7] ?
    _tmp_result_3_trans_tdata_20_T_112 : _tmp_result_3_trans_tdata_20_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_132 = _tmp_result_3_trans_tdata_20_T_115 ^
    _tmp_result_3_trans_tdata_20_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_133 = _tmp_result_3_trans_tdata_20_T_132 ^ tmp_tdata_reg[183:176]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_134 = _tmp_result_3_trans_tdata_20_T_89 ^ _tmp_result_3_trans_tdata_20_T_133
    ; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_140 = {tmp_tdata_reg[190:184],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_141 = _tmp_result_3_trans_tdata_20_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_144 = tmp_tdata_reg[191] ? _tmp_result_3_trans_tdata_20_T_141 :
    _tmp_result_3_trans_tdata_20_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_148 = {_tmp_result_3_trans_tdata_20_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_149 = _tmp_result_3_trans_tdata_20_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_152 = _tmp_result_3_trans_tdata_20_T_144[7] ?
    _tmp_result_3_trans_tdata_20_T_149 : _tmp_result_3_trans_tdata_20_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_156 = {_tmp_result_3_trans_tdata_20_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_157 = _tmp_result_3_trans_tdata_20_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_160 = _tmp_result_3_trans_tdata_20_T_152[7] ?
    _tmp_result_3_trans_tdata_20_T_157 : _tmp_result_3_trans_tdata_20_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_20_T_161 = _tmp_result_3_trans_tdata_20_T_160 ^ tmp_tdata_reg[191:184]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_20 = _tmp_result_3_trans_tdata_20_T_134 ^ _tmp_result_3_trans_tdata_20_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_21_T_27 = _tmp_result_3_trans_tdata_20_T_26 ^ tmp_tdata_reg[167:160]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_21_T_70 = _tmp_result_3_trans_tdata_20_T_78 ^ _tmp_result_3_trans_tdata_20_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_21_T_79 = _tmp_result_3_trans_tdata_21_T_70 ^ _tmp_result_3_trans_tdata_20_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_21_T_80 = _tmp_result_3_trans_tdata_21_T_27 ^ _tmp_result_3_trans_tdata_21_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_21_T_115 = _tmp_result_3_trans_tdata_20_T_115 ^ _tmp_result_3_trans_tdata_20_T_99
    ; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_21_T_116 = _tmp_result_3_trans_tdata_21_T_115 ^ tmp_tdata_reg[183:176]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_21_T_117 = _tmp_result_3_trans_tdata_21_T_80 ^ _tmp_result_3_trans_tdata_21_T_116
    ; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_21_T_160 = _tmp_result_3_trans_tdata_20_T_160 ^
    _tmp_result_3_trans_tdata_20_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_21_T_161 = _tmp_result_3_trans_tdata_21_T_160 ^ tmp_tdata_reg[191:184]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_21 = _tmp_result_3_trans_tdata_21_T_117 ^ _tmp_result_3_trans_tdata_21_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_22_T_44 = _tmp_result_3_trans_tdata_20_T_43 ^ tmp_tdata_reg[167:160]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_22_T_71 = _tmp_result_3_trans_tdata_20_T_78 ^ tmp_tdata_reg[175:168]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_22_T_72 = _tmp_result_3_trans_tdata_22_T_44 ^ _tmp_result_3_trans_tdata_22_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_22_T_124 = _tmp_result_3_trans_tdata_20_T_132 ^ _tmp_result_3_trans_tdata_20_T_99
    ; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_22_T_125 = _tmp_result_3_trans_tdata_22_T_72 ^ _tmp_result_3_trans_tdata_22_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_22_T_160 = _tmp_result_3_trans_tdata_20_T_160 ^
    _tmp_result_3_trans_tdata_20_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_22_T_161 = _tmp_result_3_trans_tdata_22_T_160 ^ tmp_tdata_reg[191:184]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_22 = _tmp_result_3_trans_tdata_22_T_125 ^ _tmp_result_3_trans_tdata_22_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_23_T_35 = _tmp_result_3_trans_tdata_20_T_26 ^ _tmp_result_3_trans_tdata_20_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_23_T_36 = _tmp_result_3_trans_tdata_23_T_35 ^ tmp_tdata_reg[167:160]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_23_T_80 = _tmp_result_3_trans_tdata_21_T_70 ^ tmp_tdata_reg[175:168]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_23_T_81 = _tmp_result_3_trans_tdata_23_T_36 ^ _tmp_result_3_trans_tdata_23_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_23_T_108 = _tmp_result_3_trans_tdata_20_T_115 ^ tmp_tdata_reg[183:176]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_23_T_109 = _tmp_result_3_trans_tdata_23_T_81 ^ _tmp_result_3_trans_tdata_23_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_23_T_161 = _tmp_result_3_trans_tdata_21_T_160 ^
    _tmp_result_3_trans_tdata_20_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_23 = _tmp_result_3_trans_tdata_23_T_109 ^ _tmp_result_3_trans_tdata_23_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_6 = {tmp_tdata_reg[198:192],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_7 = _tmp_result_3_trans_tdata_24_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_10 = tmp_tdata_reg[199] ? _tmp_result_3_trans_tdata_24_T_7 :
    _tmp_result_3_trans_tdata_24_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_14 = {_tmp_result_3_trans_tdata_24_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_15 = _tmp_result_3_trans_tdata_24_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_18 = _tmp_result_3_trans_tdata_24_T_10[7] ?
    _tmp_result_3_trans_tdata_24_T_15 : _tmp_result_3_trans_tdata_24_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_22 = {_tmp_result_3_trans_tdata_24_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_23 = _tmp_result_3_trans_tdata_24_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_26 = _tmp_result_3_trans_tdata_24_T_18[7] ?
    _tmp_result_3_trans_tdata_24_T_23 : _tmp_result_3_trans_tdata_24_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_43 = _tmp_result_3_trans_tdata_24_T_26 ^ _tmp_result_3_trans_tdata_24_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_52 = _tmp_result_3_trans_tdata_24_T_43 ^ _tmp_result_3_trans_tdata_24_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_58 = {tmp_tdata_reg[206:200],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_59 = _tmp_result_3_trans_tdata_24_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_62 = tmp_tdata_reg[207] ? _tmp_result_3_trans_tdata_24_T_59 :
    _tmp_result_3_trans_tdata_24_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_66 = {_tmp_result_3_trans_tdata_24_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_67 = _tmp_result_3_trans_tdata_24_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_70 = _tmp_result_3_trans_tdata_24_T_62[7] ?
    _tmp_result_3_trans_tdata_24_T_67 : _tmp_result_3_trans_tdata_24_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_74 = {_tmp_result_3_trans_tdata_24_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_75 = _tmp_result_3_trans_tdata_24_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_78 = _tmp_result_3_trans_tdata_24_T_70[7] ?
    _tmp_result_3_trans_tdata_24_T_75 : _tmp_result_3_trans_tdata_24_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_87 = _tmp_result_3_trans_tdata_24_T_78 ^ _tmp_result_3_trans_tdata_24_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_88 = _tmp_result_3_trans_tdata_24_T_87 ^ tmp_tdata_reg[207:200]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_89 = _tmp_result_3_trans_tdata_24_T_52 ^ _tmp_result_3_trans_tdata_24_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_95 = {tmp_tdata_reg[214:208],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_96 = _tmp_result_3_trans_tdata_24_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_99 = tmp_tdata_reg[215] ? _tmp_result_3_trans_tdata_24_T_96 :
    _tmp_result_3_trans_tdata_24_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_103 = {_tmp_result_3_trans_tdata_24_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_104 = _tmp_result_3_trans_tdata_24_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_107 = _tmp_result_3_trans_tdata_24_T_99[7] ?
    _tmp_result_3_trans_tdata_24_T_104 : _tmp_result_3_trans_tdata_24_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_111 = {_tmp_result_3_trans_tdata_24_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_112 = _tmp_result_3_trans_tdata_24_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_115 = _tmp_result_3_trans_tdata_24_T_107[7] ?
    _tmp_result_3_trans_tdata_24_T_112 : _tmp_result_3_trans_tdata_24_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_132 = _tmp_result_3_trans_tdata_24_T_115 ^
    _tmp_result_3_trans_tdata_24_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_133 = _tmp_result_3_trans_tdata_24_T_132 ^ tmp_tdata_reg[215:208]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_134 = _tmp_result_3_trans_tdata_24_T_89 ^ _tmp_result_3_trans_tdata_24_T_133
    ; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_140 = {tmp_tdata_reg[222:216],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_141 = _tmp_result_3_trans_tdata_24_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_144 = tmp_tdata_reg[223] ? _tmp_result_3_trans_tdata_24_T_141 :
    _tmp_result_3_trans_tdata_24_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_148 = {_tmp_result_3_trans_tdata_24_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_149 = _tmp_result_3_trans_tdata_24_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_152 = _tmp_result_3_trans_tdata_24_T_144[7] ?
    _tmp_result_3_trans_tdata_24_T_149 : _tmp_result_3_trans_tdata_24_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_156 = {_tmp_result_3_trans_tdata_24_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_157 = _tmp_result_3_trans_tdata_24_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_160 = _tmp_result_3_trans_tdata_24_T_152[7] ?
    _tmp_result_3_trans_tdata_24_T_157 : _tmp_result_3_trans_tdata_24_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_24_T_161 = _tmp_result_3_trans_tdata_24_T_160 ^ tmp_tdata_reg[223:216]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_24 = _tmp_result_3_trans_tdata_24_T_134 ^ _tmp_result_3_trans_tdata_24_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_25_T_27 = _tmp_result_3_trans_tdata_24_T_26 ^ tmp_tdata_reg[199:192]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_25_T_70 = _tmp_result_3_trans_tdata_24_T_78 ^ _tmp_result_3_trans_tdata_24_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_25_T_79 = _tmp_result_3_trans_tdata_25_T_70 ^ _tmp_result_3_trans_tdata_24_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_25_T_80 = _tmp_result_3_trans_tdata_25_T_27 ^ _tmp_result_3_trans_tdata_25_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_25_T_115 = _tmp_result_3_trans_tdata_24_T_115 ^ _tmp_result_3_trans_tdata_24_T_99
    ; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_25_T_116 = _tmp_result_3_trans_tdata_25_T_115 ^ tmp_tdata_reg[215:208]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_25_T_117 = _tmp_result_3_trans_tdata_25_T_80 ^ _tmp_result_3_trans_tdata_25_T_116
    ; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_25_T_160 = _tmp_result_3_trans_tdata_24_T_160 ^
    _tmp_result_3_trans_tdata_24_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_25_T_161 = _tmp_result_3_trans_tdata_25_T_160 ^ tmp_tdata_reg[223:216]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_25 = _tmp_result_3_trans_tdata_25_T_117 ^ _tmp_result_3_trans_tdata_25_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_26_T_44 = _tmp_result_3_trans_tdata_24_T_43 ^ tmp_tdata_reg[199:192]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_26_T_71 = _tmp_result_3_trans_tdata_24_T_78 ^ tmp_tdata_reg[207:200]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_26_T_72 = _tmp_result_3_trans_tdata_26_T_44 ^ _tmp_result_3_trans_tdata_26_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_26_T_124 = _tmp_result_3_trans_tdata_24_T_132 ^ _tmp_result_3_trans_tdata_24_T_99
    ; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_26_T_125 = _tmp_result_3_trans_tdata_26_T_72 ^ _tmp_result_3_trans_tdata_26_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_26_T_160 = _tmp_result_3_trans_tdata_24_T_160 ^
    _tmp_result_3_trans_tdata_24_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_26_T_161 = _tmp_result_3_trans_tdata_26_T_160 ^ tmp_tdata_reg[223:216]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_26 = _tmp_result_3_trans_tdata_26_T_125 ^ _tmp_result_3_trans_tdata_26_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_27_T_35 = _tmp_result_3_trans_tdata_24_T_26 ^ _tmp_result_3_trans_tdata_24_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_27_T_36 = _tmp_result_3_trans_tdata_27_T_35 ^ tmp_tdata_reg[199:192]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_27_T_80 = _tmp_result_3_trans_tdata_25_T_70 ^ tmp_tdata_reg[207:200]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_27_T_81 = _tmp_result_3_trans_tdata_27_T_36 ^ _tmp_result_3_trans_tdata_27_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_27_T_108 = _tmp_result_3_trans_tdata_24_T_115 ^ tmp_tdata_reg[215:208]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_27_T_109 = _tmp_result_3_trans_tdata_27_T_81 ^ _tmp_result_3_trans_tdata_27_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_27_T_161 = _tmp_result_3_trans_tdata_25_T_160 ^
    _tmp_result_3_trans_tdata_24_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_27 = _tmp_result_3_trans_tdata_27_T_109 ^ _tmp_result_3_trans_tdata_27_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_6 = {tmp_tdata_reg[230:224],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_7 = _tmp_result_3_trans_tdata_28_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_10 = tmp_tdata_reg[231] ? _tmp_result_3_trans_tdata_28_T_7 :
    _tmp_result_3_trans_tdata_28_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_14 = {_tmp_result_3_trans_tdata_28_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_15 = _tmp_result_3_trans_tdata_28_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_18 = _tmp_result_3_trans_tdata_28_T_10[7] ?
    _tmp_result_3_trans_tdata_28_T_15 : _tmp_result_3_trans_tdata_28_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_22 = {_tmp_result_3_trans_tdata_28_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_23 = _tmp_result_3_trans_tdata_28_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_26 = _tmp_result_3_trans_tdata_28_T_18[7] ?
    _tmp_result_3_trans_tdata_28_T_23 : _tmp_result_3_trans_tdata_28_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_43 = _tmp_result_3_trans_tdata_28_T_26 ^ _tmp_result_3_trans_tdata_28_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_52 = _tmp_result_3_trans_tdata_28_T_43 ^ _tmp_result_3_trans_tdata_28_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_58 = {tmp_tdata_reg[238:232],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_59 = _tmp_result_3_trans_tdata_28_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_62 = tmp_tdata_reg[239] ? _tmp_result_3_trans_tdata_28_T_59 :
    _tmp_result_3_trans_tdata_28_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_66 = {_tmp_result_3_trans_tdata_28_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_67 = _tmp_result_3_trans_tdata_28_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_70 = _tmp_result_3_trans_tdata_28_T_62[7] ?
    _tmp_result_3_trans_tdata_28_T_67 : _tmp_result_3_trans_tdata_28_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_74 = {_tmp_result_3_trans_tdata_28_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_75 = _tmp_result_3_trans_tdata_28_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_78 = _tmp_result_3_trans_tdata_28_T_70[7] ?
    _tmp_result_3_trans_tdata_28_T_75 : _tmp_result_3_trans_tdata_28_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_87 = _tmp_result_3_trans_tdata_28_T_78 ^ _tmp_result_3_trans_tdata_28_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_88 = _tmp_result_3_trans_tdata_28_T_87 ^ tmp_tdata_reg[239:232]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_89 = _tmp_result_3_trans_tdata_28_T_52 ^ _tmp_result_3_trans_tdata_28_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_95 = {tmp_tdata_reg[246:240],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_96 = _tmp_result_3_trans_tdata_28_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_99 = tmp_tdata_reg[247] ? _tmp_result_3_trans_tdata_28_T_96 :
    _tmp_result_3_trans_tdata_28_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_103 = {_tmp_result_3_trans_tdata_28_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_104 = _tmp_result_3_trans_tdata_28_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_107 = _tmp_result_3_trans_tdata_28_T_99[7] ?
    _tmp_result_3_trans_tdata_28_T_104 : _tmp_result_3_trans_tdata_28_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_111 = {_tmp_result_3_trans_tdata_28_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_112 = _tmp_result_3_trans_tdata_28_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_115 = _tmp_result_3_trans_tdata_28_T_107[7] ?
    _tmp_result_3_trans_tdata_28_T_112 : _tmp_result_3_trans_tdata_28_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_132 = _tmp_result_3_trans_tdata_28_T_115 ^
    _tmp_result_3_trans_tdata_28_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_133 = _tmp_result_3_trans_tdata_28_T_132 ^ tmp_tdata_reg[247:240]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_134 = _tmp_result_3_trans_tdata_28_T_89 ^ _tmp_result_3_trans_tdata_28_T_133
    ; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_140 = {tmp_tdata_reg[254:248],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_141 = _tmp_result_3_trans_tdata_28_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_144 = tmp_tdata_reg[255] ? _tmp_result_3_trans_tdata_28_T_141 :
    _tmp_result_3_trans_tdata_28_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_148 = {_tmp_result_3_trans_tdata_28_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_149 = _tmp_result_3_trans_tdata_28_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_152 = _tmp_result_3_trans_tdata_28_T_144[7] ?
    _tmp_result_3_trans_tdata_28_T_149 : _tmp_result_3_trans_tdata_28_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_156 = {_tmp_result_3_trans_tdata_28_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_157 = _tmp_result_3_trans_tdata_28_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_160 = _tmp_result_3_trans_tdata_28_T_152[7] ?
    _tmp_result_3_trans_tdata_28_T_157 : _tmp_result_3_trans_tdata_28_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_28_T_161 = _tmp_result_3_trans_tdata_28_T_160 ^ tmp_tdata_reg[255:248]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_28 = _tmp_result_3_trans_tdata_28_T_134 ^ _tmp_result_3_trans_tdata_28_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_29_T_27 = _tmp_result_3_trans_tdata_28_T_26 ^ tmp_tdata_reg[231:224]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_29_T_70 = _tmp_result_3_trans_tdata_28_T_78 ^ _tmp_result_3_trans_tdata_28_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_29_T_79 = _tmp_result_3_trans_tdata_29_T_70 ^ _tmp_result_3_trans_tdata_28_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_29_T_80 = _tmp_result_3_trans_tdata_29_T_27 ^ _tmp_result_3_trans_tdata_29_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_29_T_115 = _tmp_result_3_trans_tdata_28_T_115 ^ _tmp_result_3_trans_tdata_28_T_99
    ; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_29_T_116 = _tmp_result_3_trans_tdata_29_T_115 ^ tmp_tdata_reg[247:240]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_29_T_117 = _tmp_result_3_trans_tdata_29_T_80 ^ _tmp_result_3_trans_tdata_29_T_116
    ; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_29_T_160 = _tmp_result_3_trans_tdata_28_T_160 ^
    _tmp_result_3_trans_tdata_28_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_29_T_161 = _tmp_result_3_trans_tdata_29_T_160 ^ tmp_tdata_reg[255:248]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_29 = _tmp_result_3_trans_tdata_29_T_117 ^ _tmp_result_3_trans_tdata_29_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_30_T_44 = _tmp_result_3_trans_tdata_28_T_43 ^ tmp_tdata_reg[231:224]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_30_T_71 = _tmp_result_3_trans_tdata_28_T_78 ^ tmp_tdata_reg[239:232]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_30_T_72 = _tmp_result_3_trans_tdata_30_T_44 ^ _tmp_result_3_trans_tdata_30_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_30_T_124 = _tmp_result_3_trans_tdata_28_T_132 ^ _tmp_result_3_trans_tdata_28_T_99
    ; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_30_T_125 = _tmp_result_3_trans_tdata_30_T_72 ^ _tmp_result_3_trans_tdata_30_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_30_T_160 = _tmp_result_3_trans_tdata_28_T_160 ^
    _tmp_result_3_trans_tdata_28_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_30_T_161 = _tmp_result_3_trans_tdata_30_T_160 ^ tmp_tdata_reg[255:248]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_30 = _tmp_result_3_trans_tdata_30_T_125 ^ _tmp_result_3_trans_tdata_30_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_31_T_35 = _tmp_result_3_trans_tdata_28_T_26 ^ _tmp_result_3_trans_tdata_28_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_31_T_36 = _tmp_result_3_trans_tdata_31_T_35 ^ tmp_tdata_reg[231:224]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_31_T_80 = _tmp_result_3_trans_tdata_29_T_70 ^ tmp_tdata_reg[239:232]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_31_T_81 = _tmp_result_3_trans_tdata_31_T_36 ^ _tmp_result_3_trans_tdata_31_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_31_T_108 = _tmp_result_3_trans_tdata_28_T_115 ^ tmp_tdata_reg[247:240]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_31_T_109 = _tmp_result_3_trans_tdata_31_T_81 ^ _tmp_result_3_trans_tdata_31_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_31_T_161 = _tmp_result_3_trans_tdata_29_T_160 ^
    _tmp_result_3_trans_tdata_28_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_31 = _tmp_result_3_trans_tdata_31_T_109 ^ _tmp_result_3_trans_tdata_31_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_6 = {tmp_tdata_reg[262:256],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_7 = _tmp_result_3_trans_tdata_32_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_10 = tmp_tdata_reg[263] ? _tmp_result_3_trans_tdata_32_T_7 :
    _tmp_result_3_trans_tdata_32_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_14 = {_tmp_result_3_trans_tdata_32_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_15 = _tmp_result_3_trans_tdata_32_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_18 = _tmp_result_3_trans_tdata_32_T_10[7] ?
    _tmp_result_3_trans_tdata_32_T_15 : _tmp_result_3_trans_tdata_32_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_22 = {_tmp_result_3_trans_tdata_32_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_23 = _tmp_result_3_trans_tdata_32_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_26 = _tmp_result_3_trans_tdata_32_T_18[7] ?
    _tmp_result_3_trans_tdata_32_T_23 : _tmp_result_3_trans_tdata_32_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_43 = _tmp_result_3_trans_tdata_32_T_26 ^ _tmp_result_3_trans_tdata_32_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_52 = _tmp_result_3_trans_tdata_32_T_43 ^ _tmp_result_3_trans_tdata_32_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_58 = {tmp_tdata_reg[270:264],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_59 = _tmp_result_3_trans_tdata_32_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_62 = tmp_tdata_reg[271] ? _tmp_result_3_trans_tdata_32_T_59 :
    _tmp_result_3_trans_tdata_32_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_66 = {_tmp_result_3_trans_tdata_32_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_67 = _tmp_result_3_trans_tdata_32_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_70 = _tmp_result_3_trans_tdata_32_T_62[7] ?
    _tmp_result_3_trans_tdata_32_T_67 : _tmp_result_3_trans_tdata_32_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_74 = {_tmp_result_3_trans_tdata_32_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_75 = _tmp_result_3_trans_tdata_32_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_78 = _tmp_result_3_trans_tdata_32_T_70[7] ?
    _tmp_result_3_trans_tdata_32_T_75 : _tmp_result_3_trans_tdata_32_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_87 = _tmp_result_3_trans_tdata_32_T_78 ^ _tmp_result_3_trans_tdata_32_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_88 = _tmp_result_3_trans_tdata_32_T_87 ^ tmp_tdata_reg[271:264]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_89 = _tmp_result_3_trans_tdata_32_T_52 ^ _tmp_result_3_trans_tdata_32_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_95 = {tmp_tdata_reg[278:272],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_96 = _tmp_result_3_trans_tdata_32_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_99 = tmp_tdata_reg[279] ? _tmp_result_3_trans_tdata_32_T_96 :
    _tmp_result_3_trans_tdata_32_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_103 = {_tmp_result_3_trans_tdata_32_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_104 = _tmp_result_3_trans_tdata_32_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_107 = _tmp_result_3_trans_tdata_32_T_99[7] ?
    _tmp_result_3_trans_tdata_32_T_104 : _tmp_result_3_trans_tdata_32_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_111 = {_tmp_result_3_trans_tdata_32_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_112 = _tmp_result_3_trans_tdata_32_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_115 = _tmp_result_3_trans_tdata_32_T_107[7] ?
    _tmp_result_3_trans_tdata_32_T_112 : _tmp_result_3_trans_tdata_32_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_132 = _tmp_result_3_trans_tdata_32_T_115 ^
    _tmp_result_3_trans_tdata_32_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_133 = _tmp_result_3_trans_tdata_32_T_132 ^ tmp_tdata_reg[279:272]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_134 = _tmp_result_3_trans_tdata_32_T_89 ^ _tmp_result_3_trans_tdata_32_T_133
    ; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_140 = {tmp_tdata_reg[286:280],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_141 = _tmp_result_3_trans_tdata_32_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_144 = tmp_tdata_reg[287] ? _tmp_result_3_trans_tdata_32_T_141 :
    _tmp_result_3_trans_tdata_32_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_148 = {_tmp_result_3_trans_tdata_32_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_149 = _tmp_result_3_trans_tdata_32_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_152 = _tmp_result_3_trans_tdata_32_T_144[7] ?
    _tmp_result_3_trans_tdata_32_T_149 : _tmp_result_3_trans_tdata_32_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_156 = {_tmp_result_3_trans_tdata_32_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_157 = _tmp_result_3_trans_tdata_32_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_160 = _tmp_result_3_trans_tdata_32_T_152[7] ?
    _tmp_result_3_trans_tdata_32_T_157 : _tmp_result_3_trans_tdata_32_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_32_T_161 = _tmp_result_3_trans_tdata_32_T_160 ^ tmp_tdata_reg[287:280]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_32 = _tmp_result_3_trans_tdata_32_T_134 ^ _tmp_result_3_trans_tdata_32_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_33_T_27 = _tmp_result_3_trans_tdata_32_T_26 ^ tmp_tdata_reg[263:256]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_33_T_70 = _tmp_result_3_trans_tdata_32_T_78 ^ _tmp_result_3_trans_tdata_32_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_33_T_79 = _tmp_result_3_trans_tdata_33_T_70 ^ _tmp_result_3_trans_tdata_32_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_33_T_80 = _tmp_result_3_trans_tdata_33_T_27 ^ _tmp_result_3_trans_tdata_33_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_33_T_115 = _tmp_result_3_trans_tdata_32_T_115 ^ _tmp_result_3_trans_tdata_32_T_99
    ; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_33_T_116 = _tmp_result_3_trans_tdata_33_T_115 ^ tmp_tdata_reg[279:272]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_33_T_117 = _tmp_result_3_trans_tdata_33_T_80 ^ _tmp_result_3_trans_tdata_33_T_116
    ; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_33_T_160 = _tmp_result_3_trans_tdata_32_T_160 ^
    _tmp_result_3_trans_tdata_32_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_33_T_161 = _tmp_result_3_trans_tdata_33_T_160 ^ tmp_tdata_reg[287:280]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_33 = _tmp_result_3_trans_tdata_33_T_117 ^ _tmp_result_3_trans_tdata_33_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_34_T_44 = _tmp_result_3_trans_tdata_32_T_43 ^ tmp_tdata_reg[263:256]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_34_T_71 = _tmp_result_3_trans_tdata_32_T_78 ^ tmp_tdata_reg[271:264]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_34_T_72 = _tmp_result_3_trans_tdata_34_T_44 ^ _tmp_result_3_trans_tdata_34_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_34_T_124 = _tmp_result_3_trans_tdata_32_T_132 ^ _tmp_result_3_trans_tdata_32_T_99
    ; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_34_T_125 = _tmp_result_3_trans_tdata_34_T_72 ^ _tmp_result_3_trans_tdata_34_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_34_T_160 = _tmp_result_3_trans_tdata_32_T_160 ^
    _tmp_result_3_trans_tdata_32_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_34_T_161 = _tmp_result_3_trans_tdata_34_T_160 ^ tmp_tdata_reg[287:280]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_34 = _tmp_result_3_trans_tdata_34_T_125 ^ _tmp_result_3_trans_tdata_34_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_35_T_35 = _tmp_result_3_trans_tdata_32_T_26 ^ _tmp_result_3_trans_tdata_32_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_35_T_36 = _tmp_result_3_trans_tdata_35_T_35 ^ tmp_tdata_reg[263:256]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_35_T_80 = _tmp_result_3_trans_tdata_33_T_70 ^ tmp_tdata_reg[271:264]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_35_T_81 = _tmp_result_3_trans_tdata_35_T_36 ^ _tmp_result_3_trans_tdata_35_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_35_T_108 = _tmp_result_3_trans_tdata_32_T_115 ^ tmp_tdata_reg[279:272]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_35_T_109 = _tmp_result_3_trans_tdata_35_T_81 ^ _tmp_result_3_trans_tdata_35_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_35_T_161 = _tmp_result_3_trans_tdata_33_T_160 ^
    _tmp_result_3_trans_tdata_32_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_35 = _tmp_result_3_trans_tdata_35_T_109 ^ _tmp_result_3_trans_tdata_35_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_6 = {tmp_tdata_reg[294:288],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_7 = _tmp_result_3_trans_tdata_36_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_10 = tmp_tdata_reg[295] ? _tmp_result_3_trans_tdata_36_T_7 :
    _tmp_result_3_trans_tdata_36_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_14 = {_tmp_result_3_trans_tdata_36_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_15 = _tmp_result_3_trans_tdata_36_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_18 = _tmp_result_3_trans_tdata_36_T_10[7] ?
    _tmp_result_3_trans_tdata_36_T_15 : _tmp_result_3_trans_tdata_36_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_22 = {_tmp_result_3_trans_tdata_36_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_23 = _tmp_result_3_trans_tdata_36_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_26 = _tmp_result_3_trans_tdata_36_T_18[7] ?
    _tmp_result_3_trans_tdata_36_T_23 : _tmp_result_3_trans_tdata_36_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_43 = _tmp_result_3_trans_tdata_36_T_26 ^ _tmp_result_3_trans_tdata_36_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_52 = _tmp_result_3_trans_tdata_36_T_43 ^ _tmp_result_3_trans_tdata_36_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_58 = {tmp_tdata_reg[302:296],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_59 = _tmp_result_3_trans_tdata_36_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_62 = tmp_tdata_reg[303] ? _tmp_result_3_trans_tdata_36_T_59 :
    _tmp_result_3_trans_tdata_36_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_66 = {_tmp_result_3_trans_tdata_36_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_67 = _tmp_result_3_trans_tdata_36_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_70 = _tmp_result_3_trans_tdata_36_T_62[7] ?
    _tmp_result_3_trans_tdata_36_T_67 : _tmp_result_3_trans_tdata_36_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_74 = {_tmp_result_3_trans_tdata_36_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_75 = _tmp_result_3_trans_tdata_36_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_78 = _tmp_result_3_trans_tdata_36_T_70[7] ?
    _tmp_result_3_trans_tdata_36_T_75 : _tmp_result_3_trans_tdata_36_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_87 = _tmp_result_3_trans_tdata_36_T_78 ^ _tmp_result_3_trans_tdata_36_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_88 = _tmp_result_3_trans_tdata_36_T_87 ^ tmp_tdata_reg[303:296]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_89 = _tmp_result_3_trans_tdata_36_T_52 ^ _tmp_result_3_trans_tdata_36_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_95 = {tmp_tdata_reg[310:304],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_96 = _tmp_result_3_trans_tdata_36_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_99 = tmp_tdata_reg[311] ? _tmp_result_3_trans_tdata_36_T_96 :
    _tmp_result_3_trans_tdata_36_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_103 = {_tmp_result_3_trans_tdata_36_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_104 = _tmp_result_3_trans_tdata_36_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_107 = _tmp_result_3_trans_tdata_36_T_99[7] ?
    _tmp_result_3_trans_tdata_36_T_104 : _tmp_result_3_trans_tdata_36_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_111 = {_tmp_result_3_trans_tdata_36_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_112 = _tmp_result_3_trans_tdata_36_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_115 = _tmp_result_3_trans_tdata_36_T_107[7] ?
    _tmp_result_3_trans_tdata_36_T_112 : _tmp_result_3_trans_tdata_36_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_132 = _tmp_result_3_trans_tdata_36_T_115 ^
    _tmp_result_3_trans_tdata_36_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_133 = _tmp_result_3_trans_tdata_36_T_132 ^ tmp_tdata_reg[311:304]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_134 = _tmp_result_3_trans_tdata_36_T_89 ^ _tmp_result_3_trans_tdata_36_T_133
    ; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_140 = {tmp_tdata_reg[318:312],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_141 = _tmp_result_3_trans_tdata_36_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_144 = tmp_tdata_reg[319] ? _tmp_result_3_trans_tdata_36_T_141 :
    _tmp_result_3_trans_tdata_36_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_148 = {_tmp_result_3_trans_tdata_36_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_149 = _tmp_result_3_trans_tdata_36_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_152 = _tmp_result_3_trans_tdata_36_T_144[7] ?
    _tmp_result_3_trans_tdata_36_T_149 : _tmp_result_3_trans_tdata_36_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_156 = {_tmp_result_3_trans_tdata_36_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_157 = _tmp_result_3_trans_tdata_36_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_160 = _tmp_result_3_trans_tdata_36_T_152[7] ?
    _tmp_result_3_trans_tdata_36_T_157 : _tmp_result_3_trans_tdata_36_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_36_T_161 = _tmp_result_3_trans_tdata_36_T_160 ^ tmp_tdata_reg[319:312]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_36 = _tmp_result_3_trans_tdata_36_T_134 ^ _tmp_result_3_trans_tdata_36_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_37_T_27 = _tmp_result_3_trans_tdata_36_T_26 ^ tmp_tdata_reg[295:288]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_37_T_70 = _tmp_result_3_trans_tdata_36_T_78 ^ _tmp_result_3_trans_tdata_36_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_37_T_79 = _tmp_result_3_trans_tdata_37_T_70 ^ _tmp_result_3_trans_tdata_36_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_37_T_80 = _tmp_result_3_trans_tdata_37_T_27 ^ _tmp_result_3_trans_tdata_37_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_37_T_115 = _tmp_result_3_trans_tdata_36_T_115 ^ _tmp_result_3_trans_tdata_36_T_99
    ; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_37_T_116 = _tmp_result_3_trans_tdata_37_T_115 ^ tmp_tdata_reg[311:304]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_37_T_117 = _tmp_result_3_trans_tdata_37_T_80 ^ _tmp_result_3_trans_tdata_37_T_116
    ; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_37_T_160 = _tmp_result_3_trans_tdata_36_T_160 ^
    _tmp_result_3_trans_tdata_36_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_37_T_161 = _tmp_result_3_trans_tdata_37_T_160 ^ tmp_tdata_reg[319:312]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_37 = _tmp_result_3_trans_tdata_37_T_117 ^ _tmp_result_3_trans_tdata_37_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_38_T_44 = _tmp_result_3_trans_tdata_36_T_43 ^ tmp_tdata_reg[295:288]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_38_T_71 = _tmp_result_3_trans_tdata_36_T_78 ^ tmp_tdata_reg[303:296]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_38_T_72 = _tmp_result_3_trans_tdata_38_T_44 ^ _tmp_result_3_trans_tdata_38_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_38_T_124 = _tmp_result_3_trans_tdata_36_T_132 ^ _tmp_result_3_trans_tdata_36_T_99
    ; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_38_T_125 = _tmp_result_3_trans_tdata_38_T_72 ^ _tmp_result_3_trans_tdata_38_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_38_T_160 = _tmp_result_3_trans_tdata_36_T_160 ^
    _tmp_result_3_trans_tdata_36_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_38_T_161 = _tmp_result_3_trans_tdata_38_T_160 ^ tmp_tdata_reg[319:312]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_38 = _tmp_result_3_trans_tdata_38_T_125 ^ _tmp_result_3_trans_tdata_38_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_39_T_35 = _tmp_result_3_trans_tdata_36_T_26 ^ _tmp_result_3_trans_tdata_36_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_39_T_36 = _tmp_result_3_trans_tdata_39_T_35 ^ tmp_tdata_reg[295:288]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_39_T_80 = _tmp_result_3_trans_tdata_37_T_70 ^ tmp_tdata_reg[303:296]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_39_T_81 = _tmp_result_3_trans_tdata_39_T_36 ^ _tmp_result_3_trans_tdata_39_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_39_T_108 = _tmp_result_3_trans_tdata_36_T_115 ^ tmp_tdata_reg[311:304]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_39_T_109 = _tmp_result_3_trans_tdata_39_T_81 ^ _tmp_result_3_trans_tdata_39_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_39_T_161 = _tmp_result_3_trans_tdata_37_T_160 ^
    _tmp_result_3_trans_tdata_36_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_39 = _tmp_result_3_trans_tdata_39_T_109 ^ _tmp_result_3_trans_tdata_39_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_6 = {tmp_tdata_reg[326:320],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_7 = _tmp_result_3_trans_tdata_40_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_10 = tmp_tdata_reg[327] ? _tmp_result_3_trans_tdata_40_T_7 :
    _tmp_result_3_trans_tdata_40_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_14 = {_tmp_result_3_trans_tdata_40_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_15 = _tmp_result_3_trans_tdata_40_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_18 = _tmp_result_3_trans_tdata_40_T_10[7] ?
    _tmp_result_3_trans_tdata_40_T_15 : _tmp_result_3_trans_tdata_40_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_22 = {_tmp_result_3_trans_tdata_40_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_23 = _tmp_result_3_trans_tdata_40_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_26 = _tmp_result_3_trans_tdata_40_T_18[7] ?
    _tmp_result_3_trans_tdata_40_T_23 : _tmp_result_3_trans_tdata_40_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_43 = _tmp_result_3_trans_tdata_40_T_26 ^ _tmp_result_3_trans_tdata_40_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_52 = _tmp_result_3_trans_tdata_40_T_43 ^ _tmp_result_3_trans_tdata_40_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_58 = {tmp_tdata_reg[334:328],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_59 = _tmp_result_3_trans_tdata_40_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_62 = tmp_tdata_reg[335] ? _tmp_result_3_trans_tdata_40_T_59 :
    _tmp_result_3_trans_tdata_40_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_66 = {_tmp_result_3_trans_tdata_40_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_67 = _tmp_result_3_trans_tdata_40_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_70 = _tmp_result_3_trans_tdata_40_T_62[7] ?
    _tmp_result_3_trans_tdata_40_T_67 : _tmp_result_3_trans_tdata_40_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_74 = {_tmp_result_3_trans_tdata_40_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_75 = _tmp_result_3_trans_tdata_40_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_78 = _tmp_result_3_trans_tdata_40_T_70[7] ?
    _tmp_result_3_trans_tdata_40_T_75 : _tmp_result_3_trans_tdata_40_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_87 = _tmp_result_3_trans_tdata_40_T_78 ^ _tmp_result_3_trans_tdata_40_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_88 = _tmp_result_3_trans_tdata_40_T_87 ^ tmp_tdata_reg[335:328]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_89 = _tmp_result_3_trans_tdata_40_T_52 ^ _tmp_result_3_trans_tdata_40_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_95 = {tmp_tdata_reg[342:336],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_96 = _tmp_result_3_trans_tdata_40_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_99 = tmp_tdata_reg[343] ? _tmp_result_3_trans_tdata_40_T_96 :
    _tmp_result_3_trans_tdata_40_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_103 = {_tmp_result_3_trans_tdata_40_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_104 = _tmp_result_3_trans_tdata_40_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_107 = _tmp_result_3_trans_tdata_40_T_99[7] ?
    _tmp_result_3_trans_tdata_40_T_104 : _tmp_result_3_trans_tdata_40_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_111 = {_tmp_result_3_trans_tdata_40_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_112 = _tmp_result_3_trans_tdata_40_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_115 = _tmp_result_3_trans_tdata_40_T_107[7] ?
    _tmp_result_3_trans_tdata_40_T_112 : _tmp_result_3_trans_tdata_40_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_132 = _tmp_result_3_trans_tdata_40_T_115 ^
    _tmp_result_3_trans_tdata_40_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_133 = _tmp_result_3_trans_tdata_40_T_132 ^ tmp_tdata_reg[343:336]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_134 = _tmp_result_3_trans_tdata_40_T_89 ^ _tmp_result_3_trans_tdata_40_T_133
    ; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_140 = {tmp_tdata_reg[350:344],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_141 = _tmp_result_3_trans_tdata_40_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_144 = tmp_tdata_reg[351] ? _tmp_result_3_trans_tdata_40_T_141 :
    _tmp_result_3_trans_tdata_40_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_148 = {_tmp_result_3_trans_tdata_40_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_149 = _tmp_result_3_trans_tdata_40_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_152 = _tmp_result_3_trans_tdata_40_T_144[7] ?
    _tmp_result_3_trans_tdata_40_T_149 : _tmp_result_3_trans_tdata_40_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_156 = {_tmp_result_3_trans_tdata_40_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_157 = _tmp_result_3_trans_tdata_40_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_160 = _tmp_result_3_trans_tdata_40_T_152[7] ?
    _tmp_result_3_trans_tdata_40_T_157 : _tmp_result_3_trans_tdata_40_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_40_T_161 = _tmp_result_3_trans_tdata_40_T_160 ^ tmp_tdata_reg[351:344]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_40 = _tmp_result_3_trans_tdata_40_T_134 ^ _tmp_result_3_trans_tdata_40_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_41_T_27 = _tmp_result_3_trans_tdata_40_T_26 ^ tmp_tdata_reg[327:320]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_41_T_70 = _tmp_result_3_trans_tdata_40_T_78 ^ _tmp_result_3_trans_tdata_40_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_41_T_79 = _tmp_result_3_trans_tdata_41_T_70 ^ _tmp_result_3_trans_tdata_40_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_41_T_80 = _tmp_result_3_trans_tdata_41_T_27 ^ _tmp_result_3_trans_tdata_41_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_41_T_115 = _tmp_result_3_trans_tdata_40_T_115 ^ _tmp_result_3_trans_tdata_40_T_99
    ; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_41_T_116 = _tmp_result_3_trans_tdata_41_T_115 ^ tmp_tdata_reg[343:336]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_41_T_117 = _tmp_result_3_trans_tdata_41_T_80 ^ _tmp_result_3_trans_tdata_41_T_116
    ; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_41_T_160 = _tmp_result_3_trans_tdata_40_T_160 ^
    _tmp_result_3_trans_tdata_40_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_41_T_161 = _tmp_result_3_trans_tdata_41_T_160 ^ tmp_tdata_reg[351:344]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_41 = _tmp_result_3_trans_tdata_41_T_117 ^ _tmp_result_3_trans_tdata_41_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_42_T_44 = _tmp_result_3_trans_tdata_40_T_43 ^ tmp_tdata_reg[327:320]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_42_T_71 = _tmp_result_3_trans_tdata_40_T_78 ^ tmp_tdata_reg[335:328]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_42_T_72 = _tmp_result_3_trans_tdata_42_T_44 ^ _tmp_result_3_trans_tdata_42_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_42_T_124 = _tmp_result_3_trans_tdata_40_T_132 ^ _tmp_result_3_trans_tdata_40_T_99
    ; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_42_T_125 = _tmp_result_3_trans_tdata_42_T_72 ^ _tmp_result_3_trans_tdata_42_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_42_T_160 = _tmp_result_3_trans_tdata_40_T_160 ^
    _tmp_result_3_trans_tdata_40_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_42_T_161 = _tmp_result_3_trans_tdata_42_T_160 ^ tmp_tdata_reg[351:344]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_42 = _tmp_result_3_trans_tdata_42_T_125 ^ _tmp_result_3_trans_tdata_42_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_43_T_35 = _tmp_result_3_trans_tdata_40_T_26 ^ _tmp_result_3_trans_tdata_40_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_43_T_36 = _tmp_result_3_trans_tdata_43_T_35 ^ tmp_tdata_reg[327:320]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_43_T_80 = _tmp_result_3_trans_tdata_41_T_70 ^ tmp_tdata_reg[335:328]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_43_T_81 = _tmp_result_3_trans_tdata_43_T_36 ^ _tmp_result_3_trans_tdata_43_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_43_T_108 = _tmp_result_3_trans_tdata_40_T_115 ^ tmp_tdata_reg[343:336]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_43_T_109 = _tmp_result_3_trans_tdata_43_T_81 ^ _tmp_result_3_trans_tdata_43_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_43_T_161 = _tmp_result_3_trans_tdata_41_T_160 ^
    _tmp_result_3_trans_tdata_40_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_43 = _tmp_result_3_trans_tdata_43_T_109 ^ _tmp_result_3_trans_tdata_43_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_6 = {tmp_tdata_reg[358:352],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_7 = _tmp_result_3_trans_tdata_44_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_10 = tmp_tdata_reg[359] ? _tmp_result_3_trans_tdata_44_T_7 :
    _tmp_result_3_trans_tdata_44_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_14 = {_tmp_result_3_trans_tdata_44_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_15 = _tmp_result_3_trans_tdata_44_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_18 = _tmp_result_3_trans_tdata_44_T_10[7] ?
    _tmp_result_3_trans_tdata_44_T_15 : _tmp_result_3_trans_tdata_44_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_22 = {_tmp_result_3_trans_tdata_44_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_23 = _tmp_result_3_trans_tdata_44_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_26 = _tmp_result_3_trans_tdata_44_T_18[7] ?
    _tmp_result_3_trans_tdata_44_T_23 : _tmp_result_3_trans_tdata_44_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_43 = _tmp_result_3_trans_tdata_44_T_26 ^ _tmp_result_3_trans_tdata_44_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_52 = _tmp_result_3_trans_tdata_44_T_43 ^ _tmp_result_3_trans_tdata_44_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_58 = {tmp_tdata_reg[366:360],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_59 = _tmp_result_3_trans_tdata_44_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_62 = tmp_tdata_reg[367] ? _tmp_result_3_trans_tdata_44_T_59 :
    _tmp_result_3_trans_tdata_44_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_66 = {_tmp_result_3_trans_tdata_44_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_67 = _tmp_result_3_trans_tdata_44_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_70 = _tmp_result_3_trans_tdata_44_T_62[7] ?
    _tmp_result_3_trans_tdata_44_T_67 : _tmp_result_3_trans_tdata_44_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_74 = {_tmp_result_3_trans_tdata_44_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_75 = _tmp_result_3_trans_tdata_44_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_78 = _tmp_result_3_trans_tdata_44_T_70[7] ?
    _tmp_result_3_trans_tdata_44_T_75 : _tmp_result_3_trans_tdata_44_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_87 = _tmp_result_3_trans_tdata_44_T_78 ^ _tmp_result_3_trans_tdata_44_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_88 = _tmp_result_3_trans_tdata_44_T_87 ^ tmp_tdata_reg[367:360]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_89 = _tmp_result_3_trans_tdata_44_T_52 ^ _tmp_result_3_trans_tdata_44_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_95 = {tmp_tdata_reg[374:368],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_96 = _tmp_result_3_trans_tdata_44_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_99 = tmp_tdata_reg[375] ? _tmp_result_3_trans_tdata_44_T_96 :
    _tmp_result_3_trans_tdata_44_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_103 = {_tmp_result_3_trans_tdata_44_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_104 = _tmp_result_3_trans_tdata_44_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_107 = _tmp_result_3_trans_tdata_44_T_99[7] ?
    _tmp_result_3_trans_tdata_44_T_104 : _tmp_result_3_trans_tdata_44_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_111 = {_tmp_result_3_trans_tdata_44_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_112 = _tmp_result_3_trans_tdata_44_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_115 = _tmp_result_3_trans_tdata_44_T_107[7] ?
    _tmp_result_3_trans_tdata_44_T_112 : _tmp_result_3_trans_tdata_44_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_132 = _tmp_result_3_trans_tdata_44_T_115 ^
    _tmp_result_3_trans_tdata_44_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_133 = _tmp_result_3_trans_tdata_44_T_132 ^ tmp_tdata_reg[375:368]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_134 = _tmp_result_3_trans_tdata_44_T_89 ^ _tmp_result_3_trans_tdata_44_T_133
    ; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_140 = {tmp_tdata_reg[382:376],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_141 = _tmp_result_3_trans_tdata_44_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_144 = tmp_tdata_reg[383] ? _tmp_result_3_trans_tdata_44_T_141 :
    _tmp_result_3_trans_tdata_44_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_148 = {_tmp_result_3_trans_tdata_44_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_149 = _tmp_result_3_trans_tdata_44_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_152 = _tmp_result_3_trans_tdata_44_T_144[7] ?
    _tmp_result_3_trans_tdata_44_T_149 : _tmp_result_3_trans_tdata_44_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_156 = {_tmp_result_3_trans_tdata_44_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_157 = _tmp_result_3_trans_tdata_44_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_160 = _tmp_result_3_trans_tdata_44_T_152[7] ?
    _tmp_result_3_trans_tdata_44_T_157 : _tmp_result_3_trans_tdata_44_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_44_T_161 = _tmp_result_3_trans_tdata_44_T_160 ^ tmp_tdata_reg[383:376]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_44 = _tmp_result_3_trans_tdata_44_T_134 ^ _tmp_result_3_trans_tdata_44_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_45_T_27 = _tmp_result_3_trans_tdata_44_T_26 ^ tmp_tdata_reg[359:352]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_45_T_70 = _tmp_result_3_trans_tdata_44_T_78 ^ _tmp_result_3_trans_tdata_44_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_45_T_79 = _tmp_result_3_trans_tdata_45_T_70 ^ _tmp_result_3_trans_tdata_44_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_45_T_80 = _tmp_result_3_trans_tdata_45_T_27 ^ _tmp_result_3_trans_tdata_45_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_45_T_115 = _tmp_result_3_trans_tdata_44_T_115 ^ _tmp_result_3_trans_tdata_44_T_99
    ; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_45_T_116 = _tmp_result_3_trans_tdata_45_T_115 ^ tmp_tdata_reg[375:368]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_45_T_117 = _tmp_result_3_trans_tdata_45_T_80 ^ _tmp_result_3_trans_tdata_45_T_116
    ; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_45_T_160 = _tmp_result_3_trans_tdata_44_T_160 ^
    _tmp_result_3_trans_tdata_44_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_45_T_161 = _tmp_result_3_trans_tdata_45_T_160 ^ tmp_tdata_reg[383:376]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_45 = _tmp_result_3_trans_tdata_45_T_117 ^ _tmp_result_3_trans_tdata_45_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_46_T_44 = _tmp_result_3_trans_tdata_44_T_43 ^ tmp_tdata_reg[359:352]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_46_T_71 = _tmp_result_3_trans_tdata_44_T_78 ^ tmp_tdata_reg[367:360]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_46_T_72 = _tmp_result_3_trans_tdata_46_T_44 ^ _tmp_result_3_trans_tdata_46_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_46_T_124 = _tmp_result_3_trans_tdata_44_T_132 ^ _tmp_result_3_trans_tdata_44_T_99
    ; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_46_T_125 = _tmp_result_3_trans_tdata_46_T_72 ^ _tmp_result_3_trans_tdata_46_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_46_T_160 = _tmp_result_3_trans_tdata_44_T_160 ^
    _tmp_result_3_trans_tdata_44_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_46_T_161 = _tmp_result_3_trans_tdata_46_T_160 ^ tmp_tdata_reg[383:376]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_46 = _tmp_result_3_trans_tdata_46_T_125 ^ _tmp_result_3_trans_tdata_46_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_47_T_35 = _tmp_result_3_trans_tdata_44_T_26 ^ _tmp_result_3_trans_tdata_44_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_47_T_36 = _tmp_result_3_trans_tdata_47_T_35 ^ tmp_tdata_reg[359:352]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_47_T_80 = _tmp_result_3_trans_tdata_45_T_70 ^ tmp_tdata_reg[367:360]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_47_T_81 = _tmp_result_3_trans_tdata_47_T_36 ^ _tmp_result_3_trans_tdata_47_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_47_T_108 = _tmp_result_3_trans_tdata_44_T_115 ^ tmp_tdata_reg[375:368]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_47_T_109 = _tmp_result_3_trans_tdata_47_T_81 ^ _tmp_result_3_trans_tdata_47_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_47_T_161 = _tmp_result_3_trans_tdata_45_T_160 ^
    _tmp_result_3_trans_tdata_44_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_47 = _tmp_result_3_trans_tdata_47_T_109 ^ _tmp_result_3_trans_tdata_47_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_6 = {tmp_tdata_reg[390:384],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_7 = _tmp_result_3_trans_tdata_48_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_10 = tmp_tdata_reg[391] ? _tmp_result_3_trans_tdata_48_T_7 :
    _tmp_result_3_trans_tdata_48_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_14 = {_tmp_result_3_trans_tdata_48_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_15 = _tmp_result_3_trans_tdata_48_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_18 = _tmp_result_3_trans_tdata_48_T_10[7] ?
    _tmp_result_3_trans_tdata_48_T_15 : _tmp_result_3_trans_tdata_48_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_22 = {_tmp_result_3_trans_tdata_48_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_23 = _tmp_result_3_trans_tdata_48_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_26 = _tmp_result_3_trans_tdata_48_T_18[7] ?
    _tmp_result_3_trans_tdata_48_T_23 : _tmp_result_3_trans_tdata_48_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_43 = _tmp_result_3_trans_tdata_48_T_26 ^ _tmp_result_3_trans_tdata_48_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_52 = _tmp_result_3_trans_tdata_48_T_43 ^ _tmp_result_3_trans_tdata_48_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_58 = {tmp_tdata_reg[398:392],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_59 = _tmp_result_3_trans_tdata_48_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_62 = tmp_tdata_reg[399] ? _tmp_result_3_trans_tdata_48_T_59 :
    _tmp_result_3_trans_tdata_48_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_66 = {_tmp_result_3_trans_tdata_48_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_67 = _tmp_result_3_trans_tdata_48_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_70 = _tmp_result_3_trans_tdata_48_T_62[7] ?
    _tmp_result_3_trans_tdata_48_T_67 : _tmp_result_3_trans_tdata_48_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_74 = {_tmp_result_3_trans_tdata_48_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_75 = _tmp_result_3_trans_tdata_48_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_78 = _tmp_result_3_trans_tdata_48_T_70[7] ?
    _tmp_result_3_trans_tdata_48_T_75 : _tmp_result_3_trans_tdata_48_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_87 = _tmp_result_3_trans_tdata_48_T_78 ^ _tmp_result_3_trans_tdata_48_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_88 = _tmp_result_3_trans_tdata_48_T_87 ^ tmp_tdata_reg[399:392]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_89 = _tmp_result_3_trans_tdata_48_T_52 ^ _tmp_result_3_trans_tdata_48_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_95 = {tmp_tdata_reg[406:400],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_96 = _tmp_result_3_trans_tdata_48_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_99 = tmp_tdata_reg[407] ? _tmp_result_3_trans_tdata_48_T_96 :
    _tmp_result_3_trans_tdata_48_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_103 = {_tmp_result_3_trans_tdata_48_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_104 = _tmp_result_3_trans_tdata_48_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_107 = _tmp_result_3_trans_tdata_48_T_99[7] ?
    _tmp_result_3_trans_tdata_48_T_104 : _tmp_result_3_trans_tdata_48_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_111 = {_tmp_result_3_trans_tdata_48_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_112 = _tmp_result_3_trans_tdata_48_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_115 = _tmp_result_3_trans_tdata_48_T_107[7] ?
    _tmp_result_3_trans_tdata_48_T_112 : _tmp_result_3_trans_tdata_48_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_132 = _tmp_result_3_trans_tdata_48_T_115 ^
    _tmp_result_3_trans_tdata_48_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_133 = _tmp_result_3_trans_tdata_48_T_132 ^ tmp_tdata_reg[407:400]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_134 = _tmp_result_3_trans_tdata_48_T_89 ^ _tmp_result_3_trans_tdata_48_T_133
    ; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_140 = {tmp_tdata_reg[414:408],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_141 = _tmp_result_3_trans_tdata_48_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_144 = tmp_tdata_reg[415] ? _tmp_result_3_trans_tdata_48_T_141 :
    _tmp_result_3_trans_tdata_48_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_148 = {_tmp_result_3_trans_tdata_48_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_149 = _tmp_result_3_trans_tdata_48_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_152 = _tmp_result_3_trans_tdata_48_T_144[7] ?
    _tmp_result_3_trans_tdata_48_T_149 : _tmp_result_3_trans_tdata_48_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_156 = {_tmp_result_3_trans_tdata_48_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_157 = _tmp_result_3_trans_tdata_48_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_160 = _tmp_result_3_trans_tdata_48_T_152[7] ?
    _tmp_result_3_trans_tdata_48_T_157 : _tmp_result_3_trans_tdata_48_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_48_T_161 = _tmp_result_3_trans_tdata_48_T_160 ^ tmp_tdata_reg[415:408]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_48 = _tmp_result_3_trans_tdata_48_T_134 ^ _tmp_result_3_trans_tdata_48_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_49_T_27 = _tmp_result_3_trans_tdata_48_T_26 ^ tmp_tdata_reg[391:384]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_49_T_70 = _tmp_result_3_trans_tdata_48_T_78 ^ _tmp_result_3_trans_tdata_48_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_49_T_79 = _tmp_result_3_trans_tdata_49_T_70 ^ _tmp_result_3_trans_tdata_48_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_49_T_80 = _tmp_result_3_trans_tdata_49_T_27 ^ _tmp_result_3_trans_tdata_49_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_49_T_115 = _tmp_result_3_trans_tdata_48_T_115 ^ _tmp_result_3_trans_tdata_48_T_99
    ; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_49_T_116 = _tmp_result_3_trans_tdata_49_T_115 ^ tmp_tdata_reg[407:400]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_49_T_117 = _tmp_result_3_trans_tdata_49_T_80 ^ _tmp_result_3_trans_tdata_49_T_116
    ; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_49_T_160 = _tmp_result_3_trans_tdata_48_T_160 ^
    _tmp_result_3_trans_tdata_48_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_49_T_161 = _tmp_result_3_trans_tdata_49_T_160 ^ tmp_tdata_reg[415:408]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_49 = _tmp_result_3_trans_tdata_49_T_117 ^ _tmp_result_3_trans_tdata_49_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_50_T_44 = _tmp_result_3_trans_tdata_48_T_43 ^ tmp_tdata_reg[391:384]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_50_T_71 = _tmp_result_3_trans_tdata_48_T_78 ^ tmp_tdata_reg[399:392]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_50_T_72 = _tmp_result_3_trans_tdata_50_T_44 ^ _tmp_result_3_trans_tdata_50_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_50_T_124 = _tmp_result_3_trans_tdata_48_T_132 ^ _tmp_result_3_trans_tdata_48_T_99
    ; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_50_T_125 = _tmp_result_3_trans_tdata_50_T_72 ^ _tmp_result_3_trans_tdata_50_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_50_T_160 = _tmp_result_3_trans_tdata_48_T_160 ^
    _tmp_result_3_trans_tdata_48_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_50_T_161 = _tmp_result_3_trans_tdata_50_T_160 ^ tmp_tdata_reg[415:408]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_50 = _tmp_result_3_trans_tdata_50_T_125 ^ _tmp_result_3_trans_tdata_50_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_51_T_35 = _tmp_result_3_trans_tdata_48_T_26 ^ _tmp_result_3_trans_tdata_48_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_51_T_36 = _tmp_result_3_trans_tdata_51_T_35 ^ tmp_tdata_reg[391:384]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_51_T_80 = _tmp_result_3_trans_tdata_49_T_70 ^ tmp_tdata_reg[399:392]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_51_T_81 = _tmp_result_3_trans_tdata_51_T_36 ^ _tmp_result_3_trans_tdata_51_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_51_T_108 = _tmp_result_3_trans_tdata_48_T_115 ^ tmp_tdata_reg[407:400]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_51_T_109 = _tmp_result_3_trans_tdata_51_T_81 ^ _tmp_result_3_trans_tdata_51_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_51_T_161 = _tmp_result_3_trans_tdata_49_T_160 ^
    _tmp_result_3_trans_tdata_48_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_51 = _tmp_result_3_trans_tdata_51_T_109 ^ _tmp_result_3_trans_tdata_51_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_6 = {tmp_tdata_reg[422:416],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_7 = _tmp_result_3_trans_tdata_52_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_10 = tmp_tdata_reg[423] ? _tmp_result_3_trans_tdata_52_T_7 :
    _tmp_result_3_trans_tdata_52_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_14 = {_tmp_result_3_trans_tdata_52_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_15 = _tmp_result_3_trans_tdata_52_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_18 = _tmp_result_3_trans_tdata_52_T_10[7] ?
    _tmp_result_3_trans_tdata_52_T_15 : _tmp_result_3_trans_tdata_52_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_22 = {_tmp_result_3_trans_tdata_52_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_23 = _tmp_result_3_trans_tdata_52_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_26 = _tmp_result_3_trans_tdata_52_T_18[7] ?
    _tmp_result_3_trans_tdata_52_T_23 : _tmp_result_3_trans_tdata_52_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_43 = _tmp_result_3_trans_tdata_52_T_26 ^ _tmp_result_3_trans_tdata_52_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_52 = _tmp_result_3_trans_tdata_52_T_43 ^ _tmp_result_3_trans_tdata_52_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_58 = {tmp_tdata_reg[430:424],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_59 = _tmp_result_3_trans_tdata_52_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_62 = tmp_tdata_reg[431] ? _tmp_result_3_trans_tdata_52_T_59 :
    _tmp_result_3_trans_tdata_52_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_66 = {_tmp_result_3_trans_tdata_52_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_67 = _tmp_result_3_trans_tdata_52_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_70 = _tmp_result_3_trans_tdata_52_T_62[7] ?
    _tmp_result_3_trans_tdata_52_T_67 : _tmp_result_3_trans_tdata_52_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_74 = {_tmp_result_3_trans_tdata_52_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_75 = _tmp_result_3_trans_tdata_52_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_78 = _tmp_result_3_trans_tdata_52_T_70[7] ?
    _tmp_result_3_trans_tdata_52_T_75 : _tmp_result_3_trans_tdata_52_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_87 = _tmp_result_3_trans_tdata_52_T_78 ^ _tmp_result_3_trans_tdata_52_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_88 = _tmp_result_3_trans_tdata_52_T_87 ^ tmp_tdata_reg[431:424]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_89 = _tmp_result_3_trans_tdata_52_T_52 ^ _tmp_result_3_trans_tdata_52_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_95 = {tmp_tdata_reg[438:432],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_96 = _tmp_result_3_trans_tdata_52_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_99 = tmp_tdata_reg[439] ? _tmp_result_3_trans_tdata_52_T_96 :
    _tmp_result_3_trans_tdata_52_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_103 = {_tmp_result_3_trans_tdata_52_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_104 = _tmp_result_3_trans_tdata_52_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_107 = _tmp_result_3_trans_tdata_52_T_99[7] ?
    _tmp_result_3_trans_tdata_52_T_104 : _tmp_result_3_trans_tdata_52_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_111 = {_tmp_result_3_trans_tdata_52_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_112 = _tmp_result_3_trans_tdata_52_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_115 = _tmp_result_3_trans_tdata_52_T_107[7] ?
    _tmp_result_3_trans_tdata_52_T_112 : _tmp_result_3_trans_tdata_52_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_132 = _tmp_result_3_trans_tdata_52_T_115 ^
    _tmp_result_3_trans_tdata_52_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_133 = _tmp_result_3_trans_tdata_52_T_132 ^ tmp_tdata_reg[439:432]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_134 = _tmp_result_3_trans_tdata_52_T_89 ^ _tmp_result_3_trans_tdata_52_T_133
    ; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_140 = {tmp_tdata_reg[446:440],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_141 = _tmp_result_3_trans_tdata_52_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_144 = tmp_tdata_reg[447] ? _tmp_result_3_trans_tdata_52_T_141 :
    _tmp_result_3_trans_tdata_52_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_148 = {_tmp_result_3_trans_tdata_52_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_149 = _tmp_result_3_trans_tdata_52_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_152 = _tmp_result_3_trans_tdata_52_T_144[7] ?
    _tmp_result_3_trans_tdata_52_T_149 : _tmp_result_3_trans_tdata_52_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_156 = {_tmp_result_3_trans_tdata_52_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_157 = _tmp_result_3_trans_tdata_52_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_160 = _tmp_result_3_trans_tdata_52_T_152[7] ?
    _tmp_result_3_trans_tdata_52_T_157 : _tmp_result_3_trans_tdata_52_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_52_T_161 = _tmp_result_3_trans_tdata_52_T_160 ^ tmp_tdata_reg[447:440]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_52 = _tmp_result_3_trans_tdata_52_T_134 ^ _tmp_result_3_trans_tdata_52_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_53_T_27 = _tmp_result_3_trans_tdata_52_T_26 ^ tmp_tdata_reg[423:416]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_53_T_70 = _tmp_result_3_trans_tdata_52_T_78 ^ _tmp_result_3_trans_tdata_52_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_53_T_79 = _tmp_result_3_trans_tdata_53_T_70 ^ _tmp_result_3_trans_tdata_52_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_53_T_80 = _tmp_result_3_trans_tdata_53_T_27 ^ _tmp_result_3_trans_tdata_53_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_53_T_115 = _tmp_result_3_trans_tdata_52_T_115 ^ _tmp_result_3_trans_tdata_52_T_99
    ; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_53_T_116 = _tmp_result_3_trans_tdata_53_T_115 ^ tmp_tdata_reg[439:432]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_53_T_117 = _tmp_result_3_trans_tdata_53_T_80 ^ _tmp_result_3_trans_tdata_53_T_116
    ; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_53_T_160 = _tmp_result_3_trans_tdata_52_T_160 ^
    _tmp_result_3_trans_tdata_52_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_53_T_161 = _tmp_result_3_trans_tdata_53_T_160 ^ tmp_tdata_reg[447:440]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_53 = _tmp_result_3_trans_tdata_53_T_117 ^ _tmp_result_3_trans_tdata_53_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_54_T_44 = _tmp_result_3_trans_tdata_52_T_43 ^ tmp_tdata_reg[423:416]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_54_T_71 = _tmp_result_3_trans_tdata_52_T_78 ^ tmp_tdata_reg[431:424]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_54_T_72 = _tmp_result_3_trans_tdata_54_T_44 ^ _tmp_result_3_trans_tdata_54_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_54_T_124 = _tmp_result_3_trans_tdata_52_T_132 ^ _tmp_result_3_trans_tdata_52_T_99
    ; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_54_T_125 = _tmp_result_3_trans_tdata_54_T_72 ^ _tmp_result_3_trans_tdata_54_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_54_T_160 = _tmp_result_3_trans_tdata_52_T_160 ^
    _tmp_result_3_trans_tdata_52_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_54_T_161 = _tmp_result_3_trans_tdata_54_T_160 ^ tmp_tdata_reg[447:440]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_54 = _tmp_result_3_trans_tdata_54_T_125 ^ _tmp_result_3_trans_tdata_54_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_55_T_35 = _tmp_result_3_trans_tdata_52_T_26 ^ _tmp_result_3_trans_tdata_52_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_55_T_36 = _tmp_result_3_trans_tdata_55_T_35 ^ tmp_tdata_reg[423:416]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_55_T_80 = _tmp_result_3_trans_tdata_53_T_70 ^ tmp_tdata_reg[431:424]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_55_T_81 = _tmp_result_3_trans_tdata_55_T_36 ^ _tmp_result_3_trans_tdata_55_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_55_T_108 = _tmp_result_3_trans_tdata_52_T_115 ^ tmp_tdata_reg[439:432]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_55_T_109 = _tmp_result_3_trans_tdata_55_T_81 ^ _tmp_result_3_trans_tdata_55_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_55_T_161 = _tmp_result_3_trans_tdata_53_T_160 ^
    _tmp_result_3_trans_tdata_52_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_55 = _tmp_result_3_trans_tdata_55_T_109 ^ _tmp_result_3_trans_tdata_55_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_6 = {tmp_tdata_reg[454:448],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_7 = _tmp_result_3_trans_tdata_56_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_10 = tmp_tdata_reg[455] ? _tmp_result_3_trans_tdata_56_T_7 :
    _tmp_result_3_trans_tdata_56_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_14 = {_tmp_result_3_trans_tdata_56_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_15 = _tmp_result_3_trans_tdata_56_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_18 = _tmp_result_3_trans_tdata_56_T_10[7] ?
    _tmp_result_3_trans_tdata_56_T_15 : _tmp_result_3_trans_tdata_56_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_22 = {_tmp_result_3_trans_tdata_56_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_23 = _tmp_result_3_trans_tdata_56_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_26 = _tmp_result_3_trans_tdata_56_T_18[7] ?
    _tmp_result_3_trans_tdata_56_T_23 : _tmp_result_3_trans_tdata_56_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_43 = _tmp_result_3_trans_tdata_56_T_26 ^ _tmp_result_3_trans_tdata_56_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_52 = _tmp_result_3_trans_tdata_56_T_43 ^ _tmp_result_3_trans_tdata_56_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_58 = {tmp_tdata_reg[462:456],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_59 = _tmp_result_3_trans_tdata_56_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_62 = tmp_tdata_reg[463] ? _tmp_result_3_trans_tdata_56_T_59 :
    _tmp_result_3_trans_tdata_56_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_66 = {_tmp_result_3_trans_tdata_56_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_67 = _tmp_result_3_trans_tdata_56_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_70 = _tmp_result_3_trans_tdata_56_T_62[7] ?
    _tmp_result_3_trans_tdata_56_T_67 : _tmp_result_3_trans_tdata_56_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_74 = {_tmp_result_3_trans_tdata_56_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_75 = _tmp_result_3_trans_tdata_56_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_78 = _tmp_result_3_trans_tdata_56_T_70[7] ?
    _tmp_result_3_trans_tdata_56_T_75 : _tmp_result_3_trans_tdata_56_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_87 = _tmp_result_3_trans_tdata_56_T_78 ^ _tmp_result_3_trans_tdata_56_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_88 = _tmp_result_3_trans_tdata_56_T_87 ^ tmp_tdata_reg[463:456]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_89 = _tmp_result_3_trans_tdata_56_T_52 ^ _tmp_result_3_trans_tdata_56_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_95 = {tmp_tdata_reg[470:464],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_96 = _tmp_result_3_trans_tdata_56_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_99 = tmp_tdata_reg[471] ? _tmp_result_3_trans_tdata_56_T_96 :
    _tmp_result_3_trans_tdata_56_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_103 = {_tmp_result_3_trans_tdata_56_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_104 = _tmp_result_3_trans_tdata_56_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_107 = _tmp_result_3_trans_tdata_56_T_99[7] ?
    _tmp_result_3_trans_tdata_56_T_104 : _tmp_result_3_trans_tdata_56_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_111 = {_tmp_result_3_trans_tdata_56_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_112 = _tmp_result_3_trans_tdata_56_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_115 = _tmp_result_3_trans_tdata_56_T_107[7] ?
    _tmp_result_3_trans_tdata_56_T_112 : _tmp_result_3_trans_tdata_56_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_132 = _tmp_result_3_trans_tdata_56_T_115 ^
    _tmp_result_3_trans_tdata_56_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_133 = _tmp_result_3_trans_tdata_56_T_132 ^ tmp_tdata_reg[471:464]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_134 = _tmp_result_3_trans_tdata_56_T_89 ^ _tmp_result_3_trans_tdata_56_T_133
    ; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_140 = {tmp_tdata_reg[478:472],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_141 = _tmp_result_3_trans_tdata_56_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_144 = tmp_tdata_reg[479] ? _tmp_result_3_trans_tdata_56_T_141 :
    _tmp_result_3_trans_tdata_56_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_148 = {_tmp_result_3_trans_tdata_56_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_149 = _tmp_result_3_trans_tdata_56_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_152 = _tmp_result_3_trans_tdata_56_T_144[7] ?
    _tmp_result_3_trans_tdata_56_T_149 : _tmp_result_3_trans_tdata_56_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_156 = {_tmp_result_3_trans_tdata_56_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_157 = _tmp_result_3_trans_tdata_56_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_160 = _tmp_result_3_trans_tdata_56_T_152[7] ?
    _tmp_result_3_trans_tdata_56_T_157 : _tmp_result_3_trans_tdata_56_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_56_T_161 = _tmp_result_3_trans_tdata_56_T_160 ^ tmp_tdata_reg[479:472]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_56 = _tmp_result_3_trans_tdata_56_T_134 ^ _tmp_result_3_trans_tdata_56_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_57_T_27 = _tmp_result_3_trans_tdata_56_T_26 ^ tmp_tdata_reg[455:448]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_57_T_70 = _tmp_result_3_trans_tdata_56_T_78 ^ _tmp_result_3_trans_tdata_56_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_57_T_79 = _tmp_result_3_trans_tdata_57_T_70 ^ _tmp_result_3_trans_tdata_56_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_57_T_80 = _tmp_result_3_trans_tdata_57_T_27 ^ _tmp_result_3_trans_tdata_57_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_57_T_115 = _tmp_result_3_trans_tdata_56_T_115 ^ _tmp_result_3_trans_tdata_56_T_99
    ; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_57_T_116 = _tmp_result_3_trans_tdata_57_T_115 ^ tmp_tdata_reg[471:464]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_57_T_117 = _tmp_result_3_trans_tdata_57_T_80 ^ _tmp_result_3_trans_tdata_57_T_116
    ; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_57_T_160 = _tmp_result_3_trans_tdata_56_T_160 ^
    _tmp_result_3_trans_tdata_56_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_57_T_161 = _tmp_result_3_trans_tdata_57_T_160 ^ tmp_tdata_reg[479:472]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_57 = _tmp_result_3_trans_tdata_57_T_117 ^ _tmp_result_3_trans_tdata_57_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_58_T_44 = _tmp_result_3_trans_tdata_56_T_43 ^ tmp_tdata_reg[455:448]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_58_T_71 = _tmp_result_3_trans_tdata_56_T_78 ^ tmp_tdata_reg[463:456]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_58_T_72 = _tmp_result_3_trans_tdata_58_T_44 ^ _tmp_result_3_trans_tdata_58_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_58_T_124 = _tmp_result_3_trans_tdata_56_T_132 ^ _tmp_result_3_trans_tdata_56_T_99
    ; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_58_T_125 = _tmp_result_3_trans_tdata_58_T_72 ^ _tmp_result_3_trans_tdata_58_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_58_T_160 = _tmp_result_3_trans_tdata_56_T_160 ^
    _tmp_result_3_trans_tdata_56_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_58_T_161 = _tmp_result_3_trans_tdata_58_T_160 ^ tmp_tdata_reg[479:472]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_58 = _tmp_result_3_trans_tdata_58_T_125 ^ _tmp_result_3_trans_tdata_58_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_59_T_35 = _tmp_result_3_trans_tdata_56_T_26 ^ _tmp_result_3_trans_tdata_56_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_59_T_36 = _tmp_result_3_trans_tdata_59_T_35 ^ tmp_tdata_reg[455:448]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_59_T_80 = _tmp_result_3_trans_tdata_57_T_70 ^ tmp_tdata_reg[463:456]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_59_T_81 = _tmp_result_3_trans_tdata_59_T_36 ^ _tmp_result_3_trans_tdata_59_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_59_T_108 = _tmp_result_3_trans_tdata_56_T_115 ^ tmp_tdata_reg[471:464]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_59_T_109 = _tmp_result_3_trans_tdata_59_T_81 ^ _tmp_result_3_trans_tdata_59_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_59_T_161 = _tmp_result_3_trans_tdata_57_T_160 ^
    _tmp_result_3_trans_tdata_56_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_59 = _tmp_result_3_trans_tdata_59_T_109 ^ _tmp_result_3_trans_tdata_59_T_161; // @[cal_gf256.scala 125:48]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_6 = {tmp_tdata_reg[486:480],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_7 = _tmp_result_3_trans_tdata_60_T_6 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_10 = tmp_tdata_reg[487] ? _tmp_result_3_trans_tdata_60_T_7 :
    _tmp_result_3_trans_tdata_60_T_6; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_14 = {_tmp_result_3_trans_tdata_60_T_10[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_15 = _tmp_result_3_trans_tdata_60_T_14 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_18 = _tmp_result_3_trans_tdata_60_T_10[7] ?
    _tmp_result_3_trans_tdata_60_T_15 : _tmp_result_3_trans_tdata_60_T_14; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_22 = {_tmp_result_3_trans_tdata_60_T_18[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_23 = _tmp_result_3_trans_tdata_60_T_22 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_26 = _tmp_result_3_trans_tdata_60_T_18[7] ?
    _tmp_result_3_trans_tdata_60_T_23 : _tmp_result_3_trans_tdata_60_T_22; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_43 = _tmp_result_3_trans_tdata_60_T_26 ^ _tmp_result_3_trans_tdata_60_T_18; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_52 = _tmp_result_3_trans_tdata_60_T_43 ^ _tmp_result_3_trans_tdata_60_T_10; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_58 = {tmp_tdata_reg[494:488],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_59 = _tmp_result_3_trans_tdata_60_T_58 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_62 = tmp_tdata_reg[495] ? _tmp_result_3_trans_tdata_60_T_59 :
    _tmp_result_3_trans_tdata_60_T_58; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_66 = {_tmp_result_3_trans_tdata_60_T_62[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_67 = _tmp_result_3_trans_tdata_60_T_66 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_70 = _tmp_result_3_trans_tdata_60_T_62[7] ?
    _tmp_result_3_trans_tdata_60_T_67 : _tmp_result_3_trans_tdata_60_T_66; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_74 = {_tmp_result_3_trans_tdata_60_T_70[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_75 = _tmp_result_3_trans_tdata_60_T_74 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_78 = _tmp_result_3_trans_tdata_60_T_70[7] ?
    _tmp_result_3_trans_tdata_60_T_75 : _tmp_result_3_trans_tdata_60_T_74; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_87 = _tmp_result_3_trans_tdata_60_T_78 ^ _tmp_result_3_trans_tdata_60_T_62; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_88 = _tmp_result_3_trans_tdata_60_T_87 ^ tmp_tdata_reg[495:488]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_89 = _tmp_result_3_trans_tdata_60_T_52 ^ _tmp_result_3_trans_tdata_60_T_88; // @[cal_gf256.scala 115:56]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_95 = {tmp_tdata_reg[502:496],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_96 = _tmp_result_3_trans_tdata_60_T_95 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_99 = tmp_tdata_reg[503] ? _tmp_result_3_trans_tdata_60_T_96 :
    _tmp_result_3_trans_tdata_60_T_95; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_103 = {_tmp_result_3_trans_tdata_60_T_99[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_104 = _tmp_result_3_trans_tdata_60_T_103 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_107 = _tmp_result_3_trans_tdata_60_T_99[7] ?
    _tmp_result_3_trans_tdata_60_T_104 : _tmp_result_3_trans_tdata_60_T_103; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_111 = {_tmp_result_3_trans_tdata_60_T_107[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_112 = _tmp_result_3_trans_tdata_60_T_111 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_115 = _tmp_result_3_trans_tdata_60_T_107[7] ?
    _tmp_result_3_trans_tdata_60_T_112 : _tmp_result_3_trans_tdata_60_T_111; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_132 = _tmp_result_3_trans_tdata_60_T_115 ^
    _tmp_result_3_trans_tdata_60_T_107; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_133 = _tmp_result_3_trans_tdata_60_T_132 ^ tmp_tdata_reg[503:496]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_134 = _tmp_result_3_trans_tdata_60_T_89 ^ _tmp_result_3_trans_tdata_60_T_133
    ; // @[cal_gf256.scala 115:97]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_140 = {tmp_tdata_reg[510:504],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_141 = _tmp_result_3_trans_tdata_60_T_140 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_144 = tmp_tdata_reg[511] ? _tmp_result_3_trans_tdata_60_T_141 :
    _tmp_result_3_trans_tdata_60_T_140; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_148 = {_tmp_result_3_trans_tdata_60_T_144[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_149 = _tmp_result_3_trans_tdata_60_T_148 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_152 = _tmp_result_3_trans_tdata_60_T_144[7] ?
    _tmp_result_3_trans_tdata_60_T_149 : _tmp_result_3_trans_tdata_60_T_148; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_156 = {_tmp_result_3_trans_tdata_60_T_152[6:0],1'h0}; // @[Cat.scala 31:58]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_157 = _tmp_result_3_trans_tdata_60_T_156 ^ 8'h1b; // @[cal_gf256.scala 73:59]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_160 = _tmp_result_3_trans_tdata_60_T_152[7] ?
    _tmp_result_3_trans_tdata_60_T_157 : _tmp_result_3_trans_tdata_60_T_156; // @[cal_gf256.scala 73:21]
  wire [7:0] _tmp_result_3_trans_tdata_60_T_161 = _tmp_result_3_trans_tdata_60_T_160 ^ tmp_tdata_reg[511:504]; // @[cal_gf256.scala 80:34]
  wire [7:0] tmp_result_3_trans_tdata_60 = _tmp_result_3_trans_tdata_60_T_134 ^ _tmp_result_3_trans_tdata_60_T_161; // @[cal_gf256.scala 116:48]
  wire [7:0] _tmp_result_3_trans_tdata_61_T_27 = _tmp_result_3_trans_tdata_60_T_26 ^ tmp_tdata_reg[487:480]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_61_T_70 = _tmp_result_3_trans_tdata_60_T_78 ^ _tmp_result_3_trans_tdata_60_T_70; // @[cal_gf256.scala 85:34]
  wire [7:0] _tmp_result_3_trans_tdata_61_T_79 = _tmp_result_3_trans_tdata_61_T_70 ^ _tmp_result_3_trans_tdata_60_T_62; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_61_T_80 = _tmp_result_3_trans_tdata_61_T_27 ^ _tmp_result_3_trans_tdata_61_T_79; // @[cal_gf256.scala 118:56]
  wire [7:0] _tmp_result_3_trans_tdata_61_T_115 = _tmp_result_3_trans_tdata_60_T_115 ^ _tmp_result_3_trans_tdata_60_T_99
    ; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_61_T_116 = _tmp_result_3_trans_tdata_61_T_115 ^ tmp_tdata_reg[503:496]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_61_T_117 = _tmp_result_3_trans_tdata_61_T_80 ^ _tmp_result_3_trans_tdata_61_T_116
    ; // @[cal_gf256.scala 118:97]
  wire [7:0] _tmp_result_3_trans_tdata_61_T_160 = _tmp_result_3_trans_tdata_60_T_160 ^
    _tmp_result_3_trans_tdata_60_T_152; // @[cal_gf256.scala 84:34]
  wire [7:0] _tmp_result_3_trans_tdata_61_T_161 = _tmp_result_3_trans_tdata_61_T_160 ^ tmp_tdata_reg[511:504]; // @[cal_gf256.scala 84:52]
  wire [7:0] tmp_result_3_trans_tdata_61 = _tmp_result_3_trans_tdata_61_T_117 ^ _tmp_result_3_trans_tdata_61_T_161; // @[cal_gf256.scala 119:48]
  wire [7:0] _tmp_result_3_trans_tdata_62_T_44 = _tmp_result_3_trans_tdata_60_T_43 ^ tmp_tdata_reg[487:480]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_62_T_71 = _tmp_result_3_trans_tdata_60_T_78 ^ tmp_tdata_reg[495:488]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_62_T_72 = _tmp_result_3_trans_tdata_62_T_44 ^ _tmp_result_3_trans_tdata_62_T_71; // @[cal_gf256.scala 121:56]
  wire [7:0] _tmp_result_3_trans_tdata_62_T_124 = _tmp_result_3_trans_tdata_60_T_132 ^ _tmp_result_3_trans_tdata_60_T_99
    ; // @[cal_gf256.scala 85:52]
  wire [7:0] _tmp_result_3_trans_tdata_62_T_125 = _tmp_result_3_trans_tdata_62_T_72 ^ _tmp_result_3_trans_tdata_62_T_124
    ; // @[cal_gf256.scala 121:97]
  wire [7:0] _tmp_result_3_trans_tdata_62_T_160 = _tmp_result_3_trans_tdata_60_T_160 ^
    _tmp_result_3_trans_tdata_60_T_144; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_62_T_161 = _tmp_result_3_trans_tdata_62_T_160 ^ tmp_tdata_reg[511:504]; // @[cal_gf256.scala 82:52]
  wire [7:0] tmp_result_3_trans_tdata_62 = _tmp_result_3_trans_tdata_62_T_125 ^ _tmp_result_3_trans_tdata_62_T_161; // @[cal_gf256.scala 122:48]
  wire [7:0] _tmp_result_3_trans_tdata_63_T_35 = _tmp_result_3_trans_tdata_60_T_26 ^ _tmp_result_3_trans_tdata_60_T_10; // @[cal_gf256.scala 82:34]
  wire [7:0] _tmp_result_3_trans_tdata_63_T_36 = _tmp_result_3_trans_tdata_63_T_35 ^ tmp_tdata_reg[487:480]; // @[cal_gf256.scala 82:52]
  wire [7:0] _tmp_result_3_trans_tdata_63_T_80 = _tmp_result_3_trans_tdata_61_T_70 ^ tmp_tdata_reg[495:488]; // @[cal_gf256.scala 84:52]
  wire [7:0] _tmp_result_3_trans_tdata_63_T_81 = _tmp_result_3_trans_tdata_63_T_36 ^ _tmp_result_3_trans_tdata_63_T_80; // @[cal_gf256.scala 124:56]
  wire [7:0] _tmp_result_3_trans_tdata_63_T_108 = _tmp_result_3_trans_tdata_60_T_115 ^ tmp_tdata_reg[503:496]; // @[cal_gf256.scala 80:34]
  wire [7:0] _tmp_result_3_trans_tdata_63_T_109 = _tmp_result_3_trans_tdata_63_T_81 ^ _tmp_result_3_trans_tdata_63_T_108
    ; // @[cal_gf256.scala 124:97]
  wire [7:0] _tmp_result_3_trans_tdata_63_T_161 = _tmp_result_3_trans_tdata_61_T_160 ^
    _tmp_result_3_trans_tdata_60_T_144; // @[cal_gf256.scala 85:52]
  wire [7:0] tmp_result_3_trans_tdata_63 = _tmp_result_3_trans_tdata_63_T_109 ^ _tmp_result_3_trans_tdata_63_T_161; // @[cal_gf256.scala 125:48]
  wire [63:0] tmp_result_3_lo_lo_lo = {tmp_result_3_trans_tdata_7,tmp_result_3_trans_tdata_6,tmp_result_3_trans_tdata_5,
    tmp_result_3_trans_tdata_4,tmp_result_3_trans_tdata_3,tmp_result_3_trans_tdata_2,tmp_result_3_trans_tdata_1,
    tmp_result_3_trans_tdata_0}; // @[RxAESDecrypter.scala 36:21]
  wire [127:0] tmp_result_3_lo_lo = {tmp_result_3_trans_tdata_15,tmp_result_3_trans_tdata_14,tmp_result_3_trans_tdata_13
    ,tmp_result_3_trans_tdata_12,tmp_result_3_trans_tdata_11,tmp_result_3_trans_tdata_10,tmp_result_3_trans_tdata_9,
    tmp_result_3_trans_tdata_8,tmp_result_3_lo_lo_lo}; // @[RxAESDecrypter.scala 36:21]
  wire [63:0] tmp_result_3_lo_hi_lo = {tmp_result_3_trans_tdata_23,tmp_result_3_trans_tdata_22,
    tmp_result_3_trans_tdata_21,tmp_result_3_trans_tdata_20,tmp_result_3_trans_tdata_19,tmp_result_3_trans_tdata_18,
    tmp_result_3_trans_tdata_17,tmp_result_3_trans_tdata_16}; // @[RxAESDecrypter.scala 36:21]
  wire [255:0] tmp_result_3_lo = {tmp_result_3_trans_tdata_31,tmp_result_3_trans_tdata_30,tmp_result_3_trans_tdata_29,
    tmp_result_3_trans_tdata_28,tmp_result_3_trans_tdata_27,tmp_result_3_trans_tdata_26,tmp_result_3_trans_tdata_25,
    tmp_result_3_trans_tdata_24,tmp_result_3_lo_hi_lo,tmp_result_3_lo_lo}; // @[RxAESDecrypter.scala 36:21]
  wire [63:0] tmp_result_3_hi_lo_lo = {tmp_result_3_trans_tdata_39,tmp_result_3_trans_tdata_38,
    tmp_result_3_trans_tdata_37,tmp_result_3_trans_tdata_36,tmp_result_3_trans_tdata_35,tmp_result_3_trans_tdata_34,
    tmp_result_3_trans_tdata_33,tmp_result_3_trans_tdata_32}; // @[RxAESDecrypter.scala 36:21]
  wire [127:0] tmp_result_3_hi_lo = {tmp_result_3_trans_tdata_47,tmp_result_3_trans_tdata_46,tmp_result_3_trans_tdata_45
    ,tmp_result_3_trans_tdata_44,tmp_result_3_trans_tdata_43,tmp_result_3_trans_tdata_42,tmp_result_3_trans_tdata_41,
    tmp_result_3_trans_tdata_40,tmp_result_3_hi_lo_lo}; // @[RxAESDecrypter.scala 36:21]
  wire [63:0] tmp_result_3_hi_hi_lo = {tmp_result_3_trans_tdata_55,tmp_result_3_trans_tdata_54,
    tmp_result_3_trans_tdata_53,tmp_result_3_trans_tdata_52,tmp_result_3_trans_tdata_51,tmp_result_3_trans_tdata_50,
    tmp_result_3_trans_tdata_49,tmp_result_3_trans_tdata_48}; // @[RxAESDecrypter.scala 36:21]
  wire [255:0] tmp_result_3_hi = {tmp_result_3_trans_tdata_63,tmp_result_3_trans_tdata_62,tmp_result_3_trans_tdata_61,
    tmp_result_3_trans_tdata_60,tmp_result_3_trans_tdata_59,tmp_result_3_trans_tdata_58,tmp_result_3_trans_tdata_57,
    tmp_result_3_trans_tdata_56,tmp_result_3_hi_hi_lo,tmp_result_3_hi_lo}; // @[RxAESDecrypter.scala 36:21]
  wire [511:0] tmp_result_3 = {tmp_result_3_hi,tmp_result_3_lo}; // @[RxAESDecrypter.scala 36:21]
  wire [511:0] _GEN_1039 = in_shake_hand ? io_in_tdata : tmp_tdata_reg; // @[RxAESDecrypter.scala 62:25 63:23 41:28]
  wire [7:0] _aes_key_reg_T_1 = cur_round_counter - 8'h1; // @[RxAESDecrypter.scala 74:94]
  wire [127:0] _GEN_1041 = 4'h1 == _aes_key_reg_T_1[3:0] ? aes_key_reg_1 : aes_key_reg_0; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1042 = 4'h2 == _aes_key_reg_T_1[3:0] ? aes_key_reg_2 : _GEN_1041; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1043 = 4'h3 == _aes_key_reg_T_1[3:0] ? aes_key_reg_3 : _GEN_1042; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1044 = 4'h4 == _aes_key_reg_T_1[3:0] ? aes_key_reg_4 : _GEN_1043; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1045 = 4'h5 == _aes_key_reg_T_1[3:0] ? aes_key_reg_5 : _GEN_1044; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1046 = 4'h6 == _aes_key_reg_T_1[3:0] ? aes_key_reg_6 : _GEN_1045; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1047 = 4'h7 == _aes_key_reg_T_1[3:0] ? aes_key_reg_7 : _GEN_1046; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1048 = 4'h8 == _aes_key_reg_T_1[3:0] ? aes_key_reg_8 : _GEN_1047; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1049 = 4'h9 == _aes_key_reg_T_1[3:0] ? aes_key_reg_9 : _GEN_1048; // @[cal_gf256.scala 134:{27,27}]
  wire [127:0] _GEN_1050 = 4'ha == _aes_key_reg_T_1[3:0] ? aes_key_reg_10 : _GEN_1049; // @[cal_gf256.scala 134:{27,27}]
  wire [6:0] _aes_key_reg_next_key_0_T_3 = {_GEN_1050[99:96], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_1052 = 4'h1 == _GEN_1050[103:100] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1053 = 4'h2 == _GEN_1050[103:100] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_1052; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1054 = 4'h3 == _GEN_1050[103:100] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_1053; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1055 = 4'h4 == _GEN_1050[103:100] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_1054; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1056 = 4'h5 == _GEN_1050[103:100] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_1055; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1057 = 4'h6 == _GEN_1050[103:100] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_1056; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1058 = 4'h7 == _GEN_1050[103:100] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_1057; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1059 = 4'h8 == _GEN_1050[103:100] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_1058; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1060 = 4'h9 == _GEN_1050[103:100] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_1059; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1061 = 4'ha == _GEN_1050[103:100] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_1060; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1062 = 4'hb == _GEN_1050[103:100] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_1061; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1063 = 4'hc == _GEN_1050[103:100] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_1062; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1064 = 4'hd == _GEN_1050[103:100] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_1063; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1065 = 4'he == _GEN_1050[103:100] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_1064; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1066 = 4'hf == _GEN_1050[103:100] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_1065; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _aes_key_reg_next_key_0_T_4 = _GEN_1066 >> _aes_key_reg_next_key_0_T_3; // @[cal_gf256.scala 27:17]
  wire [6:0] _aes_key_reg_next_key_0_T_8 = {_GEN_1050[123:120], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_1068 = 4'h1 == _GEN_1050[127:124] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1069 = 4'h2 == _GEN_1050[127:124] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_1068; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1070 = 4'h3 == _GEN_1050[127:124] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_1069; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1071 = 4'h4 == _GEN_1050[127:124] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_1070; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1072 = 4'h5 == _GEN_1050[127:124] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_1071; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1073 = 4'h6 == _GEN_1050[127:124] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_1072; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1074 = 4'h7 == _GEN_1050[127:124] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_1073; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1075 = 4'h8 == _GEN_1050[127:124] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_1074; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1076 = 4'h9 == _GEN_1050[127:124] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_1075; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1077 = 4'ha == _GEN_1050[127:124] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_1076; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1078 = 4'hb == _GEN_1050[127:124] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_1077; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1079 = 4'hc == _GEN_1050[127:124] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_1078; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1080 = 4'hd == _GEN_1050[127:124] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_1079; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1081 = 4'he == _GEN_1050[127:124] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_1080; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1082 = 4'hf == _GEN_1050[127:124] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_1081; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _aes_key_reg_next_key_0_T_9 = _GEN_1082 >> _aes_key_reg_next_key_0_T_8; // @[cal_gf256.scala 27:17]
  wire [6:0] _aes_key_reg_next_key_0_T_13 = {_GEN_1050[115:112], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_1084 = 4'h1 == _GEN_1050[119:116] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1085 = 4'h2 == _GEN_1050[119:116] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_1084; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1086 = 4'h3 == _GEN_1050[119:116] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_1085; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1087 = 4'h4 == _GEN_1050[119:116] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_1086; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1088 = 4'h5 == _GEN_1050[119:116] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_1087; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1089 = 4'h6 == _GEN_1050[119:116] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_1088; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1090 = 4'h7 == _GEN_1050[119:116] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_1089; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1091 = 4'h8 == _GEN_1050[119:116] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_1090; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1092 = 4'h9 == _GEN_1050[119:116] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_1091; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1093 = 4'ha == _GEN_1050[119:116] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_1092; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1094 = 4'hb == _GEN_1050[119:116] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_1093; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1095 = 4'hc == _GEN_1050[119:116] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_1094; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1096 = 4'hd == _GEN_1050[119:116] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_1095; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1097 = 4'he == _GEN_1050[119:116] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_1096; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1098 = 4'hf == _GEN_1050[119:116] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_1097; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _aes_key_reg_next_key_0_T_14 = _GEN_1098 >> _aes_key_reg_next_key_0_T_13; // @[cal_gf256.scala 27:17]
  wire [6:0] _aes_key_reg_next_key_0_T_18 = {_GEN_1050[107:104], 3'h0}; // @[cal_gf256.scala 27:25]
  wire [127:0] _GEN_1100 = 4'h1 == _GEN_1050[111:108] ? 128'hc072a49cafa2d4adf04759fa7dc982ca : 128'h76abd7fe2b670130c56f6bf27b777c63
    ; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1101 = 4'h2 == _GEN_1050[111:108] ? 128'h1531d871f1e5a534ccf73f362693fdb7 : _GEN_1100; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1102 = 4'h3 == _GEN_1050[111:108] ? 128'h75b227ebe28012079a059618c323c704 : _GEN_1101; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1103 = 4'h4 == _GEN_1050[111:108] ? 128'h842fe329b3d63b52a05a6e1b1a2c8309 : _GEN_1102; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1104 = 4'h5 == _GEN_1050[111:108] ? 128'hcf584c4a39becb6a5bb1fc20ed00d153 : _GEN_1103; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1105 = 4'h6 == _GEN_1050[111:108] ? 128'ha89f3c507f02f94585334d43fbaaefd0 : _GEN_1104; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1106 = 4'h7 == _GEN_1050[111:108] ? 128'hd2f3ff1021dab6bcf5389d928f40a351 : _GEN_1105; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1107 = 4'h8 == _GEN_1050[111:108] ? 128'h73195d643d7ea7c41744975fec130ccd : _GEN_1106; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1108 = 4'h9 == _GEN_1050[111:108] ? 128'hdb0b5ede14b8ee4688902a22dc4f8160 : _GEN_1107; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1109 = 4'ha == _GEN_1050[111:108] ? 128'h79e4959162acd3c25c2406490a3a32e0 : _GEN_1108; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1110 = 4'hb == _GEN_1050[111:108] ? 128'h8ae7a65eaf4566ca94ed58d6d37c8e7 : _GEN_1109; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1111 = 4'hc == _GEN_1050[111:108] ? 128'h8a8bbd4b1f74dde8c6b4a61c2e2578ba : _GEN_1110; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1112 = 4'hd == _GEN_1050[111:108] ? 128'h9e1dc186b95735610ef6034866b53e70 : _GEN_1111; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1113 = 4'he == _GEN_1050[111:108] ? 128'hdf2855cee9871e9b948ed9691198f8e1 : _GEN_1112; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _GEN_1114 = 4'hf == _GEN_1050[111:108] ? 128'h16bb54b00f2d99416842e6bf0d89a18c : _GEN_1113; // @[cal_gf256.scala 27:{17,17}]
  wire [127:0] _aes_key_reg_next_key_0_T_19 = _GEN_1114 >> _aes_key_reg_next_key_0_T_18; // @[cal_gf256.scala 27:17]
  wire [31:0] _aes_key_reg_next_key_0_T_21 = {_aes_key_reg_next_key_0_T_4[7:0],_aes_key_reg_next_key_0_T_9[7:0],
    _aes_key_reg_next_key_0_T_14[7:0],_aes_key_reg_next_key_0_T_19[7:0]}; // @[Cat.scala 31:58]
  wire [31:0] _aes_key_reg_next_key_0_T_22 = _GEN_1050[31:0] ^ _aes_key_reg_next_key_0_T_21; // @[cal_gf256.scala 134:34]
  wire [255:0] _aes_key_reg_next_key_0_T_26 = 256'h1 << _aes_key_reg_T_1; // @[cal_gf256.scala 130:23]
  wire [5:0] _aes_key_reg_next_key_0_T_28 = cur_round_counter == 8'h9 ? 6'h1b : 6'h36; // @[cal_gf256.scala 130:47]
  wire [255:0] _aes_key_reg_next_key_0_T_29 = cur_round_counter <= 8'h8 ? _aes_key_reg_next_key_0_T_26 : {{250'd0},
    _aes_key_reg_next_key_0_T_28}; // @[cal_gf256.scala 130:8]
  wire [255:0] _GEN_1174 = {{224'd0}, _aes_key_reg_next_key_0_T_22}; // @[cal_gf256.scala 139:9]
  wire [255:0] _aes_key_reg_next_key_0_T_30 = _GEN_1174 ^ _aes_key_reg_next_key_0_T_29; // @[cal_gf256.scala 139:9]
  wire [31:0] aes_key_reg_next_key_0 = _aes_key_reg_next_key_0_T_30[31:0]; // @[cal_gf256.scala 133:24 134:17]
  wire [31:0] aes_key_reg_next_key_1 = _GEN_1050[63:32] ^ aes_key_reg_next_key_0; // @[cal_gf256.scala 140:35]
  wire [31:0] aes_key_reg_next_key_2 = _GEN_1050[95:64] ^ aes_key_reg_next_key_1; // @[cal_gf256.scala 141:35]
  wire [31:0] aes_key_reg_next_key_3 = _GEN_1050[127:96] ^ aes_key_reg_next_key_2; // @[cal_gf256.scala 142:36]
  wire [127:0] _aes_key_reg_T_3 = {aes_key_reg_next_key_3,aes_key_reg_next_key_2,aes_key_reg_next_key_1,
    aes_key_reg_next_key_0}; // @[cal_gf256.scala 143:14]
  wire [3:0] _cur_round_counter_T_1 = aes_key_reg_0 == aes_key_0 ? 4'hb : 4'h0; // @[RxAESDecrypter.scala 79:37]
  wire  _T_5 = cur_round_counter < 8'h33; // @[RxAESDecrypter.scala 80:38]
  wire [7:0] _cur_round_counter_T_3 = cur_round_counter + 8'h1; // @[RxAESDecrypter.scala 81:52]
  wire  _T_6 = cur_round_counter >= 8'hb; // @[RxAESDecrypter.scala 84:32]
  wire [511:0] _GEN_1151 = 2'h1 == cur_round_counter[1:0] ? tmp_result_1 : tmp_result_0; // @[RxAESDecrypter.scala 88:{31,31}]
  wire [511:0] _GEN_1152 = 2'h2 == cur_round_counter[1:0] ? tmp_result_2 : _GEN_1151; // @[RxAESDecrypter.scala 88:{31,31}]
  wire [511:0] _GEN_1153 = 2'h3 == cur_round_counter[1:0] ? tmp_result_3 : _GEN_1152; // @[RxAESDecrypter.scala 88:{31,31}]
  assign io_in_tready = ~io_in_extern_config_c2h_match_op[8] ? io_out_tready | ~in_reg_used_reg : _T_6 & (out_shake_hand
     | _io_in_tready_T); // @[RxAESDecrypter.scala 66:48 RxPipelineHandler.scala 30:18 RxAESDecrypter.scala 93:24]
  assign io_out_tdata = ~io_in_extern_config_c2h_match_op[8] ? in_reg_tdata : tmp_tdata_reg; // @[RxAESDecrypter.scala 66:48 RxPipelineHandler.scala 26:18 RxAESDecrypter.scala 92:22]
  assign io_out_tvalid = ~io_in_extern_config_c2h_match_op[8] ? in_reg_tvalid & in_reg_used_reg : cur_round_counter == 8'h33
     & _io_out_tvalid_T; // @[RxAESDecrypter.scala 66:48 RxPipelineHandler.scala 27:18 RxAESDecrypter.scala 94:23]
  assign io_out_tlast = in_reg_r[0]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_tuser = in_reg_r[514]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_tlen = in_reg_r[600:585]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_qid = in_reg_r[584:579]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_ip_chksum = in_reg_r[578:547]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_rx_info_tcp_chksum = in_reg_r[546:515]; // @[RxPipelineHandler.scala 14:128]
  assign io_out_extern_config_c2h_match_op = io_in_extern_config_c2h_match_op; // @[RxPipelineHandler.scala 31:24]
  always @(posedge clock) begin
    if (reset) begin // @[Reg.scala 28:20]
      in_reg_r <= 601'h1; // @[Reg.scala 28:20]
    end else if (in_shake_hand) begin // @[Reg.scala 29:18]
      in_reg_r <= _in_reg_T_1; // @[Reg.scala 29:22]
    end
    if (reset) begin // @[RxPipelineHandler.scala 18:32]
      in_reg_used_reg <= 1'h0; // @[RxPipelineHandler.scala 18:32]
    end else begin
      in_reg_used_reg <= _GEN_3;
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[RxAESDecrypter.scala 66:48]
      if (cur_round_counter < 8'hb) begin // @[RxAESDecrypter.scala 70:40]
        if (cur_round_counter == 8'h0) begin // @[RxAESDecrypter.scala 71:45]
          aes_key_reg_0 <= aes_key_0; // @[RxAESDecrypter.scala 72:32]
        end else if (4'h0 == cur_round_counter[3:0]) begin // @[RxAESDecrypter.scala 74:48]
          aes_key_reg_0 <= _aes_key_reg_T_3; // @[RxAESDecrypter.scala 74:48]
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[RxAESDecrypter.scala 66:48]
      if (cur_round_counter < 8'hb) begin // @[RxAESDecrypter.scala 70:40]
        if (!(cur_round_counter == 8'h0)) begin // @[RxAESDecrypter.scala 71:45]
          if (4'h1 == cur_round_counter[3:0]) begin // @[RxAESDecrypter.scala 74:48]
            aes_key_reg_1 <= _aes_key_reg_T_3; // @[RxAESDecrypter.scala 74:48]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[RxAESDecrypter.scala 66:48]
      if (cur_round_counter < 8'hb) begin // @[RxAESDecrypter.scala 70:40]
        if (!(cur_round_counter == 8'h0)) begin // @[RxAESDecrypter.scala 71:45]
          if (4'h2 == cur_round_counter[3:0]) begin // @[RxAESDecrypter.scala 74:48]
            aes_key_reg_2 <= _aes_key_reg_T_3; // @[RxAESDecrypter.scala 74:48]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[RxAESDecrypter.scala 66:48]
      if (cur_round_counter < 8'hb) begin // @[RxAESDecrypter.scala 70:40]
        if (!(cur_round_counter == 8'h0)) begin // @[RxAESDecrypter.scala 71:45]
          if (4'h3 == cur_round_counter[3:0]) begin // @[RxAESDecrypter.scala 74:48]
            aes_key_reg_3 <= _aes_key_reg_T_3; // @[RxAESDecrypter.scala 74:48]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[RxAESDecrypter.scala 66:48]
      if (cur_round_counter < 8'hb) begin // @[RxAESDecrypter.scala 70:40]
        if (!(cur_round_counter == 8'h0)) begin // @[RxAESDecrypter.scala 71:45]
          if (4'h4 == cur_round_counter[3:0]) begin // @[RxAESDecrypter.scala 74:48]
            aes_key_reg_4 <= _aes_key_reg_T_3; // @[RxAESDecrypter.scala 74:48]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[RxAESDecrypter.scala 66:48]
      if (cur_round_counter < 8'hb) begin // @[RxAESDecrypter.scala 70:40]
        if (!(cur_round_counter == 8'h0)) begin // @[RxAESDecrypter.scala 71:45]
          if (4'h5 == cur_round_counter[3:0]) begin // @[RxAESDecrypter.scala 74:48]
            aes_key_reg_5 <= _aes_key_reg_T_3; // @[RxAESDecrypter.scala 74:48]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[RxAESDecrypter.scala 66:48]
      if (cur_round_counter < 8'hb) begin // @[RxAESDecrypter.scala 70:40]
        if (!(cur_round_counter == 8'h0)) begin // @[RxAESDecrypter.scala 71:45]
          if (4'h6 == cur_round_counter[3:0]) begin // @[RxAESDecrypter.scala 74:48]
            aes_key_reg_6 <= _aes_key_reg_T_3; // @[RxAESDecrypter.scala 74:48]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[RxAESDecrypter.scala 66:48]
      if (cur_round_counter < 8'hb) begin // @[RxAESDecrypter.scala 70:40]
        if (!(cur_round_counter == 8'h0)) begin // @[RxAESDecrypter.scala 71:45]
          if (4'h7 == cur_round_counter[3:0]) begin // @[RxAESDecrypter.scala 74:48]
            aes_key_reg_7 <= _aes_key_reg_T_3; // @[RxAESDecrypter.scala 74:48]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[RxAESDecrypter.scala 66:48]
      if (cur_round_counter < 8'hb) begin // @[RxAESDecrypter.scala 70:40]
        if (!(cur_round_counter == 8'h0)) begin // @[RxAESDecrypter.scala 71:45]
          if (4'h8 == cur_round_counter[3:0]) begin // @[RxAESDecrypter.scala 74:48]
            aes_key_reg_8 <= _aes_key_reg_T_3; // @[RxAESDecrypter.scala 74:48]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[RxAESDecrypter.scala 66:48]
      if (cur_round_counter < 8'hb) begin // @[RxAESDecrypter.scala 70:40]
        if (!(cur_round_counter == 8'h0)) begin // @[RxAESDecrypter.scala 71:45]
          if (4'h9 == cur_round_counter[3:0]) begin // @[RxAESDecrypter.scala 74:48]
            aes_key_reg_9 <= _aes_key_reg_T_3; // @[RxAESDecrypter.scala 74:48]
          end
        end
      end
    end
    if (!(~io_in_extern_config_c2h_match_op[8])) begin // @[RxAESDecrypter.scala 66:48]
      if (cur_round_counter < 8'hb) begin // @[RxAESDecrypter.scala 70:40]
        if (!(cur_round_counter == 8'h0)) begin // @[RxAESDecrypter.scala 71:45]
          if (4'ha == cur_round_counter[3:0]) begin // @[RxAESDecrypter.scala 74:48]
            aes_key_reg_10 <= _aes_key_reg_T_3; // @[RxAESDecrypter.scala 74:48]
          end
        end
      end
    end
    if (reset) begin // @[RxAESDecrypter.scala 39:36]
      cur_round_counter <= 8'h0; // @[RxAESDecrypter.scala 39:36]
    end else if (~io_in_extern_config_c2h_match_op[8]) begin // @[RxAESDecrypter.scala 66:48]
      cur_round_counter <= 8'h0; // @[RxAESDecrypter.scala 67:27]
    end else if (in_shake_hand) begin // @[RxAESDecrypter.scala 78:29]
      cur_round_counter <= {{4'd0}, _cur_round_counter_T_1}; // @[RxAESDecrypter.scala 79:31]
    end else if (cur_round_counter < 8'h33) begin // @[RxAESDecrypter.scala 80:46]
      cur_round_counter <= _cur_round_counter_T_3; // @[RxAESDecrypter.scala 81:31]
    end
    if (~io_in_extern_config_c2h_match_op[8]) begin // @[RxAESDecrypter.scala 66:48]
      tmp_tdata_reg <= _GEN_1039;
    end else if (cur_round_counter >= 8'hb & in_reg_used_reg) begin // @[RxAESDecrypter.scala 84:60]
      if (cur_round_counter == 8'hb) begin // @[RxAESDecrypter.scala 85:46]
        tmp_tdata_reg <= tmp_result_2; // @[RxAESDecrypter.scala 86:31]
      end else if (_T_5) begin // @[RxAESDecrypter.scala 87:50]
        tmp_tdata_reg <= _GEN_1153; // @[RxAESDecrypter.scala 88:31]
      end else begin
        tmp_tdata_reg <= _GEN_1039;
      end
    end else begin
      tmp_tdata_reg <= _GEN_1039;
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
  in_reg_used_reg = _RAND_1[0:0];
  _RAND_2 = {4{`RANDOM}};
  aes_key_reg_0 = _RAND_2[127:0];
  _RAND_3 = {4{`RANDOM}};
  aes_key_reg_1 = _RAND_3[127:0];
  _RAND_4 = {4{`RANDOM}};
  aes_key_reg_2 = _RAND_4[127:0];
  _RAND_5 = {4{`RANDOM}};
  aes_key_reg_3 = _RAND_5[127:0];
  _RAND_6 = {4{`RANDOM}};
  aes_key_reg_4 = _RAND_6[127:0];
  _RAND_7 = {4{`RANDOM}};
  aes_key_reg_5 = _RAND_7[127:0];
  _RAND_8 = {4{`RANDOM}};
  aes_key_reg_6 = _RAND_8[127:0];
  _RAND_9 = {4{`RANDOM}};
  aes_key_reg_7 = _RAND_9[127:0];
  _RAND_10 = {4{`RANDOM}};
  aes_key_reg_8 = _RAND_10[127:0];
  _RAND_11 = {4{`RANDOM}};
  aes_key_reg_9 = _RAND_11[127:0];
  _RAND_12 = {4{`RANDOM}};
  aes_key_reg_10 = _RAND_12[127:0];
  _RAND_13 = {1{`RANDOM}};
  cur_round_counter = _RAND_13[7:0];
  _RAND_14 = {16{`RANDOM}};
  tmp_tdata_reg = _RAND_14[511:0];
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
  input  [15:0]  io_in_extern_config_c2h_match_op,
  input  [31:0]  io_in_extern_config_c2h_match_arg_12,
  input  [31:0]  io_in_extern_config_c2h_match_arg_13,
  input  [31:0]  io_in_extern_config_c2h_match_arg_14,
  input  [31:0]  io_in_extern_config_c2h_match_arg_15,
  output [511:0] io_out_tdata,
  output         io_out_tvalid,
  input          io_out_tready,
  output         io_out_tlast,
  output         io_out_tuser,
  output [15:0]  io_out_rx_info_tlen,
  output [5:0]   io_out_rx_info_qid,
  output [31:0]  io_out_rx_info_ip_chksum,
  output [31:0]  io_out_rx_info_tcp_chksum,
  output [15:0]  io_out_extern_config_c2h_match_op
);
  wire  rx_aes_decrypter_clock; // @[RxPipeline.scala 34:37]
  wire  rx_aes_decrypter_reset; // @[RxPipeline.scala 34:37]
  wire [511:0] rx_aes_decrypter_io_in_tdata; // @[RxPipeline.scala 34:37]
  wire  rx_aes_decrypter_io_in_tvalid; // @[RxPipeline.scala 34:37]
  wire  rx_aes_decrypter_io_in_tready; // @[RxPipeline.scala 34:37]
  wire  rx_aes_decrypter_io_in_tlast; // @[RxPipeline.scala 34:37]
  wire  rx_aes_decrypter_io_in_tuser; // @[RxPipeline.scala 34:37]
  wire [15:0] rx_aes_decrypter_io_in_rx_info_tlen; // @[RxPipeline.scala 34:37]
  wire [15:0] rx_aes_decrypter_io_in_extern_config_c2h_match_op; // @[RxPipeline.scala 34:37]
  wire [31:0] rx_aes_decrypter_io_in_extern_config_c2h_match_arg_12; // @[RxPipeline.scala 34:37]
  wire [31:0] rx_aes_decrypter_io_in_extern_config_c2h_match_arg_13; // @[RxPipeline.scala 34:37]
  wire [31:0] rx_aes_decrypter_io_in_extern_config_c2h_match_arg_14; // @[RxPipeline.scala 34:37]
  wire [31:0] rx_aes_decrypter_io_in_extern_config_c2h_match_arg_15; // @[RxPipeline.scala 34:37]
  wire [511:0] rx_aes_decrypter_io_out_tdata; // @[RxPipeline.scala 34:37]
  wire  rx_aes_decrypter_io_out_tvalid; // @[RxPipeline.scala 34:37]
  wire  rx_aes_decrypter_io_out_tready; // @[RxPipeline.scala 34:37]
  wire  rx_aes_decrypter_io_out_tlast; // @[RxPipeline.scala 34:37]
  wire  rx_aes_decrypter_io_out_tuser; // @[RxPipeline.scala 34:37]
  wire [15:0] rx_aes_decrypter_io_out_rx_info_tlen; // @[RxPipeline.scala 34:37]
  wire [5:0] rx_aes_decrypter_io_out_rx_info_qid; // @[RxPipeline.scala 34:37]
  wire [31:0] rx_aes_decrypter_io_out_rx_info_ip_chksum; // @[RxPipeline.scala 34:37]
  wire [31:0] rx_aes_decrypter_io_out_rx_info_tcp_chksum; // @[RxPipeline.scala 34:37]
  wire [15:0] rx_aes_decrypter_io_out_extern_config_c2h_match_op; // @[RxPipeline.scala 34:37]
  RxAESDecrypter rx_aes_decrypter ( // @[RxPipeline.scala 34:37]
    .clock(rx_aes_decrypter_clock),
    .reset(rx_aes_decrypter_reset),
    .io_in_tdata(rx_aes_decrypter_io_in_tdata),
    .io_in_tvalid(rx_aes_decrypter_io_in_tvalid),
    .io_in_tready(rx_aes_decrypter_io_in_tready),
    .io_in_tlast(rx_aes_decrypter_io_in_tlast),
    .io_in_tuser(rx_aes_decrypter_io_in_tuser),
    .io_in_rx_info_tlen(rx_aes_decrypter_io_in_rx_info_tlen),
    .io_in_extern_config_c2h_match_op(rx_aes_decrypter_io_in_extern_config_c2h_match_op),
    .io_in_extern_config_c2h_match_arg_12(rx_aes_decrypter_io_in_extern_config_c2h_match_arg_12),
    .io_in_extern_config_c2h_match_arg_13(rx_aes_decrypter_io_in_extern_config_c2h_match_arg_13),
    .io_in_extern_config_c2h_match_arg_14(rx_aes_decrypter_io_in_extern_config_c2h_match_arg_14),
    .io_in_extern_config_c2h_match_arg_15(rx_aes_decrypter_io_in_extern_config_c2h_match_arg_15),
    .io_out_tdata(rx_aes_decrypter_io_out_tdata),
    .io_out_tvalid(rx_aes_decrypter_io_out_tvalid),
    .io_out_tready(rx_aes_decrypter_io_out_tready),
    .io_out_tlast(rx_aes_decrypter_io_out_tlast),
    .io_out_tuser(rx_aes_decrypter_io_out_tuser),
    .io_out_rx_info_tlen(rx_aes_decrypter_io_out_rx_info_tlen),
    .io_out_rx_info_qid(rx_aes_decrypter_io_out_rx_info_qid),
    .io_out_rx_info_ip_chksum(rx_aes_decrypter_io_out_rx_info_ip_chksum),
    .io_out_rx_info_tcp_chksum(rx_aes_decrypter_io_out_rx_info_tcp_chksum),
    .io_out_extern_config_c2h_match_op(rx_aes_decrypter_io_out_extern_config_c2h_match_op)
  );
  assign io_in_tready = rx_aes_decrypter_io_in_tready; // @[RxPipeline.scala 35:31]
  assign io_out_tdata = rx_aes_decrypter_io_out_tdata; // @[RxPipeline.scala 36:31]
  assign io_out_tvalid = rx_aes_decrypter_io_out_tvalid; // @[RxPipeline.scala 36:31]
  assign io_out_tlast = rx_aes_decrypter_io_out_tlast; // @[RxPipeline.scala 36:31]
  assign io_out_tuser = rx_aes_decrypter_io_out_tuser; // @[RxPipeline.scala 36:31]
  assign io_out_rx_info_tlen = rx_aes_decrypter_io_out_rx_info_tlen; // @[RxPipeline.scala 36:31]
  assign io_out_rx_info_qid = rx_aes_decrypter_io_out_rx_info_qid; // @[RxPipeline.scala 36:31]
  assign io_out_rx_info_ip_chksum = rx_aes_decrypter_io_out_rx_info_ip_chksum; // @[RxPipeline.scala 36:31]
  assign io_out_rx_info_tcp_chksum = rx_aes_decrypter_io_out_rx_info_tcp_chksum; // @[RxPipeline.scala 36:31]
  assign io_out_extern_config_c2h_match_op = rx_aes_decrypter_io_out_extern_config_c2h_match_op; // @[RxPipeline.scala 36:31]
  assign rx_aes_decrypter_clock = clock;
  assign rx_aes_decrypter_reset = reset;
  assign rx_aes_decrypter_io_in_tdata = io_in_tdata; // @[RxPipeline.scala 35:31]
  assign rx_aes_decrypter_io_in_tvalid = io_in_tvalid; // @[RxPipeline.scala 35:31]
  assign rx_aes_decrypter_io_in_tlast = io_in_tlast; // @[RxPipeline.scala 35:31]
  assign rx_aes_decrypter_io_in_tuser = io_in_tuser; // @[RxPipeline.scala 35:31]
  assign rx_aes_decrypter_io_in_rx_info_tlen = io_in_rx_info_tlen; // @[RxPipeline.scala 35:31]
  assign rx_aes_decrypter_io_in_extern_config_c2h_match_op = io_in_extern_config_c2h_match_op; // @[RxPipeline.scala 35:31]
  assign rx_aes_decrypter_io_in_extern_config_c2h_match_arg_12 = io_in_extern_config_c2h_match_arg_12; // @[RxPipeline.scala 35:31]
  assign rx_aes_decrypter_io_in_extern_config_c2h_match_arg_13 = io_in_extern_config_c2h_match_arg_13; // @[RxPipeline.scala 35:31]
  assign rx_aes_decrypter_io_in_extern_config_c2h_match_arg_14 = io_in_extern_config_c2h_match_arg_14; // @[RxPipeline.scala 35:31]
  assign rx_aes_decrypter_io_in_extern_config_c2h_match_arg_15 = io_in_extern_config_c2h_match_arg_15; // @[RxPipeline.scala 35:31]
  assign rx_aes_decrypter_io_out_tready = io_out_tready; // @[RxPipeline.scala 36:31]
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
  input  [15:0]  io_in_extern_config_c2h_match_op,
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
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
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
  wire  in_shake_hand = io_in_tvalid & io_in_tready; // @[RxBufferFifo.scala 44:36]
  reg  info_buf_reg_0_used; // @[RxBufferFifo.scala 48:29]
  reg  info_buf_reg_0_valid; // @[RxBufferFifo.scala 48:29]
  reg  info_buf_reg_0_pre_valid; // @[RxBufferFifo.scala 48:29]
  reg  info_buf_reg_0_chksum_offload; // @[RxBufferFifo.scala 48:29]
  reg [1:0] info_buf_reg_0_pkt_type; // @[RxBufferFifo.scala 48:29]
  reg [5:0] info_buf_reg_0_qid; // @[RxBufferFifo.scala 48:29]
  reg [15:0] info_buf_reg_0_len; // @[RxBufferFifo.scala 48:29]
  reg [15:0] info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 48:29]
  reg [15:0] info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 48:29]
  reg [5:0] info_buf_reg_0_burst; // @[RxBufferFifo.scala 48:29]
  reg  info_buf_reg_1_used; // @[RxBufferFifo.scala 48:29]
  reg  info_buf_reg_1_valid; // @[RxBufferFifo.scala 48:29]
  reg  info_buf_reg_1_pre_valid; // @[RxBufferFifo.scala 48:29]
  reg  info_buf_reg_1_chksum_offload; // @[RxBufferFifo.scala 48:29]
  reg [1:0] info_buf_reg_1_pkt_type; // @[RxBufferFifo.scala 48:29]
  reg [5:0] info_buf_reg_1_qid; // @[RxBufferFifo.scala 48:29]
  reg [15:0] info_buf_reg_1_len; // @[RxBufferFifo.scala 48:29]
  reg [15:0] info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 48:29]
  reg [15:0] info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 48:29]
  reg [5:0] info_buf_reg_1_burst; // @[RxBufferFifo.scala 48:29]
  reg [6:0] wr_index_reg; // @[RxBufferFifo.scala 53:29]
  reg [6:0] rd_index_reg; // @[RxBufferFifo.scala 54:29]
  reg [6:0] wr_pos_reg; // @[RxBufferFifo.scala 56:29]
  reg [6:0] rd_pos_reg; // @[RxBufferFifo.scala 57:29]
  wire  buf_full = info_buf_reg_0_valid & info_buf_reg_1_valid; // @[RxBufferFifo.scala 62:40]
  reg [31:0] pack_counter; // @[RxBufferFifo.scala 65:29]
  reg [31:0] err_counter; // @[RxBufferFifo.scala 66:28]
  reg [31:0] wrong_chksum_counter; // @[RxBufferFifo.scala 67:37]
  reg  is_overflowed; // @[RxBufferFifo.scala 72:30]
  wire [15:0] _mid_ip_chksum_T_3 = io_in_rx_info_ip_chksum[31:16] + io_in_rx_info_ip_chksum[15:0]; // @[Misc.scala 14:14]
  wire [15:0] _mid_tcp_chksum_T_3 = io_in_rx_info_tcp_chksum[31:16] + io_in_rx_info_tcp_chksum[15:0]; // @[Misc.scala 14:14]
  wire [31:0] mid_ip_chksum = {{16'd0}, _mid_ip_chksum_T_3}; // @[RxBufferFifo.scala 77:27 78:17]
  wire [15:0] _end_ip_chksum_T_3 = mid_ip_chksum[31:16] + mid_ip_chksum[15:0]; // @[Misc.scala 14:14]
  wire [15:0] end_ip_chksum = ~_end_ip_chksum_T_3; // @[RxBufferFifo.scala 83:20]
  wire [31:0] mid_tcp_chksum = {{16'd0}, _mid_tcp_chksum_T_3}; // @[RxBufferFifo.scala 79:28 80:18]
  wire [15:0] _end_tcp_chksum_T_3 = mid_tcp_chksum[31:16] + mid_tcp_chksum[15:0]; // @[Misc.scala 14:14]
  wire [15:0] end_tcp_chksum = ~_end_tcp_chksum_T_3; // @[RxBufferFifo.scala 85:21]
  wire [31:0] _pack_counter_T_1 = pack_counter + 32'h1; // @[RxBufferFifo.scala 93:36]
  wire [5:0] _GEN_2 = wr_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[RxBufferFifo.scala 95:{44,44}]
  wire [11:0] _GEN_379 = {wr_index_reg, 5'h0}; // @[RxBufferFifo.scala 104:38]
  wire [13:0] _wr_pos_reg_T = {{2'd0}, _GEN_379}; // @[RxBufferFifo.scala 104:38]
  wire  _GEN_3 = ~io_in_tlast | is_overflowed; // @[RxBufferFifo.scala 97:27 98:23 72:30]
  wire [13:0] _GEN_4 = ~io_in_tlast ? {{7'd0}, wr_pos_reg} : _wr_pos_reg_T; // @[RxBufferFifo.scala 104:22 97:27 56:29]
  wire [31:0] _err_counter_T_1 = err_counter + 32'h1; // @[RxBufferFifo.scala 107:34]
  wire [5:0] _GEN_5 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire [5:0] _GEN_6 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire [15:0] _GEN_7 = ~wr_index_reg[0] ? 16'h0 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire [15:0] _GEN_8 = wr_index_reg[0] ? 16'h0 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire [15:0] _GEN_9 = ~wr_index_reg[0] ? 16'h0 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire [15:0] _GEN_10 = wr_index_reg[0] ? 16'h0 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire [15:0] _GEN_11 = ~wr_index_reg[0] ? 16'h0 : info_buf_reg_0_len; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire [15:0] _GEN_12 = wr_index_reg[0] ? 16'h0 : info_buf_reg_1_len; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire [5:0] _GEN_13 = ~wr_index_reg[0] ? 6'h0 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire [5:0] _GEN_14 = wr_index_reg[0] ? 6'h0 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire [1:0] _GEN_15 = ~wr_index_reg[0] ? 2'h0 : info_buf_reg_0_pkt_type; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire [1:0] _GEN_16 = wr_index_reg[0] ? 2'h0 : info_buf_reg_1_pkt_type; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire  _GEN_17 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_chksum_offload; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire  _GEN_18 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_chksum_offload; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire  _GEN_19 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_pre_valid; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire  _GEN_20 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_pre_valid; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire  _GEN_21 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire  _GEN_22 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire  _GEN_23 = ~wr_index_reg[0] ? 1'h0 : info_buf_reg_0_used; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire  _GEN_24 = wr_index_reg[0] ? 1'h0 : info_buf_reg_1_used; // @[RxBufferFifo.scala 108:{34,34} 48:29]
  wire  _T_6 = ~is_overflowed; // @[RxBufferFifo.scala 116:13]
  wire  _GEN_46 = wr_index_reg[0] ? info_buf_reg_1_used : info_buf_reg_0_used; // @[RxBufferFifo.scala 118:{15,15}]
  wire  _GEN_381 = ~wr_index_reg[0]; // @[RxBufferFifo.scala 119:{43,43} 48:29]
  wire  _GEN_47 = ~wr_index_reg[0] | info_buf_reg_0_used; // @[RxBufferFifo.scala 119:{43,43} 48:29]
  wire  _GEN_48 = wr_index_reg[0] | info_buf_reg_1_used; // @[RxBufferFifo.scala 119:{43,43} 48:29]
  wire [15:0] _info_buf_reg_pkt_type_T_3 = {io_in_tdata[103:96],io_in_tdata[111:104]}; // @[Cat.scala 31:58]
  wire  _info_buf_reg_pkt_type_T_4 = _info_buf_reg_pkt_type_T_3 == 16'h800; // @[RxBufferFifo.scala 120:92]
  wire  _info_buf_reg_pkt_type_T_7 = _info_buf_reg_pkt_type_T_3 == 16'h800 & io_in_tdata[191:184] == 8'h6; // @[RxBufferFifo.scala 120:108]
  wire [1:0] _info_buf_reg_pkt_type_T_13 = {_info_buf_reg_pkt_type_T_7,_info_buf_reg_pkt_type_T_4}; // @[Cat.scala 31:58]
  wire [1:0] _GEN_49 = ~wr_index_reg[0] ? _info_buf_reg_pkt_type_T_13 : info_buf_reg_0_pkt_type; // @[RxBufferFifo.scala 120:{47,47} 48:29]
  wire [1:0] _GEN_50 = wr_index_reg[0] ? _info_buf_reg_pkt_type_T_13 : info_buf_reg_1_pkt_type; // @[RxBufferFifo.scala 120:{47,47} 48:29]
  wire  _GEN_51 = ~wr_index_reg[0] ? io_in_extern_config_c2h_match_op[6] : info_buf_reg_0_chksum_offload; // @[RxBufferFifo.scala 122:{53,53} 48:29]
  wire  _GEN_52 = wr_index_reg[0] ? io_in_extern_config_c2h_match_op[6] : info_buf_reg_1_chksum_offload; // @[RxBufferFifo.scala 122:{53,53} 48:29]
  wire  _GEN_53 = ~_GEN_46 ? _GEN_47 : info_buf_reg_0_used; // @[RxBufferFifo.scala 118:49 48:29]
  wire  _GEN_54 = ~_GEN_46 ? _GEN_48 : info_buf_reg_1_used; // @[RxBufferFifo.scala 118:49 48:29]
  wire [1:0] _GEN_55 = ~_GEN_46 ? _GEN_49 : info_buf_reg_0_pkt_type; // @[RxBufferFifo.scala 118:49 48:29]
  wire [1:0] _GEN_56 = ~_GEN_46 ? _GEN_50 : info_buf_reg_1_pkt_type; // @[RxBufferFifo.scala 118:49 48:29]
  wire  _GEN_57 = ~_GEN_46 ? _GEN_51 : info_buf_reg_0_chksum_offload; // @[RxBufferFifo.scala 118:49 48:29]
  wire  _GEN_58 = ~_GEN_46 ? _GEN_52 : info_buf_reg_1_chksum_offload; // @[RxBufferFifo.scala 118:49 48:29]
  wire [5:0] _info_buf_reg_burst_T_2 = _GEN_2 + 6'h1; // @[RxBufferFifo.scala 125:78]
  wire [5:0] _GEN_61 = ~wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 125:{42,42} 48:29]
  wire [5:0] _GEN_62 = wr_index_reg[0] ? _info_buf_reg_burst_T_2 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 125:{42,42} 48:29]
  wire  _GEN_65 = _GEN_381 | info_buf_reg_0_pre_valid; // @[RxBufferFifo.scala 128:{50,50} 48:29]
  wire  _GEN_66 = wr_index_reg[0] | info_buf_reg_1_pre_valid; // @[RxBufferFifo.scala 128:{50,50} 48:29]
  wire  _GEN_67 = _GEN_381 | info_buf_reg_0_valid; // @[RxBufferFifo.scala 130:{46,46} 48:29]
  wire  _GEN_68 = wr_index_reg[0] | info_buf_reg_1_valid; // @[RxBufferFifo.scala 130:{46,46} 48:29]
  wire  _GEN_69 = _GEN_2 == 6'h0 ? _GEN_65 : info_buf_reg_0_pre_valid; // @[RxBufferFifo.scala 127:59 48:29]
  wire  _GEN_70 = _GEN_2 == 6'h0 ? _GEN_66 : info_buf_reg_1_pre_valid; // @[RxBufferFifo.scala 127:59 48:29]
  wire  _GEN_71 = _GEN_2 == 6'h0 ? info_buf_reg_0_valid : _GEN_67; // @[RxBufferFifo.scala 127:59 48:29]
  wire  _GEN_72 = _GEN_2 == 6'h0 ? info_buf_reg_1_valid : _GEN_68; // @[RxBufferFifo.scala 127:59 48:29]
  wire [15:0] _GEN_73 = ~wr_index_reg[0] ? end_ip_chksum : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 133:{48,48} 48:29]
  wire [15:0] _GEN_74 = wr_index_reg[0] ? end_ip_chksum : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 133:{48,48} 48:29]
  wire [15:0] _GEN_75 = ~wr_index_reg[0] ? end_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 134:{49,49} 48:29]
  wire [15:0] _GEN_76 = wr_index_reg[0] ? end_tcp_chksum : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 134:{49,49} 48:29]
  wire [15:0] _GEN_77 = ~wr_index_reg[0] ? io_in_rx_info_tlen : info_buf_reg_0_len; // @[RxBufferFifo.scala 135:{42,42} 48:29]
  wire [15:0] _GEN_78 = wr_index_reg[0] ? io_in_rx_info_tlen : info_buf_reg_1_len; // @[RxBufferFifo.scala 135:{42,42} 48:29]
  wire [5:0] _GEN_79 = ~wr_index_reg[0] ? io_in_rx_info_qid : info_buf_reg_0_qid; // @[RxBufferFifo.scala 136:{42,42} 48:29]
  wire [5:0] _GEN_80 = wr_index_reg[0] ? io_in_rx_info_qid : info_buf_reg_1_qid; // @[RxBufferFifo.scala 136:{42,42} 48:29]
  wire [6:0] _wr_index_reg_T_1 = wr_index_reg + 7'h1; // @[RxBufferFifo.scala 39:12]
  wire [6:0] _wr_index_reg_T_2 = _wr_index_reg_T_1 & 7'h1; // @[RxBufferFifo.scala 39:19]
  wire [11:0] _GEN_384 = {_wr_index_reg_T_2, 5'h0}; // @[RxBufferFifo.scala 138:49]
  wire [13:0] _wr_pos_reg_T_5 = {{2'd0}, _GEN_384}; // @[RxBufferFifo.scala 138:49]
  wire [6:0] _wr_pos_reg_T_7 = wr_pos_reg + 7'h1; // @[RxBufferFifo.scala 140:36]
  wire  _GEN_81 = io_in_tlast ? _GEN_69 : info_buf_reg_0_pre_valid; // @[RxBufferFifo.scala 126:28 48:29]
  wire  _GEN_82 = io_in_tlast ? _GEN_70 : info_buf_reg_1_pre_valid; // @[RxBufferFifo.scala 126:28 48:29]
  wire  _GEN_83 = io_in_tlast ? _GEN_71 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 126:28 48:29]
  wire  _GEN_84 = io_in_tlast ? _GEN_72 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 126:28 48:29]
  wire [15:0] _GEN_85 = io_in_tlast ? _GEN_73 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 126:28 48:29]
  wire [15:0] _GEN_86 = io_in_tlast ? _GEN_74 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 126:28 48:29]
  wire [15:0] _GEN_87 = io_in_tlast ? _GEN_75 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 126:28 48:29]
  wire [15:0] _GEN_88 = io_in_tlast ? _GEN_76 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 126:28 48:29]
  wire [15:0] _GEN_89 = io_in_tlast ? _GEN_77 : info_buf_reg_0_len; // @[RxBufferFifo.scala 126:28 48:29]
  wire [15:0] _GEN_90 = io_in_tlast ? _GEN_78 : info_buf_reg_1_len; // @[RxBufferFifo.scala 126:28 48:29]
  wire [5:0] _GEN_91 = io_in_tlast ? _GEN_79 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 126:28 48:29]
  wire [5:0] _GEN_92 = io_in_tlast ? _GEN_80 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 126:28 48:29]
  wire [6:0] _GEN_93 = io_in_tlast ? _wr_index_reg_T_2 : wr_index_reg; // @[RxBufferFifo.scala 126:28 137:24 53:29]
  wire [13:0] _GEN_94 = io_in_tlast ? _wr_pos_reg_T_5 : {{7'd0}, _wr_pos_reg_T_7}; // @[RxBufferFifo.scala 126:28 138:22 140:22]
  wire  _GEN_95 = io_in_tlast ? 1'h0 : is_overflowed; // @[RxBufferFifo.scala 142:32 144:25 72:30]
  wire [13:0] _GEN_96 = io_in_tlast ? _wr_pos_reg_T : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 142:32 145:22 56:29]
  wire  _GEN_97 = ~is_overflowed ? _GEN_53 : info_buf_reg_0_used; // @[RxBufferFifo.scala 116:28 48:29]
  wire  _GEN_98 = ~is_overflowed ? _GEN_54 : info_buf_reg_1_used; // @[RxBufferFifo.scala 116:28 48:29]
  wire [1:0] _GEN_99 = ~is_overflowed ? _GEN_55 : info_buf_reg_0_pkt_type; // @[RxBufferFifo.scala 116:28 48:29]
  wire [1:0] _GEN_100 = ~is_overflowed ? _GEN_56 : info_buf_reg_1_pkt_type; // @[RxBufferFifo.scala 116:28 48:29]
  wire  _GEN_101 = ~is_overflowed ? _GEN_57 : info_buf_reg_0_chksum_offload; // @[RxBufferFifo.scala 116:28 48:29]
  wire  _GEN_102 = ~is_overflowed ? _GEN_58 : info_buf_reg_1_chksum_offload; // @[RxBufferFifo.scala 116:28 48:29]
  wire [5:0] _GEN_108 = ~is_overflowed ? _GEN_61 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 116:28 48:29]
  wire [5:0] _GEN_109 = ~is_overflowed ? _GEN_62 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 116:28 48:29]
  wire  _GEN_110 = ~is_overflowed ? _GEN_81 : info_buf_reg_0_pre_valid; // @[RxBufferFifo.scala 116:28 48:29]
  wire  _GEN_111 = ~is_overflowed ? _GEN_82 : info_buf_reg_1_pre_valid; // @[RxBufferFifo.scala 116:28 48:29]
  wire  _GEN_112 = ~is_overflowed ? _GEN_83 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 116:28 48:29]
  wire  _GEN_113 = ~is_overflowed ? _GEN_84 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 116:28 48:29]
  wire [15:0] _GEN_114 = ~is_overflowed ? _GEN_85 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 116:28 48:29]
  wire [15:0] _GEN_115 = ~is_overflowed ? _GEN_86 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 116:28 48:29]
  wire [15:0] _GEN_116 = ~is_overflowed ? _GEN_87 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 116:28 48:29]
  wire [15:0] _GEN_117 = ~is_overflowed ? _GEN_88 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 116:28 48:29]
  wire [15:0] _GEN_118 = ~is_overflowed ? _GEN_89 : info_buf_reg_0_len; // @[RxBufferFifo.scala 116:28 48:29]
  wire [15:0] _GEN_119 = ~is_overflowed ? _GEN_90 : info_buf_reg_1_len; // @[RxBufferFifo.scala 116:28 48:29]
  wire [5:0] _GEN_120 = ~is_overflowed ? _GEN_91 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 116:28 48:29]
  wire [5:0] _GEN_121 = ~is_overflowed ? _GEN_92 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 116:28 48:29]
  wire [6:0] _GEN_122 = ~is_overflowed ? _GEN_93 : wr_index_reg; // @[RxBufferFifo.scala 116:28 53:29]
  wire [13:0] _GEN_123 = ~is_overflowed ? _GEN_94 : _GEN_96; // @[RxBufferFifo.scala 116:28]
  wire  _GEN_124 = ~is_overflowed ? is_overflowed : _GEN_95; // @[RxBufferFifo.scala 116:28 72:30]
  wire  _GEN_125 = io_in_tvalid ? _GEN_97 : info_buf_reg_0_used; // @[RxBufferFifo.scala 114:29 48:29]
  wire  _GEN_126 = io_in_tvalid ? _GEN_98 : info_buf_reg_1_used; // @[RxBufferFifo.scala 114:29 48:29]
  wire [1:0] _GEN_127 = io_in_tvalid ? _GEN_99 : info_buf_reg_0_pkt_type; // @[RxBufferFifo.scala 114:29 48:29]
  wire [1:0] _GEN_128 = io_in_tvalid ? _GEN_100 : info_buf_reg_1_pkt_type; // @[RxBufferFifo.scala 114:29 48:29]
  wire  _GEN_129 = io_in_tvalid ? _GEN_101 : info_buf_reg_0_chksum_offload; // @[RxBufferFifo.scala 114:29 48:29]
  wire  _GEN_130 = io_in_tvalid ? _GEN_102 : info_buf_reg_1_chksum_offload; // @[RxBufferFifo.scala 114:29 48:29]
  wire  _GEN_133 = io_in_tvalid & _T_6; // @[RxBufferFifo.scala 114:29 45:33]
  wire [5:0] _GEN_136 = io_in_tvalid ? _GEN_108 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 114:29 48:29]
  wire [5:0] _GEN_137 = io_in_tvalid ? _GEN_109 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 114:29 48:29]
  wire  _GEN_138 = io_in_tvalid ? _GEN_110 : info_buf_reg_0_pre_valid; // @[RxBufferFifo.scala 114:29 48:29]
  wire  _GEN_139 = io_in_tvalid ? _GEN_111 : info_buf_reg_1_pre_valid; // @[RxBufferFifo.scala 114:29 48:29]
  wire  _GEN_140 = io_in_tvalid ? _GEN_112 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 114:29 48:29]
  wire  _GEN_141 = io_in_tvalid ? _GEN_113 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 114:29 48:29]
  wire [15:0] _GEN_142 = io_in_tvalid ? _GEN_114 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 114:29 48:29]
  wire [15:0] _GEN_143 = io_in_tvalid ? _GEN_115 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 114:29 48:29]
  wire [15:0] _GEN_144 = io_in_tvalid ? _GEN_116 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 114:29 48:29]
  wire [15:0] _GEN_145 = io_in_tvalid ? _GEN_117 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 114:29 48:29]
  wire [15:0] _GEN_146 = io_in_tvalid ? _GEN_118 : info_buf_reg_0_len; // @[RxBufferFifo.scala 114:29 48:29]
  wire [15:0] _GEN_147 = io_in_tvalid ? _GEN_119 : info_buf_reg_1_len; // @[RxBufferFifo.scala 114:29 48:29]
  wire [5:0] _GEN_148 = io_in_tvalid ? _GEN_120 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 114:29 48:29]
  wire [5:0] _GEN_149 = io_in_tvalid ? _GEN_121 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 114:29 48:29]
  wire [6:0] _GEN_150 = io_in_tvalid ? _GEN_122 : wr_index_reg; // @[RxBufferFifo.scala 114:29 53:29]
  wire [13:0] _GEN_151 = io_in_tvalid ? _GEN_123 : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 114:29 56:29]
  wire  _GEN_152 = io_in_tvalid ? _GEN_124 : is_overflowed; // @[RxBufferFifo.scala 114:29 72:30]
  wire [31:0] _GEN_153 = io_in_tlast & io_in_tuser ? _err_counter_T_1 : err_counter; // @[RxBufferFifo.scala 110:45 111:19 66:28]
  wire [13:0] _GEN_154 = io_in_tlast & io_in_tuser ? _wr_pos_reg_T : _GEN_151; // @[RxBufferFifo.scala 110:45 112:18]
  wire [5:0] _GEN_155 = io_in_tlast & io_in_tuser ? _GEN_5 : _GEN_136; // @[RxBufferFifo.scala 110:45]
  wire [5:0] _GEN_156 = io_in_tlast & io_in_tuser ? _GEN_6 : _GEN_137; // @[RxBufferFifo.scala 110:45]
  wire [15:0] _GEN_157 = io_in_tlast & io_in_tuser ? _GEN_7 : _GEN_144; // @[RxBufferFifo.scala 110:45]
  wire [15:0] _GEN_158 = io_in_tlast & io_in_tuser ? _GEN_8 : _GEN_145; // @[RxBufferFifo.scala 110:45]
  wire [15:0] _GEN_159 = io_in_tlast & io_in_tuser ? _GEN_9 : _GEN_142; // @[RxBufferFifo.scala 110:45]
  wire [15:0] _GEN_160 = io_in_tlast & io_in_tuser ? _GEN_10 : _GEN_143; // @[RxBufferFifo.scala 110:45]
  wire [15:0] _GEN_161 = io_in_tlast & io_in_tuser ? _GEN_11 : _GEN_146; // @[RxBufferFifo.scala 110:45]
  wire [15:0] _GEN_162 = io_in_tlast & io_in_tuser ? _GEN_12 : _GEN_147; // @[RxBufferFifo.scala 110:45]
  wire [5:0] _GEN_163 = io_in_tlast & io_in_tuser ? _GEN_13 : _GEN_148; // @[RxBufferFifo.scala 110:45]
  wire [5:0] _GEN_164 = io_in_tlast & io_in_tuser ? _GEN_14 : _GEN_149; // @[RxBufferFifo.scala 110:45]
  wire [1:0] _GEN_165 = io_in_tlast & io_in_tuser ? _GEN_15 : _GEN_127; // @[RxBufferFifo.scala 110:45]
  wire [1:0] _GEN_166 = io_in_tlast & io_in_tuser ? _GEN_16 : _GEN_128; // @[RxBufferFifo.scala 110:45]
  wire  _GEN_167 = io_in_tlast & io_in_tuser ? _GEN_17 : _GEN_129; // @[RxBufferFifo.scala 110:45]
  wire  _GEN_168 = io_in_tlast & io_in_tuser ? _GEN_18 : _GEN_130; // @[RxBufferFifo.scala 110:45]
  wire  _GEN_169 = io_in_tlast & io_in_tuser ? _GEN_19 : _GEN_138; // @[RxBufferFifo.scala 110:45]
  wire  _GEN_170 = io_in_tlast & io_in_tuser ? _GEN_20 : _GEN_139; // @[RxBufferFifo.scala 110:45]
  wire  _GEN_171 = io_in_tlast & io_in_tuser ? _GEN_21 : _GEN_140; // @[RxBufferFifo.scala 110:45]
  wire  _GEN_172 = io_in_tlast & io_in_tuser ? _GEN_22 : _GEN_141; // @[RxBufferFifo.scala 110:45]
  wire  _GEN_173 = io_in_tlast & io_in_tuser ? _GEN_23 : _GEN_125; // @[RxBufferFifo.scala 110:45]
  wire  _GEN_174 = io_in_tlast & io_in_tuser ? _GEN_24 : _GEN_126; // @[RxBufferFifo.scala 110:45]
  wire  _GEN_177 = io_in_tlast & io_in_tuser ? 1'h0 : _GEN_133; // @[RxBufferFifo.scala 110:45 45:33]
  wire [6:0] _GEN_180 = io_in_tlast & io_in_tuser ? wr_index_reg : _GEN_150; // @[RxBufferFifo.scala 110:45 53:29]
  wire  _GEN_181 = io_in_tlast & io_in_tuser ? is_overflowed : _GEN_152; // @[RxBufferFifo.scala 110:45 72:30]
  wire [13:0] _GEN_183 = _GEN_2 == 6'h20 ? _GEN_4 : _GEN_154; // @[RxBufferFifo.scala 95:61]
  wire [5:0] _GEN_185 = _GEN_2 == 6'h20 ? _GEN_5 : _GEN_155; // @[RxBufferFifo.scala 95:61]
  wire [5:0] _GEN_186 = _GEN_2 == 6'h20 ? _GEN_6 : _GEN_156; // @[RxBufferFifo.scala 95:61]
  wire [15:0] _GEN_187 = _GEN_2 == 6'h20 ? _GEN_7 : _GEN_157; // @[RxBufferFifo.scala 95:61]
  wire [15:0] _GEN_188 = _GEN_2 == 6'h20 ? _GEN_8 : _GEN_158; // @[RxBufferFifo.scala 95:61]
  wire [15:0] _GEN_189 = _GEN_2 == 6'h20 ? _GEN_9 : _GEN_159; // @[RxBufferFifo.scala 95:61]
  wire [15:0] _GEN_190 = _GEN_2 == 6'h20 ? _GEN_10 : _GEN_160; // @[RxBufferFifo.scala 95:61]
  wire [15:0] _GEN_191 = _GEN_2 == 6'h20 ? _GEN_11 : _GEN_161; // @[RxBufferFifo.scala 95:61]
  wire [15:0] _GEN_192 = _GEN_2 == 6'h20 ? _GEN_12 : _GEN_162; // @[RxBufferFifo.scala 95:61]
  wire [5:0] _GEN_193 = _GEN_2 == 6'h20 ? _GEN_13 : _GEN_163; // @[RxBufferFifo.scala 95:61]
  wire [5:0] _GEN_194 = _GEN_2 == 6'h20 ? _GEN_14 : _GEN_164; // @[RxBufferFifo.scala 95:61]
  wire [1:0] _GEN_195 = _GEN_2 == 6'h20 ? _GEN_15 : _GEN_165; // @[RxBufferFifo.scala 95:61]
  wire [1:0] _GEN_196 = _GEN_2 == 6'h20 ? _GEN_16 : _GEN_166; // @[RxBufferFifo.scala 95:61]
  wire  _GEN_197 = _GEN_2 == 6'h20 ? _GEN_17 : _GEN_167; // @[RxBufferFifo.scala 95:61]
  wire  _GEN_198 = _GEN_2 == 6'h20 ? _GEN_18 : _GEN_168; // @[RxBufferFifo.scala 95:61]
  wire  _GEN_199 = _GEN_2 == 6'h20 ? _GEN_19 : _GEN_169; // @[RxBufferFifo.scala 95:61]
  wire  _GEN_200 = _GEN_2 == 6'h20 ? _GEN_20 : _GEN_170; // @[RxBufferFifo.scala 95:61]
  wire  _GEN_201 = _GEN_2 == 6'h20 ? _GEN_21 : _GEN_171; // @[RxBufferFifo.scala 95:61]
  wire  _GEN_202 = _GEN_2 == 6'h20 ? _GEN_22 : _GEN_172; // @[RxBufferFifo.scala 95:61]
  wire  _GEN_203 = _GEN_2 == 6'h20 ? _GEN_23 : _GEN_173; // @[RxBufferFifo.scala 95:61]
  wire  _GEN_204 = _GEN_2 == 6'h20 ? _GEN_24 : _GEN_174; // @[RxBufferFifo.scala 95:61]
  wire  _GEN_207 = _GEN_2 == 6'h20 ? 1'h0 : _GEN_177; // @[RxBufferFifo.scala 45:33 95:61]
  wire [13:0] _GEN_213 = in_shake_hand ? _GEN_183 : {{7'd0}, wr_pos_reg}; // @[RxBufferFifo.scala 56:29 91:29]
  wire [5:0] _GEN_215 = in_shake_hand ? _GEN_185 : info_buf_reg_0_burst; // @[RxBufferFifo.scala 48:29 91:29]
  wire [5:0] _GEN_216 = in_shake_hand ? _GEN_186 : info_buf_reg_1_burst; // @[RxBufferFifo.scala 48:29 91:29]
  wire [15:0] _GEN_217 = in_shake_hand ? _GEN_187 : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 48:29 91:29]
  wire [15:0] _GEN_218 = in_shake_hand ? _GEN_188 : info_buf_reg_1_tcp_chksum; // @[RxBufferFifo.scala 48:29 91:29]
  wire [15:0] _GEN_219 = in_shake_hand ? _GEN_189 : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 48:29 91:29]
  wire [15:0] _GEN_220 = in_shake_hand ? _GEN_190 : info_buf_reg_1_ip_chksum; // @[RxBufferFifo.scala 48:29 91:29]
  wire [15:0] _GEN_221 = in_shake_hand ? _GEN_191 : info_buf_reg_0_len; // @[RxBufferFifo.scala 48:29 91:29]
  wire [15:0] _GEN_222 = in_shake_hand ? _GEN_192 : info_buf_reg_1_len; // @[RxBufferFifo.scala 48:29 91:29]
  wire [5:0] _GEN_223 = in_shake_hand ? _GEN_193 : info_buf_reg_0_qid; // @[RxBufferFifo.scala 48:29 91:29]
  wire [5:0] _GEN_224 = in_shake_hand ? _GEN_194 : info_buf_reg_1_qid; // @[RxBufferFifo.scala 48:29 91:29]
  wire [1:0] _GEN_225 = in_shake_hand ? _GEN_195 : info_buf_reg_0_pkt_type; // @[RxBufferFifo.scala 48:29 91:29]
  wire [1:0] _GEN_226 = in_shake_hand ? _GEN_196 : info_buf_reg_1_pkt_type; // @[RxBufferFifo.scala 48:29 91:29]
  wire  _GEN_227 = in_shake_hand ? _GEN_197 : info_buf_reg_0_chksum_offload; // @[RxBufferFifo.scala 48:29 91:29]
  wire  _GEN_228 = in_shake_hand ? _GEN_198 : info_buf_reg_1_chksum_offload; // @[RxBufferFifo.scala 48:29 91:29]
  wire  _GEN_229 = in_shake_hand ? _GEN_199 : info_buf_reg_0_pre_valid; // @[RxBufferFifo.scala 48:29 91:29]
  wire  _GEN_230 = in_shake_hand ? _GEN_200 : info_buf_reg_1_pre_valid; // @[RxBufferFifo.scala 48:29 91:29]
  wire  _GEN_231 = in_shake_hand ? _GEN_201 : info_buf_reg_0_valid; // @[RxBufferFifo.scala 48:29 91:29]
  wire  _GEN_232 = in_shake_hand ? _GEN_202 : info_buf_reg_1_valid; // @[RxBufferFifo.scala 48:29 91:29]
  wire  _GEN_233 = in_shake_hand ? _GEN_203 : info_buf_reg_0_used; // @[RxBufferFifo.scala 48:29 91:29]
  wire  _GEN_234 = in_shake_hand ? _GEN_204 : info_buf_reg_1_used; // @[RxBufferFifo.scala 48:29 91:29]
  wire  _GEN_237 = in_shake_hand & _GEN_207; // @[RxBufferFifo.scala 91:29 45:33]
  wire [13:0] _GEN_244 = io_reset_counter ? {{7'd0}, wr_pos_reg} : _GEN_213; // @[RxBufferFifo.scala 87:26 56:29]
  wire [5:0] _GEN_245 = io_reset_counter ? info_buf_reg_0_burst : _GEN_215; // @[RxBufferFifo.scala 87:26 48:29]
  wire [5:0] _GEN_246 = io_reset_counter ? info_buf_reg_1_burst : _GEN_216; // @[RxBufferFifo.scala 87:26 48:29]
  wire [15:0] _GEN_247 = io_reset_counter ? info_buf_reg_0_tcp_chksum : _GEN_217; // @[RxBufferFifo.scala 87:26 48:29]
  wire [15:0] _GEN_248 = io_reset_counter ? info_buf_reg_1_tcp_chksum : _GEN_218; // @[RxBufferFifo.scala 87:26 48:29]
  wire [15:0] _GEN_249 = io_reset_counter ? info_buf_reg_0_ip_chksum : _GEN_219; // @[RxBufferFifo.scala 87:26 48:29]
  wire [15:0] _GEN_250 = io_reset_counter ? info_buf_reg_1_ip_chksum : _GEN_220; // @[RxBufferFifo.scala 87:26 48:29]
  wire [15:0] _GEN_251 = io_reset_counter ? info_buf_reg_0_len : _GEN_221; // @[RxBufferFifo.scala 87:26 48:29]
  wire [15:0] _GEN_252 = io_reset_counter ? info_buf_reg_1_len : _GEN_222; // @[RxBufferFifo.scala 87:26 48:29]
  wire [5:0] _GEN_253 = io_reset_counter ? info_buf_reg_0_qid : _GEN_223; // @[RxBufferFifo.scala 87:26 48:29]
  wire [5:0] _GEN_254 = io_reset_counter ? info_buf_reg_1_qid : _GEN_224; // @[RxBufferFifo.scala 87:26 48:29]
  wire [1:0] _GEN_255 = io_reset_counter ? info_buf_reg_0_pkt_type : _GEN_225; // @[RxBufferFifo.scala 87:26 48:29]
  wire [1:0] _GEN_256 = io_reset_counter ? info_buf_reg_1_pkt_type : _GEN_226; // @[RxBufferFifo.scala 87:26 48:29]
  wire  _GEN_257 = io_reset_counter ? info_buf_reg_0_chksum_offload : _GEN_227; // @[RxBufferFifo.scala 87:26 48:29]
  wire  _GEN_258 = io_reset_counter ? info_buf_reg_1_chksum_offload : _GEN_228; // @[RxBufferFifo.scala 87:26 48:29]
  wire  _GEN_259 = io_reset_counter ? info_buf_reg_0_pre_valid : _GEN_229; // @[RxBufferFifo.scala 87:26 48:29]
  wire  _GEN_260 = io_reset_counter ? info_buf_reg_1_pre_valid : _GEN_230; // @[RxBufferFifo.scala 87:26 48:29]
  wire  _GEN_261 = io_reset_counter ? info_buf_reg_0_valid : _GEN_231; // @[RxBufferFifo.scala 87:26 48:29]
  wire  _GEN_262 = io_reset_counter ? info_buf_reg_1_valid : _GEN_232; // @[RxBufferFifo.scala 87:26 48:29]
  wire  _GEN_263 = io_reset_counter ? info_buf_reg_0_used : _GEN_233; // @[RxBufferFifo.scala 87:26 48:29]
  wire  _GEN_264 = io_reset_counter ? info_buf_reg_1_used : _GEN_234; // @[RxBufferFifo.scala 87:26 48:29]
  wire  _GEN_272 = rd_index_reg[0] ? info_buf_reg_1_valid : info_buf_reg_0_valid; // @[RxBufferFifo.scala 151:{38,38}]
  wire  out_shake_hand = io_out_tready & _GEN_272; // @[RxBufferFifo.scala 151:38]
  wire [5:0] _GEN_278 = rd_index_reg[0] ? info_buf_reg_1_burst : info_buf_reg_0_burst; // @[RxBufferFifo.scala 162:{89,89}]
  wire  _io_out_tlast_T_2 = _GEN_278 == 6'h1; // @[RxBufferFifo.scala 162:89]
  wire  _GEN_282 = rd_index_reg[0] ? info_buf_reg_1_chksum_offload : info_buf_reg_0_chksum_offload; // @[RxBufferFifo.scala 154:{7,7}]
  wire [1:0] _GEN_284 = rd_index_reg[0] ? info_buf_reg_1_pkt_type : info_buf_reg_0_pkt_type; // @[RxBufferFifo.scala 155:{43,43}]
  wire [15:0] _GEN_286 = rd_index_reg[0] ? info_buf_reg_1_ip_chksum : info_buf_reg_0_ip_chksum; // @[RxBufferFifo.scala 155:{88,88}]
  wire [15:0] _GEN_290 = rd_index_reg[0] ? info_buf_reg_1_tcp_chksum : info_buf_reg_0_tcp_chksum; // @[RxBufferFifo.scala 156:{88,88}]
  wire  _io_out_tvalid_T_14 = ~_GEN_284[1] | _GEN_290 == 16'h0; // @[RxBufferFifo.scala 156:47]
  wire  _io_out_tvalid_T_15 = (~_GEN_284[0] | _GEN_286 == 16'h0) & _io_out_tvalid_T_14; // @[RxBufferFifo.scala 155:97]
  wire  _io_out_tvalid_T_16 = ~_GEN_282 | _io_out_tvalid_T_15; // @[RxBufferFifo.scala 154:50]
  wire  _wrong_chksum_counter_T_18 = io_out_tready & io_out_tlast & ~_io_out_tvalid_T_16; // @[RxBufferFifo.scala 166:105]
  wire [31:0] _GEN_386 = {{31'd0}, _wrong_chksum_counter_T_18}; // @[RxBufferFifo.scala 166:73]
  wire [31:0] _wrong_chksum_counter_T_20 = wrong_chksum_counter + _GEN_386; // @[RxBufferFifo.scala 166:73]
  wire [6:0] _rd_pos_next_T_1 = rd_index_reg + 7'h1; // @[RxBufferFifo.scala 39:12]
  wire [6:0] _rd_pos_next_T_2 = _rd_pos_next_T_1 & 7'h1; // @[RxBufferFifo.scala 39:19]
  wire [11:0] _GEN_387 = {_rd_pos_next_T_2, 5'h0}; // @[RxBufferFifo.scala 185:44]
  wire [13:0] _rd_pos_next_T_3 = {{2'd0}, _GEN_387}; // @[RxBufferFifo.scala 185:44]
  wire [6:0] _rd_pos_next_T_5 = rd_pos_reg + 7'h1; // @[RxBufferFifo.scala 187:31]
  wire [13:0] _GEN_374 = _io_out_tlast_T_2 ? _rd_pos_next_T_3 : {{7'd0}, _rd_pos_next_T_5}; // @[RxBufferFifo.scala 184:51 185:17 187:17]
  wire [6:0] rd_pos_next = _GEN_374[6:0];
  wire [6:0] _io_out_tdata_T = out_shake_hand ? rd_pos_next : rd_pos_reg; // @[RxBufferFifo.scala 170:36]
  wire  _GEN_319 = ~rd_index_reg[0] ? 1'h0 : _GEN_259; // @[RxBufferFifo.scala 177:{36,36}]
  wire  _GEN_320 = rd_index_reg[0] ? 1'h0 : _GEN_260; // @[RxBufferFifo.scala 177:{36,36}]
  wire  _GEN_321 = ~rd_index_reg[0] ? 1'h0 : _GEN_261; // @[RxBufferFifo.scala 177:{36,36}]
  wire  _GEN_322 = rd_index_reg[0] ? 1'h0 : _GEN_262; // @[RxBufferFifo.scala 177:{36,36}]
  wire [5:0] _info_buf_reg_burst_T_5 = _GEN_278 - 6'h1; // @[RxBufferFifo.scala 180:78]
  wire  _GEN_345 = _io_out_tlast_T_2 ? _GEN_321 : _GEN_261; // @[RxBufferFifo.scala 176:55]
  wire  _GEN_346 = _io_out_tlast_T_2 ? _GEN_322 : _GEN_262; // @[RxBufferFifo.scala 176:55]
  wire  _GEN_367 = out_shake_hand ? _GEN_345 : _GEN_261; // @[RxBufferFifo.scala 172:24]
  wire  _GEN_368 = out_shake_hand ? _GEN_346 : _GEN_262; // @[RxBufferFifo.scala 172:24]
  wire  _GEN_376 = info_buf_reg_0_pre_valid | _GEN_367; // @[RxBufferFifo.scala 191:37 193:29]
  wire  _GEN_378 = info_buf_reg_1_pre_valid | _GEN_368; // @[RxBufferFifo.scala 191:37 193:29]
  wire [13:0] _GEN_388 = reset ? 14'h0 : _GEN_244; // @[RxBufferFifo.scala 56:{29,29}]
  assign data_buf_reg_io_out_tdata_MPORT_en = data_buf_reg_io_out_tdata_MPORT_en_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_addr = data_buf_reg_io_out_tdata_MPORT_addr_pipe_0;
  assign data_buf_reg_io_out_tdata_MPORT_data = data_buf_reg[data_buf_reg_io_out_tdata_MPORT_addr]; // @[RxBufferFifo.scala 45:33]
  assign data_buf_reg_MPORT_data = io_in_tdata;
  assign data_buf_reg_MPORT_addr = wr_pos_reg[5:0];
  assign data_buf_reg_MPORT_mask = 1'h1;
  assign data_buf_reg_MPORT_en = io_reset_counter ? 1'h0 : _GEN_237;
  assign io_in_tready = ~buf_full; // @[RxBufferFifo.scala 64:19]
  assign io_out_tdata = data_buf_reg_io_out_tdata_MPORT_data; // @[RxBufferFifo.scala 170:17]
  assign io_out_tvalid = _GEN_272 & _io_out_tvalid_T_16; // @[RxBufferFifo.scala 165:53]
  assign io_out_tlast = _GEN_272 & _GEN_278 == 6'h1; // @[RxBufferFifo.scala 162:53]
  assign io_out_qid = rd_index_reg[0] ? info_buf_reg_1_qid : info_buf_reg_0_qid; // @[RxBufferFifo.scala 159:{17,17}]
  assign io_out_tlen = rd_index_reg[0] ? info_buf_reg_1_len : info_buf_reg_0_len; // @[RxBufferFifo.scala 160:{17,17}]
  assign io_c2h_pack_counter = pack_counter; // @[RxBufferFifo.scala 69:23]
  assign io_c2h_err_counter = err_counter + wrong_chksum_counter; // @[RxBufferFifo.scala 70:37]
  always @(posedge clock) begin
    if (data_buf_reg_MPORT_en & data_buf_reg_MPORT_mask) begin
      data_buf_reg[data_buf_reg_MPORT_addr] <= data_buf_reg_MPORT_data; // @[RxBufferFifo.scala 45:33]
    end
    data_buf_reg_io_out_tdata_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      data_buf_reg_io_out_tdata_MPORT_addr_pipe_0 <= _io_out_tdata_T[5:0];
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_used <= 1'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_0_used <= 1'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_0_used <= _GEN_263;
        end
      end else begin
        info_buf_reg_0_used <= _GEN_263;
      end
    end else begin
      info_buf_reg_0_used <= _GEN_263;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_valid <= 1'h0; // @[RxBufferFifo.scala 48:29]
    end else begin
      info_buf_reg_0_valid <= _GEN_376;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_pre_valid <= 1'h0; // @[RxBufferFifo.scala 48:29]
    end else if (info_buf_reg_0_pre_valid) begin // @[RxBufferFifo.scala 191:37]
      info_buf_reg_0_pre_valid <= 1'h0; // @[RxBufferFifo.scala 192:33]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        info_buf_reg_0_pre_valid <= _GEN_319;
      end else begin
        info_buf_reg_0_pre_valid <= _GEN_259;
      end
    end else begin
      info_buf_reg_0_pre_valid <= _GEN_259;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_chksum_offload <= 1'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_0_chksum_offload <= 1'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_0_chksum_offload <= _GEN_257;
        end
      end else begin
        info_buf_reg_0_chksum_offload <= _GEN_257;
      end
    end else begin
      info_buf_reg_0_chksum_offload <= _GEN_257;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_pkt_type <= 2'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_0_pkt_type <= 2'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_0_pkt_type <= _GEN_255;
        end
      end else begin
        info_buf_reg_0_pkt_type <= _GEN_255;
      end
    end else begin
      info_buf_reg_0_pkt_type <= _GEN_255;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_qid <= 6'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_0_qid <= 6'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_0_qid <= _GEN_253;
        end
      end else begin
        info_buf_reg_0_qid <= _GEN_253;
      end
    end else begin
      info_buf_reg_0_qid <= _GEN_253;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_len <= 16'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_0_len <= 16'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_0_len <= _GEN_251;
        end
      end else begin
        info_buf_reg_0_len <= _GEN_251;
      end
    end else begin
      info_buf_reg_0_len <= _GEN_251;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_ip_chksum <= 16'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_0_ip_chksum <= 16'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_0_ip_chksum <= _GEN_249;
        end
      end else begin
        info_buf_reg_0_ip_chksum <= _GEN_249;
      end
    end else begin
      info_buf_reg_0_ip_chksum <= _GEN_249;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_tcp_chksum <= 16'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_0_tcp_chksum <= 16'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_0_tcp_chksum <= _GEN_247;
        end
      end else begin
        info_buf_reg_0_tcp_chksum <= _GEN_247;
      end
    end else begin
      info_buf_reg_0_tcp_chksum <= _GEN_247;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_0_burst <= 6'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_0_burst <= 6'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_0_burst <= _GEN_245;
        end
      end else if (~rd_index_reg[0]) begin // @[RxBufferFifo.scala 180:42]
        info_buf_reg_0_burst <= _info_buf_reg_burst_T_5; // @[RxBufferFifo.scala 180:42]
      end else begin
        info_buf_reg_0_burst <= _GEN_245;
      end
    end else begin
      info_buf_reg_0_burst <= _GEN_245;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_used <= 1'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_1_used <= 1'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_1_used <= _GEN_264;
        end
      end else begin
        info_buf_reg_1_used <= _GEN_264;
      end
    end else begin
      info_buf_reg_1_used <= _GEN_264;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_valid <= 1'h0; // @[RxBufferFifo.scala 48:29]
    end else begin
      info_buf_reg_1_valid <= _GEN_378;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_pre_valid <= 1'h0; // @[RxBufferFifo.scala 48:29]
    end else if (info_buf_reg_1_pre_valid) begin // @[RxBufferFifo.scala 191:37]
      info_buf_reg_1_pre_valid <= 1'h0; // @[RxBufferFifo.scala 192:33]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        info_buf_reg_1_pre_valid <= _GEN_320;
      end else begin
        info_buf_reg_1_pre_valid <= _GEN_260;
      end
    end else begin
      info_buf_reg_1_pre_valid <= _GEN_260;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_chksum_offload <= 1'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_1_chksum_offload <= 1'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_1_chksum_offload <= _GEN_258;
        end
      end else begin
        info_buf_reg_1_chksum_offload <= _GEN_258;
      end
    end else begin
      info_buf_reg_1_chksum_offload <= _GEN_258;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_pkt_type <= 2'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_1_pkt_type <= 2'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_1_pkt_type <= _GEN_256;
        end
      end else begin
        info_buf_reg_1_pkt_type <= _GEN_256;
      end
    end else begin
      info_buf_reg_1_pkt_type <= _GEN_256;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_qid <= 6'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_1_qid <= 6'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_1_qid <= _GEN_254;
        end
      end else begin
        info_buf_reg_1_qid <= _GEN_254;
      end
    end else begin
      info_buf_reg_1_qid <= _GEN_254;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_len <= 16'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_1_len <= 16'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_1_len <= _GEN_252;
        end
      end else begin
        info_buf_reg_1_len <= _GEN_252;
      end
    end else begin
      info_buf_reg_1_len <= _GEN_252;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_ip_chksum <= 16'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_1_ip_chksum <= 16'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_1_ip_chksum <= _GEN_250;
        end
      end else begin
        info_buf_reg_1_ip_chksum <= _GEN_250;
      end
    end else begin
      info_buf_reg_1_ip_chksum <= _GEN_250;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_tcp_chksum <= 16'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_1_tcp_chksum <= 16'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_1_tcp_chksum <= _GEN_248;
        end
      end else begin
        info_buf_reg_1_tcp_chksum <= _GEN_248;
      end
    end else begin
      info_buf_reg_1_tcp_chksum <= _GEN_248;
    end
    if (reset) begin // @[RxBufferFifo.scala 48:29]
      info_buf_reg_1_burst <= 6'h0; // @[RxBufferFifo.scala 48:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 177:36]
          info_buf_reg_1_burst <= 6'h0; // @[RxBufferFifo.scala 177:36]
        end else begin
          info_buf_reg_1_burst <= _GEN_246;
        end
      end else if (rd_index_reg[0]) begin // @[RxBufferFifo.scala 180:42]
        info_buf_reg_1_burst <= _info_buf_reg_burst_T_5; // @[RxBufferFifo.scala 180:42]
      end else begin
        info_buf_reg_1_burst <= _GEN_246;
      end
    end else begin
      info_buf_reg_1_burst <= _GEN_246;
    end
    if (reset) begin // @[RxBufferFifo.scala 53:29]
      wr_index_reg <= 7'h0; // @[RxBufferFifo.scala 53:29]
    end else if (!(io_reset_counter)) begin // @[RxBufferFifo.scala 87:26]
      if (in_shake_hand) begin // @[RxBufferFifo.scala 91:29]
        if (!(_GEN_2 == 6'h20)) begin // @[RxBufferFifo.scala 95:61]
          wr_index_reg <= _GEN_180;
        end
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 54:29]
      rd_index_reg <= 7'h0; // @[RxBufferFifo.scala 54:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 172:24]
      if (_io_out_tlast_T_2) begin // @[RxBufferFifo.scala 176:55]
        rd_index_reg <= _rd_pos_next_T_2; // @[RxBufferFifo.scala 178:22]
      end
    end
    wr_pos_reg <= _GEN_388[6:0]; // @[RxBufferFifo.scala 56:{29,29}]
    if (reset) begin // @[RxBufferFifo.scala 57:29]
      rd_pos_reg <= 7'h0; // @[RxBufferFifo.scala 57:29]
    end else if (out_shake_hand) begin // @[RxBufferFifo.scala 170:36]
      rd_pos_reg <= rd_pos_next;
    end
    if (reset) begin // @[RxBufferFifo.scala 65:29]
      pack_counter <= 32'h0; // @[RxBufferFifo.scala 65:29]
    end else if (io_reset_counter) begin // @[RxBufferFifo.scala 87:26]
      pack_counter <= 32'h0; // @[RxBufferFifo.scala 88:18]
    end else if (in_shake_hand) begin // @[RxBufferFifo.scala 91:29]
      if (io_in_tlast) begin // @[RxBufferFifo.scala 92:24]
        pack_counter <= _pack_counter_T_1; // @[RxBufferFifo.scala 93:20]
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 66:28]
      err_counter <= 32'h0; // @[RxBufferFifo.scala 66:28]
    end else if (io_reset_counter) begin // @[RxBufferFifo.scala 87:26]
      err_counter <= 32'h0; // @[RxBufferFifo.scala 89:17]
    end else if (in_shake_hand) begin // @[RxBufferFifo.scala 91:29]
      if (_GEN_2 == 6'h20) begin // @[RxBufferFifo.scala 95:61]
        err_counter <= _err_counter_T_1; // @[RxBufferFifo.scala 107:19]
      end else begin
        err_counter <= _GEN_153;
      end
    end
    if (reset) begin // @[RxBufferFifo.scala 67:37]
      wrong_chksum_counter <= 32'h0; // @[RxBufferFifo.scala 67:37]
    end else if (io_reset_counter) begin // @[RxBufferFifo.scala 166:30]
      wrong_chksum_counter <= 32'h0;
    end else begin
      wrong_chksum_counter <= _wrong_chksum_counter_T_20;
    end
    if (reset) begin // @[RxBufferFifo.scala 72:30]
      is_overflowed <= 1'h0; // @[RxBufferFifo.scala 72:30]
    end else if (!(io_reset_counter)) begin // @[RxBufferFifo.scala 87:26]
      if (in_shake_hand) begin // @[RxBufferFifo.scala 91:29]
        if (_GEN_2 == 6'h20) begin // @[RxBufferFifo.scala 95:61]
          is_overflowed <= _GEN_3;
        end else begin
          is_overflowed <= _GEN_181;
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
  info_buf_reg_0_used = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  info_buf_reg_0_valid = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  info_buf_reg_0_pre_valid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  info_buf_reg_0_chksum_offload = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  info_buf_reg_0_pkt_type = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  info_buf_reg_0_qid = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  info_buf_reg_0_len = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  info_buf_reg_0_ip_chksum = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  info_buf_reg_0_tcp_chksum = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  info_buf_reg_0_burst = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  info_buf_reg_1_used = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  info_buf_reg_1_valid = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  info_buf_reg_1_pre_valid = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  info_buf_reg_1_chksum_offload = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  info_buf_reg_1_pkt_type = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  info_buf_reg_1_qid = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  info_buf_reg_1_len = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  info_buf_reg_1_ip_chksum = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  info_buf_reg_1_tcp_chksum = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  info_buf_reg_1_burst = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  wr_index_reg = _RAND_23[6:0];
  _RAND_24 = {1{`RANDOM}};
  rd_index_reg = _RAND_24[6:0];
  _RAND_25 = {1{`RANDOM}};
  wr_pos_reg = _RAND_25[6:0];
  _RAND_26 = {1{`RANDOM}};
  rd_pos_reg = _RAND_26[6:0];
  _RAND_27 = {1{`RANDOM}};
  pack_counter = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  err_counter = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  wrong_chksum_counter = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  is_overflowed = _RAND_30[0:0];
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
  input  [15:0]  io_extern_config_c2h_match_op,
  input  [31:0]  io_extern_config_c2h_match_arg_0,
  input  [31:0]  io_extern_config_c2h_match_arg_1,
  input  [31:0]  io_extern_config_c2h_match_arg_2,
  input  [31:0]  io_extern_config_c2h_match_arg_3,
  input  [31:0]  io_extern_config_c2h_match_arg_4,
  input  [31:0]  io_extern_config_c2h_match_arg_5,
  input  [31:0]  io_extern_config_c2h_match_arg_6,
  input  [31:0]  io_extern_config_c2h_match_arg_7,
  input  [31:0]  io_extern_config_c2h_match_arg_8,
  input  [31:0]  io_extern_config_c2h_match_arg_9,
  input  [31:0]  io_extern_config_c2h_match_arg_10,
  input  [31:0]  io_extern_config_c2h_match_arg_11,
  input  [31:0]  io_extern_config_c2h_match_arg_12,
  input  [31:0]  io_extern_config_c2h_match_arg_13,
  input  [31:0]  io_extern_config_c2h_match_arg_14,
  input  [31:0]  io_extern_config_c2h_match_arg_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  rx_converter_clock; // @[RxHandler.scala 38:28]
  wire  rx_converter_reset; // @[RxHandler.scala 38:28]
  wire [511:0] rx_converter_io_in_tdata; // @[RxHandler.scala 38:28]
  wire  rx_converter_io_in_tvalid; // @[RxHandler.scala 38:28]
  wire  rx_converter_io_in_tready; // @[RxHandler.scala 38:28]
  wire  rx_converter_io_in_tlast; // @[RxHandler.scala 38:28]
  wire  rx_converter_io_in_tuser; // @[RxHandler.scala 38:28]
  wire [63:0] rx_converter_io_in_tkeep; // @[RxHandler.scala 38:28]
  wire [511:0] rx_converter_io_out_tdata; // @[RxHandler.scala 38:28]
  wire  rx_converter_io_out_tvalid; // @[RxHandler.scala 38:28]
  wire  rx_converter_io_out_tready; // @[RxHandler.scala 38:28]
  wire  rx_converter_io_out_tlast; // @[RxHandler.scala 38:28]
  wire  rx_converter_io_out_tuser; // @[RxHandler.scala 38:28]
  wire [15:0] rx_converter_io_out_rx_info_tlen; // @[RxHandler.scala 38:28]
  wire [15:0] rx_converter_io_out_extern_config_c2h_match_op; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_out_extern_config_c2h_match_arg_12; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_out_extern_config_c2h_match_arg_13; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_out_extern_config_c2h_match_arg_14; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_out_extern_config_c2h_match_arg_15; // @[RxHandler.scala 38:28]
  wire [15:0] rx_converter_io_extern_config_c2h_match_op; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_0; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_1; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_2; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_3; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_4; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_5; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_6; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_7; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_8; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_9; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_10; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_11; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_12; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_13; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_14; // @[RxHandler.scala 38:28]
  wire [31:0] rx_converter_io_extern_config_c2h_match_arg_15; // @[RxHandler.scala 38:28]
  wire  rx_pipeline_clock; // @[RxHandler.scala 42:27]
  wire  rx_pipeline_reset; // @[RxHandler.scala 42:27]
  wire [511:0] rx_pipeline_io_in_tdata; // @[RxHandler.scala 42:27]
  wire  rx_pipeline_io_in_tvalid; // @[RxHandler.scala 42:27]
  wire  rx_pipeline_io_in_tready; // @[RxHandler.scala 42:27]
  wire  rx_pipeline_io_in_tlast; // @[RxHandler.scala 42:27]
  wire  rx_pipeline_io_in_tuser; // @[RxHandler.scala 42:27]
  wire [15:0] rx_pipeline_io_in_rx_info_tlen; // @[RxHandler.scala 42:27]
  wire [15:0] rx_pipeline_io_in_extern_config_c2h_match_op; // @[RxHandler.scala 42:27]
  wire [31:0] rx_pipeline_io_in_extern_config_c2h_match_arg_12; // @[RxHandler.scala 42:27]
  wire [31:0] rx_pipeline_io_in_extern_config_c2h_match_arg_13; // @[RxHandler.scala 42:27]
  wire [31:0] rx_pipeline_io_in_extern_config_c2h_match_arg_14; // @[RxHandler.scala 42:27]
  wire [31:0] rx_pipeline_io_in_extern_config_c2h_match_arg_15; // @[RxHandler.scala 42:27]
  wire [511:0] rx_pipeline_io_out_tdata; // @[RxHandler.scala 42:27]
  wire  rx_pipeline_io_out_tvalid; // @[RxHandler.scala 42:27]
  wire  rx_pipeline_io_out_tready; // @[RxHandler.scala 42:27]
  wire  rx_pipeline_io_out_tlast; // @[RxHandler.scala 42:27]
  wire  rx_pipeline_io_out_tuser; // @[RxHandler.scala 42:27]
  wire [15:0] rx_pipeline_io_out_rx_info_tlen; // @[RxHandler.scala 42:27]
  wire [5:0] rx_pipeline_io_out_rx_info_qid; // @[RxHandler.scala 42:27]
  wire [31:0] rx_pipeline_io_out_rx_info_ip_chksum; // @[RxHandler.scala 42:27]
  wire [31:0] rx_pipeline_io_out_rx_info_tcp_chksum; // @[RxHandler.scala 42:27]
  wire [15:0] rx_pipeline_io_out_extern_config_c2h_match_op; // @[RxHandler.scala 42:27]
  wire  rx_buffer_fifo_clock; // @[RxHandler.scala 45:30]
  wire  rx_buffer_fifo_reset; // @[RxHandler.scala 45:30]
  wire [511:0] rx_buffer_fifo_io_in_tdata; // @[RxHandler.scala 45:30]
  wire  rx_buffer_fifo_io_in_tvalid; // @[RxHandler.scala 45:30]
  wire  rx_buffer_fifo_io_in_tready; // @[RxHandler.scala 45:30]
  wire  rx_buffer_fifo_io_in_tlast; // @[RxHandler.scala 45:30]
  wire  rx_buffer_fifo_io_in_tuser; // @[RxHandler.scala 45:30]
  wire [15:0] rx_buffer_fifo_io_in_rx_info_tlen; // @[RxHandler.scala 45:30]
  wire [5:0] rx_buffer_fifo_io_in_rx_info_qid; // @[RxHandler.scala 45:30]
  wire [31:0] rx_buffer_fifo_io_in_rx_info_ip_chksum; // @[RxHandler.scala 45:30]
  wire [31:0] rx_buffer_fifo_io_in_rx_info_tcp_chksum; // @[RxHandler.scala 45:30]
  wire [15:0] rx_buffer_fifo_io_in_extern_config_c2h_match_op; // @[RxHandler.scala 45:30]
  wire [511:0] rx_buffer_fifo_io_out_tdata; // @[RxHandler.scala 45:30]
  wire  rx_buffer_fifo_io_out_tvalid; // @[RxHandler.scala 45:30]
  wire  rx_buffer_fifo_io_out_tready; // @[RxHandler.scala 45:30]
  wire  rx_buffer_fifo_io_out_tlast; // @[RxHandler.scala 45:30]
  wire [5:0] rx_buffer_fifo_io_out_qid; // @[RxHandler.scala 45:30]
  wire [15:0] rx_buffer_fifo_io_out_tlen; // @[RxHandler.scala 45:30]
  wire  rx_buffer_fifo_io_reset_counter; // @[RxHandler.scala 45:30]
  wire [31:0] rx_buffer_fifo_io_c2h_pack_counter; // @[RxHandler.scala 45:30]
  wire [31:0] rx_buffer_fifo_io_c2h_err_counter; // @[RxHandler.scala 45:30]
  reg  QDMA_c2h_stub_in_tuser_reg; // @[RxHandler.scala 55:43]
  wire  _GEN_0 = io_QDMA_c2h_stub_in_tvalid & io_QDMA_c2h_stub_in_tready ? io_QDMA_c2h_stub_in_tlast :
    QDMA_c2h_stub_in_tuser_reg; // @[RxHandler.scala 56:65 57:32 55:43]
  wire  _io_QDMA_c2h_stub_in_tlast_T = ~io_QDMA_c2h_stub_in_tuser; // @[RxHandler.scala 64:63]
  wire [10:0] Gen_c2h_hdr_qid = {{5'd0}, rx_buffer_fifo_io_out_qid};
  wire [5:0] Gen_c2h_hdr_flow_id = Gen_c2h_hdr_qid[5:0];
  wire [15:0] Gen_c2h_hdr_tdest = {{5'd0}, Gen_c2h_hdr_qid};
  wire [15:0] Gen_c2h_hdr_pkt_len = rx_buffer_fifo_io_out_tlen;
  wire [511:0] _io_QDMA_c2h_stub_in_tdata_T = {362'h0,2'h0,4'h0,Gen_c2h_hdr_pkt_len,80'h0,Gen_c2h_hdr_tdest,10'h0,
    Gen_c2h_hdr_flow_id,5'h0,Gen_c2h_hdr_qid}; // @[RxHandler.scala 75:46]
  RxConverter rx_converter ( // @[RxHandler.scala 38:28]
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
    .io_out_extern_config_c2h_match_arg_12(rx_converter_io_out_extern_config_c2h_match_arg_12),
    .io_out_extern_config_c2h_match_arg_13(rx_converter_io_out_extern_config_c2h_match_arg_13),
    .io_out_extern_config_c2h_match_arg_14(rx_converter_io_out_extern_config_c2h_match_arg_14),
    .io_out_extern_config_c2h_match_arg_15(rx_converter_io_out_extern_config_c2h_match_arg_15),
    .io_extern_config_c2h_match_op(rx_converter_io_extern_config_c2h_match_op),
    .io_extern_config_c2h_match_arg_0(rx_converter_io_extern_config_c2h_match_arg_0),
    .io_extern_config_c2h_match_arg_1(rx_converter_io_extern_config_c2h_match_arg_1),
    .io_extern_config_c2h_match_arg_2(rx_converter_io_extern_config_c2h_match_arg_2),
    .io_extern_config_c2h_match_arg_3(rx_converter_io_extern_config_c2h_match_arg_3),
    .io_extern_config_c2h_match_arg_4(rx_converter_io_extern_config_c2h_match_arg_4),
    .io_extern_config_c2h_match_arg_5(rx_converter_io_extern_config_c2h_match_arg_5),
    .io_extern_config_c2h_match_arg_6(rx_converter_io_extern_config_c2h_match_arg_6),
    .io_extern_config_c2h_match_arg_7(rx_converter_io_extern_config_c2h_match_arg_7),
    .io_extern_config_c2h_match_arg_8(rx_converter_io_extern_config_c2h_match_arg_8),
    .io_extern_config_c2h_match_arg_9(rx_converter_io_extern_config_c2h_match_arg_9),
    .io_extern_config_c2h_match_arg_10(rx_converter_io_extern_config_c2h_match_arg_10),
    .io_extern_config_c2h_match_arg_11(rx_converter_io_extern_config_c2h_match_arg_11),
    .io_extern_config_c2h_match_arg_12(rx_converter_io_extern_config_c2h_match_arg_12),
    .io_extern_config_c2h_match_arg_13(rx_converter_io_extern_config_c2h_match_arg_13),
    .io_extern_config_c2h_match_arg_14(rx_converter_io_extern_config_c2h_match_arg_14),
    .io_extern_config_c2h_match_arg_15(rx_converter_io_extern_config_c2h_match_arg_15)
  );
  RxPipeline rx_pipeline ( // @[RxHandler.scala 42:27]
    .clock(rx_pipeline_clock),
    .reset(rx_pipeline_reset),
    .io_in_tdata(rx_pipeline_io_in_tdata),
    .io_in_tvalid(rx_pipeline_io_in_tvalid),
    .io_in_tready(rx_pipeline_io_in_tready),
    .io_in_tlast(rx_pipeline_io_in_tlast),
    .io_in_tuser(rx_pipeline_io_in_tuser),
    .io_in_rx_info_tlen(rx_pipeline_io_in_rx_info_tlen),
    .io_in_extern_config_c2h_match_op(rx_pipeline_io_in_extern_config_c2h_match_op),
    .io_in_extern_config_c2h_match_arg_12(rx_pipeline_io_in_extern_config_c2h_match_arg_12),
    .io_in_extern_config_c2h_match_arg_13(rx_pipeline_io_in_extern_config_c2h_match_arg_13),
    .io_in_extern_config_c2h_match_arg_14(rx_pipeline_io_in_extern_config_c2h_match_arg_14),
    .io_in_extern_config_c2h_match_arg_15(rx_pipeline_io_in_extern_config_c2h_match_arg_15),
    .io_out_tdata(rx_pipeline_io_out_tdata),
    .io_out_tvalid(rx_pipeline_io_out_tvalid),
    .io_out_tready(rx_pipeline_io_out_tready),
    .io_out_tlast(rx_pipeline_io_out_tlast),
    .io_out_tuser(rx_pipeline_io_out_tuser),
    .io_out_rx_info_tlen(rx_pipeline_io_out_rx_info_tlen),
    .io_out_rx_info_qid(rx_pipeline_io_out_rx_info_qid),
    .io_out_rx_info_ip_chksum(rx_pipeline_io_out_rx_info_ip_chksum),
    .io_out_rx_info_tcp_chksum(rx_pipeline_io_out_rx_info_tcp_chksum),
    .io_out_extern_config_c2h_match_op(rx_pipeline_io_out_extern_config_c2h_match_op)
  );
  RxBufferFifo rx_buffer_fifo ( // @[RxHandler.scala 45:30]
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
    .io_in_extern_config_c2h_match_op(rx_buffer_fifo_io_in_extern_config_c2h_match_op),
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
  assign io_CMAC_out_tready = rx_converter_io_in_tready; // @[RxHandler.scala 39:15]
  assign io_QDMA_c2h_stub_in_tdata = io_QDMA_c2h_stub_in_tuser ? _io_QDMA_c2h_stub_in_tdata_T :
    rx_buffer_fifo_io_out_tdata; // @[RxHandler.scala 68:34 75:31 78:31]
  assign io_QDMA_c2h_stub_in_tvalid = rx_buffer_fifo_io_out_tvalid; // @[RxHandler.scala 62:30]
  assign io_QDMA_c2h_stub_in_tlast = rx_buffer_fifo_io_out_tlast & ~io_QDMA_c2h_stub_in_tuser; // @[RxHandler.scala 64:61]
  assign io_QDMA_c2h_stub_in_tuser = QDMA_c2h_stub_in_tuser_reg & io_QDMA_c2h_stub_in_tvalid; // @[RxHandler.scala 60:59]
  assign io_c2h_pack_counter = rx_buffer_fifo_io_c2h_pack_counter; // @[RxHandler.scala 48:23]
  assign io_c2h_err_counter = rx_buffer_fifo_io_c2h_err_counter; // @[RxHandler.scala 49:22]
  assign rx_converter_clock = clock;
  assign rx_converter_reset = reset;
  assign rx_converter_io_in_tdata = io_CMAC_out_tdata; // @[RxHandler.scala 39:15]
  assign rx_converter_io_in_tvalid = io_CMAC_out_tvalid; // @[RxHandler.scala 39:15]
  assign rx_converter_io_in_tlast = io_CMAC_out_tlast; // @[RxHandler.scala 39:15]
  assign rx_converter_io_in_tuser = io_CMAC_out_tuser; // @[RxHandler.scala 39:15]
  assign rx_converter_io_in_tkeep = io_CMAC_out_tkeep; // @[RxHandler.scala 39:15]
  assign rx_converter_io_out_tready = rx_pipeline_io_in_tready; // @[RxHandler.scala 43:23]
  assign rx_converter_io_extern_config_c2h_match_op = io_extern_config_c2h_match_op; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_0 = io_extern_config_c2h_match_arg_0; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_1 = io_extern_config_c2h_match_arg_1; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_2 = io_extern_config_c2h_match_arg_2; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_3 = io_extern_config_c2h_match_arg_3; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_4 = io_extern_config_c2h_match_arg_4; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_5 = io_extern_config_c2h_match_arg_5; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_6 = io_extern_config_c2h_match_arg_6; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_7 = io_extern_config_c2h_match_arg_7; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_8 = io_extern_config_c2h_match_arg_8; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_9 = io_extern_config_c2h_match_arg_9; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_10 = io_extern_config_c2h_match_arg_10; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_11 = io_extern_config_c2h_match_arg_11; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_12 = io_extern_config_c2h_match_arg_12; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_13 = io_extern_config_c2h_match_arg_13; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_14 = io_extern_config_c2h_match_arg_14; // @[RxHandler.scala 40:33]
  assign rx_converter_io_extern_config_c2h_match_arg_15 = io_extern_config_c2h_match_arg_15; // @[RxHandler.scala 40:33]
  assign rx_pipeline_clock = clock;
  assign rx_pipeline_reset = reset;
  assign rx_pipeline_io_in_tdata = rx_converter_io_out_tdata; // @[RxHandler.scala 43:23]
  assign rx_pipeline_io_in_tvalid = rx_converter_io_out_tvalid; // @[RxHandler.scala 43:23]
  assign rx_pipeline_io_in_tlast = rx_converter_io_out_tlast; // @[RxHandler.scala 43:23]
  assign rx_pipeline_io_in_tuser = rx_converter_io_out_tuser; // @[RxHandler.scala 43:23]
  assign rx_pipeline_io_in_rx_info_tlen = rx_converter_io_out_rx_info_tlen; // @[RxHandler.scala 43:23]
  assign rx_pipeline_io_in_extern_config_c2h_match_op = rx_converter_io_out_extern_config_c2h_match_op; // @[RxHandler.scala 43:23]
  assign rx_pipeline_io_in_extern_config_c2h_match_arg_12 = rx_converter_io_out_extern_config_c2h_match_arg_12; // @[RxHandler.scala 43:23]
  assign rx_pipeline_io_in_extern_config_c2h_match_arg_13 = rx_converter_io_out_extern_config_c2h_match_arg_13; // @[RxHandler.scala 43:23]
  assign rx_pipeline_io_in_extern_config_c2h_match_arg_14 = rx_converter_io_out_extern_config_c2h_match_arg_14; // @[RxHandler.scala 43:23]
  assign rx_pipeline_io_in_extern_config_c2h_match_arg_15 = rx_converter_io_out_extern_config_c2h_match_arg_15; // @[RxHandler.scala 43:23]
  assign rx_pipeline_io_out_tready = rx_buffer_fifo_io_in_tready; // @[RxHandler.scala 46:22]
  assign rx_buffer_fifo_clock = clock;
  assign rx_buffer_fifo_reset = reset;
  assign rx_buffer_fifo_io_in_tdata = rx_pipeline_io_out_tdata; // @[RxHandler.scala 46:22]
  assign rx_buffer_fifo_io_in_tvalid = rx_pipeline_io_out_tvalid; // @[RxHandler.scala 46:22]
  assign rx_buffer_fifo_io_in_tlast = rx_pipeline_io_out_tlast; // @[RxHandler.scala 46:22]
  assign rx_buffer_fifo_io_in_tuser = rx_pipeline_io_out_tuser; // @[RxHandler.scala 46:22]
  assign rx_buffer_fifo_io_in_rx_info_tlen = rx_pipeline_io_out_rx_info_tlen; // @[RxHandler.scala 46:22]
  assign rx_buffer_fifo_io_in_rx_info_qid = rx_pipeline_io_out_rx_info_qid; // @[RxHandler.scala 46:22]
  assign rx_buffer_fifo_io_in_rx_info_ip_chksum = rx_pipeline_io_out_rx_info_ip_chksum; // @[RxHandler.scala 46:22]
  assign rx_buffer_fifo_io_in_rx_info_tcp_chksum = rx_pipeline_io_out_rx_info_tcp_chksum; // @[RxHandler.scala 46:22]
  assign rx_buffer_fifo_io_in_extern_config_c2h_match_op = rx_pipeline_io_out_extern_config_c2h_match_op; // @[RxHandler.scala 46:22]
  assign rx_buffer_fifo_io_out_tready = io_QDMA_c2h_stub_in_tready & _io_QDMA_c2h_stub_in_tlast_T; // @[RxHandler.scala 65:63]
  assign rx_buffer_fifo_io_reset_counter = io_reset_counter; // @[RxHandler.scala 47:35]
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
  input  [15:0]  io_extern_config_c2h_match_op,
  input  [31:0]  io_extern_config_c2h_match_arg_0,
  input  [31:0]  io_extern_config_c2h_match_arg_1,
  input  [31:0]  io_extern_config_c2h_match_arg_2,
  input  [31:0]  io_extern_config_c2h_match_arg_3,
  input  [31:0]  io_extern_config_c2h_match_arg_4,
  input  [31:0]  io_extern_config_c2h_match_arg_5,
  input  [31:0]  io_extern_config_c2h_match_arg_6,
  input  [31:0]  io_extern_config_c2h_match_arg_7,
  input  [31:0]  io_extern_config_c2h_match_arg_8,
  input  [31:0]  io_extern_config_c2h_match_arg_9,
  input  [31:0]  io_extern_config_c2h_match_arg_10,
  input  [31:0]  io_extern_config_c2h_match_arg_11,
  input  [31:0]  io_extern_config_c2h_match_arg_12,
  input  [31:0]  io_extern_config_c2h_match_arg_13,
  input  [31:0]  io_extern_config_c2h_match_arg_14,
  input  [31:0]  io_extern_config_c2h_match_arg_15,
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
  wire [15:0] tx_handler_io_extern_config_c2h_match_op; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_0; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_1; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_2; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_3; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_4; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_5; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_6; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_7; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_8; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_9; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_10; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_11; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_12; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_13; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_14; // @[PackageHandler.scala 30:26]
  wire [31:0] tx_handler_io_extern_config_c2h_match_arg_15; // @[PackageHandler.scala 30:26]
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
  wire [15:0] rx_handler_io_extern_config_c2h_match_op; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_0; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_1; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_2; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_3; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_4; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_5; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_6; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_7; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_8; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_9; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_10; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_11; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_12; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_13; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_14; // @[PackageHandler.scala 38:26]
  wire [31:0] rx_handler_io_extern_config_c2h_match_arg_15; // @[PackageHandler.scala 38:26]
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
    .io_h2c_err_counter(tx_handler_io_h2c_err_counter),
    .io_extern_config_c2h_match_op(tx_handler_io_extern_config_c2h_match_op),
    .io_extern_config_c2h_match_arg_0(tx_handler_io_extern_config_c2h_match_arg_0),
    .io_extern_config_c2h_match_arg_1(tx_handler_io_extern_config_c2h_match_arg_1),
    .io_extern_config_c2h_match_arg_2(tx_handler_io_extern_config_c2h_match_arg_2),
    .io_extern_config_c2h_match_arg_3(tx_handler_io_extern_config_c2h_match_arg_3),
    .io_extern_config_c2h_match_arg_4(tx_handler_io_extern_config_c2h_match_arg_4),
    .io_extern_config_c2h_match_arg_5(tx_handler_io_extern_config_c2h_match_arg_5),
    .io_extern_config_c2h_match_arg_6(tx_handler_io_extern_config_c2h_match_arg_6),
    .io_extern_config_c2h_match_arg_7(tx_handler_io_extern_config_c2h_match_arg_7),
    .io_extern_config_c2h_match_arg_8(tx_handler_io_extern_config_c2h_match_arg_8),
    .io_extern_config_c2h_match_arg_9(tx_handler_io_extern_config_c2h_match_arg_9),
    .io_extern_config_c2h_match_arg_10(tx_handler_io_extern_config_c2h_match_arg_10),
    .io_extern_config_c2h_match_arg_11(tx_handler_io_extern_config_c2h_match_arg_11),
    .io_extern_config_c2h_match_arg_12(tx_handler_io_extern_config_c2h_match_arg_12),
    .io_extern_config_c2h_match_arg_13(tx_handler_io_extern_config_c2h_match_arg_13),
    .io_extern_config_c2h_match_arg_14(tx_handler_io_extern_config_c2h_match_arg_14),
    .io_extern_config_c2h_match_arg_15(tx_handler_io_extern_config_c2h_match_arg_15)
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
    .io_extern_config_c2h_match_arg_0(rx_handler_io_extern_config_c2h_match_arg_0),
    .io_extern_config_c2h_match_arg_1(rx_handler_io_extern_config_c2h_match_arg_1),
    .io_extern_config_c2h_match_arg_2(rx_handler_io_extern_config_c2h_match_arg_2),
    .io_extern_config_c2h_match_arg_3(rx_handler_io_extern_config_c2h_match_arg_3),
    .io_extern_config_c2h_match_arg_4(rx_handler_io_extern_config_c2h_match_arg_4),
    .io_extern_config_c2h_match_arg_5(rx_handler_io_extern_config_c2h_match_arg_5),
    .io_extern_config_c2h_match_arg_6(rx_handler_io_extern_config_c2h_match_arg_6),
    .io_extern_config_c2h_match_arg_7(rx_handler_io_extern_config_c2h_match_arg_7),
    .io_extern_config_c2h_match_arg_8(rx_handler_io_extern_config_c2h_match_arg_8),
    .io_extern_config_c2h_match_arg_9(rx_handler_io_extern_config_c2h_match_arg_9),
    .io_extern_config_c2h_match_arg_10(rx_handler_io_extern_config_c2h_match_arg_10),
    .io_extern_config_c2h_match_arg_11(rx_handler_io_extern_config_c2h_match_arg_11),
    .io_extern_config_c2h_match_arg_12(rx_handler_io_extern_config_c2h_match_arg_12),
    .io_extern_config_c2h_match_arg_13(rx_handler_io_extern_config_c2h_match_arg_13),
    .io_extern_config_c2h_match_arg_14(rx_handler_io_extern_config_c2h_match_arg_14),
    .io_extern_config_c2h_match_arg_15(rx_handler_io_extern_config_c2h_match_arg_15)
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
  assign tx_handler_io_extern_config_c2h_match_op = io_extern_config_c2h_match_op; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_0 = io_extern_config_c2h_match_arg_0; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_1 = io_extern_config_c2h_match_arg_1; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_2 = io_extern_config_c2h_match_arg_2; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_3 = io_extern_config_c2h_match_arg_3; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_4 = io_extern_config_c2h_match_arg_4; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_5 = io_extern_config_c2h_match_arg_5; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_6 = io_extern_config_c2h_match_arg_6; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_7 = io_extern_config_c2h_match_arg_7; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_8 = io_extern_config_c2h_match_arg_8; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_9 = io_extern_config_c2h_match_arg_9; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_10 = io_extern_config_c2h_match_arg_10; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_11 = io_extern_config_c2h_match_arg_11; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_12 = io_extern_config_c2h_match_arg_12; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_13 = io_extern_config_c2h_match_arg_13; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_14 = io_extern_config_c2h_match_arg_14; // @[PackageHandler.scala 34:33]
  assign tx_handler_io_extern_config_c2h_match_arg_15 = io_extern_config_c2h_match_arg_15; // @[PackageHandler.scala 34:33]
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
  assign rx_handler_io_extern_config_c2h_match_arg_0 = io_extern_config_c2h_match_arg_0; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_1 = io_extern_config_c2h_match_arg_1; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_2 = io_extern_config_c2h_match_arg_2; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_3 = io_extern_config_c2h_match_arg_3; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_4 = io_extern_config_c2h_match_arg_4; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_5 = io_extern_config_c2h_match_arg_5; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_6 = io_extern_config_c2h_match_arg_6; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_7 = io_extern_config_c2h_match_arg_7; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_8 = io_extern_config_c2h_match_arg_8; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_9 = io_extern_config_c2h_match_arg_9; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_10 = io_extern_config_c2h_match_arg_10; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_11 = io_extern_config_c2h_match_arg_11; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_12 = io_extern_config_c2h_match_arg_12; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_13 = io_extern_config_c2h_match_arg_13; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_14 = io_extern_config_c2h_match_arg_14; // @[PackageHandler.scala 42:33]
  assign rx_handler_io_extern_config_c2h_match_arg_15 = io_extern_config_c2h_match_arg_15; // @[PackageHandler.scala 42:33]
endmodule
