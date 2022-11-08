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
  })
  val chksum_generator = Module(new ChksumGenerator)
  io.QDMA_h2c_stub_out_tready  := chksum_generator.io.in_tready
  chksum_generator.io.in_tdata  := io.QDMA_h2c_stub_out_tdata
  chksum_generator.io.in_tvalid := io.QDMA_h2c_stub_out_tvalid
  chksum_generator.io.in_tlast  := io.QDMA_h2c_stub_out_tlast
  chksum_generator.io.in_tuser  := io.QDMA_h2c_stub_out_tuser

  chksum_generator.io.out_tready := io.CMAC_in_tready
  io.CMAC_in_tdata  := chksum_generator.io.out_tdata
  io.CMAC_in_tvalid := chksum_generator.io.out_tvalid
  io.CMAC_in_tlast  := chksum_generator.io.out_tlast
  io.CMAC_in_tkeep  := chksum_generator.io.out_tkeep
}
