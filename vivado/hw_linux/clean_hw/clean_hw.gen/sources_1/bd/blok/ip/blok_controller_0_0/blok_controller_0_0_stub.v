// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue May 18 20:47:31 2021
// Host        : zz-Latitude-7490 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/zz/phpix/phpix-vivado-peta/hw_linux/clean_hw/clean_hw.gen/sources_1/bd/blok/ip/blok_controller_0_0/blok_controller_0_0_stub.v
// Design      : blok_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "controller,Vivado 2020.2" *)
module blok_controller_0_0(cfgmem_clk_o, cfgmem_rst_o, cfgmem_data_i, 
  cfgmem_data_o, cfgmem_ena_o, cfgmem_wea_o, cfgmem_addr_o, datmem_clk_o, datmem_rst_o, 
  datmem_data_i, datmem_data_o, datmem_ena_o, datmem_wea_o, datmem_addr_o, datmem_convert_o, 
  ctl_clk_i, ctl_rst_i, ctl_data_i, ctl_data_o, ctl_ena_i, ctl_wea_i, ctl_addr_i, mosi_o, miso_i, 
  sck_o, cs_o, leds_o)
/* synthesis syn_black_box black_box_pad_pin="cfgmem_clk_o,cfgmem_rst_o,cfgmem_data_i[31:0],cfgmem_data_o[31:0],cfgmem_ena_o,cfgmem_wea_o[3:0],cfgmem_addr_o[31:0],datmem_clk_o,datmem_rst_o,datmem_data_i[31:0],datmem_data_o[31:0],datmem_ena_o,datmem_wea_o[3:0],datmem_addr_o[31:0],datmem_convert_o,ctl_clk_i,ctl_rst_i,ctl_data_i[31:0],ctl_data_o[31:0],ctl_ena_i,ctl_wea_i[3:0],ctl_addr_i[31:0],mosi_o,miso_i,sck_o,cs_o,leds_o[7:0]" */;
  output cfgmem_clk_o;
  output cfgmem_rst_o;
  input [31:0]cfgmem_data_i;
  output [31:0]cfgmem_data_o;
  output cfgmem_ena_o;
  output [3:0]cfgmem_wea_o;
  output [31:0]cfgmem_addr_o;
  output datmem_clk_o;
  output datmem_rst_o;
  input [31:0]datmem_data_i;
  output [31:0]datmem_data_o;
  output datmem_ena_o;
  output [3:0]datmem_wea_o;
  output [31:0]datmem_addr_o;
  output datmem_convert_o;
  input ctl_clk_i;
  input ctl_rst_i;
  input [31:0]ctl_data_i;
  output [31:0]ctl_data_o;
  input ctl_ena_i;
  input [3:0]ctl_wea_i;
  input [31:0]ctl_addr_i;
  output mosi_o;
  input miso_i;
  output sck_o;
  output cs_o;
  output [7:0]leds_o;
endmodule
