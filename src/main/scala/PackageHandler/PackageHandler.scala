package PackageHandler

import chisel3._
import chisel3.util._

// User-defined package handler module
class PackageHandler extends Module {

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

  val io = IO(new Bundle {
    // The default clock and reset are
    // QDMA_axi_aclk and QDMA_axi_aresetn.
    val QDMA_h2c_stub_out_tdata   = Input(UInt(512.W))
//    val QDMA_h2c_stub_out_tdest   = Input(UInt(16.W))
    val QDMA_h2c_stub_out_tuser   = Input(Bool())
    val QDMA_h2c_stub_out_tlast   = Input(Bool())
    val QDMA_h2c_stub_out_tvalid  = Input(Bool())
    val QDMA_h2c_stub_out_tready  = Output(Bool())

    val CMAC_in_tdata             = Output(UInt(512.W))
    val CMAC_in_tkeep             = Output(UInt(64.W))
    val CMAC_in_tlast             = Output(Bool())
    val CMAC_in_tvalid            = Output(Bool())
    val CMAC_in_tready            = Input(Bool())

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

    val c2h_sw_qid_mask          = Input(UInt(32.W))
  })
/*
  h2c direction
  Directly connect the two interface; tkeep is {64{1'b1}}.
  */
  io.QDMA_h2c_stub_out_tready := io.CMAC_in_tready
  io.CMAC_in_tdata            := io.QDMA_h2c_stub_out_tdata
  io.CMAC_in_tlast            := io.QDMA_h2c_stub_out_tlast
  io.CMAC_in_tvalid           := io.QDMA_h2c_stub_out_tvalid & !io.QDMA_h2c_stub_out_tuser
  io.CMAC_in_tkeep            := Fill(64,1.U(1.W))

/*
   c2h direction
   Set a buffer on c2h direction in order to receive the whole package,
   generate a new c2h header,and then send to QDMA in the first burst.
  */
  val buf = Module(new PackageBufferFifo()) // a packet's max burst is 24 (1536 bytes)

  buf.io.in_tdata             := io.CMAC_out_tdata
  buf.io.in_tvalid            := io.CMAC_out_tvalid
  buf.io.in_tlast             := io.CMAC_out_tlast
  buf.io.in_tkeep             := io.CMAC_out_tkeep
  io.CMAC_out_tready          := buf.io.in_tready

  io.QDMA_c2h_stub_in_tlast   := buf.io.out_tlast
  io.QDMA_c2h_stub_in_tvalid  := buf.io.out_tvalid
  buf.io.out_tready           := io.QDMA_c2h_stub_in_tready & !io.QDMA_c2h_stub_in_tuser

  //QDMA's tuser is used to find out whether the packet is a header or not.
  val QDMA_c2h_stub_in_tuser_status_reg = RegInit(1.U(1.W))
  when(io.QDMA_c2h_stub_in_tlast &
       io.QDMA_c2h_stub_in_tvalid &
       io.QDMA_c2h_stub_in_tready &
       !io.QDMA_c2h_stub_in_tuser) {QDMA_c2h_stub_in_tuser_status_reg := 1.U}
  .elsewhen(io.QDMA_c2h_stub_in_tvalid & io.QDMA_c2h_stub_in_tready){QDMA_c2h_stub_in_tuser_status_reg := 0.U}

  io.QDMA_c2h_stub_in_tuser := QDMA_c2h_stub_in_tuser_status_reg.asBool & io.QDMA_c2h_stub_in_tvalid

  val sav_qid_mask_reg = RegInit(io.c2h_sw_qid_mask)
  val cur_qid_mask_reg = RegInit(io.c2h_sw_qid_mask)
  val next_qid_mask = Wire(UInt(32.W))
  val cur_qid = Wire(UInt(6.W))
  val arbitDecoder = Module(new ArbitDecoder(32))

  next_qid_mask := (cur_qid_mask_reg & (~(1.U(32.W) << cur_qid)).asUInt)
  arbitDecoder.io.in_mask := cur_qid_mask_reg
  cur_qid := arbitDecoder.io.out_dec

  when((sav_qid_mask_reg =/= io.c2h_sw_qid_mask).asBool) {
    cur_qid_mask_reg := io.c2h_sw_qid_mask
    sav_qid_mask_reg := io.c2h_sw_qid_mask
  }
  .elsewhen(io.QDMA_c2h_stub_in_tlast) {
      when (next_qid_mask === 0.U) {
        cur_qid_mask_reg := sav_qid_mask_reg
      }
      .otherwise {
        cur_qid_mask_reg := next_qid_mask
      }
    }

  // transport tdata (when tuser = 1, generate a header and send it first)
  when(io.QDMA_c2h_stub_in_tuser){
    // todo: Generate new c2h header
    val Gen_c2h_hdr = Wire(new c2h_stub_hdr_beat)
    Gen_c2h_hdr.rsv6 := 0.U; Gen_c2h_hdr.rsv5_1 := 0.U; Gen_c2h_hdr.rsv5_2 := 0.U
    Gen_c2h_hdr.rsv4 := 0.U; Gen_c2h_hdr.rsv3 := 0.U; Gen_c2h_hdr.rsv2 := 0.U; Gen_c2h_hdr.rsv1 := 0.U
    Gen_c2h_hdr.cmp_data_1 := 0.U
    Gen_c2h_hdr.usr_int := 0.U; Gen_c2h_hdr.eot := 0.U; Gen_c2h_hdr.cmp_data_0 := 0.U
    Gen_c2h_hdr.flow_id := Gen_c2h_hdr.qid; Gen_c2h_hdr.tdest := Gen_c2h_hdr.qid
    //only useful information
    Gen_c2h_hdr.qid := cur_qid; // [5:0]
    Gen_c2h_hdr.pkt_len := buf.io.out_tlen
    io.QDMA_c2h_stub_in_tdata := Gen_c2h_hdr.asUInt

  }.otherwise{
    io.QDMA_c2h_stub_in_tdata := buf.io.out_tdata
  }
}
