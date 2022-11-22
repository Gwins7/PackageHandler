package PackageHandler

import chisel3._
import chisel3.util._

class RxBufferFifo (val depth: Int = 2,val burst_size: Int = 32) extends Module with netfunc {
  /*
    ATTENTION: in order to avoid using multiplier, we assume that the depth and the burst size must be power of 2
   */
  assume(isPow2(burst_size) & isPow2(depth))

  class BufferInfo extends Bundle {
    val used = Bool()  // this is high when we start writing
    val valid = Bool() // this is high when we finish writing (ready to read)
    val len = UInt(16.W) // actual length of current packet; used to generate c2h header
    val ip_chksum = UInt(32.W)
    val tcp_chksum = UInt(32.W)
    val burst = UInt(unsignedBitLength(burst_size).W)
  }

  val io = IO(new Bundle {
    val in  = new CMACAxisIO()
    val out = Flipped(new RxPipelineAxisIO())

    val reset_counter    = Input(Bool())
    val c2h_pack_counter = Output(UInt(32.W))
    val c2h_err_counter  = Output(UInt(32.W))
  })

  def index_inc(index: UInt): UInt ={
    (index + 1.U) & (depth-1).U
  }

  val burst_unit_num = depth * burst_size

  val in_shake_hand = io.in.tvalid & io.in.tready

  // for timing reason, we save axis_in signal
  // we handle them like sync mem
  val in_tdata_reg =  RegEnable(io.in.tdata, 0.U, in_shake_hand)
  val in_tkeep_reg =  RegEnable(io.in.tkeep, 0.U, in_shake_hand)
  val in_tuser_reg =  RegEnable(io.in.tuser, false.B, in_shake_hand)
  val in_tlast_reg =  RegEnable(io.in.tlast, false.B, in_shake_hand)
  val in_tvalid_reg = RegEnable(io.in.tvalid, false.B, in_shake_hand)

  val data_buf_reg = SyncReadMem(burst_unit_num,UInt(512.W))
  // if we want to use block RAM instead of registers, refer:
  // https://blog.csdn.net/qq_39507748/article/details/118080849
  val info_buf_reg = RegInit(VecInit.fill(depth)(0.U.asTypeOf(new BufferInfo)))
  val wr_index_reg = RegInit(0.U(unsignedBitLength(burst_unit_num).W))
  val rd_index_reg = RegInit(0.U(unsignedBitLength(burst_unit_num).W))
  val wr_pos_reg   = RegInit(0.U(unsignedBitLength(burst_unit_num).W))
  val rd_pos_reg   = RegInit(0.U(unsignedBitLength(burst_unit_num).W))
  val rd_pos_next = WireDefault(0.U(unsignedBitLength(burst_unit_num).W)) // used for sync-mem

  val cal_tkeep = Mux(in_shake_hand,io.in.tkeep,in_tkeep_reg)
  val burst_size_cal = Module(new ReduceAddSync(64,8))
  for (i <- 0 until 64) burst_size_cal.io.in_vec(i) := cal_tkeep(i)
  val cur_burst_size = burst_size_cal.io.out_sum

  val valid_vec = Wire(Vec(depth,Bool()))
  for (i <- 0 until depth) valid_vec(i) := info_buf_reg(i).valid
  val buf_full = valid_vec.reduceTree(_&_)

  io.in.tready := !buf_full
  val pack_counter = RegInit(0.U(32.W))
  val err_counter = RegInit(0.U(32.W))
  val wrong_chksum_counter = RegInit(0.U(32.W))

  io.c2h_pack_counter := pack_counter
  io.c2h_err_counter := err_counter + wrong_chksum_counter

  val is_overflowed = RegInit(false.B)
  // ATTENTION: because we drop packet on CMAC's out fifo if tx is so fast,
  // the overflow handling function here is used only when the tx sends over-sized packets deliberately.

  //chksum part
  val cal_tdata = Mux(in_shake_hand,io.in.tdata,in_tdata_reg)

  // ip header
  val ip_chksum_cal = Module(new ReduceAddSync(10,32))
  for (i <- 0 until 10) {
    ip_chksum_cal.io.in_vec(i) := change_order_16(cal_tdata(16*i+127,16*i+112))
  }
  val ip_chksum_result = ip_chksum_cal.io.out_sum

  //tcp payload
  val tcp_pld_chksum_cal = Module(new ReduceAddSync(32,32))
  for (i <- 0 until 32) {
    tcp_pld_chksum_cal.io.in_vec(i) := change_order_16(cal_tdata(16*i+15,16*i))
  }
  val tcp_pld_chksum_result = tcp_pld_chksum_cal.io.out_sum

  // tcp header (attention: some information from ip header is needed)
  val tcp_hdr_chksum_cal = Module(new ReduceAddSync(32,32))
  for (i <- 0 until 32) {
    if (i==8 || i>=13) tcp_hdr_chksum_cal.io.in_vec(i) := change_order_16(cal_tdata(16*i+15,16*i))
    else if (i==11) tcp_hdr_chksum_cal.io.in_vec(i) := cal_tdata(16*i+15,16*i+8)
    else tcp_hdr_chksum_cal.io.in_vec(i) := 0.U
  }
  val tcp_hdr_chksum_result = tcp_hdr_chksum_cal.io.out_sum - 20.U

