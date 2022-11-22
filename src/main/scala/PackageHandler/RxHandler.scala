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
    val CMAC_out         = new CMACAxisIO()
    val QDMA_c2h_stub_in = Flipped(new QDMAAxisIO())

    val reset_counter            = Input(Bool())
    val c2h_pack_counter         = Output(UInt(32.W))
    val c2h_err_counter          = Output(UInt(32.W))
    val extern_config            = Input(new ExternConfig())
  })
  /*
     c2h direction
     Set a buffer on c2h direction in order to receive the whole package,
     generate a new c2h header,and then send to QDMA in the first burst.
    */
  val rx_buffer_fifo = Module(new RxBufferFifo()) // a packet's max burst is 24 (1536 bytes)

  io.CMAC_out <> rx_buffer_fifo.io.in

  rx_buffer_fifo.io.reset_counter := io.reset_counter
  io.c2h_pack_counter := rx_buffer_fifo.io.c2h_pack_counter
  io.c2h_err_counter := rx_buffer_fifo.io.c2h_err_counter
  //QDMA's tuser is used to find out whether the packet is a header or not.
  val QDMA_c2h_stub_in_tuser_reg = RegInit(true.B)
  when (io.QDMA_c2h_stub_in.tvalid & io.QDMA_c2h_stub_in.tready){
    QDMA_c2h_stub_in_tuser_reg := io.QDMA_c2h_stub_in.tlast
  }
  // we give tuser only when tvalid is high
  io.QDMA_c2h_stub_in.tuser := QDMA_c2h_stub_in_tuser_reg & io.QDMA_c2h_stub_in.tvalid

  // maybe we need to use sequential logic in package_filter to avoid timing violation

  val package_filter = Module(new PackageFilterPipeline())

  package_filter.io.in <> rx_buffer_fifo.io.out
  package_filter.io.extern_config := io.extern_config

  io.QDMA_c2h_stub_in.tvalid := package_filter.io.out.tvalid
  // when we send the header, the buffer should be blocked and the tlast should be low
  io.QDMA_c2h_stub_in.tlast  := package_filter.io.out.tlast & !io.QDMA_c2h_stub_in.tuser
  package_filter.io.out.tready := io.QDMA_c2h_stub_in.tready & !io.QDMA_c2h_stub_in.tuser

  // transport tdata (when tuser = 1, generate a header and send it first)
  when(io.QDMA_c2h_stub_in.tuser){
    // Generate new c2h header
    val Gen_c2h_hdr = WireDefault(0.U.asTypeOf(new c2h_stub_hdr_beat))
    Gen_c2h_hdr.flow_id := Gen_c2h_hdr.qid; Gen_c2h_hdr.tdest := Gen_c2h_hdr.qid
    //only useful information
    Gen_c2h_hdr.qid := package_filter.io.c2h_qid; // [5:0]
    Gen_c2h_hdr.pkt_len := package_filter.io.out.tlen
    io.QDMA_c2h_stub_in.tdata := Gen_c2h_hdr.asUInt

  }.otherwise{
    io.QDMA_c2h_stub_in.tdata := package_filter.io.out.tdata
  }
}
