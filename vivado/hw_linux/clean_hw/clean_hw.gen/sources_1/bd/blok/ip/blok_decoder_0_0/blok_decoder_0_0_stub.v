// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon May 17 16:26:30 2021
// Host        : zz-Latitude-7490 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/zz/phpix/phpix-vivado-peta/hw_linux/clean_hw/clean_hw.gen/sources_1/bd/blok/ip/blok_decoder_0_0/blok_decoder_0_0_stub.v
// Design      : blok_decoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "decoder,Vivado 2020.2" *)
module blok_decoder_0_0(conv_enable_i, clk_i, data_i, addr_i, ena_i, wea_i, 
  clk_o, data_o, addr_o, ena_o, wea_o)
/* synthesis syn_black_box black_box_pad_pin="conv_enable_i,clk_i,data_i[31:0],addr_i[31:0],ena_i,wea_i[3:0],clk_o,data_o[31:0],addr_o[31:0],ena_o,wea_o[3:0]" */;
  input conv_enable_i;
  input clk_i;
  input [31:0]data_i;
  input [31:0]addr_i;
  input ena_i;
  input [3:0]wea_i;
  output clk_o;
  output [31:0]data_o;
  output [31:0]addr_o;
  output ena_o;
  output [3:0]wea_o;
endmodule
