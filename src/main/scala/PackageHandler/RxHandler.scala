package PackageHandler
import chisel3._
import chisel3.util._

class RxHandler extends Module{

  class c2h_stub_hdr_beat extends Bundle {
    val rsv6 = UInt(128.W)
    val cmp_data_1 = UInt(128.W)
    val cmp_data_0 = UInt(104.W)
    val rsv5_2 = UInt(2.W)
    val usr_int = UInt(1.W)
    val eot = UInt(1.W)
    val rsv5_1 = UInt(4.W)
    val pkt_len = UInt(16.W)
    val rsv4 = UInt(64.W)
    val rsv3 = UInt(16.W)
    val tdest = UInt(16.W)
    val rsv2  = UInt(10.W)
    val flow_id  = UInt(6.W)
    val rsv1  = UInt(5.W)
    val qid  = UInt(11.W)
  }

  val io = IO(new Bundle{
    val CMAC_out_tdata             = Input(UInt(512.W))
    val CMAC_out_tkeep             = Input(UInt(64.W))
    val CMAC_out_tlast             = Input(Bool())
    val CMAC_out_tvalid            = Input(Bool())
    val CMAC_out_tready            = Output(Bool())

    val QDMA_c2h_stub_in_tdata   = Output(UInt(512.W))
    val QDMA_c2h_stub_in_tuser   = Output(Bool())
    val QDMA_c2h_stub_in_tlast   = Output(Bool())
    val QDMA_c2h_stub_in_tvalid  = Output(Bool())
    val QDMA_c2h_stub_in_tready  = Input(Bool())

    val c2h_reset_counter        = Input(Bool())
    val c2h_sw_qid_mask          = Input(UInt(32.W))
    val c2h_pack_counter         = Output(UInt(32.W))
    val c2h_overflow_counter     = Output(UInt(32.W))
  })
  /*
     c2h direction
     Set a buffer on c2h direction in order to receive the whole package,
     generate a new c2h header,and then send to QDMA in the first burst.
    */
  val rx_buffer_fifo = Module(new PackageBufferFifo()) // a packet's max burst is 24 (1536 bytes)

  rx_buffer_fifo.io.in_tdata             := io.CMAC_out_tdata
  rx_buffer_fifo.io.in_tvalid            := io.CMAC_out_tvalid
  rx_buffer_fifo.io.in_tlast             := io.CMAC_out_tlast
  rx_buffer_fifo.io.in_tkeep             := io.CMAC_out_tkeep
  io.CMAC_out_tready          := rx_buffer_fifo.io.in_tready

  rx_buffer_fifo.io.reset_counter := io.c2h_reset_counter
  io.c2h_pack_counter := rx_buffer_fifo.io.out_pack_counter
  io.c2h_overflow_counter := rx_buffer_fifo.io.out_overflow_counter

  //QDMA's tuser is used to find out whether the packet is a header or not.
  val QDMA_c2h_stub_in_tuser_reg = RegInit(true.B)
  when (io.QDMA_c2h_stub_in_tvalid & io.QDMA_c2h_stub_in_tready){
    QDMA_c2h_stub_in_tuser_reg := io.QDMA_c2h_stub_in_tlast
  }
  // we give tuser only when tvalid is high
  io.QDMA_c2h_stub_in_tuser := QDMA_c2h_stub_in_tuser_reg & io.QDMA_c2h_stub_in_tvalid

  // maybe we need to use sequential logic in package_filter to avoid timing violation

  val package_filter = Module(new PackageFilter())

  package_filter.io.in_tdata  := rx_buffer_fifo.io.out_tdata
  package_filter.io.in_tvalid := rx_buffer_fifo.io.out_tvalid
  package_filter.io.in_tlast  := rx_buffer_fifo.io.out_tlast
  package_filter.io.in_tlen   := rx_buffer_fifo.io.out_tlen
  rx_buffer_fifo.io.out_tready := package_filter.io.in_tready

  package_filter.io.in_sw_qid_mask := io.c2h_sw_qid_mask
  io.QDMA_c2h_stub_in_tvalid := package_filter.io.out_tvalid
  // when we send the header, the buffer should be blocked and the tlast should be low
  io.QDMA_c2h_stub_in_tlast  := package_filter.io.out_tlast & !io.QDMA_c2h_stub_in_tuser
  package_filter.io.out_tready := io.QDMA_c2h_stub_in_tready & !io.QDMA_c2h_stub_in_tuser

  // transport tdata (when tuser = 1, generate a header and send it first)
  when(io.QDMA_c2h_stub_in_tuser){
    // Generate new c2h header
    val Gen_c2h_hdr = Wire(new c2h_stub_hdr_beat)
    Gen_c2h_hdr.rsv6 := 0.U; Gen_c2h_hdr.rsv5_1 := 0.U; Gen_c2h_hdr.rsv5_2 := 0.U
    Gen_c2h_hdr.rsv4 := 0.U; Gen_c2h_hdr.rsv3 := 0.U; Gen_c2h_hdr.rsv2 := 0.U; Gen_c2h_hdr.rsv1 := 0.U
    Gen_c2h_hdr.cmp_data_1 := 0.U
    Gen_c2h_hdr.usr_int := 0.U; Gen_c2h_hdr.eot := 0.U; Gen_c2h_hdr.cmp_data_0 := 0.U
    Gen_c2h_hdr.flow_id := Gen_c2h_hdr.qid; Gen_c2h_hdr.tdest := Gen_c2h_hdr.qid
    //only useful information
    Gen_c2h_hdr.qid := package_filter.io.out_qid; // [5:0]
    Gen_c2h_hdr.pkt_len := package_filter.io.out_tlen
    io.QDMA_c2h_stub_in_tdata := Gen_c2h_hdr.asUInt

  }.otherwise{
    io.QDMA_c2h_stub_in_tdata := package_filter.io.out_tdata
  }
}