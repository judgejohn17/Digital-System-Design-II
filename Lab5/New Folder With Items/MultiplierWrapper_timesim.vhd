--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: MultiplierWrapper_timesim.vhd
-- /___/   /\     Timestamp: Thu May 12 11:27:39 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf MultiplierWrapper.pcf -rpw 100 -tpw 0 -ar Structure -tm MultiplierWrapper -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim MultiplierWrapper.ncd MultiplierWrapper_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: MultiplierWrapper.ncd
-- Output file	: D:\DSDII\Lab5\netgen\par\MultiplierWrapper_timesim.vhd
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  signal N52 : STD_LOGIC; 
  signal Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q : STD_LOGIC; 
  signal Mmux_bcd_wire_2_5_122 : STD_LOGIC; 
  signal Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q : STD_LOGIC; 
  signal Clock_BUFGP : STD_LOGIC; 
  signal SevenSegDec_hund_disp_n_6_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q : STD_LOGIC; 
  signal Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131_1052 : STD_LOGIC; 
  signal Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_lut_3_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q : STD_LOGIC; 
  signal Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q : STD_LOGIC; 
  signal test_mode_in_IBUF_0 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N31_0 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal GND_7_o_bcd_wire_1_5_LessThan_27_o : STD_LOGIC; 
  signal MISR1_Reset_OR_DriverANDClockEnable : STD_LOGIC; 
  signal Reset_IBUF_0 : STD_LOGIC; 
  signal MISR1_Reset_inv1 : STD_LOGIC; 
  signal MISR1_DFF1_Q_1084 : STD_LOGIC; 
  signal MISR1_DFF2_Q_1086 : STD_LOGIC; 
  signal MISR1_DFF3_Q_1088 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q : STD_LOGIC; 
  signal MISR1_DFF4_Q_1091 : STD_LOGIC; 
  signal MISR1_DFF5_Q_1092 : STD_LOGIC; 
  signal MISR1_DFF6_Q_1093 : STD_LOGIC; 
  signal MISR1_DFF7_Q_1094 : STD_LOGIC; 
  signal MISR1_DFF8_Q_1095 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal MISR1_n0054_inv : STD_LOGIC; 
  signal LFSR1_DFF1_n0013 : STD_LOGIC; 
  signal LFSR1_DFF2_Q_1100 : STD_LOGIC; 
  signal LFSR1_DFF1_inTestMode_1101 : STD_LOGIC; 
  signal LFSR1_DFF1_Q_1102 : STD_LOGIC; 
  signal B_1_IBUF_0 : STD_LOGIC; 
  signal B_2_IBUF_0 : STD_LOGIC; 
  signal MultIn2_1_0 : STD_LOGIC; 
  signal SevenSegDisp_hund_anode_0 : STD_LOGIC; 
  signal SevenSegDisp_tens_anode_1110 : STD_LOGIC; 
  signal A_1_IBUF_0 : STD_LOGIC; 
  signal LFSR1_DFF3_Q_1113 : STD_LOGIC; 
  signal A_2_IBUF_0 : STD_LOGIC; 
  signal MultIn1_1_0 : STD_LOGIC; 
  signal LFSR1_DFF5_Q_1117 : STD_LOGIC; 
  signal B_0_IBUF_0 : STD_LOGIC; 
  signal LFSR1_DFF8_Q_0 : STD_LOGIC; 
  signal B_3_IBUF_0 : STD_LOGIC; 
  signal MultIn2_0_0 : STD_LOGIC; 
  signal LFSR1_DFF4_Q_1122 : STD_LOGIC; 
  signal SevenSegDisp_ones_anode_0 : STD_LOGIC; 
  signal SevenSegDisp_CAn_1128 : STD_LOGIC; 
  signal A_0_IBUF_0 : STD_LOGIC; 
  signal A_3_IBUF_0 : STD_LOGIC; 
  signal MultIn1_0_0 : STD_LOGIC; 
  signal MISR1_select_signal_1133 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000031_0 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000037 : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000002c_0 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000028_0 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000024_0 : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000003b_0 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000030_0 : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000002e_0 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000036 : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000002a_0 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000026_0 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000022_0 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000014 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_3_Q_1152 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_7_Q_1157 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_11_Q_1162 : STD_LOGIC; 
  signal SevenSegDisp_Mcount_counter_cy_15_Q_1167 : STD_LOGIC; 
  signal SevenSegDisp_CBn_1170 : STD_LOGIC; 
  signal SevenSegDisp_CCn_1171 : STD_LOGIC; 
  signal SevenSegDisp_CDn_1172 : STD_LOGIC; 
  signal SevenSegDisp_CEn_1173 : STD_LOGIC; 
  signal SevenSegDisp_CFn_1174 : STD_LOGIC; 
  signal SevenSegDisp_CGn_1175 : STD_LOGIC; 
  signal output_0_OBUF_1176 : STD_LOGIC; 
  signal Clock_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal Mmux_bcd_wire_2_5_111_0 : STD_LOGIC; 
  signal Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q : STD_LOGIC; 
  signal SevenSegDec_hund_disp_n_0_Q : STD_LOGIC; 
  signal SevenSegDec_hund_disp_n_1_Q : STD_LOGIC; 
  signal SevenSegDec_hund_disp_n_4_Q : STD_LOGIC; 
  signal LFSR1_DFF7_Q_1196 : STD_LOGIC; 
  signal LFSR1_DFF6_Q_1197 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal MISR1_Reset_OR_DriverANDClockEnable1_1199 : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000004a : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000004b : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000049 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000032 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000045 : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000002d : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000003e : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000033 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000031 : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000002c : STD_LOGIC; 
  signal ProtoComp25_CYINITGND_0 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000043 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000029 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000041 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000025 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000028 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000024 : STD_LOGIC; 
  signal MISR1_Counter_1_rt_62 : STD_LOGIC; 
  signal MISR1_Counter_2_rt_58 : STD_LOGIC; 
  signal ProtoComp27_CYINITGND_0 : STD_LOGIC; 
  signal MISR1_Counter_3_rt_46 : STD_LOGIC; 
  signal MISR1_Counter_4_rt_88 : STD_LOGIC; 
  signal MISR1_Counter_5_rt_84 : STD_LOGIC; 
  signal MISR1_Counter_6_rt_81 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000047 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000048 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000046 : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000002f : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000044 : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000002b : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000003b : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000030 : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000002e : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000002a : STD_LOGIC; 
  signal ProtoComp29_CYINITGND_0 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000042 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000027 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000040 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000023 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000026 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000022 : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000001b : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000019 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000017 : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000001c : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000001d : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000001e : STD_LOGIC; 
  signal Mult1_blk00000001_sig0000001f : STD_LOGIC; 
  signal ProtoComp30_CYINITGND_0 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000015 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000026_rt_169 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000022_rt_166 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000020 : STD_LOGIC; 
  signal Mult1_blk00000001_sig00000021 : STD_LOGIC; 
  signal SevenSegDisp_counter_1_rt_190 : STD_LOGIC; 
  signal SevenSegDisp_counter_2_rt_186 : STD_LOGIC; 
  signal ProtoComp32_CYINITGND_0 : STD_LOGIC; 
  signal SevenSegDisp_counter_3_rt_175 : STD_LOGIC; 
  signal SevenSegDisp_counter_4_rt_222 : STD_LOGIC; 
  signal SevenSegDisp_counter_5_rt_218 : STD_LOGIC; 
  signal SevenSegDisp_counter_6_rt_214 : STD_LOGIC; 
  signal SevenSegDisp_counter_7_rt_203 : STD_LOGIC; 
  signal SevenSegDisp_counter_8_rt_250 : STD_LOGIC; 
  signal SevenSegDisp_counter_9_rt_246 : STD_LOGIC; 
  signal SevenSegDisp_counter_10_rt_242 : STD_LOGIC; 
  signal SevenSegDisp_counter_11_rt_231 : STD_LOGIC; 
  signal SevenSegDisp_counter_12_rt_278 : STD_LOGIC; 
  signal SevenSegDisp_counter_13_rt_274 : STD_LOGIC; 
  signal SevenSegDisp_counter_14_rt_270 : STD_LOGIC; 
  signal SevenSegDisp_counter_15_rt_259 : STD_LOGIC; 
  signal SevenSegDisp_counter_16_rt_299 : STD_LOGIC; 
  signal SevenSegDisp_counter_17_rt_295 : STD_LOGIC; 
  signal SevenSegDisp_counter_18_rt_292 : STD_LOGIC; 
  signal A_0_IBUF_315 : STD_LOGIC; 
  signal A_1_IBUF_320 : STD_LOGIC; 
  signal A_2_IBUF_325 : STD_LOGIC; 
  signal A_3_IBUF_330 : STD_LOGIC; 
  signal B_0_IBUF_333 : STD_LOGIC; 
  signal B_1_IBUF_336 : STD_LOGIC; 
  signal B_2_IBUF_341 : STD_LOGIC; 
  signal B_3_IBUF_344 : STD_LOGIC; 
  signal test_mode_in_IBUF_367 : STD_LOGIC; 
  signal Clock_BUFGP_IBUFG_370 : STD_LOGIC; 
  signal Reset_IBUF_373 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT4 : STD_LOGIC; 
  signal LFSR1_DFF1_Q_pack_6 : STD_LOGIC; 
  signal LFSR1_DFF1_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF4_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF8_Q_402 : STD_LOGIC; 
  signal LFSR1_DFF8_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF3_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF7_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF7_Q_pack_10 : STD_LOGIC; 
  signal LFSR1_DFF5_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF6_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal LFSR1_DFF6_Q_pack_8 : STD_LOGIC; 
  signal LFSR1_DFF1_inTestMode_glue_set_469 : STD_LOGIC; 
  signal LFSR1_DFF1_inTestMode_pack_3 : STD_LOGIC; 
  signal LFSR1_DFF2_Q_Reset_MUX_98_o : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal Mmux_bcd_wire_2_5_111 : STD_LOGIC; 
  signal Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_pack_5 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT6 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT4 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT1_615 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT : STD_LOGIC; 
  signal MISR1_W16 : STD_LOGIC; 
  signal MISR1_select_signal_glue_set_682 : STD_LOGIC; 
  signal MISR1_W22 : STD_LOGIC; 
  signal MISR1_W13 : STD_LOGIC; 
  signal MISR1_DFF7_Q_pack_6 : STD_LOGIC; 
  signal MISR1_W19 : STD_LOGIC; 
  signal MISR1_W10 : STD_LOGIC; 
  signal MISR1_W7 : STD_LOGIC; 
  signal MISR1_W4 : STD_LOGIC; 
  signal MISR1_W1 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT6 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT3 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT1 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT2 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT1 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT4 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT5 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT3 : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_8_o : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT5 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_4_o : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_9_o : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_6_o : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT2 : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_7_o : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT6 : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_3_o : STD_LOGIC; 
  signal SevenSegDisp_Mram_n00472 : STD_LOGIC; 
  signal SevenSegDisp_ones_anode_978 : STD_LOGIC; 
  signal SevenSegDisp_counter_18_PWR_18_o_Mux_5_o : STD_LOGIC; 
  signal SevenSegDisp_hund_anode_1005 : STD_LOGIC; 
  signal SevenSegDisp_Mram_n00471 : STD_LOGIC; 
  signal SevenSegDisp_Mram_n0047 : STD_LOGIC; 
  signal NlwBufferSignal_Mult1_blk00000001_blk00000038_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mult1_blk00000001_blk00000039_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mult1_blk00000001_blk00000034_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mult1_blk00000001_blk00000035_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mult1_blk00000001_blk00000036_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mult1_blk00000001_blk00000037_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mult1_blk00000001_blk00000032_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Mult1_blk00000001_blk00000033_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_counter_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_CAn_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CBn_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CCn_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CDn_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hund_anode_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CEn_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CFn_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CGn_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_output_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_tens_anode_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ones_anode_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Clock_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_tens_disp_n_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LFSR1_DFF1_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LFSR1_DFF4_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LFSR1_DFF8_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LFSR1_DFF3_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LFSR1_DFF7_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LFSR1_DFF5_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LFSR1_DFF6_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LFSR1_DFF2_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LFSR1_DFF1_inTestMode_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_ones_disp_n_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_hund_disp_n_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_hund_disp_n_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_hund_disp_n_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_Signature_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_DFF5_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_select_signal_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_DFF6_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_DFF8_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_DFF7_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_DFF4_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_DFF3_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_DFF1_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_MISR1_DFF2_Q_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_tens_disp_n_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_hund_disp_n_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_ones_disp_n_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_ones_disp_n_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_ones_disp_n_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_tens_disp_n_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_ones_disp_n_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_ones_disp_n_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_ones_disp_n_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_CFn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_tens_disp_n_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_tens_disp_n_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_CBn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_CGn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_CDn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_tens_disp_n_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_CEn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDec_tens_disp_n_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_CAn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_ones_anode_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_CCn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_tens_anode_CLK : STD_LOGIC; 
  signal NlwBufferSignal_SevenSegDisp_hund_anode_CLK : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000010_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000010_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000010_CO_2_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000004_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000004_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000004_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000004_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000004_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000004_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000004_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000004_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000004_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000004_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000004_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_sig00000012_2_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_3_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Mcount_Counter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Mcount_Counter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Mcount_Counter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_5_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_unused_anode_OBUF_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Mcount_Counter_xor_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Mcount_Counter_xor_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Mcount_Counter_xor_6_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Mcount_Counter_xor_6_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Mcount_Counter_xor_6_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Mcount_Counter_xor_6_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Mcount_Counter_xor_6_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Mcount_Counter_xor_6_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk0000000f_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk0000000f_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk0000000f_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000003_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000003_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000003_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000003_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000003_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000003_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000003_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000003_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000003_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000003_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000003_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_sig00000012_B6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000027_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000027_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000027_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000023_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000023_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000023_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000023_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000023_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000023_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000023_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000023_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000023_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000023_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_blk00000023_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mult1_blk00000001_sig00000012_7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_22_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_23_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_24_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_unused_anode_OBUF_1_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_18_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_19_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_20_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_21_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_14_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_15_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_16_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_17_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_10_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_11_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_12_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_13_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_xor_18_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_xor_18_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_xor_18_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_xor_18_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_xor_18_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_xor_18_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_xor_18_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_SevenSegDisp_Mcount_counter_xor_18_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_8_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_9_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_MISR1_Counter_10_31_C6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal MISR1_Signature : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MultOut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MISR1_Counter : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal bcd_wire_2 : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal MultIn2 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SevenSegDisp_counter : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal MultIn1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SevenSegDec_ones_disp_n : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal SevenSegDec_tens_disp_n : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal MISR1_Mcount_Counter_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal MISR1_Mcount_Counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal MISR1_Result : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal SevenSegDisp_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal SevenSegDisp_Result : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal NlwBufferSignal_Mult1_blk00000001_blk00000027_DI : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  MultOut_1_MultOut_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig0000002c,
      O => Mult1_blk00000001_sig0000002c_0
    );
  MultOut_1_MultOut_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig00000031,
      O => Mult1_blk00000001_sig00000031_0
    );
  Mult1_blk00000001_blk0000003f : X_LUT6
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"5FA0A0A05FA0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => MultIn1(2),
      ADR2 => MultIn2_1_0,
      ADR4 => MultIn1(3),
      ADR3 => MultIn2_0_0,
      ADR5 => '1',
      O => Mult1_blk00000001_sig00000029
    );
  Mult1_blk00000001_blk0000001c : X_LUT5
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"A0A0A0A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => MultIn1(2),
      ADR2 => MultIn2_1_0,
      ADR3 => '1',
      ADR4 => '1',
      O => Mult1_blk00000001_sig00000043
    );
  ProtoComp25_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X10Y14"
    )
    port map (
      O => ProtoComp25_CYINITGND_0
    );
  Mult1_blk00000001_blk00000010 : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y14"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp25_CYINITGND_0,
      CO(3) => Mult1_blk00000001_sig00000037,
      CO(2) => NLW_Mult1_blk00000001_blk00000010_CO_2_UNCONNECTED,
      CO(1) => NLW_Mult1_blk00000001_blk00000010_CO_1_UNCONNECTED,
      CO(0) => NLW_Mult1_blk00000001_blk00000010_CO_0_UNCONNECTED,
      DI(3) => Mult1_blk00000001_sig00000043,
      DI(2) => Mult1_blk00000001_sig00000045,
      DI(1) => Mult1_blk00000001_sig00000049,
      DI(0) => Mult1_blk00000001_sig0000004a,
      O(3) => Mult1_blk00000001_sig0000002c,
      O(2) => Mult1_blk00000001_sig00000031,
      O(1) => Mult1_blk00000001_sig00000033,
      O(0) => Mult1_blk00000001_sig0000003e,
      S(3) => Mult1_blk00000001_sig00000029,
      S(2) => Mult1_blk00000001_sig0000002d,
      S(1) => Mult1_blk00000001_sig00000032,
      S(0) => Mult1_blk00000001_sig0000004b
    );
  Mult1_blk00000001_blk00000040 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"6AC06AC06AC06AC0"
    )
    port map (
      ADR4 => '1',
      ADR1 => MultIn1_1_0,
      ADR2 => MultIn2_1_0,
      ADR0 => MultIn1(2),
      ADR3 => MultIn2_0_0,
      ADR5 => '1',
      O => Mult1_blk00000001_sig0000002d
    );
  Mult1_blk00000001_blk0000001e : X_LUT5
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR1 => MultIn1_1_0,
      ADR2 => MultIn2_1_0,
      ADR3 => '1',
      ADR4 => '1',
      O => Mult1_blk00000001_sig00000045
    );
  Mult1_blk00000001_blk00000038 : X_FF
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Mult1_blk00000001_blk00000038_CLK,
      I => Mult1_blk00000001_sig00000033,
      O => MultOut(1),
      RST => GND,
      SET => GND
    );
  Mult1_blk00000001_blk00000041 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"6A6AC0C06A6AC0C0"
    )
    port map (
      ADR3 => '1',
      ADR2 => MultIn1_0_0,
      ADR1 => MultIn2_1_0,
      ADR0 => MultIn1_1_0,
      ADR4 => MultIn2_0_0,
      ADR5 => '1',
      O => Mult1_blk00000001_sig00000032
    );
  Mult1_blk00000001_blk00000021 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => MultIn1_0_0,
      ADR1 => MultIn2_1_0,
      ADR3 => '1',
      ADR4 => '1',
      O => Mult1_blk00000001_sig00000049
    );
  Mult1_blk00000001_blk00000039 : X_FF
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Mult1_blk00000001_blk00000039_CLK,
      I => Mult1_blk00000001_sig0000003e,
      O => MultOut(0),
      RST => GND,
      SET => GND
    );
  Mult1_blk00000001_blk00000043 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"CC00CC00CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => MultIn1_0_0,
      ADR1 => MultIn2_0_0,
      ADR5 => '1',
      O => Mult1_blk00000001_sig0000004b
    );
  Mult1_blk00000001_blk00000022 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y14",
      INIT => X"CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => MultIn1_0_0,
      ADR1 => MultIn2_0_0,
      O => Mult1_blk00000001_sig0000004a
    );
  Mult1_blk00000001_sig00000024_Mult1_blk00000001_sig00000024_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig00000024,
      O => Mult1_blk00000001_sig00000024_0
    );
  Mult1_blk00000001_sig00000024_Mult1_blk00000001_sig00000024_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig00000028,
      O => Mult1_blk00000001_sig00000028_0
    );
  Mult1_blk00000001_blk00000004 : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y15"
    )
    port map (
      CI => Mult1_blk00000001_sig00000037,
      CYINIT => '0',
      CO(3) => NLW_Mult1_blk00000001_blk00000004_CO_3_UNCONNECTED,
      CO(2) => NLW_Mult1_blk00000001_blk00000004_CO_2_UNCONNECTED,
      CO(1) => NLW_Mult1_blk00000001_blk00000004_CO_1_UNCONNECTED,
      CO(0) => NLW_Mult1_blk00000001_blk00000004_CO_0_UNCONNECTED,
      DI(3) => NLW_Mult1_blk00000001_blk00000004_DI_3_UNCONNECTED,
      DI(2) => NLW_Mult1_blk00000001_blk00000004_DI_2_UNCONNECTED,
      DI(1) => NLW_Mult1_blk00000001_blk00000004_DI_1_UNCONNECTED,
      DI(0) => Mult1_blk00000001_sig00000041,
      O(3) => NLW_Mult1_blk00000001_blk00000004_O_3_UNCONNECTED,
      O(2) => NLW_Mult1_blk00000001_blk00000004_O_2_UNCONNECTED,
      O(1) => Mult1_blk00000001_sig00000024,
      O(0) => Mult1_blk00000001_sig00000028,
      S(3) => NLW_Mult1_blk00000001_blk00000004_S_3_UNCONNECTED,
      S(2) => NLW_Mult1_blk00000001_blk00000004_S_2_UNCONNECTED,
      S(1) => '0',
      S(0) => Mult1_blk00000001_sig00000025
    );
  Mult1_blk00000001_sig00000012_2_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X10Y15",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_Mult1_blk00000001_sig00000012_2_B6LUT_O_UNCONNECTED
    );
  Mult1_blk00000001_blk0000003e : X_LUT6
    generic map(
      LOC => "SLICE_X10Y15",
      INIT => X"AA00AA00AA00AA00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => MultIn1(3),
      ADR3 => MultIn2_1_0,
      ADR5 => '1',
      O => Mult1_blk00000001_sig00000025
    );
  Mult1_blk00000001_blk0000001a : X_LUT5
    generic map(
      LOC => "SLICE_X10Y15",
      INIT => X"AA00AA00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => MultIn1(3),
      ADR3 => MultIn2_1_0,
      O => Mult1_blk00000001_sig00000041
    );
  MISR1_Counter_3 : X_SFF
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => '0'
    )
    port map (
      CE => MISR1_n0054_inv,
      CLK => NlwBufferSignal_MISR1_Counter_3_CLK,
      I => MISR1_Result(3),
      O => MISR1_Counter(3),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MISR1_Counter_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MISR1_Counter(3),
      ADR3 => '1',
      ADR5 => '1',
      O => MISR1_Counter_3_rt_46
    );
  MISR1_Counter_10_3_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_3_D5LUT_O_UNCONNECTED
    );
  ProtoComp27_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X14Y35"
    )
    port map (
      O => ProtoComp27_CYINITGND_0
    );
  MISR1_Counter_2 : X_SFF
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => '0'
    )
    port map (
      CE => MISR1_n0054_inv,
      CLK => NlwBufferSignal_MISR1_Counter_2_CLK,
      I => MISR1_Result(2),
      O => MISR1_Counter(2),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MISR1_Mcount_Counter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y35"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp27_CYINITGND_0,
      CO(3) => MISR1_Mcount_Counter_cy(3),
      CO(2) => NLW_MISR1_Mcount_Counter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_MISR1_Mcount_Counter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_MISR1_Mcount_Counter_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => MISR1_Result(3),
      O(2) => MISR1_Result(2),
      O(1) => MISR1_Result(1),
      O(0) => MISR1_Result(0),
      S(3) => MISR1_Counter_3_rt_46,
      S(2) => MISR1_Counter_2_rt_58,
      S(1) => MISR1_Counter_1_rt_62,
      S(0) => MISR1_Mcount_Counter_lut(0)
    );
  MISR1_Counter_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MISR1_Counter(2),
      ADR3 => '1',
      ADR5 => '1',
      O => MISR1_Counter_2_rt_58
    );
  MISR1_Counter_10_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_4_C5LUT_O_UNCONNECTED
    );
  MISR1_Counter_1 : X_SFF
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => '0'
    )
    port map (
      CE => MISR1_n0054_inv,
      CLK => NlwBufferSignal_MISR1_Counter_1_CLK,
      I => MISR1_Result(1),
      O => MISR1_Counter(1),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MISR1_Counter_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MISR1_Counter(1),
      ADR3 => '1',
      ADR5 => '1',
      O => MISR1_Counter_1_rt_62
    );
  MISR1_Counter_10_5_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_5_B5LUT_O_UNCONNECTED
    );
  MISR1_Counter_0 : X_SFF
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => '0'
    )
    port map (
      CE => MISR1_n0054_inv,
      CLK => NlwBufferSignal_MISR1_Counter_0_CLK,
      I => MISR1_Result(0),
      O => MISR1_Counter(0),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MISR1_Mcount_Counter_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => MISR1_Counter(0),
      ADR4 => '1',
      ADR5 => '1',
      O => MISR1_Mcount_Counter_lut(0)
    );
  unused_anode_OBUF_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y35",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_unused_anode_OBUF_A5LUT_O_UNCONNECTED
    );
  MISR1_Counter_6 : X_SFF
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => '0'
    )
    port map (
      CE => MISR1_n0054_inv,
      CLK => NlwBufferSignal_MISR1_Counter_6_CLK,
      I => MISR1_Result(6),
      O => MISR1_Counter(6),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MISR1_Mcount_Counter_xor_6_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y36"
    )
    port map (
      CI => MISR1_Mcount_Counter_cy(3),
      CYINIT => '0',
      CO(3) => NLW_MISR1_Mcount_Counter_xor_6_CO_3_UNCONNECTED,
      CO(2) => NLW_MISR1_Mcount_Counter_xor_6_CO_2_UNCONNECTED,
      CO(1) => NLW_MISR1_Mcount_Counter_xor_6_CO_1_UNCONNECTED,
      CO(0) => NLW_MISR1_Mcount_Counter_xor_6_CO_0_UNCONNECTED,
      DI(3) => NLW_MISR1_Mcount_Counter_xor_6_DI_3_UNCONNECTED,
      DI(2) => NLW_MISR1_Mcount_Counter_xor_6_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_MISR1_Mcount_Counter_xor_6_O_3_UNCONNECTED,
      O(2) => MISR1_Result(6),
      O(1) => MISR1_Result(5),
      O(0) => MISR1_Result(4),
      S(3) => NLW_MISR1_Mcount_Counter_xor_6_S_3_UNCONNECTED,
      S(2) => MISR1_Counter_6_rt_81,
      S(1) => MISR1_Counter_5_rt_84,
      S(0) => MISR1_Counter_4_rt_88
    );
  MISR1_Counter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MISR1_Counter(6),
      ADR3 => '1',
      ADR5 => '1',
      O => MISR1_Counter_6_rt_81
    );
  MISR1_Counter_5 : X_SFF
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => '0'
    )
    port map (
      CE => MISR1_n0054_inv,
      CLK => NlwBufferSignal_MISR1_Counter_5_CLK,
      I => MISR1_Result(5),
      O => MISR1_Counter(5),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MISR1_Counter_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MISR1_Counter(5),
      ADR3 => '1',
      ADR5 => '1',
      O => MISR1_Counter_5_rt_84
    );
  MISR1_Counter_10_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_B5LUT_O_UNCONNECTED
    );
  MISR1_Counter_4 : X_SFF
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => '0'
    )
    port map (
      CE => MISR1_n0054_inv,
      CLK => NlwBufferSignal_MISR1_Counter_4_CLK,
      I => MISR1_Result(4),
      O => MISR1_Counter(4),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MISR1_Counter_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MISR1_Counter(4),
      ADR3 => '1',
      ADR5 => '1',
      O => MISR1_Counter_4_rt_88
    );
  MISR1_Counter_10_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_2_A5LUT_O_UNCONNECTED
    );
  Mult1_blk00000001_sig00000036_Mult1_blk00000001_sig00000036_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig0000002a,
      O => Mult1_blk00000001_sig0000002a_0
    );
  Mult1_blk00000001_sig00000036_Mult1_blk00000001_sig00000036_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig0000002e,
      O => Mult1_blk00000001_sig0000002e_0
    );
  Mult1_blk00000001_sig00000036_Mult1_blk00000001_sig00000036_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig00000030,
      O => Mult1_blk00000001_sig00000030_0
    );
  Mult1_blk00000001_sig00000036_Mult1_blk00000001_sig00000036_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig0000003b,
      O => Mult1_blk00000001_sig0000003b_0
    );
  Mult1_blk00000001_blk0000003b : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"7788888877888888"
    )
    port map (
      ADR2 => '1',
      ADR3 => MultIn1(2),
      ADR4 => MultIn2(3),
      ADR0 => MultIn1(3),
      ADR1 => MultIn2(2),
      ADR5 => '1',
      O => Mult1_blk00000001_sig00000027
    );
  Mult1_blk00000001_blk0000001b : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => MultIn1(2),
      ADR4 => MultIn2(3),
      ADR1 => '1',
      ADR2 => '1',
      O => Mult1_blk00000001_sig00000042
    );
  ProtoComp29_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X12Y14"
    )
    port map (
      O => ProtoComp29_CYINITGND_0
    );
  Mult1_blk00000001_blk0000000f : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y14"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp29_CYINITGND_0,
      CO(3) => Mult1_blk00000001_sig00000036,
      CO(2) => NLW_Mult1_blk00000001_blk0000000f_CO_2_UNCONNECTED,
      CO(1) => NLW_Mult1_blk00000001_blk0000000f_CO_1_UNCONNECTED,
      CO(0) => NLW_Mult1_blk00000001_blk0000000f_CO_0_UNCONNECTED,
      DI(3) => Mult1_blk00000001_sig00000042,
      DI(2) => Mult1_blk00000001_sig00000044,
      DI(1) => Mult1_blk00000001_sig00000046,
      DI(0) => Mult1_blk00000001_sig00000047,
      O(3) => Mult1_blk00000001_sig0000002a,
      O(2) => Mult1_blk00000001_sig0000002e,
      O(1) => Mult1_blk00000001_sig00000030,
      O(0) => Mult1_blk00000001_sig0000003b,
      S(3) => Mult1_blk00000001_sig00000027,
      S(2) => Mult1_blk00000001_sig0000002b,
      S(1) => Mult1_blk00000001_sig0000002f,
      S(0) => Mult1_blk00000001_sig00000048
    );
  Mult1_blk00000001_blk0000003c : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"3CCCF0003CCCF000"
    )
    port map (
      ADR0 => '1',
      ADR4 => MultIn1_1_0,
      ADR1 => MultIn2(3),
      ADR3 => MultIn1(2),
      ADR2 => MultIn2(2),
      ADR5 => '1',
      O => Mult1_blk00000001_sig0000002b
    );
  Mult1_blk00000001_blk0000001d : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR4 => MultIn1_1_0,
      ADR1 => MultIn2(3),
      ADR3 => '1',
      ADR2 => '1',
      O => Mult1_blk00000001_sig00000044
    );
  Mult1_blk00000001_blk0000003d : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"5AAAF0005AAAF000"
    )
    port map (
      ADR1 => '1',
      ADR3 => MultIn1_0_0,
      ADR2 => MultIn2(3),
      ADR0 => MultIn1_1_0,
      ADR4 => MultIn2(2),
      ADR5 => '1',
      O => Mult1_blk00000001_sig0000002f
    );
  Mult1_blk00000001_blk0000001f : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR3 => MultIn1_0_0,
      ADR2 => MultIn2(3),
      ADR1 => '1',
      ADR4 => '1',
      O => Mult1_blk00000001_sig00000046
    );
  Mult1_blk00000001_blk00000042 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MultIn1_0_0,
      ADR3 => MultIn2(2),
      ADR5 => '1',
      O => Mult1_blk00000001_sig00000048
    );
  Mult1_blk00000001_blk00000020 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MultIn1_0_0,
      ADR3 => MultIn2(2),
      O => Mult1_blk00000001_sig00000047
    );
  Mult1_blk00000001_sig00000022_Mult1_blk00000001_sig00000022_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig00000022,
      O => Mult1_blk00000001_sig00000022_0
    );
  Mult1_blk00000001_sig00000022_Mult1_blk00000001_sig00000022_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig00000026,
      O => Mult1_blk00000001_sig00000026_0
    );
  Mult1_blk00000001_blk00000003 : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y15"
    )
    port map (
      CI => Mult1_blk00000001_sig00000036,
      CYINIT => '0',
      CO(3) => NLW_Mult1_blk00000001_blk00000003_CO_3_UNCONNECTED,
      CO(2) => NLW_Mult1_blk00000001_blk00000003_CO_2_UNCONNECTED,
      CO(1) => NLW_Mult1_blk00000001_blk00000003_CO_1_UNCONNECTED,
      CO(0) => NLW_Mult1_blk00000001_blk00000003_CO_0_UNCONNECTED,
      DI(3) => NLW_Mult1_blk00000001_blk00000003_DI_3_UNCONNECTED,
      DI(2) => NLW_Mult1_blk00000001_blk00000003_DI_2_UNCONNECTED,
      DI(1) => NLW_Mult1_blk00000001_blk00000003_DI_1_UNCONNECTED,
      DI(0) => Mult1_blk00000001_sig00000040,
      O(3) => NLW_Mult1_blk00000001_blk00000003_O_3_UNCONNECTED,
      O(2) => NLW_Mult1_blk00000001_blk00000003_O_2_UNCONNECTED,
      O(1) => Mult1_blk00000001_sig00000022,
      O(0) => Mult1_blk00000001_sig00000026,
      S(3) => NLW_Mult1_blk00000001_blk00000003_S_3_UNCONNECTED,
      S(2) => NLW_Mult1_blk00000001_blk00000003_S_2_UNCONNECTED,
      S(1) => '0',
      S(0) => Mult1_blk00000001_sig00000023
    );
  Mult1_blk00000001_sig00000012_B6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_Mult1_blk00000001_sig00000012_B6LUT_O_UNCONNECTED
    );
  Mult1_blk00000001_blk0000003a : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MultIn1(3),
      ADR3 => MultIn2(3),
      ADR5 => '1',
      O => Mult1_blk00000001_sig00000023
    );
  Mult1_blk00000001_blk00000019 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => MultIn1(3),
      ADR3 => MultIn2(3),
      O => Mult1_blk00000001_sig00000040
    );
  Mult1_blk00000001_blk00000034 : X_FF
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Mult1_blk00000001_blk00000034_CLK,
      I => Mult1_blk00000001_sig0000001f,
      O => MultOut(5),
      RST => GND,
      SET => GND
    );
  Mult1_blk00000001_blk00000028 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"00FF00FFFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => Mult1_blk00000001_sig00000024_0,
      ADR3 => Mult1_blk00000001_sig0000002a_0,
      O => Mult1_blk00000001_sig00000015
    );
  ProtoComp30_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      O => ProtoComp30_CYINITGND_0
    );
  Mult1_blk00000001_blk00000035 : X_FF
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Mult1_blk00000001_blk00000035_CLK,
      I => Mult1_blk00000001_sig0000001e,
      O => MultOut(4),
      RST => GND,
      SET => GND
    );
  Mult1_blk00000001_blk00000027 : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp30_CYINITGND_0,
      CO(3) => Mult1_blk00000001_sig00000014,
      CO(2) => NLW_Mult1_blk00000001_blk00000027_CO_2_UNCONNECTED,
      CO(1) => NLW_Mult1_blk00000001_blk00000027_CO_1_UNCONNECTED,
      CO(0) => NLW_Mult1_blk00000001_blk00000027_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Mult1_blk00000001_blk00000027_DI(3),
      DI(2) => NlwBufferSignal_Mult1_blk00000001_blk00000027_DI(2),
      DI(1) => NlwBufferSignal_Mult1_blk00000001_blk00000027_DI(1),
      DI(0) => NlwBufferSignal_Mult1_blk00000001_blk00000027_DI(0),
      O(3) => Mult1_blk00000001_sig0000001f,
      O(2) => Mult1_blk00000001_sig0000001e,
      O(1) => Mult1_blk00000001_sig0000001d,
      O(0) => Mult1_blk00000001_sig0000001c,
      S(3) => Mult1_blk00000001_sig00000015,
      S(2) => Mult1_blk00000001_sig00000017,
      S(1) => Mult1_blk00000001_sig00000019,
      S(0) => Mult1_blk00000001_sig0000001b
    );
  Mult1_blk00000001_blk0000002b : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => Mult1_blk00000001_sig00000028_0,
      ADR2 => Mult1_blk00000001_sig0000002e_0,
      O => Mult1_blk00000001_sig00000017
    );
  Mult1_blk00000001_blk00000036 : X_FF
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Mult1_blk00000001_blk00000036_CLK,
      I => Mult1_blk00000001_sig0000001d,
      O => MultOut(3),
      RST => GND,
      SET => GND
    );
  Mult1_blk00000001_blk0000002e : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"0F0FF0F00F0FF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => Mult1_blk00000001_sig0000002c_0,
      ADR2 => Mult1_blk00000001_sig00000030_0,
      O => Mult1_blk00000001_sig00000019
    );
  Mult1_blk00000001_blk00000037 : X_FF
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Mult1_blk00000001_blk00000037_CLK,
      I => Mult1_blk00000001_sig0000001c,
      O => MultOut(2),
      RST => GND,
      SET => GND
    );
  Mult1_blk00000001_blk00000031 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Mult1_blk00000001_sig00000031_0,
      ADR4 => Mult1_blk00000001_sig0000003b_0,
      O => Mult1_blk00000001_sig0000001b
    );
  Mult1_blk00000001_blk00000023 : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      CI => Mult1_blk00000001_sig00000014,
      CYINIT => '0',
      CO(3) => NLW_Mult1_blk00000001_blk00000023_CO_3_UNCONNECTED,
      CO(2) => NLW_Mult1_blk00000001_blk00000023_CO_2_UNCONNECTED,
      CO(1) => NLW_Mult1_blk00000001_blk00000023_CO_1_UNCONNECTED,
      CO(0) => NLW_Mult1_blk00000001_blk00000023_CO_0_UNCONNECTED,
      DI(3) => NLW_Mult1_blk00000001_blk00000023_DI_3_UNCONNECTED,
      DI(2) => NLW_Mult1_blk00000001_blk00000023_DI_2_UNCONNECTED,
      DI(1) => NLW_Mult1_blk00000001_blk00000023_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_Mult1_blk00000001_blk00000023_O_3_UNCONNECTED,
      O(2) => NLW_Mult1_blk00000001_blk00000023_O_2_UNCONNECTED,
      O(1) => Mult1_blk00000001_sig00000021,
      O(0) => Mult1_blk00000001_sig00000020,
      S(3) => NLW_Mult1_blk00000001_blk00000023_S_3_UNCONNECTED,
      S(2) => NLW_Mult1_blk00000001_blk00000023_S_2_UNCONNECTED,
      S(1) => Mult1_blk00000001_sig00000022_rt_166,
      S(0) => Mult1_blk00000001_sig00000026_rt_169
    );
  Mult1_blk00000001_blk00000032 : X_FF
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Mult1_blk00000001_blk00000032_CLK,
      I => Mult1_blk00000001_sig00000021,
      O => MultOut(7),
      RST => GND,
      SET => GND
    );
  Mult1_blk00000001_sig00000022_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => Mult1_blk00000001_sig00000022_0,
      O => Mult1_blk00000001_sig00000022_rt_166
    );
  Mult1_blk00000001_blk00000033 : X_FF
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Mult1_blk00000001_blk00000033_CLK,
      I => Mult1_blk00000001_sig00000020,
      O => MultOut(6),
      RST => GND,
      SET => GND
    );
  Mult1_blk00000001_sig00000026_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Mult1_blk00000001_sig00000026_0,
      ADR5 => '1',
      O => Mult1_blk00000001_sig00000026_rt_169
    );
  Mult1_blk00000001_sig00000012_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_Mult1_blk00000001_sig00000012_7_A5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_3 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_3_CLK,
      I => SevenSegDisp_Result(3),
      O => SevenSegDisp_counter(3),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_counter_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(3),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_3_rt_175
    );
  MISR1_Counter_10_22_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_22_D5LUT_O_UNCONNECTED
    );
  ProtoComp32_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X26Y20"
    )
    port map (
      O => ProtoComp32_CYINITGND_0
    );
  SevenSegDisp_counter_2 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_2_CLK,
      I => SevenSegDisp_Result(2),
      O => SevenSegDisp_counter(2),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_Mcount_counter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y20"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp32_CYINITGND_0,
      CO(3) => SevenSegDisp_Mcount_counter_cy_3_Q_1152,
      CO(2) => NLW_SevenSegDisp_Mcount_counter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_SevenSegDisp_Mcount_counter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_SevenSegDisp_Mcount_counter_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => SevenSegDisp_Result(3),
      O(2) => SevenSegDisp_Result(2),
      O(1) => SevenSegDisp_Result(1),
      O(0) => SevenSegDisp_Result(0),
      S(3) => SevenSegDisp_counter_3_rt_175,
      S(2) => SevenSegDisp_counter_2_rt_186,
      S(1) => SevenSegDisp_counter_1_rt_190,
      S(0) => SevenSegDisp_Mcount_counter_lut(0)
    );
  SevenSegDisp_counter_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(2),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_2_rt_186
    );
  MISR1_Counter_10_23_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_23_C5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_1 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_1_CLK,
      I => SevenSegDisp_Result(1),
      O => SevenSegDisp_counter(1),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_counter_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(1),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_1_rt_190
    );
  MISR1_Counter_10_24_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_24_B5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_0 : X_SFF
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_0_CLK,
      I => SevenSegDisp_Result(0),
      O => SevenSegDisp_counter(0),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_Mcount_counter_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(0),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_Mcount_counter_lut(0)
    );
  unused_anode_OBUF_1_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y20",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_unused_anode_OBUF_1_2_A5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_7 : X_SFF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_7_CLK,
      I => SevenSegDisp_Result(7),
      O => SevenSegDisp_counter(7),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_counter_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(7),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_7_rt_203
    );
  MISR1_Counter_10_18_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_18_D5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_6 : X_SFF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_6_CLK,
      I => SevenSegDisp_Result(6),
      O => SevenSegDisp_counter(6),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_Mcount_counter_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y21"
    )
    port map (
      CI => SevenSegDisp_Mcount_counter_cy_3_Q_1152,
      CYINIT => '0',
      CO(3) => SevenSegDisp_Mcount_counter_cy_7_Q_1157,
      CO(2) => NLW_SevenSegDisp_Mcount_counter_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_SevenSegDisp_Mcount_counter_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_SevenSegDisp_Mcount_counter_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => SevenSegDisp_Result(7),
      O(2) => SevenSegDisp_Result(6),
      O(1) => SevenSegDisp_Result(5),
      O(0) => SevenSegDisp_Result(4),
      S(3) => SevenSegDisp_counter_7_rt_203,
      S(2) => SevenSegDisp_counter_6_rt_214,
      S(1) => SevenSegDisp_counter_5_rt_218,
      S(0) => SevenSegDisp_counter_4_rt_222
    );
  SevenSegDisp_counter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(6),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_6_rt_214
    );
  MISR1_Counter_10_19_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_19_C5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_5 : X_SFF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_5_CLK,
      I => SevenSegDisp_Result(5),
      O => SevenSegDisp_counter(5),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_counter_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(5),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_5_rt_218
    );
  MISR1_Counter_10_20_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_20_B5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_4 : X_SFF
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_4_CLK,
      I => SevenSegDisp_Result(4),
      O => SevenSegDisp_counter(4),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_counter_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(4),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_4_rt_222
    );
  MISR1_Counter_10_21_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y21",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_21_A5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_11 : X_SFF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_11_CLK,
      I => SevenSegDisp_Result(11),
      O => SevenSegDisp_counter(11),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_counter_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(11),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_11_rt_231
    );
  MISR1_Counter_10_14_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_14_D5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_10 : X_SFF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_10_CLK,
      I => SevenSegDisp_Result(10),
      O => SevenSegDisp_counter(10),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_Mcount_counter_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y22"
    )
    port map (
      CI => SevenSegDisp_Mcount_counter_cy_7_Q_1157,
      CYINIT => '0',
      CO(3) => SevenSegDisp_Mcount_counter_cy_11_Q_1162,
      CO(2) => NLW_SevenSegDisp_Mcount_counter_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_SevenSegDisp_Mcount_counter_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_SevenSegDisp_Mcount_counter_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => SevenSegDisp_Result(11),
      O(2) => SevenSegDisp_Result(10),
      O(1) => SevenSegDisp_Result(9),
      O(0) => SevenSegDisp_Result(8),
      S(3) => SevenSegDisp_counter_11_rt_231,
      S(2) => SevenSegDisp_counter_10_rt_242,
      S(1) => SevenSegDisp_counter_9_rt_246,
      S(0) => SevenSegDisp_counter_8_rt_250
    );
  SevenSegDisp_counter_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(10),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_10_rt_242
    );
  MISR1_Counter_10_15_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_15_C5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_9 : X_SFF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_9_CLK,
      I => SevenSegDisp_Result(9),
      O => SevenSegDisp_counter(9),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_counter_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(9),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_9_rt_246
    );
  MISR1_Counter_10_16_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_16_B5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_8 : X_SFF
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_8_CLK,
      I => SevenSegDisp_Result(8),
      O => SevenSegDisp_counter(8),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_counter_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => SevenSegDisp_counter(8),
      ADR4 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_8_rt_250
    );
  MISR1_Counter_10_17_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y22",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_17_A5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_15 : X_SFF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_15_CLK,
      I => SevenSegDisp_Result(15),
      O => SevenSegDisp_counter(15),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_counter_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(15),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_15_rt_259
    );
  MISR1_Counter_10_10_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_10_D5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_14 : X_SFF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_14_CLK,
      I => SevenSegDisp_Result(14),
      O => SevenSegDisp_counter(14),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_Mcount_counter_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y23"
    )
    port map (
      CI => SevenSegDisp_Mcount_counter_cy_11_Q_1162,
      CYINIT => '0',
      CO(3) => SevenSegDisp_Mcount_counter_cy_15_Q_1167,
      CO(2) => NLW_SevenSegDisp_Mcount_counter_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_SevenSegDisp_Mcount_counter_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_SevenSegDisp_Mcount_counter_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => SevenSegDisp_Result(15),
      O(2) => SevenSegDisp_Result(14),
      O(1) => SevenSegDisp_Result(13),
      O(0) => SevenSegDisp_Result(12),
      S(3) => SevenSegDisp_counter_15_rt_259,
      S(2) => SevenSegDisp_counter_14_rt_270,
      S(1) => SevenSegDisp_counter_13_rt_274,
      S(0) => SevenSegDisp_counter_12_rt_278
    );
  SevenSegDisp_counter_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(14),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_14_rt_270
    );
  MISR1_Counter_10_11_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_11_C5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_13 : X_SFF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_13_CLK,
      I => SevenSegDisp_Result(13),
      O => SevenSegDisp_counter(13),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_counter_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(13),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_13_rt_274
    );
  MISR1_Counter_10_12_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_12_B5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_12 : X_SFF
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_12_CLK,
      I => SevenSegDisp_Result(12),
      O => SevenSegDisp_counter(12),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_counter_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => SevenSegDisp_counter(12),
      ADR4 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_12_rt_278
    );
  MISR1_Counter_10_13_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y23",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_13_A5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_18 : X_SFF
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_18_CLK,
      I => SevenSegDisp_Result(18),
      O => SevenSegDisp_counter(18),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_Mcount_counter_xor_18_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y24"
    )
    port map (
      CI => SevenSegDisp_Mcount_counter_cy_15_Q_1167,
      CYINIT => '0',
      CO(3) => NLW_SevenSegDisp_Mcount_counter_xor_18_CO_3_UNCONNECTED,
      CO(2) => NLW_SevenSegDisp_Mcount_counter_xor_18_CO_2_UNCONNECTED,
      CO(1) => NLW_SevenSegDisp_Mcount_counter_xor_18_CO_1_UNCONNECTED,
      CO(0) => NLW_SevenSegDisp_Mcount_counter_xor_18_CO_0_UNCONNECTED,
      DI(3) => NLW_SevenSegDisp_Mcount_counter_xor_18_DI_3_UNCONNECTED,
      DI(2) => NLW_SevenSegDisp_Mcount_counter_xor_18_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_SevenSegDisp_Mcount_counter_xor_18_O_3_UNCONNECTED,
      O(2) => SevenSegDisp_Result(18),
      O(1) => SevenSegDisp_Result(17),
      O(0) => SevenSegDisp_Result(16),
      S(3) => NLW_SevenSegDisp_Mcount_counter_xor_18_S_3_UNCONNECTED,
      S(2) => SevenSegDisp_counter_18_rt_292,
      S(1) => SevenSegDisp_counter_17_rt_295,
      S(0) => SevenSegDisp_counter_16_rt_299
    );
  SevenSegDisp_counter_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(18),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_18_rt_292
    );
  SevenSegDisp_counter_17 : X_SFF
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_17_CLK,
      I => SevenSegDisp_Result(17),
      O => SevenSegDisp_counter(17),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_counter_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => SevenSegDisp_counter(17),
      ADR3 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_17_rt_295
    );
  MISR1_Counter_10_8_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_8_B5LUT_O_UNCONNECTED
    );
  SevenSegDisp_counter_16 : X_SFF
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_counter_16_CLK,
      I => SevenSegDisp_Result(16),
      O => SevenSegDisp_counter(16),
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_counter_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => SevenSegDisp_counter(16),
      ADR4 => '1',
      ADR5 => '1',
      O => SevenSegDisp_counter_16_rt_299
    );
  MISR1_Counter_10_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y24",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_MISR1_Counter_10_9_A5LUT_O_UNCONNECTED
    );
  CAn_OBUF : X_OBUF
    generic map(
      LOC => "PAD113"
    )
    port map (
      I => NlwBufferSignal_CAn_OBUF_I,
      O => CAn
    );
  CBn_OBUF : X_OBUF
    generic map(
      LOC => "PAD114"
    )
    port map (
      I => NlwBufferSignal_CBn_OBUF_I,
      O => CBn
    );
  CCn_OBUF : X_OBUF
    generic map(
      LOC => "PAD115"
    )
    port map (
      I => NlwBufferSignal_CCn_OBUF_I,
      O => CCn
    );
  CDn_OBUF : X_OBUF
    generic map(
      LOC => "PAD116"
    )
    port map (
      I => NlwBufferSignal_CDn_OBUF_I,
      O => CDn
    );
  hund_anode_OBUF : X_OBUF
    generic map(
      LOC => "PAD110"
    )
    port map (
      I => NlwBufferSignal_hund_anode_OBUF_I,
      O => hund_anode
    );
  A_0_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_0_IBUF_315,
      I => A(0)
    );
  ProtoComp36_IMUX : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_0_IBUF_315,
      O => A_0_IBUF_0
    );
  CEn_OBUF : X_OBUF
    generic map(
      LOC => "PAD117"
    )
    port map (
      I => NlwBufferSignal_CEn_OBUF_I,
      O => CEn
    );
  A_1_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_1_IBUF_320,
      I => A(1)
    );
  ProtoComp36_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_1_IBUF_320,
      O => A_1_IBUF_0
    );
  CFn_OBUF : X_OBUF
    generic map(
      LOC => "PAD118"
    )
    port map (
      I => NlwBufferSignal_CFn_OBUF_I,
      O => CFn
    );
  A_2_IBUF : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_2_IBUF_325,
      I => A(2)
    );
  ProtoComp36_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_2_IBUF_325,
      O => A_2_IBUF_0
    );
  CGn_OBUF : X_OBUF
    generic map(
      LOC => "PAD119"
    )
    port map (
      I => NlwBufferSignal_CGn_OBUF_I,
      O => CGn
    );
  A_3_IBUF : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 115 ps
    )
    port map (
      O => A_3_IBUF_330,
      I => A(3)
    );
  ProtoComp36_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 115 ps
    )
    port map (
      I => A_3_IBUF_330,
      O => A_3_IBUF_0
    );
  B_0_IBUF : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_0_IBUF_333,
      I => B(0)
    );
  ProtoComp36_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_0_IBUF_333,
      O => B_0_IBUF_0
    );
  B_1_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_1_IBUF_336,
      I => B(1)
    );
  ProtoComp36_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_1_IBUF_336,
      O => B_1_IBUF_0
    );
  unused_anode_OBUF : X_OBUF
    generic map(
      LOC => "PAD109"
    )
    port map (
      I => '1',
      O => unused_anode
    );
  B_2_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_2_IBUF_341,
      I => B(2)
    );
  ProtoComp36_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_2_IBUF_341,
      O => B_2_IBUF_0
    );
  B_3_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 115 ps
    )
    port map (
      O => B_3_IBUF_344,
      I => B(3)
    );
  ProtoComp36_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 115 ps
    )
    port map (
      I => B_3_IBUF_344,
      O => B_3_IBUF_0
    );
  output_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD125"
    )
    port map (
      I => NlwBufferSignal_output_0_OBUF_I,
      O => output(0)
    );
  output_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => NlwBufferSignal_output_1_OBUF_I,
      O => output(1)
    );
  output_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD129"
    )
    port map (
      I => NlwBufferSignal_output_2_OBUF_I,
      O => output(2)
    );
  output_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD130"
    )
    port map (
      I => NlwBufferSignal_output_3_OBUF_I,
      O => output(3)
    );
  output_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD139"
    )
    port map (
      I => NlwBufferSignal_output_4_OBUF_I,
      O => output(4)
    );
  output_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD140"
    )
    port map (
      I => NlwBufferSignal_output_5_OBUF_I,
      O => output(5)
    );
  output_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD141"
    )
    port map (
      I => NlwBufferSignal_output_6_OBUF_I,
      O => output(6)
    );
  output_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => NlwBufferSignal_output_7_OBUF_I,
      O => output(7)
    );
  output_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD123"
    )
    port map (
      I => '0',
      O => output(8)
    );
  output_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD124"
    )
    port map (
      I => '0',
      O => output(9)
    );
  test_mode_in_IBUF : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 115 ps
    )
    port map (
      O => test_mode_in_IBUF_367,
      I => test_mode_in
    );
  ProtoComp36_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 115 ps
    )
    port map (
      I => test_mode_in_IBUF_367,
      O => test_mode_in_IBUF_0
    );
  Clock_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 115 ps
    )
    port map (
      O => Clock_BUFGP_IBUFG_370,
      I => Clock
    );
  ProtoComp36_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP_IBUFG_370,
      O => Clock_BUFGP_IBUFG_0
    );
  Reset_IBUF : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 115 ps
    )
    port map (
      O => Reset_IBUF_373,
      I => Reset
    );
  ProtoComp36_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 115 ps
    )
    port map (
      I => Reset_IBUF_373,
      O => Reset_IBUF_0
    );
  tens_anode_OBUF : X_OBUF
    generic map(
      LOC => "PAD111"
    )
    port map (
      I => NlwBufferSignal_tens_anode_OBUF_I,
      O => tens_anode
    );
  ones_anode_OBUF : X_OBUF
    generic map(
      LOC => "PAD112"
    )
    port map (
      I => NlwBufferSignal_ones_anode_OBUF_I,
      O => ones_anode
    );
  output_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => '0',
      O => output(10)
    );
  output_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD128"
    )
    port map (
      I => '0',
      O => output(11)
    );
  Clock_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_Clock_BUFGP_BUFG_IN,
      O => Clock_BUFGP
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT41 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y19"
    )
    port map (
      IA => N60,
      IB => '0',
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT4,
      SEL => bcd_wire_2(4)
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT41_F : X_LUT6
    generic map(
      LOC => "SLICE_X24Y19",
      INIT => X"001408100055AA00"
    )
    port map (
      ADR0 => Mmux_bcd_wire_2_5_111_0,
      ADR3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      ADR4 => Mmux_bcd_wire_2_5_122,
      ADR5 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      ADR1 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      O => N60
    );
  SevenSegDec_tens_disp_n_4 : X_FF
    generic map(
      LOC => "SLICE_X24Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_tens_disp_n_4_CLK,
      I => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT4,
      O => SevenSegDec_tens_disp_n(4),
      RST => GND,
      SET => GND
    );
  MISR1_Counter_10_31_C6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X24Y19",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_MISR1_Counter_10_31_C6LUT_O_UNCONNECTED
    );
  LFSR1_DFF4_Q_LFSR1_DFF4_Q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MultIn1(0),
      O => MultIn1_0_0
    );
  LFSR1_DFF4_Q_LFSR1_DFF4_Q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LFSR1_DFF1_Q_pack_6,
      O => LFSR1_DFF1_Q_1102
    );
  LFSR1_DFF4_Q_LFSR1_DFF4_Q_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LFSR1_DFF8_Q_402,
      O => LFSR1_DFF8_Q_0
    );
  M1_Mmux_Output41 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"F0AAF0AAF0AAF0AA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => test_mode_in_IBUF_0,
      ADR2 => LFSR1_DFF4_Q_1122,
      ADR0 => A_3_IBUF_0,
      ADR5 => '1',
      O => MultIn1(3)
    );
  M1_Mmux_Output11 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"FFCC00CC"
    )
    port map (
      ADR4 => LFSR1_DFF1_Q_1102,
      ADR1 => A_0_IBUF_0,
      ADR3 => test_mode_in_IBUF_0,
      ADR2 => '1',
      ADR0 => '1',
      O => MultIn1(0)
    );
  LFSR1_DFF1_n00131 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"5500550055005500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => test_mode_in_IBUF_0,
      ADR3 => LFSR1_DFF1_inTestMode_1101,
      ADR5 => '1',
      O => LFSR1_DFF1_n0013
    );
  LFSR1_DFF1_Mmux_Q_Reset_MUX_98_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"CCAACCAA"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => LFSR1_DFF2_Q_1100,
      ADR0 => test_mode_in_IBUF_0,
      ADR3 => LFSR1_DFF1_inTestMode_1101,
      O => LFSR1_DFF1_Q_Reset_MUX_98_o
    );
  LFSR1_DFF1_Q : X_SFF
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_LFSR1_DFF1_Q_CLK,
      I => LFSR1_DFF1_Q_Reset_MUX_98_o,
      O => LFSR1_DFF1_Q_pack_6,
      SRST => LFSR1_DFF1_n0013,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  LFSR1_DFF4_Q : X_SFF
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_LFSR1_DFF4_Q_CLK,
      I => LFSR1_DFF4_Q_Reset_MUX_98_o,
      O => LFSR1_DFF4_Q_1122,
      SRST => LFSR1_DFF1_n0013,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  LFSR1_DFF4_Mmux_Q_Reset_MUX_98_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"33F0CCF033F0CCF0"
    )
    port map (
      ADR0 => '1',
      ADR3 => LFSR1_DFF1_inTestMode_1101,
      ADR4 => LFSR1_DFF1_Q_1102,
      ADR1 => LFSR1_DFF5_Q_1117,
      ADR2 => test_mode_in_IBUF_0,
      ADR5 => '1',
      O => LFSR1_DFF4_Q_Reset_MUX_98_o
    );
  LFSR1_DFF8_Mmux_Q_Reset_MUX_98_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => X"FFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => LFSR1_DFF1_inTestMode_1101,
      ADR4 => LFSR1_DFF1_Q_1102,
      ADR1 => '1',
      ADR2 => test_mode_in_IBUF_0,
      O => LFSR1_DFF8_Q_Reset_MUX_98_o
    );
  LFSR1_DFF8_Q : X_SFF
    generic map(
      LOC => "SLICE_X10Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_LFSR1_DFF8_Q_CLK,
      I => LFSR1_DFF8_Q_Reset_MUX_98_o,
      O => LFSR1_DFF8_Q_402,
      SRST => LFSR1_DFF1_n0013,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  LFSR1_DFF3_Q_LFSR1_DFF3_Q_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MultIn2(0),
      O => MultIn2_0_0
    );
  LFSR1_DFF3_Q_LFSR1_DFF3_Q_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MultIn2(1),
      O => MultIn2_1_0
    );
  LFSR1_DFF3_Q_LFSR1_DFF3_Q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LFSR1_DFF7_Q_pack_10,
      O => LFSR1_DFF7_Q_1196
    );
  LFSR1_DFF3_Q_LFSR1_DFF3_Q_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LFSR1_DFF6_Q_pack_8,
      O => LFSR1_DFF6_Q_1197
    );
  M2_Mmux_Output41 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"AAFFAA00AAFFAA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => test_mode_in_IBUF_0,
      ADR0 => LFSR1_DFF8_Q_0,
      ADR4 => B_3_IBUF_0,
      ADR5 => '1',
      O => MultIn2(3)
    );
  M2_Mmux_Output11 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"CCF0CCF0"
    )
    port map (
      ADR1 => LFSR1_DFF5_Q_1117,
      ADR2 => B_0_IBUF_0,
      ADR3 => test_mode_in_IBUF_0,
      ADR0 => '1',
      ADR4 => '1',
      O => MultIn2(0)
    );
  M2_Mmux_Output31 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"EEEE4444EEEE4444"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => test_mode_in_IBUF_0,
      ADR4 => LFSR1_DFF7_Q_1196,
      ADR1 => B_2_IBUF_0,
      ADR5 => '1',
      O => MultIn2(2)
    );
  M2_Mmux_Output21 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"F5A0F5A0"
    )
    port map (
      ADR2 => LFSR1_DFF6_Q_1197,
      ADR3 => B_1_IBUF_0,
      ADR0 => test_mode_in_IBUF_0,
      ADR1 => '1',
      ADR4 => '1',
      O => MultIn2(1)
    );
  LFSR1_DFF3_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_LFSR1_DFF3_Q_CLK,
      I => LFSR1_DFF3_Q_Reset_MUX_98_o,
      O => LFSR1_DFF3_Q_1113,
      SRST => LFSR1_DFF1_n0013,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  LFSR1_DFF3_Mmux_Q_Reset_MUX_98_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"FFF000F0FFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => LFSR1_DFF1_inTestMode_1101,
      ADR4 => LFSR1_DFF4_Q_1122,
      ADR2 => test_mode_in_IBUF_0,
      ADR5 => '1',
      O => LFSR1_DFF3_Q_Reset_MUX_98_o
    );
  LFSR1_DFF7_Mmux_Q_Reset_MUX_98_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"AAF0AAF0"
    )
    port map (
      ADR1 => '1',
      ADR0 => LFSR1_DFF8_Q_0,
      ADR3 => LFSR1_DFF1_inTestMode_1101,
      ADR4 => '1',
      ADR2 => test_mode_in_IBUF_0,
      O => LFSR1_DFF7_Q_Reset_MUX_98_o
    );
  LFSR1_DFF7_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_LFSR1_DFF7_Q_CLK,
      I => LFSR1_DFF7_Q_Reset_MUX_98_o,
      O => LFSR1_DFF7_Q_pack_10,
      SRST => LFSR1_DFF1_n0013,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  LFSR1_DFF5_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_LFSR1_DFF5_Q_CLK,
      I => LFSR1_DFF5_Q_Reset_MUX_98_o,
      O => LFSR1_DFF5_Q_1117,
      SRST => LFSR1_DFF1_n0013,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  LFSR1_DFF5_Mmux_Q_Reset_MUX_98_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"66FF660066FF6600"
    )
    port map (
      ADR2 => '1',
      ADR3 => LFSR1_DFF1_inTestMode_1101,
      ADR0 => LFSR1_DFF1_Q_1102,
      ADR1 => LFSR1_DFF6_Q_1197,
      ADR4 => test_mode_in_IBUF_0,
      ADR5 => '1',
      O => LFSR1_DFF5_Q_Reset_MUX_98_o
    );
  LFSR1_DFF6_Mmux_Q_Reset_MUX_98_o11 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => X"5AFF5A00"
    )
    port map (
      ADR2 => LFSR1_DFF7_Q_1196,
      ADR3 => LFSR1_DFF1_inTestMode_1101,
      ADR0 => LFSR1_DFF1_Q_1102,
      ADR1 => '1',
      ADR4 => test_mode_in_IBUF_0,
      O => LFSR1_DFF6_Q_Reset_MUX_98_o
    );
  LFSR1_DFF6_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_LFSR1_DFF6_Q_CLK,
      I => LFSR1_DFF6_Q_Reset_MUX_98_o,
      O => LFSR1_DFF6_Q_pack_8,
      SRST => LFSR1_DFF1_n0013,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  LFSR1_DFF2_Q_LFSR1_DFF2_Q_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MultIn1(1),
      O => MultIn1_1_0
    );
  LFSR1_DFF2_Q_LFSR1_DFF2_Q_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => LFSR1_DFF1_inTestMode_pack_3,
      O => LFSR1_DFF1_inTestMode_1101
    );
  M1_Mmux_Output31 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => X"FFCC00CCFFCC00CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => test_mode_in_IBUF_0,
      ADR4 => LFSR1_DFF3_Q_1113,
      ADR1 => A_2_IBUF_0,
      ADR5 => '1',
      O => MultIn1(2)
    );
  M1_Mmux_Output21 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => X"AAF0AAF0"
    )
    port map (
      ADR0 => LFSR1_DFF2_Q_1100,
      ADR2 => A_1_IBUF_0,
      ADR3 => test_mode_in_IBUF_0,
      ADR1 => '1',
      ADR4 => '1',
      O => MultIn1(1)
    );
  LFSR1_DFF2_Q : X_SFF
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_LFSR1_DFF2_Q_CLK,
      I => LFSR1_DFF2_Q_Reset_MUX_98_o,
      O => LFSR1_DFF2_Q_1100,
      SRST => LFSR1_DFF1_n0013,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  LFSR1_DFF2_Mmux_Q_Reset_MUX_98_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => X"FCFC3030FCFC3030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => LFSR1_DFF1_inTestMode_1101,
      ADR4 => LFSR1_DFF3_Q_1113,
      ADR2 => test_mode_in_IBUF_0,
      ADR5 => '1',
      O => LFSR1_DFF2_Q_Reset_MUX_98_o
    );
  LFSR1_DFF1_inTestMode_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => X"FCFCFCFC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => LFSR1_DFF1_inTestMode_1101,
      ADR3 => '1',
      ADR2 => test_mode_in_IBUF_0,
      O => LFSR1_DFF1_inTestMode_glue_set_469
    );
  LFSR1_DFF1_inTestMode : X_SFF
    generic map(
      LOC => "SLICE_X11Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_LFSR1_DFF1_inTestMode_CLK,
      I => LFSR1_DFF1_inTestMode_glue_set_469,
      O => LFSR1_DFF1_inTestMode_pack_3,
      SRST => LFSR1_DFF1_n0013,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mmux_bcd_wire_2_1_131_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => X"C30CA50ACF3CAF5A"
    )
    port map (
      ADR4 => test_mode_in_IBUF_0,
      ADR1 => MISR1_Signature(3),
      ADR0 => MultOut(3),
      ADR5 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      ADR2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => N47
    );
  Mmux_bcd_wire_2_1_131 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => X"26898C2337CD9D67"
    )
    port map (
      ADR0 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_lut_3_Q,
      ADR3 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR1 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      ADR4 => N48,
      ADR2 => N46,
      ADR5 => N47,
      O => bcd_wire_2(4)
    );
  GND_7_o_bcd_wire_1_5_LessThan_27_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => X"FF69FF21FF5AFF48"
    )
    port map (
      ADR2 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      ADR1 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_lut_3_Q,
      ADR0 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => GND_7_o_bcd_wire_1_5_LessThan_27_o
    );
  Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => X"0FCBB02C0FCBB02C"
    )
    port map (
      ADR5 => '1',
      ADR4 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      ADR2 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      ADR0 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      ADR1 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      O => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q
    );
  Mmux_bcd_wire_2_5_111_Mmux_bcd_wire_2_5_111_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mmux_bcd_wire_2_5_111,
      O => Mmux_bcd_wire_2_5_111_0
    );
  Mmux_bcd_wire_2_5_1111 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y21"
    )
    port map (
      IA => N58,
      IB => N59,
      O => Mmux_bcd_wire_2_5_111,
      SEL => test_mode_in_IBUF_0
    );
  Mmux_bcd_wire_2_5_1111_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y21",
      INIT => X"5252FBFBAFAFA5A5"
    )
    port map (
      ADR3 => '1',
      ADR2 => MultOut(7),
      ADR0 => MultOut(6),
      ADR4 => MultOut(4),
      ADR1 => MultOut(3),
      ADR5 => MultOut(5),
      O => N58
    );
  Mmux_bcd_wire_2_5_1111_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y21",
      INIT => X"5FAA0AF55FAAAFF5"
    )
    port map (
      ADR1 => '1',
      ADR4 => MISR1_Signature(7),
      ADR0 => MISR1_Signature(6),
      ADR2 => MISR1_Signature(4),
      ADR5 => MISR1_Signature(3),
      ADR3 => MISR1_Signature(5),
      O => N59
    );
  MISR1_Reset_OR_DriverANDClockEnable1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y34",
      INIT => X"0000000001FF0FFF"
    )
    port map (
      ADR5 => MISR1_Counter(6),
      ADR2 => MISR1_Counter(3),
      ADR4 => MISR1_Counter(2),
      ADR1 => MISR1_Counter(1),
      ADR0 => MISR1_Counter(0),
      ADR3 => MISR1_Counter(4),
      O => MISR1_Reset_OR_DriverANDClockEnable1_1199
    );
  MISR1_Reset_OR_DriverANDClockEnable2 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y34",
      INIT => X"0333033303030303"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => Reset_IBUF_0,
      ADR2 => test_mode_in_IBUF_0,
      ADR5 => MISR1_Reset_OR_DriverANDClockEnable1_1199,
      ADR3 => MISR1_Counter(5),
      O => MISR1_Reset_OR_DriverANDClockEnable
    );
  SevenSegDec_ones_disp_n_6_SevenSegDec_ones_disp_n_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_pack_5,
      O => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q
    );
  M3_Mmux_Output11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => X"FC30FC30FC30FC30"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR1 => test_mode_in_IBUF_0,
      ADR3 => MISR1_Signature(0),
      ADR2 => MultOut(0),
      O => output_0_OBUF_1176
    );
  Mmux_bcd_wire_2_1_131_SW6 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => X"0103A80045CF2000"
    )
    port map (
      ADR1 => test_mode_in_IBUF_0,
      ADR5 => MISR1_Signature(3),
      ADR2 => MultOut(3),
      ADR0 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      ADR4 => Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131_1052,
      O => N48
    );
  M3_Mmux_Output31 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => X"F5A0F5A0F5A0F5A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => test_mode_in_IBUF_0,
      ADR2 => MISR1_Signature(2),
      ADR3 => MultOut(2),
      ADR5 => '1',
      O => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q
    );
  M3_Mmux_Output21 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => X"DDDD8888"
    )
    port map (
      ADR1 => MISR1_Signature(1),
      ADR4 => MultOut(1),
      ADR0 => test_mode_in_IBUF_0,
      ADR3 => '1',
      ADR2 => '1',
      O => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_pack_5
    );
  SevenSegDec_ones_disp_n_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_ones_disp_n_6_CLK,
      I => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT6,
      O => SevenSegDec_ones_disp_n(6),
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => X"00210A10A5005002"
    )
    port map (
      ADR2 => output_0_OBUF_1176,
      ADR3 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      ADR5 => N27,
      ADR1 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      ADR0 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT6
    );
  MISR1_Signature_3 : X_SFF
    generic map(
      LOC => "SLICE_X15Y21",
      INIT => '0'
    )
    port map (
      CE => MISR1_Reset_inv1,
      CLK => NlwBufferSignal_MISR1_Signature_3_CLK,
      I => NlwBufferSignal_MISR1_Signature_3_IN,
      O => MISR1_Signature(3),
      SRST => MISR1_Reset_OR_DriverANDClockEnable,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mmux_bcd_wire_2_1_131_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y21",
      INIT => X"FFF7111F7F77F1FF"
    )
    port map (
      ADR2 => test_mode_in_IBUF_0,
      ADR3 => MultOut(3),
      ADR0 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      ADR5 => MISR1_Signature(3),
      ADR1 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      ADR4 => Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131_1052,
      O => N46
    );
  MISR1_Signature_2 : X_SFF
    generic map(
      LOC => "SLICE_X15Y21",
      INIT => '0'
    )
    port map (
      CE => MISR1_Reset_inv1,
      CLK => NlwBufferSignal_MISR1_Signature_2_CLK,
      I => NlwBufferSignal_MISR1_Signature_2_IN,
      O => MISR1_Signature(2),
      SRST => MISR1_Reset_OR_DriverANDClockEnable,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y21",
      INIT => X"66446666DD996644"
    )
    port map (
      ADR2 => '1',
      ADR1 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      ADR0 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      ADR5 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      O => Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131_1052
    );
  MISR1_Signature_1 : X_SFF
    generic map(
      LOC => "SLICE_X15Y21",
      INIT => '0'
    )
    port map (
      CE => MISR1_Reset_inv1,
      CLK => NlwBufferSignal_MISR1_Signature_1_CLK,
      I => NlwBufferSignal_MISR1_Signature_1_IN,
      O => MISR1_Signature(1),
      SRST => MISR1_Reset_OR_DriverANDClockEnable,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  M3_Mmux_Output41 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y21",
      INIT => X"F0FFF0FFF000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => test_mode_in_IBUF_0,
      ADR2 => MISR1_Signature(3),
      ADR5 => MultOut(3),
      O => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q
    );
  MISR1_Signature_0 : X_SFF
    generic map(
      LOC => "SLICE_X15Y21",
      INIT => '0'
    )
    port map (
      CE => MISR1_Reset_inv1,
      CLK => NlwBufferSignal_MISR1_Signature_0_CLK,
      I => NlwBufferSignal_MISR1_Signature_0_IN,
      O => MISR1_Signature(0),
      SRST => MISR1_Reset_OR_DriverANDClockEnable,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o1211 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y21",
      INIT => X"0030C30C0C000030"
    )
    port map (
      ADR0 => '1',
      ADR5 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      ADR1 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      ADR2 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      O => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_lut_3_Q
    );
  MISR1_Reset_inv11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y22",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => Reset_IBUF_0,
      O => MISR1_Reset_inv1
    );
  MISR1_n0054_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y35",
      INIT => X"7FFF7FFF00000000"
    )
    port map (
      ADR4 => '1',
      ADR5 => test_mode_in_IBUF_0,
      ADR2 => MISR1_Counter(3),
      ADR0 => MISR1_Counter(4),
      ADR1 => MISR1_Counter(5),
      ADR3 => MISR1_Counter(6),
      O => MISR1_n0054_inv
    );
  Mmux_bcd_wire_1_9_bcd_wire_1_9_MUX_60_o11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => X"EEEAEE4044404440"
    )
    port map (
      ADR0 => test_mode_in_IBUF_0,
      ADR5 => MISR1_Signature(7),
      ADR4 => MISR1_Signature(6),
      ADR3 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      ADR1 => MultOut(7),
      ADR2 => MultOut(6),
      O => N52
    );
  SevenSegDec_hund_disp_n_4 : X_FF
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_hund_disp_n_4_CLK,
      I => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT4,
      O => SevenSegDec_hund_disp_n_4_Q,
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => X"0002020303030000"
    )
    port map (
      ADR1 => N56,
      ADR0 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      ADR2 => Mmux_bcd_wire_2_5_122,
      ADR5 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      O => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT4
    );
  SevenSegDec_hund_disp_n_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_hund_disp_n_1_CLK,
      I => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT1_615,
      O => SevenSegDec_hund_disp_n_1_Q,
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT121 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => X"FFFFFFFFFAB0BAA0"
    )
    port map (
      ADR0 => N52,
      ADR1 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      ADR5 => Mmux_bcd_wire_2_5_122,
      ADR2 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      O => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT1_615
    );
  SevenSegDec_hund_disp_n_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_hund_disp_n_0_CLK,
      I => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT,
      O => SevenSegDec_hund_disp_n_0_Q,
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => X"3F333F3F3337FFFF"
    )
    port map (
      ADR2 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      ADR5 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      ADR0 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      ADR1 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      O => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT
    );
  MISR1_Signature_7 : X_SFF
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => '0'
    )
    port map (
      CE => MISR1_Reset_inv1,
      CLK => NlwBufferSignal_MISR1_Signature_7_CLK,
      I => NlwBufferSignal_MISR1_Signature_7_IN,
      O => MISR1_Signature(7),
      SRST => MISR1_Reset_OR_DriverANDClockEnable,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  M3_Mmux_Output61 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => X"FF33FF33CC00CC00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => test_mode_in_IBUF_0,
      ADR3 => MISR1_Signature(5),
      ADR5 => MultOut(5),
      O => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q
    );
  MISR1_Signature_6 : X_SFF
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => '0'
    )
    port map (
      CE => MISR1_Reset_inv1,
      CLK => NlwBufferSignal_MISR1_Signature_6_CLK,
      I => NlwBufferSignal_MISR1_Signature_6_IN,
      O => MISR1_Signature(6),
      SRST => MISR1_Reset_OR_DriverANDClockEnable,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mmux_bcd_wire_1_4_bcd_wire_1_7_MUX_39_o131 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => X"E4E400E41BE41B00"
    )
    port map (
      ADR0 => test_mode_in_IBUF_0,
      ADR1 => MultOut(6),
      ADR3 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      ADR2 => MISR1_Signature(6),
      ADR4 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      ADR5 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      O => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q
    );
  MISR1_Signature_5 : X_SFF
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => '0'
    )
    port map (
      CE => MISR1_Reset_inv1,
      CLK => NlwBufferSignal_MISR1_Signature_5_CLK,
      I => NlwBufferSignal_MISR1_Signature_5_IN,
      O => MISR1_Signature(5),
      SRST => MISR1_Reset_OR_DriverANDClockEnable,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  M3_Mmux_Output71 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => X"FFFF0F0FF0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => test_mode_in_IBUF_0,
      ADR4 => MISR1_Signature(6),
      ADR5 => MultOut(6),
      O => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q
    );
  MISR1_Signature_4 : X_SFF
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => '0'
    )
    port map (
      CE => MISR1_Reset_inv1,
      CLK => NlwBufferSignal_MISR1_Signature_4_CLK,
      I => NlwBufferSignal_MISR1_Signature_4_IN,
      O => MISR1_Signature(4),
      SRST => MISR1_Reset_OR_DriverANDClockEnable,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Mmux_bcd_wire_1_8_bcd_wire_1_8_MUX_28_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => X"AAAA8888F0F0F000"
    )
    port map (
      ADR5 => test_mode_in_IBUF_0,
      ADR0 => MISR1_Signature(7),
      ADR1 => MISR1_Signature(5),
      ADR4 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      ADR2 => MultOut(7),
      ADR3 => MultOut(5),
      O => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q
    );
  MISR1_DFF5_Q_MISR1_DFF5_Q_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MISR1_DFF7_Q_pack_6,
      O => MISR1_DFF7_Q_1094
    );
  MISR1_DFF5_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MISR1_DFF5_Q_CLK,
      I => MISR1_W13,
      O => MISR1_DFF5_Q_1092,
      SSET => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  MISR1_M5_Mmux_Output11 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"CCFFFFCC00333300"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => MISR1_select_signal_1133,
      ADR5 => MISR1_DFF5_Q_1092,
      ADR4 => MultOut(4),
      ADR3 => MISR1_DFF6_Q_1093,
      O => MISR1_W13
    );
  MISR1_select_signal : X_SFF
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MISR1_select_signal_CLK,
      I => MISR1_select_signal_glue_set_682,
      O => MISR1_select_signal_1133,
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  MISR1_select_signal_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"EAAAAAAAAAAAAAAA"
    )
    port map (
      ADR2 => test_mode_in_IBUF_0,
      ADR5 => MISR1_Counter(3),
      ADR1 => MISR1_Counter(4),
      ADR0 => MISR1_select_signal_1133,
      ADR3 => MISR1_Counter(5),
      ADR4 => MISR1_Counter(6),
      O => MISR1_select_signal_glue_set_682
    );
  MISR1_DFF6_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MISR1_DFF6_Q_CLK,
      I => MISR1_W16,
      O => MISR1_DFF6_Q_1093,
      SSET => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  MISR1_M6_Mmux_Output11 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"FFFF00000FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => MISR1_select_signal_1133,
      ADR4 => MISR1_DFF6_Q_1093,
      ADR2 => MultOut(5),
      ADR3 => MISR1_DFF7_Q_1094,
      O => MISR1_W16
    );
  MISR1_DFF8_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MISR1_DFF8_Q_CLK,
      I => MISR1_W22,
      O => MISR1_DFF8_Q_1095,
      SSET => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  MISR1_M8_Mmux_Output11 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"FF3300CCFF3300CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => MISR1_select_signal_1133,
      ADR4 => MISR1_DFF8_Q_1095,
      ADR1 => MultOut(7),
      ADR5 => '1',
      O => MISR1_W22
    );
  MISR1_M7_Mmux_Output11 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"AA0FAAF0"
    )
    port map (
      ADR2 => MultOut(6),
      ADR0 => MISR1_DFF7_Q_1094,
      ADR3 => MISR1_select_signal_1133,
      ADR4 => MISR1_DFF8_Q_1095,
      ADR1 => '1',
      O => MISR1_W19
    );
  MISR1_DFF7_Q : X_SFF
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MISR1_DFF7_Q_CLK,
      I => MISR1_W19,
      O => MISR1_DFF7_Q_pack_6,
      SSET => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  MISR1_DFF4_Q : X_SFF
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MISR1_DFF4_Q_CLK,
      I => MISR1_W10,
      O => MISR1_DFF4_Q_1091,
      SSET => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  MISR1_M4_Mmux_Output11 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => X"FFFF00000FF00FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => MISR1_select_signal_1133,
      ADR4 => MISR1_DFF4_Q_1091,
      ADR3 => MultOut(3),
      ADR2 => MISR1_DFF5_Q_1092,
      O => MISR1_W10
    );
  MISR1_DFF3_Q : X_SFF
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MISR1_DFF3_Q_CLK,
      I => MISR1_W7,
      O => MISR1_DFF3_Q_1088,
      SSET => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  MISR1_M3_Mmux_Output11 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => X"BEBE1414BEBE1414"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => MISR1_select_signal_1133,
      ADR4 => MISR1_DFF3_Q_1088,
      ADR2 => MultOut(2),
      ADR1 => MISR1_DFF4_Q_1091,
      O => MISR1_W7
    );
  MISR1_DFF1_Q : X_SFF
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MISR1_DFF1_Q_CLK,
      I => MISR1_W1,
      O => MISR1_DFF1_Q_1084,
      SSET => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  MISR1_M1_Mmux_Output11 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => X"F5FA050AF5FA050A"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => MISR1_select_signal_1133,
      ADR4 => MISR1_DFF1_Q_1084,
      ADR3 => MultOut(0),
      ADR0 => MISR1_DFF2_Q_1086,
      O => MISR1_W1
    );
  MISR1_DFF2_Q : X_SFF
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_MISR1_DFF2_Q_CLK,
      I => MISR1_W4,
      O => MISR1_DFF2_Q_1086,
      SSET => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  MISR1_M2_Mmux_Output11 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => X"F3FCF3FC030C030C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => MISR1_select_signal_1133,
      ADR5 => MISR1_DFF2_Q_1086,
      ADR1 => MultOut(1),
      ADR3 => MISR1_DFF3_Q_1088,
      O => MISR1_W4
    );
  N27_N27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N31,
      O => N31_0
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT311_SW01 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y21",
      INIT => X"79699E7979699E79"
    )
    port map (
      ADR1 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      ADR2 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      ADR0 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      ADR5 => '1',
      O => N27
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT12_SW01 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y21",
      INIT => X"86966186"
    )
    port map (
      ADR1 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      ADR2 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      ADR0 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      O => N31
    );
  M3_Mmux_Output51 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y21",
      INIT => X"F0FFF000F0FFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => test_mode_in_IBUF_0,
      ADR2 => MISR1_Signature(4),
      ADR4 => MultOut(4),
      O => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q
    );
  M3_Mmux_Output81 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y21",
      INIT => X"F0F0FFFFF0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => test_mode_in_IBUF_0,
      ADR2 => MISR1_Signature(7),
      ADR5 => MultOut(7),
      O => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q
    );
  Mmux_bcd_wire_1_9_bcd_wire_1_9_MUX_60_o11_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y21",
      INIT => X"0202FFFF0257FFFF"
    )
    port map (
      ADR0 => test_mode_in_IBUF_0,
      ADR1 => MISR1_Signature(6),
      ADR2 => MISR1_Signature(5),
      ADR4 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      ADR5 => MultOut(6),
      ADR3 => MultOut(5),
      O => N56
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT311 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y18"
    )
    port map (
      IA => N62,
      IB => N63,
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT3,
      SEL => bcd_wire_2(4)
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT311_F : X_LUT6
    generic map(
      LOC => "SLICE_X18Y18",
      INIT => X"0000221200001111"
    )
    port map (
      ADR4 => Mmux_bcd_wire_2_5_122,
      ADR1 => Mmux_bcd_wire_2_5_111_0,
      ADR5 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR0 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      ADR2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      ADR3 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => N62
    );
  SevenSegDec_tens_disp_n_3 : X_FF
    generic map(
      LOC => "SLICE_X18Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_tens_disp_n_3_CLK,
      I => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT3,
      O => SevenSegDec_tens_disp_n(3),
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT311_G : X_LUT6
    generic map(
      LOC => "SLICE_X18Y18",
      INIT => X"205F130022F51100"
    )
    port map (
      ADR4 => Mmux_bcd_wire_2_5_111_0,
      ADR3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      ADR0 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      ADR5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      ADR1 => Mmux_bcd_wire_2_5_122,
      O => N63
    );
  Mmux_bcd_wire_1_2_bcd_wire_1_5_MUX_59_o131 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y18",
      INIT => X"96966996CC9669CC"
    )
    port map (
      ADR5 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      ADR2 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      ADR3 => Mmux_bcd_wire_1_3_bcd_wire_1_6_MUX_47_o131_1052,
      ADR1 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_lut_3_Q,
      ADR0 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      O => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q
    );
  SevenSegDec_hund_disp_n_6 : X_FF
    generic map(
      LOC => "SLICE_X18Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_hund_disp_n_6_CLK,
      I => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT6,
      O => SevenSegDec_hund_disp_n_6_Q,
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT611 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y18",
      INIT => X"00EE00CE44CE44CC"
    )
    port map (
      ADR3 => N52,
      ADR2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      ADR1 => Mmux_bcd_wire_2_5_122,
      ADR0 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      O => SevenSegDec_Mram_bcd_11_GND_17_o_wide_mux_0_OUT6
    );
  SevenSegDec_ones_disp_n_2 : X_FF
    generic map(
      LOC => "SLICE_X18Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_ones_disp_n_2_CLK,
      I => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT2,
      O => SevenSegDec_ones_disp_n(2),
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y19",
      INIT => X"A8AAC8EB32BEA8AA"
    )
    port map (
      ADR0 => output_0_OBUF_1176,
      ADR2 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      ADR1 => N27,
      ADR3 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      ADR5 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT2
    );
  SevenSegDec_ones_disp_n_1 : X_FF
    generic map(
      LOC => "SLICE_X18Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_ones_disp_n_1_CLK,
      I => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT1,
      O => SevenSegDec_ones_disp_n(1),
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT111 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y19",
      INIT => X"40E85476919120A0"
    )
    port map (
      ADR2 => output_0_OBUF_1176,
      ADR0 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      ADR5 => N27,
      ADR3 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      ADR1 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT1
    );
  SevenSegDec_ones_disp_n_0 : X_FF
    generic map(
      LOC => "SLICE_X18Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_ones_disp_n_0_CLK,
      I => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT,
      O => SevenSegDec_ones_disp_n(0),
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT12 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y19",
      INIT => X"F5F5C4842B0A2921"
    )
    port map (
      ADR3 => output_0_OBUF_1176,
      ADR1 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      ADR0 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      ADR5 => N31_0,
      ADR4 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      ADR2 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT111 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y20"
    )
    port map (
      IA => N70,
      IB => N71,
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT1,
      SEL => bcd_wire_2(4)
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT111_F : X_LUT6
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => X"001400550810AA00"
    )
    port map (
      ADR0 => Mmux_bcd_wire_2_5_111_0,
      ADR3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      ADR5 => Mmux_bcd_wire_2_5_122,
      ADR4 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      ADR1 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      O => N70
    );
  SevenSegDec_tens_disp_n_1 : X_FF
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_tens_disp_n_1_CLK,
      I => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT1,
      O => SevenSegDec_tens_disp_n(1),
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT111_G : X_LUT6
    generic map(
      LOC => "SLICE_X18Y20",
      INIT => X"003C00FFAE38FFAA"
    )
    port map (
      ADR5 => Mmux_bcd_wire_2_5_122,
      ADR3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      ADR2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      ADR1 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      ADR0 => Mmux_bcd_wire_2_5_111_0,
      ADR4 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      O => N71
    );
  SevenSegDec_ones_disp_n_5 : X_FF
    generic map(
      LOC => "SLICE_X19Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_ones_disp_n_5_CLK,
      I => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT5,
      O => SevenSegDec_ones_disp_n(5),
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT511 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y18",
      INIT => X"500201A008241000"
    )
    port map (
      ADR2 => output_0_OBUF_1176,
      ADR5 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      ADR0 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      ADR4 => N27,
      ADR1 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      ADR3 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT5
    );
  SevenSegDec_ones_disp_n_4 : X_FF
    generic map(
      LOC => "SLICE_X19Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_ones_disp_n_4_CLK,
      I => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT4,
      O => SevenSegDec_ones_disp_n(4),
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y18",
      INIT => X"0001040002010402"
    )
    port map (
      ADR2 => output_0_OBUF_1176,
      ADR0 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      ADR1 => N31_0,
      ADR4 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      ADR5 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT4
    );
  Mmux_bcd_wire_1_2_bcd_wire_1_5_MUX_59_o121 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y18",
      INIT => X"83380AA0A00A8338"
    )
    port map (
      ADR3 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      ADR1 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      ADR0 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_lut_3_Q,
      ADR2 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR5 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q
    );
  SevenSegDec_ones_disp_n_3 : X_FF
    generic map(
      LOC => "SLICE_X19Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_ones_disp_n_3_CLK,
      I => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT3,
      O => SevenSegDec_ones_disp_n(3),
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT311 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y18",
      INIT => X"4858129220214048"
    )
    port map (
      ADR2 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      ADR5 => output_0_OBUF_1176,
      ADR0 => N27,
      ADR1 => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      ADR4 => GND_7_o_bcd_wire_1_5_LessThan_27_o,
      ADR3 => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_lut_3_Q,
      O => SevenSegDec_Mram_bcd_3_GND_17_o_wide_mux_2_OUT3
    );
  SevenSegDisp_CFn : X_SFF
    generic map(
      LOC => "SLICE_X19Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_CFn_CLK,
      I => SevenSegDisp_counter_18_PWR_18_o_Mux_8_o,
      O => SevenSegDisp_CFn_1174,
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_8_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y19",
      INIT => X"FAFFFAF0FA0FFA00"
    )
    port map (
      ADR1 => '1',
      ADR3 => SevenSegDisp_counter(18),
      ADR2 => SevenSegDisp_counter(17),
      ADR0 => SevenSegDec_hund_disp_n_1_Q,
      ADR4 => SevenSegDec_ones_disp_n(1),
      ADR5 => SevenSegDec_tens_disp_n(1),
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_8_o
    );
  Mmux_bcd_wire_2_5_1221 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y21",
      INIT => X"2222000022660000"
    )
    port map (
      ADR2 => '1',
      ADR4 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      ADR1 => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      ADR0 => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      ADR5 => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      O => Mmux_bcd_wire_2_5_122
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT511 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y18"
    )
    port map (
      IA => N64,
      IB => N65,
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT5,
      SEL => bcd_wire_2(4)
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT511_F : X_LUT6
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"0101050120E0A020"
    )
    port map (
      ADR5 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      ADR2 => Mmux_bcd_wire_2_5_111_0,
      ADR0 => Mmux_bcd_wire_2_5_122,
      ADR1 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      O => N64
    );
  SevenSegDec_tens_disp_n_5 : X_FF
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_tens_disp_n_5_CLK,
      I => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT5,
      O => SevenSegDec_tens_disp_n(5),
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT511_G : X_LUT6
    generic map(
      LOC => "SLICE_X20Y18",
      INIT => X"0301000200000303"
    )
    port map (
      ADR1 => Mmux_bcd_wire_2_5_122,
      ADR2 => Mmux_bcd_wire_2_5_111_0,
      ADR5 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      ADR0 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      ADR3 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => N65
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT12 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y19"
    )
    port map (
      IA => N66,
      IB => N67,
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT,
      SEL => bcd_wire_2(4)
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT12_F : X_LUT6
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => X"55C35500A24900AA"
    )
    port map (
      ADR4 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      ADR2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      ADR1 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      ADR5 => Mmux_bcd_wire_2_5_122,
      ADR0 => Mmux_bcd_wire_2_5_111_0,
      O => N66
    );
  SevenSegDec_tens_disp_n_0 : X_FF
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_tens_disp_n_0_CLK,
      I => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT,
      O => SevenSegDec_tens_disp_n(0),
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT12_G : X_LUT6
    generic map(
      LOC => "SLICE_X20Y19",
      INIT => X"63BC66CB33CC33CC"
    )
    port map (
      ADR3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      ADR5 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      ADR0 => Mmux_bcd_wire_2_5_122,
      ADR1 => Mmux_bcd_wire_2_5_111_0,
      O => N67
    );
  SevenSegDisp_CBn : X_SFF
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_CBn_CLK,
      I => SevenSegDisp_counter_18_PWR_18_o_Mux_4_o,
      O => SevenSegDisp_CBn_1170,
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_4_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y18",
      INIT => X"F0F0CFCFF0F0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => SevenSegDisp_counter(17),
      ADR4 => SevenSegDisp_counter(18),
      ADR1 => SevenSegDec_tens_disp_n(5),
      ADR5 => SevenSegDec_ones_disp_n(5),
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_4_o
    );
  SevenSegDisp_CGn : X_SFF
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_CGn_CLK,
      I => SevenSegDisp_counter_18_PWR_18_o_Mux_9_o,
      O => SevenSegDisp_CGn_1175,
      SSET => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_9_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y19",
      INIT => X"FCFFFCF0FC0FFC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => SevenSegDisp_counter(18),
      ADR3 => SevenSegDisp_counter(17),
      ADR5 => SevenSegDec_hund_disp_n_0_Q,
      ADR4 => SevenSegDec_ones_disp_n(0),
      ADR1 => SevenSegDec_tens_disp_n(0),
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_9_o
    );
  SevenSegDisp_CDn : X_SFF
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_CDn_CLK,
      I => SevenSegDisp_counter_18_PWR_18_o_Mux_6_o,
      O => SevenSegDisp_CDn_1172,
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_6_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y17",
      INIT => X"FFFFFF00F0F0CCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => SevenSegDisp_counter(18),
      ADR5 => SevenSegDisp_counter(17),
      ADR2 => SevenSegDec_hund_disp_n_6_Q,
      ADR1 => SevenSegDec_ones_disp_n(3),
      ADR3 => SevenSegDec_tens_disp_n(3),
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_6_o
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT21 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y18"
    )
    port map (
      IA => N68,
      IB => N69,
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT2,
      SEL => bcd_wire_2(4)
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT21_F : X_LUT6
    generic map(
      LOC => "SLICE_X22Y18",
      INIT => X"000000000000C43B"
    )
    port map (
      ADR4 => Mmux_bcd_wire_2_5_122,
      ADR5 => Mmux_bcd_wire_2_5_111_0,
      ADR1 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      ADR0 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      ADR2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => N68
    );
  SevenSegDec_tens_disp_n_2 : X_FF
    generic map(
      LOC => "SLICE_X22Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_tens_disp_n_2_CLK,
      I => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT2,
      O => SevenSegDec_tens_disp_n(2),
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT21_G : X_LUT6
    generic map(
      LOC => "SLICE_X22Y18",
      INIT => X"AA3CFFBEAAFFFFFF"
    )
    port map (
      ADR3 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      ADR5 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR2 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      ADR1 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      ADR4 => Mmux_bcd_wire_2_5_122,
      ADR0 => Mmux_bcd_wire_2_5_111_0,
      O => N69
    );
  SevenSegDisp_CEn : X_SFF
    generic map(
      LOC => "SLICE_X23Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_CEn_CLK,
      I => SevenSegDisp_counter_18_PWR_18_o_Mux_7_o,
      O => SevenSegDisp_CEn_1173,
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_7_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y18",
      INIT => X"FFCCFFF0FFCC00F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => SevenSegDisp_counter(18),
      ADR4 => SevenSegDisp_counter(17),
      ADR5 => SevenSegDec_hund_disp_n_6_Q,
      ADR2 => SevenSegDec_ones_disp_n(2),
      ADR1 => SevenSegDec_tens_disp_n(2),
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_7_o
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT61 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y18"
    )
    port map (
      IA => N72,
      IB => N73,
      O => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT6,
      SEL => bcd_wire_2(4)
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT61_F : X_LUT6
    generic map(
      LOC => "SLICE_X24Y18",
      INIT => X"000A00020005000D"
    )
    port map (
      ADR3 => Mmux_bcd_wire_2_5_122,
      ADR2 => Mmux_bcd_wire_2_5_111_0,
      ADR0 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR5 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      ADR1 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      ADR4 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => N72
    );
  SevenSegDec_tens_disp_n_6 : X_FF
    generic map(
      LOC => "SLICE_X24Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDec_tens_disp_n_6_CLK,
      I => SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT6,
      O => SevenSegDec_tens_disp_n(6),
      RST => GND,
      SET => GND
    );
  SevenSegDec_Mram_bcd_7_GND_17_o_wide_mux_1_OUT61_G : X_LUT6
    generic map(
      LOC => "SLICE_X24Y18",
      INIT => X"00000000A0200A8A"
    )
    port map (
      ADR5 => Mmux_bcd_wire_2_5_122,
      ADR0 => Mmux_bcd_wire_2_5_111_0,
      ADR2 => Madd_bcd_wire_1_10_GND_7_o_add_23_OUT_cy_0_Q,
      ADR4 => Madd_bcd_wire_1_8_GND_7_o_add_35_OUT_cy_0_Q,
      ADR1 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_lut_2_Q,
      ADR3 => Madd_bcd_wire_1_9_GND_7_o_add_29_OUT_cy_0_Q,
      O => N73
    );
  SevenSegDisp_CAn_SevenSegDisp_CAn_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SevenSegDisp_ones_anode_978,
      O => SevenSegDisp_ones_anode_0
    );
  SevenSegDisp_CAn : X_SFF
    generic map(
      LOC => "SLICE_X25Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_CAn_CLK,
      I => SevenSegDisp_counter_18_PWR_18_o_Mux_3_o,
      O => SevenSegDisp_CAn_1128,
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_3_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y17",
      INIT => X"FFF0ACACFFF0ACAC"
    )
    port map (
      ADR2 => SevenSegDisp_counter(18),
      ADR4 => SevenSegDisp_counter(17),
      ADR0 => SevenSegDec_hund_disp_n_6_Q,
      ADR1 => SevenSegDec_ones_disp_n(6),
      ADR3 => SevenSegDec_tens_disp_n(6),
      ADR5 => '1',
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_3_o
    );
  SevenSegDisp_Mram_n004721 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y17",
      INIT => X"FFFFF0F0"
    )
    port map (
      ADR2 => SevenSegDisp_counter(18),
      ADR4 => SevenSegDisp_counter(17),
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => '1',
      O => SevenSegDisp_Mram_n00472
    );
  SevenSegDisp_ones_anode : X_SFF
    generic map(
      LOC => "SLICE_X25Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_ones_anode_CLK,
      I => SevenSegDisp_Mram_n00472,
      O => SevenSegDisp_ones_anode_978,
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_CCn : X_SFF
    generic map(
      LOC => "SLICE_X25Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_CCn_CLK,
      I => SevenSegDisp_counter_18_PWR_18_o_Mux_5_o,
      O => SevenSegDisp_CCn_1171,
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_Mmux_counter_18_PWR_18_o_Mux_5_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y18",
      INIT => X"FFFFBB88CCCCBB88"
    )
    port map (
      ADR2 => '1',
      ADR1 => SevenSegDisp_counter(18),
      ADR4 => SevenSegDisp_counter(17),
      ADR0 => SevenSegDec_hund_disp_n_4_Q,
      ADR3 => SevenSegDec_ones_disp_n(4),
      ADR5 => SevenSegDec_tens_disp_n(4),
      O => SevenSegDisp_counter_18_PWR_18_o_Mux_5_o
    );
  SevenSegDisp_tens_anode_SevenSegDisp_tens_anode_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SevenSegDisp_hund_anode_1005,
      O => SevenSegDisp_hund_anode_0
    );
  SevenSegDisp_tens_anode : X_SFF
    generic map(
      LOC => "SLICE_X27Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_tens_anode_CLK,
      I => SevenSegDisp_Mram_n00471,
      O => SevenSegDisp_tens_anode_1110,
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  SevenSegDisp_Mram_n0047111 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y17",
      INIT => X"FF0FFF0FFF0FFF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => SevenSegDisp_counter(17),
      ADR3 => SevenSegDisp_counter(18),
      ADR5 => '1',
      O => SevenSegDisp_Mram_n00471
    );
  SevenSegDisp_Mram_n004711 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y17",
      INIT => X"F0FFF0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => SevenSegDisp_counter(17),
      ADR3 => SevenSegDisp_counter(18),
      O => SevenSegDisp_Mram_n0047
    );
  SevenSegDisp_hund_anode : X_SFF
    generic map(
      LOC => "SLICE_X27Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_SevenSegDisp_hund_anode_CLK,
      I => SevenSegDisp_Mram_n0047,
      O => SevenSegDisp_hund_anode_1005,
      SRST => Reset_IBUF_0,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  NlwBufferBlock_Mult1_blk00000001_blk00000038_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_Mult1_blk00000001_blk00000038_CLK
    );
  NlwBufferBlock_Mult1_blk00000001_blk00000039_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_Mult1_blk00000001_blk00000039_CLK
    );
  NlwBufferBlock_MISR1_Counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Counter_3_CLK
    );
  NlwBufferBlock_MISR1_Counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Counter_2_CLK
    );
  NlwBufferBlock_MISR1_Counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Counter_1_CLK
    );
  NlwBufferBlock_MISR1_Counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Counter_0_CLK
    );
  NlwBufferBlock_MISR1_Counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Counter_6_CLK
    );
  NlwBufferBlock_MISR1_Counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Counter_5_CLK
    );
  NlwBufferBlock_MISR1_Counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Counter_4_CLK
    );
  NlwBufferBlock_Mult1_blk00000001_blk00000034_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_Mult1_blk00000001_blk00000034_CLK
    );
  NlwBufferBlock_Mult1_blk00000001_blk00000035_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_Mult1_blk00000001_blk00000035_CLK
    );
  NlwBufferBlock_Mult1_blk00000001_blk00000027_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig00000031_0,
      O => NlwBufferSignal_Mult1_blk00000001_blk00000027_DI(0)
    );
  NlwBufferBlock_Mult1_blk00000001_blk00000027_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig0000002c_0,
      O => NlwBufferSignal_Mult1_blk00000001_blk00000027_DI(1)
    );
  NlwBufferBlock_Mult1_blk00000001_blk00000027_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig00000028_0,
      O => NlwBufferSignal_Mult1_blk00000001_blk00000027_DI(2)
    );
  NlwBufferBlock_Mult1_blk00000001_blk00000027_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mult1_blk00000001_sig00000024_0,
      O => NlwBufferSignal_Mult1_blk00000001_blk00000027_DI(3)
    );
  NlwBufferBlock_Mult1_blk00000001_blk00000036_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_Mult1_blk00000001_blk00000036_CLK
    );
  NlwBufferBlock_Mult1_blk00000001_blk00000037_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_Mult1_blk00000001_blk00000037_CLK
    );
  NlwBufferBlock_Mult1_blk00000001_blk00000032_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_Mult1_blk00000001_blk00000032_CLK
    );
  NlwBufferBlock_Mult1_blk00000001_blk00000033_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_Mult1_blk00000001_blk00000033_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_3_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_2_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_1_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_0_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_7_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_6_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_5_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_4_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_11_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_10_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_9_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_8_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_15_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_14_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_13_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_12_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_18_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_18_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_17_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_17_CLK
    );
  NlwBufferBlock_SevenSegDisp_counter_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_counter_16_CLK
    );
  NlwBufferBlock_CAn_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SevenSegDisp_CAn_1128,
      O => NlwBufferSignal_CAn_OBUF_I
    );
  NlwBufferBlock_CBn_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SevenSegDisp_CBn_1170,
      O => NlwBufferSignal_CBn_OBUF_I
    );
  NlwBufferBlock_CCn_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SevenSegDisp_CCn_1171,
      O => NlwBufferSignal_CCn_OBUF_I
    );
  NlwBufferBlock_CDn_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SevenSegDisp_CDn_1172,
      O => NlwBufferSignal_CDn_OBUF_I
    );
  NlwBufferBlock_hund_anode_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SevenSegDisp_hund_anode_0,
      O => NlwBufferSignal_hund_anode_OBUF_I
    );
  NlwBufferBlock_CEn_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SevenSegDisp_CEn_1173,
      O => NlwBufferSignal_CEn_OBUF_I
    );
  NlwBufferBlock_CFn_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SevenSegDisp_CFn_1174,
      O => NlwBufferSignal_CFn_OBUF_I
    );
  NlwBufferBlock_CGn_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SevenSegDisp_CGn_1175,
      O => NlwBufferSignal_CGn_OBUF_I
    );
  NlwBufferBlock_output_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => output_0_OBUF_1176,
      O => NlwBufferSignal_output_0_OBUF_I
    );
  NlwBufferBlock_output_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Madd_bcd_wire_1_4_GND_7_o_add_33_OUT_cy_0_Q,
      O => NlwBufferSignal_output_1_OBUF_I
    );
  NlwBufferBlock_output_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Madd_bcd_wire_1_5_GND_7_o_add_27_OUT_cy_0_Q,
      O => NlwBufferSignal_output_2_OBUF_I
    );
  NlwBufferBlock_output_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Madd_bcd_wire_1_6_GND_7_o_add_21_OUT_cy_0_Q,
      O => NlwBufferSignal_output_3_OBUF_I
    );
  NlwBufferBlock_output_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Madd_bcd_wire_1_7_GND_7_o_add_17_OUT_cy_0_Q,
      O => NlwBufferSignal_output_4_OBUF_I
    );
  NlwBufferBlock_output_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_cy_0_Q,
      O => NlwBufferSignal_output_5_OBUF_I
    );
  NlwBufferBlock_output_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Madd_bcd_wire_1_9_GND_7_o_add_9_OUT_cy_0_Q,
      O => NlwBufferSignal_output_6_OBUF_I
    );
  NlwBufferBlock_output_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Madd_bcd_wire_1_8_GND_7_o_add_13_OUT_lut_2_Q,
      O => NlwBufferSignal_output_7_OBUF_I
    );
  NlwBufferBlock_tens_anode_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SevenSegDisp_tens_anode_1110,
      O => NlwBufferSignal_tens_anode_OBUF_I
    );
  NlwBufferBlock_ones_anode_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => SevenSegDisp_ones_anode_0,
      O => NlwBufferSignal_ones_anode_OBUF_I
    );
  NlwBufferBlock_Clock_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP_IBUFG_0,
      O => NlwBufferSignal_Clock_BUFGP_BUFG_IN
    );
  NlwBufferBlock_SevenSegDec_tens_disp_n_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_tens_disp_n_4_CLK
    );
  NlwBufferBlock_LFSR1_DFF1_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_LFSR1_DFF1_Q_CLK
    );
  NlwBufferBlock_LFSR1_DFF4_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_LFSR1_DFF4_Q_CLK
    );
  NlwBufferBlock_LFSR1_DFF8_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_LFSR1_DFF8_Q_CLK
    );
  NlwBufferBlock_LFSR1_DFF3_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_LFSR1_DFF3_Q_CLK
    );
  NlwBufferBlock_LFSR1_DFF7_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_LFSR1_DFF7_Q_CLK
    );
  NlwBufferBlock_LFSR1_DFF5_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_LFSR1_DFF5_Q_CLK
    );
  NlwBufferBlock_LFSR1_DFF6_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_LFSR1_DFF6_Q_CLK
    );
  NlwBufferBlock_LFSR1_DFF2_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_LFSR1_DFF2_Q_CLK
    );
  NlwBufferBlock_LFSR1_DFF1_inTestMode_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_LFSR1_DFF1_inTestMode_CLK
    );
  NlwBufferBlock_SevenSegDec_ones_disp_n_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_ones_disp_n_6_CLK
    );
  NlwBufferBlock_MISR1_Signature_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Signature_3_CLK
    );
  NlwBufferBlock_MISR1_Signature_3_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MISR1_DFF4_Q_1091,
      O => NlwBufferSignal_MISR1_Signature_3_IN
    );
  NlwBufferBlock_MISR1_Signature_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Signature_2_CLK
    );
  NlwBufferBlock_MISR1_Signature_2_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MISR1_DFF3_Q_1088,
      O => NlwBufferSignal_MISR1_Signature_2_IN
    );
  NlwBufferBlock_MISR1_Signature_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Signature_1_CLK
    );
  NlwBufferBlock_MISR1_Signature_1_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MISR1_DFF2_Q_1086,
      O => NlwBufferSignal_MISR1_Signature_1_IN
    );
  NlwBufferBlock_MISR1_Signature_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Signature_0_CLK
    );
  NlwBufferBlock_MISR1_Signature_0_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MISR1_DFF1_Q_1084,
      O => NlwBufferSignal_MISR1_Signature_0_IN
    );
  NlwBufferBlock_SevenSegDec_hund_disp_n_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_hund_disp_n_4_CLK
    );
  NlwBufferBlock_SevenSegDec_hund_disp_n_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_hund_disp_n_1_CLK
    );
  NlwBufferBlock_SevenSegDec_hund_disp_n_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_hund_disp_n_0_CLK
    );
  NlwBufferBlock_MISR1_Signature_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Signature_7_CLK
    );
  NlwBufferBlock_MISR1_Signature_7_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MISR1_DFF8_Q_1095,
      O => NlwBufferSignal_MISR1_Signature_7_IN
    );
  NlwBufferBlock_MISR1_Signature_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Signature_6_CLK
    );
  NlwBufferBlock_MISR1_Signature_6_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MISR1_DFF7_Q_1094,
      O => NlwBufferSignal_MISR1_Signature_6_IN
    );
  NlwBufferBlock_MISR1_Signature_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Signature_5_CLK
    );
  NlwBufferBlock_MISR1_Signature_5_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MISR1_DFF6_Q_1093,
      O => NlwBufferSignal_MISR1_Signature_5_IN
    );
  NlwBufferBlock_MISR1_Signature_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_Signature_4_CLK
    );
  NlwBufferBlock_MISR1_Signature_4_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => MISR1_DFF5_Q_1092,
      O => NlwBufferSignal_MISR1_Signature_4_IN
    );
  NlwBufferBlock_MISR1_DFF5_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_DFF5_Q_CLK
    );
  NlwBufferBlock_MISR1_select_signal_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_select_signal_CLK
    );
  NlwBufferBlock_MISR1_DFF6_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_DFF6_Q_CLK
    );
  NlwBufferBlock_MISR1_DFF8_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_DFF8_Q_CLK
    );
  NlwBufferBlock_MISR1_DFF7_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_DFF7_Q_CLK
    );
  NlwBufferBlock_MISR1_DFF4_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_DFF4_Q_CLK
    );
  NlwBufferBlock_MISR1_DFF3_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_DFF3_Q_CLK
    );
  NlwBufferBlock_MISR1_DFF1_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_DFF1_Q_CLK
    );
  NlwBufferBlock_MISR1_DFF2_Q_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_MISR1_DFF2_Q_CLK
    );
  NlwBufferBlock_SevenSegDec_tens_disp_n_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_tens_disp_n_3_CLK
    );
  NlwBufferBlock_SevenSegDec_hund_disp_n_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_hund_disp_n_6_CLK
    );
  NlwBufferBlock_SevenSegDec_ones_disp_n_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_ones_disp_n_2_CLK
    );
  NlwBufferBlock_SevenSegDec_ones_disp_n_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_ones_disp_n_1_CLK
    );
  NlwBufferBlock_SevenSegDec_ones_disp_n_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_ones_disp_n_0_CLK
    );
  NlwBufferBlock_SevenSegDec_tens_disp_n_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_tens_disp_n_1_CLK
    );
  NlwBufferBlock_SevenSegDec_ones_disp_n_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_ones_disp_n_5_CLK
    );
  NlwBufferBlock_SevenSegDec_ones_disp_n_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_ones_disp_n_4_CLK
    );
  NlwBufferBlock_SevenSegDec_ones_disp_n_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_ones_disp_n_3_CLK
    );
  NlwBufferBlock_SevenSegDisp_CFn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_CFn_CLK
    );
  NlwBufferBlock_SevenSegDec_tens_disp_n_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_tens_disp_n_5_CLK
    );
  NlwBufferBlock_SevenSegDec_tens_disp_n_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_tens_disp_n_0_CLK
    );
  NlwBufferBlock_SevenSegDisp_CBn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_CBn_CLK
    );
  NlwBufferBlock_SevenSegDisp_CGn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_CGn_CLK
    );
  NlwBufferBlock_SevenSegDisp_CDn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_CDn_CLK
    );
  NlwBufferBlock_SevenSegDec_tens_disp_n_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_tens_disp_n_2_CLK
    );
  NlwBufferBlock_SevenSegDisp_CEn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_CEn_CLK
    );
  NlwBufferBlock_SevenSegDec_tens_disp_n_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDec_tens_disp_n_6_CLK
    );
  NlwBufferBlock_SevenSegDisp_CAn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_CAn_CLK
    );
  NlwBufferBlock_SevenSegDisp_ones_anode_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_ones_anode_CLK
    );
  NlwBufferBlock_SevenSegDisp_CCn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_CCn_CLK
    );
  NlwBufferBlock_SevenSegDisp_tens_anode_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_tens_anode_CLK
    );
  NlwBufferBlock_SevenSegDisp_hund_anode_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clock_BUFGP,
      O => NlwBufferSignal_SevenSegDisp_hund_anode_CLK
    );
  NlwBlock_MultiplierWrapper_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_MultiplierWrapper_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

