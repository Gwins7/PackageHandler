package PackageHandler.Rx

import PackageHandler.Misc._
import chisel3._
import chisel3.util._

class RxPipelineHandler extends Module with NetFunc{
  val io = IO(new Bundle {
    val in = new RxPipelineAxisIO()
    val out = Flipped(new RxPipelineAxisIO())
  })
  val in_shake_hand  = io.in.tready  & io.in.tvalid
  val out_shake_hand = io.out.tready & io.out.tvalid
  val in_reg = RegEnable(Cat(io.in.rx_info.asUInt,io.in.tuser,io.in.tdata,io.in.tvalid,io.in.tlast),1.U,in_shake_hand).asTypeOf(new RxPipelineHandlerReg)
  val extern_config_reg = RegEnable(io.in.extern_config.asUInt,0.U,in_shake_hand).asTypeOf(new ExternConfig)

  val first_beat_reg = RegEnable(in_reg.tlast,true.B,in_shake_hand)
  val in_reg_used_reg = RegInit(false.B)
  when (in_shake_hand){
    in_reg_used_reg := true.B
  }.elsewhen(out_shake_hand){
    in_reg_used_reg := false.B
  }

  io.out.tuser   := WireDefault(in_reg.tuser)
  io.out.tdata   := WireDefault(in_reg.tdata)
  io.out.tvalid  := WireDefault(in_reg.tvalid & in_reg_used_reg)
  io.out.tlast   := WireDefault(in_reg.tlast)
  io.out.rx_info := WireDefault(in_reg.rx_info)
  io.in.tready   := WireDefault(io.out.tready | !in_reg_used_reg)
  io.out.extern_config := WireDefault(extern_config_reg)
}

class RxChksumVerifier extends RxPipelineHandler {
/*
  Calculate chksum to be checked later
  attention: the real verification is in RxBufferFifo
 */
val cal_tdata = Mux(in_shake_hand,io.in.tdata,in_reg.tdata)
  // ip header (without existed checksum)
  val ip_chksum_cal = Module(new ReduceAddSync(10,32))
  for (i <- 0 until 10) {
    ip_chksum_cal.io.in_vec(i) := change_order_16(cal_tdata(16*i+127,16*i+112))
  }
  val ip_chksum_result = ip_chksum_cal.io.out_sum

  // tcp payload
  val tcp_pld_chksum_cal = Module(new ReduceAddSync(32,32))
  for (i <- 0 until 32) {
    tcp_pld_chksum_cal.io.in_vec(i) := change_order_16(cal_tdata(16*i+15,16*i))
  }
  val tcp_pld_chksum_result = tcp_pld_chksum_cal.io.out_sum

  // tcp header (attention: some information from ip header is needed) (without existed checksum)
  val tcp_hdr_chksum_cal = Module(new ReduceAddSync(32,32))
  for (i <- 0 until 32) {
    if (i==8 || i>=13) tcp_hdr_chksum_cal.io.in_vec(i) := change_order_16(cal_tdata(16*i+15,16*i))
    else if (i==11) tcp_hdr_chksum_cal.io.in_vec(i) := cal_tdata(16*i+15,16*i+8)
    else tcp_hdr_chksum_cal.io.in_vec(i) := 0.U
  }
  val tcp_hdr_chksum_result = tcp_hdr_chksum_cal.io.out_sum - 20.U // - ip header length

  val cal_ip_chksum_reg = RegInit(0.U(32.W))
  val cal_tcp_chksum_reg = RegInit(0.U(32.W))

  when (in_shake_hand) {
    when (first_beat_reg) {
      cal_ip_chksum_reg := ip_chksum_result
      cal_tcp_chksum_reg := tcp_hdr_chksum_result
    }.otherwise{
      cal_tcp_chksum_reg := cal_tcp_chksum_reg + tcp_pld_chksum_result
    }
  }
  io.out.rx_info.ip_chksum := Mux(first_beat_reg,ip_chksum_result,cal_ip_chksum_reg)
  io.out.rx_info.tcp_chksum := Mux(first_beat_reg,tcp_hdr_chksum_result,cal_tcp_chksum_reg + tcp_pld_chksum_result)

}