  // write part of ring buffer
  when (io.reset_counter){ // if the counter need to be reset, then reset the register
    pack_counter := 0.U
    err_counter := 0.U
  }
  .elsewhen (in_shake_hand) {
    when (in_tlast_reg) { // count the total num of the rx packet (calculated by tlast)
      pack_counter := pack_counter + 1.U
    }
    when (info_buf_reg(wr_index_reg).burst === burst_size.U){ // overflow condition

      when (!in_tlast_reg) {
        is_overflowed := true.B
        // if overflow in tlast beat, then we shouldn't set this register,
        // otherwise the next burst will be lost;
        // the overflow counter will +1 to save this information correctly.
      }
        .otherwise{
          wr_pos_reg := wr_index_reg << log2Ceil(burst_size).U
          // rewrite the same wr unit
        }
      err_counter := err_counter + 1.U // count overflow packet num
      info_buf_reg(wr_index_reg) := 0.U.asTypeOf(new BufferInfo)

    }.elsewhen (in_tlast_reg && in_tuser_reg) {
      err_counter := err_counter + 1.U
      wr_pos_reg := wr_index_reg << log2Ceil(burst_size).U
      info_buf_reg(wr_index_reg) := 0.U.asTypeOf(new BufferInfo)
    }.elsewhen(in_tvalid_reg){
      // normal condition (overflow just not started in this beat)
      when (!is_overflowed){
        // normal transmission process
        when (!info_buf_reg(wr_index_reg).used) { //ready to receive this package; first burst
          info_buf_reg(wr_index_reg).used := true.B
          info_buf_reg(wr_index_reg).ip_chksum := ip_chksum_result
          info_buf_reg(wr_index_reg).tcp_chksum := tcp_hdr_chksum_result
        }.otherwise{
          info_buf_reg(wr_index_reg).tcp_chksum := info_buf_reg(wr_index_reg).tcp_chksum + tcp_pld_chksum_result
        }

        data_buf_reg(wr_pos_reg) := in_tdata_reg
        info_buf_reg(wr_index_reg).burst := info_buf_reg(wr_index_reg).burst + 1.U
        info_buf_reg(wr_index_reg).len := info_buf_reg(wr_index_reg).len + cur_burst_size
        when (in_tlast_reg) {
          info_buf_reg(wr_index_reg).valid := true.B
          wr_index_reg := index_inc(wr_index_reg)
          wr_pos_reg := index_inc(wr_index_reg) << log2Ceil(burst_size).U
        }.otherwise{
          wr_pos_reg := wr_pos_reg + 1.U
        }
      }.elsewhen (in_tlast_reg) {
        // the overflow packet has been thrown, start transmission again
          is_overflowed := false.B
          wr_pos_reg := wr_index_reg << log2Ceil(burst_size).U
      }
    }
  }

  // read part of ring buffer
  val out_shake_hand = io.out.tready & info_buf_reg(rd_index_reg).valid // we finished shake hand in current beat

  // verify the checksum, throw the packets which have invalid checksum(tcp/ip) and count
  val mid_ip_chksum = Wire(UInt(32.W))
  mid_ip_chksum := chksum_cal(info_buf_reg(rd_index_reg).ip_chksum)
  val mid_tcp_chksum = Wire(UInt(32.W))
  mid_tcp_chksum := chksum_cal(info_buf_reg(rd_index_reg).tcp_chksum)

  val end_ip_chksum  = Wire(UInt(16.W))
  end_ip_chksum := ~chksum_cal(mid_ip_chksum)
  val end_tcp_chksum = Wire(UInt(16.W))
  end_tcp_chksum := ~chksum_cal(mid_tcp_chksum)

  io.out.tvalid := info_buf_reg(rd_index_reg).valid && (end_ip_chksum === 0.U) && (end_tcp_chksum === 0.U)
  io.out.tlen   := info_buf_reg(rd_index_reg).len
  io.out.tlast  := info_buf_reg(rd_index_reg).valid & (info_buf_reg(rd_index_reg).burst === 1.U)
  wrong_chksum_counter := wrong_chksum_counter + (io.out.tlast && !((end_ip_chksum === 0.U) && (end_tcp_chksum === 0.U)))
  // if we shake hand in current beat, then in next beat we would read next data;
  // otherwise in next beat we read current data
  io.out.tdata  := data_buf_reg(Mux(out_shake_hand, rd_pos_next, rd_pos_reg))

  when (out_shake_hand){
      // data_buf_reg(rd_pos_reg) := 0.U
      rd_pos_reg := rd_pos_next

      when (info_buf_reg(rd_index_reg).burst === 1.U) {
        info_buf_reg(rd_index_reg) := 0.U.asTypeOf(new BufferInfo)
        rd_index_reg := index_inc(rd_index_reg)
      }.otherwise{
        info_buf_reg(rd_index_reg).burst := info_buf_reg(rd_index_reg).burst - 1.U
      }
  }

  when (info_buf_reg(rd_index_reg).burst === 1.U) {
    rd_pos_next := index_inc(rd_index_reg) << log2Ceil(burst_size).U
  }.otherwise{
    rd_pos_next := rd_pos_reg + 1.U
  }
}
