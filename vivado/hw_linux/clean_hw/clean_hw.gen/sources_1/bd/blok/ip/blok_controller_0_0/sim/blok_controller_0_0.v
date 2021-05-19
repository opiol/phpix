// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:controller:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module blok_controller_0_0 (
  cfgmem_clk_o,
  cfgmem_rst_o,
  cfgmem_data_i,
  cfgmem_data_o,
  cfgmem_ena_o,
  cfgmem_wea_o,
  cfgmem_addr_o,
  datmem_clk_o,
  datmem_rst_o,
  datmem_data_i,
  datmem_data_o,
  datmem_ena_o,
  datmem_wea_o,
  datmem_addr_o,
  datmem_convert_o,
  ctl_clk_i,
  ctl_rst_i,
  ctl_data_i,
  ctl_data_o,
  ctl_ena_i,
  ctl_wea_i,
  ctl_addr_i,
  mosi_o,
  miso_i,
  sck_o,
  cs_o,
  leds_o
);

output wire cfgmem_clk_o;
output wire cfgmem_rst_o;
input wire [31 : 0] cfgmem_data_i;
output wire [31 : 0] cfgmem_data_o;
output wire cfgmem_ena_o;
output wire [3 : 0] cfgmem_wea_o;
output wire [31 : 0] cfgmem_addr_o;
output wire datmem_clk_o;
output wire datmem_rst_o;
input wire [31 : 0] datmem_data_i;
output wire [31 : 0] datmem_data_o;
output wire datmem_ena_o;
output wire [3 : 0] datmem_wea_o;
output wire [31 : 0] datmem_addr_o;
output wire datmem_convert_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM CLK" *)
input wire ctl_clk_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM RST" *)
input wire ctl_rst_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM DIN" *)
input wire [31 : 0] ctl_data_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM DOUT" *)
output wire [31 : 0] ctl_data_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM EN" *)
input wire ctl_ena_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM WE" *)
input wire [3 : 0] ctl_wea_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctl_BRAM, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM ADDR" *)
input wire [31 : 0] ctl_addr_i;
output wire mosi_o;
input wire miso_i;
output wire sck_o;
output wire cs_o;
output wire [7 : 0] leds_o;

  controller inst (
    .cfgmem_clk_o(cfgmem_clk_o),
    .cfgmem_rst_o(cfgmem_rst_o),
    .cfgmem_data_i(cfgmem_data_i),
    .cfgmem_data_o(cfgmem_data_o),
    .cfgmem_ena_o(cfgmem_ena_o),
    .cfgmem_wea_o(cfgmem_wea_o),
    .cfgmem_addr_o(cfgmem_addr_o),
    .datmem_clk_o(datmem_clk_o),
    .datmem_rst_o(datmem_rst_o),
    .datmem_data_i(datmem_data_i),
    .datmem_data_o(datmem_data_o),
    .datmem_ena_o(datmem_ena_o),
    .datmem_wea_o(datmem_wea_o),
    .datmem_addr_o(datmem_addr_o),
    .datmem_convert_o(datmem_convert_o),
    .ctl_clk_i(ctl_clk_i),
    .ctl_rst_i(ctl_rst_i),
    .ctl_data_i(ctl_data_i),
    .ctl_data_o(ctl_data_o),
    .ctl_ena_i(ctl_ena_i),
    .ctl_wea_i(ctl_wea_i),
    .ctl_addr_i(ctl_addr_i),
    .mosi_o(mosi_o),
    .miso_i(miso_i),
    .sck_o(sck_o),
    .cs_o(cs_o),
    .leds_o(leds_o)
  );
endmodule
