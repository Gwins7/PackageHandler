package PackageHandler

import chisel3._
import chisel3.util._

class ChksumGenerator extends Module {
 val io = IO(new Bundle{
   val in_tdata   = Input(UInt(512.W))
   val in_tuser   = Input(Bool())
   val in_tlast   = Input(Bool())
   val in_tvalid  = Input(Bool())
   val in_tready  = Output(Bool())

   val out_tdata             = Output(UInt(512.W))
   val out_tkeep             = Output(UInt(64.W))
   val out_tlast             = Output(Bool())
   val out_tvalid            = Output(Bool())
   val out_tready            = Input(Bool())
 })


  io.in_tready            := io.out_tready
  io.out_tdata            := io.in_tdata
  io.out_tlast            := io.in_tlast
  io.out_tvalid           := io.in_tvalid & !io.in_tuser
  io.out_tkeep            := Fill(64,1.U(1.W))


}
