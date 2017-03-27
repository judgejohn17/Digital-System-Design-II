--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: MultiplierWrapper_synthesis.vhd
-- /___/   /\     Timestamp: Thu May 05 15:20:05 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm MultiplierWrapper -w -dir netgen/synthesis -ofmt vhdl -sim MultiplierWrapper.ngc MultiplierWrapper_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: MultiplierWrapper.ngc
-- Output file	: D:\DSDII\Lab5\netgen\synthesis\MultiplierWrapper_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: MultiplierWrapper
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity MultiplierWrapper is
  port (
    test_mode_in : in STD_LOGIC := 'X'; 
    Clock : in STD_LOGIC := 'X'; 
    Reset : in STD_LOGIC := 'X'; 
    unused_anode : out STD_LOGIC; 
    hund_anode : out STD_LOGIC; 
    tens_anode : out STD_LOGIC; 
    ones_anode : out STD_LOGIC; 
    CAn : out STD_LOGIC; 
    CBn : out STD_LOGIC; 
    CCn : out STD_LOGIC; 
    CDn : out STD_LOGIC; 
    CEn : out STD_LOGIC; 
    CFn : out STD_LOGIC; 
    CGn : out STD_LOGIC; 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    output : out STD_LOGIC_VECTOR ( 11 downto 0 ) 
  );
end MultiplierWrapper;