// op = 0: do nothing

class RxRSSHashFilter extends RxPipelineHandler {
// op = 1; arg1 = hash_seed; arg2 = hash_mask
  val hash_key = io.in.extern_config.c2h_match_arg1 // symmetric: fill(20,"h_6d5a".U), we just set 6d5a6d5a

  val cal_tdata = Mux(in_shake_hand,io.in.tdata,in_reg.tdata)
  val src_ip   = change_order_32(cal_tdata(239,208))
  val dst_ip   = change_order_32(cal_tdata(271,240))
  val src_port = change_order_16(cal_tdata(287,272))
  val dst_port = change_order_16(cal_tdata(303,288))
  val info = Cat(src_ip,dst_ip,src_port,dst_port) // 96 bits

  val cal_hash_key_vec = Wire(Vec(96,UInt(32.W)))
  for (i <- 0 until 96) {
    if (i%32==31) cal_hash_key_vec(i) := Mux(info(i),hash_key(31,0),0.U)
    else cal_hash_key_vec(i) := Mux(info(i),Cat(hash_key(i%32,0),hash_key(31,(i%32)+1)),0.U)
//    if (i%16==15) cal_hash_key(i) := Mux(info(i),Cat(hash_key(15,0),hash_key(15,0)),0.U)
//    else cal_hash_key(i) := Mux(info(i),Cat(hash_key(i%16,0),hash_key(15,0),hash_key(15,(i%16)+1)),0.U)
  }
  val hash_xor_sync = Module(new ReduceXorSync(96,32))
  val hash_xor_result = Wire(UInt(32.W))
  for (i <- 0 until 96) {
    hash_xor_sync.io.in_vec(i) := cal_hash_key_vec(i)
  }
  hash_xor_result := hash_xor_sync.io.out_sum

  //  save the qid calculated in first beat and use it for whole packet
    val cal_qid = hash_xor_result(1,0) & io.in.extern_config.c2h_match_arg2(1,0)
    val cur_packet_qid_reg = RegEnable(cal_qid,0.U,in_shake_hand & first_beat_reg)
  when (io.in.extern_config.c2h_match_op === 1.U){
    io.out.rx_info.qid := Mux(first_beat_reg,cal_qid,cur_packet_qid_reg)
  }
}

// match function
class RxMatchFilter extends RxPipelineHandler {
  // op = 2 ~ 7: Match
  // op = 2: == | op = 3: !=
  // op = 4: >  | op = 5: <
  // op = 6: >= | op = 7: <=
  // arg1:place; arg2:content; arg3:mask
  def compare(op:UInt,mask:UInt,src1:UInt,src2:UInt):UInt = {
    val a = Mux((op === 5.U) || (op === 7.U),src2 & mask,src1 & mask)
    val b = Mux((op === 5.U) || (op === 7.U),src1 & mask,src2 & mask)
      (op === 2.U && a === b) || (op === 3.U && a =/= b) || ((op === 4.U || op === 5.U) && a > b) || ((op === 6.U || op === 7.U) && a >= b)
  }

  val match_op      = extern_config_reg.c2h_match_op
  val match_content = extern_config_reg.c2h_match_arg1
  val match_mask    = extern_config_reg.c2h_match_arg2
  val match_place   = extern_config_reg.c2h_match_arg3 // start from 0

  val match_found = WireDefault(false.B)
  val match_found_reg = RegInit(false.B)
  val match_continue_reg = RegInit(false.B)

  val previous_tdata_reg = RegInit(0.U(24.W))

  val cur_place = Mux(in_reg.rx_info.tlen(5,0) === 0.U,in_reg.rx_info.tlen,Cat(in_reg.rx_info.tlen(15,6)+1.U,0.U(6.W)))
  //ceil align 64; we assum
  // e that the padding 0 in the tlast beat won't interfere matching process
  val in_beat_place = match_place - (cur_place - 64.U)
  val in_beat_content = (in_reg.tdata >> (in_beat_place << 3.U))(31,0)

