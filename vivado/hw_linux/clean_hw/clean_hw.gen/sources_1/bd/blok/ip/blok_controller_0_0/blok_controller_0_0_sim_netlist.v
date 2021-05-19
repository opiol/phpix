// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue May 18 20:47:32 2021
// Host        : zz-Latitude-7490 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/zz/phpix/phpix-vivado-peta/hw_linux/clean_hw/clean_hw.gen/sources_1/bd/blok/ip/blok_controller_0_0/blok_controller_0_0_sim_netlist.v
// Design      : blok_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blok_controller_0_0,controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blok_controller_0_0
   (cfgmem_clk_o,
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
    leds_o);
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM CLK" *) input ctl_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM RST" *) input ctl_rst_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM DIN" *) input [31:0]ctl_data_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM DOUT" *) output [31:0]ctl_data_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM EN" *) input ctl_ena_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM WE" *) input [3:0]ctl_wea_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 ctl_BRAM ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctl_BRAM, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input [31:0]ctl_addr_i;
  output mosi_o;
  input miso_i;
  output sck_o;
  output cs_o;
  output [7:0]leds_o;

  wire \<const0> ;
  wire [31:1]\^cfgmem_addr_o ;
  wire [31:0]cfgmem_data_i;
  wire cfgmem_ena_o;
  wire cs_o;
  wire [31:0]ctl_addr_i;
  wire ctl_clk_i;
  wire [31:0]ctl_data_i;
  wire ctl_ena_i;
  wire ctl_rst_i;
  wire [3:0]ctl_wea_i;
  wire [31:1]\^datmem_addr_o ;
  wire datmem_convert_o;
  wire [31:0]datmem_data_o;
  wire [3:3]\^datmem_wea_o ;
  wire miso_i;
  wire mosi_o;
  wire sck_o;

  assign cfgmem_addr_o[31:1] = \^cfgmem_addr_o [31:1];
  assign cfgmem_addr_o[0] = \<const0> ;
  assign cfgmem_clk_o = ctl_clk_i;
  assign cfgmem_data_o[31] = \<const0> ;
  assign cfgmem_data_o[30] = \<const0> ;
  assign cfgmem_data_o[29] = \<const0> ;
  assign cfgmem_data_o[28] = \<const0> ;
  assign cfgmem_data_o[27] = \<const0> ;
  assign cfgmem_data_o[26] = \<const0> ;
  assign cfgmem_data_o[25] = \<const0> ;
  assign cfgmem_data_o[24] = \<const0> ;
  assign cfgmem_data_o[23] = \<const0> ;
  assign cfgmem_data_o[22] = \<const0> ;
  assign cfgmem_data_o[21] = \<const0> ;
  assign cfgmem_data_o[20] = \<const0> ;
  assign cfgmem_data_o[19] = \<const0> ;
  assign cfgmem_data_o[18] = \<const0> ;
  assign cfgmem_data_o[17] = \<const0> ;
  assign cfgmem_data_o[16] = \<const0> ;
  assign cfgmem_data_o[15] = \<const0> ;
  assign cfgmem_data_o[14] = \<const0> ;
  assign cfgmem_data_o[13] = \<const0> ;
  assign cfgmem_data_o[12] = \<const0> ;
  assign cfgmem_data_o[11] = \<const0> ;
  assign cfgmem_data_o[10] = \<const0> ;
  assign cfgmem_data_o[9] = \<const0> ;
  assign cfgmem_data_o[8] = \<const0> ;
  assign cfgmem_data_o[7] = \<const0> ;
  assign cfgmem_data_o[6] = \<const0> ;
  assign cfgmem_data_o[5] = \<const0> ;
  assign cfgmem_data_o[4] = \<const0> ;
  assign cfgmem_data_o[3] = \<const0> ;
  assign cfgmem_data_o[2] = \<const0> ;
  assign cfgmem_data_o[1] = \<const0> ;
  assign cfgmem_data_o[0] = \<const0> ;
  assign cfgmem_rst_o = \<const0> ;
  assign cfgmem_wea_o[3] = \<const0> ;
  assign cfgmem_wea_o[2] = \<const0> ;
  assign cfgmem_wea_o[1] = \<const0> ;
  assign cfgmem_wea_o[0] = \<const0> ;
  assign ctl_data_o[31] = \<const0> ;
  assign ctl_data_o[30] = \<const0> ;
  assign ctl_data_o[29] = \<const0> ;
  assign ctl_data_o[28] = \<const0> ;
  assign ctl_data_o[27] = \<const0> ;
  assign ctl_data_o[26] = \<const0> ;
  assign ctl_data_o[25] = \<const0> ;
  assign ctl_data_o[24] = \<const0> ;
  assign ctl_data_o[23] = \<const0> ;
  assign ctl_data_o[22] = \<const0> ;
  assign ctl_data_o[21] = \<const0> ;
  assign ctl_data_o[20] = \<const0> ;
  assign ctl_data_o[19] = \<const0> ;
  assign ctl_data_o[18] = \<const0> ;
  assign ctl_data_o[17] = \<const0> ;
  assign ctl_data_o[16] = \<const0> ;
  assign ctl_data_o[15] = \<const0> ;
  assign ctl_data_o[14] = \<const0> ;
  assign ctl_data_o[13] = \<const0> ;
  assign ctl_data_o[12] = \<const0> ;
  assign ctl_data_o[11] = \<const0> ;
  assign ctl_data_o[10] = \<const0> ;
  assign ctl_data_o[9] = \<const0> ;
  assign ctl_data_o[8] = \<const0> ;
  assign ctl_data_o[7] = \<const0> ;
  assign ctl_data_o[6] = \<const0> ;
  assign ctl_data_o[5] = \<const0> ;
  assign ctl_data_o[4] = \<const0> ;
  assign ctl_data_o[3] = \<const0> ;
  assign ctl_data_o[2] = \<const0> ;
  assign ctl_data_o[1] = \<const0> ;
  assign ctl_data_o[0] = \<const0> ;
  assign datmem_addr_o[31:1] = \^datmem_addr_o [31:1];
  assign datmem_addr_o[0] = \<const0> ;
  assign datmem_clk_o = ctl_clk_i;
  assign datmem_ena_o = \^datmem_wea_o [3];
  assign datmem_rst_o = \<const0> ;
  assign datmem_wea_o[3] = \^datmem_wea_o [3];
  assign datmem_wea_o[2] = \^datmem_wea_o [3];
  assign datmem_wea_o[1] = \^datmem_wea_o [3];
  assign datmem_wea_o[0] = \^datmem_wea_o [3];
  assign leds_o[7] = \<const0> ;
  assign leds_o[6] = \<const0> ;
  assign leds_o[5] = \<const0> ;
  assign leds_o[4] = \<const0> ;
  assign leds_o[3] = \<const0> ;
  assign leds_o[2] = \<const0> ;
  assign leds_o[1] = \<const0> ;
  assign leds_o[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blok_controller_0_0_controller inst
       (.cfgmem_addr_o(\^cfgmem_addr_o ),
        .cfgmem_data_i(cfgmem_data_i),
        .cfgmem_ena_o(cfgmem_ena_o),
        .cs_o(cs_o),
        .ctl_addr_i(ctl_addr_i),
        .ctl_clk_i(ctl_clk_i),
        .ctl_data_i(ctl_data_i),
        .ctl_ena_i(ctl_ena_i),
        .ctl_rst_i(ctl_rst_i),
        .ctl_wea_i(ctl_wea_i),
        .datmem_addr_o(\^datmem_addr_o ),
        .datmem_convert_o(datmem_convert_o),
        .datmem_data_o(datmem_data_o),
        .datmem_wea_o(\^datmem_wea_o ),
        .miso_i(miso_i),
        .mosi_o(mosi_o),
        .sck_o(sck_o));
endmodule

(* ORIG_REF_NAME = "controller" *) 
module blok_controller_0_0_controller
   (cfgmem_ena_o,
    cfgmem_addr_o,
    datmem_data_o,
    datmem_wea_o,
    datmem_addr_o,
    mosi_o,
    datmem_convert_o,
    sck_o,
    cs_o,
    ctl_clk_i,
    ctl_data_i,
    cfgmem_data_i,
    ctl_rst_i,
    ctl_ena_i,
    ctl_addr_i,
    ctl_wea_i,
    miso_i);
  output cfgmem_ena_o;
  output [30:0]cfgmem_addr_o;
  output [31:0]datmem_data_o;
  output [0:0]datmem_wea_o;
  output [30:0]datmem_addr_o;
  output mosi_o;
  output datmem_convert_o;
  output sck_o;
  output cs_o;
  input ctl_clk_i;
  input [31:0]ctl_data_i;
  input [31:0]cfgmem_data_i;
  input ctl_rst_i;
  input ctl_ena_i;
  input [31:0]ctl_addr_i;
  input [3:0]ctl_wea_i;
  input miso_i;

  wire \FSM_onehot_writer_state[0]_i_1_n_0 ;
  wire \FSM_onehot_writer_state[1]_i_1_n_0 ;
  wire \FSM_onehot_writer_state[2]_i_1_n_0 ;
  wire \FSM_onehot_writer_state_reg_n_0_[1] ;
  wire [30:0]cfgmem_addr_o;
  wire \cfgmem_addr_o[31]_i_1_n_0 ;
  wire [31:0]cfgmem_data_i;
  wire cfgmem_ena_o;
  wire cfgmem_ena_o_i_1_n_0;
  wire cfgmem_ena_o_i_2_n_0;
  wire cfgmem_ena_o_i_3_n_0;
  wire clk_counter0_carry__0_i_1_n_0;
  wire clk_counter0_carry__0_i_2_n_0;
  wire clk_counter0_carry__0_i_3_n_0;
  wire clk_counter0_carry__0_i_4_n_0;
  wire clk_counter0_carry__0_n_0;
  wire clk_counter0_carry__0_n_1;
  wire clk_counter0_carry__0_n_2;
  wire clk_counter0_carry__0_n_3;
  wire clk_counter0_carry__1_i_1_n_0;
  wire clk_counter0_carry__1_i_2_n_0;
  wire clk_counter0_carry__1_i_3_n_0;
  wire clk_counter0_carry__1_n_1;
  wire clk_counter0_carry__1_n_2;
  wire clk_counter0_carry__1_n_3;
  wire clk_counter0_carry_i_1_n_0;
  wire clk_counter0_carry_i_2_n_0;
  wire clk_counter0_carry_i_3_n_0;
  wire clk_counter0_carry_i_4_n_0;
  wire clk_counter0_carry_n_0;
  wire clk_counter0_carry_n_1;
  wire clk_counter0_carry_n_2;
  wire clk_counter0_carry_n_3;
  wire \clk_counter[0]_i_1_n_0 ;
  wire \clk_counter[0]_i_3_n_0 ;
  wire [31:0]clk_counter_reg;
  wire \clk_counter_reg[0]_i_2_n_0 ;
  wire \clk_counter_reg[0]_i_2_n_1 ;
  wire \clk_counter_reg[0]_i_2_n_2 ;
  wire \clk_counter_reg[0]_i_2_n_3 ;
  wire \clk_counter_reg[0]_i_2_n_4 ;
  wire \clk_counter_reg[0]_i_2_n_5 ;
  wire \clk_counter_reg[0]_i_2_n_6 ;
  wire \clk_counter_reg[0]_i_2_n_7 ;
  wire \clk_counter_reg[12]_i_1_n_0 ;
  wire \clk_counter_reg[12]_i_1_n_1 ;
  wire \clk_counter_reg[12]_i_1_n_2 ;
  wire \clk_counter_reg[12]_i_1_n_3 ;
  wire \clk_counter_reg[12]_i_1_n_4 ;
  wire \clk_counter_reg[12]_i_1_n_5 ;
  wire \clk_counter_reg[12]_i_1_n_6 ;
  wire \clk_counter_reg[12]_i_1_n_7 ;
  wire \clk_counter_reg[16]_i_1_n_0 ;
  wire \clk_counter_reg[16]_i_1_n_1 ;
  wire \clk_counter_reg[16]_i_1_n_2 ;
  wire \clk_counter_reg[16]_i_1_n_3 ;
  wire \clk_counter_reg[16]_i_1_n_4 ;
  wire \clk_counter_reg[16]_i_1_n_5 ;
  wire \clk_counter_reg[16]_i_1_n_6 ;
  wire \clk_counter_reg[16]_i_1_n_7 ;
  wire \clk_counter_reg[20]_i_1_n_0 ;
  wire \clk_counter_reg[20]_i_1_n_1 ;
  wire \clk_counter_reg[20]_i_1_n_2 ;
  wire \clk_counter_reg[20]_i_1_n_3 ;
  wire \clk_counter_reg[20]_i_1_n_4 ;
  wire \clk_counter_reg[20]_i_1_n_5 ;
  wire \clk_counter_reg[20]_i_1_n_6 ;
  wire \clk_counter_reg[20]_i_1_n_7 ;
  wire \clk_counter_reg[24]_i_1_n_0 ;
  wire \clk_counter_reg[24]_i_1_n_1 ;
  wire \clk_counter_reg[24]_i_1_n_2 ;
  wire \clk_counter_reg[24]_i_1_n_3 ;
  wire \clk_counter_reg[24]_i_1_n_4 ;
  wire \clk_counter_reg[24]_i_1_n_5 ;
  wire \clk_counter_reg[24]_i_1_n_6 ;
  wire \clk_counter_reg[24]_i_1_n_7 ;
  wire \clk_counter_reg[28]_i_1_n_1 ;
  wire \clk_counter_reg[28]_i_1_n_2 ;
  wire \clk_counter_reg[28]_i_1_n_3 ;
  wire \clk_counter_reg[28]_i_1_n_4 ;
  wire \clk_counter_reg[28]_i_1_n_5 ;
  wire \clk_counter_reg[28]_i_1_n_6 ;
  wire \clk_counter_reg[28]_i_1_n_7 ;
  wire \clk_counter_reg[4]_i_1_n_0 ;
  wire \clk_counter_reg[4]_i_1_n_1 ;
  wire \clk_counter_reg[4]_i_1_n_2 ;
  wire \clk_counter_reg[4]_i_1_n_3 ;
  wire \clk_counter_reg[4]_i_1_n_4 ;
  wire \clk_counter_reg[4]_i_1_n_5 ;
  wire \clk_counter_reg[4]_i_1_n_6 ;
  wire \clk_counter_reg[4]_i_1_n_7 ;
  wire \clk_counter_reg[8]_i_1_n_0 ;
  wire \clk_counter_reg[8]_i_1_n_1 ;
  wire \clk_counter_reg[8]_i_1_n_2 ;
  wire \clk_counter_reg[8]_i_1_n_3 ;
  wire \clk_counter_reg[8]_i_1_n_4 ;
  wire \clk_counter_reg[8]_i_1_n_5 ;
  wire \clk_counter_reg[8]_i_1_n_6 ;
  wire \clk_counter_reg[8]_i_1_n_7 ;
  wire clk_en;
  wire clk_update_counter_i_1_n_0;
  wire clk_update_counter_i_2_n_0;
  wire clk_update_counter_i_3_n_0;
  wire clk_update_counter_i_4_n_0;
  wire clk_update_counter_i_5_n_0;
  wire clk_update_counter_reg_n_0;
  wire cs_o;
  wire cs_o_i_1_n_0;
  wire [31:0]ctl_addr_i;
  wire ctl_clk_i;
  wire [31:0]ctl_data_i;
  wire ctl_ena_i;
  wire [31:0]ctl_reg_bits_to_write;
  wire \ctl_reg_bits_to_write[15]_i_1_n_0 ;
  wire \ctl_reg_bits_to_write[23]_i_1_n_0 ;
  wire \ctl_reg_bits_to_write[31]_i_1_n_0 ;
  wire \ctl_reg_bits_to_write[31]_i_2_n_0 ;
  wire \ctl_reg_bits_to_write[31]_i_3_n_0 ;
  wire \ctl_reg_bits_to_write[7]_i_1_n_0 ;
  wire \ctl_reg_control[0]_i_1_n_0 ;
  wire \ctl_reg_control[0]_i_2_n_0 ;
  wire ctl_reg_control_event;
  wire ctl_reg_control_event_i_1_n_0;
  wire ctl_reg_control_event_i_2_n_0;
  wire \ctl_reg_control_reg_n_0_[0] ;
  wire [31:0]ctl_reg_downcounter;
  wire \ctl_reg_downcounter[15]_i_1_n_0 ;
  wire \ctl_reg_downcounter[23]_i_1_n_0 ;
  wire \ctl_reg_downcounter[31]_i_10_n_0 ;
  wire \ctl_reg_downcounter[31]_i_1_n_0 ;
  wire \ctl_reg_downcounter[31]_i_2_n_0 ;
  wire \ctl_reg_downcounter[31]_i_3_n_0 ;
  wire \ctl_reg_downcounter[31]_i_4_n_0 ;
  wire \ctl_reg_downcounter[31]_i_5_n_0 ;
  wire \ctl_reg_downcounter[31]_i_6_n_0 ;
  wire \ctl_reg_downcounter[31]_i_7_n_0 ;
  wire \ctl_reg_downcounter[31]_i_8_n_0 ;
  wire \ctl_reg_downcounter[31]_i_9_n_0 ;
  wire \ctl_reg_downcounter[7]_i_1_n_0 ;
  wire \ctl_reg_options[0]_i_1_n_0 ;
  wire \ctl_reg_options[1]_i_1_n_0 ;
  wire \ctl_reg_options[2]_i_1_n_0 ;
  wire \ctl_reg_options[2]_i_2_n_0 ;
  wire \ctl_reg_options[2]_i_3_n_0 ;
  wire \ctl_reg_options_reg_n_0_[0] ;
  wire \ctl_reg_options_reg_n_0_[1] ;
  wire [31:0]ctl_reg_shutter;
  wire \ctl_reg_shutter[15]_i_1_n_0 ;
  wire \ctl_reg_shutter[23]_i_1_n_0 ;
  wire \ctl_reg_shutter[31]_i_1_n_0 ;
  wire \ctl_reg_shutter[31]_i_2_n_0 ;
  wire \ctl_reg_shutter[31]_i_3_n_0 ;
  wire \ctl_reg_shutter[7]_i_1_n_0 ;
  wire ctl_rst_i;
  wire [3:0]ctl_wea_i;
  wire [31:1]data0;
  wire [30:0]datmem_addr_o;
  wire datmem_convert_o;
  wire datmem_convert_o_i_1_n_0;
  wire [31:0]datmem_data_o;
  wire \datmem_data_o[31]_i_1_n_0 ;
  wire [0:0]datmem_wea_o;
  wire [2:0]fsm_State;
  wire fsm_State1_carry__0_i_1_n_0;
  wire fsm_State1_carry__0_i_2_n_0;
  wire fsm_State1_carry__0_i_3_n_0;
  wire fsm_State1_carry__0_i_4_n_0;
  wire fsm_State1_carry__0_i_5_n_0;
  wire fsm_State1_carry__0_i_6_n_0;
  wire fsm_State1_carry__0_i_7_n_0;
  wire fsm_State1_carry__0_i_8_n_0;
  wire fsm_State1_carry__0_n_0;
  wire fsm_State1_carry__0_n_1;
  wire fsm_State1_carry__0_n_2;
  wire fsm_State1_carry__0_n_3;
  wire fsm_State1_carry__1_i_1_n_0;
  wire fsm_State1_carry__1_i_2_n_0;
  wire fsm_State1_carry__1_i_3_n_0;
  wire fsm_State1_carry__1_i_4_n_0;
  wire fsm_State1_carry__1_i_5_n_0;
  wire fsm_State1_carry__1_i_6_n_0;
  wire fsm_State1_carry__1_i_7_n_0;
  wire fsm_State1_carry__1_i_8_n_0;
  wire fsm_State1_carry__1_n_0;
  wire fsm_State1_carry__1_n_1;
  wire fsm_State1_carry__1_n_2;
  wire fsm_State1_carry__1_n_3;
  wire fsm_State1_carry__2_i_1_n_0;
  wire fsm_State1_carry__2_i_2_n_0;
  wire fsm_State1_carry__2_i_3_n_0;
  wire fsm_State1_carry__2_i_4_n_0;
  wire fsm_State1_carry__2_i_5_n_0;
  wire fsm_State1_carry__2_i_6_n_0;
  wire fsm_State1_carry__2_i_7_n_0;
  wire fsm_State1_carry__2_i_8_n_0;
  wire fsm_State1_carry__2_n_0;
  wire fsm_State1_carry__2_n_1;
  wire fsm_State1_carry__2_n_2;
  wire fsm_State1_carry__2_n_3;
  wire fsm_State1_carry_i_1_n_0;
  wire fsm_State1_carry_i_2_n_0;
  wire fsm_State1_carry_i_3_n_0;
  wire fsm_State1_carry_i_4_n_0;
  wire fsm_State1_carry_i_5_n_0;
  wire fsm_State1_carry_i_6_n_0;
  wire fsm_State1_carry_i_7_n_0;
  wire fsm_State1_carry_i_8_n_0;
  wire fsm_State1_carry_n_0;
  wire fsm_State1_carry_n_1;
  wire fsm_State1_carry_n_2;
  wire fsm_State1_carry_n_3;
  wire [2:0]fsm_State__0;
  wire \fsm_bits_sent[0]_i_1_n_0 ;
  wire \fsm_bits_sent[31]_i_1_n_0 ;
  wire \fsm_bits_sent_reg[12]_i_1_n_0 ;
  wire \fsm_bits_sent_reg[12]_i_1_n_1 ;
  wire \fsm_bits_sent_reg[12]_i_1_n_2 ;
  wire \fsm_bits_sent_reg[12]_i_1_n_3 ;
  wire \fsm_bits_sent_reg[16]_i_1_n_0 ;
  wire \fsm_bits_sent_reg[16]_i_1_n_1 ;
  wire \fsm_bits_sent_reg[16]_i_1_n_2 ;
  wire \fsm_bits_sent_reg[16]_i_1_n_3 ;
  wire \fsm_bits_sent_reg[20]_i_1_n_0 ;
  wire \fsm_bits_sent_reg[20]_i_1_n_1 ;
  wire \fsm_bits_sent_reg[20]_i_1_n_2 ;
  wire \fsm_bits_sent_reg[20]_i_1_n_3 ;
  wire \fsm_bits_sent_reg[24]_i_1_n_0 ;
  wire \fsm_bits_sent_reg[24]_i_1_n_1 ;
  wire \fsm_bits_sent_reg[24]_i_1_n_2 ;
  wire \fsm_bits_sent_reg[24]_i_1_n_3 ;
  wire \fsm_bits_sent_reg[28]_i_1_n_0 ;
  wire \fsm_bits_sent_reg[28]_i_1_n_1 ;
  wire \fsm_bits_sent_reg[28]_i_1_n_2 ;
  wire \fsm_bits_sent_reg[28]_i_1_n_3 ;
  wire \fsm_bits_sent_reg[31]_i_2_n_2 ;
  wire \fsm_bits_sent_reg[31]_i_2_n_3 ;
  wire \fsm_bits_sent_reg[4]_i_1_n_0 ;
  wire \fsm_bits_sent_reg[4]_i_1_n_1 ;
  wire \fsm_bits_sent_reg[4]_i_1_n_2 ;
  wire \fsm_bits_sent_reg[4]_i_1_n_3 ;
  wire \fsm_bits_sent_reg[8]_i_1_n_0 ;
  wire \fsm_bits_sent_reg[8]_i_1_n_1 ;
  wire \fsm_bits_sent_reg[8]_i_1_n_2 ;
  wire \fsm_bits_sent_reg[8]_i_1_n_3 ;
  wire \fsm_bits_sent_reg_n_0_[0] ;
  wire \fsm_bits_sent_reg_n_0_[10] ;
  wire \fsm_bits_sent_reg_n_0_[11] ;
  wire \fsm_bits_sent_reg_n_0_[12] ;
  wire \fsm_bits_sent_reg_n_0_[13] ;
  wire \fsm_bits_sent_reg_n_0_[14] ;
  wire \fsm_bits_sent_reg_n_0_[15] ;
  wire \fsm_bits_sent_reg_n_0_[16] ;
  wire \fsm_bits_sent_reg_n_0_[17] ;
  wire \fsm_bits_sent_reg_n_0_[18] ;
  wire \fsm_bits_sent_reg_n_0_[19] ;
  wire \fsm_bits_sent_reg_n_0_[1] ;
  wire \fsm_bits_sent_reg_n_0_[20] ;
  wire \fsm_bits_sent_reg_n_0_[21] ;
  wire \fsm_bits_sent_reg_n_0_[22] ;
  wire \fsm_bits_sent_reg_n_0_[23] ;
  wire \fsm_bits_sent_reg_n_0_[24] ;
  wire \fsm_bits_sent_reg_n_0_[25] ;
  wire \fsm_bits_sent_reg_n_0_[26] ;
  wire \fsm_bits_sent_reg_n_0_[27] ;
  wire \fsm_bits_sent_reg_n_0_[28] ;
  wire \fsm_bits_sent_reg_n_0_[29] ;
  wire \fsm_bits_sent_reg_n_0_[2] ;
  wire \fsm_bits_sent_reg_n_0_[30] ;
  wire \fsm_bits_sent_reg_n_0_[31] ;
  wire \fsm_bits_sent_reg_n_0_[3] ;
  wire \fsm_bits_sent_reg_n_0_[4] ;
  wire \fsm_bits_sent_reg_n_0_[5] ;
  wire \fsm_bits_sent_reg_n_0_[6] ;
  wire \fsm_bits_sent_reg_n_0_[7] ;
  wire \fsm_bits_sent_reg_n_0_[8] ;
  wire \fsm_bits_sent_reg_n_0_[9] ;
  wire \fsm_shutter_counter[0]_i_1_n_0 ;
  wire \fsm_shutter_counter[0]_i_3_n_0 ;
  wire \fsm_shutter_counter[0]_i_4_n_0 ;
  wire \fsm_shutter_counter[0]_i_5_n_0 ;
  wire \fsm_shutter_counter[0]_i_6_n_0 ;
  wire \fsm_shutter_counter[12]_i_2_n_0 ;
  wire \fsm_shutter_counter[12]_i_3_n_0 ;
  wire \fsm_shutter_counter[12]_i_4_n_0 ;
  wire \fsm_shutter_counter[12]_i_5_n_0 ;
  wire \fsm_shutter_counter[16]_i_2_n_0 ;
  wire \fsm_shutter_counter[16]_i_3_n_0 ;
  wire \fsm_shutter_counter[16]_i_4_n_0 ;
  wire \fsm_shutter_counter[16]_i_5_n_0 ;
  wire \fsm_shutter_counter[20]_i_2_n_0 ;
  wire \fsm_shutter_counter[20]_i_3_n_0 ;
  wire \fsm_shutter_counter[20]_i_4_n_0 ;
  wire \fsm_shutter_counter[20]_i_5_n_0 ;
  wire \fsm_shutter_counter[24]_i_2_n_0 ;
  wire \fsm_shutter_counter[24]_i_3_n_0 ;
  wire \fsm_shutter_counter[24]_i_4_n_0 ;
  wire \fsm_shutter_counter[24]_i_5_n_0 ;
  wire \fsm_shutter_counter[28]_i_2_n_0 ;
  wire \fsm_shutter_counter[28]_i_3_n_0 ;
  wire \fsm_shutter_counter[28]_i_4_n_0 ;
  wire \fsm_shutter_counter[28]_i_5_n_0 ;
  wire \fsm_shutter_counter[4]_i_2_n_0 ;
  wire \fsm_shutter_counter[4]_i_3_n_0 ;
  wire \fsm_shutter_counter[4]_i_4_n_0 ;
  wire \fsm_shutter_counter[4]_i_5_n_0 ;
  wire \fsm_shutter_counter[8]_i_2_n_0 ;
  wire \fsm_shutter_counter[8]_i_3_n_0 ;
  wire \fsm_shutter_counter[8]_i_4_n_0 ;
  wire \fsm_shutter_counter[8]_i_5_n_0 ;
  wire [31:0]fsm_shutter_counter_reg;
  wire \fsm_shutter_counter_reg[0]_i_2_n_0 ;
  wire \fsm_shutter_counter_reg[0]_i_2_n_1 ;
  wire \fsm_shutter_counter_reg[0]_i_2_n_2 ;
  wire \fsm_shutter_counter_reg[0]_i_2_n_3 ;
  wire \fsm_shutter_counter_reg[0]_i_2_n_4 ;
  wire \fsm_shutter_counter_reg[0]_i_2_n_5 ;
  wire \fsm_shutter_counter_reg[0]_i_2_n_6 ;
  wire \fsm_shutter_counter_reg[0]_i_2_n_7 ;
  wire \fsm_shutter_counter_reg[12]_i_1_n_0 ;
  wire \fsm_shutter_counter_reg[12]_i_1_n_1 ;
  wire \fsm_shutter_counter_reg[12]_i_1_n_2 ;
  wire \fsm_shutter_counter_reg[12]_i_1_n_3 ;
  wire \fsm_shutter_counter_reg[12]_i_1_n_4 ;
  wire \fsm_shutter_counter_reg[12]_i_1_n_5 ;
  wire \fsm_shutter_counter_reg[12]_i_1_n_6 ;
  wire \fsm_shutter_counter_reg[12]_i_1_n_7 ;
  wire \fsm_shutter_counter_reg[16]_i_1_n_0 ;
  wire \fsm_shutter_counter_reg[16]_i_1_n_1 ;
  wire \fsm_shutter_counter_reg[16]_i_1_n_2 ;
  wire \fsm_shutter_counter_reg[16]_i_1_n_3 ;
  wire \fsm_shutter_counter_reg[16]_i_1_n_4 ;
  wire \fsm_shutter_counter_reg[16]_i_1_n_5 ;
  wire \fsm_shutter_counter_reg[16]_i_1_n_6 ;
  wire \fsm_shutter_counter_reg[16]_i_1_n_7 ;
  wire \fsm_shutter_counter_reg[20]_i_1_n_0 ;
  wire \fsm_shutter_counter_reg[20]_i_1_n_1 ;
  wire \fsm_shutter_counter_reg[20]_i_1_n_2 ;
  wire \fsm_shutter_counter_reg[20]_i_1_n_3 ;
  wire \fsm_shutter_counter_reg[20]_i_1_n_4 ;
  wire \fsm_shutter_counter_reg[20]_i_1_n_5 ;
  wire \fsm_shutter_counter_reg[20]_i_1_n_6 ;
  wire \fsm_shutter_counter_reg[20]_i_1_n_7 ;
  wire \fsm_shutter_counter_reg[24]_i_1_n_0 ;
  wire \fsm_shutter_counter_reg[24]_i_1_n_1 ;
  wire \fsm_shutter_counter_reg[24]_i_1_n_2 ;
  wire \fsm_shutter_counter_reg[24]_i_1_n_3 ;
  wire \fsm_shutter_counter_reg[24]_i_1_n_4 ;
  wire \fsm_shutter_counter_reg[24]_i_1_n_5 ;
  wire \fsm_shutter_counter_reg[24]_i_1_n_6 ;
  wire \fsm_shutter_counter_reg[24]_i_1_n_7 ;
  wire \fsm_shutter_counter_reg[28]_i_1_n_1 ;
  wire \fsm_shutter_counter_reg[28]_i_1_n_2 ;
  wire \fsm_shutter_counter_reg[28]_i_1_n_3 ;
  wire \fsm_shutter_counter_reg[28]_i_1_n_4 ;
  wire \fsm_shutter_counter_reg[28]_i_1_n_5 ;
  wire \fsm_shutter_counter_reg[28]_i_1_n_6 ;
  wire \fsm_shutter_counter_reg[28]_i_1_n_7 ;
  wire \fsm_shutter_counter_reg[4]_i_1_n_0 ;
  wire \fsm_shutter_counter_reg[4]_i_1_n_1 ;
  wire \fsm_shutter_counter_reg[4]_i_1_n_2 ;
  wire \fsm_shutter_counter_reg[4]_i_1_n_3 ;
  wire \fsm_shutter_counter_reg[4]_i_1_n_4 ;
  wire \fsm_shutter_counter_reg[4]_i_1_n_5 ;
  wire \fsm_shutter_counter_reg[4]_i_1_n_6 ;
  wire \fsm_shutter_counter_reg[4]_i_1_n_7 ;
  wire \fsm_shutter_counter_reg[8]_i_1_n_0 ;
  wire \fsm_shutter_counter_reg[8]_i_1_n_1 ;
  wire \fsm_shutter_counter_reg[8]_i_1_n_2 ;
  wire \fsm_shutter_counter_reg[8]_i_1_n_3 ;
  wire \fsm_shutter_counter_reg[8]_i_1_n_4 ;
  wire \fsm_shutter_counter_reg[8]_i_1_n_5 ;
  wire \fsm_shutter_counter_reg[8]_i_1_n_6 ;
  wire \fsm_shutter_counter_reg[8]_i_1_n_7 ;
  wire \fsm_skip_counter[0]_i_1_n_0 ;
  wire \fsm_skip_counter[31]_i_1_n_0 ;
  wire \fsm_skip_counter[31]_i_3_n_0 ;
  wire \fsm_skip_counter[31]_i_4_n_0 ;
  wire \fsm_skip_counter_reg[12]_i_1_n_0 ;
  wire \fsm_skip_counter_reg[12]_i_1_n_1 ;
  wire \fsm_skip_counter_reg[12]_i_1_n_2 ;
  wire \fsm_skip_counter_reg[12]_i_1_n_3 ;
  wire \fsm_skip_counter_reg[16]_i_1_n_0 ;
  wire \fsm_skip_counter_reg[16]_i_1_n_1 ;
  wire \fsm_skip_counter_reg[16]_i_1_n_2 ;
  wire \fsm_skip_counter_reg[16]_i_1_n_3 ;
  wire \fsm_skip_counter_reg[20]_i_1_n_0 ;
  wire \fsm_skip_counter_reg[20]_i_1_n_1 ;
  wire \fsm_skip_counter_reg[20]_i_1_n_2 ;
  wire \fsm_skip_counter_reg[20]_i_1_n_3 ;
  wire \fsm_skip_counter_reg[24]_i_1_n_0 ;
  wire \fsm_skip_counter_reg[24]_i_1_n_1 ;
  wire \fsm_skip_counter_reg[24]_i_1_n_2 ;
  wire \fsm_skip_counter_reg[24]_i_1_n_3 ;
  wire \fsm_skip_counter_reg[28]_i_1_n_0 ;
  wire \fsm_skip_counter_reg[28]_i_1_n_1 ;
  wire \fsm_skip_counter_reg[28]_i_1_n_2 ;
  wire \fsm_skip_counter_reg[28]_i_1_n_3 ;
  wire \fsm_skip_counter_reg[31]_i_2_n_2 ;
  wire \fsm_skip_counter_reg[31]_i_2_n_3 ;
  wire \fsm_skip_counter_reg[4]_i_1_n_0 ;
  wire \fsm_skip_counter_reg[4]_i_1_n_1 ;
  wire \fsm_skip_counter_reg[4]_i_1_n_2 ;
  wire \fsm_skip_counter_reg[4]_i_1_n_3 ;
  wire \fsm_skip_counter_reg[8]_i_1_n_0 ;
  wire \fsm_skip_counter_reg[8]_i_1_n_1 ;
  wire \fsm_skip_counter_reg[8]_i_1_n_2 ;
  wire \fsm_skip_counter_reg[8]_i_1_n_3 ;
  wire \fsm_skip_counter_reg_n_0_[0] ;
  wire \fsm_skip_counter_reg_n_0_[10] ;
  wire \fsm_skip_counter_reg_n_0_[11] ;
  wire \fsm_skip_counter_reg_n_0_[12] ;
  wire \fsm_skip_counter_reg_n_0_[13] ;
  wire \fsm_skip_counter_reg_n_0_[14] ;
  wire \fsm_skip_counter_reg_n_0_[15] ;
  wire \fsm_skip_counter_reg_n_0_[16] ;
  wire \fsm_skip_counter_reg_n_0_[17] ;
  wire \fsm_skip_counter_reg_n_0_[18] ;
  wire \fsm_skip_counter_reg_n_0_[19] ;
  wire \fsm_skip_counter_reg_n_0_[1] ;
  wire \fsm_skip_counter_reg_n_0_[20] ;
  wire \fsm_skip_counter_reg_n_0_[21] ;
  wire \fsm_skip_counter_reg_n_0_[22] ;
  wire \fsm_skip_counter_reg_n_0_[23] ;
  wire \fsm_skip_counter_reg_n_0_[24] ;
  wire \fsm_skip_counter_reg_n_0_[25] ;
  wire \fsm_skip_counter_reg_n_0_[26] ;
  wire \fsm_skip_counter_reg_n_0_[27] ;
  wire \fsm_skip_counter_reg_n_0_[28] ;
  wire \fsm_skip_counter_reg_n_0_[29] ;
  wire \fsm_skip_counter_reg_n_0_[2] ;
  wire \fsm_skip_counter_reg_n_0_[30] ;
  wire \fsm_skip_counter_reg_n_0_[31] ;
  wire \fsm_skip_counter_reg_n_0_[3] ;
  wire \fsm_skip_counter_reg_n_0_[4] ;
  wire \fsm_skip_counter_reg_n_0_[5] ;
  wire \fsm_skip_counter_reg_n_0_[6] ;
  wire \fsm_skip_counter_reg_n_0_[7] ;
  wire \fsm_skip_counter_reg_n_0_[8] ;
  wire \fsm_skip_counter_reg_n_0_[9] ;
  wire fsm_start_ack_i_1_n_0;
  wire fsm_start_ack_reg_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire [31:1]in17;
  wire [31:1]in5;
  wire [31:1]in9;
  wire [31:0]ipc_data;
  wire \ipc_data[30]_i_1_n_0 ;
  wire \ipc_data[31]_i_1_n_0 ;
  wire \ipc_data[31]_i_2_n_0 ;
  wire \ipc_data[31]_i_3_n_0 ;
  wire ipc_reset_i_1_n_0;
  wire ipc_reset_reg_n_0;
  wire ipc_write;
  wire ipc_write1_carry__0_i_1_n_0;
  wire ipc_write1_carry__0_i_2_n_0;
  wire ipc_write1_carry__0_i_3_n_0;
  wire ipc_write1_carry__0_i_4_n_0;
  wire ipc_write1_carry__0_n_0;
  wire ipc_write1_carry__0_n_1;
  wire ipc_write1_carry__0_n_2;
  wire ipc_write1_carry__0_n_3;
  wire ipc_write1_carry__1_i_1_n_0;
  wire ipc_write1_carry__1_i_2_n_0;
  wire ipc_write1_carry__1_i_3_n_0;
  wire ipc_write1_carry__1_n_1;
  wire ipc_write1_carry__1_n_2;
  wire ipc_write1_carry__1_n_3;
  wire ipc_write1_carry_i_1_n_0;
  wire ipc_write1_carry_i_2_n_0;
  wire ipc_write1_carry_i_3_n_0;
  wire ipc_write1_carry_i_4_n_0;
  wire ipc_write1_carry_n_0;
  wire ipc_write1_carry_n_1;
  wire ipc_write1_carry_n_2;
  wire ipc_write1_carry_n_3;
  wire ipc_write_i_2_n_0;
  wire ipc_write_i_3_n_0;
  wire ipc_write_reg_n_0;
  wire [31:1]minusOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_i_4_n_0;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__3_i_1_n_0;
  wire minusOp_carry__3_i_2_n_0;
  wire minusOp_carry__3_i_3_n_0;
  wire minusOp_carry__3_i_4_n_0;
  wire minusOp_carry__3_n_0;
  wire minusOp_carry__3_n_1;
  wire minusOp_carry__3_n_2;
  wire minusOp_carry__3_n_3;
  wire minusOp_carry__4_i_1_n_0;
  wire minusOp_carry__4_i_2_n_0;
  wire minusOp_carry__4_i_3_n_0;
  wire minusOp_carry__4_i_4_n_0;
  wire minusOp_carry__4_n_0;
  wire minusOp_carry__4_n_1;
  wire minusOp_carry__4_n_2;
  wire minusOp_carry__4_n_3;
  wire minusOp_carry__5_i_1_n_0;
  wire minusOp_carry__5_i_2_n_0;
  wire minusOp_carry__5_i_3_n_0;
  wire minusOp_carry__5_i_4_n_0;
  wire minusOp_carry__5_n_0;
  wire minusOp_carry__5_n_1;
  wire minusOp_carry__5_n_2;
  wire minusOp_carry__5_n_3;
  wire minusOp_carry__6_i_1_n_0;
  wire minusOp_carry__6_i_2_n_0;
  wire minusOp_carry__6_i_3_n_0;
  wire minusOp_carry__6_n_2;
  wire minusOp_carry__6_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire miso_i;
  wire \misobitptr[0]_i_1_n_0 ;
  wire \misobitptr[1]_i_1_n_0 ;
  wire \misobitptr[2]_i_1_n_0 ;
  wire \misobitptr[3]_i_1_n_0 ;
  wire \misobitptr[4]_i_10_n_0 ;
  wire \misobitptr[4]_i_11_n_0 ;
  wire \misobitptr[4]_i_12_n_0 ;
  wire \misobitptr[4]_i_1_n_0 ;
  wire \misobitptr[4]_i_2_n_0 ;
  wire \misobitptr[4]_i_3_n_0 ;
  wire \misobitptr[4]_i_4_n_0 ;
  wire \misobitptr[4]_i_5_n_0 ;
  wire \misobitptr[4]_i_6_n_0 ;
  wire \misobitptr[4]_i_7_n_0 ;
  wire \misobitptr[4]_i_8_n_0 ;
  wire \misobitptr[4]_i_9_n_0 ;
  wire \misobitptr_reg_n_0_[0] ;
  wire \misobitptr_reg_n_0_[1] ;
  wire \misobitptr_reg_n_0_[2] ;
  wire \misobitptr_reg_n_0_[3] ;
  wire \misobitptr_reg_n_0_[4] ;
  wire [31:31]misodata;
  wire \misodata[0]_i_1_n_0 ;
  wire \misodata[10]_i_1_n_0 ;
  wire \misodata[11]_i_1_n_0 ;
  wire \misodata[12]_i_1_n_0 ;
  wire \misodata[13]_i_1_n_0 ;
  wire \misodata[14]_i_1_n_0 ;
  wire \misodata[15]_i_1_n_0 ;
  wire \misodata[15]_i_2_n_0 ;
  wire \misodata[16]_i_1_n_0 ;
  wire \misodata[17]_i_1_n_0 ;
  wire \misodata[18]_i_1_n_0 ;
  wire \misodata[19]_i_1_n_0 ;
  wire \misodata[1]_i_1_n_0 ;
  wire \misodata[20]_i_1_n_0 ;
  wire \misodata[21]_i_1_n_0 ;
  wire \misodata[22]_i_1_n_0 ;
  wire \misodata[23]_i_1_n_0 ;
  wire \misodata[23]_i_2_n_0 ;
  wire \misodata[24]_i_1_n_0 ;
  wire \misodata[24]_i_2_n_0 ;
  wire \misodata[25]_i_1_n_0 ;
  wire \misodata[25]_i_2_n_0 ;
  wire \misodata[26]_i_1_n_0 ;
  wire \misodata[26]_i_2_n_0 ;
  wire \misodata[27]_i_1_n_0 ;
  wire \misodata[27]_i_2_n_0 ;
  wire \misodata[28]_i_1_n_0 ;
  wire \misodata[28]_i_2_n_0 ;
  wire \misodata[29]_i_1_n_0 ;
  wire \misodata[29]_i_2_n_0 ;
  wire \misodata[2]_i_1_n_0 ;
  wire \misodata[30]_i_1_n_0 ;
  wire \misodata[30]_i_2_n_0 ;
  wire \misodata[31]_i_1_n_0 ;
  wire \misodata[31]_i_3_n_0 ;
  wire \misodata[31]_i_4_n_0 ;
  wire \misodata[3]_i_1_n_0 ;
  wire \misodata[4]_i_1_n_0 ;
  wire \misodata[5]_i_1_n_0 ;
  wire \misodata[6]_i_1_n_0 ;
  wire \misodata[7]_i_1_n_0 ;
  wire \misodata[7]_i_2_n_0 ;
  wire \misodata[8]_i_1_n_0 ;
  wire \misodata[9]_i_1_n_0 ;
  wire \misodata_reg_n_0_[0] ;
  wire \misodata_reg_n_0_[10] ;
  wire \misodata_reg_n_0_[11] ;
  wire \misodata_reg_n_0_[12] ;
  wire \misodata_reg_n_0_[13] ;
  wire \misodata_reg_n_0_[14] ;
  wire \misodata_reg_n_0_[15] ;
  wire \misodata_reg_n_0_[16] ;
  wire \misodata_reg_n_0_[17] ;
  wire \misodata_reg_n_0_[18] ;
  wire \misodata_reg_n_0_[19] ;
  wire \misodata_reg_n_0_[1] ;
  wire \misodata_reg_n_0_[20] ;
  wire \misodata_reg_n_0_[21] ;
  wire \misodata_reg_n_0_[22] ;
  wire \misodata_reg_n_0_[23] ;
  wire \misodata_reg_n_0_[24] ;
  wire \misodata_reg_n_0_[25] ;
  wire \misodata_reg_n_0_[26] ;
  wire \misodata_reg_n_0_[27] ;
  wire \misodata_reg_n_0_[28] ;
  wire \misodata_reg_n_0_[29] ;
  wire \misodata_reg_n_0_[2] ;
  wire \misodata_reg_n_0_[30] ;
  wire \misodata_reg_n_0_[31] ;
  wire \misodata_reg_n_0_[3] ;
  wire \misodata_reg_n_0_[4] ;
  wire \misodata_reg_n_0_[5] ;
  wire \misodata_reg_n_0_[6] ;
  wire \misodata_reg_n_0_[7] ;
  wire \misodata_reg_n_0_[8] ;
  wire \misodata_reg_n_0_[9] ;
  wire mosi_o;
  wire mosi_o_i_10_n_0;
  wire mosi_o_i_11_n_0;
  wire mosi_o_i_12_n_0;
  wire mosi_o_i_13_n_0;
  wire mosi_o_i_14_n_0;
  wire mosi_o_i_15_n_0;
  wire mosi_o_i_16_n_0;
  wire mosi_o_i_1_n_0;
  wire mosi_o_i_2_n_0;
  wire mosi_o_i_9_n_0;
  wire mosi_o_reg_i_3_n_0;
  wire mosi_o_reg_i_4_n_0;
  wire mosi_o_reg_i_5_n_0;
  wire mosi_o_reg_i_6_n_0;
  wire mosi_o_reg_i_7_n_0;
  wire mosi_o_reg_i_8_n_0;
  wire \mosiaddress[31]_i_1_n_0 ;
  wire \mosiaddress[31]_i_2_n_0 ;
  wire \mosiaddress_reg_n_0_[10] ;
  wire \mosiaddress_reg_n_0_[11] ;
  wire \mosiaddress_reg_n_0_[12] ;
  wire \mosiaddress_reg_n_0_[13] ;
  wire \mosiaddress_reg_n_0_[14] ;
  wire \mosiaddress_reg_n_0_[15] ;
  wire \mosiaddress_reg_n_0_[16] ;
  wire \mosiaddress_reg_n_0_[17] ;
  wire \mosiaddress_reg_n_0_[18] ;
  wire \mosiaddress_reg_n_0_[19] ;
  wire \mosiaddress_reg_n_0_[1] ;
  wire \mosiaddress_reg_n_0_[20] ;
  wire \mosiaddress_reg_n_0_[21] ;
  wire \mosiaddress_reg_n_0_[22] ;
  wire \mosiaddress_reg_n_0_[23] ;
  wire \mosiaddress_reg_n_0_[24] ;
  wire \mosiaddress_reg_n_0_[25] ;
  wire \mosiaddress_reg_n_0_[26] ;
  wire \mosiaddress_reg_n_0_[27] ;
  wire \mosiaddress_reg_n_0_[28] ;
  wire \mosiaddress_reg_n_0_[29] ;
  wire \mosiaddress_reg_n_0_[2] ;
  wire \mosiaddress_reg_n_0_[30] ;
  wire \mosiaddress_reg_n_0_[31] ;
  wire \mosiaddress_reg_n_0_[3] ;
  wire \mosiaddress_reg_n_0_[4] ;
  wire \mosiaddress_reg_n_0_[5] ;
  wire \mosiaddress_reg_n_0_[6] ;
  wire \mosiaddress_reg_n_0_[7] ;
  wire \mosiaddress_reg_n_0_[8] ;
  wire \mosiaddress_reg_n_0_[9] ;
  wire [3:0]mosibitptr;
  wire \mosibitptr[2]_i_1_n_0 ;
  wire \mosibitptr[4]_i_1_n_0 ;
  wire \mosibitptr_reg_n_0_[0] ;
  wire \mosibitptr_reg_n_0_[1] ;
  wire \mosibitptr_reg_n_0_[2] ;
  wire \mosibitptr_reg_n_0_[3] ;
  wire \mosibitptr_reg_n_0_[4] ;
  wire \mosidata[31]_i_1_n_0 ;
  wire \mosidata[31]_i_2_n_0 ;
  wire \mosidata[31]_i_3_n_0 ;
  wire \mosidata_reg_n_0_[0] ;
  wire \mosidata_reg_n_0_[10] ;
  wire \mosidata_reg_n_0_[11] ;
  wire \mosidata_reg_n_0_[12] ;
  wire \mosidata_reg_n_0_[13] ;
  wire \mosidata_reg_n_0_[14] ;
  wire \mosidata_reg_n_0_[15] ;
  wire \mosidata_reg_n_0_[16] ;
  wire \mosidata_reg_n_0_[17] ;
  wire \mosidata_reg_n_0_[18] ;
  wire \mosidata_reg_n_0_[19] ;
  wire \mosidata_reg_n_0_[1] ;
  wire \mosidata_reg_n_0_[20] ;
  wire \mosidata_reg_n_0_[21] ;
  wire \mosidata_reg_n_0_[22] ;
  wire \mosidata_reg_n_0_[23] ;
  wire \mosidata_reg_n_0_[24] ;
  wire \mosidata_reg_n_0_[25] ;
  wire \mosidata_reg_n_0_[26] ;
  wire \mosidata_reg_n_0_[27] ;
  wire \mosidata_reg_n_0_[28] ;
  wire \mosidata_reg_n_0_[29] ;
  wire \mosidata_reg_n_0_[2] ;
  wire \mosidata_reg_n_0_[30] ;
  wire \mosidata_reg_n_0_[31] ;
  wire \mosidata_reg_n_0_[3] ;
  wire \mosidata_reg_n_0_[4] ;
  wire \mosidata_reg_n_0_[5] ;
  wire \mosidata_reg_n_0_[6] ;
  wire \mosidata_reg_n_0_[7] ;
  wire \mosidata_reg_n_0_[8] ;
  wire \mosidata_reg_n_0_[9] ;
  wire p_0_in;
  wire \plusOp_inferred__3/i__carry__0_n_0 ;
  wire \plusOp_inferred__3/i__carry__0_n_1 ;
  wire \plusOp_inferred__3/i__carry__0_n_2 ;
  wire \plusOp_inferred__3/i__carry__0_n_3 ;
  wire \plusOp_inferred__3/i__carry__1_n_0 ;
  wire \plusOp_inferred__3/i__carry__1_n_1 ;
  wire \plusOp_inferred__3/i__carry__1_n_2 ;
  wire \plusOp_inferred__3/i__carry__1_n_3 ;
  wire \plusOp_inferred__3/i__carry__2_n_0 ;
  wire \plusOp_inferred__3/i__carry__2_n_1 ;
  wire \plusOp_inferred__3/i__carry__2_n_2 ;
  wire \plusOp_inferred__3/i__carry__2_n_3 ;
  wire \plusOp_inferred__3/i__carry__3_n_0 ;
  wire \plusOp_inferred__3/i__carry__3_n_1 ;
  wire \plusOp_inferred__3/i__carry__3_n_2 ;
  wire \plusOp_inferred__3/i__carry__3_n_3 ;
  wire \plusOp_inferred__3/i__carry__4_n_0 ;
  wire \plusOp_inferred__3/i__carry__4_n_1 ;
  wire \plusOp_inferred__3/i__carry__4_n_2 ;
  wire \plusOp_inferred__3/i__carry__4_n_3 ;
  wire \plusOp_inferred__3/i__carry__5_n_0 ;
  wire \plusOp_inferred__3/i__carry__5_n_1 ;
  wire \plusOp_inferred__3/i__carry__5_n_2 ;
  wire \plusOp_inferred__3/i__carry__5_n_3 ;
  wire \plusOp_inferred__3/i__carry__6_n_2 ;
  wire \plusOp_inferred__3/i__carry__6_n_3 ;
  wire \plusOp_inferred__3/i__carry_n_0 ;
  wire \plusOp_inferred__3/i__carry_n_1 ;
  wire \plusOp_inferred__3/i__carry_n_2 ;
  wire \plusOp_inferred__3/i__carry_n_3 ;
  wire \plusOp_inferred__4/i__carry__0_n_0 ;
  wire \plusOp_inferred__4/i__carry__0_n_1 ;
  wire \plusOp_inferred__4/i__carry__0_n_2 ;
  wire \plusOp_inferred__4/i__carry__0_n_3 ;
  wire \plusOp_inferred__4/i__carry__1_n_0 ;
  wire \plusOp_inferred__4/i__carry__1_n_1 ;
  wire \plusOp_inferred__4/i__carry__1_n_2 ;
  wire \plusOp_inferred__4/i__carry__1_n_3 ;
  wire \plusOp_inferred__4/i__carry__2_n_0 ;
  wire \plusOp_inferred__4/i__carry__2_n_1 ;
  wire \plusOp_inferred__4/i__carry__2_n_2 ;
  wire \plusOp_inferred__4/i__carry__2_n_3 ;
  wire \plusOp_inferred__4/i__carry__3_n_0 ;
  wire \plusOp_inferred__4/i__carry__3_n_1 ;
  wire \plusOp_inferred__4/i__carry__3_n_2 ;
  wire \plusOp_inferred__4/i__carry__3_n_3 ;
  wire \plusOp_inferred__4/i__carry__4_n_0 ;
  wire \plusOp_inferred__4/i__carry__4_n_1 ;
  wire \plusOp_inferred__4/i__carry__4_n_2 ;
  wire \plusOp_inferred__4/i__carry__4_n_3 ;
  wire \plusOp_inferred__4/i__carry__5_n_0 ;
  wire \plusOp_inferred__4/i__carry__5_n_1 ;
  wire \plusOp_inferred__4/i__carry__5_n_2 ;
  wire \plusOp_inferred__4/i__carry__5_n_3 ;
  wire \plusOp_inferred__4/i__carry__6_n_2 ;
  wire \plusOp_inferred__4/i__carry__6_n_3 ;
  wire \plusOp_inferred__4/i__carry_n_0 ;
  wire \plusOp_inferred__4/i__carry_n_1 ;
  wire \plusOp_inferred__4/i__carry_n_2 ;
  wire \plusOp_inferred__4/i__carry_n_3 ;
  wire sck_o;
  wire sck_o_i_1_n_0;
  wire \sync_reg_control[0]_i_1_n_0 ;
  wire \sync_reg_control_reg_n_0_[0] ;
  wire [31:1]writer_address;
  wire \writer_address[31]_i_1_n_0 ;
  wire \writer_address[31]_i_2_n_0 ;
  wire [2:0]writer_state__0;
  wire [3:0]NLW_clk_counter0_carry_O_UNCONNECTED;
  wire [3:0]NLW_clk_counter0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_clk_counter0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_clk_counter0_carry__1_O_UNCONNECTED;
  wire [3:3]\NLW_clk_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_fsm_State1_carry_O_UNCONNECTED;
  wire [3:0]NLW_fsm_State1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_fsm_State1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_fsm_State1_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_fsm_bits_sent_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_fsm_bits_sent_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_fsm_shutter_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_fsm_skip_counter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_fsm_skip_counter_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_ipc_write1_carry_O_UNCONNECTED;
  wire [3:0]NLW_ipc_write1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_ipc_write1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_ipc_write1_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_minusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_plusOp_inferred__3/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__3/i__carry__6_O_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__4/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__4/i__carry__6_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0044FFF0FF44FFF0)) 
    \FSM_onehot_writer_state[0]_i_1 
       (.I0(\FSM_onehot_writer_state_reg_n_0_[1] ),
        .I1(writer_state__0[2]),
        .I2(ipc_reset_reg_n_0),
        .I3(writer_state__0[0]),
        .I4(clk_en),
        .I5(ipc_write_reg_n_0),
        .O(\FSM_onehot_writer_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0220022)) 
    \FSM_onehot_writer_state[1]_i_1 
       (.I0(\FSM_onehot_writer_state_reg_n_0_[1] ),
        .I1(ipc_reset_reg_n_0),
        .I2(writer_state__0[0]),
        .I3(clk_en),
        .I4(ipc_write_reg_n_0),
        .O(\FSM_onehot_writer_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00AA0C0C)) 
    \FSM_onehot_writer_state[2]_i_1 
       (.I0(\FSM_onehot_writer_state_reg_n_0_[1] ),
        .I1(writer_state__0[2]),
        .I2(ipc_reset_reg_n_0),
        .I3(writer_state__0[0]),
        .I4(clk_en),
        .O(\FSM_onehot_writer_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "writer_state_2:100,writer_state_idle:001,writer_state_1:010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_writer_state_reg[0] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\FSM_onehot_writer_state[0]_i_1_n_0 ),
        .Q(writer_state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "writer_state_2:100,writer_state_idle:001,writer_state_1:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_writer_state_reg[1] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\FSM_onehot_writer_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_writer_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "writer_state_2:100,writer_state_idle:001,writer_state_1:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_writer_state_reg[2] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\FSM_onehot_writer_state[2]_i_1_n_0 ),
        .Q(writer_state__0[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00003333BBBB3330)) 
    \FSM_sequential_fsm_State[0]_i_1 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_State[0]),
        .I2(p_0_in),
        .I3(\sync_reg_control_reg_n_0_[0] ),
        .I4(fsm_State[2]),
        .I5(fsm_State[1]),
        .O(fsm_State__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1454)) 
    \FSM_sequential_fsm_State[1]_i_1 
       (.I0(fsm_State[2]),
        .I1(fsm_State[1]),
        .I2(fsm_State[0]),
        .I3(ipc_write1_carry__1_n_1),
        .O(fsm_State__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h38083030)) 
    \FSM_sequential_fsm_State[2]_i_1 
       (.I0(ipc_write1_carry__1_n_1),
        .I1(fsm_State[1]),
        .I2(fsm_State[2]),
        .I3(fsm_State1_carry__2_n_0),
        .I4(fsm_State[0]),
        .O(fsm_State__0[2]));
  (* FSM_ENCODED_STATES = "fsm_state_sck_rising:011,fsm_state_start:001,fsm_state_idle:000,fsm_state_shutter:101,fsm_state_sck_falling:010,fsm_state_end:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_fsm_State_reg[0] 
       (.C(ctl_clk_i),
        .CE(clk_en),
        .D(fsm_State__0[0]),
        .Q(fsm_State[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fsm_state_sck_rising:011,fsm_state_start:001,fsm_state_idle:000,fsm_state_shutter:101,fsm_state_sck_falling:010,fsm_state_end:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_fsm_State_reg[1] 
       (.C(ctl_clk_i),
        .CE(clk_en),
        .D(fsm_State__0[1]),
        .Q(fsm_State[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "fsm_state_sck_rising:011,fsm_state_start:001,fsm_state_idle:000,fsm_state_shutter:101,fsm_state_sck_falling:010,fsm_state_end:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_fsm_State_reg[2] 
       (.C(ctl_clk_i),
        .CE(clk_en),
        .D(fsm_State__0[2]),
        .Q(fsm_State[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00A8AAAA00000000)) 
    \cfgmem_addr_o[31]_i_1 
       (.I0(cfgmem_ena_o_i_1_n_0),
        .I1(p_0_in),
        .I2(\sync_reg_control_reg_n_0_[0] ),
        .I3(fsm_State[1]),
        .I4(\mosibitptr_reg_n_0_[0] ),
        .I5(clk_en),
        .O(\cfgmem_addr_o[31]_i_1_n_0 ));
  FDRE \cfgmem_addr_o_reg[10] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[10] ),
        .Q(cfgmem_addr_o[9]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[11] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[11] ),
        .Q(cfgmem_addr_o[10]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[12] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[12] ),
        .Q(cfgmem_addr_o[11]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[13] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[13] ),
        .Q(cfgmem_addr_o[12]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[14] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[14] ),
        .Q(cfgmem_addr_o[13]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[15] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[15] ),
        .Q(cfgmem_addr_o[14]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[16] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[16] ),
        .Q(cfgmem_addr_o[15]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[17] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[17] ),
        .Q(cfgmem_addr_o[16]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[18] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[18] ),
        .Q(cfgmem_addr_o[17]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[19] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[19] ),
        .Q(cfgmem_addr_o[18]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[1] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[1] ),
        .Q(cfgmem_addr_o[0]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[20] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[20] ),
        .Q(cfgmem_addr_o[19]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[21] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[21] ),
        .Q(cfgmem_addr_o[20]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[22] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[22] ),
        .Q(cfgmem_addr_o[21]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[23] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[23] ),
        .Q(cfgmem_addr_o[22]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[24] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[24] ),
        .Q(cfgmem_addr_o[23]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[25] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[25] ),
        .Q(cfgmem_addr_o[24]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[26] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[26] ),
        .Q(cfgmem_addr_o[25]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[27] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[27] ),
        .Q(cfgmem_addr_o[26]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[28] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[28] ),
        .Q(cfgmem_addr_o[27]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[29] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[29] ),
        .Q(cfgmem_addr_o[28]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[2] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[2] ),
        .Q(cfgmem_addr_o[1]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[30] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[30] ),
        .Q(cfgmem_addr_o[29]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[31] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[31] ),
        .Q(cfgmem_addr_o[30]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[3] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[3] ),
        .Q(cfgmem_addr_o[2]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[4] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[4] ),
        .Q(cfgmem_addr_o[3]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[5] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[5] ),
        .Q(cfgmem_addr_o[4]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[6] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[6] ),
        .Q(cfgmem_addr_o[5]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[7] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[7] ),
        .Q(cfgmem_addr_o[6]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[8] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[8] ),
        .Q(cfgmem_addr_o[7]),
        .R(1'b0));
  FDRE \cfgmem_addr_o_reg[9] 
       (.C(ctl_clk_i),
        .CE(\cfgmem_addr_o[31]_i_1_n_0 ),
        .D(\mosiaddress_reg_n_0_[9] ),
        .Q(cfgmem_addr_o[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001000111010001)) 
    cfgmem_ena_o_i_1
       (.I0(fsm_State[2]),
        .I1(fsm_State[0]),
        .I2(cfgmem_ena_o_i_2_n_0),
        .I3(fsm_State[1]),
        .I4(\mosibitptr_reg_n_0_[1] ),
        .I5(cfgmem_ena_o_i_3_n_0),
        .O(cfgmem_ena_o_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    cfgmem_ena_o_i_2
       (.I0(p_0_in),
        .I1(\sync_reg_control_reg_n_0_[0] ),
        .O(cfgmem_ena_o_i_2_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    cfgmem_ena_o_i_3
       (.I0(\mosibitptr_reg_n_0_[3] ),
        .I1(\mosibitptr_reg_n_0_[2] ),
        .I2(\mosibitptr_reg_n_0_[4] ),
        .O(cfgmem_ena_o_i_3_n_0));
  FDRE cfgmem_ena_o_reg
       (.C(ctl_clk_i),
        .CE(clk_en),
        .D(cfgmem_ena_o_i_1_n_0),
        .Q(cfgmem_ena_o),
        .R(1'b0));
  CARRY4 clk_counter0_carry
       (.CI(1'b0),
        .CO({clk_counter0_carry_n_0,clk_counter0_carry_n_1,clk_counter0_carry_n_2,clk_counter0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_clk_counter0_carry_O_UNCONNECTED[3:0]),
        .S({clk_counter0_carry_i_1_n_0,clk_counter0_carry_i_2_n_0,clk_counter0_carry_i_3_n_0,clk_counter0_carry_i_4_n_0}));
  CARRY4 clk_counter0_carry__0
       (.CI(clk_counter0_carry_n_0),
        .CO({clk_counter0_carry__0_n_0,clk_counter0_carry__0_n_1,clk_counter0_carry__0_n_2,clk_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_clk_counter0_carry__0_O_UNCONNECTED[3:0]),
        .S({clk_counter0_carry__0_i_1_n_0,clk_counter0_carry__0_i_2_n_0,clk_counter0_carry__0_i_3_n_0,clk_counter0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_counter0_carry__0_i_1
       (.I0(clk_counter_reg[22]),
        .I1(ctl_reg_downcounter[22]),
        .I2(clk_counter_reg[21]),
        .I3(ctl_reg_downcounter[21]),
        .I4(ctl_reg_downcounter[23]),
        .I5(clk_counter_reg[23]),
        .O(clk_counter0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_counter0_carry__0_i_2
       (.I0(clk_counter_reg[18]),
        .I1(ctl_reg_downcounter[18]),
        .I2(clk_counter_reg[19]),
        .I3(ctl_reg_downcounter[19]),
        .I4(ctl_reg_downcounter[20]),
        .I5(clk_counter_reg[20]),
        .O(clk_counter0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_counter0_carry__0_i_3
       (.I0(clk_counter_reg[15]),
        .I1(ctl_reg_downcounter[15]),
        .I2(clk_counter_reg[16]),
        .I3(ctl_reg_downcounter[16]),
        .I4(ctl_reg_downcounter[17]),
        .I5(clk_counter_reg[17]),
        .O(clk_counter0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_counter0_carry__0_i_4
       (.I0(clk_counter_reg[12]),
        .I1(ctl_reg_downcounter[12]),
        .I2(clk_counter_reg[13]),
        .I3(ctl_reg_downcounter[13]),
        .I4(ctl_reg_downcounter[14]),
        .I5(clk_counter_reg[14]),
        .O(clk_counter0_carry__0_i_4_n_0));
  CARRY4 clk_counter0_carry__1
       (.CI(clk_counter0_carry__0_n_0),
        .CO({NLW_clk_counter0_carry__1_CO_UNCONNECTED[3],clk_counter0_carry__1_n_1,clk_counter0_carry__1_n_2,clk_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_clk_counter0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,clk_counter0_carry__1_i_1_n_0,clk_counter0_carry__1_i_2_n_0,clk_counter0_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    clk_counter0_carry__1_i_1
       (.I0(clk_counter_reg[31]),
        .I1(ctl_reg_downcounter[31]),
        .I2(ctl_reg_downcounter[30]),
        .I3(clk_counter_reg[30]),
        .O(clk_counter0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_counter0_carry__1_i_2
       (.I0(clk_counter_reg[27]),
        .I1(ctl_reg_downcounter[27]),
        .I2(clk_counter_reg[28]),
        .I3(ctl_reg_downcounter[28]),
        .I4(ctl_reg_downcounter[29]),
        .I5(clk_counter_reg[29]),
        .O(clk_counter0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_counter0_carry__1_i_3
       (.I0(clk_counter_reg[26]),
        .I1(ctl_reg_downcounter[26]),
        .I2(clk_counter_reg[24]),
        .I3(ctl_reg_downcounter[24]),
        .I4(ctl_reg_downcounter[25]),
        .I5(clk_counter_reg[25]),
        .O(clk_counter0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_counter0_carry_i_1
       (.I0(clk_counter_reg[9]),
        .I1(ctl_reg_downcounter[9]),
        .I2(clk_counter_reg[10]),
        .I3(ctl_reg_downcounter[10]),
        .I4(ctl_reg_downcounter[11]),
        .I5(clk_counter_reg[11]),
        .O(clk_counter0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_counter0_carry_i_2
       (.I0(clk_counter_reg[8]),
        .I1(ctl_reg_downcounter[8]),
        .I2(clk_counter_reg[6]),
        .I3(ctl_reg_downcounter[6]),
        .I4(ctl_reg_downcounter[7]),
        .I5(clk_counter_reg[7]),
        .O(clk_counter0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_counter0_carry_i_3
       (.I0(clk_counter_reg[3]),
        .I1(ctl_reg_downcounter[3]),
        .I2(clk_counter_reg[4]),
        .I3(ctl_reg_downcounter[4]),
        .I4(ctl_reg_downcounter[5]),
        .I5(clk_counter_reg[5]),
        .O(clk_counter0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    clk_counter0_carry_i_4
       (.I0(clk_counter_reg[0]),
        .I1(ctl_reg_downcounter[0]),
        .I2(clk_counter_reg[1]),
        .I3(ctl_reg_downcounter[1]),
        .I4(ctl_reg_downcounter[2]),
        .I5(clk_counter_reg[2]),
        .O(clk_counter0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \clk_counter[0]_i_1 
       (.I0(clk_counter0_carry__1_n_1),
        .I1(clk_update_counter_reg_n_0),
        .O(\clk_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_3 
       (.I0(clk_counter_reg[0]),
        .O(\clk_counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[0] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_2_n_7 ),
        .Q(clk_counter_reg[0]),
        .R(\clk_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clk_counter_reg[0]_i_2_n_0 ,\clk_counter_reg[0]_i_2_n_1 ,\clk_counter_reg[0]_i_2_n_2 ,\clk_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_counter_reg[0]_i_2_n_4 ,\clk_counter_reg[0]_i_2_n_5 ,\clk_counter_reg[0]_i_2_n_6 ,\clk_counter_reg[0]_i_2_n_7 }),
        .S({clk_counter_reg[3:1],\clk_counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[10] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_5 ),
        .Q(clk_counter_reg[10]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[11] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_4 ),
        .Q(clk_counter_reg[11]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[12] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_7 ),
        .Q(clk_counter_reg[12]),
        .R(\clk_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[12]_i_1 
       (.CI(\clk_counter_reg[8]_i_1_n_0 ),
        .CO({\clk_counter_reg[12]_i_1_n_0 ,\clk_counter_reg[12]_i_1_n_1 ,\clk_counter_reg[12]_i_1_n_2 ,\clk_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[12]_i_1_n_4 ,\clk_counter_reg[12]_i_1_n_5 ,\clk_counter_reg[12]_i_1_n_6 ,\clk_counter_reg[12]_i_1_n_7 }),
        .S(clk_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[13] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_6 ),
        .Q(clk_counter_reg[13]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[14] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_5 ),
        .Q(clk_counter_reg[14]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[15] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_4 ),
        .Q(clk_counter_reg[15]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[16] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1_n_7 ),
        .Q(clk_counter_reg[16]),
        .R(\clk_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[16]_i_1 
       (.CI(\clk_counter_reg[12]_i_1_n_0 ),
        .CO({\clk_counter_reg[16]_i_1_n_0 ,\clk_counter_reg[16]_i_1_n_1 ,\clk_counter_reg[16]_i_1_n_2 ,\clk_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[16]_i_1_n_4 ,\clk_counter_reg[16]_i_1_n_5 ,\clk_counter_reg[16]_i_1_n_6 ,\clk_counter_reg[16]_i_1_n_7 }),
        .S(clk_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[17] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1_n_6 ),
        .Q(clk_counter_reg[17]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[18] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1_n_5 ),
        .Q(clk_counter_reg[18]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[19] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1_n_4 ),
        .Q(clk_counter_reg[19]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[1] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_2_n_6 ),
        .Q(clk_counter_reg[1]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[20] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[20]_i_1_n_7 ),
        .Q(clk_counter_reg[20]),
        .R(\clk_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[20]_i_1 
       (.CI(\clk_counter_reg[16]_i_1_n_0 ),
        .CO({\clk_counter_reg[20]_i_1_n_0 ,\clk_counter_reg[20]_i_1_n_1 ,\clk_counter_reg[20]_i_1_n_2 ,\clk_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[20]_i_1_n_4 ,\clk_counter_reg[20]_i_1_n_5 ,\clk_counter_reg[20]_i_1_n_6 ,\clk_counter_reg[20]_i_1_n_7 }),
        .S(clk_counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[21] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[20]_i_1_n_6 ),
        .Q(clk_counter_reg[21]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[22] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[20]_i_1_n_5 ),
        .Q(clk_counter_reg[22]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[23] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[20]_i_1_n_4 ),
        .Q(clk_counter_reg[23]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[24] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[24]_i_1_n_7 ),
        .Q(clk_counter_reg[24]),
        .R(\clk_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[24]_i_1 
       (.CI(\clk_counter_reg[20]_i_1_n_0 ),
        .CO({\clk_counter_reg[24]_i_1_n_0 ,\clk_counter_reg[24]_i_1_n_1 ,\clk_counter_reg[24]_i_1_n_2 ,\clk_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[24]_i_1_n_4 ,\clk_counter_reg[24]_i_1_n_5 ,\clk_counter_reg[24]_i_1_n_6 ,\clk_counter_reg[24]_i_1_n_7 }),
        .S(clk_counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[25] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[24]_i_1_n_6 ),
        .Q(clk_counter_reg[25]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[26] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[24]_i_1_n_5 ),
        .Q(clk_counter_reg[26]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[27] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[24]_i_1_n_4 ),
        .Q(clk_counter_reg[27]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[28] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[28]_i_1_n_7 ),
        .Q(clk_counter_reg[28]),
        .R(\clk_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[28]_i_1 
       (.CI(\clk_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_clk_counter_reg[28]_i_1_CO_UNCONNECTED [3],\clk_counter_reg[28]_i_1_n_1 ,\clk_counter_reg[28]_i_1_n_2 ,\clk_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[28]_i_1_n_4 ,\clk_counter_reg[28]_i_1_n_5 ,\clk_counter_reg[28]_i_1_n_6 ,\clk_counter_reg[28]_i_1_n_7 }),
        .S(clk_counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[29] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[28]_i_1_n_6 ),
        .Q(clk_counter_reg[29]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[2] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_2_n_5 ),
        .Q(clk_counter_reg[2]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[30] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[28]_i_1_n_5 ),
        .Q(clk_counter_reg[30]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[31] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[28]_i_1_n_4 ),
        .Q(clk_counter_reg[31]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[3] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_2_n_4 ),
        .Q(clk_counter_reg[3]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[4] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_7 ),
        .Q(clk_counter_reg[4]),
        .R(\clk_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[4]_i_1 
       (.CI(\clk_counter_reg[0]_i_2_n_0 ),
        .CO({\clk_counter_reg[4]_i_1_n_0 ,\clk_counter_reg[4]_i_1_n_1 ,\clk_counter_reg[4]_i_1_n_2 ,\clk_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[4]_i_1_n_4 ,\clk_counter_reg[4]_i_1_n_5 ,\clk_counter_reg[4]_i_1_n_6 ,\clk_counter_reg[4]_i_1_n_7 }),
        .S(clk_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[5] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_6 ),
        .Q(clk_counter_reg[5]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[6] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_5 ),
        .Q(clk_counter_reg[6]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[7] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_4 ),
        .Q(clk_counter_reg[7]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[8] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_7 ),
        .Q(clk_counter_reg[8]),
        .R(\clk_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[8]_i_1 
       (.CI(\clk_counter_reg[4]_i_1_n_0 ),
        .CO({\clk_counter_reg[8]_i_1_n_0 ,\clk_counter_reg[8]_i_1_n_1 ,\clk_counter_reg[8]_i_1_n_2 ,\clk_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[8]_i_1_n_4 ,\clk_counter_reg[8]_i_1_n_5 ,\clk_counter_reg[8]_i_1_n_6 ,\clk_counter_reg[8]_i_1_n_7 }),
        .S(clk_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[9] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_6 ),
        .Q(clk_counter_reg[9]),
        .R(\clk_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    clk_en_reg
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(clk_counter0_carry__1_n_1),
        .Q(clk_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAA0030AAAA0000)) 
    clk_update_counter_i_1
       (.I0(clk_update_counter_reg_n_0),
        .I1(clk_update_counter_i_2_n_0),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(clk_update_counter_i_3_n_0),
        .I4(ctl_rst_i),
        .I5(ctl_ena_i),
        .O(clk_update_counter_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clk_update_counter_i_2
       (.I0(ctl_addr_i[3]),
        .I1(ctl_addr_i[0]),
        .I2(ctl_addr_i[4]),
        .I3(ctl_addr_i[1]),
        .I4(ctl_addr_i[2]),
        .O(clk_update_counter_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_update_counter_i_3
       (.I0(\ctl_reg_downcounter[31]_i_6_n_0 ),
        .I1(clk_update_counter_i_4_n_0),
        .I2(\ctl_reg_downcounter[31]_i_7_n_0 ),
        .I3(clk_update_counter_i_5_n_0),
        .O(clk_update_counter_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_update_counter_i_4
       (.I0(ctl_addr_i[19]),
        .I1(ctl_addr_i[14]),
        .I2(ctl_addr_i[31]),
        .I3(ctl_addr_i[18]),
        .O(clk_update_counter_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_update_counter_i_5
       (.I0(ctl_addr_i[25]),
        .I1(ctl_addr_i[5]),
        .I2(ctl_addr_i[26]),
        .I3(ctl_addr_i[15]),
        .O(clk_update_counter_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_update_counter_reg
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(clk_update_counter_i_1_n_0),
        .Q(clk_update_counter_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFBFF0044)) 
    cs_o_i_1
       (.I0(fsm_State[1]),
        .I1(clk_en),
        .I2(fsm_State[2]),
        .I3(fsm_State[0]),
        .I4(cs_o),
        .O(cs_o_i_1_n_0));
  FDRE cs_o_reg
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(cs_o_i_1_n_0),
        .Q(cs_o),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ctl_reg_bits_to_write[15]_i_1 
       (.I0(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I1(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(ctl_wea_i[1]),
        .I4(\ctl_reg_bits_to_write[31]_i_2_n_0 ),
        .O(\ctl_reg_bits_to_write[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ctl_reg_bits_to_write[23]_i_1 
       (.I0(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I1(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(ctl_wea_i[2]),
        .I4(\ctl_reg_bits_to_write[31]_i_2_n_0 ),
        .O(\ctl_reg_bits_to_write[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ctl_reg_bits_to_write[31]_i_1 
       (.I0(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I1(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(ctl_wea_i[3]),
        .I4(\ctl_reg_bits_to_write[31]_i_2_n_0 ),
        .O(\ctl_reg_bits_to_write[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ctl_reg_bits_to_write[31]_i_2 
       (.I0(ctl_addr_i[0]),
        .I1(ctl_addr_i[3]),
        .I2(ctl_addr_i[4]),
        .I3(\ctl_reg_bits_to_write[31]_i_3_n_0 ),
        .I4(ctl_rst_i),
        .I5(ctl_addr_i[1]),
        .O(\ctl_reg_bits_to_write[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ctl_reg_bits_to_write[31]_i_3 
       (.I0(ctl_ena_i),
        .I1(ctl_addr_i[2]),
        .O(\ctl_reg_bits_to_write[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ctl_reg_bits_to_write[7]_i_1 
       (.I0(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I1(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(ctl_wea_i[0]),
        .I4(\ctl_reg_bits_to_write[31]_i_2_n_0 ),
        .O(\ctl_reg_bits_to_write[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[0] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[7]_i_1_n_0 ),
        .D(ctl_data_i[0]),
        .Q(ctl_reg_bits_to_write[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[10] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[15]_i_1_n_0 ),
        .D(ctl_data_i[10]),
        .Q(ctl_reg_bits_to_write[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[11] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[15]_i_1_n_0 ),
        .D(ctl_data_i[11]),
        .Q(ctl_reg_bits_to_write[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[12] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[15]_i_1_n_0 ),
        .D(ctl_data_i[12]),
        .Q(ctl_reg_bits_to_write[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[13] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[15]_i_1_n_0 ),
        .D(ctl_data_i[13]),
        .Q(ctl_reg_bits_to_write[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[14] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[15]_i_1_n_0 ),
        .D(ctl_data_i[14]),
        .Q(ctl_reg_bits_to_write[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[15] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[15]_i_1_n_0 ),
        .D(ctl_data_i[15]),
        .Q(ctl_reg_bits_to_write[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[16] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[23]_i_1_n_0 ),
        .D(ctl_data_i[16]),
        .Q(ctl_reg_bits_to_write[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[17] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[23]_i_1_n_0 ),
        .D(ctl_data_i[17]),
        .Q(ctl_reg_bits_to_write[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[18] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[23]_i_1_n_0 ),
        .D(ctl_data_i[18]),
        .Q(ctl_reg_bits_to_write[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[19] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[23]_i_1_n_0 ),
        .D(ctl_data_i[19]),
        .Q(ctl_reg_bits_to_write[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[1] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[7]_i_1_n_0 ),
        .D(ctl_data_i[1]),
        .Q(ctl_reg_bits_to_write[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[20] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[23]_i_1_n_0 ),
        .D(ctl_data_i[20]),
        .Q(ctl_reg_bits_to_write[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[21] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[23]_i_1_n_0 ),
        .D(ctl_data_i[21]),
        .Q(ctl_reg_bits_to_write[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[22] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[23]_i_1_n_0 ),
        .D(ctl_data_i[22]),
        .Q(ctl_reg_bits_to_write[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[23] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[23]_i_1_n_0 ),
        .D(ctl_data_i[23]),
        .Q(ctl_reg_bits_to_write[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[24] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[31]_i_1_n_0 ),
        .D(ctl_data_i[24]),
        .Q(ctl_reg_bits_to_write[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[25] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[31]_i_1_n_0 ),
        .D(ctl_data_i[25]),
        .Q(ctl_reg_bits_to_write[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[26] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[31]_i_1_n_0 ),
        .D(ctl_data_i[26]),
        .Q(ctl_reg_bits_to_write[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[27] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[31]_i_1_n_0 ),
        .D(ctl_data_i[27]),
        .Q(ctl_reg_bits_to_write[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[28] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[31]_i_1_n_0 ),
        .D(ctl_data_i[28]),
        .Q(ctl_reg_bits_to_write[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[29] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[31]_i_1_n_0 ),
        .D(ctl_data_i[29]),
        .Q(ctl_reg_bits_to_write[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ctl_reg_bits_to_write_reg[2] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[7]_i_1_n_0 ),
        .D(ctl_data_i[2]),
        .Q(ctl_reg_bits_to_write[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[30] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[31]_i_1_n_0 ),
        .D(ctl_data_i[30]),
        .Q(ctl_reg_bits_to_write[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[31] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[31]_i_1_n_0 ),
        .D(ctl_data_i[31]),
        .Q(ctl_reg_bits_to_write[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[3] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[7]_i_1_n_0 ),
        .D(ctl_data_i[3]),
        .Q(ctl_reg_bits_to_write[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[4] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[7]_i_1_n_0 ),
        .D(ctl_data_i[4]),
        .Q(ctl_reg_bits_to_write[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[5] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[7]_i_1_n_0 ),
        .D(ctl_data_i[5]),
        .Q(ctl_reg_bits_to_write[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[6] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[7]_i_1_n_0 ),
        .D(ctl_data_i[6]),
        .Q(ctl_reg_bits_to_write[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[7] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[7]_i_1_n_0 ),
        .D(ctl_data_i[7]),
        .Q(ctl_reg_bits_to_write[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[8] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[15]_i_1_n_0 ),
        .D(ctl_data_i[8]),
        .Q(ctl_reg_bits_to_write[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_bits_to_write_reg[9] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_bits_to_write[15]_i_1_n_0 ),
        .D(ctl_data_i[9]),
        .Q(ctl_reg_bits_to_write[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF000404FF000000)) 
    \ctl_reg_control[0]_i_1 
       (.I0(\ctl_reg_control[0]_i_2_n_0 ),
        .I1(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I2(clk_update_counter_i_3_n_0),
        .I3(\ctl_reg_control_reg_n_0_[0] ),
        .I4(ctl_rst_i),
        .I5(ctl_ena_i),
        .O(\ctl_reg_control[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \ctl_reg_control[0]_i_2 
       (.I0(\ctl_reg_downcounter[31]_i_10_n_0 ),
        .I1(ctl_data_i[0]),
        .I2(ctl_addr_i[3]),
        .I3(ctl_wea_i[0]),
        .O(\ctl_reg_control[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0030AAAA0000)) 
    ctl_reg_control_event_i_1
       (.I0(ctl_reg_control_event),
        .I1(ctl_reg_control_event_i_2_n_0),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(clk_update_counter_i_3_n_0),
        .I4(ctl_rst_i),
        .I5(ctl_ena_i),
        .O(ctl_reg_control_event_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    ctl_reg_control_event_i_2
       (.I0(ctl_addr_i[0]),
        .I1(ctl_addr_i[4]),
        .I2(ctl_addr_i[1]),
        .I3(ctl_addr_i[2]),
        .I4(ctl_addr_i[3]),
        .O(ctl_reg_control_event_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ctl_reg_control_event_reg
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(ctl_reg_control_event_i_1_n_0),
        .Q(ctl_reg_control_event),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_control_reg[0] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\ctl_reg_control[0]_i_1_n_0 ),
        .Q(\ctl_reg_control_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ctl_reg_downcounter[15]_i_1 
       (.I0(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I1(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(ctl_wea_i[1]),
        .I4(\ctl_reg_downcounter[31]_i_5_n_0 ),
        .O(\ctl_reg_downcounter[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ctl_reg_downcounter[23]_i_1 
       (.I0(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I1(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(ctl_wea_i[2]),
        .I4(\ctl_reg_downcounter[31]_i_5_n_0 ),
        .O(\ctl_reg_downcounter[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ctl_reg_downcounter[31]_i_1 
       (.I0(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I1(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(ctl_wea_i[3]),
        .I4(\ctl_reg_downcounter[31]_i_5_n_0 ),
        .O(\ctl_reg_downcounter[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctl_reg_downcounter[31]_i_10 
       (.I0(ctl_addr_i[2]),
        .I1(ctl_addr_i[1]),
        .I2(ctl_addr_i[4]),
        .I3(ctl_addr_i[0]),
        .O(\ctl_reg_downcounter[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ctl_reg_downcounter[31]_i_2 
       (.I0(ctl_addr_i[18]),
        .I1(ctl_addr_i[31]),
        .I2(ctl_addr_i[14]),
        .I3(ctl_addr_i[19]),
        .I4(\ctl_reg_downcounter[31]_i_6_n_0 ),
        .O(\ctl_reg_downcounter[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ctl_reg_downcounter[31]_i_3 
       (.I0(ctl_addr_i[15]),
        .I1(ctl_addr_i[26]),
        .I2(ctl_addr_i[5]),
        .I3(ctl_addr_i[25]),
        .I4(\ctl_reg_downcounter[31]_i_7_n_0 ),
        .O(\ctl_reg_downcounter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \ctl_reg_downcounter[31]_i_4 
       (.I0(ctl_addr_i[12]),
        .I1(ctl_addr_i[10]),
        .I2(ctl_addr_i[17]),
        .I3(\ctl_reg_downcounter[31]_i_8_n_0 ),
        .I4(\ctl_reg_downcounter[31]_i_9_n_0 ),
        .O(\ctl_reg_downcounter[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \ctl_reg_downcounter[31]_i_5 
       (.I0(\ctl_reg_downcounter[31]_i_10_n_0 ),
        .I1(ctl_addr_i[3]),
        .I2(ctl_ena_i),
        .I3(ctl_rst_i),
        .O(\ctl_reg_downcounter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctl_reg_downcounter[31]_i_6 
       (.I0(ctl_addr_i[28]),
        .I1(ctl_addr_i[9]),
        .I2(ctl_addr_i[16]),
        .I3(ctl_addr_i[13]),
        .O(\ctl_reg_downcounter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctl_reg_downcounter[31]_i_7 
       (.I0(ctl_addr_i[30]),
        .I1(ctl_addr_i[27]),
        .I2(ctl_addr_i[23]),
        .I3(ctl_addr_i[6]),
        .O(\ctl_reg_downcounter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctl_reg_downcounter[31]_i_8 
       (.I0(ctl_addr_i[22]),
        .I1(ctl_addr_i[11]),
        .I2(ctl_addr_i[21]),
        .I3(ctl_addr_i[8]),
        .O(\ctl_reg_downcounter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctl_reg_downcounter[31]_i_9 
       (.I0(ctl_addr_i[24]),
        .I1(ctl_addr_i[20]),
        .I2(ctl_addr_i[29]),
        .I3(ctl_addr_i[7]),
        .O(\ctl_reg_downcounter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ctl_reg_downcounter[7]_i_1 
       (.I0(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I1(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(ctl_wea_i[0]),
        .I4(\ctl_reg_downcounter[31]_i_5_n_0 ),
        .O(\ctl_reg_downcounter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[0] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[7]_i_1_n_0 ),
        .D(ctl_data_i[0]),
        .Q(ctl_reg_downcounter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[10] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[15]_i_1_n_0 ),
        .D(ctl_data_i[10]),
        .Q(ctl_reg_downcounter[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[11] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[15]_i_1_n_0 ),
        .D(ctl_data_i[11]),
        .Q(ctl_reg_downcounter[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[12] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[15]_i_1_n_0 ),
        .D(ctl_data_i[12]),
        .Q(ctl_reg_downcounter[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[13] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[15]_i_1_n_0 ),
        .D(ctl_data_i[13]),
        .Q(ctl_reg_downcounter[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[14] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[15]_i_1_n_0 ),
        .D(ctl_data_i[14]),
        .Q(ctl_reg_downcounter[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[15] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[15]_i_1_n_0 ),
        .D(ctl_data_i[15]),
        .Q(ctl_reg_downcounter[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[16] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[23]_i_1_n_0 ),
        .D(ctl_data_i[16]),
        .Q(ctl_reg_downcounter[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[17] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[23]_i_1_n_0 ),
        .D(ctl_data_i[17]),
        .Q(ctl_reg_downcounter[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[18] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[23]_i_1_n_0 ),
        .D(ctl_data_i[18]),
        .Q(ctl_reg_downcounter[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[19] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[23]_i_1_n_0 ),
        .D(ctl_data_i[19]),
        .Q(ctl_reg_downcounter[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[1] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[7]_i_1_n_0 ),
        .D(ctl_data_i[1]),
        .Q(ctl_reg_downcounter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[20] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[23]_i_1_n_0 ),
        .D(ctl_data_i[20]),
        .Q(ctl_reg_downcounter[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[21] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[23]_i_1_n_0 ),
        .D(ctl_data_i[21]),
        .Q(ctl_reg_downcounter[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[22] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[23]_i_1_n_0 ),
        .D(ctl_data_i[22]),
        .Q(ctl_reg_downcounter[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[23] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[23]_i_1_n_0 ),
        .D(ctl_data_i[23]),
        .Q(ctl_reg_downcounter[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[24] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[31]_i_1_n_0 ),
        .D(ctl_data_i[24]),
        .Q(ctl_reg_downcounter[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[25] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[31]_i_1_n_0 ),
        .D(ctl_data_i[25]),
        .Q(ctl_reg_downcounter[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[26] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[31]_i_1_n_0 ),
        .D(ctl_data_i[26]),
        .Q(ctl_reg_downcounter[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[27] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[31]_i_1_n_0 ),
        .D(ctl_data_i[27]),
        .Q(ctl_reg_downcounter[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[28] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[31]_i_1_n_0 ),
        .D(ctl_data_i[28]),
        .Q(ctl_reg_downcounter[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[29] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[31]_i_1_n_0 ),
        .D(ctl_data_i[29]),
        .Q(ctl_reg_downcounter[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[2] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[7]_i_1_n_0 ),
        .D(ctl_data_i[2]),
        .Q(ctl_reg_downcounter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[30] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[31]_i_1_n_0 ),
        .D(ctl_data_i[30]),
        .Q(ctl_reg_downcounter[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[31] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[31]_i_1_n_0 ),
        .D(ctl_data_i[31]),
        .Q(ctl_reg_downcounter[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ctl_reg_downcounter_reg[3] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[7]_i_1_n_0 ),
        .D(ctl_data_i[3]),
        .Q(ctl_reg_downcounter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[4] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[7]_i_1_n_0 ),
        .D(ctl_data_i[4]),
        .Q(ctl_reg_downcounter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[5] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[7]_i_1_n_0 ),
        .D(ctl_data_i[5]),
        .Q(ctl_reg_downcounter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[6] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[7]_i_1_n_0 ),
        .D(ctl_data_i[6]),
        .Q(ctl_reg_downcounter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[7] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[7]_i_1_n_0 ),
        .D(ctl_data_i[7]),
        .Q(ctl_reg_downcounter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[8] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[15]_i_1_n_0 ),
        .D(ctl_data_i[8]),
        .Q(ctl_reg_downcounter[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_downcounter_reg[9] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_downcounter[15]_i_1_n_0 ),
        .D(ctl_data_i[9]),
        .Q(ctl_reg_downcounter[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \ctl_reg_options[0]_i_1 
       (.I0(ctl_data_i[0]),
        .I1(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I3(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I4(\ctl_reg_options[2]_i_2_n_0 ),
        .I5(\ctl_reg_options_reg_n_0_[0] ),
        .O(\ctl_reg_options[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \ctl_reg_options[1]_i_1 
       (.I0(ctl_data_i[1]),
        .I1(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I3(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I4(\ctl_reg_options[2]_i_2_n_0 ),
        .I5(\ctl_reg_options_reg_n_0_[1] ),
        .O(\ctl_reg_options[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \ctl_reg_options[2]_i_1 
       (.I0(ctl_data_i[2]),
        .I1(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I3(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I4(\ctl_reg_options[2]_i_2_n_0 ),
        .I5(p_0_in),
        .O(\ctl_reg_options[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ctl_reg_options[2]_i_2 
       (.I0(ctl_rst_i),
        .I1(ctl_addr_i[1]),
        .I2(ctl_addr_i[0]),
        .I3(ctl_addr_i[4]),
        .I4(\ctl_reg_options[2]_i_3_n_0 ),
        .O(\ctl_reg_options[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ctl_reg_options[2]_i_3 
       (.I0(ctl_wea_i[0]),
        .I1(ctl_addr_i[3]),
        .I2(ctl_addr_i[2]),
        .I3(ctl_ena_i),
        .O(\ctl_reg_options[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_options_reg[0] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\ctl_reg_options[0]_i_1_n_0 ),
        .Q(\ctl_reg_options_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_options_reg[1] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\ctl_reg_options[1]_i_1_n_0 ),
        .Q(\ctl_reg_options_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_options_reg[2] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\ctl_reg_options[2]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ctl_reg_shutter[15]_i_1 
       (.I0(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I1(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(ctl_wea_i[1]),
        .I4(\ctl_reg_shutter[31]_i_2_n_0 ),
        .O(\ctl_reg_shutter[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ctl_reg_shutter[23]_i_1 
       (.I0(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I1(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(ctl_wea_i[2]),
        .I4(\ctl_reg_shutter[31]_i_2_n_0 ),
        .O(\ctl_reg_shutter[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ctl_reg_shutter[31]_i_1 
       (.I0(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I1(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(ctl_wea_i[3]),
        .I4(\ctl_reg_shutter[31]_i_2_n_0 ),
        .O(\ctl_reg_shutter[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \ctl_reg_shutter[31]_i_2 
       (.I0(ctl_addr_i[0]),
        .I1(ctl_addr_i[3]),
        .I2(ctl_addr_i[4]),
        .I3(\ctl_reg_shutter[31]_i_3_n_0 ),
        .I4(ctl_addr_i[1]),
        .I5(ctl_addr_i[2]),
        .O(\ctl_reg_shutter[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ctl_reg_shutter[31]_i_3 
       (.I0(ctl_rst_i),
        .I1(ctl_ena_i),
        .O(\ctl_reg_shutter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \ctl_reg_shutter[7]_i_1 
       (.I0(\ctl_reg_downcounter[31]_i_2_n_0 ),
        .I1(\ctl_reg_downcounter[31]_i_3_n_0 ),
        .I2(\ctl_reg_downcounter[31]_i_4_n_0 ),
        .I3(ctl_wea_i[0]),
        .I4(\ctl_reg_shutter[31]_i_2_n_0 ),
        .O(\ctl_reg_shutter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[0] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[7]_i_1_n_0 ),
        .D(ctl_data_i[0]),
        .Q(ctl_reg_shutter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[10] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[15]_i_1_n_0 ),
        .D(ctl_data_i[10]),
        .Q(ctl_reg_shutter[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[11] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[15]_i_1_n_0 ),
        .D(ctl_data_i[11]),
        .Q(ctl_reg_shutter[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[12] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[15]_i_1_n_0 ),
        .D(ctl_data_i[12]),
        .Q(ctl_reg_shutter[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[13] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[15]_i_1_n_0 ),
        .D(ctl_data_i[13]),
        .Q(ctl_reg_shutter[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[14] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[15]_i_1_n_0 ),
        .D(ctl_data_i[14]),
        .Q(ctl_reg_shutter[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[15] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[15]_i_1_n_0 ),
        .D(ctl_data_i[15]),
        .Q(ctl_reg_shutter[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[16] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[23]_i_1_n_0 ),
        .D(ctl_data_i[16]),
        .Q(ctl_reg_shutter[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[17] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[23]_i_1_n_0 ),
        .D(ctl_data_i[17]),
        .Q(ctl_reg_shutter[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[18] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[23]_i_1_n_0 ),
        .D(ctl_data_i[18]),
        .Q(ctl_reg_shutter[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[19] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[23]_i_1_n_0 ),
        .D(ctl_data_i[19]),
        .Q(ctl_reg_shutter[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[1] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[7]_i_1_n_0 ),
        .D(ctl_data_i[1]),
        .Q(ctl_reg_shutter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[20] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[23]_i_1_n_0 ),
        .D(ctl_data_i[20]),
        .Q(ctl_reg_shutter[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[21] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[23]_i_1_n_0 ),
        .D(ctl_data_i[21]),
        .Q(ctl_reg_shutter[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[22] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[23]_i_1_n_0 ),
        .D(ctl_data_i[22]),
        .Q(ctl_reg_shutter[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[23] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[23]_i_1_n_0 ),
        .D(ctl_data_i[23]),
        .Q(ctl_reg_shutter[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[24] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[31]_i_1_n_0 ),
        .D(ctl_data_i[24]),
        .Q(ctl_reg_shutter[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[25] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[31]_i_1_n_0 ),
        .D(ctl_data_i[25]),
        .Q(ctl_reg_shutter[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[26] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[31]_i_1_n_0 ),
        .D(ctl_data_i[26]),
        .Q(ctl_reg_shutter[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[27] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[31]_i_1_n_0 ),
        .D(ctl_data_i[27]),
        .Q(ctl_reg_shutter[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[28] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[31]_i_1_n_0 ),
        .D(ctl_data_i[28]),
        .Q(ctl_reg_shutter[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[29] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[31]_i_1_n_0 ),
        .D(ctl_data_i[29]),
        .Q(ctl_reg_shutter[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[2] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[7]_i_1_n_0 ),
        .D(ctl_data_i[2]),
        .Q(ctl_reg_shutter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[30] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[31]_i_1_n_0 ),
        .D(ctl_data_i[30]),
        .Q(ctl_reg_shutter[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[31] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[31]_i_1_n_0 ),
        .D(ctl_data_i[31]),
        .Q(ctl_reg_shutter[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[3] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[7]_i_1_n_0 ),
        .D(ctl_data_i[3]),
        .Q(ctl_reg_shutter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[4] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[7]_i_1_n_0 ),
        .D(ctl_data_i[4]),
        .Q(ctl_reg_shutter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[5] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[7]_i_1_n_0 ),
        .D(ctl_data_i[5]),
        .Q(ctl_reg_shutter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[6] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[7]_i_1_n_0 ),
        .D(ctl_data_i[6]),
        .Q(ctl_reg_shutter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[7] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[7]_i_1_n_0 ),
        .D(ctl_data_i[7]),
        .Q(ctl_reg_shutter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[8] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[15]_i_1_n_0 ),
        .D(ctl_data_i[8]),
        .Q(ctl_reg_shutter[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctl_reg_shutter_reg[9] 
       (.C(ctl_clk_i),
        .CE(\ctl_reg_shutter[15]_i_1_n_0 ),
        .D(ctl_data_i[9]),
        .Q(ctl_reg_shutter[9]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[10] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[10]),
        .Q(datmem_addr_o[9]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[11] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[11]),
        .Q(datmem_addr_o[10]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[12] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[12]),
        .Q(datmem_addr_o[11]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[13] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[13]),
        .Q(datmem_addr_o[12]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[14] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[14]),
        .Q(datmem_addr_o[13]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[15] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[15]),
        .Q(datmem_addr_o[14]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[16] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[16]),
        .Q(datmem_addr_o[15]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[17] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[17]),
        .Q(datmem_addr_o[16]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[18] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[18]),
        .Q(datmem_addr_o[17]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[19] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[19]),
        .Q(datmem_addr_o[18]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[1] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[1]),
        .Q(datmem_addr_o[0]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[20] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[20]),
        .Q(datmem_addr_o[19]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[21] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[21]),
        .Q(datmem_addr_o[20]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[22] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[22]),
        .Q(datmem_addr_o[21]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[23] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[23]),
        .Q(datmem_addr_o[22]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[24] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[24]),
        .Q(datmem_addr_o[23]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[25] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[25]),
        .Q(datmem_addr_o[24]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[26] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[26]),
        .Q(datmem_addr_o[25]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[27] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[27]),
        .Q(datmem_addr_o[26]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[28] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[28]),
        .Q(datmem_addr_o[27]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[29] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[29]),
        .Q(datmem_addr_o[28]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[2] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[2]),
        .Q(datmem_addr_o[1]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[30] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[30]),
        .Q(datmem_addr_o[29]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[31] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[31]),
        .Q(datmem_addr_o[30]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[3] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[3]),
        .Q(datmem_addr_o[2]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[4] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[4]),
        .Q(datmem_addr_o[3]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[5] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[5]),
        .Q(datmem_addr_o[4]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[6] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[6]),
        .Q(datmem_addr_o[5]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[7] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[7]),
        .Q(datmem_addr_o[6]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[8] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[8]),
        .Q(datmem_addr_o[7]),
        .R(1'b0));
  FDRE \datmem_addr_o_reg[9] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(writer_address[9]),
        .Q(datmem_addr_o[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    datmem_convert_o_i_1
       (.I0(\ctl_reg_options_reg_n_0_[1] ),
        .I1(fsm_State[2]),
        .I2(clk_en),
        .I3(fsm_State[0]),
        .I4(fsm_State[1]),
        .I5(datmem_convert_o),
        .O(datmem_convert_o_i_1_n_0));
  FDRE datmem_convert_o_reg
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(datmem_convert_o_i_1_n_0),
        .Q(datmem_convert_o),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \datmem_data_o[31]_i_1 
       (.I0(ipc_write_reg_n_0),
        .I1(writer_state__0[0]),
        .I2(clk_en),
        .O(\datmem_data_o[31]_i_1_n_0 ));
  FDRE \datmem_data_o_reg[0] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[0]),
        .Q(datmem_data_o[0]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[10] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[10]),
        .Q(datmem_data_o[10]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[11] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[11]),
        .Q(datmem_data_o[11]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[12] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[12]),
        .Q(datmem_data_o[12]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[13] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[13]),
        .Q(datmem_data_o[13]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[14] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[14]),
        .Q(datmem_data_o[14]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[15] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[15]),
        .Q(datmem_data_o[15]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[16] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[16]),
        .Q(datmem_data_o[16]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[17] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[17]),
        .Q(datmem_data_o[17]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[18] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[18]),
        .Q(datmem_data_o[18]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[19] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[19]),
        .Q(datmem_data_o[19]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[1] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[1]),
        .Q(datmem_data_o[1]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[20] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[20]),
        .Q(datmem_data_o[20]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[21] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[21]),
        .Q(datmem_data_o[21]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[22] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[22]),
        .Q(datmem_data_o[22]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[23] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[23]),
        .Q(datmem_data_o[23]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[24] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[24]),
        .Q(datmem_data_o[24]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[25] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[25]),
        .Q(datmem_data_o[25]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[26] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[26]),
        .Q(datmem_data_o[26]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[27] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[27]),
        .Q(datmem_data_o[27]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[28] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[28]),
        .Q(datmem_data_o[28]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[29] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[29]),
        .Q(datmem_data_o[29]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[2] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[2]),
        .Q(datmem_data_o[2]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[30] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[30]),
        .Q(datmem_data_o[30]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[31] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[31]),
        .Q(datmem_data_o[31]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[3] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[3]),
        .Q(datmem_data_o[3]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[4] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[4]),
        .Q(datmem_data_o[4]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[5] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[5]),
        .Q(datmem_data_o[5]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[6] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[6]),
        .Q(datmem_data_o[6]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[7] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[7]),
        .Q(datmem_data_o[7]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[8] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[8]),
        .Q(datmem_data_o[8]),
        .R(1'b0));
  FDRE \datmem_data_o_reg[9] 
       (.C(ctl_clk_i),
        .CE(\datmem_data_o[31]_i_1_n_0 ),
        .D(ipc_data[9]),
        .Q(datmem_data_o[9]),
        .R(1'b0));
  FDRE datmem_ena_o_reg
       (.C(ctl_clk_i),
        .CE(clk_en),
        .D(\FSM_onehot_writer_state_reg_n_0_[1] ),
        .Q(datmem_wea_o),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 fsm_State1_carry
       (.CI(1'b0),
        .CO({fsm_State1_carry_n_0,fsm_State1_carry_n_1,fsm_State1_carry_n_2,fsm_State1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({fsm_State1_carry_i_1_n_0,fsm_State1_carry_i_2_n_0,fsm_State1_carry_i_3_n_0,fsm_State1_carry_i_4_n_0}),
        .O(NLW_fsm_State1_carry_O_UNCONNECTED[3:0]),
        .S({fsm_State1_carry_i_5_n_0,fsm_State1_carry_i_6_n_0,fsm_State1_carry_i_7_n_0,fsm_State1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 fsm_State1_carry__0
       (.CI(fsm_State1_carry_n_0),
        .CO({fsm_State1_carry__0_n_0,fsm_State1_carry__0_n_1,fsm_State1_carry__0_n_2,fsm_State1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({fsm_State1_carry__0_i_1_n_0,fsm_State1_carry__0_i_2_n_0,fsm_State1_carry__0_i_3_n_0,fsm_State1_carry__0_i_4_n_0}),
        .O(NLW_fsm_State1_carry__0_O_UNCONNECTED[3:0]),
        .S({fsm_State1_carry__0_i_5_n_0,fsm_State1_carry__0_i_6_n_0,fsm_State1_carry__0_i_7_n_0,fsm_State1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry__0_i_1
       (.I0(fsm_shutter_counter_reg[15]),
        .I1(ctl_reg_shutter[15]),
        .I2(ctl_reg_shutter[14]),
        .I3(fsm_shutter_counter_reg[14]),
        .O(fsm_State1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry__0_i_2
       (.I0(fsm_shutter_counter_reg[13]),
        .I1(ctl_reg_shutter[13]),
        .I2(ctl_reg_shutter[12]),
        .I3(fsm_shutter_counter_reg[12]),
        .O(fsm_State1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry__0_i_3
       (.I0(fsm_shutter_counter_reg[11]),
        .I1(ctl_reg_shutter[11]),
        .I2(ctl_reg_shutter[10]),
        .I3(fsm_shutter_counter_reg[10]),
        .O(fsm_State1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry__0_i_4
       (.I0(fsm_shutter_counter_reg[9]),
        .I1(ctl_reg_shutter[9]),
        .I2(ctl_reg_shutter[8]),
        .I3(fsm_shutter_counter_reg[8]),
        .O(fsm_State1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry__0_i_5
       (.I0(ctl_reg_shutter[15]),
        .I1(fsm_shutter_counter_reg[15]),
        .I2(ctl_reg_shutter[14]),
        .I3(fsm_shutter_counter_reg[14]),
        .O(fsm_State1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry__0_i_6
       (.I0(ctl_reg_shutter[13]),
        .I1(fsm_shutter_counter_reg[13]),
        .I2(ctl_reg_shutter[12]),
        .I3(fsm_shutter_counter_reg[12]),
        .O(fsm_State1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry__0_i_7
       (.I0(ctl_reg_shutter[11]),
        .I1(fsm_shutter_counter_reg[11]),
        .I2(ctl_reg_shutter[10]),
        .I3(fsm_shutter_counter_reg[10]),
        .O(fsm_State1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry__0_i_8
       (.I0(ctl_reg_shutter[9]),
        .I1(fsm_shutter_counter_reg[9]),
        .I2(ctl_reg_shutter[8]),
        .I3(fsm_shutter_counter_reg[8]),
        .O(fsm_State1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 fsm_State1_carry__1
       (.CI(fsm_State1_carry__0_n_0),
        .CO({fsm_State1_carry__1_n_0,fsm_State1_carry__1_n_1,fsm_State1_carry__1_n_2,fsm_State1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({fsm_State1_carry__1_i_1_n_0,fsm_State1_carry__1_i_2_n_0,fsm_State1_carry__1_i_3_n_0,fsm_State1_carry__1_i_4_n_0}),
        .O(NLW_fsm_State1_carry__1_O_UNCONNECTED[3:0]),
        .S({fsm_State1_carry__1_i_5_n_0,fsm_State1_carry__1_i_6_n_0,fsm_State1_carry__1_i_7_n_0,fsm_State1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry__1_i_1
       (.I0(fsm_shutter_counter_reg[23]),
        .I1(ctl_reg_shutter[23]),
        .I2(ctl_reg_shutter[22]),
        .I3(fsm_shutter_counter_reg[22]),
        .O(fsm_State1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry__1_i_2
       (.I0(fsm_shutter_counter_reg[21]),
        .I1(ctl_reg_shutter[21]),
        .I2(ctl_reg_shutter[20]),
        .I3(fsm_shutter_counter_reg[20]),
        .O(fsm_State1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry__1_i_3
       (.I0(fsm_shutter_counter_reg[19]),
        .I1(ctl_reg_shutter[19]),
        .I2(ctl_reg_shutter[18]),
        .I3(fsm_shutter_counter_reg[18]),
        .O(fsm_State1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry__1_i_4
       (.I0(fsm_shutter_counter_reg[17]),
        .I1(ctl_reg_shutter[17]),
        .I2(ctl_reg_shutter[16]),
        .I3(fsm_shutter_counter_reg[16]),
        .O(fsm_State1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry__1_i_5
       (.I0(ctl_reg_shutter[23]),
        .I1(fsm_shutter_counter_reg[23]),
        .I2(ctl_reg_shutter[22]),
        .I3(fsm_shutter_counter_reg[22]),
        .O(fsm_State1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry__1_i_6
       (.I0(ctl_reg_shutter[21]),
        .I1(fsm_shutter_counter_reg[21]),
        .I2(ctl_reg_shutter[20]),
        .I3(fsm_shutter_counter_reg[20]),
        .O(fsm_State1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry__1_i_7
       (.I0(ctl_reg_shutter[19]),
        .I1(fsm_shutter_counter_reg[19]),
        .I2(ctl_reg_shutter[18]),
        .I3(fsm_shutter_counter_reg[18]),
        .O(fsm_State1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry__1_i_8
       (.I0(ctl_reg_shutter[17]),
        .I1(fsm_shutter_counter_reg[17]),
        .I2(ctl_reg_shutter[16]),
        .I3(fsm_shutter_counter_reg[16]),
        .O(fsm_State1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 fsm_State1_carry__2
       (.CI(fsm_State1_carry__1_n_0),
        .CO({fsm_State1_carry__2_n_0,fsm_State1_carry__2_n_1,fsm_State1_carry__2_n_2,fsm_State1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({fsm_State1_carry__2_i_1_n_0,fsm_State1_carry__2_i_2_n_0,fsm_State1_carry__2_i_3_n_0,fsm_State1_carry__2_i_4_n_0}),
        .O(NLW_fsm_State1_carry__2_O_UNCONNECTED[3:0]),
        .S({fsm_State1_carry__2_i_5_n_0,fsm_State1_carry__2_i_6_n_0,fsm_State1_carry__2_i_7_n_0,fsm_State1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry__2_i_1
       (.I0(fsm_shutter_counter_reg[31]),
        .I1(ctl_reg_shutter[31]),
        .I2(ctl_reg_shutter[30]),
        .I3(fsm_shutter_counter_reg[30]),
        .O(fsm_State1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry__2_i_2
       (.I0(fsm_shutter_counter_reg[29]),
        .I1(ctl_reg_shutter[29]),
        .I2(ctl_reg_shutter[28]),
        .I3(fsm_shutter_counter_reg[28]),
        .O(fsm_State1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry__2_i_3
       (.I0(fsm_shutter_counter_reg[27]),
        .I1(ctl_reg_shutter[27]),
        .I2(ctl_reg_shutter[26]),
        .I3(fsm_shutter_counter_reg[26]),
        .O(fsm_State1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry__2_i_4
       (.I0(fsm_shutter_counter_reg[25]),
        .I1(ctl_reg_shutter[25]),
        .I2(ctl_reg_shutter[24]),
        .I3(fsm_shutter_counter_reg[24]),
        .O(fsm_State1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry__2_i_5
       (.I0(ctl_reg_shutter[31]),
        .I1(fsm_shutter_counter_reg[31]),
        .I2(ctl_reg_shutter[30]),
        .I3(fsm_shutter_counter_reg[30]),
        .O(fsm_State1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry__2_i_6
       (.I0(ctl_reg_shutter[29]),
        .I1(fsm_shutter_counter_reg[29]),
        .I2(ctl_reg_shutter[28]),
        .I3(fsm_shutter_counter_reg[28]),
        .O(fsm_State1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry__2_i_7
       (.I0(ctl_reg_shutter[27]),
        .I1(fsm_shutter_counter_reg[27]),
        .I2(ctl_reg_shutter[26]),
        .I3(fsm_shutter_counter_reg[26]),
        .O(fsm_State1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry__2_i_8
       (.I0(ctl_reg_shutter[25]),
        .I1(fsm_shutter_counter_reg[25]),
        .I2(ctl_reg_shutter[24]),
        .I3(fsm_shutter_counter_reg[24]),
        .O(fsm_State1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry_i_1
       (.I0(fsm_shutter_counter_reg[7]),
        .I1(ctl_reg_shutter[7]),
        .I2(ctl_reg_shutter[6]),
        .I3(fsm_shutter_counter_reg[6]),
        .O(fsm_State1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry_i_2
       (.I0(fsm_shutter_counter_reg[5]),
        .I1(ctl_reg_shutter[5]),
        .I2(ctl_reg_shutter[4]),
        .I3(fsm_shutter_counter_reg[4]),
        .O(fsm_State1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry_i_3
       (.I0(fsm_shutter_counter_reg[3]),
        .I1(ctl_reg_shutter[3]),
        .I2(ctl_reg_shutter[2]),
        .I3(fsm_shutter_counter_reg[2]),
        .O(fsm_State1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    fsm_State1_carry_i_4
       (.I0(fsm_shutter_counter_reg[1]),
        .I1(ctl_reg_shutter[1]),
        .I2(ctl_reg_shutter[0]),
        .I3(fsm_shutter_counter_reg[0]),
        .O(fsm_State1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry_i_5
       (.I0(ctl_reg_shutter[7]),
        .I1(fsm_shutter_counter_reg[7]),
        .I2(ctl_reg_shutter[6]),
        .I3(fsm_shutter_counter_reg[6]),
        .O(fsm_State1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry_i_6
       (.I0(ctl_reg_shutter[5]),
        .I1(fsm_shutter_counter_reg[5]),
        .I2(ctl_reg_shutter[4]),
        .I3(fsm_shutter_counter_reg[4]),
        .O(fsm_State1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry_i_7
       (.I0(ctl_reg_shutter[3]),
        .I1(fsm_shutter_counter_reg[3]),
        .I2(ctl_reg_shutter[2]),
        .I3(fsm_shutter_counter_reg[2]),
        .O(fsm_State1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    fsm_State1_carry_i_8
       (.I0(ctl_reg_shutter[1]),
        .I1(fsm_shutter_counter_reg[1]),
        .I2(ctl_reg_shutter[0]),
        .I3(fsm_shutter_counter_reg[0]),
        .O(fsm_State1_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \fsm_bits_sent[0]_i_1 
       (.I0(\fsm_bits_sent_reg_n_0_[0] ),
        .O(\fsm_bits_sent[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \fsm_bits_sent[31]_i_1 
       (.I0(fsm_State[0]),
        .I1(clk_en),
        .I2(fsm_State[2]),
        .I3(fsm_State[1]),
        .O(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[0] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(\fsm_bits_sent[0]_i_1_n_0 ),
        .Q(\fsm_bits_sent_reg_n_0_[0] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[10] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[10]),
        .Q(\fsm_bits_sent_reg_n_0_[10] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[11] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[11]),
        .Q(\fsm_bits_sent_reg_n_0_[11] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[12] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[12]),
        .Q(\fsm_bits_sent_reg_n_0_[12] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_bits_sent_reg[12]_i_1 
       (.CI(\fsm_bits_sent_reg[8]_i_1_n_0 ),
        .CO({\fsm_bits_sent_reg[12]_i_1_n_0 ,\fsm_bits_sent_reg[12]_i_1_n_1 ,\fsm_bits_sent_reg[12]_i_1_n_2 ,\fsm_bits_sent_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[12:9]),
        .S({\fsm_bits_sent_reg_n_0_[12] ,\fsm_bits_sent_reg_n_0_[11] ,\fsm_bits_sent_reg_n_0_[10] ,\fsm_bits_sent_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[13] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[13]),
        .Q(\fsm_bits_sent_reg_n_0_[13] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[14] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[14]),
        .Q(\fsm_bits_sent_reg_n_0_[14] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[15] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[15]),
        .Q(\fsm_bits_sent_reg_n_0_[15] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[16] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[16]),
        .Q(\fsm_bits_sent_reg_n_0_[16] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_bits_sent_reg[16]_i_1 
       (.CI(\fsm_bits_sent_reg[12]_i_1_n_0 ),
        .CO({\fsm_bits_sent_reg[16]_i_1_n_0 ,\fsm_bits_sent_reg[16]_i_1_n_1 ,\fsm_bits_sent_reg[16]_i_1_n_2 ,\fsm_bits_sent_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[16:13]),
        .S({\fsm_bits_sent_reg_n_0_[16] ,\fsm_bits_sent_reg_n_0_[15] ,\fsm_bits_sent_reg_n_0_[14] ,\fsm_bits_sent_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[17] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[17]),
        .Q(\fsm_bits_sent_reg_n_0_[17] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[18] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[18]),
        .Q(\fsm_bits_sent_reg_n_0_[18] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[19] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[19]),
        .Q(\fsm_bits_sent_reg_n_0_[19] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[1] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[1]),
        .Q(\fsm_bits_sent_reg_n_0_[1] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[20] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[20]),
        .Q(\fsm_bits_sent_reg_n_0_[20] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_bits_sent_reg[20]_i_1 
       (.CI(\fsm_bits_sent_reg[16]_i_1_n_0 ),
        .CO({\fsm_bits_sent_reg[20]_i_1_n_0 ,\fsm_bits_sent_reg[20]_i_1_n_1 ,\fsm_bits_sent_reg[20]_i_1_n_2 ,\fsm_bits_sent_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[20:17]),
        .S({\fsm_bits_sent_reg_n_0_[20] ,\fsm_bits_sent_reg_n_0_[19] ,\fsm_bits_sent_reg_n_0_[18] ,\fsm_bits_sent_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[21] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[21]),
        .Q(\fsm_bits_sent_reg_n_0_[21] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[22] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[22]),
        .Q(\fsm_bits_sent_reg_n_0_[22] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[23] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[23]),
        .Q(\fsm_bits_sent_reg_n_0_[23] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[24] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[24]),
        .Q(\fsm_bits_sent_reg_n_0_[24] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_bits_sent_reg[24]_i_1 
       (.CI(\fsm_bits_sent_reg[20]_i_1_n_0 ),
        .CO({\fsm_bits_sent_reg[24]_i_1_n_0 ,\fsm_bits_sent_reg[24]_i_1_n_1 ,\fsm_bits_sent_reg[24]_i_1_n_2 ,\fsm_bits_sent_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[24:21]),
        .S({\fsm_bits_sent_reg_n_0_[24] ,\fsm_bits_sent_reg_n_0_[23] ,\fsm_bits_sent_reg_n_0_[22] ,\fsm_bits_sent_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[25] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[25]),
        .Q(\fsm_bits_sent_reg_n_0_[25] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[26] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[26]),
        .Q(\fsm_bits_sent_reg_n_0_[26] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[27] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[27]),
        .Q(\fsm_bits_sent_reg_n_0_[27] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[28] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[28]),
        .Q(\fsm_bits_sent_reg_n_0_[28] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_bits_sent_reg[28]_i_1 
       (.CI(\fsm_bits_sent_reg[24]_i_1_n_0 ),
        .CO({\fsm_bits_sent_reg[28]_i_1_n_0 ,\fsm_bits_sent_reg[28]_i_1_n_1 ,\fsm_bits_sent_reg[28]_i_1_n_2 ,\fsm_bits_sent_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[28:25]),
        .S({\fsm_bits_sent_reg_n_0_[28] ,\fsm_bits_sent_reg_n_0_[27] ,\fsm_bits_sent_reg_n_0_[26] ,\fsm_bits_sent_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[29] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[29]),
        .Q(\fsm_bits_sent_reg_n_0_[29] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[2] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[2]),
        .Q(\fsm_bits_sent_reg_n_0_[2] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[30] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[30]),
        .Q(\fsm_bits_sent_reg_n_0_[30] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[31] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[31]),
        .Q(\fsm_bits_sent_reg_n_0_[31] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_bits_sent_reg[31]_i_2 
       (.CI(\fsm_bits_sent_reg[28]_i_1_n_0 ),
        .CO({\NLW_fsm_bits_sent_reg[31]_i_2_CO_UNCONNECTED [3:2],\fsm_bits_sent_reg[31]_i_2_n_2 ,\fsm_bits_sent_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_fsm_bits_sent_reg[31]_i_2_O_UNCONNECTED [3],in17[31:29]}),
        .S({1'b0,\fsm_bits_sent_reg_n_0_[31] ,\fsm_bits_sent_reg_n_0_[30] ,\fsm_bits_sent_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[3] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[3]),
        .Q(\fsm_bits_sent_reg_n_0_[3] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[4] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[4]),
        .Q(\fsm_bits_sent_reg_n_0_[4] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_bits_sent_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\fsm_bits_sent_reg[4]_i_1_n_0 ,\fsm_bits_sent_reg[4]_i_1_n_1 ,\fsm_bits_sent_reg[4]_i_1_n_2 ,\fsm_bits_sent_reg[4]_i_1_n_3 }),
        .CYINIT(\fsm_bits_sent_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[4:1]),
        .S({\fsm_bits_sent_reg_n_0_[4] ,\fsm_bits_sent_reg_n_0_[3] ,\fsm_bits_sent_reg_n_0_[2] ,\fsm_bits_sent_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[5] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[5]),
        .Q(\fsm_bits_sent_reg_n_0_[5] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[6] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[6]),
        .Q(\fsm_bits_sent_reg_n_0_[6] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[7] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[7]),
        .Q(\fsm_bits_sent_reg_n_0_[7] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[8] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[8]),
        .Q(\fsm_bits_sent_reg_n_0_[8] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_bits_sent_reg[8]_i_1 
       (.CI(\fsm_bits_sent_reg[4]_i_1_n_0 ),
        .CO({\fsm_bits_sent_reg[8]_i_1_n_0 ,\fsm_bits_sent_reg[8]_i_1_n_1 ,\fsm_bits_sent_reg[8]_i_1_n_2 ,\fsm_bits_sent_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in17[8:5]),
        .S({\fsm_bits_sent_reg_n_0_[8] ,\fsm_bits_sent_reg_n_0_[7] ,\fsm_bits_sent_reg_n_0_[6] ,\fsm_bits_sent_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_bits_sent_reg[9] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(in17[9]),
        .Q(\fsm_bits_sent_reg_n_0_[9] ),
        .R(\fsm_bits_sent[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \fsm_shutter_counter[0]_i_1 
       (.I0(fsm_State[1]),
        .I1(clk_en),
        .I2(fsm_State[2]),
        .I3(fsm_State[0]),
        .O(\fsm_shutter_counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[0]_i_3 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[3]),
        .O(\fsm_shutter_counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[0]_i_4 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[2]),
        .O(\fsm_shutter_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[0]_i_5 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[1]),
        .O(\fsm_shutter_counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \fsm_shutter_counter[0]_i_6 
       (.I0(fsm_shutter_counter_reg[0]),
        .I1(fsm_State1_carry__2_n_0),
        .O(\fsm_shutter_counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[12]_i_2 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[15]),
        .O(\fsm_shutter_counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[12]_i_3 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[14]),
        .O(\fsm_shutter_counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[12]_i_4 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[13]),
        .O(\fsm_shutter_counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[12]_i_5 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[12]),
        .O(\fsm_shutter_counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[16]_i_2 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[19]),
        .O(\fsm_shutter_counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[16]_i_3 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[18]),
        .O(\fsm_shutter_counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[16]_i_4 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[17]),
        .O(\fsm_shutter_counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[16]_i_5 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[16]),
        .O(\fsm_shutter_counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[20]_i_2 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[23]),
        .O(\fsm_shutter_counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[20]_i_3 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[22]),
        .O(\fsm_shutter_counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[20]_i_4 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[21]),
        .O(\fsm_shutter_counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[20]_i_5 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[20]),
        .O(\fsm_shutter_counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[24]_i_2 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[27]),
        .O(\fsm_shutter_counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[24]_i_3 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[26]),
        .O(\fsm_shutter_counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[24]_i_4 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[25]),
        .O(\fsm_shutter_counter[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[24]_i_5 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[24]),
        .O(\fsm_shutter_counter[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[28]_i_2 
       (.I0(fsm_shutter_counter_reg[31]),
        .I1(fsm_State1_carry__2_n_0),
        .O(\fsm_shutter_counter[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[28]_i_3 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[30]),
        .O(\fsm_shutter_counter[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[28]_i_4 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[29]),
        .O(\fsm_shutter_counter[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[28]_i_5 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[28]),
        .O(\fsm_shutter_counter[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[4]_i_2 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[7]),
        .O(\fsm_shutter_counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[4]_i_3 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[6]),
        .O(\fsm_shutter_counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[4]_i_4 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[5]),
        .O(\fsm_shutter_counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[4]_i_5 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[4]),
        .O(\fsm_shutter_counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[8]_i_2 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[11]),
        .O(\fsm_shutter_counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[8]_i_3 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[10]),
        .O(\fsm_shutter_counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[8]_i_4 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[9]),
        .O(\fsm_shutter_counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fsm_shutter_counter[8]_i_5 
       (.I0(fsm_State1_carry__2_n_0),
        .I1(fsm_shutter_counter_reg[8]),
        .O(\fsm_shutter_counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[0] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[0]_i_2_n_7 ),
        .Q(fsm_shutter_counter_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fsm_shutter_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\fsm_shutter_counter_reg[0]_i_2_n_0 ,\fsm_shutter_counter_reg[0]_i_2_n_1 ,\fsm_shutter_counter_reg[0]_i_2_n_2 ,\fsm_shutter_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,fsm_State1_carry__2_n_0}),
        .O({\fsm_shutter_counter_reg[0]_i_2_n_4 ,\fsm_shutter_counter_reg[0]_i_2_n_5 ,\fsm_shutter_counter_reg[0]_i_2_n_6 ,\fsm_shutter_counter_reg[0]_i_2_n_7 }),
        .S({\fsm_shutter_counter[0]_i_3_n_0 ,\fsm_shutter_counter[0]_i_4_n_0 ,\fsm_shutter_counter[0]_i_5_n_0 ,\fsm_shutter_counter[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[10] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[8]_i_1_n_5 ),
        .Q(fsm_shutter_counter_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[11] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[8]_i_1_n_4 ),
        .Q(fsm_shutter_counter_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[12] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[12]_i_1_n_7 ),
        .Q(fsm_shutter_counter_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fsm_shutter_counter_reg[12]_i_1 
       (.CI(\fsm_shutter_counter_reg[8]_i_1_n_0 ),
        .CO({\fsm_shutter_counter_reg[12]_i_1_n_0 ,\fsm_shutter_counter_reg[12]_i_1_n_1 ,\fsm_shutter_counter_reg[12]_i_1_n_2 ,\fsm_shutter_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fsm_shutter_counter_reg[12]_i_1_n_4 ,\fsm_shutter_counter_reg[12]_i_1_n_5 ,\fsm_shutter_counter_reg[12]_i_1_n_6 ,\fsm_shutter_counter_reg[12]_i_1_n_7 }),
        .S({\fsm_shutter_counter[12]_i_2_n_0 ,\fsm_shutter_counter[12]_i_3_n_0 ,\fsm_shutter_counter[12]_i_4_n_0 ,\fsm_shutter_counter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[13] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[12]_i_1_n_6 ),
        .Q(fsm_shutter_counter_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[14] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[12]_i_1_n_5 ),
        .Q(fsm_shutter_counter_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[15] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[12]_i_1_n_4 ),
        .Q(fsm_shutter_counter_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[16] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[16]_i_1_n_7 ),
        .Q(fsm_shutter_counter_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fsm_shutter_counter_reg[16]_i_1 
       (.CI(\fsm_shutter_counter_reg[12]_i_1_n_0 ),
        .CO({\fsm_shutter_counter_reg[16]_i_1_n_0 ,\fsm_shutter_counter_reg[16]_i_1_n_1 ,\fsm_shutter_counter_reg[16]_i_1_n_2 ,\fsm_shutter_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fsm_shutter_counter_reg[16]_i_1_n_4 ,\fsm_shutter_counter_reg[16]_i_1_n_5 ,\fsm_shutter_counter_reg[16]_i_1_n_6 ,\fsm_shutter_counter_reg[16]_i_1_n_7 }),
        .S({\fsm_shutter_counter[16]_i_2_n_0 ,\fsm_shutter_counter[16]_i_3_n_0 ,\fsm_shutter_counter[16]_i_4_n_0 ,\fsm_shutter_counter[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[17] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[16]_i_1_n_6 ),
        .Q(fsm_shutter_counter_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[18] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[16]_i_1_n_5 ),
        .Q(fsm_shutter_counter_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[19] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[16]_i_1_n_4 ),
        .Q(fsm_shutter_counter_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[1] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[0]_i_2_n_6 ),
        .Q(fsm_shutter_counter_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[20] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[20]_i_1_n_7 ),
        .Q(fsm_shutter_counter_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fsm_shutter_counter_reg[20]_i_1 
       (.CI(\fsm_shutter_counter_reg[16]_i_1_n_0 ),
        .CO({\fsm_shutter_counter_reg[20]_i_1_n_0 ,\fsm_shutter_counter_reg[20]_i_1_n_1 ,\fsm_shutter_counter_reg[20]_i_1_n_2 ,\fsm_shutter_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fsm_shutter_counter_reg[20]_i_1_n_4 ,\fsm_shutter_counter_reg[20]_i_1_n_5 ,\fsm_shutter_counter_reg[20]_i_1_n_6 ,\fsm_shutter_counter_reg[20]_i_1_n_7 }),
        .S({\fsm_shutter_counter[20]_i_2_n_0 ,\fsm_shutter_counter[20]_i_3_n_0 ,\fsm_shutter_counter[20]_i_4_n_0 ,\fsm_shutter_counter[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[21] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[20]_i_1_n_6 ),
        .Q(fsm_shutter_counter_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[22] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[20]_i_1_n_5 ),
        .Q(fsm_shutter_counter_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[23] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[20]_i_1_n_4 ),
        .Q(fsm_shutter_counter_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[24] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[24]_i_1_n_7 ),
        .Q(fsm_shutter_counter_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fsm_shutter_counter_reg[24]_i_1 
       (.CI(\fsm_shutter_counter_reg[20]_i_1_n_0 ),
        .CO({\fsm_shutter_counter_reg[24]_i_1_n_0 ,\fsm_shutter_counter_reg[24]_i_1_n_1 ,\fsm_shutter_counter_reg[24]_i_1_n_2 ,\fsm_shutter_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fsm_shutter_counter_reg[24]_i_1_n_4 ,\fsm_shutter_counter_reg[24]_i_1_n_5 ,\fsm_shutter_counter_reg[24]_i_1_n_6 ,\fsm_shutter_counter_reg[24]_i_1_n_7 }),
        .S({\fsm_shutter_counter[24]_i_2_n_0 ,\fsm_shutter_counter[24]_i_3_n_0 ,\fsm_shutter_counter[24]_i_4_n_0 ,\fsm_shutter_counter[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[25] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[24]_i_1_n_6 ),
        .Q(fsm_shutter_counter_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[26] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[24]_i_1_n_5 ),
        .Q(fsm_shutter_counter_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[27] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[24]_i_1_n_4 ),
        .Q(fsm_shutter_counter_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[28] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[28]_i_1_n_7 ),
        .Q(fsm_shutter_counter_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fsm_shutter_counter_reg[28]_i_1 
       (.CI(\fsm_shutter_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_fsm_shutter_counter_reg[28]_i_1_CO_UNCONNECTED [3],\fsm_shutter_counter_reg[28]_i_1_n_1 ,\fsm_shutter_counter_reg[28]_i_1_n_2 ,\fsm_shutter_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fsm_shutter_counter_reg[28]_i_1_n_4 ,\fsm_shutter_counter_reg[28]_i_1_n_5 ,\fsm_shutter_counter_reg[28]_i_1_n_6 ,\fsm_shutter_counter_reg[28]_i_1_n_7 }),
        .S({\fsm_shutter_counter[28]_i_2_n_0 ,\fsm_shutter_counter[28]_i_3_n_0 ,\fsm_shutter_counter[28]_i_4_n_0 ,\fsm_shutter_counter[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[29] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[28]_i_1_n_6 ),
        .Q(fsm_shutter_counter_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[2] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[0]_i_2_n_5 ),
        .Q(fsm_shutter_counter_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[30] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[28]_i_1_n_5 ),
        .Q(fsm_shutter_counter_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[31] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[28]_i_1_n_4 ),
        .Q(fsm_shutter_counter_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[3] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[0]_i_2_n_4 ),
        .Q(fsm_shutter_counter_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[4] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[4]_i_1_n_7 ),
        .Q(fsm_shutter_counter_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fsm_shutter_counter_reg[4]_i_1 
       (.CI(\fsm_shutter_counter_reg[0]_i_2_n_0 ),
        .CO({\fsm_shutter_counter_reg[4]_i_1_n_0 ,\fsm_shutter_counter_reg[4]_i_1_n_1 ,\fsm_shutter_counter_reg[4]_i_1_n_2 ,\fsm_shutter_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fsm_shutter_counter_reg[4]_i_1_n_4 ,\fsm_shutter_counter_reg[4]_i_1_n_5 ,\fsm_shutter_counter_reg[4]_i_1_n_6 ,\fsm_shutter_counter_reg[4]_i_1_n_7 }),
        .S({\fsm_shutter_counter[4]_i_2_n_0 ,\fsm_shutter_counter[4]_i_3_n_0 ,\fsm_shutter_counter[4]_i_4_n_0 ,\fsm_shutter_counter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[5] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[4]_i_1_n_6 ),
        .Q(fsm_shutter_counter_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[6] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[4]_i_1_n_5 ),
        .Q(fsm_shutter_counter_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[7] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[4]_i_1_n_4 ),
        .Q(fsm_shutter_counter_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[8] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[8]_i_1_n_7 ),
        .Q(fsm_shutter_counter_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \fsm_shutter_counter_reg[8]_i_1 
       (.CI(\fsm_shutter_counter_reg[4]_i_1_n_0 ),
        .CO({\fsm_shutter_counter_reg[8]_i_1_n_0 ,\fsm_shutter_counter_reg[8]_i_1_n_1 ,\fsm_shutter_counter_reg[8]_i_1_n_2 ,\fsm_shutter_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fsm_shutter_counter_reg[8]_i_1_n_4 ,\fsm_shutter_counter_reg[8]_i_1_n_5 ,\fsm_shutter_counter_reg[8]_i_1_n_6 ,\fsm_shutter_counter_reg[8]_i_1_n_7 }),
        .S({\fsm_shutter_counter[8]_i_2_n_0 ,\fsm_shutter_counter[8]_i_3_n_0 ,\fsm_shutter_counter[8]_i_4_n_0 ,\fsm_shutter_counter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_shutter_counter_reg[9] 
       (.C(ctl_clk_i),
        .CE(\fsm_shutter_counter[0]_i_1_n_0 ),
        .D(\fsm_shutter_counter_reg[8]_i_1_n_6 ),
        .Q(fsm_shutter_counter_reg[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \fsm_skip_counter[0]_i_1 
       (.I0(\fsm_skip_counter_reg_n_0_[0] ),
        .O(\fsm_skip_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200F00000000)) 
    \fsm_skip_counter[31]_i_1 
       (.I0(\fsm_skip_counter[31]_i_3_n_0 ),
        .I1(\misobitptr[4]_i_4_n_0 ),
        .I2(fsm_State[1]),
        .I3(fsm_State[0]),
        .I4(fsm_State[2]),
        .I5(clk_en),
        .O(\fsm_skip_counter[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \fsm_skip_counter[31]_i_3 
       (.I0(\fsm_skip_counter[31]_i_4_n_0 ),
        .I1(\fsm_skip_counter_reg_n_0_[2] ),
        .I2(\fsm_skip_counter_reg_n_0_[1] ),
        .I3(\fsm_skip_counter_reg_n_0_[9] ),
        .I4(\fsm_skip_counter_reg_n_0_[0] ),
        .I5(\misobitptr[4]_i_12_n_0 ),
        .O(\fsm_skip_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \fsm_skip_counter[31]_i_4 
       (.I0(\fsm_skip_counter_reg_n_0_[8] ),
        .I1(\ctl_reg_options_reg_n_0_[0] ),
        .I2(\fsm_skip_counter_reg_n_0_[5] ),
        .I3(\fsm_skip_counter_reg_n_0_[6] ),
        .I4(\fsm_skip_counter_reg_n_0_[4] ),
        .I5(\fsm_skip_counter_reg_n_0_[3] ),
        .O(\fsm_skip_counter[31]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[0] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(\fsm_skip_counter[0]_i_1_n_0 ),
        .Q(\fsm_skip_counter_reg_n_0_[0] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[10] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[10]),
        .Q(\fsm_skip_counter_reg_n_0_[10] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[11] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[11]),
        .Q(\fsm_skip_counter_reg_n_0_[11] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[12] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[12]),
        .Q(\fsm_skip_counter_reg_n_0_[12] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_skip_counter_reg[12]_i_1 
       (.CI(\fsm_skip_counter_reg[8]_i_1_n_0 ),
        .CO({\fsm_skip_counter_reg[12]_i_1_n_0 ,\fsm_skip_counter_reg[12]_i_1_n_1 ,\fsm_skip_counter_reg[12]_i_1_n_2 ,\fsm_skip_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\fsm_skip_counter_reg_n_0_[12] ,\fsm_skip_counter_reg_n_0_[11] ,\fsm_skip_counter_reg_n_0_[10] ,\fsm_skip_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[13] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[13]),
        .Q(\fsm_skip_counter_reg_n_0_[13] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[14] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[14]),
        .Q(\fsm_skip_counter_reg_n_0_[14] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[15] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[15]),
        .Q(\fsm_skip_counter_reg_n_0_[15] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[16] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[16]),
        .Q(\fsm_skip_counter_reg_n_0_[16] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_skip_counter_reg[16]_i_1 
       (.CI(\fsm_skip_counter_reg[12]_i_1_n_0 ),
        .CO({\fsm_skip_counter_reg[16]_i_1_n_0 ,\fsm_skip_counter_reg[16]_i_1_n_1 ,\fsm_skip_counter_reg[16]_i_1_n_2 ,\fsm_skip_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\fsm_skip_counter_reg_n_0_[16] ,\fsm_skip_counter_reg_n_0_[15] ,\fsm_skip_counter_reg_n_0_[14] ,\fsm_skip_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[17] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[17]),
        .Q(\fsm_skip_counter_reg_n_0_[17] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[18] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[18]),
        .Q(\fsm_skip_counter_reg_n_0_[18] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[19] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[19]),
        .Q(\fsm_skip_counter_reg_n_0_[19] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[1] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[1]),
        .Q(\fsm_skip_counter_reg_n_0_[1] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[20] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[20]),
        .Q(\fsm_skip_counter_reg_n_0_[20] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_skip_counter_reg[20]_i_1 
       (.CI(\fsm_skip_counter_reg[16]_i_1_n_0 ),
        .CO({\fsm_skip_counter_reg[20]_i_1_n_0 ,\fsm_skip_counter_reg[20]_i_1_n_1 ,\fsm_skip_counter_reg[20]_i_1_n_2 ,\fsm_skip_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\fsm_skip_counter_reg_n_0_[20] ,\fsm_skip_counter_reg_n_0_[19] ,\fsm_skip_counter_reg_n_0_[18] ,\fsm_skip_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[21] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[21]),
        .Q(\fsm_skip_counter_reg_n_0_[21] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[22] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[22]),
        .Q(\fsm_skip_counter_reg_n_0_[22] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[23] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[23]),
        .Q(\fsm_skip_counter_reg_n_0_[23] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[24] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[24]),
        .Q(\fsm_skip_counter_reg_n_0_[24] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_skip_counter_reg[24]_i_1 
       (.CI(\fsm_skip_counter_reg[20]_i_1_n_0 ),
        .CO({\fsm_skip_counter_reg[24]_i_1_n_0 ,\fsm_skip_counter_reg[24]_i_1_n_1 ,\fsm_skip_counter_reg[24]_i_1_n_2 ,\fsm_skip_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\fsm_skip_counter_reg_n_0_[24] ,\fsm_skip_counter_reg_n_0_[23] ,\fsm_skip_counter_reg_n_0_[22] ,\fsm_skip_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[25] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[25]),
        .Q(\fsm_skip_counter_reg_n_0_[25] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[26] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[26]),
        .Q(\fsm_skip_counter_reg_n_0_[26] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[27] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[27]),
        .Q(\fsm_skip_counter_reg_n_0_[27] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[28] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[28]),
        .Q(\fsm_skip_counter_reg_n_0_[28] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_skip_counter_reg[28]_i_1 
       (.CI(\fsm_skip_counter_reg[24]_i_1_n_0 ),
        .CO({\fsm_skip_counter_reg[28]_i_1_n_0 ,\fsm_skip_counter_reg[28]_i_1_n_1 ,\fsm_skip_counter_reg[28]_i_1_n_2 ,\fsm_skip_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\fsm_skip_counter_reg_n_0_[28] ,\fsm_skip_counter_reg_n_0_[27] ,\fsm_skip_counter_reg_n_0_[26] ,\fsm_skip_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[29] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[29]),
        .Q(\fsm_skip_counter_reg_n_0_[29] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[2] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[2]),
        .Q(\fsm_skip_counter_reg_n_0_[2] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[30] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[30]),
        .Q(\fsm_skip_counter_reg_n_0_[30] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[31] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[31]),
        .Q(\fsm_skip_counter_reg_n_0_[31] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_skip_counter_reg[31]_i_2 
       (.CI(\fsm_skip_counter_reg[28]_i_1_n_0 ),
        .CO({\NLW_fsm_skip_counter_reg[31]_i_2_CO_UNCONNECTED [3:2],\fsm_skip_counter_reg[31]_i_2_n_2 ,\fsm_skip_counter_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_fsm_skip_counter_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\fsm_skip_counter_reg_n_0_[31] ,\fsm_skip_counter_reg_n_0_[30] ,\fsm_skip_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[3] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[3]),
        .Q(\fsm_skip_counter_reg_n_0_[3] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[4] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[4]),
        .Q(\fsm_skip_counter_reg_n_0_[4] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_skip_counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\fsm_skip_counter_reg[4]_i_1_n_0 ,\fsm_skip_counter_reg[4]_i_1_n_1 ,\fsm_skip_counter_reg[4]_i_1_n_2 ,\fsm_skip_counter_reg[4]_i_1_n_3 }),
        .CYINIT(\fsm_skip_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\fsm_skip_counter_reg_n_0_[4] ,\fsm_skip_counter_reg_n_0_[3] ,\fsm_skip_counter_reg_n_0_[2] ,\fsm_skip_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[5] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[5]),
        .Q(\fsm_skip_counter_reg_n_0_[5] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[6] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[6]),
        .Q(\fsm_skip_counter_reg_n_0_[6] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[7] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[7]),
        .Q(\fsm_skip_counter_reg_n_0_[7] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[8] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[8]),
        .Q(\fsm_skip_counter_reg_n_0_[8] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \fsm_skip_counter_reg[8]_i_1 
       (.CI(\fsm_skip_counter_reg[4]_i_1_n_0 ),
        .CO({\fsm_skip_counter_reg[8]_i_1_n_0 ,\fsm_skip_counter_reg[8]_i_1_n_1 ,\fsm_skip_counter_reg[8]_i_1_n_2 ,\fsm_skip_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\fsm_skip_counter_reg_n_0_[8] ,\fsm_skip_counter_reg_n_0_[7] ,\fsm_skip_counter_reg_n_0_[6] ,\fsm_skip_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \fsm_skip_counter_reg[9] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(data0[9]),
        .Q(\fsm_skip_counter_reg_n_0_[9] ),
        .R(\fsm_skip_counter[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFBFF00000004)) 
    fsm_start_ack_i_1
       (.I0(fsm_State[2]),
        .I1(clk_en),
        .I2(fsm_State[1]),
        .I3(fsm_State[0]),
        .I4(cfgmem_ena_o_i_2_n_0),
        .I5(fsm_start_ack_reg_n_0),
        .O(fsm_start_ack_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fsm_start_ack_reg
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(fsm_start_ack_i_1_n_0),
        .Q(fsm_start_ack_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(\mosiaddress_reg_n_0_[2] ),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(writer_address[2]),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0080008000800000)) 
    \ipc_data[30]_i_1 
       (.I0(fsm_State[1]),
        .I1(fsm_State[0]),
        .I2(clk_en),
        .I3(fsm_State[2]),
        .I4(ipc_write_i_3_n_0),
        .I5(ipc_write1_carry__1_n_1),
        .O(\ipc_data[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \ipc_data[31]_i_1 
       (.I0(\misodata_reg_n_0_[31] ),
        .I1(ipc_write1_carry__1_n_1),
        .I2(ipc_write_i_3_n_0),
        .I3(\ipc_data[31]_i_2_n_0 ),
        .I4(\ipc_data[31]_i_3_n_0 ),
        .I5(ipc_data[31]),
        .O(\ipc_data[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \ipc_data[31]_i_2 
       (.I0(\misobitptr_reg_n_0_[0] ),
        .I1(\misobitptr_reg_n_0_[1] ),
        .I2(\misobitptr_reg_n_0_[2] ),
        .I3(\misobitptr_reg_n_0_[3] ),
        .I4(\misobitptr_reg_n_0_[4] ),
        .O(\ipc_data[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \ipc_data[31]_i_3 
       (.I0(fsm_State[2]),
        .I1(clk_en),
        .I2(fsm_State[0]),
        .I3(fsm_State[1]),
        .O(\ipc_data[31]_i_3_n_0 ));
  FDRE \ipc_data_reg[0] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[0] ),
        .Q(ipc_data[0]),
        .R(1'b0));
  FDRE \ipc_data_reg[10] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[10] ),
        .Q(ipc_data[10]),
        .R(1'b0));
  FDRE \ipc_data_reg[11] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[11] ),
        .Q(ipc_data[11]),
        .R(1'b0));
  FDRE \ipc_data_reg[12] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[12] ),
        .Q(ipc_data[12]),
        .R(1'b0));
  FDRE \ipc_data_reg[13] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[13] ),
        .Q(ipc_data[13]),
        .R(1'b0));
  FDRE \ipc_data_reg[14] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[14] ),
        .Q(ipc_data[14]),
        .R(1'b0));
  FDRE \ipc_data_reg[15] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[15] ),
        .Q(ipc_data[15]),
        .R(1'b0));
  FDRE \ipc_data_reg[16] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[16] ),
        .Q(ipc_data[16]),
        .R(1'b0));
  FDRE \ipc_data_reg[17] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[17] ),
        .Q(ipc_data[17]),
        .R(1'b0));
  FDRE \ipc_data_reg[18] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[18] ),
        .Q(ipc_data[18]),
        .R(1'b0));
  FDRE \ipc_data_reg[19] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[19] ),
        .Q(ipc_data[19]),
        .R(1'b0));
  FDRE \ipc_data_reg[1] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[1] ),
        .Q(ipc_data[1]),
        .R(1'b0));
  FDRE \ipc_data_reg[20] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[20] ),
        .Q(ipc_data[20]),
        .R(1'b0));
  FDRE \ipc_data_reg[21] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[21] ),
        .Q(ipc_data[21]),
        .R(1'b0));
  FDRE \ipc_data_reg[22] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[22] ),
        .Q(ipc_data[22]),
        .R(1'b0));
  FDRE \ipc_data_reg[23] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[23] ),
        .Q(ipc_data[23]),
        .R(1'b0));
  FDRE \ipc_data_reg[24] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[24] ),
        .Q(ipc_data[24]),
        .R(1'b0));
  FDRE \ipc_data_reg[25] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[25] ),
        .Q(ipc_data[25]),
        .R(1'b0));
  FDRE \ipc_data_reg[26] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[26] ),
        .Q(ipc_data[26]),
        .R(1'b0));
  FDRE \ipc_data_reg[27] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[27] ),
        .Q(ipc_data[27]),
        .R(1'b0));
  FDRE \ipc_data_reg[28] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[28] ),
        .Q(ipc_data[28]),
        .R(1'b0));
  FDRE \ipc_data_reg[29] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[29] ),
        .Q(ipc_data[29]),
        .R(1'b0));
  FDRE \ipc_data_reg[2] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[2] ),
        .Q(ipc_data[2]),
        .R(1'b0));
  FDRE \ipc_data_reg[30] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[30] ),
        .Q(ipc_data[30]),
        .R(1'b0));
  FDRE \ipc_data_reg[31] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\ipc_data[31]_i_1_n_0 ),
        .Q(ipc_data[31]),
        .R(1'b0));
  FDRE \ipc_data_reg[3] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[3] ),
        .Q(ipc_data[3]),
        .R(1'b0));
  FDRE \ipc_data_reg[4] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[4] ),
        .Q(ipc_data[4]),
        .R(1'b0));
  FDRE \ipc_data_reg[5] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[5] ),
        .Q(ipc_data[5]),
        .R(1'b0));
  FDRE \ipc_data_reg[6] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[6] ),
        .Q(ipc_data[6]),
        .R(1'b0));
  FDRE \ipc_data_reg[7] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[7] ),
        .Q(ipc_data[7]),
        .R(1'b0));
  FDRE \ipc_data_reg[8] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[8] ),
        .Q(ipc_data[8]),
        .R(1'b0));
  FDRE \ipc_data_reg[9] 
       (.C(ctl_clk_i),
        .CE(\ipc_data[30]_i_1_n_0 ),
        .D(\misodata_reg_n_0_[9] ),
        .Q(ipc_data[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    ipc_reset_i_1
       (.I0(fsm_State[1]),
        .I1(fsm_State[2]),
        .I2(fsm_State[0]),
        .O(ipc_reset_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ipc_reset_reg
       (.C(ctl_clk_i),
        .CE(clk_en),
        .D(ipc_reset_i_1_n_0),
        .Q(ipc_reset_reg_n_0),
        .R(1'b0));
  CARRY4 ipc_write1_carry
       (.CI(1'b0),
        .CO({ipc_write1_carry_n_0,ipc_write1_carry_n_1,ipc_write1_carry_n_2,ipc_write1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ipc_write1_carry_O_UNCONNECTED[3:0]),
        .S({ipc_write1_carry_i_1_n_0,ipc_write1_carry_i_2_n_0,ipc_write1_carry_i_3_n_0,ipc_write1_carry_i_4_n_0}));
  CARRY4 ipc_write1_carry__0
       (.CI(ipc_write1_carry_n_0),
        .CO({ipc_write1_carry__0_n_0,ipc_write1_carry__0_n_1,ipc_write1_carry__0_n_2,ipc_write1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ipc_write1_carry__0_O_UNCONNECTED[3:0]),
        .S({ipc_write1_carry__0_i_1_n_0,ipc_write1_carry__0_i_2_n_0,ipc_write1_carry__0_i_3_n_0,ipc_write1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ipc_write1_carry__0_i_1
       (.I0(minusOp[22]),
        .I1(\fsm_bits_sent_reg_n_0_[22] ),
        .I2(minusOp[21]),
        .I3(\fsm_bits_sent_reg_n_0_[21] ),
        .I4(\fsm_bits_sent_reg_n_0_[23] ),
        .I5(minusOp[23]),
        .O(ipc_write1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ipc_write1_carry__0_i_2
       (.I0(minusOp[18]),
        .I1(\fsm_bits_sent_reg_n_0_[18] ),
        .I2(minusOp[19]),
        .I3(\fsm_bits_sent_reg_n_0_[19] ),
        .I4(\fsm_bits_sent_reg_n_0_[20] ),
        .I5(minusOp[20]),
        .O(ipc_write1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ipc_write1_carry__0_i_3
       (.I0(minusOp[15]),
        .I1(\fsm_bits_sent_reg_n_0_[15] ),
        .I2(minusOp[16]),
        .I3(\fsm_bits_sent_reg_n_0_[16] ),
        .I4(\fsm_bits_sent_reg_n_0_[17] ),
        .I5(minusOp[17]),
        .O(ipc_write1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ipc_write1_carry__0_i_4
       (.I0(minusOp[12]),
        .I1(\fsm_bits_sent_reg_n_0_[12] ),
        .I2(minusOp[13]),
        .I3(\fsm_bits_sent_reg_n_0_[13] ),
        .I4(\fsm_bits_sent_reg_n_0_[14] ),
        .I5(minusOp[14]),
        .O(ipc_write1_carry__0_i_4_n_0));
  CARRY4 ipc_write1_carry__1
       (.CI(ipc_write1_carry__0_n_0),
        .CO({NLW_ipc_write1_carry__1_CO_UNCONNECTED[3],ipc_write1_carry__1_n_1,ipc_write1_carry__1_n_2,ipc_write1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ipc_write1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,ipc_write1_carry__1_i_1_n_0,ipc_write1_carry__1_i_2_n_0,ipc_write1_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    ipc_write1_carry__1_i_1
       (.I0(\fsm_bits_sent_reg_n_0_[31] ),
        .I1(minusOp[31]),
        .I2(\fsm_bits_sent_reg_n_0_[30] ),
        .I3(minusOp[30]),
        .O(ipc_write1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ipc_write1_carry__1_i_2
       (.I0(minusOp[28]),
        .I1(\fsm_bits_sent_reg_n_0_[28] ),
        .I2(minusOp[27]),
        .I3(\fsm_bits_sent_reg_n_0_[27] ),
        .I4(\fsm_bits_sent_reg_n_0_[29] ),
        .I5(minusOp[29]),
        .O(ipc_write1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ipc_write1_carry__1_i_3
       (.I0(minusOp[26]),
        .I1(\fsm_bits_sent_reg_n_0_[26] ),
        .I2(minusOp[24]),
        .I3(\fsm_bits_sent_reg_n_0_[24] ),
        .I4(\fsm_bits_sent_reg_n_0_[25] ),
        .I5(minusOp[25]),
        .O(ipc_write1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ipc_write1_carry_i_1
       (.I0(minusOp[9]),
        .I1(\fsm_bits_sent_reg_n_0_[9] ),
        .I2(minusOp[10]),
        .I3(\fsm_bits_sent_reg_n_0_[10] ),
        .I4(\fsm_bits_sent_reg_n_0_[11] ),
        .I5(minusOp[11]),
        .O(ipc_write1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ipc_write1_carry_i_2
       (.I0(minusOp[6]),
        .I1(\fsm_bits_sent_reg_n_0_[6] ),
        .I2(minusOp[7]),
        .I3(\fsm_bits_sent_reg_n_0_[7] ),
        .I4(\fsm_bits_sent_reg_n_0_[8] ),
        .I5(minusOp[8]),
        .O(ipc_write1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ipc_write1_carry_i_3
       (.I0(minusOp[4]),
        .I1(\fsm_bits_sent_reg_n_0_[4] ),
        .I2(minusOp[3]),
        .I3(\fsm_bits_sent_reg_n_0_[3] ),
        .I4(\fsm_bits_sent_reg_n_0_[5] ),
        .I5(minusOp[5]),
        .O(ipc_write1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    ipc_write1_carry_i_4
       (.I0(minusOp[1]),
        .I1(\fsm_bits_sent_reg_n_0_[1] ),
        .I2(ctl_reg_bits_to_write[0]),
        .I3(\fsm_bits_sent_reg_n_0_[0] ),
        .I4(\fsm_bits_sent_reg_n_0_[2] ),
        .I5(minusOp[2]),
        .O(ipc_write1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hE000E000E0000000)) 
    ipc_write_i_1
       (.I0(\misobitptr[4]_i_5_n_0 ),
        .I1(\misobitptr[4]_i_4_n_0 ),
        .I2(fsm_State[0]),
        .I3(ipc_write_i_2_n_0),
        .I4(ipc_write1_carry__1_n_1),
        .I5(ipc_write_i_3_n_0),
        .O(ipc_write));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ipc_write_i_2
       (.I0(fsm_State[1]),
        .I1(fsm_State[2]),
        .O(ipc_write_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    ipc_write_i_3
       (.I0(\misobitptr_reg_n_0_[0] ),
        .I1(\misobitptr_reg_n_0_[1] ),
        .I2(\misobitptr_reg_n_0_[2] ),
        .I3(\misobitptr_reg_n_0_[3] ),
        .I4(\misobitptr_reg_n_0_[4] ),
        .O(ipc_write_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ipc_write_reg
       (.C(ctl_clk_i),
        .CE(clk_en),
        .D(ipc_write),
        .Q(ipc_write_reg_n_0),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(ctl_reg_bits_to_write[0]),
        .DI(ctl_reg_bits_to_write[4:1]),
        .O(minusOp[4:1]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(ctl_reg_bits_to_write[8:5]),
        .O(minusOp[8:5]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(ctl_reg_bits_to_write[8]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(ctl_reg_bits_to_write[7]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(ctl_reg_bits_to_write[6]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(ctl_reg_bits_to_write[5]),
        .O(minusOp_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(ctl_reg_bits_to_write[12:9]),
        .O(minusOp[12:9]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(ctl_reg_bits_to_write[12]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(ctl_reg_bits_to_write[11]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(ctl_reg_bits_to_write[10]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(ctl_reg_bits_to_write[9]),
        .O(minusOp_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(ctl_reg_bits_to_write[16:13]),
        .O(minusOp[16:13]),
        .S({minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0,minusOp_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(ctl_reg_bits_to_write[16]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(ctl_reg_bits_to_write[15]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(ctl_reg_bits_to_write[14]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_4
       (.I0(ctl_reg_bits_to_write[13]),
        .O(minusOp_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({minusOp_carry__3_n_0,minusOp_carry__3_n_1,minusOp_carry__3_n_2,minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(ctl_reg_bits_to_write[20:17]),
        .O(minusOp[20:17]),
        .S({minusOp_carry__3_i_1_n_0,minusOp_carry__3_i_2_n_0,minusOp_carry__3_i_3_n_0,minusOp_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_1
       (.I0(ctl_reg_bits_to_write[20]),
        .O(minusOp_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_2
       (.I0(ctl_reg_bits_to_write[19]),
        .O(minusOp_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_3
       (.I0(ctl_reg_bits_to_write[18]),
        .O(minusOp_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_4
       (.I0(ctl_reg_bits_to_write[17]),
        .O(minusOp_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__4
       (.CI(minusOp_carry__3_n_0),
        .CO({minusOp_carry__4_n_0,minusOp_carry__4_n_1,minusOp_carry__4_n_2,minusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(ctl_reg_bits_to_write[24:21]),
        .O(minusOp[24:21]),
        .S({minusOp_carry__4_i_1_n_0,minusOp_carry__4_i_2_n_0,minusOp_carry__4_i_3_n_0,minusOp_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_1
       (.I0(ctl_reg_bits_to_write[24]),
        .O(minusOp_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_2
       (.I0(ctl_reg_bits_to_write[23]),
        .O(minusOp_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_3
       (.I0(ctl_reg_bits_to_write[22]),
        .O(minusOp_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_4
       (.I0(ctl_reg_bits_to_write[21]),
        .O(minusOp_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__5
       (.CI(minusOp_carry__4_n_0),
        .CO({minusOp_carry__5_n_0,minusOp_carry__5_n_1,minusOp_carry__5_n_2,minusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(ctl_reg_bits_to_write[28:25]),
        .O(minusOp[28:25]),
        .S({minusOp_carry__5_i_1_n_0,minusOp_carry__5_i_2_n_0,minusOp_carry__5_i_3_n_0,minusOp_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_1
       (.I0(ctl_reg_bits_to_write[28]),
        .O(minusOp_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_2
       (.I0(ctl_reg_bits_to_write[27]),
        .O(minusOp_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_3
       (.I0(ctl_reg_bits_to_write[26]),
        .O(minusOp_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_4
       (.I0(ctl_reg_bits_to_write[25]),
        .O(minusOp_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__6
       (.CI(minusOp_carry__5_n_0),
        .CO({NLW_minusOp_carry__6_CO_UNCONNECTED[3:2],minusOp_carry__6_n_2,minusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ctl_reg_bits_to_write[30:29]}),
        .O({NLW_minusOp_carry__6_O_UNCONNECTED[3],minusOp[31:29]}),
        .S({1'b0,minusOp_carry__6_i_1_n_0,minusOp_carry__6_i_2_n_0,minusOp_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_1
       (.I0(ctl_reg_bits_to_write[31]),
        .O(minusOp_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_2
       (.I0(ctl_reg_bits_to_write[30]),
        .O(minusOp_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__6_i_3
       (.I0(ctl_reg_bits_to_write[29]),
        .O(minusOp_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(ctl_reg_bits_to_write[4]),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(ctl_reg_bits_to_write[3]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(ctl_reg_bits_to_write[2]),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(ctl_reg_bits_to_write[1]),
        .O(minusOp_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \misobitptr[0]_i_1 
       (.I0(\misobitptr_reg_n_0_[0] ),
        .O(\misobitptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \misobitptr[1]_i_1 
       (.I0(\misobitptr_reg_n_0_[1] ),
        .I1(\misobitptr_reg_n_0_[0] ),
        .O(\misobitptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \misobitptr[2]_i_1 
       (.I0(\misobitptr_reg_n_0_[2] ),
        .I1(\misobitptr_reg_n_0_[1] ),
        .I2(\misobitptr_reg_n_0_[0] ),
        .O(\misobitptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \misobitptr[3]_i_1 
       (.I0(\misobitptr_reg_n_0_[3] ),
        .I1(\misobitptr_reg_n_0_[0] ),
        .I2(\misobitptr_reg_n_0_[1] ),
        .I3(\misobitptr_reg_n_0_[2] ),
        .O(\misobitptr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000400040084)) 
    \misobitptr[4]_i_1 
       (.I0(fsm_State[0]),
        .I1(clk_en),
        .I2(fsm_State[1]),
        .I3(fsm_State[2]),
        .I4(\misobitptr[4]_i_4_n_0 ),
        .I5(\misobitptr[4]_i_5_n_0 ),
        .O(\misobitptr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \misobitptr[4]_i_10 
       (.I0(\fsm_skip_counter_reg_n_0_[19] ),
        .I1(\fsm_skip_counter_reg_n_0_[23] ),
        .I2(\fsm_skip_counter_reg_n_0_[10] ),
        .O(\misobitptr[4]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \misobitptr[4]_i_11 
       (.I0(\fsm_skip_counter_reg_n_0_[4] ),
        .I1(\fsm_skip_counter_reg_n_0_[3] ),
        .I2(\fsm_skip_counter_reg_n_0_[6] ),
        .I3(\fsm_skip_counter_reg_n_0_[5] ),
        .O(\misobitptr[4]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \misobitptr[4]_i_12 
       (.I0(\fsm_skip_counter_reg_n_0_[25] ),
        .I1(\fsm_skip_counter_reg_n_0_[28] ),
        .I2(\fsm_skip_counter_reg_n_0_[30] ),
        .I3(\fsm_skip_counter_reg_n_0_[24] ),
        .O(\misobitptr[4]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2002)) 
    \misobitptr[4]_i_2 
       (.I0(clk_en),
        .I1(fsm_State[2]),
        .I2(fsm_State[0]),
        .I3(fsm_State[1]),
        .O(\misobitptr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \misobitptr[4]_i_3 
       (.I0(\misobitptr_reg_n_0_[4] ),
        .I1(\misobitptr_reg_n_0_[3] ),
        .I2(\misobitptr_reg_n_0_[2] ),
        .I3(\misobitptr_reg_n_0_[1] ),
        .I4(\misobitptr_reg_n_0_[0] ),
        .O(\misobitptr[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \misobitptr[4]_i_4 
       (.I0(\misobitptr[4]_i_6_n_0 ),
        .I1(\misobitptr[4]_i_7_n_0 ),
        .I2(\misobitptr[4]_i_8_n_0 ),
        .I3(\misobitptr[4]_i_9_n_0 ),
        .I4(\misobitptr[4]_i_10_n_0 ),
        .O(\misobitptr[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \misobitptr[4]_i_5 
       (.I0(\misobitptr[4]_i_11_n_0 ),
        .I1(\fsm_skip_counter_reg_n_0_[9] ),
        .I2(\ctl_reg_options_reg_n_0_[0] ),
        .I3(\fsm_skip_counter_reg_n_0_[8] ),
        .I4(\misobitptr[4]_i_12_n_0 ),
        .O(\misobitptr[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \misobitptr[4]_i_6 
       (.I0(\fsm_skip_counter_reg_n_0_[20] ),
        .I1(\fsm_skip_counter_reg_n_0_[27] ),
        .I2(\fsm_skip_counter_reg_n_0_[11] ),
        .I3(\fsm_skip_counter_reg_n_0_[31] ),
        .O(\misobitptr[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \misobitptr[4]_i_7 
       (.I0(\fsm_skip_counter_reg_n_0_[16] ),
        .I1(\fsm_skip_counter_reg_n_0_[26] ),
        .I2(\fsm_skip_counter_reg_n_0_[22] ),
        .I3(\fsm_skip_counter_reg_n_0_[7] ),
        .O(\misobitptr[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \misobitptr[4]_i_8 
       (.I0(\fsm_skip_counter_reg_n_0_[18] ),
        .I1(\fsm_skip_counter_reg_n_0_[15] ),
        .I2(\fsm_skip_counter_reg_n_0_[12] ),
        .I3(\fsm_skip_counter_reg_n_0_[29] ),
        .O(\misobitptr[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \misobitptr[4]_i_9 
       (.I0(\fsm_skip_counter_reg_n_0_[21] ),
        .I1(\fsm_skip_counter_reg_n_0_[13] ),
        .I2(\fsm_skip_counter_reg_n_0_[17] ),
        .I3(\fsm_skip_counter_reg_n_0_[14] ),
        .O(\misobitptr[4]_i_9_n_0 ));
  FDRE \misobitptr_reg[0] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(\misobitptr[0]_i_1_n_0 ),
        .Q(\misobitptr_reg_n_0_[0] ),
        .R(\misobitptr[4]_i_1_n_0 ));
  FDRE \misobitptr_reg[1] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(\misobitptr[1]_i_1_n_0 ),
        .Q(\misobitptr_reg_n_0_[1] ),
        .R(\misobitptr[4]_i_1_n_0 ));
  FDRE \misobitptr_reg[2] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(\misobitptr[2]_i_1_n_0 ),
        .Q(\misobitptr_reg_n_0_[2] ),
        .R(\misobitptr[4]_i_1_n_0 ));
  FDRE \misobitptr_reg[3] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(\misobitptr[3]_i_1_n_0 ),
        .Q(\misobitptr_reg_n_0_[3] ),
        .R(\misobitptr[4]_i_1_n_0 ));
  FDRE \misobitptr_reg[4] 
       (.C(ctl_clk_i),
        .CE(\misobitptr[4]_i_2_n_0 ),
        .D(\misobitptr[4]_i_3_n_0 ),
        .Q(\misobitptr_reg_n_0_[4] ),
        .R(\misobitptr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[0]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[24]_i_2_n_0 ),
        .I3(\misodata[7]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[0] ),
        .O(\misodata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[10]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[15]_i_2_n_0 ),
        .I3(\misodata[26]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[10] ),
        .O(\misodata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[11]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[15]_i_2_n_0 ),
        .I3(\misodata[27]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[11] ),
        .O(\misodata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[12]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[15]_i_2_n_0 ),
        .I3(\misodata[28]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[12] ),
        .O(\misodata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[13]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[15]_i_2_n_0 ),
        .I3(\misodata[29]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[13] ),
        .O(\misodata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[14]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[15]_i_2_n_0 ),
        .I3(\misodata[30]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[14] ),
        .O(\misodata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[15]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[31]_i_3_n_0 ),
        .I3(\misodata[15]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[15] ),
        .O(\misodata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \misodata[15]_i_2 
       (.I0(\misobitptr_reg_n_0_[3] ),
        .I1(\misobitptr_reg_n_0_[4] ),
        .O(\misodata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[16]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[24]_i_2_n_0 ),
        .I3(\misodata[23]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[16] ),
        .O(\misodata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[17]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[25]_i_2_n_0 ),
        .I3(\misodata[23]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[17] ),
        .O(\misodata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[18]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[26]_i_2_n_0 ),
        .I3(\misodata[23]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[18] ),
        .O(\misodata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[19]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[27]_i_2_n_0 ),
        .I3(\misodata[23]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[19] ),
        .O(\misodata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[1]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[25]_i_2_n_0 ),
        .I3(\misodata[7]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[1] ),
        .O(\misodata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[20]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[28]_i_2_n_0 ),
        .I3(\misodata[23]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[20] ),
        .O(\misodata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[21]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[29]_i_2_n_0 ),
        .I3(\misodata[23]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[21] ),
        .O(\misodata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[22]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[30]_i_2_n_0 ),
        .I3(\misodata[23]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[22] ),
        .O(\misodata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[23]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[31]_i_3_n_0 ),
        .I3(\misodata[23]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[23] ),
        .O(\misodata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \misodata[23]_i_2 
       (.I0(\misobitptr_reg_n_0_[3] ),
        .I1(\misobitptr_reg_n_0_[4] ),
        .O(\misodata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[24]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[24]_i_2_n_0 ),
        .I3(\misodata[31]_i_4_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[24] ),
        .O(\misodata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \misodata[24]_i_2 
       (.I0(\misobitptr_reg_n_0_[2] ),
        .I1(\misobitptr_reg_n_0_[1] ),
        .I2(\misobitptr_reg_n_0_[0] ),
        .O(\misodata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[25]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[25]_i_2_n_0 ),
        .I3(\misodata[31]_i_4_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[25] ),
        .O(\misodata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \misodata[25]_i_2 
       (.I0(\misobitptr_reg_n_0_[2] ),
        .I1(\misobitptr_reg_n_0_[0] ),
        .I2(\misobitptr_reg_n_0_[1] ),
        .O(\misodata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[26]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[26]_i_2_n_0 ),
        .I3(\misodata[31]_i_4_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[26] ),
        .O(\misodata[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \misodata[26]_i_2 
       (.I0(\misobitptr_reg_n_0_[2] ),
        .I1(\misobitptr_reg_n_0_[1] ),
        .I2(\misobitptr_reg_n_0_[0] ),
        .O(\misodata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[27]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[27]_i_2_n_0 ),
        .I3(\misodata[31]_i_4_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[27] ),
        .O(\misodata[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \misodata[27]_i_2 
       (.I0(\misobitptr_reg_n_0_[2] ),
        .I1(\misobitptr_reg_n_0_[1] ),
        .I2(\misobitptr_reg_n_0_[0] ),
        .O(\misodata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[28]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[28]_i_2_n_0 ),
        .I3(\misodata[31]_i_4_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[28] ),
        .O(\misodata[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \misodata[28]_i_2 
       (.I0(\misobitptr_reg_n_0_[2] ),
        .I1(\misobitptr_reg_n_0_[1] ),
        .I2(\misobitptr_reg_n_0_[0] ),
        .O(\misodata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[29]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[29]_i_2_n_0 ),
        .I3(\misodata[31]_i_4_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[29] ),
        .O(\misodata[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \misodata[29]_i_2 
       (.I0(\misobitptr_reg_n_0_[2] ),
        .I1(\misobitptr_reg_n_0_[0] ),
        .I2(\misobitptr_reg_n_0_[1] ),
        .O(\misodata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[2]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[26]_i_2_n_0 ),
        .I3(\misodata[7]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[2] ),
        .O(\misodata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[30]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[30]_i_2_n_0 ),
        .I3(\misodata[31]_i_4_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[30] ),
        .O(\misodata[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \misodata[30]_i_2 
       (.I0(\misobitptr_reg_n_0_[2] ),
        .I1(\misobitptr_reg_n_0_[1] ),
        .I2(\misobitptr_reg_n_0_[0] ),
        .O(\misodata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFBBBB00808888)) 
    \misodata[31]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[31]_i_3_n_0 ),
        .I3(\misodata[31]_i_4_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[31] ),
        .O(\misodata[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \misodata[31]_i_2 
       (.I0(miso_i),
        .I1(fsm_State[2]),
        .I2(fsm_State[1]),
        .O(misodata));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \misodata[31]_i_3 
       (.I0(\misobitptr_reg_n_0_[2] ),
        .I1(\misobitptr_reg_n_0_[1] ),
        .I2(\misobitptr_reg_n_0_[0] ),
        .O(\misodata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \misodata[31]_i_4 
       (.I0(\misobitptr_reg_n_0_[4] ),
        .I1(\misobitptr_reg_n_0_[3] ),
        .O(\misodata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[3]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[27]_i_2_n_0 ),
        .I3(\misodata[7]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[3] ),
        .O(\misodata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[4]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[28]_i_2_n_0 ),
        .I3(\misodata[7]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[4] ),
        .O(\misodata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[5]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[29]_i_2_n_0 ),
        .I3(\misodata[7]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[5] ),
        .O(\misodata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[6]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[30]_i_2_n_0 ),
        .I3(\misodata[7]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[6] ),
        .O(\misodata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[7]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[31]_i_3_n_0 ),
        .I3(\misodata[7]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[7] ),
        .O(\misodata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \misodata[7]_i_2 
       (.I0(\misobitptr_reg_n_0_[4] ),
        .I1(\misobitptr_reg_n_0_[3] ),
        .O(\misodata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[8]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[15]_i_2_n_0 ),
        .I3(\misodata[24]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[8] ),
        .O(\misodata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    \misodata[9]_i_1 
       (.I0(misodata),
        .I1(\misobitptr[4]_i_2_n_0 ),
        .I2(\misodata[15]_i_2_n_0 ),
        .I3(\misodata[25]_i_2_n_0 ),
        .I4(fsm_State[1]),
        .I5(\misodata_reg_n_0_[9] ),
        .O(\misodata[9]_i_1_n_0 ));
  FDRE \misodata_reg[0] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[0]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \misodata_reg[10] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[10]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \misodata_reg[11] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[11]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \misodata_reg[12] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[12]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \misodata_reg[13] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[13]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \misodata_reg[14] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[14]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \misodata_reg[15] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[15]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \misodata_reg[16] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[16]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \misodata_reg[17] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[17]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \misodata_reg[18] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[18]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \misodata_reg[19] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[19]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \misodata_reg[1] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[1]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \misodata_reg[20] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[20]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \misodata_reg[21] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[21]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \misodata_reg[22] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[22]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \misodata_reg[23] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[23]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \misodata_reg[24] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[24]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \misodata_reg[25] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[25]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \misodata_reg[26] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[26]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \misodata_reg[27] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[27]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \misodata_reg[28] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[28]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \misodata_reg[29] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[29]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \misodata_reg[2] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[2]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \misodata_reg[30] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[30]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \misodata_reg[31] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[31]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \misodata_reg[3] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[3]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \misodata_reg[4] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[4]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \misodata_reg[5] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[5]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \misodata_reg[6] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[6]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \misodata_reg[7] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[7]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \misodata_reg[8] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[8]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \misodata_reg[9] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\misodata[9]_i_1_n_0 ),
        .Q(\misodata_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    mosi_o_i_1
       (.I0(clk_en),
        .I1(fsm_State[2]),
        .I2(fsm_State[0]),
        .O(mosi_o_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_o_i_10
       (.I0(\mosidata_reg_n_0_[23] ),
        .I1(\mosidata_reg_n_0_[22] ),
        .I2(\mosibitptr_reg_n_0_[1] ),
        .I3(\mosidata_reg_n_0_[21] ),
        .I4(\mosibitptr_reg_n_0_[0] ),
        .I5(\mosidata_reg_n_0_[20] ),
        .O(mosi_o_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_o_i_11
       (.I0(\mosidata_reg_n_0_[27] ),
        .I1(\mosidata_reg_n_0_[26] ),
        .I2(\mosibitptr_reg_n_0_[1] ),
        .I3(\mosidata_reg_n_0_[25] ),
        .I4(\mosibitptr_reg_n_0_[0] ),
        .I5(\mosidata_reg_n_0_[24] ),
        .O(mosi_o_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_o_i_12
       (.I0(\mosidata_reg_n_0_[31] ),
        .I1(\mosidata_reg_n_0_[30] ),
        .I2(\mosibitptr_reg_n_0_[1] ),
        .I3(\mosidata_reg_n_0_[29] ),
        .I4(\mosibitptr_reg_n_0_[0] ),
        .I5(\mosidata_reg_n_0_[28] ),
        .O(mosi_o_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_o_i_13
       (.I0(\mosidata_reg_n_0_[3] ),
        .I1(\mosidata_reg_n_0_[2] ),
        .I2(\mosibitptr_reg_n_0_[1] ),
        .I3(\mosidata_reg_n_0_[1] ),
        .I4(\mosibitptr_reg_n_0_[0] ),
        .I5(\mosidata_reg_n_0_[0] ),
        .O(mosi_o_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_o_i_14
       (.I0(\mosidata_reg_n_0_[7] ),
        .I1(\mosidata_reg_n_0_[6] ),
        .I2(\mosibitptr_reg_n_0_[1] ),
        .I3(\mosidata_reg_n_0_[5] ),
        .I4(\mosibitptr_reg_n_0_[0] ),
        .I5(\mosidata_reg_n_0_[4] ),
        .O(mosi_o_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_o_i_15
       (.I0(\mosidata_reg_n_0_[11] ),
        .I1(\mosidata_reg_n_0_[10] ),
        .I2(\mosibitptr_reg_n_0_[1] ),
        .I3(\mosidata_reg_n_0_[9] ),
        .I4(\mosibitptr_reg_n_0_[0] ),
        .I5(\mosidata_reg_n_0_[8] ),
        .O(mosi_o_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_o_i_16
       (.I0(\mosidata_reg_n_0_[15] ),
        .I1(\mosidata_reg_n_0_[14] ),
        .I2(\mosibitptr_reg_n_0_[1] ),
        .I3(\mosidata_reg_n_0_[13] ),
        .I4(\mosibitptr_reg_n_0_[0] ),
        .I5(\mosidata_reg_n_0_[12] ),
        .O(mosi_o_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB8FF)) 
    mosi_o_i_2
       (.I0(mosi_o_reg_i_3_n_0),
        .I1(\mosibitptr_reg_n_0_[4] ),
        .I2(mosi_o_reg_i_4_n_0),
        .I3(fsm_State[1]),
        .O(mosi_o_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_o_i_9
       (.I0(\mosidata_reg_n_0_[19] ),
        .I1(\mosidata_reg_n_0_[18] ),
        .I2(\mosibitptr_reg_n_0_[1] ),
        .I3(\mosidata_reg_n_0_[17] ),
        .I4(\mosibitptr_reg_n_0_[0] ),
        .I5(\mosidata_reg_n_0_[16] ),
        .O(mosi_o_i_9_n_0));
  FDRE mosi_o_reg
       (.C(ctl_clk_i),
        .CE(mosi_o_i_1_n_0),
        .D(mosi_o_i_2_n_0),
        .Q(mosi_o),
        .R(1'b0));
  MUXF8 mosi_o_reg_i_3
       (.I0(mosi_o_reg_i_5_n_0),
        .I1(mosi_o_reg_i_6_n_0),
        .O(mosi_o_reg_i_3_n_0),
        .S(\mosibitptr_reg_n_0_[3] ));
  MUXF8 mosi_o_reg_i_4
       (.I0(mosi_o_reg_i_7_n_0),
        .I1(mosi_o_reg_i_8_n_0),
        .O(mosi_o_reg_i_4_n_0),
        .S(\mosibitptr_reg_n_0_[3] ));
  MUXF7 mosi_o_reg_i_5
       (.I0(mosi_o_i_9_n_0),
        .I1(mosi_o_i_10_n_0),
        .O(mosi_o_reg_i_5_n_0),
        .S(\mosibitptr_reg_n_0_[2] ));
  MUXF7 mosi_o_reg_i_6
       (.I0(mosi_o_i_11_n_0),
        .I1(mosi_o_i_12_n_0),
        .O(mosi_o_reg_i_6_n_0),
        .S(\mosibitptr_reg_n_0_[2] ));
  MUXF7 mosi_o_reg_i_7
       (.I0(mosi_o_i_13_n_0),
        .I1(mosi_o_i_14_n_0),
        .O(mosi_o_reg_i_7_n_0),
        .S(\mosibitptr_reg_n_0_[2] ));
  MUXF7 mosi_o_reg_i_8
       (.I0(mosi_o_i_15_n_0),
        .I1(mosi_o_i_16_n_0),
        .O(mosi_o_reg_i_8_n_0),
        .S(\mosibitptr_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h0020AAAA0000AAAA)) 
    \mosiaddress[31]_i_1 
       (.I0(mosi_o_i_1_n_0),
        .I1(\mosibitptr_reg_n_0_[1] ),
        .I2(\mosibitptr_reg_n_0_[0] ),
        .I3(cfgmem_ena_o_i_3_n_0),
        .I4(fsm_State[1]),
        .I5(fsm_State[2]),
        .O(\mosiaddress[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0020AAAA)) 
    \mosiaddress[31]_i_2 
       (.I0(mosi_o_i_1_n_0),
        .I1(\mosibitptr_reg_n_0_[1] ),
        .I2(\mosibitptr_reg_n_0_[0] ),
        .I3(cfgmem_ena_o_i_3_n_0),
        .I4(fsm_State[1]),
        .O(\mosiaddress[31]_i_2_n_0 ));
  FDRE \mosiaddress_reg[10] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[10]),
        .Q(\mosiaddress_reg_n_0_[10] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[11] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[11]),
        .Q(\mosiaddress_reg_n_0_[11] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[12] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[12]),
        .Q(\mosiaddress_reg_n_0_[12] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[13] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[13]),
        .Q(\mosiaddress_reg_n_0_[13] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[14] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[14]),
        .Q(\mosiaddress_reg_n_0_[14] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[15] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[15]),
        .Q(\mosiaddress_reg_n_0_[15] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[16] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[16]),
        .Q(\mosiaddress_reg_n_0_[16] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[17] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[17]),
        .Q(\mosiaddress_reg_n_0_[17] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[18] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[18]),
        .Q(\mosiaddress_reg_n_0_[18] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[19] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[19]),
        .Q(\mosiaddress_reg_n_0_[19] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[1] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[1]),
        .Q(\mosiaddress_reg_n_0_[1] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[20] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[20]),
        .Q(\mosiaddress_reg_n_0_[20] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[21] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[21]),
        .Q(\mosiaddress_reg_n_0_[21] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[22] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[22]),
        .Q(\mosiaddress_reg_n_0_[22] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[23] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[23]),
        .Q(\mosiaddress_reg_n_0_[23] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[24] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[24]),
        .Q(\mosiaddress_reg_n_0_[24] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[25] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[25]),
        .Q(\mosiaddress_reg_n_0_[25] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[26] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[26]),
        .Q(\mosiaddress_reg_n_0_[26] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[27] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[27]),
        .Q(\mosiaddress_reg_n_0_[27] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[28] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[28]),
        .Q(\mosiaddress_reg_n_0_[28] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[29] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[29]),
        .Q(\mosiaddress_reg_n_0_[29] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[2] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[2]),
        .Q(\mosiaddress_reg_n_0_[2] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[30] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[30]),
        .Q(\mosiaddress_reg_n_0_[30] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[31] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[31]),
        .Q(\mosiaddress_reg_n_0_[31] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[3] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[3]),
        .Q(\mosiaddress_reg_n_0_[3] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[4] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[4]),
        .Q(\mosiaddress_reg_n_0_[4] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[5] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[5]),
        .Q(\mosiaddress_reg_n_0_[5] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[6] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[6]),
        .Q(\mosiaddress_reg_n_0_[6] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[7] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[7]),
        .Q(\mosiaddress_reg_n_0_[7] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[8] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[8]),
        .Q(\mosiaddress_reg_n_0_[8] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  FDRE \mosiaddress_reg[9] 
       (.C(ctl_clk_i),
        .CE(\mosiaddress[31]_i_2_n_0 ),
        .D(in9[9]),
        .Q(\mosiaddress_reg_n_0_[9] ),
        .R(\mosiaddress[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \mosibitptr[0]_i_1 
       (.I0(fsm_State[1]),
        .I1(\mosibitptr_reg_n_0_[0] ),
        .O(mosibitptr[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \mosibitptr[1]_i_1 
       (.I0(fsm_State[1]),
        .I1(\mosibitptr_reg_n_0_[1] ),
        .I2(\mosibitptr_reg_n_0_[0] ),
        .O(mosibitptr[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \mosibitptr[2]_i_1 
       (.I0(fsm_State[1]),
        .I1(\mosibitptr_reg_n_0_[2] ),
        .I2(\mosibitptr_reg_n_0_[1] ),
        .I3(\mosibitptr_reg_n_0_[0] ),
        .O(\mosibitptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h2A80AA00)) 
    \mosibitptr[3]_i_1 
       (.I0(fsm_State[1]),
        .I1(\mosibitptr_reg_n_0_[1] ),
        .I2(\mosibitptr_reg_n_0_[0] ),
        .I3(\mosibitptr_reg_n_0_[3] ),
        .I4(\mosibitptr_reg_n_0_[2] ),
        .O(mosibitptr[3]));
  LUT6 #(
    .INIT(64'h7080F000F000F000)) 
    \mosibitptr[4]_i_1 
       (.I0(\mosibitptr_reg_n_0_[0] ),
        .I1(\mosibitptr_reg_n_0_[1] ),
        .I2(fsm_State[1]),
        .I3(\mosibitptr_reg_n_0_[4] ),
        .I4(\mosibitptr_reg_n_0_[2] ),
        .I5(\mosibitptr_reg_n_0_[3] ),
        .O(\mosibitptr[4]_i_1_n_0 ));
  FDRE \mosibitptr_reg[0] 
       (.C(ctl_clk_i),
        .CE(mosi_o_i_1_n_0),
        .D(mosibitptr[0]),
        .Q(\mosibitptr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mosibitptr_reg[1] 
       (.C(ctl_clk_i),
        .CE(mosi_o_i_1_n_0),
        .D(mosibitptr[1]),
        .Q(\mosibitptr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \mosibitptr_reg[2] 
       (.C(ctl_clk_i),
        .CE(mosi_o_i_1_n_0),
        .D(\mosibitptr[2]_i_1_n_0 ),
        .Q(\mosibitptr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \mosibitptr_reg[3] 
       (.C(ctl_clk_i),
        .CE(mosi_o_i_1_n_0),
        .D(mosibitptr[3]),
        .Q(\mosibitptr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \mosibitptr_reg[4] 
       (.C(ctl_clk_i),
        .CE(mosi_o_i_1_n_0),
        .D(\mosibitptr[4]_i_1_n_0 ),
        .Q(\mosibitptr_reg_n_0_[4] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0004)) 
    \mosidata[31]_i_1 
       (.I0(fsm_State[1]),
        .I1(clk_en),
        .I2(fsm_State[2]),
        .I3(fsm_State[0]),
        .O(\mosidata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000055000000D500)) 
    \mosidata[31]_i_2 
       (.I0(fsm_State[1]),
        .I1(\mosibitptr_reg_n_0_[4] ),
        .I2(\mosidata[31]_i_3_n_0 ),
        .I3(clk_en),
        .I4(fsm_State[2]),
        .I5(fsm_State[0]),
        .O(\mosidata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mosidata[31]_i_3 
       (.I0(\mosibitptr_reg_n_0_[1] ),
        .I1(\mosibitptr_reg_n_0_[0] ),
        .I2(\mosibitptr_reg_n_0_[3] ),
        .I3(\mosibitptr_reg_n_0_[2] ),
        .O(\mosidata[31]_i_3_n_0 ));
  FDRE \mosidata_reg[0] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[0]),
        .Q(\mosidata_reg_n_0_[0] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[10] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[10]),
        .Q(\mosidata_reg_n_0_[10] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[11] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[11]),
        .Q(\mosidata_reg_n_0_[11] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[12] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[12]),
        .Q(\mosidata_reg_n_0_[12] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[13] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[13]),
        .Q(\mosidata_reg_n_0_[13] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[14] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[14]),
        .Q(\mosidata_reg_n_0_[14] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[15] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[15]),
        .Q(\mosidata_reg_n_0_[15] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[16] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[16]),
        .Q(\mosidata_reg_n_0_[16] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[17] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[17]),
        .Q(\mosidata_reg_n_0_[17] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[18] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[18]),
        .Q(\mosidata_reg_n_0_[18] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[19] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[19]),
        .Q(\mosidata_reg_n_0_[19] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[1] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[1]),
        .Q(\mosidata_reg_n_0_[1] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[20] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[20]),
        .Q(\mosidata_reg_n_0_[20] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[21] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[21]),
        .Q(\mosidata_reg_n_0_[21] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[22] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[22]),
        .Q(\mosidata_reg_n_0_[22] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[23] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[23]),
        .Q(\mosidata_reg_n_0_[23] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[24] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[24]),
        .Q(\mosidata_reg_n_0_[24] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[25] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[25]),
        .Q(\mosidata_reg_n_0_[25] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[26] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[26]),
        .Q(\mosidata_reg_n_0_[26] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[27] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[27]),
        .Q(\mosidata_reg_n_0_[27] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[28] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[28]),
        .Q(\mosidata_reg_n_0_[28] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[29] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[29]),
        .Q(\mosidata_reg_n_0_[29] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[2] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[2]),
        .Q(\mosidata_reg_n_0_[2] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[30] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[30]),
        .Q(\mosidata_reg_n_0_[30] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[31] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[31]),
        .Q(\mosidata_reg_n_0_[31] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[3] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[3]),
        .Q(\mosidata_reg_n_0_[3] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[4] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[4]),
        .Q(\mosidata_reg_n_0_[4] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[5] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[5]),
        .Q(\mosidata_reg_n_0_[5] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[6] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[6]),
        .Q(\mosidata_reg_n_0_[6] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[7] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[7]),
        .Q(\mosidata_reg_n_0_[7] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[8] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[8]),
        .Q(\mosidata_reg_n_0_[8] ),
        .R(\mosidata[31]_i_1_n_0 ));
  FDRE \mosidata_reg[9] 
       (.C(ctl_clk_i),
        .CE(\mosidata[31]_i_2_n_0 ),
        .D(cfgmem_data_i[9]),
        .Q(\mosidata_reg_n_0_[9] ),
        .R(\mosidata[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__3/i__carry_n_0 ,\plusOp_inferred__3/i__carry_n_1 ,\plusOp_inferred__3/i__carry_n_2 ,\plusOp_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\mosiaddress_reg_n_0_[2] ,1'b0}),
        .O(in9[4:1]),
        .S({\mosiaddress_reg_n_0_[4] ,\mosiaddress_reg_n_0_[3] ,i__carry_i_1_n_0,\mosiaddress_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__0 
       (.CI(\plusOp_inferred__3/i__carry_n_0 ),
        .CO({\plusOp_inferred__3/i__carry__0_n_0 ,\plusOp_inferred__3/i__carry__0_n_1 ,\plusOp_inferred__3/i__carry__0_n_2 ,\plusOp_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[8:5]),
        .S({\mosiaddress_reg_n_0_[8] ,\mosiaddress_reg_n_0_[7] ,\mosiaddress_reg_n_0_[6] ,\mosiaddress_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__1 
       (.CI(\plusOp_inferred__3/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__3/i__carry__1_n_0 ,\plusOp_inferred__3/i__carry__1_n_1 ,\plusOp_inferred__3/i__carry__1_n_2 ,\plusOp_inferred__3/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[12:9]),
        .S({\mosiaddress_reg_n_0_[12] ,\mosiaddress_reg_n_0_[11] ,\mosiaddress_reg_n_0_[10] ,\mosiaddress_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__2 
       (.CI(\plusOp_inferred__3/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__3/i__carry__2_n_0 ,\plusOp_inferred__3/i__carry__2_n_1 ,\plusOp_inferred__3/i__carry__2_n_2 ,\plusOp_inferred__3/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[16:13]),
        .S({\mosiaddress_reg_n_0_[16] ,\mosiaddress_reg_n_0_[15] ,\mosiaddress_reg_n_0_[14] ,\mosiaddress_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__3 
       (.CI(\plusOp_inferred__3/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__3/i__carry__3_n_0 ,\plusOp_inferred__3/i__carry__3_n_1 ,\plusOp_inferred__3/i__carry__3_n_2 ,\plusOp_inferred__3/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[20:17]),
        .S({\mosiaddress_reg_n_0_[20] ,\mosiaddress_reg_n_0_[19] ,\mosiaddress_reg_n_0_[18] ,\mosiaddress_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__4 
       (.CI(\plusOp_inferred__3/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__3/i__carry__4_n_0 ,\plusOp_inferred__3/i__carry__4_n_1 ,\plusOp_inferred__3/i__carry__4_n_2 ,\plusOp_inferred__3/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[24:21]),
        .S({\mosiaddress_reg_n_0_[24] ,\mosiaddress_reg_n_0_[23] ,\mosiaddress_reg_n_0_[22] ,\mosiaddress_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__5 
       (.CI(\plusOp_inferred__3/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__3/i__carry__5_n_0 ,\plusOp_inferred__3/i__carry__5_n_1 ,\plusOp_inferred__3/i__carry__5_n_2 ,\plusOp_inferred__3/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[28:25]),
        .S({\mosiaddress_reg_n_0_[28] ,\mosiaddress_reg_n_0_[27] ,\mosiaddress_reg_n_0_[26] ,\mosiaddress_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__6 
       (.CI(\plusOp_inferred__3/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__3/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__3/i__carry__6_n_2 ,\plusOp_inferred__3/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__3/i__carry__6_O_UNCONNECTED [3],in9[31:29]}),
        .S({1'b0,\mosiaddress_reg_n_0_[31] ,\mosiaddress_reg_n_0_[30] ,\mosiaddress_reg_n_0_[29] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__4/i__carry_n_0 ,\plusOp_inferred__4/i__carry_n_1 ,\plusOp_inferred__4/i__carry_n_2 ,\plusOp_inferred__4/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,writer_address[2],1'b0}),
        .O(in5[4:1]),
        .S({writer_address[4:3],i__carry_i_1__0_n_0,writer_address[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__0 
       (.CI(\plusOp_inferred__4/i__carry_n_0 ),
        .CO({\plusOp_inferred__4/i__carry__0_n_0 ,\plusOp_inferred__4/i__carry__0_n_1 ,\plusOp_inferred__4/i__carry__0_n_2 ,\plusOp_inferred__4/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[8:5]),
        .S(writer_address[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__1 
       (.CI(\plusOp_inferred__4/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__4/i__carry__1_n_0 ,\plusOp_inferred__4/i__carry__1_n_1 ,\plusOp_inferred__4/i__carry__1_n_2 ,\plusOp_inferred__4/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[12:9]),
        .S(writer_address[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__2 
       (.CI(\plusOp_inferred__4/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__4/i__carry__2_n_0 ,\plusOp_inferred__4/i__carry__2_n_1 ,\plusOp_inferred__4/i__carry__2_n_2 ,\plusOp_inferred__4/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[16:13]),
        .S(writer_address[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__3 
       (.CI(\plusOp_inferred__4/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__4/i__carry__3_n_0 ,\plusOp_inferred__4/i__carry__3_n_1 ,\plusOp_inferred__4/i__carry__3_n_2 ,\plusOp_inferred__4/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[20:17]),
        .S(writer_address[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__4 
       (.CI(\plusOp_inferred__4/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__4/i__carry__4_n_0 ,\plusOp_inferred__4/i__carry__4_n_1 ,\plusOp_inferred__4/i__carry__4_n_2 ,\plusOp_inferred__4/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[24:21]),
        .S(writer_address[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__5 
       (.CI(\plusOp_inferred__4/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__4/i__carry__5_n_0 ,\plusOp_inferred__4/i__carry__5_n_1 ,\plusOp_inferred__4/i__carry__5_n_2 ,\plusOp_inferred__4/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in5[28:25]),
        .S(writer_address[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__6 
       (.CI(\plusOp_inferred__4/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__4/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__4/i__carry__6_n_2 ,\plusOp_inferred__4/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__4/i__carry__6_O_UNCONNECTED [3],in5[31:29]}),
        .S({1'b0,writer_address[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFBF4004)) 
    sck_o_i_1
       (.I0(fsm_State[2]),
        .I1(clk_en),
        .I2(fsm_State[1]),
        .I3(fsm_State[0]),
        .I4(sck_o),
        .O(sck_o_i_1_n_0));
  FDRE sck_o_reg
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(sck_o_i_1_n_0),
        .Q(sck_o),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \sync_reg_control[0]_i_1 
       (.I0(\sync_reg_control_reg_n_0_[0] ),
        .I1(ctl_reg_control_event),
        .I2(\ctl_reg_control_reg_n_0_[0] ),
        .I3(fsm_start_ack_reg_n_0),
        .O(\sync_reg_control[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sync_reg_control_reg[0] 
       (.C(ctl_clk_i),
        .CE(1'b1),
        .D(\sync_reg_control[0]_i_1_n_0 ),
        .Q(\sync_reg_control_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00E0F0F0)) 
    \writer_address[31]_i_1 
       (.I0(\FSM_onehot_writer_state_reg_n_0_[1] ),
        .I1(writer_state__0[0]),
        .I2(ipc_reset_reg_n_0),
        .I3(writer_state__0[2]),
        .I4(clk_en),
        .O(\writer_address[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEAAA2)) 
    \writer_address[31]_i_2 
       (.I0(ipc_reset_reg_n_0),
        .I1(clk_en),
        .I2(writer_state__0[0]),
        .I3(\FSM_onehot_writer_state_reg_n_0_[1] ),
        .I4(writer_state__0[2]),
        .O(\writer_address[31]_i_2_n_0 ));
  FDRE \writer_address_reg[10] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[10]),
        .Q(writer_address[10]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[11] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[11]),
        .Q(writer_address[11]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[12] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[12]),
        .Q(writer_address[12]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[13] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[13]),
        .Q(writer_address[13]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[14] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[14]),
        .Q(writer_address[14]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[15] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[15]),
        .Q(writer_address[15]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[16] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[16]),
        .Q(writer_address[16]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[17] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[17]),
        .Q(writer_address[17]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[18] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[18]),
        .Q(writer_address[18]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[19] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[19]),
        .Q(writer_address[19]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[1] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[1]),
        .Q(writer_address[1]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[20] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[20]),
        .Q(writer_address[20]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[21] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[21]),
        .Q(writer_address[21]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[22] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[22]),
        .Q(writer_address[22]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[23] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[23]),
        .Q(writer_address[23]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[24] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[24]),
        .Q(writer_address[24]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[25] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[25]),
        .Q(writer_address[25]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[26] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[26]),
        .Q(writer_address[26]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[27] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[27]),
        .Q(writer_address[27]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[28] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[28]),
        .Q(writer_address[28]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[29] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[29]),
        .Q(writer_address[29]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[2] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[2]),
        .Q(writer_address[2]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[30] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[30]),
        .Q(writer_address[30]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[31] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[31]),
        .Q(writer_address[31]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[3] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[3]),
        .Q(writer_address[3]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[4] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[4]),
        .Q(writer_address[4]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[5] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[5]),
        .Q(writer_address[5]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[6] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[6]),
        .Q(writer_address[6]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[7] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[7]),
        .Q(writer_address[7]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[8] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[8]),
        .Q(writer_address[8]),
        .R(\writer_address[31]_i_1_n_0 ));
  FDRE \writer_address_reg[9] 
       (.C(ctl_clk_i),
        .CE(\writer_address[31]_i_2_n_0 ),
        .D(in5[9]),
        .Q(writer_address[9]),
        .R(\writer_address[31]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