architecture Structure of MultiplierWrapper is
  component Multiplier_4x4
    port (
      clk : in STD_LOGIC := 'X'; 
      a : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
      b : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
      p : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
    );
  end component;
  signal A_3_IBUF_0 : STD_LOGIC; 
  signal A_2_IBUF_1 : STD_LOGIC; 
  signal A_1_IBUF_2 : STD_LOGIC; 
  signal A_0_IBUF_3 : STD_LOGIC; 
  signal B_3_IBUF_4 : STD_LOGIC; 
  signal B_2_IBUF_5 : STD_LOGIC; 
  signal B_1_IBUF_6 : STD_LOGIC; 
  signal B_0_IBUF_7 : STD_LOGIC; 
  signal Clock_BUFGP_8 : STD_LOGIC; 
  signal Reset_IBUF_9 : STD_LOGIC; 
  signal test_mode_in_IBUF_18 : STD_LOGIC; 
  signal LFSR1_DFF4_Q_19 : STD_LOGIC; 
  signal LFSR1_DFF3_Q_20 : STD_LOGIC; 
  signal LFSR1_DFF2_Q_21 : STD_LOGIC; 
  signal LFSR1_DFF1_Q_22 : STD_LOGIC; 
  signal LFSR1_DFF8_Q_23 : STD_LOGIC; 
  signal LFSR1_DFF7_Q_24 : STD_LOGIC; 
  signal LFSR1_DFF6_Q_25 : STD_LOGIC; 
  signal LFSR1_DFF5_Q_26 : STD_LOGIC; 
  signal SevenSegDec_hund_disp_n_4_Q : STD_LOGIC; 
  signal SevenSegDec_hund_disp_n_6_Q : STD_LOGIC; 
  signal SevenSegDec_hund_disp_n_1_Q : STD_LOGIC; 
  signal SevenSegDec_hund_disp_n_0_Q : STD_LOGIC; 
  signal SevenSegDisp_hund_anode_61 : STD_LOGIC; 
  signal SevenSegDisp_tens_anode_62 : STD_LOGIC; 
  signal SevenSegDisp_ones_anode_63 : STD_LOGIC; 
  signal SevenSegDisp_CAn_64 : STD_LOGIC; 
  signal SevenSegDisp_CBn_65 : STD_LOGIC; 
  signal SevenSegDisp_CCn_66 : STD_LOGIC; 
  signal SevenSegDisp_CDn_67 : STD_LOGIC; 
  signal SevenSegDisp_CEn_68 : STD_LOGIC; 
  signal SevenSegDisp_CFn_69 : STD_LOGIC; 
  signal SevenSegDisp_CGn_70 : STD_LOGIC; 
  signal output_0_OBUF_71 : STD_LOGIC; 
  signal GND_7_o_bcd_wire_1_5_LessThan_27_o : STD_LOGIC; 
  signal unused_anode_OBUF_74 : STD_LOGIC; 
  signal Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_lut_3_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q : STD_LOGIC; 
  signal Mmux_bcd_wire_2_5_111 : STD_LOGIC; 
  signal Mmux_bcd_wire_2_5_122 : STD_LOGIC; 
  signal LFSR1_DFF1_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF1_inTestMode_91 : STD_LOGIC; 
  signal LFSR1_DFF1_n0013 : STD_LOGIC; 
  signal LFSR1_DFF2_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF3_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF4_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF5_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF6_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF7_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF8_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal MISR1_n0054_inv : STD_LOGIC; 
  signal MISR1_Reset_OR_DriverANDClockEnable : STD_LOGIC; 
  signal MISR1_Reset_inv1 : STD_LOGIC; 
  signal MISR1_W22 : STD_LOGIC; 
  signal MISR1_W19 : STD_LOGIC; 
  signal MISR1_W16 : STD_LOGIC; 
  signal MISR1_W13 : STD_LOGIC; 
  signal MISR1_W10 : STD_LOGIC; 
  signal MISR1_W7 : STD_LOGIC; 
  signal MISR1_W4 : STD_LOGIC; 
  signal MISR1_W1 : STD_LOGIC; 
  signal MISR1_select_signal_125 : STD_LOGIC; 
  signal MISR1_Counter_0_Q : STD_LOGIC; 
  signal MISR1_Counter_1_Q : STD_LOGIC; 
  signal MISR1_Counter_2_Q : STD_LOGIC; 
  signal MISR1_Counter_3_Q : STD_LOGIC; 
  signal MISR1_Counter_4_Q : STD_LOGIC; 
  signal MISR1_Counter_5_Q : STD_LOGIC; 
  signal MISR1_Counter_6_Q : STD_LOGIC; 
  signal MISR1_Counter_10_Q : STD_LOGIC; 
  signal MISR1_DFF8_Q_134 : STD_LOGIC; 
  signal MISR1_DFF7_Q_135 : STD_LOGIC; 
  signal MISR1_DFF6_Q_136 : STD_LOGIC; 
  signal MISR1_DFF5_Q_137 : STD_LOGIC; 
  signal MISR1_DFF4_Q_138 : STD_LOGIC; 
  signal MISR1_DFF3_Q_139 : STD_LOGIC; 
  signal MISR1_DFF2_Q_140 : STD_LOGIC; 
  signal MISR1_DFF1_Q_141 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT6 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT5 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT4 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT3 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT2 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT1 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT6 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT4 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT1_151 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT6 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT5 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT4 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT3 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT2 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT1 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT : STD_LOGIC; 
  signal SevenSegDisp_Mram_n00472 : STD_LOGIC; 
  signal SevenSegDisp_Mram_n00471 : STD_LOGIC; 
  signal SevenSegDisp_Mram_n0047 : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_9_o : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_8_o : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_7_o : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_6_o : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_5_o : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_4_o : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_3_o : STD_LOGIC; 
  signal MISR1_Reset_OR_DriverANDClockEnable1_227 : STD_LOGIC; 
  signal LFSR1_DFF1_inTestMode_glue_set_262 : STD_LOGIC; 
  signal MISR1_select_signal_glue_set_263 : STD_LOGIC; 
  signal MISR1_Mcount_Counter_cy_5_rt_264 : STD_LOGIC; 
  signal MISR1_Mcount_Counter_cy_4_rt_265 : STD_LOGIC; 
  signal MISR1_Mcount_Counter_cy_3_rt_266 : STD_LOGIC; 
  signal MISR1_Mcount_Counter_cy_2_rt_267 : STD_LOGIC; 
  signal MISR1_Mcount_Counter_cy_1_rt_268 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_17_rt_269 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_16_rt_270 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_15_rt_271 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_14_rt_272 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_13_rt_273 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_12_rt_274 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_11_rt_275 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_10_rt_276 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_9_rt_277 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_8_rt_278 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_7_rt_279 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_6_rt_280 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_5_rt_281 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_4_rt_282 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_3_rt_283 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_2_rt_284 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_1_rt_285 : STD_LOGIC; 
  signal MISR1_Mcount_Counter_xor_6_rt_286 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_xor_18_rt_287 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131_295 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal MultIn1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal MultIn2 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal MultOut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MISR1_Signature : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal SevenSegDec_tens_disp_n : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal SevenSegDec_ones_disp_n : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal bcd_wire_2 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal MISR1_Mcount_Counter_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal MISR1_Mcount_Counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal MISR1_Result : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal SevenSegDisp_Mcount_counter_cy : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal SevenSegDisp_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal SevenSegDisp_counter : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal SevenSegDisp_Result : STD_LOGIC_VECTOR ( 18 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => unused_anode_OBUF_74
    );
  XST_GND : GND
    port map (
      G => MISR1_Counter_10_Q
    );
  LFSR1_DFF1_Q : FDR
    port map (
      C => Clock_BUFGP_8,
      D => LFSR1_DFF1_Q_Reset_MUX_98_o,
      R => LFSR1_DFF1_n0013,
      Q => LFSR1_DFF1_Q_22
    );
  LFSR1_DFF2_Q : FDR
    port map (
      C => Clock_BUFGP_8,
      D => LFSR1_DFF2_Q_Reset_MUX_98_o,
      R => LFSR1_DFF1_n0013,
      Q => LFSR1_DFF2_Q_21
    );
  LFSR1_DFF3_Q : FDR
    port map (
      C => Clock_BUFGP_8,
      D => LFSR1_DFF3_Q_Reset_MUX_98_o,
      R => LFSR1_DFF1_n0013,
      Q => LFSR1_DFF3_Q_20
    );
  LFSR1_DFF4_Q : FDR
    port map (
      C => Clock_BUFGP_8,
      D => LFSR1_DFF4_Q_Reset_MUX_98_o,
      R => LFSR1_DFF1_n0013,
      Q => LFSR1_DFF4_Q_19
    );
  LFSR1_DFF5_Q : FDR
    port map (
      C => Clock_BUFGP_8,
      D => LFSR1_DFF5_Q_Reset_MUX_98_o,
      R => LFSR1_DFF1_n0013,
      Q => LFSR1_DFF5_Q_26
    );
  LFSR1_DFF6_Q : FDR
    port map (
      C => Clock_BUFGP_8,
      D => LFSR1_DFF6_Q_Reset_MUX_98_o,
      R => LFSR1_DFF1_n0013,
      Q => LFSR1_DFF6_Q_25
    );
  LFSR1_DFF7_Q : FDR
    port map (
      C => Clock_BUFGP_8,
      D => LFSR1_DFF7_Q_Reset_MUX_98_o,
      R => LFSR1_DFF1_n0013,
      Q => LFSR1_DFF7_Q_24
    );
  LFSR1_DFF8_Q : FDR
    port map (
      C => Clock_BUFGP_8,
      D => LFSR1_DFF8_Q_Reset_MUX_98_o,
      R => LFSR1_DFF1_n0013,
      Q => LFSR1_DFF8_Q_23
    );
  MISR1_Mcount_Counter_xor_6_Q : XORCY
    port map (
      CI => MISR1_Mcount_Counter_cy(5),
      LI => MISR1_Mcount_Counter_xor_6_rt_286,
      O => MISR1_Result(6)
    );
  MISR1_Mcount_Counter_xor_5_Q : XORCY
    port map (
      CI => MISR1_Mcount_Counter_cy(4),
      LI => MISR1_Mcount_Counter_cy_5_rt_264,
      O => MISR1_Result(5)
    );
  MISR1_Mcount_Counter_cy_5_Q : MUXCY
    port map (
      CI => MISR1_Mcount_Counter_cy(4),
      DI => MISR1_Counter_10_Q,
      S => MISR1_Mcount_Counter_cy_5_rt_264,
      O => MISR1_Mcount_Counter_cy(5)
    );
  MISR1_Mcount_Counter_xor_4_Q : XORCY
    port map (
      CI => MISR1_Mcount_Counter_cy(3),
      LI => MISR1_Mcount_Counter_cy_4_rt_265,
      O => MISR1_Result(4)
    );
  MISR1_Mcount_Counter_cy_4_Q : MUXCY
    port map (
      CI => MISR1_Mcount_Counter_cy(3),
      DI => MISR1_Counter_10_Q,
      S => MISR1_Mcount_Counter_cy_4_rt_265,
      O => MISR1_Mcount_Counter_cy(4)
    );
  MISR1_Mcount_Counter_xor_3_Q : XORCY
    port map (
      CI => MISR1_Mcount_Counter_cy(2),
      LI => MISR1_Mcount_Counter_cy_3_rt_266,
      O => MISR1_Result(3)
    );
  MISR1_Mcount_Counter_cy_3_Q : MUXCY
    port map (
      CI => MISR1_Mcount_Counter_cy(2),
      DI => MISR1_Counter_10_Q,
      S => MISR1_Mcount_Counter_cy_3_rt_266,
      O => MISR1_Mcount_Counter_cy(3)
    );
  MISR1_Mcount_Counter_xor_2_Q : XORCY
    port map (
      CI => MISR1_Mcount_Counter_cy(1),
      LI => MISR1_Mcount_Counter_cy_2_rt_267,
      O => MISR1_Result(2)
    );
  MISR1_Mcount_Counter_cy_2_Q : MUXCY
    port map (
      CI => MISR1_Mcount_Counter_cy(1),
      DI => MISR1_Counter_10_Q,
      S => MISR1_Mcount_Counter_cy_2_rt_267,
      O => MISR1_Mcount_Counter_cy(2)
    );
  MISR1_Mcount_Counter_xor_1_Q : XORCY
    port map (
      CI => MISR1_Mcount_Counter_cy(0),
      LI => MISR1_Mcount_Counter_cy_1_rt_268,
      O => MISR1_Result(1)
    );
  MISR1_Mcount_Counter_cy_1_Q : MUXCY
    port map (
      CI => MISR1_Mcount_Counter_cy(0),
      DI => MISR1_Counter_10_Q,
      S => MISR1_Mcount_Counter_cy_1_rt_268,
      O => MISR1_Mcount_Counter_cy(1)
    );
  MISR1_Mcount_Counter_xor_0_Q : XORCY
    port map (
      CI => MISR1_Counter_10_Q,
      LI => MISR1_Mcount_Counter_lut(0),
      O => MISR1_Result(0)
    );
  MISR1_Mcount_Counter_cy_0_Q : MUXCY
    port map (
      CI => MISR1_Counter_10_Q,
      DI => unused_anode_OBUF_74,
      S => MISR1_Mcount_Counter_lut(0),
      O => MISR1_Mcount_Counter_cy(0)
    );
  MISR1_Counter_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_n0054_inv,
      D => MISR1_Result(6),
      R => Reset_IBUF_9,
      Q => MISR1_Counter_6_Q
    );
  MISR1_Counter_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_n0054_inv,
      D => MISR1_Result(5),
      R => Reset_IBUF_9,
      Q => MISR1_Counter_5_Q
    );
  MISR1_Counter_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_n0054_inv,
      D => MISR1_Result(4),
      R => Reset_IBUF_9,
      Q => MISR1_Counter_4_Q
    );
  MISR1_Counter_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_n0054_inv,
      D => MISR1_Result(3),
      R => Reset_IBUF_9,
      Q => MISR1_Counter_3_Q
    );
  MISR1_Counter_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_n0054_inv,
      D => MISR1_Result(2),
      R => Reset_IBUF_9,
      Q => MISR1_Counter_2_Q
    );
  MISR1_Counter_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_n0054_inv,
      D => MISR1_Result(1),
      R => Reset_IBUF_9,
      Q => MISR1_Counter_1_Q
    );
  MISR1_Counter_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_n0054_inv,
      D => MISR1_Result(0),
      R => Reset_IBUF_9,
      Q => MISR1_Counter_0_Q
    );
  MISR1_DFF1_Q : FDS
    port map (
      C => Clock_BUFGP_8,
      D => MISR1_W1,
      S => Reset_IBUF_9,
      Q => MISR1_DFF1_Q_141
    );
  MISR1_DFF2_Q : FDS
    port map (
      C => Clock_BUFGP_8,
      D => MISR1_W4,
      S => Reset_IBUF_9,
      Q => MISR1_DFF2_Q_140
    );
  MISR1_DFF3_Q : FDS
    port map (
      C => Clock_BUFGP_8,
      D => MISR1_W7,
      S => Reset_IBUF_9,
      Q => MISR1_DFF3_Q_139
    );
  MISR1_DFF4_Q : FDS
    port map (
      C => Clock_BUFGP_8,
      D => MISR1_W10,
      S => Reset_IBUF_9,
      Q => MISR1_DFF4_Q_138
    );
  MISR1_DFF5_Q : FDS
    port map (
      C => Clock_BUFGP_8,
      D => MISR1_W13,
      S => Reset_IBUF_9,
      Q => MISR1_DFF5_Q_137
    );
  MISR1_DFF6_Q : FDS
    port map (
      C => Clock_BUFGP_8,
      D => MISR1_W16,
      S => Reset_IBUF_9,
      Q => MISR1_DFF6_Q_136
    );
  MISR1_DFF7_Q : FDS
    port map (
      C => Clock_BUFGP_8,
      D => MISR1_W19,
      S => Reset_IBUF_9,
      Q => MISR1_DFF7_Q_135
    );
  MISR1_DFF8_Q : FDS
    port map (
      C => Clock_BUFGP_8,
      D => MISR1_W22,
      S => Reset_IBUF_9,
      Q => MISR1_DFF8_Q_134
    );
  MISR1_Signature_7 : FDRE
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_Reset_inv1,
      D => MISR1_DFF8_Q_134,
      R => MISR1_Reset_OR_DriverANDClockEnable,
      Q => MISR1_Signature(7)
    );
  MISR1_Signature_6 : FDRE
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_Reset_inv1,
      D => MISR1_DFF7_Q_135,
      R => MISR1_Reset_OR_DriverANDClockEnable,
      Q => MISR1_Signature(6)
    );
  MISR1_Signature_5 : FDRE
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_Reset_inv1,
      D => MISR1_DFF6_Q_136,
      R => MISR1_Reset_OR_DriverANDClockEnable,
      Q => MISR1_Signature(5)
    );
  MISR1_Signature_4 : FDRE
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_Reset_inv1,
      D => MISR1_DFF5_Q_137,
      R => MISR1_Reset_OR_DriverANDClockEnable,
      Q => MISR1_Signature(4)
    );
  MISR1_Signature_3 : FDRE
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_Reset_inv1,
      D => MISR1_DFF4_Q_138,
      R => MISR1_Reset_OR_DriverANDClockEnable,
      Q => MISR1_Signature(3)
    );
  MISR1_Signature_2 : FDRE
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_Reset_inv1,
      D => MISR1_DFF3_Q_139,
      R => MISR1_Reset_OR_DriverANDClockEnable,
      Q => MISR1_Signature(2)
    );
  MISR1_Signature_1 : FDRE
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_Reset_inv1,
      D => MISR1_DFF2_Q_140,
      R => MISR1_Reset_OR_DriverANDClockEnable,
      Q => MISR1_Signature(1)
    );
  MISR1_Signature_0 : FDRE
    port map (
      C => Clock_BUFGP_8,
      CE => MISR1_Reset_inv1,
      D => MISR1_DFF1_Q_141,
      R => MISR1_Reset_OR_DriverANDClockEnable,
      Q => MISR1_Signature(0)
    );
  SevenSegDec_ones_disp_n_6 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT6,
      Q => SevenSegDec_ones_disp_n(6)
    );
  SevenSegDec_ones_disp_n_5 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT5,
      Q => SevenSegDec_ones_disp_n(5)
    );
  SevenSegDec_ones_disp_n_4 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT4,
      Q => SevenSegDec_ones_disp_n(4)
    );
  SevenSegDec_ones_disp_n_3 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT3,
      Q => SevenSegDec_ones_disp_n(3)
    );
  SevenSegDec_ones_disp_n_2 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT2,
      Q => SevenSegDec_ones_disp_n(2)
    );
  SevenSegDec_ones_disp_n_1 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT1,
      Q => SevenSegDec_ones_disp_n(1)
    );
  SevenSegDec_ones_disp_n_0 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT,
      Q => SevenSegDec_ones_disp_n(0)
    );
  SevenSegDec_tens_disp_n_6 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT6,
      Q => SevenSegDec_tens_disp_n(6)
    );
  SevenSegDec_tens_disp_n_5 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT5,
      Q => SevenSegDec_tens_disp_n(5)
    );
  SevenSegDec_tens_disp_n_4 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT4,
      Q => SevenSegDec_tens_disp_n(4)
    );
  SevenSegDec_tens_disp_n_3 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT3,
      Q => SevenSegDec_tens_disp_n(3)
    );
  SevenSegDec_tens_disp_n_2 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT2,
      Q => SevenSegDec_tens_disp_n(2)
    );
  SevenSegDec_tens_disp_n_1 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT1,
      Q => SevenSegDec_tens_disp_n(1)
    );
  SevenSegDec_tens_disp_n_0 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT,
      Q => SevenSegDec_tens_disp_n(0)
    );
  SevenSegDec_hund_disp_n_6 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT6,
      Q => SevenSegDec_hund_disp_n_6_Q
    );
  SevenSegDec_hund_disp_n_4 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT4,
      Q => SevenSegDec_hund_disp_n_4_Q
    );
  SevenSegDec_hund_disp_n_1 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT1_151,
      Q => SevenSegDec_hund_disp_n_1_Q
    );
  SevenSegDec_hund_disp_n_0 : FD
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT,
      Q => SevenSegDec_hund_disp_n_0_Q
    );
  SevenSegDisp_Mcount_counter_xor_18_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(17),
      LI => SevenSegDisp_Mcount_counter_xor_18_rt_287,
      O => SevenSegDisp_Result(18)
    );
  SevenSegDisp_Mcount_counter_xor_17_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(16),
      LI => SevenSegDisp_Mcount_counter_cy_17_rt_269,
      O => SevenSegDisp_Result(17)
    );
  SevenSegDisp_Mcount_counter_cy_17_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(16),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_17_rt_269,
      O => SevenSegDisp_Mcount_counter_cy(17)
    );
  SevenSegDisp_Mcount_counter_xor_16_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(15),
      LI => SevenSegDisp_Mcount_counter_cy_16_rt_270,
      O => SevenSegDisp_Result(16)
    );
  SevenSegDisp_Mcount_counter_cy_16_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(15),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_16_rt_270,
      O => SevenSegDisp_Mcount_counter_cy(16)
    );
  SevenSegDisp_Mcount_counter_xor_15_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(14),
      LI => SevenSegDisp_Mcount_counter_cy_15_rt_271,
      O => SevenSegDisp_Result(15)
    );
  SevenSegDisp_Mcount_counter_cy_15_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(14),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_15_rt_271,
      O => SevenSegDisp_Mcount_counter_cy(15)
    );
  SevenSegDisp_Mcount_counter_xor_14_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(13),
      LI => SevenSegDisp_Mcount_counter_cy_14_rt_272,
      O => SevenSegDisp_Result(14)
    );
  SevenSegDisp_Mcount_counter_cy_14_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(13),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_14_rt_272,
      O => SevenSegDisp_Mcount_counter_cy(14)
    );
  SevenSegDisp_Mcount_counter_xor_13_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(12),
      LI => SevenSegDisp_Mcount_counter_cy_13_rt_273,
      O => SevenSegDisp_Result(13)
    );
  SevenSegDisp_Mcount_counter_cy_13_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(12),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_13_rt_273,
      O => SevenSegDisp_Mcount_counter_cy(13)
    );
  SevenSegDisp_Mcount_counter_xor_12_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(11),
      LI => SevenSegDisp_Mcount_counter_cy_12_rt_274,
      O => SevenSegDisp_Result(12)
    );
  SevenSegDisp_Mcount_counter_cy_12_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(11),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_12_rt_274,
      O => SevenSegDisp_Mcount_counter_cy(12)
    );
  SevenSegDisp_Mcount_counter_xor_11_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(10),
      LI => SevenSegDisp_Mcount_counter_cy_11_rt_275,
      O => SevenSegDisp_Result(11)
    );
  SevenSegDisp_Mcount_counter_cy_11_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(10),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_11_rt_275,
      O => SevenSegDisp_Mcount_counter_cy(11)
    );
  SevenSegDisp_Mcount_counter_xor_10_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(9),
      LI => SevenSegDisp_Mcount_counter_cy_10_rt_276,
      O => SevenSegDisp_Result(10)
    );
  SevenSegDisp_Mcount_counter_cy_10_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(9),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_10_rt_276,
      O => SevenSegDisp_Mcount_counter_cy(10)
    );
  SevenSegDisp_Mcount_counter_xor_9_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(8),
      LI => SevenSegDisp_Mcount_counter_cy_9_rt_277,
      O => SevenSegDisp_Result(9)
    );
  SevenSegDisp_Mcount_counter_cy_9_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(8),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_9_rt_277,
      O => SevenSegDisp_Mcount_counter_cy(9)
    );
  SevenSegDisp_Mcount_counter_xor_8_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(7),
      LI => SevenSegDisp_Mcount_counter_cy_8_rt_278,
      O => SevenSegDisp_Result(8)
    );
  SevenSegDisp_Mcount_counter_cy_8_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(7),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_8_rt_278,
      O => SevenSegDisp_Mcount_counter_cy(8)
    );
  SevenSegDisp_Mcount_counter_xor_7_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(6),
      LI => SevenSegDisp_Mcount_counter_cy_7_rt_279,
      O => SevenSegDisp_Result(7)
    );
  SevenSegDisp_Mcount_counter_cy_7_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(6),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_7_rt_279,
      O => SevenSegDisp_Mcount_counter_cy(7)
    );
  SevenSegDisp_Mcount_counter_xor_6_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(5),
      LI => SevenSegDisp_Mcount_counter_cy_6_rt_280,
      O => SevenSegDisp_Result(6)
    );
  SevenSegDisp_Mcount_counter_cy_6_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(5),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_6_rt_280,
      O => SevenSegDisp_Mcount_counter_cy(6)
    );
  SevenSegDisp_Mcount_counter_xor_5_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(4),
      LI => SevenSegDisp_Mcount_counter_cy_5_rt_281,
      O => SevenSegDisp_Result(5)
    );
  SevenSegDisp_Mcount_counter_cy_5_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(4),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_5_rt_281,
      O => SevenSegDisp_Mcount_counter_cy(5)
    );
  SevenSegDisp_Mcount_counter_xor_4_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(3),
      LI => SevenSegDisp_Mcount_counter_cy_4_rt_282,
      O => SevenSegDisp_Result(4)
    );
  SevenSegDisp_Mcount_counter_cy_4_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(3),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_4_rt_282,
      O => SevenSegDisp_Mcount_counter_cy(4)
    );
  SevenSegDisp_Mcount_counter_xor_3_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(2),
      LI => SevenSegDisp_Mcount_counter_cy_3_rt_283,
      O => SevenSegDisp_Result(3)
    );
  SevenSegDisp_Mcount_counter_cy_3_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(2),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_3_rt_283,
      O => SevenSegDisp_Mcount_counter_cy(3)
    );
  SevenSegDisp_Mcount_counter_xor_2_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(1),
      LI => SevenSegDisp_Mcount_counter_cy_2_rt_284,
      O => SevenSegDisp_Result(2)
    );
  SevenSegDisp_Mcount_counter_cy_2_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(1),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_2_rt_284,
      O => SevenSegDisp_Mcount_counter_cy(2)
    );
  SevenSegDisp_Mcount_counter_xor_1_Q : XORCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(0),
      LI => SevenSegDisp_Mcount_counter_cy_1_rt_285,
      O => SevenSegDisp_Result(1)
    );
  SevenSegDisp_Mcount_counter_cy_1_Q : MUXCY
    port map (
      CI => SevenSegDisp_Mcount_counter_cy(0),
      DI => MISR1_Counter_10_Q,
      S => SevenSegDisp_Mcount_counter_cy_1_rt_285,
      O => SevenSegDisp_Mcount_counter_cy(1)
    );
  SevenSegDisp_Mcount_counter_xor_0_Q : XORCY
    port map (
      CI => MISR1_Counter_10_Q,
      LI => SevenSegDisp_Mcount_counter_lut(0),
      O => SevenSegDisp_Result(0)
    );
  SevenSegDisp_Mcount_counter_cy_0_Q : MUXCY
    port map (
      CI => MISR1_Counter_10_Q,
      DI => unused_anode_OBUF_74,
      S => SevenSegDisp_Mcount_counter_lut(0),
      O => SevenSegDisp_Mcount_counter_cy(0)
    );
  SevenSegDisp_counter_18 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(18),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(18)
    );
  SevenSegDisp_counter_17 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(17),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(17)
    );
  SevenSegDisp_counter_16 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(16),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(16)
    );
  SevenSegDisp_counter_15 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(15),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(15)
    );
  SevenSegDisp_counter_14 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(14),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(14)
    );
  SevenSegDisp_counter_13 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(13),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(13)
    );
  SevenSegDisp_counter_12 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(12),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(12)
    );
  SevenSegDisp_counter_11 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(11),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(11)
    );
  SevenSegDisp_counter_10 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(10),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(10)
    );
  SevenSegDisp_counter_9 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(9),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(9)
    );
  SevenSegDisp_counter_8 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(8),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(8)
    );
  SevenSegDisp_counter_7 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(7),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(7)
    );
  SevenSegDisp_counter_6 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(6),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(6)
    );
  SevenSegDisp_counter_5 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(5),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(5)
    );
  SevenSegDisp_counter_4 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(4),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(4)
    );
  SevenSegDisp_counter_3 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(3),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(3)
    );
  SevenSegDisp_counter_2 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(2),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(2)
    );
  SevenSegDisp_counter_1 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(1),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(1)
    );
  SevenSegDisp_counter_0 : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Result(0),
      R => Reset_IBUF_9,
      Q => SevenSegDisp_counter(0)
    );
  SevenSegDisp_ones_anode : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Mram_n00472,
      R => Reset_IBUF_9,
      Q => SevenSegDisp_ones_anode_63
    );
  SevenSegDisp_tens_anode : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Mram_n00471,
      R => Reset_IBUF_9,
      Q => SevenSegDisp_tens_anode_62
    );
  SevenSegDisp_hund_anode : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_Mram_n0047,
      R => Reset_IBUF_9,
      Q => SevenSegDisp_hund_anode_61
    );
  SevenSegDisp_CGn : FDS
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_counter_18_PWR_18_o_Mux_9_o,
      S => Reset_IBUF_9,
      Q => SevenSegDisp_CGn_70
    );
  SevenSegDisp_CFn : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_counter_18_PWR_18_o_Mux_8_o,
      R => Reset_IBUF_9,
      Q => SevenSegDisp_CFn_69
    );
  SevenSegDisp_CEn : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_counter_18_PWR_18_o_Mux_7_o,
      R => Reset_IBUF_9,
      Q => SevenSegDisp_CEn_68
    );
  SevenSegDisp_CDn : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_counter_18_PWR_18_o_Mux_6_o,
      R => Reset_IBUF_9,
      Q => SevenSegDisp_CDn_67
    );
  SevenSegDisp_CBn : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_counter_18_PWR_18_o_Mux_4_o,
      R => Reset_IBUF_9,
      Q => SevenSegDisp_CBn_65
    );
  SevenSegDisp_CAn : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_counter_18_PWR_18_o_Mux_3_o,
      R => Reset_IBUF_9,
      Q => SevenSegDisp_CAn_64
    );
  SevenSegDisp_CCn : FDR
    port map (
      C => Clock_BUFGP_8,
      D => SevenSegDisp_counter_18_PWR_18_o_Mux_5_o,
      R => Reset_IBUF_9,
      Q => SevenSegDisp_CCn_66
    );
  M2_Mmux_Output41 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => LFSR1_DFF8_Q_23,
      I2 => B_3_IBUF_4,
      O => MultIn2(3)
    );
  M2_Mmux_Output31 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => LFSR1_DFF7_Q_24,
      I2 => B_2_IBUF_5,
      O => MultIn2(2)
    );
  M2_Mmux_Output21 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => LFSR1_DFF6_Q_25,
      I2 => B_1_IBUF_6,
      O => MultIn2(1)
    );
  M2_Mmux_Output11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => LFSR1_DFF5_Q_26,
      I2 => B_0_IBUF_7,
      O => MultIn2(0)
    );
  M1_Mmux_Output41 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => LFSR1_DFF4_Q_19,
      I2 => A_3_IBUF_0,
      O => MultIn1(3)
    );
  M1_Mmux_Output31 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => LFSR1_DFF3_Q_20,
      I2 => A_2_IBUF_1,
      O => MultIn1(2)
    );
  M1_Mmux_Output21 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => LFSR1_DFF2_Q_21,
      I2 => A_1_IBUF_2,
      O => MultIn1(1)
    );
  M1_Mmux_Output11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => LFSR1_DFF1_Q_22,
      I2 => A_0_IBUF_3,
      O => MultIn1(0)
    );
  M3_Mmux_Output81 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(7),
      I2 => MultOut(7),
      O => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q
    );
  M3_Mmux_Output71 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(6),
      I2 => MultOut(6),
      O => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q
    );
  M3_Mmux_Output61 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(5),
      I2 => MultOut(5),
      O => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q
    );
  M3_Mmux_Output51 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(4),
      I2 => MultOut(4),
      O => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q
    );
  M3_Mmux_Output41 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(3),
      I2 => MultOut(3),
      O => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q
    );
  M3_Mmux_Output31 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(2),
      I2 => MultOut(2),
      O => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q
    );
  M3_Mmux_Output21 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(1),
      I2 => MultOut(1),
      O => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q
    );
  M3_Mmux_Output11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(0),
      I2 => MultOut(0),
      O => output_0_OBUF_71
    );
  GND_7_o_bcd_wire_1_5_LessThan_27_o1 : LUT6
    generic map(
      INIT => X"FF4AFF85FF54FFA8"
    )
    port map (
      I0 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      I1 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_lut_3_Q,
      I4 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => GND_7_o_bcd_wire_1_5_LessThan_27_o
    );
  Mmux_bcd_wire_1_2_bcd_wire_1_5_MUX_59_o131 : LUT6
    generic map(
      INIT => X"D3CD2C327C3783C8"
    )
    port map (
      I0 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      I1 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      I3 => Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131_295,
      I4 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_lut_3_Q,
      I5 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      O => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q
    );
  Mmux_bcd_wire_1_2_bcd_wire_1_5_MUX_59_o121 : LUT6
    generic map(
      INIT => X"95106A20A9015602"
    )
    port map (
      I0 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      I1 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_lut_3_Q,
      I4 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q
    );
  LFSR1_DFF4_Mmux_Q_Reset_MUX_98_o11 : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => LFSR1_DFF1_inTestMode_91,
      I1 => LFSR1_DFF1_Q_22,
      I2 => LFSR1_DFF5_Q_26,
      I3 => test_mode_in_IBUF_18,
      O => LFSR1_DFF4_Q_Reset_MUX_98_o
    );
  LFSR1_DFF5_Mmux_Q_Reset_MUX_98_o11 : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => LFSR1_DFF1_inTestMode_91,
      I1 => LFSR1_DFF1_Q_22,
      I2 => LFSR1_DFF6_Q_25,
      I3 => test_mode_in_IBUF_18,
      O => LFSR1_DFF5_Q_Reset_MUX_98_o
    );
  LFSR1_DFF6_Mmux_Q_Reset_MUX_98_o11 : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => LFSR1_DFF1_inTestMode_91,
      I1 => LFSR1_DFF1_Q_22,
      I2 => LFSR1_DFF7_Q_24,
      I3 => test_mode_in_IBUF_18,
      O => LFSR1_DFF6_Q_Reset_MUX_98_o
    );
  LFSR1_DFF1_n00131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => LFSR1_DFF1_inTestMode_91,
      O => LFSR1_DFF1_n0013
    );
  LFSR1_DFF1_Mmux_Q_Reset_MUX_98_o11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => LFSR1_DFF1_inTestMode_91,
      I1 => LFSR1_DFF2_Q_21,
      I2 => test_mode_in_IBUF_18,
      O => LFSR1_DFF1_Q_Reset_MUX_98_o
    );
  LFSR1_DFF2_Mmux_Q_Reset_MUX_98_o11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => LFSR1_DFF1_inTestMode_91,
      I1 => LFSR1_DFF3_Q_20,
      I2 => test_mode_in_IBUF_18,
      O => LFSR1_DFF2_Q_Reset_MUX_98_o
    );
  LFSR1_DFF3_Mmux_Q_Reset_MUX_98_o11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => LFSR1_DFF1_inTestMode_91,
      I1 => LFSR1_DFF4_Q_19,
      I2 => test_mode_in_IBUF_18,
      O => LFSR1_DFF3_Q_Reset_MUX_98_o
    );
  LFSR1_DFF7_Mmux_Q_Reset_MUX_98_o11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => LFSR1_DFF1_inTestMode_91,
      I1 => LFSR1_DFF8_Q_23,
      I2 => test_mode_in_IBUF_18,
      O => LFSR1_DFF7_Q_Reset_MUX_98_o
    );
  LFSR1_DFF8_Mmux_Q_Reset_MUX_98_o11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => LFSR1_DFF1_inTestMode_91,
      I1 => LFSR1_DFF1_Q_22,
      I2 => test_mode_in_IBUF_18,
      O => LFSR1_DFF8_Q_Reset_MUX_98_o
    );
  MISR1_M8_Mmux_Output11 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => MISR1_DFF8_Q_134,
      I1 => MISR1_select_signal_125,
      I2 => MultOut(7),
      O => MISR1_W22
    );
  MISR1_M1_Mmux_Output11 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => MISR1_select_signal_125,
      I1 => MultOut(0),
      I2 => MISR1_DFF2_Q_140,
      I3 => MISR1_DFF1_Q_141,
      O => MISR1_W1
    );
  MISR1_M2_Mmux_Output11 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => MISR1_select_signal_125,
      I1 => MultOut(1),
      I2 => MISR1_DFF3_Q_139,
      I3 => MISR1_DFF2_Q_140,
      O => MISR1_W4
    );
  MISR1_M5_Mmux_Output11 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => MISR1_select_signal_125,
      I1 => MultOut(4),
      I2 => MISR1_DFF6_Q_136,
      I3 => MISR1_DFF5_Q_137,
      O => MISR1_W13
    );
  MISR1_M3_Mmux_Output11 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => MISR1_select_signal_125,
      I1 => MultOut(2),
      I2 => MISR1_DFF4_Q_138,
      I3 => MISR1_DFF3_Q_139,
      O => MISR1_W7
    );
  MISR1_M4_Mmux_Output11 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => MISR1_select_signal_125,
      I1 => MultOut(3),
      I2 => MISR1_DFF5_Q_137,
      I3 => MISR1_DFF4_Q_138,
      O => MISR1_W10
    );
  MISR1_M7_Mmux_Output11 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => MISR1_select_signal_125,
      I1 => MultOut(6),
      I2 => MISR1_DFF8_Q_134,
      I3 => MISR1_DFF7_Q_135,
      O => MISR1_W19
    );
  MISR1_M6_Mmux_Output11 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => MISR1_select_signal_125,
      I1 => MultOut(5),
      I2 => MISR1_DFF7_Q_135,
      I3 => MISR1_DFF6_Q_136,
      O => MISR1_W16
    );
  MISR1_n0054_inv1 : LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Counter_3_Q,
      I2 => MISR1_Counter_4_Q,
      I3 => MISR1_Counter_5_Q,
      I4 => MISR1_Counter_6_Q,
      O => MISR1_n0054_inv
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_9_o11 : LUT5
    generic map(
      INIT => X"FDECB9A8"
    )
    port map (
      I0 => SevenSegDisp_counter(18),
      I1 => SevenSegDisp_counter(17),
      I2 => SevenSegDec_hund_disp_n_0_Q,
      I3 => SevenSegDec_ones_disp_n(0),
      I4 => SevenSegDec_tens_disp_n(0),
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_9_o
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_8_o11 : LUT5
    generic map(
      INIT => X"FDECB9A8"
    )
    port map (
      I0 => SevenSegDisp_counter(18),
      I1 => SevenSegDisp_counter(17),
      I2 => SevenSegDec_hund_disp_n_1_Q,
      I3 => SevenSegDec_ones_disp_n(1),
      I4 => SevenSegDec_tens_disp_n(1),
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_8_o
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_7_o11 : LUT5
    generic map(
      INIT => X"FDECB9A8"
    )
    port map (
      I0 => SevenSegDisp_counter(18),
      I1 => SevenSegDisp_counter(17),
      I2 => SevenSegDec_hund_disp_n_6_Q,
      I3 => SevenSegDec_ones_disp_n(2),
      I4 => SevenSegDec_tens_disp_n(2),
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_7_o
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_6_o11 : LUT5
    generic map(
      INIT => X"FDECB9A8"
    )
    port map (
      I0 => SevenSegDisp_counter(18),
      I1 => SevenSegDisp_counter(17),
      I2 => SevenSegDec_hund_disp_n_6_Q,
      I3 => SevenSegDec_ones_disp_n(3),
      I4 => SevenSegDec_tens_disp_n(3),
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_6_o
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_5_o11 : LUT5
    generic map(
      INIT => X"FDECB9A8"
    )
    port map (
      I0 => SevenSegDisp_counter(18),
      I1 => SevenSegDisp_counter(17),
      I2 => SevenSegDec_hund_disp_n_4_Q,
      I3 => SevenSegDec_ones_disp_n(4),
      I4 => SevenSegDec_tens_disp_n(4),
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_5_o
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_4_o11 : LUT4
    generic map(
      INIT => X"B9A8"
    )
    port map (
      I0 => SevenSegDisp_counter(17),
      I1 => SevenSegDisp_counter(18),
      I2 => SevenSegDec_tens_disp_n(5),
      I3 => SevenSegDec_ones_disp_n(5),
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_4_o
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_3_o11 : LUT5
    generic map(
      INIT => X"FDECB9A8"
    )
    port map (
      I0 => SevenSegDisp_counter(18),
      I1 => SevenSegDisp_counter(17),
      I2 => SevenSegDec_hund_disp_n_6_Q,
      I3 => SevenSegDec_ones_disp_n(6),
      I4 => SevenSegDec_tens_disp_n(6),
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_3_o
    );
  SevenSegDisp_Mram_n004721 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => SevenSegDisp_counter(18),
      I1 => SevenSegDisp_counter(17),
      O => SevenSegDisp_Mram_n00472
    );
  SevenSegDisp_Mram_n0047111 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => SevenSegDisp_counter(17),
      I1 => SevenSegDisp_counter(18),
      O => SevenSegDisp_Mram_n00471
    );
  SevenSegDisp_Mram_n004711 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => SevenSegDisp_counter(18),
      I1 => SevenSegDisp_counter(17),
      O => SevenSegDisp_Mram_n0047
    );
  MISR1_Reset_OR_DriverANDClockEnable1 : LUT6
    generic map(
      INIT => X"0101011155555555"
    )
    port map (
      I0 => MISR1_Counter_6_Q,
      I1 => MISR1_Counter_3_Q,
      I2 => MISR1_Counter_2_Q,
      I3 => MISR1_Counter_1_Q,
      I4 => MISR1_Counter_0_Q,
      I5 => MISR1_Counter_4_Q,
      O => MISR1_Reset_OR_DriverANDClockEnable1_227
    );
  MISR1_Reset_OR_DriverANDClockEnable2 : LUT4
    generic map(
      INIT => X"1151"
    )
    port map (
      I0 => Reset_IBUF_9,
      I1 => test_mode_in_IBUF_18,
      I2 => MISR1_Reset_OR_DriverANDClockEnable1_227,
      I3 => MISR1_Counter_5_Q,
      O => MISR1_Reset_OR_DriverANDClockEnable
    );
  A_3_IBUF : IBUF
    port map (
      I => A(3),
      O => A_3_IBUF_0
    );
  A_2_IBUF : IBUF
    port map (
      I => A(2),
      O => A_2_IBUF_1
    );
  A_1_IBUF : IBUF
    port map (
      I => A(1),
      O => A_1_IBUF_2
    );
  A_0_IBUF : IBUF
    port map (
      I => A(0),
      O => A_0_IBUF_3
    );
  B_3_IBUF : IBUF
    port map (
      I => B(3),
      O => B_3_IBUF_4
    );
  B_2_IBUF : IBUF
    port map (
      I => B(2),
      O => B_2_IBUF_5
    );
  B_1_IBUF : IBUF
    port map (
      I => B(1),
      O => B_1_IBUF_6
    );
  B_0_IBUF : IBUF
    port map (
      I => B(0),
      O => B_0_IBUF_7
    );
  test_mode_in_IBUF : IBUF
    port map (
      I => test_mode_in,
      O => test_mode_in_IBUF_18
    );
  Reset_IBUF : IBUF
    port map (
      I => Reset,
      O => Reset_IBUF_9
    );
  output_11_OBUF : OBUF
    port map (
      I => MISR1_Counter_10_Q,
      O => output(11)
    );
  output_10_OBUF : OBUF
    port map (
      I => MISR1_Counter_10_Q,
      O => output(10)
    );
  output_9_OBUF : OBUF
    port map (
      I => MISR1_Counter_10_Q,
      O => output(9)
    );
  output_8_OBUF : OBUF
    port map (
      I => MISR1_Counter_10_Q,
      O => output(8)
    );
  output_7_OBUF : OBUF
    port map (
      I => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      O => output(7)
    );
  output_6_OBUF : OBUF
    port map (
      I => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      O => output(6)
    );
  output_5_OBUF : OBUF
    port map (
      I => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      O => output(5)
    );
  output_4_OBUF : OBUF
    port map (
      I => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      O => output(4)
    );
  output_3_OBUF : OBUF
    port map (
      I => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      O => output(3)
    );
  output_2_OBUF : OBUF
    port map (
      I => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      O => output(2)
    );
  output_1_OBUF : OBUF
    port map (
      I => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      O => output(1)
    );
  output_0_OBUF : OBUF
    port map (
      I => output_0_OBUF_71,
      O => output(0)
    );
  unused_anode_OBUF : OBUF
    port map (
      I => unused_anode_OBUF_74,
      O => unused_anode
    );
  hund_anode_OBUF : OBUF
    port map (
      I => SevenSegDisp_hund_anode_61,
      O => hund_anode
    );
  tens_anode_OBUF : OBUF
    port map (
      I => SevenSegDisp_tens_anode_62,
      O => tens_anode
    );
  ones_anode_OBUF : OBUF
    port map (
      I => SevenSegDisp_ones_anode_63,
      O => ones_anode
    );
  CAn_OBUF : OBUF
    port map (
      I => SevenSegDisp_CAn_64,
      O => CAn
    );
  CBn_OBUF : OBUF
    port map (
      I => SevenSegDisp_CBn_65,
      O => CBn
    );
  CCn_OBUF : OBUF
    port map (
      I => SevenSegDisp_CCn_66,
      O => CCn
    );
  CDn_OBUF : OBUF
    port map (
      I => SevenSegDisp_CDn_67,
      O => CDn
    );
  CEn_OBUF : OBUF
    port map (
      I => SevenSegDisp_CEn_68,
      O => CEn
    );
  CFn_OBUF : OBUF
    port map (
      I => SevenSegDisp_CFn_69,
      O => CFn
    );
  CGn_OBUF : OBUF
    port map (
      I => SevenSegDisp_CGn_70,
      O => CGn
    );
  LFSR1_DFF1_inTestMode : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clock_BUFGP_8,
      D => LFSR1_DFF1_inTestMode_glue_set_262,
      R => LFSR1_DFF1_n0013,
      Q => LFSR1_DFF1_inTestMode_91
    );
  MISR1_select_signal : FDR
    port map (
      C => Clock_BUFGP_8,
      D => MISR1_select_signal_glue_set_263,
      R => Reset_IBUF_9,
      Q => MISR1_select_signal_125
    );
  MISR1_Mcount_Counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => MISR1_Counter_5_Q,
      O => MISR1_Mcount_Counter_cy_5_rt_264
    );
  MISR1_Mcount_Counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => MISR1_Counter_4_Q,
      O => MISR1_Mcount_Counter_cy_4_rt_265
    );
  MISR1_Mcount_Counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => MISR1_Counter_3_Q,
      O => MISR1_Mcount_Counter_cy_3_rt_266
    );
  MISR1_Mcount_Counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => MISR1_Counter_2_Q,
      O => MISR1_Mcount_Counter_cy_2_rt_267
    );
  MISR1_Mcount_Counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => MISR1_Counter_1_Q,
      O => MISR1_Mcount_Counter_cy_1_rt_268
    );
  SevenSegDisp_Mcount_counter_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(17),
      O => SevenSegDisp_Mcount_counter_cy_17_rt_269
    );
  SevenSegDisp_Mcount_counter_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(16),
      O => SevenSegDisp_Mcount_counter_cy_16_rt_270
    );
  SevenSegDisp_Mcount_counter_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(15),
      O => SevenSegDisp_Mcount_counter_cy_15_rt_271
    );
  SevenSegDisp_Mcount_counter_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(14),
      O => SevenSegDisp_Mcount_counter_cy_14_rt_272
    );
  SevenSegDisp_Mcount_counter_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(13),
      O => SevenSegDisp_Mcount_counter_cy_13_rt_273
    );
  SevenSegDisp_Mcount_counter_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(12),
      O => SevenSegDisp_Mcount_counter_cy_12_rt_274
    );
  SevenSegDisp_Mcount_counter_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(11),
      O => SevenSegDisp_Mcount_counter_cy_11_rt_275
    );
  SevenSegDisp_Mcount_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(10),
      O => SevenSegDisp_Mcount_counter_cy_10_rt_276
    );
  SevenSegDisp_Mcount_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(9),
      O => SevenSegDisp_Mcount_counter_cy_9_rt_277
    );
  SevenSegDisp_Mcount_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(8),
      O => SevenSegDisp_Mcount_counter_cy_8_rt_278
    );
  SevenSegDisp_Mcount_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(7),
      O => SevenSegDisp_Mcount_counter_cy_7_rt_279
    );
  SevenSegDisp_Mcount_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(6),
      O => SevenSegDisp_Mcount_counter_cy_6_rt_280
    );
  SevenSegDisp_Mcount_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(5),
      O => SevenSegDisp_Mcount_counter_cy_5_rt_281
    );
  SevenSegDisp_Mcount_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(4),
      O => SevenSegDisp_Mcount_counter_cy_4_rt_282
    );
  SevenSegDisp_Mcount_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(3),
      O => SevenSegDisp_Mcount_counter_cy_3_rt_283
    );
  SevenSegDisp_Mcount_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(2),
      O => SevenSegDisp_Mcount_counter_cy_2_rt_284
    );
  SevenSegDisp_Mcount_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(1),
      O => SevenSegDisp_Mcount_counter_cy_1_rt_285
    );
  MISR1_Mcount_Counter_xor_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => MISR1_Counter_6_Q,
      O => MISR1_Mcount_Counter_xor_6_rt_286
    );
  SevenSegDisp_Mcount_counter_xor_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SevenSegDisp_counter(18),
      O => SevenSegDisp_Mcount_counter_xor_18_rt_287
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT311 : LUT6
    generic map(
      INIT => X"4820024848299248"
    )
    port map (
      I0 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      I1 => output_0_OBUF_71,
      I2 => N27,
      I3 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      I4 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      I5 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT3
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT511 : LUT6
    generic map(
      INIT => X"1800080601806080"
    )
    port map (
      I0 => output_0_OBUF_71,
      I1 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      I3 => N27,
      I4 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      I5 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT5
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT12 : LUT6
    generic map(
      INIT => X"FF20C8300FF20C83"
    )
    port map (
      I0 => output_0_OBUF_71,
      I1 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      I3 => N31,
      I4 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      I5 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT21 : LUT6
    generic map(
      INIT => X"AE80AEAB0AE8BAEA"
    )
    port map (
      I0 => output_0_OBUF_71,
      I1 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      I3 => N27,
      I4 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      I5 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT2
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT111 : LUT6
    generic map(
      INIT => X"2380E38802388E38"
    )
    port map (
      I0 => output_0_OBUF_71,
      I1 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      I3 => N27,
      I4 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      I5 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT1
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT61 : LUT6
    generic map(
      INIT => X"0480248100481248"
    )
    port map (
      I0 => output_0_OBUF_71,
      I1 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      I3 => N27,
      I4 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      I5 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT6
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT41 : LUT6
    generic map(
      INIT => X"0001100000411004"
    )
    port map (
      I0 => output_0_OBUF_71,
      I1 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      I3 => N31,
      I4 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      I5 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT4
    );
  Mmux_bcd_wire_2_1_131_SW4 : LUT6
    generic map(
      INIT => X"D8FFFFFF272727FF"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(3),
      I2 => MultOut(3),
      I3 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      I5 => Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131_295,
      O => N46
    );
  Mmux_bcd_wire_2_1_131_SW5 : LUT6
    generic map(
      INIT => X"D8D8002727FFD8D8"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(3),
      I2 => MultOut(3),
      I3 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      I5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => N47
    );
  Mmux_bcd_wire_2_1_131_SW6 : LUT6
    generic map(
      INIT => X"00272727D8000000"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(3),
      I2 => MultOut(3),
      I3 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      I5 => Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131_295,
      O => N48
    );
  Mmux_bcd_wire_2_1_131 : LUT6
    generic map(
      INIT => X"288269C33C967DD7"
    )
    port map (
      I0 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_lut_3_Q,
      I1 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      I3 => N48,
      I4 => N46,
      I5 => N47,
      O => bcd_wire_2(4)
    );
  Mmux_bcd_wire_2_5_1221 : LUT5
    generic map(
      INIT => X"20202028"
    )
    port map (
      I0 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      I1 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      O => Mmux_bcd_wire_2_5_122
    );
  SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT611 : LUT6
    generic map(
      INIT => X"555051F0515050F0"
    )
    port map (
      I0 => N52,
      I1 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      I2 => Mmux_bcd_wire_2_5_122,
      I3 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      I5 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      O => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT6
    );
  SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT121 : LUT6
    generic map(
      INIT => X"FFFAFBF0FBFAFAF0"
    )
    port map (
      I0 => N52,
      I1 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      I2 => Mmux_bcd_wire_2_5_122,
      I3 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      I5 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      O => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT1_151
    );
  SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT41 : LUT6
    generic map(
      INIT => X"0005040004050500"
    )
    port map (
      I0 => N56,
      I1 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      I2 => Mmux_bcd_wire_2_5_122,
      I3 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      I5 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      O => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT4
    );
  Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131 : LUT5
    generic map(
      INIT => X"6B296662"
    )
    port map (
      I0 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      I1 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      O => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q
    );
  Mmux_bcd_wire_1_4_bcd_wire_1_7_MUX_39_o131 : LUT6
    generic map(
      INIT => X"D8D800D827D82700"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(6),
      I2 => MultOut(6),
      I3 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      I4 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      I5 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      O => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q
    );
  Mmux_bcd_wire_1_8_bcd_wire_1_8_MUX_28_o11 : LUT6
    generic map(
      INIT => X"DDD58880DD808880"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(7),
      I2 => MISR1_Signature(5),
      I3 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      I4 => MultOut(7),
      I5 => MultOut(5),
      O => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q
    );
  LFSR1_DFF1_inTestMode_glue_set : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => LFSR1_DFF1_inTestMode_91,
      I1 => test_mode_in_IBUF_18,
      O => LFSR1_DFF1_inTestMode_glue_set_262
    );
  MISR1_select_signal_glue_set : LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Counter_3_Q,
      I2 => MISR1_Counter_4_Q,
      I3 => MISR1_Counter_5_Q,
      I4 => MISR1_Counter_6_Q,
      I5 => MISR1_select_signal_125,
      O => MISR1_select_signal_glue_set_263
    );
  SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT1 : LUT6
    generic map(
      INIT => X"53135317FFFFFFFF"
    )
    port map (
      I0 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I1 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      I5 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      O => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT
    );
  Mmux_bcd_wire_1_9_bcd_wire_1_9_MUX_60_o11_SW0 : LUT6
    generic map(
      INIT => X"DDD58880DD808880"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(7),
      I2 => MISR1_Signature(6),
      I3 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      I4 => MultOut(7),
      I5 => MultOut(6),
      O => N52
    );
  Mmux_bcd_wire_1_9_bcd_wire_1_9_MUX_60_o11_SW2 : LUT6
    generic map(
      INIT => X"02FF02FF02FF57FF"
    )
    port map (
      I0 => test_mode_in_IBUF_18,
      I1 => MISR1_Signature(6),
      I2 => MISR1_Signature(5),
      I3 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      I4 => MultOut(6),
      I5 => MultOut(5),
      O => N56
    );
  Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o1211 : LUT5
    generic map(
      INIT => X"20420920"
    )
    port map (
      I0 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      I1 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      I3 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      O => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_lut_3_Q
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT311_SW01 : LUT5
    generic map(
      INIT => X"66B6D96D"
    )
    port map (
      I0 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      I1 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      O => N27
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT12_SW01 : LUT5
    generic map(
      INIT => X"94962994"
    )
    port map (
      I0 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      I1 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      I3 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      O => N31
    );
  Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131_1 : LUT5
    generic map(
      INIT => X"6B296662"
    )
    port map (
      I0 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      I1 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      O => Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131_295
    );
  Mmux_bcd_wire_2_5_1111 : MUXF7
    port map (
      I0 => N58,
      I1 => N59,
      S => test_mode_in_IBUF_18,
      O => Mmux_bcd_wire_2_5_111
    );
  Mmux_bcd_wire_2_5_1111_F : LUT5
    generic map(
      INIT => X"2E6FD9D9"
    )
    port map (
      I0 => MultOut(7),
      I1 => MultOut(6),
      I2 => MultOut(4),
      I3 => MultOut(3),
      I4 => MultOut(5),
      O => N58
    );
  Mmux_bcd_wire_2_5_1111_G : LUT5
    generic map(
      INIT => X"2E6FD9D9"
    )
    port map (
      I0 => MISR1_Signature(7),
      I1 => MISR1_Signature(6),
      I2 => MISR1_Signature(4),
      I3 => MISR1_Signature(3),
      I4 => MISR1_Signature(5),
      O => N59
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT41 : MUXF7
    port map (
      I0 => N60,
      I1 => MISR1_Counter_10_Q,
      S => bcd_wire_2(4),
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT4
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT41_F : LUT6
    generic map(
      INIT => X"0018181811180018"
    )
    port map (
      I0 => Mmux_bcd_wire_2_5_111,
      I1 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      I2 => Mmux_bcd_wire_2_5_122,
      I3 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      I5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      O => N60
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT311 : MUXF7
    port map (
      I0 => N62,
      I1 => N63,
      S => bcd_wire_2(4),
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT3
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT311_F : LUT6
    generic map(
      INIT => X"1001100100111001"
    )
    port map (
      I0 => Mmux_bcd_wire_2_5_122,
      I1 => Mmux_bcd_wire_2_5_111,
      I2 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      I5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => N62
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT311_G : LUT6
    generic map(
      INIT => X"022222028666A686"
    )
    port map (
      I0 => Mmux_bcd_wire_2_5_111,
      I1 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      I5 => Mmux_bcd_wire_2_5_122,
      O => N63
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT511 : MUXF7
    port map (
      I0 => N64,
      I1 => N65,
      S => bcd_wire_2(4),
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT5
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT511_F : LUT6
    generic map(
      INIT => X"0042424244420042"
    )
    port map (
      I0 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      I1 => Mmux_bcd_wire_2_5_111,
      I2 => Mmux_bcd_wire_2_5_122,
      I3 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      I5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      O => N64
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT511_G : LUT6
    generic map(
      INIT => X"1001100100111001"
    )
    port map (
      I0 => Mmux_bcd_wire_2_5_122,
      I1 => Mmux_bcd_wire_2_5_111,
      I2 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      I5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => N65
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT12 : MUXF7
    port map (
      I0 => N66,
      I1 => N67,
      S => bcd_wire_2(4),
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT12_F : LUT6
    generic map(
      INIT => X"20029399ECCE2002"
    )
    port map (
      I0 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I1 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      I4 => Mmux_bcd_wire_2_5_122,
      I5 => Mmux_bcd_wire_2_5_111,
      O => N66
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT12_G : LUT6
    generic map(
      INIT => X"555595D9EAAE6A26"
    )
    port map (
      I0 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      I1 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      I4 => Mmux_bcd_wire_2_5_122,
      I5 => Mmux_bcd_wire_2_5_111,
      O => N67
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT21 : MUXF7
    port map (
      I0 => N68,
      I1 => N69,
      S => bcd_wire_2(4),
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT2
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT21_F : LUT6
    generic map(
      INIT => X"1001100100111001"
    )
    port map (
      I0 => Mmux_bcd_wire_2_5_122,
      I1 => Mmux_bcd_wire_2_5_111,
      I2 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      I5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => N68
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT21_G : LUT6
    generic map(
      INIT => X"BFFBFFFF1551BFFB"
    )
    port map (
      I0 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      I1 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      I4 => Mmux_bcd_wire_2_5_122,
      I5 => Mmux_bcd_wire_2_5_111,
      O => N69
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT111 : MUXF7
    port map (
      I0 => N70,
      I1 => N71,
      S => bcd_wire_2(4),
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT1
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT111_F : LUT6
    generic map(
      INIT => X"0018181811180018"
    )
    port map (
      I0 => Mmux_bcd_wire_2_5_111,
      I1 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      I2 => Mmux_bcd_wire_2_5_122,
      I3 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      I5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      O => N70
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT111_G : LUT6
    generic map(
      INIT => X"4774063077776666"
    )
    port map (
      I0 => Mmux_bcd_wire_2_5_122,
      I1 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      I2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      I4 => Mmux_bcd_wire_2_5_111,
      I5 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      O => N71
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT61 : MUXF7
    port map (
      I0 => N72,
      I1 => N73,
      S => bcd_wire_2(4),
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT6
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT61_F : LUT6
    generic map(
      INIT => X"1001100100111001"
    )
    port map (
      I0 => Mmux_bcd_wire_2_5_122,
      I1 => Mmux_bcd_wire_2_5_111,
      I2 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      I5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => N72
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT61_G : LUT6
    generic map(
      INIT => X"4004400400444004"
    )
    port map (
      I0 => Mmux_bcd_wire_2_5_122,
      I1 => Mmux_bcd_wire_2_5_111,
      I2 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      I3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      I4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      I5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => N73
    );
  Clock_BUFGP : BUFGP
    port map (
      I => Clock,
      O => Clock_BUFGP_8
    );
  MISR1_Mcount_Counter_lut_0_INV_0 : INV
    port map (
      I => MISR1_Counter_0_Q,
      O => MISR1_Mcount_Counter_lut(0)
    );
  SevenSegDisp_Mcount_counter_lut_0_INV_0 : INV
    port map (
      I => SevenSegDisp_counter(0),
      O => SevenSegDisp_Mcount_counter_lut(0)
    );
  MISR1_Reset_inv11_INV_0 : INV
    port map (
      I => Reset_IBUF_9,
      O => MISR1_Reset_inv1
    );
  Mult1 : Multiplier_4x4
    port map (
      clk => Clock_BUFGP_8,
      a(3) => MultIn1(3),
      a(2) => MultIn1(2),
      a(1) => MultIn1(1),
      a(0) => MultIn1(0),
      b(3) => MultIn2(3),
      b(2) => MultIn2(2),
      b(1) => MultIn2(1),
      b(0) => MultIn2(0),
      p(7) => MultOut(7),
      p(6) => MultOut(6),
      p(5) => MultOut(5),
      p(4) => MultOut(4),
      p(3) => MultOut(3),
      p(2) => MultOut(2),
      p(1) => MultOut(1),
      p(0) => MultOut(0)
    );

end Structure;

-- synthesis translate_on
