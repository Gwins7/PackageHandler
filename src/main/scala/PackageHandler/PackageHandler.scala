package PackageHandler

import chisel3._
import chisel3.util._

// User-defined package handler module
class PackageHandler extends Module {
  val io = IO(new Bundle {
    // The default clock and reset are
    // QDMA_axi_aclk and QDMA_axi_aresetn.
    //    val QDMA_h2c_stub_out_tdest   = Input(UInt(16.W))
    val QDMA_h2c_stub_out_tdata   = Input(UInt(512.W))
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

    val reset_counter            = Input(Bool())

    val c2h_sw_qid_mask          = Input(UInt(32.W))
    val c2h_pack_counter         = Output(UInt(32.W))
    val c2h_err_counter          = Output(UInt(32.W))

    val h2c_pack_counter         = Output(UInt(32.W))
    val h2c_err_counter          = Output(UInt(32.W))
  })

  val tx_handler = Module(new TxHandler)
  io.QDMA_h2c_stub_out_tready  := tx_handler.io.QDMA_h2c_stub_out_tready
  tx_handler.io.QDMA_h2c_stub_out_tdata  := io.QDMA_h2c_stub_out_tdata
  tx_handler.io.QDMA_h2c_stub_out_tvalid := io.QDMA_h2c_stub_out_tvalid
  tx_handler.io.QDMA_h2c_stub_out_tlast  := io.QDMA_h2c_stub_out_tlast
  tx_handler.io.QDMA_h2c_stub_out_tuser  := io.QDMA_h2c_stub_out_tuser

  tx_handler.io.CMAC_in_tready := io.CMAC_in_tready
  io.CMAC_in_tdata  := tx_handler.io.CMAC_in_tdata
  io.CMAC_in_tvalid := tx_handler.io.CMAC_in_tvalid
  io.CMAC_in_tlast  := tx_handler.io.CMAC_in_tlast
  io.CMAC_in_tkeep  := tx_handler.io.CMAC_in_tkeep

  tx_handler.io.reset_counter := io.reset_counter
  io.h2c_pack_counter := tx_handler.io.h2c_pack_counter
  io.h2c_err_counter := tx_handler.io.h2c_err_counter

  val rx_handler = Module(new RxHandler)
  io.CMAC_out_tready  := rx_handler.io.CMAC_out_tready
  rx_handler.io.CMAC_out_tdata  := io.CMAC_out_tdata
  rx_handler.io.CMAC_out_tvalid := io.CMAC_out_tvalid
  rx_handler.io.CMAC_out_tlast  := io.CMAC_out_tlast
  rx_handler.io.CMAC_out_tkeep  := io.CMAC_out_tkeep

  rx_handler.io.QDMA_c2h_stub_in_tready := io.QDMA_c2h_stub_in_tready
  io.QDMA_c2h_stub_in_tdata  := rx_handler.io.QDMA_c2h_stub_in_tdata
  io.QDMA_c2h_stub_in_tvalid := rx_handler.io.QDMA_c2h_stub_in_tvalid
  io.QDMA_c2h_stub_in_tlast  := rx_handler.io.QDMA_c2h_stub_in_tlast
  io.QDMA_c2h_stub_in_tuser  := rx_handler.io.QDMA_c2h_stub_in_tuser

  rx_handler.io.reset_counter            := io.reset_counter
  rx_handler.io.c2h_sw_qid_mask          := io.c2h_sw_qid_mask
  io.c2h_pack_counter                    := rx_handler.io.c2h_pack_counter
  io.c2h_err_counter                := rx_handler.io.c2h_err_counter
}
