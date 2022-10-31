package PackageHandler

import chisel3._
import chisel3.util._

class PackageBufferFifo (val depth: Int = 2,val burst_size: Int = 32) extends Module {
  /*
    ATTENTION: in order to avoid using multiplier, we assume that the depth and the burst size must be power of 2
   */
  assume(isPow2(burst_size) & isPow2(depth))

  class BufferInfo extends Bundle {
    val used = Bool()  // this is high when we start writing
    val valid = Bool() // this is high when we finish writing (ready to read)
    val len = UInt(16.W) // actual length of current packet; used to generate c2h header
    val burst = UInt(unsignedBitLength(burst_size).W)
  }

  val io = IO(new Bundle {
    val in_tdata = Input(UInt(512.W))
    val in_tlast = Input(Bool())
    val in_tvalid = Input(Bool())
    val in_tready = Output(Bool())
    val in_tkeep = Input(UInt(64.W))

    val out_tlen = Output(UInt(16.W))
    val out_tdata = Output(UInt(512.W))
    val out_tlast = Output(Bool())
    val out_tvalid = Output(Bool())
    val out_tready = Input(Bool())
  })

  def index_inc(index: UInt): UInt ={
    (index + 1.U) & (depth-1).U
  }
  val burst_unit_num = depth * burst_size

  val data_buf_reg = SyncReadMem(burst_unit_num,UInt(512.W))
  // if we want to use block RAM instead of registers, refer:
  // https://blog.csdn.net/qq_39507748/article/details/118080849
  val info_buf_reg = RegInit(VecInit.fill(depth)(0.U.asTypeOf(new BufferInfo)))
  val wr_index_reg = RegInit(0.U(unsignedBitLength(burst_unit_num).W))
  val rd_index_reg = RegInit(0.U(unsignedBitLength(burst_unit_num).W))
  val wr_pos_reg   = RegInit(0.U(unsignedBitLength(burst_unit_num).W))
  val rd_pos_reg   = RegInit(0.U(unsignedBitLength(burst_unit_num).W))
  val rd_pos_next = WireDefault(0.U(unsignedBitLength(burst_unit_num).W)) // used for sync-mem

  val burst_vec = Wire(Vec(64,UInt(8.W)))
  for (i <- 0 until 64) burst_vec(i) := io.in_tkeep(i)
  val cur_burst_size = burst_vec.reduceTree(_+_)

  val valid_vec = Wire(Vec(depth,Bool()))
  for (i <- 0 until depth) valid_vec(i) := info_buf_reg(i).valid
  val buf_full = valid_vec.reduceTree(_&_)

  io.in_tready := !buf_full

  //write part of ring buffer
  when (io.in_tready & io.in_tvalid) {

    when (!info_buf_reg(wr_index_reg).used) { //ready to receive this package
      info_buf_reg(wr_index_reg).used := true.B
    }

    when (io.in_tlast) {
      info_buf_reg(wr_index_reg).valid := true.B
      wr_index_reg := index_inc(wr_index_reg)
      wr_pos_reg := index_inc(wr_index_reg) << log2Ceil(burst_size).U
    }.otherwise(
      wr_pos_reg := wr_pos_reg + 1.U
    )

    data_buf_reg(wr_pos_reg) := io.in_tdata
    info_buf_reg(wr_index_reg).burst := info_buf_reg(wr_index_reg).burst + 1.U
    info_buf_reg(wr_index_reg).len := info_buf_reg(wr_index_reg).len + cur_burst_size
  }

  //read part of ring buffer
  val shake_hand = io.out_tready & io.out_tvalid // we finished shake hand in current beat

  io.out_tvalid := info_buf_reg(rd_index_reg).valid
  io.out_tlen   := info_buf_reg(rd_index_reg).len
  io.out_tlast  := io.out_tvalid & (info_buf_reg(rd_index_reg).burst === 1.U)
  // if we shake hand in current beat, then in next beat we would read next data;
  // otherwise in next beat we read current data
  io.out_tdata  := data_buf_reg(Mux(shake_hand, rd_pos_next, rd_pos_reg))

  when (shake_hand){
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