--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Usr_interaction_timesim.vhd
-- /___/   /\     Timestamp: Thu Apr 14 10:03:30 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf Usr_interaction.pcf -rpw 100 -tpw 0 -ar Structure -tm Usr_interaction -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Usr_interaction.ncd Usr_interaction_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: Usr_interaction.ncd
-- Output file	: D:\DSDII\Lab4\netgen\par\Usr_interaction_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Usr_interaction
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

entity Usr_interaction is
  port (
    Qrcd_in : in STD_LOGIC := 'X'; 
    Drcd_in : in STD_LOGIC := 'X'; 
    Nrcd_in : in STD_LOGIC := 'X'; 
    Clk_in : in STD_LOGIC := 'X'; 
    Reset_n_in : in STD_LOGIC := 'X'; 
    Soda_req_in : in STD_LOGIC := 'X'; 
    Drop_soda_out : out STD_LOGIC; 
    Qrcd_out : out STD_LOGIC; 
    Drcd_out : out STD_LOGIC; 
    Nrcd_out : out STD_LOGIC; 
    Amt_err : out STD_LOGIC; 
    unused_anode : out STD_LOGIC; 
    hund_anode_out : out STD_LOGIC; 
    tens_anode_out : out STD_LOGIC; 
    ones_anode_out : out STD_LOGIC; 
    CAn_out : out STD_LOGIC; 
    CBn_out : out STD_LOGIC; 
    CCn_out : out STD_LOGIC; 
    CDn_out : out STD_LOGIC; 
    CEn_out : out STD_LOGIC; 
    CFn_out : out STD_LOGIC; 
    CGn_out : out STD_LOGIC; 
    Soda_price_in : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end Usr_interaction;

architecture Structure of Usr_interaction is
  signal Clk_in_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal Clk_in_BUFGP : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_bcd_wire_1_6_GND_8_o_add_20_OUT_lut_2_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Mmux_bcd_wire_1_5_bcd_wire_1_6_MUX_45_o11 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_0 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_bcd_wire_2_4_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_bcd_wire_1_6_LessThan_20_o_1255 : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_cy_0_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_bcd_wire_1_9_LessThan_28_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268 : STD_LOGIC; 
  signal Soda_req_in_IBUF_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_1271 : STD_LOGIC; 
  signal instance0_coin_rx_Qp_1272 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal instance0_coin_rx_Reset_n_inv : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_bcd_wire_1_5_LessThan_26_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_bcd_wire_1_4_GND_8_o_add_32_OUT_lut_2_Q : STD_LOGIC; 
  signal instance0_seven_seg_disp_CAn_1286 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CBn_1288 : STD_LOGIC; 
  signal instance0_seven_seg_disp_ones_anode_1289 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CCn_1291 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CDn_1295 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CEn_1298 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CFn_1300 : STD_LOGIC; 
  signal instance0_seven_seg_disp_CGn_1302 : STD_LOGIC; 
  signal instance0_vending_machine_controller_bcd_wire_2_11_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_bcd_wire_2_10_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_bcd_wire_2_9_Q : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd3_In_1310 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd1_In : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd3_1312 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd2_1313 : STD_LOGIC; 
  signal instance0_coin_rx_D_received_1314 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd1_1315 : STD_LOGIC; 
  signal instance0_coin_rx_Q_received_1316 : STD_LOGIC; 
  signal instance0_coin_rx_coin_cntr_9_PWR_13_o_equal_9_o : STD_LOGIC; 
  signal N24_0 : STD_LOGIC; 
  signal instance0_coin_rx_Np_0 : STD_LOGIC; 
  signal instance0_coin_rx_Dp_1320 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_bcd_wire_1_7_GND_8_o_add_16_OUT_lut_3_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Mmux_bcd_wire_2_11_11_1323 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_cy_0_Q : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_lut_2_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_bcd_wire_1_10_GND_8_o_add_22_OUT_cy_0_Q : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal instance0_coin_rx_n0067 : STD_LOGIC; 
  signal instance0_coin_rx_D_reg_1339 : STD_LOGIC; 
  signal Drcd_out_OBUF_0 : STD_LOGIC; 
  signal instance0_coin_rx_N_received_1341 : STD_LOGIC; 
  signal instance0_coin_rx_N_reg_1342 : STD_LOGIC; 
  signal Qrcd_out_OBUF_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Madd_bcd_wire_1_7_GND_8_o_add_16_OUT_lut_2_Q : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78_0 : STD_LOGIC; 
  signal Nrcd_out_OBUF_0 : STD_LOGIC; 
  signal Soda_price_in_3_IBUF_0 : STD_LOGIC; 
  signal Soda_price_in_2_IBUF_0 : STD_LOGIC; 
  signal Soda_price_in_0_IBUF_0 : STD_LOGIC; 
  signal Soda_price_in_1_IBUF_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_6_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_1362 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_4_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_3_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_2_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_4_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_1_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_0_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_3_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_2_0 : STD_LOGIC; 
  signal Amt_err_OBUF_1380 : STD_LOGIC; 
  signal Drop_soda_out_OBUF_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_5_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_4_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_7_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_6_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_8_0 : STD_LOGIC; 
  signal instance0_seven_seg_disp_hund_anode_0 : STD_LOGIC; 
  signal instance0_seven_seg_disp_tens_anode_1395 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_3_Q_1399 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_7_Q_1404 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_11_Q_1409 : STD_LOGIC; 
  signal instance0_seven_seg_disp_Mcount_counter_cy_15_Q_1414 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr_cy_3_Q_1417 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr_cy_7_Q_1418 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_Q_1420 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_Q_1421 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_Q_1422 : STD_LOGIC;
 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_Q_1423 : STD_LOGIC;
 
  signal instance0_coin_rx_Q_reg_1424 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In1_1426 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal instance0_coin_rx_state_FSM_FFd2_In_1428 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Mmux_bcd_wire_2_11_1 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_1_rt_19 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_2_rt_15 : STD_LOGIC; 
  signal ProtoComp67_CYINITGND_0 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_3_rt_4 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_4_rt_51 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_5_rt_47 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_6_rt_43 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_7_rt_32 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_8_rt_79 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_9_rt_75 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_10_rt_71 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_11_rt_60 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_12_rt_107 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_13_rt_103 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_14_rt_99 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_15_rt_88 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_16_rt_128 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_17_rt_124 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_rt_121 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr1 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr2 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr3 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr4 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr5 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr6 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr7 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr8 : STD_LOGIC; 
  signal instance0_coin_rx_Mcount_coin_cntr9 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi_253 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi1_247 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi2_241 : STD_LOGIC; 
  signal ProtoComp73_CYINITVCC_1 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi3_233 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi4_277 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_lut_271 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_lut1_265 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv : STD_LOGIC; 
  signal ProtoComp75_CYINITGND_0 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_5_rt_335 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_6_rt_331 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_7_rt_319 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_8_rt_356 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_rt_353 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_0_Q_379 : STD_LOGIC;
 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_1_Q_375 : STD_LOGIC;
 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_2_Q_371 : STD_LOGIC;
 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_0_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_1_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_2_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_3_Q : STD_LOGIC; 
  signal ProtoComp78_CYINITVCC_1 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_3_Q_361 : STD_LOGIC;
 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_4_Q_401 : STD_LOGIC;
 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_5_Q_397 : STD_LOGIC;
 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_6_Q_393 : STD_LOGIC;
 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_4_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_5_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_6_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_7_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_7_Q_383 : STD_LOGIC;
 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_8_Q_410 : STD_LOGIC;
 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_9_Q : STD_LOGIC;
 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_8_Q : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_Q : STD_LOGIC; 
  signal Nrcd_out_OBUF_418 : STD_LOGIC; 
  signal Drcd_out_OBUF_439 : STD_LOGIC; 
  signal Clk_in_BUFGP_IBUFG_442 : STD_LOGIC; 
  signal Soda_price_in_0_IBUF_449 : STD_LOGIC; 
  signal Soda_price_in_1_IBUF_452 : STD_LOGIC; 
  signal Soda_req_in_IBUF_455 : STD_LOGIC; 
  signal Soda_price_in_2_IBUF_458 : STD_LOGIC; 
  signal Soda_price_in_3_IBUF_465 : STD_LOGIC; 
  signal ProtoComp83_IINV_OUT : STD_LOGIC; 
  signal instance0_coin_rx_Reset_n_inv_non_inverted : STD_LOGIC; 
  signal Qrcd_out_OBUF_474 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_477 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT8 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT2 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT4 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT1 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT3 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT6 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT5 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT7 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_In_568 : STD_LOGIC; 
  signal N20_pack_13 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_In_544 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_In_580 : STD_LOGIC; 
  signal instance0_coin_rx_next_state_2_GND_12_o_Mux_1_o : STD_LOGIC; 
  signal instance0_coin_rx_Np_609 : STD_LOGIC; 
  signal instance0_coin_rx_next_state_2_GND_12_o_Mux_2_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_9_pack_11 : STD_LOGIC; 
  signal instance0_coin_rx_next_state_2_GND_12_o_Mux_0_o : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Mmux_bcd_wire_2_11_11_pack_9 : STD_LOGIC; 
  signal instance0_vending_machine_controller_Mmux_bcd_wire_2_11_1_pack_11 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT6 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT1_875 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT2 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT5 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT3 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT4 : STD_LOGIC; 
  signal instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT6 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_9_o : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_7_o : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT6 : STD_LOGIC; 
  signal instance0_vending_machine_controller_bcd_wire_2_4_pack_7 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT1 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT2 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_8_o : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT1 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT2 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT3 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT4 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT5 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT3 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT4 : STD_LOGIC; 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT5 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_3_o : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_5_o : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_6_o : STD_LOGIC; 
  signal instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_4_o : STD_LOGIC; 
  signal Drop_soda_out_OBUF_1194 : STD_LOGIC; 
  signal instance0_seven_seg_disp_ones_anode_glue_set_1201 : STD_LOGIC; 
  signal instance0_seven_seg_disp_hund_anode_1208 : STD_LOGIC; 
  signal instance0_seven_seg_disp_hund_anode_glue_set_1207 : STD_LOGIC; 
  signal instance0_seven_seg_disp_tens_anode_glue_set_1206 : STD_LOGIC; 
  signal NlwBufferSignal_Clk_in_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_counter_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_coin_cntr_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_DI_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Amt_err_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Drcd_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CEn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CBn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_ones_anode_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_tens_anode_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CFn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Qrcd_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CCn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Nrcd_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CGn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Drop_soda_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CDn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_hund_anode_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_CAn_out_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Q_received_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Q_received_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Q_reg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Q_reg_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_state_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Dp_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Np_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_state_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_D_received_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_D_received_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_state_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_Qp_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_N_received_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_N_received_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_D_reg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_D_reg_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_N_reg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_coin_rx_N_reg_IN : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CEn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CGn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CFn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CAn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CDn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CCn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_CBn_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_ones_anode_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_tens_anode_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instance0_seven_seg_disp_hund_anode_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_N0_30_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_31_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_32_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_unused_anode_OBUF_1_4_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_26_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_27_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_28_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_29_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_22_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_23_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_24_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_25_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_18_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_19_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_20_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_21_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_16_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_17_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_12_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_13_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_14_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_15_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_8_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_9_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_10_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_11_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_7_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_unused_anode_OBUF_1_6_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_35_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_2_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_3_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_4_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_CO_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_CO_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_CO_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_CO_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_CO_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_CO_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_CO_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_CO_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_CO_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_CO_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_DI_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_DI_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_DI_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_O_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_O_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_S_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_S_3_UNCONNECTED : STD_LOGIC;
 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal instance0_seven_seg_disp_counter : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_14_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_coin_rx_coin_cntr : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy : STD_LOGIC_VECTOR ( 4 downto 3 ); 
  signal instance0_seven_seg_disp_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal instance0_seven_seg_disp_Result : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal instance0_coin_rx_Mcount_coin_cntr_lut : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal instance0_vending_machine_controller_instance0_Coin_Controller_n0105 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  Clk_in_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 115 ps
    )
    port map (
      I => NlwBufferSignal_Clk_in_BUFGP_BUFG_IN,
      O => Clk_in_BUFGP
    );
  instance0_seven_seg_disp_counter_3 : X_SFF
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_3_CLK,
      I => instance0_seven_seg_disp_Result(3),
      O => instance0_seven_seg_disp_counter(3),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(3),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_3_rt_4
    );
  N0_30_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_30_D5LUT_O_UNCONNECTED
    );
  ProtoComp67_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X26Y9"
    )
    port map (
      O => ProtoComp67_CYINITGND_0
    );
  instance0_seven_seg_disp_counter_2 : X_SFF
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_2_CLK,
      I => instance0_seven_seg_disp_Result(2),
      O => instance0_seven_seg_disp_counter(2),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_Mcount_counter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y9"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp67_CYINITGND_0,
      CO(3) => instance0_seven_seg_disp_Mcount_counter_cy_3_Q_1399,
      CO(2) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => instance0_seven_seg_disp_Result(3),
      O(2) => instance0_seven_seg_disp_Result(2),
      O(1) => instance0_seven_seg_disp_Result(1),
      O(0) => instance0_seven_seg_disp_Result(0),
      S(3) => instance0_seven_seg_disp_counter_3_rt_4,
      S(2) => instance0_seven_seg_disp_counter_2_rt_15,
      S(1) => instance0_seven_seg_disp_counter_1_rt_19,
      S(0) => instance0_seven_seg_disp_Mcount_counter_lut(0)
    );
  instance0_seven_seg_disp_counter_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(2),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_2_rt_15
    );
  N0_31_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_31_C5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_1 : X_SFF
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_1_CLK,
      I => instance0_seven_seg_disp_Result(1),
      O => instance0_seven_seg_disp_counter(1),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(1),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_1_rt_19
    );
  N0_32_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_32_B5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_0 : X_SFF
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_0_CLK,
      I => instance0_seven_seg_disp_Result(0),
      O => instance0_seven_seg_disp_counter(0),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_Mcount_counter_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instance0_seven_seg_disp_counter(0),
      ADR4 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_Mcount_counter_lut(0)
    );
  unused_anode_OBUF_1_4_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y9",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_unused_anode_OBUF_1_4_A5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_7 : X_SFF
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_7_CLK,
      I => instance0_seven_seg_disp_Result(7),
      O => instance0_seven_seg_disp_counter(7),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(7),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_7_rt_32
    );
  N0_26_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_26_D5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_6 : X_SFF
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_6_CLK,
      I => instance0_seven_seg_disp_Result(6),
      O => instance0_seven_seg_disp_counter(6),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_Mcount_counter_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y10"
    )
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy_3_Q_1399,
      CYINIT => '0',
      CO(3) => instance0_seven_seg_disp_Mcount_counter_cy_7_Q_1404,
      CO(2) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => instance0_seven_seg_disp_Result(7),
      O(2) => instance0_seven_seg_disp_Result(6),
      O(1) => instance0_seven_seg_disp_Result(5),
      O(0) => instance0_seven_seg_disp_Result(4),
      S(3) => instance0_seven_seg_disp_counter_7_rt_32,
      S(2) => instance0_seven_seg_disp_counter_6_rt_43,
      S(1) => instance0_seven_seg_disp_counter_5_rt_47,
      S(0) => instance0_seven_seg_disp_counter_4_rt_51
    );
  instance0_seven_seg_disp_counter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(6),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_6_rt_43
    );
  N0_27_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_27_C5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_5 : X_SFF
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_5_CLK,
      I => instance0_seven_seg_disp_Result(5),
      O => instance0_seven_seg_disp_counter(5),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(5),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_5_rt_47
    );
  N0_28_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_28_B5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_4 : X_SFF
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_4_CLK,
      I => instance0_seven_seg_disp_Result(4),
      O => instance0_seven_seg_disp_counter(4),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instance0_seven_seg_disp_counter(4),
      ADR4 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_4_rt_51
    );
  N0_29_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_29_A5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_11 : X_SFF
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_11_CLK,
      I => instance0_seven_seg_disp_Result(11),
      O => instance0_seven_seg_disp_counter(11),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(11),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_11_rt_60
    );
  N0_22_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_22_D5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_10 : X_SFF
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_10_CLK,
      I => instance0_seven_seg_disp_Result(10),
      O => instance0_seven_seg_disp_counter(10),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_Mcount_counter_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y11"
    )
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy_7_Q_1404,
      CYINIT => '0',
      CO(3) => instance0_seven_seg_disp_Mcount_counter_cy_11_Q_1409,
      CO(2) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => instance0_seven_seg_disp_Result(11),
      O(2) => instance0_seven_seg_disp_Result(10),
      O(1) => instance0_seven_seg_disp_Result(9),
      O(0) => instance0_seven_seg_disp_Result(8),
      S(3) => instance0_seven_seg_disp_counter_11_rt_60,
      S(2) => instance0_seven_seg_disp_counter_10_rt_71,
      S(1) => instance0_seven_seg_disp_counter_9_rt_75,
      S(0) => instance0_seven_seg_disp_counter_8_rt_79
    );
  instance0_seven_seg_disp_counter_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(10),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_10_rt_71
    );
  N0_23_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_23_C5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_9 : X_SFF
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_9_CLK,
      I => instance0_seven_seg_disp_Result(9),
      O => instance0_seven_seg_disp_counter(9),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(9),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_9_rt_75
    );
  N0_24_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_24_B5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_8 : X_SFF
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_8_CLK,
      I => instance0_seven_seg_disp_Result(8),
      O => instance0_seven_seg_disp_counter(8),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instance0_seven_seg_disp_counter(8),
      ADR4 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_8_rt_79
    );
  N0_25_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_25_A5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_15 : X_SFF
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_15_CLK,
      I => instance0_seven_seg_disp_Result(15),
      O => instance0_seven_seg_disp_counter(15),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(15),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_15_rt_88
    );
  N0_18_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_18_D5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_14 : X_SFF
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_14_CLK,
      I => instance0_seven_seg_disp_Result(14),
      O => instance0_seven_seg_disp_counter(14),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_Mcount_counter_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y12"
    )
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy_11_Q_1409,
      CYINIT => '0',
      CO(3) => instance0_seven_seg_disp_Mcount_counter_cy_15_Q_1414,
      CO(2) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_seven_seg_disp_Mcount_counter_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => instance0_seven_seg_disp_Result(15),
      O(2) => instance0_seven_seg_disp_Result(14),
      O(1) => instance0_seven_seg_disp_Result(13),
      O(0) => instance0_seven_seg_disp_Result(12),
      S(3) => instance0_seven_seg_disp_counter_15_rt_88,
      S(2) => instance0_seven_seg_disp_counter_14_rt_99,
      S(1) => instance0_seven_seg_disp_counter_13_rt_103,
      S(0) => instance0_seven_seg_disp_counter_12_rt_107
    );
  instance0_seven_seg_disp_counter_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(14),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_14_rt_99
    );
  N0_19_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_19_C5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_13 : X_SFF
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_13_CLK,
      I => instance0_seven_seg_disp_Result(13),
      O => instance0_seven_seg_disp_counter(13),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(13),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_13_rt_103
    );
  N0_20_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_20_B5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_12 : X_SFF
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_12_CLK,
      I => instance0_seven_seg_disp_Result(12),
      O => instance0_seven_seg_disp_counter(12),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instance0_seven_seg_disp_counter(12),
      ADR4 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_12_rt_107
    );
  N0_21_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_21_A5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_18 : X_SFF
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_18_CLK,
      I => instance0_seven_seg_disp_Result(18),
      O => instance0_seven_seg_disp_counter(18),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_Mcount_counter_xor_18_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X26Y13"
    )
    port map (
      CI => instance0_seven_seg_disp_Mcount_counter_cy_15_Q_1414,
      CYINIT => '0',
      CO(3) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_3_UNCONNECTED,
      CO(2) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_CO_0_UNCONNECTED,
      DI(3) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_DI_3_UNCONNECTED,
      DI(2) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_DI_2_UNCONNECTED,
      DI(1) => '0',
      DI(0) => '0',
      O(3) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_O_3_UNCONNECTED,
      O(2) => instance0_seven_seg_disp_Result(18),
      O(1) => instance0_seven_seg_disp_Result(17),
      O(0) => instance0_seven_seg_disp_Result(16),
      S(3) => NLW_instance0_seven_seg_disp_Mcount_counter_xor_18_S_3_UNCONNECTED,
      S(2) => instance0_seven_seg_disp_counter_18_rt_121,
      S(1) => instance0_seven_seg_disp_counter_17_rt_124,
      S(0) => instance0_seven_seg_disp_counter_16_rt_128
    );
  instance0_seven_seg_disp_counter_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(18),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_18_rt_121
    );
  instance0_seven_seg_disp_counter_17 : X_SFF
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_17_CLK,
      I => instance0_seven_seg_disp_Result(17),
      O => instance0_seven_seg_disp_counter(17),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_seven_seg_disp_counter(17),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_17_rt_124
    );
  N0_16_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_16_B5LUT_O_UNCONNECTED
    );
  instance0_seven_seg_disp_counter_16 : X_SFF
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_counter_16_CLK,
      I => instance0_seven_seg_disp_Result(16),
      O => instance0_seven_seg_disp_counter(16),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_seven_seg_disp_counter_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => instance0_seven_seg_disp_counter(16),
      ADR4 => '1',
      ADR5 => '1',
      O => instance0_seven_seg_disp_counter_16_rt_128
    );
  N0_17_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X26Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_17_A5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_3 : X_SFF
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_3_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr3,
      O => instance0_coin_rx_coin_cntr(3),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"0C00CC000C00CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR2 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR3 => instance0_coin_rx_coin_cntr(3),
      ADR4 => instance0_coin_rx_state_FSM_FFd1_1315,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(3)
    );
  N0_12_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_12_D5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_2 : X_SFF
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_2_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr2,
      O => instance0_coin_rx_coin_cntr(2),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y26"
    )
    port map (
      CI => '0',
      CYINIT => instance0_coin_rx_n0067,
      CO(3) => instance0_coin_rx_Mcount_coin_cntr_cy_3_Q_1417,
      CO(2) => NLW_instance0_coin_rx_Mcount_coin_cntr_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_coin_rx_Mcount_coin_cntr_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_coin_rx_Mcount_coin_cntr_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => instance0_coin_rx_Mcount_coin_cntr3,
      O(2) => instance0_coin_rx_Mcount_coin_cntr2,
      O(1) => instance0_coin_rx_Mcount_coin_cntr1,
      O(0) => instance0_coin_rx_Mcount_coin_cntr,
      S(3) => instance0_coin_rx_Mcount_coin_cntr_lut(3),
      S(2) => instance0_coin_rx_Mcount_coin_cntr_lut(2),
      S(1) => instance0_coin_rx_Mcount_coin_cntr_lut(1),
      S(0) => instance0_coin_rx_Mcount_coin_cntr_lut(0)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"50F0000050F00000"
    )
    port map (
      ADR1 => '1',
      ADR2 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR0 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR4 => instance0_coin_rx_coin_cntr(2),
      ADR3 => instance0_coin_rx_state_FSM_FFd1_1315,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(2)
    );
  N0_13_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_13_C5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_1 : X_SFF
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_1_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr1,
      O => instance0_coin_rx_coin_cntr(1),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"44CC000044CC0000"
    )
    port map (
      ADR2 => '1',
      ADR1 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR3 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR4 => instance0_coin_rx_coin_cntr(1),
      ADR0 => instance0_coin_rx_state_FSM_FFd1_1315,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(1)
    );
  N0_14_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_14_B5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_0 : X_SFF
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_0_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr,
      O => instance0_coin_rx_coin_cntr(0),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"7070000070700000"
    )
    port map (
      ADR3 => '1',
      ADR2 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR1 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR4 => instance0_coin_rx_coin_cntr(0),
      ADR0 => instance0_coin_rx_state_FSM_FFd1_1315,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(0)
    );
  N0_15_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_15_A5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_7 : X_SFF
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_7_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr7,
      O => instance0_coin_rx_coin_cntr(7),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"0CCC00000CCC0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR2 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR4 => instance0_coin_rx_coin_cntr(7),
      ADR3 => instance0_coin_rx_state_FSM_FFd1_1315,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(7)
    );
  N0_8_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_8_D5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_6 : X_SFF
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_6_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr6,
      O => instance0_coin_rx_coin_cntr(6),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y27"
    )
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy_3_Q_1417,
      CYINIT => '0',
      CO(3) => instance0_coin_rx_Mcount_coin_cntr_cy_7_Q_1418,
      CO(2) => NLW_instance0_coin_rx_Mcount_coin_cntr_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_coin_rx_Mcount_coin_cntr_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_coin_rx_Mcount_coin_cntr_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => instance0_coin_rx_Mcount_coin_cntr7,
      O(2) => instance0_coin_rx_Mcount_coin_cntr6,
      O(1) => instance0_coin_rx_Mcount_coin_cntr5,
      O(0) => instance0_coin_rx_Mcount_coin_cntr4,
      S(3) => instance0_coin_rx_Mcount_coin_cntr_lut(7),
      S(2) => instance0_coin_rx_Mcount_coin_cntr_lut(6),
      S(1) => instance0_coin_rx_Mcount_coin_cntr_lut(5),
      S(0) => instance0_coin_rx_Mcount_coin_cntr_lut(4)
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"5F0000005F000000"
    )
    port map (
      ADR1 => '1',
      ADR3 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR0 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR4 => instance0_coin_rx_coin_cntr(6),
      ADR2 => instance0_coin_rx_state_FSM_FFd1_1315,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(6)
    );
  N0_9_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_9_C5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_5 : X_SFF
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_5_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr5,
      O => instance0_coin_rx_coin_cntr(5),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"22AA000022AA0000"
    )
    port map (
      ADR2 => '1',
      ADR0 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR3 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR4 => instance0_coin_rx_coin_cntr(5),
      ADR1 => instance0_coin_rx_state_FSM_FFd1_1315,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(5)
    );
  N0_10_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_10_B5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_coin_cntr_4 : X_SFF
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_4_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr4,
      O => instance0_coin_rx_coin_cntr(4),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"7070000070700000"
    )
    port map (
      ADR3 => '1',
      ADR2 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR0 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR4 => instance0_coin_rx_coin_cntr(4),
      ADR1 => instance0_coin_rx_state_FSM_FFd1_1315,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(4)
    );
  N0_11_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_11_A5LUT_O_UNCONNECTED
    );
  instance0_coin_rx_Mcount_coin_cntr_xor_9_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y28"
    )
    port map (
      CI => instance0_coin_rx_Mcount_coin_cntr_cy_7_Q_1418,
      CYINIT => '0',
      CO(3) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_3_UNCONNECTED,
      CO(2) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_CO_0_UNCONNECTED,
      DI(3) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_DI_3_UNCONNECTED,
      DI(2) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_DI_2_UNCONNECTED,
      DI(1) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_O_3_UNCONNECTED,
      O(2) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_O_2_UNCONNECTED,
      O(1) => instance0_coin_rx_Mcount_coin_cntr9,
      O(0) => instance0_coin_rx_Mcount_coin_cntr8,
      S(3) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_S_3_UNCONNECTED,
      S(2) => NLW_instance0_coin_rx_Mcount_coin_cntr_xor_9_S_2_UNCONNECTED,
      S(1) => instance0_coin_rx_Mcount_coin_cntr_lut(9),
      S(0) => instance0_coin_rx_Mcount_coin_cntr_lut(8)
    );
  instance0_coin_rx_coin_cntr_9 : X_SFF
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_9_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr9,
      O => instance0_coin_rx_coin_cntr(9),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => X"2A2A00002A2A0000"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR0 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR4 => instance0_coin_rx_coin_cntr(9),
      ADR2 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR1 => instance0_coin_rx_state_FSM_FFd1_1315,
      O => instance0_coin_rx_Mcount_coin_cntr_lut(9)
    );
  instance0_coin_rx_coin_cntr_8 : X_SFF
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_coin_cntr_8_CLK,
      I => instance0_coin_rx_Mcount_coin_cntr8,
      O => instance0_coin_rx_coin_cntr(8),
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Mcount_coin_cntr_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => X"30F0000030F00000"
    )
    port map (
      ADR0 => '1',
      ADR2 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR3 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR4 => instance0_coin_rx_coin_cntr(8),
      ADR1 => instance0_coin_rx_state_FSM_FFd1_1315,
      ADR5 => '1',
      O => instance0_coin_rx_Mcount_coin_cntr_lut(8)
    );
  N0_7_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_7_A5LUT_O_UNCONNECTED
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"C30000C3C30000C3"
    )
    port map (
      ADR0 => '1',
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_6_0,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(6),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(7),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(7),
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut(3)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"0CCF0C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_6_0,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(6),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(7),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(7),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi3_233
    );
  ProtoComp73_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X12Y13"
    )
    port map (
      O => ProtoComp73_CYINITVCC_1
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y13"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp73_CYINITVCC_1,
      CO(3) => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy(3),
      CO(2) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_CO_0_UNCONNECTED,
      DI(3) => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi3_233,
      DI(2) => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi2_241,
      DI(1) => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi1_247,
      DI(0) => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi_253,
      O(3) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_3_O_0_UNCONNECTED,
      S(3) => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut(3),
      S(2) => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut(2),
      S(1) => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut(1),
      S(0) => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut(0)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"A0500A05A0500A05"
    )
    port map (
      ADR1 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_4_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(4),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(5),
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(5),
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut(2)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"00AAA0FA"
    )
    port map (
      ADR1 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_4_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(4),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(5),
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(5),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi2_241
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"8241824182418241"
    )
    port map (
      ADR4 => '1',
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_2_0,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(2),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_3_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(3),
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut(1)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"71307130"
    )
    port map (
      ADR4 => '1',
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_2_0,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(2),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_3_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(3),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi1_247
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"8421842184218421"
    )
    port map (
      ADR4 => '1',
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(0),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(0),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(1),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(1),
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut(0)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"40DC40DC"
    )
    port map (
      ADR4 => '1',
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(0),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(0),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(1),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(1),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi_253
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy(4),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_4_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1 : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y14"
    )
    port map (
      CI => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy(3),
      CYINIT => '0',
      CO(3) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_CO_3_UNCONNECTED,
      CO(2) => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv,
      CO(1) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_CO_1_UNCONNECTED,
      CO(0) => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy(4),
      DI(3) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_DI_3_UNCONNECTED,
      DI(2) => '1',
      DI(1) => '0',
      DI(0) => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi4_277,
      O(3) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_O_3_UNCONNECTED,
      O(2) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_O_2_UNCONNECTED,
      O(1) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_O_1_UNCONNECTED,
      O(0) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_O_0_UNCONNECTED,
      S(3) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_cy1_S_3_UNCONNECTED,
      S(2) => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_lut1_265,
      S(1) => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_lut_271,
      S(0) => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut(4)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_lut1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"FFFFFFF3FFFFFFF3"
    )
    port map (
      ADR0 => '1',
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_1271,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_1362,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_lut1_265
    );
  unused_anode_OBUF_1_6_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_unused_anode_OBUF_1_6_C5LUT_O_UNCONNECTED
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_lut : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"1010101010101010"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_1271,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_1362,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv1_lut_271
    );
  N0_35_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_35_B5LUT_O_UNCONNECTED
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"00C300C300C300C3"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(9),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(8),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(8),
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lut(4)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"000C000C"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(9),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(8),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(8),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_lutdi4_277
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_3_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Result(3),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(3),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"CCCC00003333FFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(3),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut(3)
    );
  ProtoComp75_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      O => ProtoComp75_CYINITGND_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_2_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Result(2),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(2),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp75_CYINITGND_0,
      CO(3) => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_Q_1420,
      CO(2) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_1_Q,
      DI(0) => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_0_Q,
      O(3) => instance0_vending_machine_controller_instance0_Coin_Controller_Result(3),
      O(2) => instance0_vending_machine_controller_instance0_Coin_Controller_Result(2),
      O(1) => instance0_vending_machine_controller_instance0_Coin_Controller_Result(1),
      O(0) => instance0_vending_machine_controller_instance0_Coin_Controller_Result(0),
      S(3) => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut(3),
      S(2) => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut(2),
      S(1) => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut(1),
      S(0) => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut(0)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"0FFFF0000FFFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(2),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut(2)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_1_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Result(1),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(1),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"FF0000FFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(1),
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut(1)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_0_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Result(0),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(0),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"55005500AAFFAAFF"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(0),
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut(0)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_7_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Result(7),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(7),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(7),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_7_rt_319
    );
  N0_2_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_2_D5LUT_O_UNCONNECTED
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_6_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Result(6),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(6),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      CI => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_Q_1420,
      CYINIT => '0',
      CO(3) => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_Q_1421,
      CO(2) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_DI_0_Q,
      O(3) => instance0_vending_machine_controller_instance0_Coin_Controller_Result(7),
      O(2) => instance0_vending_machine_controller_instance0_Coin_Controller_Result(6),
      O(1) => instance0_vending_machine_controller_instance0_Coin_Controller_Result(5),
      O(0) => instance0_vending_machine_controller_instance0_Coin_Controller_Result(4),
      S(3) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_7_rt_319,
      S(2) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_6_rt_331,
      S(1) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_5_rt_335,
      S(0) => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut(4)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(6),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_6_rt_331
    );
  N0_3_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_3_C5LUT_O_UNCONNECTED
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_5_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Result(5),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(5),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(5),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_5_rt_335
    );
  N0_4_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_4_B5LUT_O_UNCONNECTED
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_4_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Result(4),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(4),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"CCCCCCCC33333333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(4),
      ADR4 => '1',
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_lut(4)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y18"
    )
    port map (
      CI => instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_Q_1421,
      CYINIT => '0',
      CO(3) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_CO_3_UNCONNECTED,
      CO(2) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_CO_2_UNCONNECTED,
      CO(1) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_CO_1_UNCONNECTED,
      CO(0) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_CO_0_UNCONNECTED,
      DI(3) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_DI_3_UNCONNECTED,
      DI(2) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_DI_2_UNCONNECTED,
      DI(1) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_O_3_UNCONNECTED,
      O(2) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_O_2_UNCONNECTED,
      O(1) => instance0_vending_machine_controller_instance0_Coin_Controller_Result(9),
      O(0) => instance0_vending_machine_controller_instance0_Coin_Controller_Result(8),
      S(3) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_S_3_UNCONNECTED,
      S(2) => NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_xor_9_S_2_UNCONNECTED,
      S(1) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_rt_353,
      S(0) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_8_rt_356
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9 : X_FF
    generic map(
      LOC => "SLICE_X14Y18",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Result(9),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(9),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y18",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(9),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_rt_353
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_8 : X_FF
    generic map(
      LOC => "SLICE_X14Y18",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_8_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Result(8),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(8),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X14Y18",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(8),
      ADR3 => '1',
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_8_rt_356
    );
  N0_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_A5LUT_O_UNCONNECTED
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_3_Q,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_3_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_2_Q,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_2_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_1_Q,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_1_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_0_Q,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_0_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y13",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(3),
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_3_0,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_3_Q_361
    );
  ProtoComp78_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X14Y13"
    )
    port map (
      O => ProtoComp78_CYINITVCC_1
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y13"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp78_CYINITVCC_1,
      CO(3) => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_Q_1422,
      CO(2) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_CO_2_UNCONNECTED,
      CO(1) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_CO_1_UNCONNECTED,
      CO(0) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_CO_0_UNCONNECTED,
      DI(3) => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_3_Q
,
      DI(2) => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_2_Q
,
      DI(1) => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_1_Q
,
      DI(0) => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_0_Q
,
      O(3) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_3_Q,
      O(2) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_2_Q,
      O(1) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_1_Q,
      O(0) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_0_Q,
      S(3) => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_3_Q_361,
      S(2) => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_2_Q_371,
      S(1) => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_1_Q_375,
      S(0) => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_0_Q_379
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y13",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(2),
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_2_0,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_2_Q_371
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y13",
      INIT => X"AAAAAAAA55555555"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(1),
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(1),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_1_Q_375
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y13",
      INIT => X"FF00FF0000FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(0),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(0),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_0_Q_379
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_7_Q,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_7_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_6_Q,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_6_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_5_Q,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_5_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_4_Q,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_4_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"FFFF00000000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(7),
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(7),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_7_Q_383
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      CI => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_Q_1422,
      CYINIT => '0',
      CO(3) => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_Q_1423,
      CO(2) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_CO_2_UNCONNECTED,
      CO(1) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_CO_1_UNCONNECTED,
      CO(0) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_CO_0_UNCONNECTED,
      DI(3) => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_3_Q
,
      DI(2) => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_2_Q
,
      DI(1) => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_1_Q
,
      DI(0) => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_0_Q
,
      O(3) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_7_Q,
      O(2) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_6_Q,
      O(1) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_5_Q,
      O(0) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_4_Q,
      S(3) => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_7_Q_383,
      S(2) => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_6_Q_393,
      S(1) => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_5_Q_397,
      S(0) => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_4_Q_401
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"F0F00F0FF0F00F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(6),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_6_0,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_6_Q_393
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"FF0000FFFF0000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(5),
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(5),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_5_Q_397
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"F0F0F0F00F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(4),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_4_0,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_4_Q_401
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_Q,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_8_Q,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_8_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      CI => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_Q_1423,
      CYINIT => '0',
      CO(3) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_CO_3_UNCONNECTED,
      CO(2) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_CO_2_UNCONNECTED,
      CO(1) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_CO_1_UNCONNECTED,
      CO(0) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_CO_0_UNCONNECTED,
      DI(3) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_DI_3_UNCONNECTED,
      DI(2) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_DI_2_UNCONNECTED,
      DI(1) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_DI_1_UNCONNECTED,
      DI(0) => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_DI_0_Q
,
      O(3) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_O_3_UNCONNECTED,
      O(2) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_O_2_UNCONNECTED,
      O(1) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_Q,
      O(0) => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_8_Q,
      S(3) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_S_3_UNCONNECTED,
      S(2) => 
NLW_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_S_2_UNCONNECTED,
      S(1) => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_9_Q,
      S(0) => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_8_Q_410
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_9_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(9),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_9_Q
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"FF00FF0000FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(8),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(8),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_lut_8_Q_410
    );
  Amt_err_OBUF : X_OBUF
    generic map(
      LOC => "PAD141"
    )
    port map (
      I => NlwBufferSignal_Amt_err_OBUF_I,
      O => Amt_err
    );
  Drcd_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD139"
    )
    port map (
      I => NlwBufferSignal_Drcd_out_OBUF_I,
      O => Drcd_out
    );
  Nrcd_in_IBUF : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 115 ps
    )
    port map (
      O => Nrcd_out_OBUF_418,
      I => Nrcd_in
    );
  ProtoComp82_IMUX : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 115 ps
    )
    port map (
      I => Nrcd_out_OBUF_418,
      O => Nrcd_out_OBUF_0
    );
  CEn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD117"
    )
    port map (
      I => NlwBufferSignal_CEn_out_OBUF_I,
      O => CEn_out
    );
  CBn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD114"
    )
    port map (
      I => NlwBufferSignal_CBn_out_OBUF_I,
      O => CBn_out
    );
  unused_anode_OBUF : X_OBUF
    generic map(
      LOC => "PAD109"
    )
    port map (
      I => '1',
      O => unused_anode
    );
  ones_anode_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD112"
    )
    port map (
      I => NlwBufferSignal_ones_anode_out_OBUF_I,
      O => ones_anode_out
    );
  tens_anode_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD111"
    )
    port map (
      I => NlwBufferSignal_tens_anode_out_OBUF_I,
      O => tens_anode_out
    );
  CFn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD118"
    )
    port map (
      I => NlwBufferSignal_CFn_out_OBUF_I,
      O => CFn_out
    );
  Qrcd_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD140"
    )
    port map (
      I => NlwBufferSignal_Qrcd_out_OBUF_I,
      O => Qrcd_out
    );
  CCn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD115"
    )
    port map (
      I => NlwBufferSignal_CCn_out_OBUF_I,
      O => CCn_out
    );
  Nrcd_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD130"
    )
    port map (
      I => NlwBufferSignal_Nrcd_out_OBUF_I,
      O => Nrcd_out
    );
  Drcd_in_IBUF : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 115 ps
    )
    port map (
      O => Drcd_out_OBUF_439,
      I => Drcd_in
    );
  ProtoComp82_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 115 ps
    )
    port map (
      I => Drcd_out_OBUF_439,
      O => Drcd_out_OBUF_0
    );
  Clk_in_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 115 ps
    )
    port map (
      O => Clk_in_BUFGP_IBUFG_442,
      I => Clk_in
    );
  ProtoComp82_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP_IBUFG_442,
      O => Clk_in_BUFGP_IBUFG_0
    );
  CGn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD119"
    )
    port map (
      I => NlwBufferSignal_CGn_out_OBUF_I,
      O => CGn_out
    );
  Drop_soda_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => NlwBufferSignal_Drop_soda_out_OBUF_I,
      O => Drop_soda_out
    );
  Soda_price_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 115 ps
    )
    port map (
      O => Soda_price_in_0_IBUF_449,
      I => Soda_price_in(0)
    );
  ProtoComp82_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 115 ps
    )
    port map (
      I => Soda_price_in_0_IBUF_449,
      O => Soda_price_in_0_IBUF_0
    );
  Soda_price_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 115 ps
    )
    port map (
      O => Soda_price_in_1_IBUF_452,
      I => Soda_price_in(1)
    );
  ProtoComp82_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 115 ps
    )
    port map (
      I => Soda_price_in_1_IBUF_452,
      O => Soda_price_in_1_IBUF_0
    );
  Soda_req_in_IBUF : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 115 ps
    )
    port map (
      O => Soda_req_in_IBUF_455,
      I => Soda_req_in
    );
  ProtoComp82_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 115 ps
    )
    port map (
      I => Soda_req_in_IBUF_455,
      O => Soda_req_in_IBUF_0
    );
  Soda_price_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 115 ps
    )
    port map (
      O => Soda_price_in_2_IBUF_458,
      I => Soda_price_in(2)
    );
  ProtoComp82_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 115 ps
    )
    port map (
      I => Soda_price_in_2_IBUF_458,
      O => Soda_price_in_2_IBUF_0
    );
  CDn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD116"
    )
    port map (
      I => NlwBufferSignal_CDn_out_OBUF_I,
      O => CDn_out
    );
  hund_anode_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD110"
    )
    port map (
      I => NlwBufferSignal_hund_anode_out_OBUF_I,
      O => hund_anode_out
    );
  Soda_price_in_3_IBUF : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 115 ps
    )
    port map (
      O => Soda_price_in_3_IBUF_465,
      I => Soda_price_in(3)
    );
  ProtoComp82_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 115 ps
    )
    port map (
      I => Soda_price_in_3_IBUF_465,
      O => Soda_price_in_3_IBUF_0
    );
  CAn_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD113"
    )
    port map (
      I => NlwBufferSignal_CAn_out_OBUF_I,
      O => CAn_out
    );
  Reset_n_in_IBUF : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 115 ps
    )
    port map (
      O => instance0_coin_rx_Reset_n_inv_non_inverted,
      I => Reset_n_in
    );
  ProtoComp83_IMUX : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 115 ps
    )
    port map (
      I => ProtoComp83_IINV_OUT,
      O => instance0_coin_rx_Reset_n_inv
    );
  ProtoComp83_IINV : X_INV
    generic map(
      LOC => "PAD178",
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_coin_rx_Reset_n_inv_non_inverted,
      O => ProtoComp83_IINV_OUT
    );
  Qrcd_in_IBUF : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 115 ps
    )
    port map (
      O => Qrcd_out_OBUF_474,
      I => Qrcd_in
    );
  ProtoComp82_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 115 ps
    )
    port map (
      I => Qrcd_out_OBUF_474,
      O => Qrcd_out_OBUF_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv_instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_477,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"0303020203030202"
    )
    port map (
      ADR3 => '1',
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_1271,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_1362,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0088_inv
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In21 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"00000101"
    )
    port map (
      ADR3 => '1',
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_1271,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_1362,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_477
    );
  instance0_coin_rx_Q_received : X_SFF
    generic map(
      LOC => "SLICE_X12Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_Q_received_CLK,
      I => NlwBufferSignal_instance0_coin_rx_Q_received_IN,
      O => instance0_coin_rx_Q_received_1316,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_Q_reg : X_SFF
    generic map(
      LOC => "SLICE_X12Y35",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_Q_reg_CLK,
      I => NlwBufferSignal_instance0_coin_rx_Q_reg_IN,
      O => instance0_coin_rx_Q_reg_1424,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_8_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_8_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(2),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_2_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_8 : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_8_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT8,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(8),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"0000040400000404"
    )
    port map (
      ADR3 => '1',
      ADR1 => Soda_price_in_3_IBUF_0,
      ADR0 => Soda_price_in_2_IBUF_0,
      ADR2 => Soda_price_in_0_IBUF_0,
      ADR4 => Soda_price_in_1_IBUF_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT8
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT21 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"11113737"
    )
    port map (
      ADR3 => '1',
      ADR1 => Soda_price_in_3_IBUF_0,
      ADR0 => Soda_price_in_2_IBUF_0,
      ADR2 => Soda_price_in_0_IBUF_0,
      ADR4 => Soda_price_in_1_IBUF_0,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT2
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_2_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT2,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(2),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_7_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_7_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_7_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_7_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(3),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_3_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_7_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_7_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(6),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_6_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_7_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_7_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(4),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_4_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_7_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT7,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(7),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"4444444444444444"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Soda_price_in_2_IBUF_0,
      ADR0 => Soda_price_in_3_IBUF_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT7
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_In_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"FFFFFFF0"
    )
    port map (
      ADR2 => instance0_coin_rx_Np_0,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_1362,
      ADR4 => instance0_coin_rx_Dp_1320,
      ADR0 => '1',
      ADR1 => '1',
      O => N18
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_5_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT5,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(5),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"4444434344444343"
    )
    port map (
      ADR3 => '1',
      ADR1 => Soda_price_in_1_IBUF_0,
      ADR0 => Soda_price_in_3_IBUF_0,
      ADR2 => Soda_price_in_2_IBUF_0,
      ADR4 => Soda_price_in_0_IBUF_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT5
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"44440606"
    )
    port map (
      ADR3 => '1',
      ADR1 => Soda_price_in_1_IBUF_0,
      ADR0 => Soda_price_in_3_IBUF_0,
      ADR2 => Soda_price_in_2_IBUF_0,
      ADR4 => Soda_price_in_0_IBUF_0,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT3
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_3_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT3,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(3),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_1_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT1,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(1),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT111 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"0A0A050F0A0A050F"
    )
    port map (
      ADR1 => '1',
      ADR2 => Soda_price_in_3_IBUF_0,
      ADR0 => Soda_price_in_2_IBUF_0,
      ADR4 => Soda_price_in_0_IBUF_0,
      ADR3 => Soda_price_in_1_IBUF_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT1
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT61 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"0F050F00"
    )
    port map (
      ADR1 => '1',
      ADR2 => Soda_price_in_3_IBUF_0,
      ADR0 => Soda_price_in_2_IBUF_0,
      ADR4 => Soda_price_in_0_IBUF_0,
      ADR3 => Soda_price_in_1_IBUF_0,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT6
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_6_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT6,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(6),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_0_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(0),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"000F0F0F000F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Soda_price_in_3_IBUF_0,
      ADR3 => Soda_price_in_0_IBUF_0,
      ADR4 => Soda_price_in_2_IBUF_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT41 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"0F000F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Soda_price_in_3_IBUF_0,
      ADR3 => Soda_price_in_0_IBUF_0,
      ADR4 => Soda_price_in_2_IBUF_0,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT4
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_4_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Mram_soda_price_3_GND_10_o_wide_mux_0_OUT4,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp(4),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N20_pack_13,
      O => N20
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_In_568,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_1271,
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"AAAAFF00FFFFFF02"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      ADR0 => Soda_req_in_IBUF_0,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_1271,
      ADR2 => instance0_coin_rx_Qp_1272,
      ADR1 => N18_0,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_In_568
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"2222222022222220"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_0,
      ADR1 => instance0_coin_rx_Qp_1272,
      ADR3 => instance0_coin_rx_Np_0,
      ADR2 => Soda_req_in_IBUF_0,
      ADR4 => instance0_coin_rx_Dp_1320,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In1_1426
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_In_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => instance0_coin_rx_Np_0,
      ADR2 => '1',
      ADR4 => instance0_coin_rx_Dp_1320,
      O => N20_pack_13
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"FFFFFFFFC0A00000"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_1271,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      ADR1 => Soda_req_in_IBUF_0,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_Mcompar_n0006_cy_4_0,
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In1_1426,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_In_544,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_1362,
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_In : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"FFFF0044F0F40044"
    )
    port map (
      ADR2 => N20,
      ADR5 => instance0_coin_rx_Qp_1272,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_1362,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_1271,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_In_544
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_In_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"F5A0F5A0F5A0F5A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR2 => Soda_req_in_IBUF_0,
      O => N16
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_In_580,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_In : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"FFFFC0E0C0E0C0E0"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_In2_0,
      ADR0 => instance0_coin_rx_Np_0,
      ADR3 => instance0_coin_rx_Dp_1320,
      ADR1 => instance0_coin_rx_Qp_1272,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_1271,
      ADR5 => N16,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_In_580
    );
  instance0_coin_rx_n0067_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y26",
      INIT => X"5555FFFF00000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR0 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR4 => instance0_coin_rx_state_FSM_FFd1_1315,
      O => instance0_coin_rx_n0067
    );
  instance0_coin_rx_coin_cntr_9_PWR_13_o_equal_9_o_9_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y26",
      INIT => X"8000000080000000"
    )
    port map (
      ADR5 => '1',
      ADR3 => instance0_coin_rx_coin_cntr(4),
      ADR2 => instance0_coin_rx_coin_cntr(3),
      ADR1 => instance0_coin_rx_coin_cntr(2),
      ADR4 => instance0_coin_rx_coin_cntr(1),
      ADR0 => instance0_coin_rx_coin_cntr(0),
      O => N27
    );
  instance0_coin_rx_state_FSM_FFd3_instance0_coin_rx_state_FSM_FFd3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_coin_rx_Np_609,
      O => instance0_coin_rx_Np_0
    );
  instance0_coin_rx_state_FSM_FFd3 : X_SFF
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_state_FSM_FFd3_CLK,
      I => instance0_coin_rx_state_FSM_FFd3_In_1310,
      O => instance0_coin_rx_state_FSM_FFd3_1312,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_FSM_FFd3_In : X_LUT6
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => X"0011FF110001FF01"
    )
    port map (
      ADR1 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR0 => instance0_coin_rx_state_FSM_FFd1_1315,
      ADR5 => instance0_coin_rx_N_received_1341,
      ADR3 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR2 => N22,
      ADR4 => instance0_coin_rx_coin_cntr_9_PWR_13_o_equal_9_o,
      O => instance0_coin_rx_state_FSM_FFd3_In_1310
    );
  instance0_coin_rx_coin_cntr_9_PWR_13_o_equal_9_o_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => X"8000000000000000"
    )
    port map (
      ADR5 => instance0_coin_rx_coin_cntr(9),
      ADR1 => instance0_coin_rx_coin_cntr(8),
      ADR4 => instance0_coin_rx_coin_cntr(7),
      ADR0 => instance0_coin_rx_coin_cntr(6),
      ADR3 => instance0_coin_rx_coin_cntr(5),
      ADR2 => N27,
      O => instance0_coin_rx_coin_cntr_9_PWR_13_o_equal_9_o
    );
  instance0_coin_rx_Dp : X_SFF
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_Dp_CLK,
      I => instance0_coin_rx_next_state_2_GND_12_o_Mux_1_o,
      O => instance0_coin_rx_Dp_1320,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_n0077_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => instance0_coin_rx_state_FSM_FFd3_In_1310,
      ADR4 => instance0_coin_rx_state_FSM_FFd2_In_1428,
      ADR5 => '1',
      O => instance0_coin_rx_next_state_2_GND_12_o_Mux_1_o
    );
  instance0_coin_rx_state_n0077_2_1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => X"00004444"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => instance0_coin_rx_state_FSM_FFd1_In,
      ADR1 => instance0_coin_rx_state_FSM_FFd3_In_1310,
      ADR4 => instance0_coin_rx_state_FSM_FFd2_In_1428,
      O => instance0_coin_rx_next_state_2_GND_12_o_Mux_2_o
    );
  instance0_coin_rx_Np : X_SFF
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_Np_CLK,
      I => instance0_coin_rx_next_state_2_GND_12_o_Mux_2_o,
      O => instance0_coin_rx_Np_609,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_FSM_FFd2 : X_SFF
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_state_FSM_FFd2_CLK,
      I => instance0_coin_rx_state_FSM_FFd2_In_1428,
      O => instance0_coin_rx_state_FSM_FFd2_1313,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_FSM_FFd2_In : X_LUT6
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => X"FF88AA8872D872D8"
    )
    port map (
      ADR0 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR5 => instance0_coin_rx_state_FSM_FFd1_1315,
      ADR1 => instance0_coin_rx_coin_cntr_9_PWR_13_o_equal_9_o,
      ADR3 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR2 => N24_0,
      ADR4 => instance0_coin_rx_Q_received_1316,
      O => instance0_coin_rx_state_FSM_FFd2_In_1428
    );
  instance0_coin_rx_D_received : X_SFF
    generic map(
      LOC => "SLICE_X14Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_D_received_CLK,
      I => NlwBufferSignal_instance0_coin_rx_D_received_IN,
      O => instance0_coin_rx_D_received_1314,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_6_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_6_DMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(7),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_6_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_6_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(5),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_6_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_6_BMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(3),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_6_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_6_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(1),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_6_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(6),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mmux_n010571 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"BBBB8888BBBB8888"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(6),
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_6_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(6)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mmux_n010581 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"FC30FC30"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(7),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_7_0,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR0 => '1',
      ADR4 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(7)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(7),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(7),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_4_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(4),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(4),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mmux_n010551 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"F0CCF0CCF0CCF0CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(4),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_4_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(4)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mmux_n010561 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"AAFFAA00"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(5),
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_5_0,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR2 => '1',
      ADR1 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(5)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(5),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(5),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_2_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(2),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mmux_n010531 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"CCCCFF00CCCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(2),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_2_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(2)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mmux_n010541 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"AAAAF0F0"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(3),
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_3_0,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR3 => '1',
      ADR1 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(3)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(3),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(3),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_0_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(0),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(0),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mmux_n010511 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"CCCCF0F0CCCCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(0),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_0_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(0)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mmux_n010521 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => X"FF00AAAA"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(1),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_1_0,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR1 => '1',
      ADR2 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(1)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y14",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(1),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(1),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_8_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_8_AMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_9_pack_11,
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9)
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_6_bcd_wire_1_8_MUX_30_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => X"33C330330C30CC0C"
    )
    port map (
      ADR0 => '1',
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      O => instance0_vending_machine_controller_Madd_bcd_wire_1_7_GND_8_o_add_16_OUT_lut_2_Q
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_8_bcd_wire_1_8_MUX_28_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => X"50FF50AFAF500A50"
    )
    port map (
      ADR1 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      O => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_cy_0_Q
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_7_bcd_wire_1_8_MUX_29_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => X"0A00500A00A50A00"
    )
    port map (
      ADR1 => '1',
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      O => instance0_vending_machine_controller_Madd_bcd_wire_1_7_GND_8_o_add_16_OUT_lut_3_Q
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_8 : X_FF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_8_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(8),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mmux_n010591 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => X"FF00CCCCFF00CCCC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(8),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_8_0,
      ADR5 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(8)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Mmux_n0105101 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => X"AAAAF0F0"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(9),
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR3 => '1',
      ADR1 => '1',
      O => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(9)
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_9 : X_FF
    generic map(
      LOC => "SLICE_X15Y15",
      INIT => '0'
    )
    port map (
      CE => instance0_vending_machine_controller_instance0_Coin_Controller_n0121_inv_0,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_9_CLK,
      I => instance0_vending_machine_controller_instance0_Coin_Controller_n0105(9),
      O => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_9_pack_11,
      RST => instance0_coin_rx_Reset_n_inv,
      SET => GND
    );
  instance0_coin_rx_state_FSM_FFd1_instance0_coin_rx_state_FSM_FFd1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N24,
      O => N24_0
    );
  instance0_coin_rx_state_FSM_FFd3_In_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => X"0000555500005555"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => instance0_coin_rx_D_received_1314,
      ADR4 => instance0_coin_rx_Q_received_1316,
      ADR5 => '1',
      O => N22
    );
  instance0_coin_rx_state_FSM_FFd2_In_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => X"CC00EE22"
    )
    port map (
      ADR2 => '1',
      ADR3 => instance0_coin_rx_N_received_1341,
      ADR1 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR0 => instance0_coin_rx_D_received_1314,
      ADR4 => instance0_coin_rx_Q_received_1316,
      O => N24
    );
  instance0_coin_rx_state_FSM_FFd1 : X_SFF
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_state_FSM_FFd1_CLK,
      I => instance0_coin_rx_state_FSM_FFd1_In,
      O => instance0_coin_rx_state_FSM_FFd1_1315,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => X"FFFFA0A0EE445500"
    )
    port map (
      ADR5 => instance0_coin_rx_state_FSM_FFd3_1312,
      ADR0 => instance0_coin_rx_state_FSM_FFd2_1313,
      ADR1 => instance0_coin_rx_D_received_1314,
      ADR4 => instance0_coin_rx_state_FSM_FFd1_1315,
      ADR3 => instance0_coin_rx_Q_received_1316,
      ADR2 => instance0_coin_rx_coin_cntr_9_PWR_13_o_equal_9_o,
      O => instance0_coin_rx_state_FSM_FFd1_In
    );
  instance0_coin_rx_Qp : X_SFF
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_Qp_CLK,
      I => instance0_coin_rx_next_state_2_GND_12_o_Mux_0_o,
      O => instance0_coin_rx_Qp_1272,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_state_n0077_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => instance0_coin_rx_state_FSM_FFd3_In_1310,
      ADR4 => instance0_coin_rx_state_FSM_FFd1_In,
      O => instance0_coin_rx_next_state_2_GND_12_o_Mux_0_o
    );
  instance0_coin_rx_N_received : X_SFF
    generic map(
      LOC => "SLICE_X15Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_N_received_CLK,
      I => NlwBufferSignal_instance0_coin_rx_N_received_IN,
      O => instance0_coin_rx_N_received_1341,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_5_bcd_wire_1_6_MUX_45_o1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => X"9949929964264964"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(4),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      O => N2
    );
  instance0_coin_rx_D_reg : X_SFF
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_D_reg_CLK,
      I => NlwBufferSignal_instance0_coin_rx_D_reg_IN,
      O => instance0_coin_rx_D_reg_1339,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_coin_rx_N_reg : X_SFF
    generic map(
      LOC => "SLICE_X16Y36",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_coin_rx_N_reg_CLK,
      I => NlwBufferSignal_instance0_coin_rx_N_reg_IN,
      O => instance0_coin_rx_N_reg_1342,
      SRST => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_7_bcd_wire_1_7_MUX_36_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y13",
      INIT => X"03E880FEFE033F80"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(4),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      O => instance0_vending_machine_controller_Madd_bcd_wire_1_10_GND_8_o_add_22_OUT_cy_0_Q
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_7_bcd_wire_1_9_MUX_62_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y13",
      INIT => X"03F055750FC003F0"
    )
    port map (
      ADR0 => N9,
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_lut_2_Q,
      ADR3 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_14_OUT_cy(0),
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_10_GND_8_o_add_22_OUT_cy_0_Q,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT511_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y13",
      INIT => X"AF36A5CBF500AA5A"
    )
    port map (
      ADR1 => N9,
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_lut_2_Q,
      ADR4 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_14_OUT_cy(0),
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_10_GND_8_o_add_22_OUT_cy_0_Q,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      O => N93
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_7_bcd_wire_1_9_MUX_62_o1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y13",
      INIT => X"F9FFB9FFBDFF9DFF"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(4),
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      O => N9
    );
  N92_N92_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_Mmux_bcd_wire_2_11_1_pack_11,
      O => instance0_vending_machine_controller_Mmux_bcd_wire_2_11_1
    );
  N92_N92_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_Mmux_bcd_wire_2_11_11_pack_9,
      O => instance0_vending_machine_controller_Mmux_bcd_wire_2_11_11_1323
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT511_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y14",
      INIT => X"8B8BDEFFC1C10808"
    )
    port map (
      ADR3 => N9,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_lut_2_Q,
      ADR2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_14_OUT_cy(0),
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_10_GND_8_o_add_22_OUT_cy_0_Q,
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      O => N92
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_10_bcd_wire_1_10_MUX_16_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y14",
      INIT => X"FFF00000FFF00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      ADR5 => '1',
      O => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_lut_2_Q
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_2_11_11 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y14",
      INIT => X"3FF03FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR4 => '1',
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      O => instance0_vending_machine_controller_Mmux_bcd_wire_2_11_1_pack_11
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_2_11_13 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y14",
      INIT => X"FF00020000000200"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      ADR5 => instance0_vending_machine_controller_Mmux_bcd_wire_2_11_1,
      ADR0 => instance0_vending_machine_controller_Mmux_bcd_wire_2_11_11_1323,
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_10_GND_8_o_add_22_OUT_cy_0_Q,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_cy_0_Q,
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_bcd_wire_2_11_Q
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_9_bcd_wire_1_9_MUX_20_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y14",
      INIT => X"A2A26464A2A26464"
    )
    port map (
      ADR3 => '1',
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      ADR5 => '1',
      O => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_14_OUT_cy(0)
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_2_11_12 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y14",
      INIT => X"A2A22020"
    )
    port map (
      ADR3 => '1',
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      O => instance0_vending_machine_controller_Mmux_bcd_wire_2_11_11_pack_9
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_2_8_11_SW6_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y15",
      INIT => X"F3F3C7CFE3E3CF8F"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(4),
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      O => N80
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_2_8_11_SW6_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y15",
      INIT => X"FF3FCC7FFC7FC8FF"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(4),
      O => N82
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_2_8_11_SW6 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y14",
      INIT => X"FFFFCFC5FFFFCAC0"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_Mmux_bcd_wire_2_11_11_1323,
      ADR1 => N81,
      ADR5 => N80,
      ADR3 => N82,
      ADR4 => instance0_vending_machine_controller_bcd_wire_2_10_Q,
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      O => N45
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_6 : X_FF
    generic map(
      LOC => "SLICE_X19Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_6_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT6,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(6),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT611 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y14",
      INIT => X"0014001100410044"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_bcd_wire_2_9_Q,
      ADR0 => instance0_vending_machine_controller_bcd_wire_2_11_Q,
      ADR1 => instance0_vending_machine_controller_bcd_wire_2_10_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q,
      ADR2 => N65,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT6
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_2_9_11 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y14",
      INIT => X"B146B14690469046"
    )
    port map (
      ADR4 => '1',
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_lut_2_Q,
      ADR0 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_14_OUT_cy(0),
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_10_GND_8_o_add_22_OUT_cy_0_Q,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_bcd_wire_2_9_Q
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_6_bcd_wire_1_6_MUX_44_o12 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y14",
      INIT => X"40806291BF7F54A8"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(4),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_0,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_7_GND_8_o_add_16_OUT_lut_3_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_7_GND_8_o_add_16_OUT_lut_2_Q,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_2_8_11_SW6_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y15",
      INIT => X"AAAB9999A9A99D95"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(4),
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      O => N81
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_2 : X_FF
    generic map(
      LOC => "SLICE_X20Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_2_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT2,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(2),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y12",
      INIT => X"01112FFF1000F222"
    )
    port map (
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q,
      ADR4 => instance0_vending_machine_controller_bcd_wire_2_11_Q,
      ADR1 => instance0_vending_machine_controller_bcd_wire_2_9_Q,
      ADR0 => instance0_vending_machine_controller_bcd_wire_2_10_Q,
      ADR2 => N73,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT2
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_1 : X_FF
    generic map(
      LOC => "SLICE_X20Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_1_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT1_875,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(1),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT121 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y12",
      INIT => X"00F70031003B0002"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_bcd_wire_2_11_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q,
      ADR1 => instance0_vending_machine_controller_bcd_wire_2_10_Q,
      ADR4 => instance0_vending_machine_controller_bcd_wire_2_9_Q,
      ADR2 => N65,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT1_875
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_0 : X_FF
    generic map(
      LOC => "SLICE_X20Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_0_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(0),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y12",
      INIT => X"EE19EE99EE91EE11"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_bcd_wire_2_10_Q,
      ADR1 => instance0_vending_machine_controller_bcd_wire_2_9_Q,
      ADR3 => instance0_vending_machine_controller_bcd_wire_2_11_Q,
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      ADR4 => N73,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y12",
      INIT => X"FFFFFFFFA65118A6"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_lut_2_Q,
      ADR1 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_14_OUT_cy(0),
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_10_GND_8_o_add_22_OUT_cy_0_Q,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_cy_0_Q,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_cy_0_Q,
      O => N73
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_5 : X_FF
    generic map(
      LOC => "SLICE_X20Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_5_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT5,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(5),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT511 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y13",
      INIT => X"000008A200002A80"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_bcd_wire_2_10_Q,
      ADR2 => N93,
      ADR5 => N92,
      ADR4 => instance0_vending_machine_controller_bcd_wire_2_11_Q,
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_cy_0_Q,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT5
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_4 : X_FF
    generic map(
      LOC => "SLICE_X20Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_4_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT4,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(4),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y13",
      INIT => X"0000DE00000021FF"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      ADR4 => N45,
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_cy_0_Q,
      ADR2 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_9_LessThan_28_o,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT4
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_3 : X_FF
    generic map(
      LOC => "SLICE_X20Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_3_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT3,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(3),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT311 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y13",
      INIT => X"0099004400490094"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_bcd_wire_2_11_Q,
      ADR0 => instance0_vending_machine_controller_bcd_wire_2_9_Q,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      ADR1 => instance0_vending_machine_controller_bcd_wire_2_10_Q,
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q,
      ADR5 => N65,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT3
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_11_GND_11_o_wide_mux_0_OUT311_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y13",
      INIT => X"0000000066D9B66D"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_lut_2_Q,
      ADR2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_14_OUT_cy(0),
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_10_GND_8_o_add_22_OUT_cy_0_Q,
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_cy_0_Q,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_cy_0_Q,
      O => N65
    );
  instance0_vending_machine_controller_GND_8_o_bcd_wire_1_6_LessThan_20_o_instance0_vending_machine_controller_GND_8_o_bcd_wire_1_6_LessThan_20_o_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o,
      O => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o_0
    );
  instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y14"
    )
    port map (
      IA => N97,
      IB => N98,
      O => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o,
      SEL => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_6_LessThan_20_o_1255
    );
  instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o2_F : X_LUT6
    generic map(
      LOC => "SLICE_X20Y14",
      INIT => X"EEEEBB11AA88BB11"
    )
    port map (
      ADR2 => '1',
      ADR0 => instance0_vending_machine_controller_Mmux_bcd_wire_1_5_bcd_wire_1_6_MUX_45_o11,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_0,
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_0,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_6_GND_8_o_add_20_OUT_lut_2_Q,
      O => N97
    );
  instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o2_G : X_LUT6
    generic map(
      LOC => "SLICE_X20Y14",
      INIT => X"085E085EF85FF85E"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_Mmux_bcd_wire_1_5_bcd_wire_1_6_MUX_45_o11,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_0,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_0,
      ADR4 => N2,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_6_GND_8_o_add_20_OUT_lut_2_Q,
      O => N98
    );
  instance0_vending_machine_controller_GND_8_o_bcd_wire_1_6_LessThan_20_o : X_LUT6
    generic map(
      LOC => "SLICE_X20Y14",
      INIT => X"6F9F639C4F1F4218"
    )
    port map (
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_0,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(4),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_7_GND_8_o_add_16_OUT_lut_3_Q,
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_7_GND_8_o_add_16_OUT_lut_2_Q,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_6_LessThan_20_o_1255
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_5_bcd_wire_1_5_MUX_56_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y14",
      INIT => X"292CC3C30B0ED2D2"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_0,
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      ADR3 => N2,
      ADR1 => instance0_vending_machine_controller_Mmux_bcd_wire_1_5_bcd_wire_1_6_MUX_45_o11,
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_6_GND_8_o_add_20_OUT_lut_2_Q,
      ADR4 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_6_LessThan_20_o_1255,
      O => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_cy_0_Q
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_2_10_11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y14",
      INIT => X"0101AAA8FFFF0000"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(4),
      O => instance0_vending_machine_controller_bcd_wire_2_10_Q
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_5_bcd_wire_1_6_MUX_45_o111 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y14",
      INIT => X"67E6796799799E99"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(4),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      O => instance0_vending_machine_controller_Mmux_bcd_wire_1_5_bcd_wire_1_6_MUX_45_o11
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_6 : X_FF
    generic map(
      LOC => "SLICE_X21Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_6_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT6,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(6),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y14",
      INIT => X"9600000000000096"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(0),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_0,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      ADR5 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o_0,
      ADR2 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_5_LessThan_26_o,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_4_GND_8_o_add_32_OUT_lut_2_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT6
    );
  instance0_seven_seg_disp_CEn : X_SFF
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CEn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_7_o,
      O => instance0_seven_seg_disp_CEn_1298,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_14_o_Mux_7_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => X"FFBBDD99EEAACC88"
    )
    port map (
      ADR2 => '1',
      ADR1 => instance0_seven_seg_disp_counter(18),
      ADR0 => instance0_seven_seg_disp_counter(17),
      ADR3 => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(2),
      ADR5 => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(2),
      ADR4 => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(2),
      O => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_7_o
    );
  instance0_seven_seg_disp_CGn : X_SFF
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CGn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_9_o,
      O => instance0_seven_seg_disp_CGn_1302,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_14_o_Mux_9_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y12",
      INIT => X"FEAEF4A4FEAEF4A4"
    )
    port map (
      ADR5 => '1',
      ADR2 => instance0_seven_seg_disp_counter(18),
      ADR0 => instance0_seven_seg_disp_counter(17),
      ADR3 => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(0),
      ADR1 => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(0),
      ADR4 => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(0),
      O => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_9_o
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_6_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_6_CMUX_Delay : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_bcd_wire_2_4_pack_7,
      O => instance0_vending_machine_controller_bcd_wire_2_4_Q
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_2_4_1 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y13"
    )
    port map (
      IA => N95,
      IB => N96,
      O => instance0_vending_machine_controller_bcd_wire_2_4_pack_7,
      SEL => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_6_LessThan_20_o_1255
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_2_4_1_F : X_LUT6
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => X"5AFAFAAAF0050005"
    )
    port map (
      ADR1 => '1',
      ADR5 => instance0_vending_machine_controller_Mmux_bcd_wire_1_5_bcd_wire_1_6_MUX_45_o11,
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_6_GND_8_o_add_20_OUT_lut_2_Q,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_0,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      O => N95
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_2_4_1_G : X_LUT6
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => X"22EE00CC77136632"
    )
    port map (
      ADR5 => instance0_vending_machine_controller_Mmux_bcd_wire_1_5_bcd_wire_1_6_MUX_45_o11,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_0,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      ADR2 => N2,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_6_GND_8_o_add_20_OUT_lut_2_Q,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_0,
      O => N96
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_5_bcd_wire_1_7_MUX_38_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => X"B4D00B2D420BB4D0"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(4),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      O => instance0_vending_machine_controller_Madd_bcd_wire_1_6_GND_8_o_add_20_OUT_lut_2_Q
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_6 : X_FF
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_6_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT6,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(6),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y13",
      INIT => X"9900000966000006"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_cy_0_Q,
      ADR1 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_9_LessThan_28_o,
      ADR5 => instance0_vending_machine_controller_bcd_wire_2_4_Q,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q,
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT6
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_2 : X_FF
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_2_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT2,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(2),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => X"B9089B8079019710"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(0),
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      ADR0 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o_0,
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_4_GND_8_o_add_32_OUT_lut_2_Q,
      ADR4 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_5_LessThan_26_o,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT2
    );
  instance0_vending_machine_controller_GND_8_o_bcd_wire_1_5_LessThan_26_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => X"5FF4AFAF55F4AFAA"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_0,
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      ADR1 => N2,
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_6_GND_8_o_add_20_OUT_lut_2_Q,
      ADR2 => instance0_vending_machine_controller_Mmux_bcd_wire_1_5_bcd_wire_1_6_MUX_45_o11,
      ADR4 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_6_LessThan_20_o_1255,
      O => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_5_LessThan_26_o
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_1 : X_FF
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_1_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT1,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(1),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT111 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => X"820C32200C822032"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(0),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_0,
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      ADR4 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o_0,
      ADR3 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_5_LessThan_26_o,
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_4_GND_8_o_add_32_OUT_lut_2_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT1
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_0 : X_FF
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_0_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(0),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT12 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y14",
      INIT => X"9999F6F66F666909"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(0),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_0,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      ADR4 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o_0,
      ADR0 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_5_LessThan_26_o,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_4_GND_8_o_add_32_OUT_lut_2_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT
    );
  instance0_seven_seg_disp_CFn : X_SFF
    generic map(
      LOC => "SLICE_X23Y12",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CFn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_8_o,
      O => instance0_seven_seg_disp_CFn_1300,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_14_o_Mux_8_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y12",
      INIT => X"FFCCF0AAFFCCF0AA"
    )
    port map (
      ADR5 => '1',
      ADR3 => instance0_seven_seg_disp_counter(18),
      ADR4 => instance0_seven_seg_disp_counter(17),
      ADR2 => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(1),
      ADR0 => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(1),
      ADR1 => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(1),
      O => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_8_o
    );
  instance0_vending_machine_controller_GND_8_o_bcd_wire_1_9_LessThan_28_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y13",
      INIT => X"3C0FF3F0300CC3F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_lut_2_Q,
      ADR3 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_14_OUT_cy(0),
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_10_GND_8_o_add_22_OUT_cy_0_Q,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_9_LessThan_28_o
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_2 : X_FF
    generic map(
      LOC => "SLICE_X23Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_2_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT2,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(2),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y13",
      INIT => X"D4E8A050F4F8F1F2"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_cy_0_Q,
      ADR3 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_9_LessThan_28_o,
      ADR2 => instance0_vending_machine_controller_bcd_wire_2_4_Q,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT2
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_1 : X_FF
    generic map(
      LOC => "SLICE_X23Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_1_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT1,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(1),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT111 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y13",
      INIT => X"82003C8282EB3C82"
    )
    port map (
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_cy_0_Q,
      ADR1 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_9_LessThan_28_o,
      ADR0 => instance0_vending_machine_controller_bcd_wire_2_4_Q,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT1
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_0 : X_FF
    generic map(
      LOC => "SLICE_X23Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_0_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(0),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT12 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y13",
      INIT => X"C37D8269C33C8241"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_cy_0_Q,
      ADR2 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_9_LessThan_28_o,
      ADR5 => instance0_vending_machine_controller_bcd_wire_2_4_Q,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_5 : X_FF
    generic map(
      LOC => "SLICE_X23Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_5_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT5,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(5),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT511 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y14",
      INIT => X"4001020480020108"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(0),
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_0,
      ADR5 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      ADR3 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o_0,
      ADR0 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_5_LessThan_26_o,
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_4_GND_8_o_add_32_OUT_lut_2_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT5
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_4 : X_FF
    generic map(
      LOC => "SLICE_X23Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_4_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT4,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(4),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y14",
      INIT => X"0004040010000010"
    )
    port map (
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(0),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_0,
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      ADR5 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o_0,
      ADR4 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_5_LessThan_26_o,
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_4_GND_8_o_add_32_OUT_lut_2_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT4
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_3 : X_FF
    generic map(
      LOC => "SLICE_X23Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_3_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT3,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(3),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT311 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y14",
      INIT => X"8448000021006912"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(0),
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_0,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      ADR4 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_4_LessThan_32_o_0,
      ADR0 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_5_LessThan_26_o,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_4_GND_8_o_add_32_OUT_lut_2_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_3_GND_11_o_wide_mux_2_OUT3
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_3_bcd_wire_1_5_MUX_58_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y14",
      INIT => X"229922DD7788668C"
    )
    port map (
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_0,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(2),
      ADR2 => N2,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_6_GND_8_o_add_20_OUT_lut_2_Q,
      ADR4 => instance0_vending_machine_controller_Mmux_bcd_wire_1_5_bcd_wire_1_6_MUX_45_o11,
      ADR1 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_6_LessThan_20_o_1255,
      O => instance0_vending_machine_controller_Madd_bcd_wire_1_4_GND_8_o_add_32_OUT_lut_2_Q
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_5 : X_FF
    generic map(
      LOC => "SLICE_X24Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_5_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT5,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(5),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT511 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y13",
      INIT => X"2201880400420018"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_cy_0_Q,
      ADR4 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_9_LessThan_28_o,
      ADR5 => instance0_vending_machine_controller_bcd_wire_2_4_Q,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q,
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT5
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_4 : X_FF
    generic map(
      LOC => "SLICE_X24Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_4_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT4,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(4),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y13",
      INIT => X"0000000000413C00"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_cy_0_Q,
      ADR2 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_9_LessThan_28_o,
      ADR5 => instance0_vending_machine_controller_bcd_wire_2_4_Q,
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q,
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT4
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_3_CLK,
      I => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT3,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(3),
      RST => GND,
      SET => GND
    );
  instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT311 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y13",
      INIT => X"8421208086292184"
    )
    port map (
      ADR1 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      ADR0 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_cy_0_Q,
      ADR3 => instance0_vending_machine_controller_GND_8_o_bcd_wire_1_9_LessThan_28_o,
      ADR4 => instance0_vending_machine_controller_bcd_wire_2_4_Q,
      ADR2 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_2_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q,
      O => instance0_vending_machine_controller_instance0_seven_seg_dec_Mram_bcd_7_GND_11_o_wide_mux_1_OUT3
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_8_bcd_wire_1_9_MUX_61_o13 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y13",
      INIT => X"053005C000C03003"
    )
    port map (
      ADR1 => N77,
      ADR0 => N78_0,
      ADR4 => instance0_vending_machine_controller_Madd_bcd_wire_1_11_GND_8_o_add_18_OUT_lut_2_Q,
      ADR2 => instance0_vending_machine_controller_Madd_GND_8_o_GND_8_o_add_14_OUT_cy(0),
      ADR3 => instance0_vending_machine_controller_Madd_bcd_wire_1_10_GND_8_o_add_22_OUT_cy_0_Q,
      ADR5 => instance0_vending_machine_controller_Madd_bcd_wire_1_9_GND_8_o_add_28_OUT_cy_0_Q,
      O => instance0_vending_machine_controller_Madd_bcd_wire_1_8_GND_8_o_add_34_OUT_lut_3_Q
    );
  instance0_seven_seg_disp_CAn : X_SFF
    generic map(
      LOC => "SLICE_X24Y14",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CAn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_3_o,
      O => instance0_seven_seg_disp_CAn_1286,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_14_o_Mux_3_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y14",
      INIT => X"FFCCAAF0FFCCAAF0"
    )
    port map (
      ADR5 => '1',
      ADR4 => instance0_seven_seg_disp_counter(18),
      ADR3 => instance0_seven_seg_disp_counter(17),
      ADR1 => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(6),
      ADR2 => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(6),
      ADR0 => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(6),
      O => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_3_o
    );
  instance0_seven_seg_disp_CDn_instance0_seven_seg_disp_CDn_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N78,
      O => N78_0
    );
  instance0_seven_seg_disp_CDn : X_SFF
    generic map(
      LOC => "SLICE_X25Y13",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CDn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_6_o,
      O => instance0_seven_seg_disp_CDn_1295,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_14_o_Mux_6_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y13",
      INIT => X"FFFFFF00CCCCAAAA"
    )
    port map (
      ADR2 => '1',
      ADR5 => instance0_seven_seg_disp_counter(18),
      ADR4 => instance0_seven_seg_disp_counter(17),
      ADR3 => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(3),
      ADR0 => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(3),
      ADR1 => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(3),
      O => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_6_o
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_8_bcd_wire_1_9_MUX_61_o13_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y13",
      INIT => X"C1F07C1FC1F07C1F"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      ADR5 => '1',
      O => N77
    );
  instance0_vending_machine_controller_Mmux_bcd_wire_1_8_bcd_wire_1_9_MUX_61_o13_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y13",
      INIT => X"3E0FFFFF"
    )
    port map (
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(9),
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(8),
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_0,
      ADR0 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_0,
      ADR1 => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount(6),
      O => N78
    );
  instance0_seven_seg_disp_CCn : X_SFF
    generic map(
      LOC => "SLICE_X25Y13",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CCn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_5_o,
      O => instance0_seven_seg_disp_CCn_1291,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_14_o_Mux_5_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y13",
      INIT => X"FAFAFAFAFC0CFC0C"
    )
    port map (
      ADR4 => '1',
      ADR2 => instance0_seven_seg_disp_counter(18),
      ADR5 => instance0_seven_seg_disp_counter(17),
      ADR3 => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(4),
      ADR1 => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(4),
      ADR0 => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(4),
      O => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_5_o
    );
  instance0_seven_seg_disp_CBn : X_SFF
    generic map(
      LOC => "SLICE_X27Y13",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_CBn_CLK,
      I => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_4_o,
      O => instance0_seven_seg_disp_CBn_1288,
      SSET => instance0_coin_rx_Reset_n_inv,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  instance0_seven_seg_disp_Mmux_counter_18_PWR_14_o_Mux_4_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y13",
      INIT => X"FFCCFCFCFFCC3030"
    )
    port map (
      ADR0 => '1',
      ADR1 => instance0_seven_seg_disp_counter(18),
      ADR4 => instance0_seven_seg_disp_counter(17),
      ADR5 => instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n(5),
      ADR2 => instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n(5),
      ADR3 => instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n(5),
      O => instance0_seven_seg_disp_counter_18_PWR_14_o_Mux_4_o
    );
  Amt_err_OBUF_Amt_err_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Drop_soda_out_OBUF_1194,
      O => Drop_soda_out_OBUF_0
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_amt_err1 : X_LUT6
    generic map(
      LOC => "SLICE_X28Y2",
      INIT => X"0000F0000000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_1271,
      ADR5 => '1',
      O => Amt_err_OBUF_1380
    );
  instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_drop_soda1 : X_LUT5
    generic map(
      LOC => "SLICE_X28Y2",
      INIT => X"F0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_1268,
      ADR4 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_1270,
      ADR2 => instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_1271,
      O => Drop_soda_out_OBUF_1194
    );
  instance0_seven_seg_disp_ones_anode : X_FF
    generic map(
      LOC => "SLICE_X36Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_ones_anode_CLK,
      I => instance0_seven_seg_disp_ones_anode_glue_set_1201,
      O => instance0_seven_seg_disp_ones_anode_1289,
      RST => GND,
      SET => GND
    );
  instance0_seven_seg_disp_ones_anode_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X36Y11",
      INIT => X"FFFFEEEEFFFFEEEE"
    )
    port map (
      ADR3 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR0 => instance0_seven_seg_disp_counter(18),
      ADR1 => instance0_seven_seg_disp_counter(17),
      ADR4 => instance0_coin_rx_Reset_n_inv,
      O => instance0_seven_seg_disp_ones_anode_glue_set_1201
    );
  instance0_seven_seg_disp_tens_anode_instance0_seven_seg_disp_tens_anode_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_hund_anode_1208,
      O => instance0_seven_seg_disp_hund_anode_0
    );
  instance0_seven_seg_disp_tens_anode : X_FF
    generic map(
      LOC => "SLICE_X36Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_tens_anode_CLK,
      I => instance0_seven_seg_disp_tens_anode_glue_set_1206,
      O => instance0_seven_seg_disp_tens_anode_1395,
      RST => GND,
      SET => GND
    );
  instance0_seven_seg_disp_tens_anode_glue_set : X_LUT6
    generic map(
      LOC => "SLICE_X36Y12",
      INIT => X"FFFFAAFFFFFFAAFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => instance0_coin_rx_Reset_n_inv,
      ADR4 => instance0_seven_seg_disp_counter(18),
      ADR3 => instance0_seven_seg_disp_counter(17),
      ADR5 => '1',
      O => instance0_seven_seg_disp_tens_anode_glue_set_1206
    );
  instance0_seven_seg_disp_hund_anode_glue_set : X_LUT5
    generic map(
      LOC => "SLICE_X36Y12",
      INIT => X"FFAAFFFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => instance0_coin_rx_Reset_n_inv,
      ADR4 => instance0_seven_seg_disp_counter(18),
      ADR3 => instance0_seven_seg_disp_counter(17),
      O => instance0_seven_seg_disp_hund_anode_glue_set_1207
    );
  instance0_seven_seg_disp_hund_anode : X_FF
    generic map(
      LOC => "SLICE_X36Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_instance0_seven_seg_disp_hund_anode_CLK,
      I => instance0_seven_seg_disp_hund_anode_glue_set_1207,
      O => instance0_seven_seg_disp_hund_anode_1208,
      RST => GND,
      SET => GND
    );
  NlwBufferBlock_Clk_in_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP_IBUFG_0,
      O => NlwBufferSignal_Clk_in_BUFGP_BUFG_IN
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_3_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_2_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_1_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_0_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_7_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_6_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_5_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_4_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_11_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_11_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_10_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_10_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_9_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_8_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_15_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_15_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_14_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_14_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_13_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_13_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_12_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_12_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_18_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_18_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_17_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_17_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_counter_16_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_counter_16_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_3_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_2_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_1_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_0_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_7_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_6_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_5_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_4_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_9_CLK
    );
  NlwBufferBlock_instance0_coin_rx_coin_cntr_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_coin_cntr_8_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_3_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_2_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(0),
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_0_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(1),
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_1_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(2),
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_2_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(3),
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_3_DI_3_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_1_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_0_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_7_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_6_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(4),
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Maccum_CoinHolderAmountTemp_cy_7_DI_0_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_5_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_4_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_9_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp_8_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(0),
      O => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_0_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(1),
      O => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_1_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(2),
      O => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_2_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(3),
      O => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_3_DI_3_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(4),
      O => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_0_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(5),
      O => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_1_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(6),
      O => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_2_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(7),
      O => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_cy_7_DI_3_Q
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_DI_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmountTemp(8),
      O => 
NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Msub_CoinHolderAmountTemp_9_soda_price_temp_9_sub_7_OUT_9_0_xor_9_DI_0_Q

    );
  NlwBufferBlock_Amt_err_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Amt_err_OBUF_1380,
      O => NlwBufferSignal_Amt_err_OBUF_I
    );
  NlwBufferBlock_Drcd_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Drcd_out_OBUF_0,
      O => NlwBufferSignal_Drcd_out_OBUF_I
    );
  NlwBufferBlock_CEn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CEn_1298,
      O => NlwBufferSignal_CEn_out_OBUF_I
    );
  NlwBufferBlock_CBn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CBn_1288,
      O => NlwBufferSignal_CBn_out_OBUF_I
    );
  NlwBufferBlock_ones_anode_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_ones_anode_1289,
      O => NlwBufferSignal_ones_anode_out_OBUF_I
    );
  NlwBufferBlock_tens_anode_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_tens_anode_1395,
      O => NlwBufferSignal_tens_anode_out_OBUF_I
    );
  NlwBufferBlock_CFn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CFn_1300,
      O => NlwBufferSignal_CFn_out_OBUF_I
    );
  NlwBufferBlock_Qrcd_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Qrcd_out_OBUF_0,
      O => NlwBufferSignal_Qrcd_out_OBUF_I
    );
  NlwBufferBlock_CCn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CCn_1291,
      O => NlwBufferSignal_CCn_out_OBUF_I
    );
  NlwBufferBlock_Nrcd_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Nrcd_out_OBUF_0,
      O => NlwBufferSignal_Nrcd_out_OBUF_I
    );
  NlwBufferBlock_CGn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CGn_1302,
      O => NlwBufferSignal_CGn_out_OBUF_I
    );
  NlwBufferBlock_Drop_soda_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Drop_soda_out_OBUF_0,
      O => NlwBufferSignal_Drop_soda_out_OBUF_I
    );
  NlwBufferBlock_CDn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CDn_1295,
      O => NlwBufferSignal_CDn_out_OBUF_I
    );
  NlwBufferBlock_hund_anode_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_hund_anode_0,
      O => NlwBufferSignal_hund_anode_out_OBUF_I
    );
  NlwBufferBlock_CAn_out_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_seven_seg_disp_CAn_1286,
      O => NlwBufferSignal_CAn_out_OBUF_I
    );
  NlwBufferBlock_instance0_coin_rx_Q_received_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_Q_received_CLK
    );
  NlwBufferBlock_instance0_coin_rx_Q_received_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_coin_rx_Q_reg_1424,
      O => NlwBufferSignal_instance0_coin_rx_Q_received_IN
    );
  NlwBufferBlock_instance0_coin_rx_Q_reg_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_Q_reg_CLK
    );
  NlwBufferBlock_instance0_coin_rx_Q_reg_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Qrcd_out_OBUF_0,
      O => NlwBufferSignal_instance0_coin_rx_Q_reg_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_8_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_2_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_7_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_5_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_3_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_1_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_6_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_0_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_soda_price_temp_4_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd2_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd3_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd1_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_Moore_State_FSM_FFd4_CLK
    );
  NlwBufferBlock_instance0_coin_rx_state_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_state_FSM_FFd3_CLK
    );
  NlwBufferBlock_instance0_coin_rx_Dp_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_Dp_CLK
    );
  NlwBufferBlock_instance0_coin_rx_Np_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_Np_CLK
    );
  NlwBufferBlock_instance0_coin_rx_state_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_state_FSM_FFd2_CLK
    );
  NlwBufferBlock_instance0_coin_rx_D_received_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_D_received_CLK
    );
  NlwBufferBlock_instance0_coin_rx_D_received_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_coin_rx_D_reg_1339,
      O => NlwBufferSignal_instance0_coin_rx_D_received_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_6_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_7_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_4_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_5_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_2_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_3_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_0_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_1_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_8_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_8_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_9_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_Coin_Controller_CoinHolderAmount_9_CLK
    );
  NlwBufferBlock_instance0_coin_rx_state_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_state_FSM_FFd1_CLK
    );
  NlwBufferBlock_instance0_coin_rx_Qp_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_Qp_CLK
    );
  NlwBufferBlock_instance0_coin_rx_N_received_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_N_received_CLK
    );
  NlwBufferBlock_instance0_coin_rx_N_received_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => instance0_coin_rx_N_reg_1342,
      O => NlwBufferSignal_instance0_coin_rx_N_received_IN
    );
  NlwBufferBlock_instance0_coin_rx_D_reg_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_D_reg_CLK
    );
  NlwBufferBlock_instance0_coin_rx_D_reg_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Drcd_out_OBUF_0,
      O => NlwBufferSignal_instance0_coin_rx_D_reg_IN
    );
  NlwBufferBlock_instance0_coin_rx_N_reg_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_coin_rx_N_reg_CLK
    );
  NlwBufferBlock_instance0_coin_rx_N_reg_IN : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Nrcd_out_OBUF_0,
      O => NlwBufferSignal_instance0_coin_rx_N_reg_IN
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_6_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_2_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_1_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_0_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_5_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_4_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_hund_disp_n_3_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_6_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_CEn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CEn_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_CGn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CGn_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_6_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_6_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_2_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_1_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_0_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_CFn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CFn_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_2_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_2_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_1_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_1_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_0_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_0_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_5_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_4_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_ones_disp_n_3_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_5_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_5_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_4_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_4_CLK
    );
  NlwBufferBlock_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_3_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_vending_machine_controller_instance0_seven_seg_dec_tens_disp_n_3_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_CAn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CAn_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_CDn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CDn_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_CCn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CCn_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_CBn_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_CBn_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_ones_anode_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_ones_anode_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_tens_anode_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_tens_anode_CLK
    );
  NlwBufferBlock_instance0_seven_seg_disp_hund_anode_CLK : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Clk_in_BUFGP,
      O => NlwBufferSignal_instance0_seven_seg_disp_hund_anode_CLK
    );
  NlwBlock_Usr_interaction_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_Usr_interaction_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

