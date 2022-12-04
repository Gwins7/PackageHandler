//package PackageHandler.Tx
//
//import PackageHandler.Misc._
//import chisel3._
//import chisel3.util._
//
//// https://blog.csdn.net/qq_28205153/article/details/55798628
//
//class TxAESEncrypter extends Module {
//  val io = IO(new Bundle {
//    val in = new TxPipelineAxisIO()
//    val out = Flipped(new TxPipelineAxisIO())
//  })
//  val key_encoder = Array.fill(11)(Module(new TxKeyEncoder))
//  val byte_changer = Array.fill(10)(Module(new TxByteChanger))
//  val bit_mover    = Array.fill(10)(Module(new TxBitMover))
//  val martix_multiplier = Array.fill(9)(Module(new TxMatrixMultiplier))
//
//  io.in <> key_encoder(10).io.in
//  key_encoder(10).io.out <> byte_changer(0).io.in
//  for (i <- 0 until 9){
//    byte_changer(i).io.out <> bit_mover(i).io.in
//    bit_mover(i).io.out <> martix_multiplier(i).io.in
//    martix_multiplier(i).io.out <> key_encoder(i).io.in
//    key_encoder(i).io.out <> byte_changer(i+1).io.in
//  }
//  byte_changer(9).io.out <> bit_mover(9).io.in
//  bit_mover(9).io.out <> key_encoder(9).io.in
//  key_encoder(9).io.out <> io.out
//}
//
//class TxEncryptHandler extends TxPipelineHandler with cal_gf256
//
//class TxByteChanger extends TxEncryptHandler {
//  val trans_tdata = Wire(Vec(64,UInt(8.W)))
//  for (i <- 0 until 64){
//    trans_tdata(i) := s_substitute(in_reg.tdata(i*8+7,i*8+4),in_reg.tdata(i*8+3,i*8))
//  }
//  io.out.tdata := trans_tdata.asUInt
//}
//
//class TxBitMover extends TxEncryptHandler {
//  val trans_tdata = Wire(Vec(4,UInt(128.W)))
//  for (i <- 0 until 4){
//    trans_tdata(i) := move_bit_128(in_reg.tdata(128*i+127,128*i))
//  }
//  io.out.tdata := trans_tdata.asUInt
//}
//
//class TxMatrixMultiplier extends TxEncryptHandler {
//  val trans_tdata = Wire(Vec(64,UInt(8.W)))
//  for (i <- 0 until 4){
//    for (j <- 0 until 16){
//        trans_tdata(16*i+j) := matrix_mul_result(in_reg.tdata(128*i+127,128*i),j % 4,j / 4)
//    }
//  }
//  io.out.tdata := trans_tdata.asUInt
//}
//
//class TxKeyEncoder extends TxEncryptHandler {
//  io.out.tdata := in_reg.tdata ^ Fill(4,extern_config_reg.aes_key)
//  io.out.extern_config.round_time := extern_config_reg.round_time + 1.U
//  io.out.extern_config.aes_key := get_next_key(extern_config_reg.aes_key,extern_config_reg.round_time)
//}