  when (in_shake_hand) {
    previous_tdata_reg := in_reg.tdata(511,488)
    when (match_continue_reg) {
      // partly matched before
      match_continue_reg := false.B
      val match_continue_len = in_beat_place + 4.U // remain len; 1,2,3
      val match_continue_val = (Fill(32,match_continue_len === 1.U) & Cat(in_reg.tdata(7,0), previous_tdata_reg(23,0)))  |
                               (Fill(32,match_continue_len === 2.U) & Cat(in_reg.tdata(15,0),previous_tdata_reg(23,8)))  |
                               (Fill(32,match_continue_len === 3.U) & Cat(in_reg.tdata(23,0),previous_tdata_reg(23,16)))

      match_found := compare(match_op,match_mask,change_order_32(match_continue_val),match_content)

    }.elsewhen (match_place >= cur_place - 64.U) {
        // start in current beat
        when (match_place <= cur_place - 4.U) {
          // totally in current beat
          match_found := compare(match_op,match_mask,change_order_32(in_beat_content),match_content)

        }.elsewhen (match_place < cur_place && !in_reg.tlast) {
          // between current beat and next beat
          match_continue_reg := true.B
        }
      }

    when (first_beat_reg) {
      match_found_reg := match_found
    }.otherwise{
      match_found_reg := match_found_reg | match_found
    }
  }
  when (io.in.extern_config.c2h_match_op >= 2.U && io.in.extern_config.c2h_match_op <= 7.U) {
    io.out.rx_info.qid := Mux(match_found_reg,1.U,in_reg.rx_info.qid)
  }
}

// search function
class RxRESearcher extends RxPipelineHandler {
  // op = 8: search
  // arg1:place; arg2:content; arg3:mask

  val search_op      = io.in.extern_config.c2h_match_op
  val search_content = io.in.extern_config.c2h_match_arg1
  val search_mask    = io.in.extern_config.c2h_match_arg2

  val search_value = search_content & search_mask

  def search (src:UInt): Bool = {
    (change_order_32(src) & search_mask) === search_value
  }

  val previous_tdata_reg = RegInit(0.U(24.W))
  val cal_tdata = Mux(in_shake_hand,io.in.tdata,in_reg.tdata)

  val search_vec = Wire(Vec(64,Bool()))
  for (i <- 0 until 61) {
    search_vec(i) := search(cal_tdata(8*i+31,8*i))
  }
  search_vec(61) := Mux(Mux(in_shake_hand,in_reg.tlast,first_beat_reg),0.U,search(Mux(in_shake_hand,Cat(io.in.tdata( 7,0),in_reg.tdata(511,488)),Cat(in_reg.tdata( 7,0),previous_tdata_reg(23, 0)))))
  search_vec(62) := Mux(Mux(in_shake_hand,in_reg.tlast,first_beat_reg),0.U,search(Mux(in_shake_hand,Cat(io.in.tdata(15,0),in_reg.tdata(511,496)),Cat(in_reg.tdata(15,0),previous_tdata_reg(23, 8)))))
  search_vec(63) := Mux(Mux(in_shake_hand,in_reg.tlast,first_beat_reg),0.U,search(Mux(in_shake_hand,Cat(io.in.tdata(23,0),in_reg.tdata(511,504)),Cat(in_reg.tdata(23,0),previous_tdata_reg(23,16)))))

  val search_or_sync = Module(new ReduceOrSync(64,1))
  val search_or_result = Wire(Bool())
  for (i <- 0 until 64) {
    search_or_sync.io.in_vec(i) := search_vec(i)
  }
  search_or_result := search_or_sync.io.out_sum

  val search_found_reg = RegInit(false.B)
  when (in_shake_hand) {
    previous_tdata_reg := in_reg.tdata(511,488)
    when (first_beat_reg) {
      search_found_reg := search_or_result
    }.otherwise{
      search_found_reg := search_found_reg | search_or_result
    }
  }

  when (io.in.extern_config.c2h_match_op === 8.U) {
    io.out.rx_info.qid := Mux(search_found_reg | search_or_result,1.U,in_reg.rx_info.qid)
  }
}
// notice:
// if we want to cal qid not only by the first beat but also by the whole packet,
// we need to add fifo in this pipeline, and use qid calculated in tlast beat