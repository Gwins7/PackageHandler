//package PackageHandler.Rx
//
//import PackageHandler.Misc._
//import chisel3._
//import chisel3.util._
//
//
//class RxAESDecrypter extends Module {
//    val io = IO(new Bundle {
//        val in = new RxPipelineAxisIO()
//        val out = Flipped(new RxPipelineAxisIO())
//    })
//    val rev_key_encoder = Array.fill(11)(Module(new RxKeyEncoder))
//    val rev_byte_changer = Array.fill(10)(Module(new RxByteChanger))
//    val rev_bit_mover    = Array.fill(10)(Module(new RxBitMover))
//    val rev_martix_multiplier = Array.fill(9)(Module(new RxMatrixMultiplier))
//
//    io.in <> rev_key_encoder(10).io.in
//    rev_key_encoder(10).io.out <> rev_bit_mover(0).io.in
//    for (i <- 0 until 9){
//        rev_bit_mover(i).io.out <> rev_byte_changer(i).io.in
//        rev_byte_changer(i).io.out <> rev_key_encoder(i).io.in
//        rev_key_encoder(i).io.out <> rev_martix_multiplier(i).io.in
//        rev_martix_multiplier(i).io.out <> rev_bit_mover(i+1).io.in
//    }
//    rev_bit_mover(9).io.out <> rev_byte_changer(9).io.in
//    rev_byte_changer(9).io.out <> rev_key_encoder(9).io.in
//    rev_key_encoder(9).io.out <> io.out
//}
//
//class RxDecryptHandler extends RxPipelineHandler with cal_gf256
//
//class RxByteChanger extends RxDecryptHandler {
//    val trans_tdata = Wire(Vec(64,UInt(8.W)))
//    for (i <- 0 until 64){
//        trans_tdata(i) := rev_s_substitute(in_reg.tdata(i*8+7,i*8+4),in_reg.tdata(i*8+3,i*8))
//    }
//    io.out.tdata := trans_tdata.asUInt
//}
//
//class RxBitMover extends RxDecryptHandler {
//
//    val trans_tdata = Wire(Vec(4,UInt(128.W)))
//    for (i <- 0 until 4){
//        trans_tdata(i) := rev_move_bit_128(in_reg.tdata(128*i+127,128*i))
//    }
//    io.out.tdata := trans_tdata.asUInt
//}
//
//class RxMatrixMultiplier extends RxDecryptHandler {
//    val trans_tdata = Wire(Vec(64,UInt(8.W)))
//    for (i <- 0 until 4){
//        for (j <- 0 until 16){
//            trans_tdata(16*i+j) := rev_matrix_mul_result(in_reg.tdata(128*i+127,128*i),j % 4,j / 4)
//        }
//    }
//    io.out.tdata := trans_tdata.asUInt
//}
//
//class RxKeyEncoder extends RxDecryptHandler {
//    io.out.tdata := in_reg.tdata ^ Fill(4,extern_config_reg.aes_key)
//    io.out.extern_config.round_time := extern_config_reg.round_time + 1.U
//    io.out.extern_config.aes_key := get_next_key(extern_config_reg.aes_key,extern_config_reg.round_time)
//}