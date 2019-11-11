// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Sun Nov 10 19:56:12 2019
// Host        : JuiceBoxMK2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Clay/git/FPGA/433Proc/433Proc.srcs/sources_1/bd/proc/ip/proc_ilmb_bram_if_cntlr_0/proc_ilmb_bram_if_cntlr_0_stub.v
// Design      : proc_ilmb_bram_if_cntlr_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "lmb_bram_if_cntlr,Vivado 2019.2" *)
module proc_ilmb_bram_if_cntlr_0(LMB_Clk, LMB_Rst, LMB_ABus, LMB_WriteDBus, 
  LMB_AddrStrobe, LMB_ReadStrobe, LMB_WriteStrobe, LMB_BE, Sl_DBus, Sl_Ready, Sl_Wait, Sl_UE, 
  Sl_CE, BRAM_Rst_A, BRAM_Clk_A, BRAM_Addr_A, BRAM_EN_A, BRAM_WEN_A, BRAM_Dout_A, BRAM_Din_A)
/* synthesis syn_black_box black_box_pad_pin="LMB_Clk,LMB_Rst,LMB_ABus[0:31],LMB_WriteDBus[0:31],LMB_AddrStrobe,LMB_ReadStrobe,LMB_WriteStrobe,LMB_BE[0:3],Sl_DBus[0:31],Sl_Ready,Sl_Wait,Sl_UE,Sl_CE,BRAM_Rst_A,BRAM_Clk_A,BRAM_Addr_A[0:31],BRAM_EN_A,BRAM_WEN_A[0:3],BRAM_Dout_A[0:31],BRAM_Din_A[0:31]" */;
  input LMB_Clk;
  input LMB_Rst;
  input [0:31]LMB_ABus;
  input [0:31]LMB_WriteDBus;
  input LMB_AddrStrobe;
  input LMB_ReadStrobe;
  input LMB_WriteStrobe;
  input [0:3]LMB_BE;
  output [0:31]Sl_DBus;
  output Sl_Ready;
  output Sl_Wait;
  output Sl_UE;
  output Sl_CE;
  output BRAM_Rst_A;
  output BRAM_Clk_A;
  output [0:31]BRAM_Addr_A;
  output BRAM_EN_A;
  output [0:3]BRAM_WEN_A;
  output [0:31]BRAM_Dout_A;
  input [0:31]BRAM_Din_A;
endmodule
