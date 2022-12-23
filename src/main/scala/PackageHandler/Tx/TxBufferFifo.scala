package PackageHandler.Tx

import PackageHandler.Misc._
import chisel3._
import chisel3.util._

class TxBufferFifo (val depth: Int = 2,val burst_size: Int = 32) extends Module with NetFunc {
  /*
    ATTENTION: in order to avoid using multiplier, we assume that the depth and the burst size must be power of 2
   */
  assume(isPow2(burst_size) & isPow2(depth))

  class BufferInfo extends Bundle {
    val used = Bool()  // this is high when we start writing
    val valid = Bool() // this is high when we finish writing (ready to read)
    val chksum_offload = Bool()
    val pkt_type = UInt(2.W) // 0:ipv4 1:tcp
    val ip_chksum = UInt(16.W)
    val tcp_chksum = UInt(16.W)
    val burst = UInt(unsignedBitLength(burst_size).W)
  }

  val io = IO(new Bundle {
    val in  = new TxPipelineAxisIO()
    val out = Flipped(new CMACAxisIO())

    val reset_counter    = Input(Bool())
    val h2c_pack_counter = Output(UInt(32.W))
    val h2c_err_counter  = Output(UInt(32.W))
  })

  def index_inc(index: UInt): UInt ={
    (index + 1.U) & (depth-1).U
  }

  val burst_unit_num = depth * burst_size

  val in_shake_hand = io.in.tvalid & io.in.tready
  val data_buf_reg = SyncReadMem(burst_unit_num,UInt(512.W))
  // if we want to use block RAM instead of registers, refer:
  // https://blog.csdn.net/qq_39507748/article/details/118080849
  val info_buf_reg = RegInit(VecInit.fill(depth)(0.U.asTypeOf(new BufferInfo)))
  val wr_index_reg = RegInit(0.U(unsignedBitLength(burst_unit_num).W))
  val rd_index_reg = RegInit(0.U(unsignedBitLength(burst_unit_num).W))
  val wr_pos_reg   = RegInit(0.U(unsignedBitLength(burst_unit_num).W))
  val rd_pos_reg   = RegInit(0.U(unsignedBitLength(burst_unit_num).W))
  val rd_pos_next = WireDefault(0.U(unsignedBitLength(burst_unit_num).W)) // used for sync-mem

  val valid_vec = Wire(Vec(depth,Bool()))
  for (i <- 0 until depth) valid_vec(i) := info_buf_reg(i).valid
  val buf_full = valid_vec.reduceTree(_&_)

  io.in.tready := !buf_full
  val pack_counter = RegInit(0.U(32.W))
  val err_counter = RegInit(0.U(32.W))

  io.h2c_pack_counter := pack_counter
  io.h2c_err_counter := err_counter

  // ATTENTION: because we drop packet on CMAC's out fifo if tx is so fast,
  // the overflow handling function here is used only when the tx sends over-sized packets deliberately.
  val is_overflowed = RegInit(false.B)

  // checksum generation part
  val mid_ip_chksum = Wire(UInt(32.W))
  mid_ip_chksum := chksum_cal(io.in.tx_info.ip_chksum)
  val mid_tcp_chksum = Wire(UInt(32.W))
  mid_tcp_chksum := chksum_cal(io.in.tx_info.tcp_chksum)

  val end_ip_chksum  = Wire(UInt(16.W))
  end_ip_chksum := ~chksum_cal(mid_ip_chksum)
  val end_tcp_chksum = Wire(UInt(16.W))
  end_tcp_chksum := ~chksum_cal(mid_tcp_chksum)

  // write part of ring buffer
  when (io.reset_counter){ // if the counter need to be reset, then reset the register
    pack_counter := 0.U
    err_counter := 0.U
  }
    .elsewhen (in_shake_hand) {
      when (io.in.tlast) { // count the total num of the rx packet (calculated by tlast)
        pack_counter := pack_counter + 1.U
      }
      when (info_buf_reg(wr_index_reg).burst === burst_size.U){ // overflow condition

        when (!io.in.tlast) {
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

      }.elsewhen(io.in.tvalid){
        // normal condition (overflow just not started in this beat)
        when (!is_overflowed){
          // normal transmission process
          when (!info_buf_reg(wr_index_reg).used) { //ready to receive this package; first burst
            info_buf_reg(wr_index_reg).pkt_type := Cat((change_order_16(io.in.tdata(111,96)) === "h_0800".U) & (io.in.tdata(191,184) === 6.U),
                                                        change_order_16(io.in.tdata(111,96)) === "h_0800".U)
            info_buf_reg(wr_index_reg).used := true.B
            info_buf_reg(wr_index_reg).chksum_offload := io.in.extern_config.c2h_match_op(6)
          }
          data_buf_reg(wr_pos_reg) := io.in.tdata
          info_buf_reg(wr_index_reg).burst := info_buf_reg(wr_index_reg).burst + 1.U
          when (io.in.tlast) {
            info_buf_reg(wr_index_reg).valid := true.B
            info_buf_reg(wr_index_reg).ip_chksum := end_ip_chksum
            info_buf_reg(wr_index_reg).tcp_chksum := end_tcp_chksum
            wr_index_reg := index_inc(wr_index_reg)
            wr_pos_reg := index_inc(wr_index_reg) << log2Ceil(burst_size).U
          }.otherwise{
            wr_pos_reg := wr_pos_reg + 1.U
          }
        }.elsewhen (io.in.tlast) {
          // the overflow packet has been thrown, start transmission again
          is_overflowed := false.B
          wr_pos_reg := wr_index_reg << log2Ceil(burst_size).U
        }
      }
    }

  // read part of ring buffer
  val out_shake_hand = io.out.tready & io.out.tvalid // we finished shake hand in current beat

  io.out.tkeep := Fill(64,1.U(1.W))
  io.out.tuser := 0.U
  io.out.tvalid := info_buf_reg(rd_index_reg).valid
  io.out.tlast  := io.out.tvalid & (info_buf_reg(rd_index_reg).burst === 1.U)
  // if we shake hand in current beat, then in next beat we would read next data;
  // otherwise in next beat we read current data
  val rd_data = data_buf_reg(Mux(out_shake_hand, rd_pos_next, rd_pos_reg))

  //calculate and insert chksum into first beat of data


  val rev_ip_chksum = change_order_16(info_buf_reg(rd_index_reg).ip_chksum)
  val rev_tcp_chksum = change_order_16(info_buf_reg(rd_index_reg).tcp_chksum)

  io.out.tdata := Mux(rd_pos_reg === (rd_index_reg << log2Ceil(burst_size).U).asUInt && info_buf_reg(rd_index_reg).chksum_offload,
                      Cat(rd_data(511,416),
                          Mux(info_buf_reg(rd_index_reg).pkt_type(1),rev_tcp_chksum,rd_data(415,400)),
                          rd_data(399,208),
                          Mux(info_buf_reg(rd_index_reg).pkt_type(0),rev_ip_chksum ,rd_data(207,192)),
                          rd_data(191,0)), rd_data)

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
