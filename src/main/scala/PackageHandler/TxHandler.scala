package PackageHandler

import chisel3._
import chisel3.util._

class TxHandler extends Module{
  val io = IO(new Bundle {
    // val QDMA_h2c_stub_out_tdest   = Input(UInt(16.W))
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

    val reset_counter            = Input(Bool())
    val h2c_pack_counter         = Output(UInt(32.W))
    val h2c_overflow_counter     = Output(UInt(32.W))
  })
  /*
  h2c direction
  Directly connect the two interface; tkeep is {64{1'b1}}.
  */
  val tx_buffer_fifo = Module(new TxBufferFifo())
  tx_buffer_fifo.io.in_tlast := io.QDMA_h2c_stub_out_tlast
  tx_buffer_fifo.io.in_tvalid := io.QDMA_h2c_stub_out_tvalid & !io.QDMA_h2c_stub_out_tuser
  tx_buffer_fifo.io.in_tdata := io.QDMA_h2c_stub_out_tdata
  io.QDMA_h2c_stub_out_tready := tx_buffer_fifo.io.in_tready

  tx_buffer_fifo.io.reset_counter := io.reset_counter
  io.h2c_pack_counter := tx_buffer_fifo.io.out_pack_counter
  io.h2c_overflow_counter := tx_buffer_fifo.io.out_overflow_counter

  io.CMAC_in_tkeep := "h_ffffffff_ffffffff_ffffffff_ffffffff".U
  io.CMAC_in_tdata := tx_buffer_fifo.io.out_tdata
  io.CMAC_in_tvalid := tx_buffer_fifo.io.out_tvalid
  io.CMAC_in_tlast := tx_buffer_fifo.io.out_tlast
  tx_buffer_fifo.io.out_tready := io.CMAC_in_tready

//  io.QDMA_h2c_stub_out_tready            := io.CMAC_in_tready
//  io.CMAC_in_tdata                       := io.QDMA_h2c_stub_out_tdata
//  io.CMAC_in_tlast                       := io.QDMA_h2c_stub_out_tlast
//  io.CMAC_in_tvalid                      := io.QDMA_h2c_stub_out_tvalid & !io.QDMA_h2c_stub_out_tuser
//  io.CMAC_in_tkeep                       := Fill(64,1.U(1.W))
}
