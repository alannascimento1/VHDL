// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Apr 15 11:58:07 2019
// Host        : alan running 64-bit Ubuntu 16.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/alan/Vivado/scratch/maquinaRefrigerante/maquinaRefrigerante/maquinaRefrigerante.srcs/sources_1/bd/design_1/ip/design_1_maquinaRefri_1_0/design_1_maquinaRefri_1_0_stub.v
// Design      : design_1_maquinaRefri_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "maquinaRefri,Vivado 2017.4" *)
module design_1_maquinaRefri_1_0(c, clk, get, rst, s, a, d)
/* synthesis syn_black_box black_box_pad_pin="c,clk,get,rst,s[3:0],a[3:0],d" */;
  input c;
  input clk;
  input get;
  input rst;
  input [3:0]s;
  input [3:0]a;
  output d;
endmodule
