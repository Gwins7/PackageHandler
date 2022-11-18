package PackageHandler

import chisel3._
import chisel3.util._

class TxHandler extends Module{
  val io = IO(new Bundle {
    // val QDMA_h2c_stub_out_tdest   = Input(UInt(16.W))
    val QDMA_h2c_stub_out = new QDMAAxisIO()
    val CMAC_in           = Flipped(new CMACAxisIO())

    val reset_counter            = Input(Bool())
    val h2c_pack_counter         = Output(UInt(32.W))
    val h2c_err_counter          = Output(UInt(32.W))
  })
  /*
  h2c direction
  Directly connect the two interface; tkeep is {64{1'b1}}.
  */
  val tx_buffer_fifo = Module(new TxBufferFifo())

  io.QDMA_h2c_stub_out <> tx_buffer_fifo.io.in
  io.CMAC_in           <> tx_buffer_fifo.io.out
  tx_buffer_fifo.io.reset_counter := io.reset_counter
  io.h2c_pack_counter             := tx_buffer_fifo.io.h2c_pack_counter
  io.h2c_err_counter              := tx_buffer_fifo.io.h2c_err_counter

}
