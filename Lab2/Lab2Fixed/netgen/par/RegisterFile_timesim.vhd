--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: RegisterFile_timesim.vhd
-- /___/   /\     Timestamp: Tue Mar 01 18:36:04 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf RegisterFile.pcf -rpw 100 -tpw 0 -ar Structure -tm RegisterFile -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim RegisterFile.ncd RegisterFile_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: RegisterFile.ncd
-- Output file	: D:\DSDII\Lab2Fixed\netgen\par\RegisterFile_timesim.vhd
-- # of Entities	: 1
-- Design Name	: RegisterFile
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

entity RegisterFile is
  port (
    WE : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    CLOCK : in STD_LOGIC := 'X'; 
    RD1 : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    RD2 : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    WR : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    INPUT : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    OUT1 : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    OUT2 : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end RegisterFile;

architecture Structure of RegisterFile is
  signal DEC1_Mram_DATAOUT : STD_LOGIC; 
  signal CLOCK_BUFGP : STD_LOGIC; 
  signal INPUT_0_IBUF_0 : STD_LOGIC; 
  signal RM1_RESET_inv : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT4 : STD_LOGIC; 
  signal RM5_DATAOUT_15_0 : STD_LOGIC; 
  signal INPUT_15_IBUF_0 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT7_0 : STD_LOGIC; 
  signal INPUT_3_IBUF_0 : STD_LOGIC; 
  signal INPUT_1_IBUF_0 : STD_LOGIC; 
  signal INPUT_4_IBUF_0 : STD_LOGIC; 
  signal INPUT_2_IBUF_0 : STD_LOGIC; 
  signal INPUT_5_IBUF_0 : STD_LOGIC; 
  signal INPUT_6_IBUF_0 : STD_LOGIC; 
  signal INPUT_7_IBUF_0 : STD_LOGIC; 
  signal INPUT_8_IBUF_0 : STD_LOGIC; 
  signal INPUT_9_IBUF_0 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT1_0 : STD_LOGIC; 
  signal RM2_DATAOUT_10_0 : STD_LOGIC; 
  signal INPUT_10_IBUF_0 : STD_LOGIC; 
  signal RM2_DATAOUT_11_0 : STD_LOGIC; 
  signal INPUT_11_IBUF_0 : STD_LOGIC; 
  signal INPUT_12_IBUF_0 : STD_LOGIC; 
  signal INPUT_13_IBUF_0 : STD_LOGIC; 
  signal INPUT_14_IBUF_0 : STD_LOGIC; 
  signal RM2_DATAOUT_8_0 : STD_LOGIC; 
  signal RM2_DATAOUT_9_0 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT5_0 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT2 : STD_LOGIC; 
  signal RM3_DATAOUT_12_0 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT3_0 : STD_LOGIC; 
  signal RM3_DATAOUT_13_0 : STD_LOGIC; 
  signal RM3_DATAOUT_14_0 : STD_LOGIC; 
  signal RM3_DATAOUT_15_0 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT6 : STD_LOGIC; 
  signal CLOCK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal RD1_1_IBUF_0 : STD_LOGIC; 
  signal RD1_0_IBUF_0 : STD_LOGIC; 
  signal OUT1_0_OBUF_0 : STD_LOGIC; 
  signal RD1_2_IBUF_0 : STD_LOGIC; 
  signal RD2_1_IBUF_0 : STD_LOGIC; 
  signal RD2_0_IBUF_0 : STD_LOGIC; 
  signal OUT2_5_OBUF_0 : STD_LOGIC; 
  signal RD2_2_IBUF_0 : STD_LOGIC; 
  signal OUT2_6_OBUF_0 : STD_LOGIC; 
  signal OUT2_7_OBUF_0 : STD_LOGIC; 
  signal OUT2_8_OBUF_0 : STD_LOGIC; 
  signal OUT2_9_OBUF_0 : STD_LOGIC; 
  signal WR_2_IBUF_0 : STD_LOGIC; 
  signal WR_1_IBUF_0 : STD_LOGIC; 
  signal WR_0_IBUF_0 : STD_LOGIC; 
  signal WE_IBUF_0 : STD_LOGIC; 
  signal OUT2_10_OBUF_0 : STD_LOGIC; 
  signal OUT2_11_OBUF_0 : STD_LOGIC; 
  signal RM5_DATAOUT_12_0 : STD_LOGIC; 
  signal OUT2_12_OBUF_0 : STD_LOGIC; 
  signal RM4_DATAOUT_12_0 : STD_LOGIC; 
  signal RM1_DATAOUT_12_0 : STD_LOGIC; 
  signal OUT1_5_OBUF_0 : STD_LOGIC; 
  signal RM5_DATAOUT_13_0 : STD_LOGIC; 
  signal OUT2_13_OBUF_0 : STD_LOGIC; 
  signal RM4_DATAOUT_13_0 : STD_LOGIC; 
  signal RM1_DATAOUT_13_0 : STD_LOGIC; 
  signal OUT1_6_OBUF_0 : STD_LOGIC; 
  signal RM5_DATAOUT_14_0 : STD_LOGIC; 
  signal OUT2_14_OBUF_0 : STD_LOGIC; 
  signal RM4_DATAOUT_14_0 : STD_LOGIC; 
  signal RM1_DATAOUT_14_0 : STD_LOGIC; 
  signal OUT1_7_OBUF_0 : STD_LOGIC; 
  signal OUT2_15_OBUF_0 : STD_LOGIC; 
  signal RM4_DATAOUT_15_0 : STD_LOGIC; 
  signal RM1_DATAOUT_15_0 : STD_LOGIC; 
  signal OUT1_1_OBUF_0 : STD_LOGIC; 
  signal OUT1_10_OBUF_0 : STD_LOGIC; 
  signal OUT1_8_OBUF_0 : STD_LOGIC; 
  signal OUT1_2_OBUF_0 : STD_LOGIC; 
  signal OUT2_1_OBUF_0 : STD_LOGIC; 
  signal OUT1_11_OBUF_0 : STD_LOGIC; 
  signal OUT1_3_OBUF_0 : STD_LOGIC; 
  signal OUT1_9_OBUF_0 : STD_LOGIC; 
  signal OUT2_0_OBUF_0 : STD_LOGIC; 
  signal OUT2_2_OBUF_0 : STD_LOGIC; 
  signal OUT1_4_OBUF_0 : STD_LOGIC; 
  signal OUT1_12_OBUF_0 : STD_LOGIC; 
  signal OUT2_3_OBUF_0 : STD_LOGIC; 
  signal OUT1_13_OBUF_0 : STD_LOGIC; 
  signal OUT2_4_OBUF_0 : STD_LOGIC; 
  signal OUT1_14_OBUF_0 : STD_LOGIC; 
  signal OUT1_15_OBUF_0 : STD_LOGIC; 
  signal INPUT_10_IBUF_3 : STD_LOGIC; 
  signal INPUT_11_IBUF_6 : STD_LOGIC; 
  signal INPUT_12_IBUF_9 : STD_LOGIC; 
  signal INPUT_13_IBUF_14 : STD_LOGIC; 
  signal INPUT_14_IBUF_19 : STD_LOGIC; 
  signal INPUT_15_IBUF_24 : STD_LOGIC; 
  signal WR_0_IBUF_37 : STD_LOGIC; 
  signal WR_1_IBUF_44 : STD_LOGIC; 
  signal WR_2_IBUF_51 : STD_LOGIC; 
  signal INPUT_0_IBUF_66 : STD_LOGIC; 
  signal INPUT_1_IBUF_71 : STD_LOGIC; 
  signal INPUT_2_IBUF_76 : STD_LOGIC; 
  signal WE_IBUF_79 : STD_LOGIC; 
  signal INPUT_3_IBUF_82 : STD_LOGIC; 
  signal INPUT_4_IBUF_85 : STD_LOGIC; 
  signal INPUT_5_IBUF_88 : STD_LOGIC; 
  signal INPUT_6_IBUF_91 : STD_LOGIC; 
  signal INPUT_7_IBUF_94 : STD_LOGIC; 
  signal INPUT_8_IBUF_97 : STD_LOGIC; 
  signal INPUT_9_IBUF_100 : STD_LOGIC; 
  signal RD1_0_IBUF_103 : STD_LOGIC; 
  signal RD1_1_IBUF_106 : STD_LOGIC; 
  signal RD1_2_IBUF_111 : STD_LOGIC; 
  signal RD2_0_IBUF_118 : STD_LOGIC; 
  signal RD2_1_IBUF_123 : STD_LOGIC; 
  signal RD2_2_IBUF_128 : STD_LOGIC; 
  signal CLOCK_BUFGP_IBUFG_141 : STD_LOGIC; 
  signal ProtoComp9_IINV_OUT : STD_LOGIC; 
  signal RM1_RESET_inv_non_inverted : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_38_160 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_48_152 : STD_LOGIC; 
  signal OUT1_2_OBUF_151 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_39_176 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_49_168 : STD_LOGIC; 
  signal OUT1_3_OBUF_167 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_3_192 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_4_184 : STD_LOGIC; 
  signal OUT1_0_OBUF_183 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_38_230 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_48_222 : STD_LOGIC; 
  signal OUT2_2_OBUF_221 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_312_246 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_412_238 : STD_LOGIC; 
  signal OUT1_6_OBUF_237 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_39_262 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_49_254 : STD_LOGIC; 
  signal OUT2_3_OBUF_253 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_3_278 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_4_270 : STD_LOGIC; 
  signal OUT2_0_OBUF_269 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_312_338 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_412_330 : STD_LOGIC; 
  signal OUT2_6_OBUF_329 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_37_354 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_47_346 : STD_LOGIC; 
  signal OUT2_1_OBUF_345 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_37_370 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_47_362 : STD_LOGIC; 
  signal OUT1_1_OBUF_361 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_313_419 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_413_411 : STD_LOGIC; 
  signal OUT1_7_OBUF_410 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_32_457 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_42_449 : STD_LOGIC; 
  signal OUT1_11_OBUF_448 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_310_473 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_410_465 : STD_LOGIC; 
  signal OUT1_4_OBUF_464 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_310_489 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_410_481 : STD_LOGIC; 
  signal OUT2_4_OBUF_480 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_32_538 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_42_530 : STD_LOGIC; 
  signal OUT2_11_OBUF_529 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_313_554 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_413_546 : STD_LOGIC; 
  signal OUT2_7_OBUF_545 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_315_570 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_415_562 : STD_LOGIC; 
  signal OUT1_9_OBUF_561 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_33_586 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_43_578 : STD_LOGIC; 
  signal OUT1_12_OBUF_577 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_31_624 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_41_616 : STD_LOGIC; 
  signal OUT1_10_OBUF_615 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_36_640 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_46_632 : STD_LOGIC; 
  signal OUT1_15_OBUF_631 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_311_656 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_411_648 : STD_LOGIC; 
  signal OUT1_5_OBUF_647 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT3 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_315_682 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_415_674 : STD_LOGIC; 
  signal OUT2_9_OBUF_673 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT1 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_33_702 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_43_694 : STD_LOGIC; 
  signal OUT2_12_OBUF_693 : STD_LOGIC; 
  signal INPUT_12_IBUF_rt_741 : STD_LOGIC; 
  signal INPUT_13_IBUF_rt_734 : STD_LOGIC; 
  signal INPUT_14_IBUF_rt_728 : STD_LOGIC; 
  signal INPUT_15_IBUF_rt_727 : STD_LOGIC; 
  signal INPUT_8_IBUF_rt_764 : STD_LOGIC; 
  signal INPUT_9_IBUF_rt_757 : STD_LOGIC; 
  signal INPUT_10_IBUF_rt_751 : STD_LOGIC; 
  signal INPUT_11_IBUF_rt_750 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_31_786 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_41_778 : STD_LOGIC; 
  signal OUT2_10_OBUF_777 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_36_802 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_46_794 : STD_LOGIC; 
  signal OUT2_15_OBUF_793 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_311_818 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_411_810 : STD_LOGIC; 
  signal OUT2_5_OBUF_809 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT5 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_35_833 : STD_LOGIC; 
  signal OUT1_14_OBUF_826 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_45_825 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_34_857 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_44_849 : STD_LOGIC; 
  signal OUT1_13_OBUF_848 : STD_LOGIC; 
  signal RM4_DATAOUT_11_INPUT_12_IBUF_rt_885 : STD_LOGIC; 
  signal RM4_DATAOUT_11_INPUT_13_IBUF_rt_878 : STD_LOGIC; 
  signal RM4_DATAOUT_11_INPUT_14_IBUF_rt_872 : STD_LOGIC; 
  signal RM4_DATAOUT_11_INPUT_15_IBUF_rt_871 : STD_LOGIC; 
  signal RM3_DATAOUT_11_INPUT_12_IBUF_rt_908 : STD_LOGIC; 
  signal RM3_DATAOUT_11_INPUT_13_IBUF_rt_901 : STD_LOGIC; 
  signal RM3_DATAOUT_11_INPUT_14_IBUF_rt_895 : STD_LOGIC; 
  signal RM3_DATAOUT_11_INPUT_15_IBUF_rt_894 : STD_LOGIC; 
  signal RM5_DATAOUT_11_INPUT_12_IBUF_rt_931 : STD_LOGIC; 
  signal RM5_DATAOUT_11_INPUT_13_IBUF_rt_924 : STD_LOGIC; 
  signal RM5_DATAOUT_11_INPUT_14_IBUF_rt_918 : STD_LOGIC; 
  signal RM5_DATAOUT_11_INPUT_15_IBUF_rt_917 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_314_953 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_414_945 : STD_LOGIC; 
  signal OUT1_8_OBUF_944 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_314_969 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_414_961 : STD_LOGIC; 
  signal OUT2_8_OBUF_960 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_45_997 : STD_LOGIC; 
  signal OUT2_14_OBUF_995 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT7 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_35_983 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_34_1008 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_44_1000 : STD_LOGIC; 
  signal OUT2_13_OBUF_999 : STD_LOGIC; 
  signal NlwBufferSignal_CLOCK_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT1_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_OUT2_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM1_DATAOUT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM2_DATAOUT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM4_DATAOUT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM3_DATAOUT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM5_DATAOUT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM6_DATAOUT_12_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM7_DATAOUT_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_11_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_10_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_9_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_8_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_15_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_14_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_13_IN : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_RM8_DATAOUT_12_IN : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal RM1_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM8_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM2_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM6_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM3_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM4_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM7_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM5_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  CLOCK_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_CLOCK_BUFGP_BUFG_IN,
      O => CLOCK_BUFGP
    );
  INPUT_10_IBUF : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_10_IBUF_3,
      I => INPUT(10)
    );
  ProtoComp7_IMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_10_IBUF_3,
      O => INPUT_10_IBUF_0
    );
  INPUT_11_IBUF : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_11_IBUF_6,
      I => INPUT(11)
    );
  ProtoComp7_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_11_IBUF_6,
      O => INPUT_11_IBUF_0
    );
  INPUT_12_IBUF : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_12_IBUF_9,
      I => INPUT(12)
    );
  ProtoComp7_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_12_IBUF_9,
      O => INPUT_12_IBUF_0
    );
  OUT1_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD1"
    )
    port map (
      I => NlwBufferSignal_OUT1_0_OBUF_I,
      O => OUT1(0)
    );
  INPUT_13_IBUF : X_BUF
    generic map(
      LOC => "PAD66",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_13_IBUF_14,
      I => INPUT(13)
    );
  ProtoComp7_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD66",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_13_IBUF_14,
      O => INPUT_13_IBUF_0
    );
  OUT1_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD2"
    )
    port map (
      I => NlwBufferSignal_OUT1_1_OBUF_I,
      O => OUT1(1)
    );
  INPUT_14_IBUF : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_14_IBUF_19,
      I => INPUT(14)
    );
  ProtoComp7_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_14_IBUF_19,
      O => INPUT_14_IBUF_0
    );
  OUT1_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD3"
    )
    port map (
      I => NlwBufferSignal_OUT1_2_OBUF_I,
      O => OUT1(2)
    );
  INPUT_15_IBUF : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_15_IBUF_24,
      I => INPUT(15)
    );
  ProtoComp7_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_15_IBUF_24,
      O => INPUT_15_IBUF_0
    );
  OUT1_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD4"
    )
    port map (
      I => NlwBufferSignal_OUT1_3_OBUF_I,
      O => OUT1(3)
    );
  OUT2_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD26"
    )
    port map (
      I => NlwBufferSignal_OUT2_0_OBUF_I,
      O => OUT2(0)
    );
  OUT1_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD5"
    )
    port map (
      I => NlwBufferSignal_OUT1_4_OBUF_I,
      O => OUT1(4)
    );
  OUT2_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD27"
    )
    port map (
      I => NlwBufferSignal_OUT2_1_OBUF_I,
      O => OUT2(1)
    );
  OUT1_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => NlwBufferSignal_OUT1_5_OBUF_I,
      O => OUT1(5)
    );
  WR_0_IBUF : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 202 ps
    )
    port map (
      O => WR_0_IBUF_37,
      I => WR(0)
    );
  ProtoComp7_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 202 ps
    )
    port map (
      I => WR_0_IBUF_37,
      O => WR_0_IBUF_0
    );
  OUT2_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD28"
    )
    port map (
      I => NlwBufferSignal_OUT2_2_OBUF_I,
      O => OUT2(2)
    );
  OUT1_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => NlwBufferSignal_OUT1_6_OBUF_I,
      O => OUT1(6)
    );
  WR_1_IBUF : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 202 ps
    )
    port map (
      O => WR_1_IBUF_44,
      I => WR(1)
    );
  ProtoComp7_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 202 ps
    )
    port map (
      I => WR_1_IBUF_44,
      O => WR_1_IBUF_0
    );
  OUT2_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD29"
    )
    port map (
      I => NlwBufferSignal_OUT2_3_OBUF_I,
      O => OUT2(3)
    );
  OUT1_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => NlwBufferSignal_OUT1_7_OBUF_I,
      O => OUT1(7)
    );
  WR_2_IBUF : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 202 ps
    )
    port map (
      O => WR_2_IBUF_51,
      I => WR(2)
    );
  ProtoComp7_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 202 ps
    )
    port map (
      I => WR_2_IBUF_51,
      O => WR_2_IBUF_0
    );
  OUT2_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => NlwBufferSignal_OUT2_4_OBUF_I,
      O => OUT2(4)
    );
  OUT1_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD9"
    )
    port map (
      I => NlwBufferSignal_OUT1_8_OBUF_I,
      O => OUT1(8)
    );
  OUT2_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD31"
    )
    port map (
      I => NlwBufferSignal_OUT2_5_OBUF_I,
      O => OUT2(5)
    );
  OUT1_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD10"
    )
    port map (
      I => NlwBufferSignal_OUT1_9_OBUF_I,
      O => OUT1(9)
    );
  OUT2_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD32"
    )
    port map (
      I => NlwBufferSignal_OUT2_6_OBUF_I,
      O => OUT2(6)
    );
  OUT2_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD33"
    )
    port map (
      I => NlwBufferSignal_OUT2_7_OBUF_I,
      O => OUT2(7)
    );
  INPUT_0_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_0_IBUF_66,
      I => INPUT(0)
    );
  ProtoComp7_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_0_IBUF_66,
      O => INPUT_0_IBUF_0
    );
  OUT2_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => NlwBufferSignal_OUT2_8_OBUF_I,
      O => OUT2(8)
    );
  INPUT_1_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_1_IBUF_71,
      I => INPUT(1)
    );
  ProtoComp7_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_1_IBUF_71,
      O => INPUT_1_IBUF_0
    );
  OUT2_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD35"
    )
    port map (
      I => NlwBufferSignal_OUT2_9_OBUF_I,
      O => OUT2(9)
    );
  INPUT_2_IBUF : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_2_IBUF_76,
      I => INPUT(2)
    );
  ProtoComp7_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_2_IBUF_76,
      O => INPUT_2_IBUF_0
    );
  WE_IBUF : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 202 ps
    )
    port map (
      O => WE_IBUF_79,
      I => WE
    );
  ProtoComp7_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 202 ps
    )
    port map (
      I => WE_IBUF_79,
      O => WE_IBUF_0
    );
  INPUT_3_IBUF : X_BUF
    generic map(
      LOC => "PAD46",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_3_IBUF_82,
      I => INPUT(3)
    );
  ProtoComp7_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD46",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_3_IBUF_82,
      O => INPUT_3_IBUF_0
    );
  INPUT_4_IBUF : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_4_IBUF_85,
      I => INPUT(4)
    );
  ProtoComp7_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_4_IBUF_85,
      O => INPUT_4_IBUF_0
    );
  INPUT_5_IBUF : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_5_IBUF_88,
      I => INPUT(5)
    );
  ProtoComp7_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_5_IBUF_88,
      O => INPUT_5_IBUF_0
    );
  INPUT_6_IBUF : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_6_IBUF_91,
      I => INPUT(6)
    );
  ProtoComp7_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_6_IBUF_91,
      O => INPUT_6_IBUF_0
    );
  INPUT_7_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_7_IBUF_94,
      I => INPUT(7)
    );
  ProtoComp7_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_7_IBUF_94,
      O => INPUT_7_IBUF_0
    );
  INPUT_8_IBUF : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_8_IBUF_97,
      I => INPUT(8)
    );
  ProtoComp7_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_8_IBUF_97,
      O => INPUT_8_IBUF_0
    );
  INPUT_9_IBUF : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 202 ps
    )
    port map (
      O => INPUT_9_IBUF_100,
      I => INPUT(9)
    );
  ProtoComp7_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_9_IBUF_100,
      O => INPUT_9_IBUF_0
    );
  RD1_0_IBUF : X_BUF
    generic map(
      LOC => "PAD13",
      PATHPULSE => 202 ps
    )
    port map (
      O => RD1_0_IBUF_103,
      I => RD1(0)
    );
  ProtoComp7_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD13",
      PATHPULSE => 202 ps
    )
    port map (
      I => RD1_0_IBUF_103,
      O => RD1_0_IBUF_0
    );
  RD1_1_IBUF : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 202 ps
    )
    port map (
      O => RD1_1_IBUF_106,
      I => RD1(1)
    );
  ProtoComp7_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 202 ps
    )
    port map (
      I => RD1_1_IBUF_106,
      O => RD1_1_IBUF_0
    );
  OUT1_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => NlwBufferSignal_OUT1_10_OBUF_I,
      O => OUT1(10)
    );
  RD1_2_IBUF : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 202 ps
    )
    port map (
      O => RD1_2_IBUF_111,
      I => RD1(2)
    );
  ProtoComp7_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 202 ps
    )
    port map (
      I => RD1_2_IBUF_111,
      O => RD1_2_IBUF_0
    );
  OUT1_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD12"
    )
    port map (
      I => NlwBufferSignal_OUT1_11_OBUF_I,
      O => OUT1(11)
    );
  OUT1_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD16"
    )
    port map (
      I => NlwBufferSignal_OUT1_12_OBUF_I,
      O => OUT1(12)
    );
  RD2_0_IBUF : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 202 ps
    )
    port map (
      O => RD2_0_IBUF_118,
      I => RD2(0)
    );
  ProtoComp7_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 202 ps
    )
    port map (
      I => RD2_0_IBUF_118,
      O => RD2_0_IBUF_0
    );
  OUT1_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD15"
    )
    port map (
      I => NlwBufferSignal_OUT1_13_OBUF_I,
      O => OUT1(13)
    );
  RD2_1_IBUF : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 202 ps
    )
    port map (
      O => RD2_1_IBUF_123,
      I => RD2(1)
    );
  ProtoComp7_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 202 ps
    )
    port map (
      I => RD2_1_IBUF_123,
      O => RD2_1_IBUF_0
    );
  OUT1_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD19"
    )
    port map (
      I => NlwBufferSignal_OUT1_14_OBUF_I,
      O => OUT1(14)
    );
  RD2_2_IBUF : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 202 ps
    )
    port map (
      O => RD2_2_IBUF_128,
      I => RD2(2)
    );
  ProtoComp7_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 202 ps
    )
    port map (
      I => RD2_2_IBUF_128,
      O => RD2_2_IBUF_0
    );
  OUT1_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD20"
    )
    port map (
      I => NlwBufferSignal_OUT1_15_OBUF_I,
      O => OUT1(15)
    );
  OUT2_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD36"
    )
    port map (
      I => NlwBufferSignal_OUT2_10_OBUF_I,
      O => OUT2(10)
    );
  OUT2_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => NlwBufferSignal_OUT2_11_OBUF_I,
      O => OUT2(11)
    );
  OUT2_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => NlwBufferSignal_OUT2_12_OBUF_I,
      O => OUT2(12)
    );
  OUT2_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => NlwBufferSignal_OUT2_13_OBUF_I,
      O => OUT2(13)
    );
  CLOCK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLOCK_BUFGP_IBUFG_141,
      I => CLOCK
    );
  ProtoComp7_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP_IBUFG_141,
      O => CLOCK_BUFGP_IBUFG_0
    );
  OUT2_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD40"
    )
    port map (
      I => NlwBufferSignal_OUT2_14_OBUF_I,
      O => OUT2(14)
    );
  OUT2_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD41"
    )
    port map (
      I => NlwBufferSignal_OUT2_15_OBUF_I,
      O => OUT2(15)
    );
  RESET_IBUF : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 202 ps
    )
    port map (
      O => RM1_RESET_inv_non_inverted,
      I => RESET
    );
  ProtoComp9_IMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 202 ps
    )
    port map (
      I => ProtoComp9_IINV_OUT,
      O => RM1_RESET_inv
    );
  ProtoComp9_IINV : X_INV
    generic map(
      LOC => "PAD25",
      PATHPULSE => 202 ps
    )
    port map (
      I => RM1_RESET_inv_non_inverted,
      O => ProtoComp9_IINV_OUT
    );
  OUT1_2_OBUF_OUT1_2_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_2_OBUF_151,
      O => OUT1_2_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y27"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_48_152,
      IB => MUX1_Mmux_DATAOUT_38_160,
      O => OUT1_2_OBUF_151,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_48 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y27",
      INIT => X"E4FFE455E4AAE400"
    )
    port map (
      ADR0 => RD1_1_IBUF_0,
      ADR3 => RD1_0_IBUF_0,
      ADR4 => RM3_DATAOUT(2),
      ADR2 => RM4_DATAOUT(2),
      ADR1 => RM2_DATAOUT(2),
      ADR5 => RM1_DATAOUT(2),
      O => MUX1_Mmux_DATAOUT_48_152
    );
  MUX1_Mmux_DATAOUT_38 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y27",
      INIT => X"FACF0ACFFAC00AC0"
    )
    port map (
      ADR3 => RD1_1_IBUF_0,
      ADR2 => RD1_0_IBUF_0,
      ADR0 => RM7_DATAOUT(2),
      ADR4 => RM8_DATAOUT(2),
      ADR1 => RM6_DATAOUT(2),
      ADR5 => RM5_DATAOUT(2),
      O => MUX1_Mmux_DATAOUT_38_160
    );
  OUT1_3_OBUF_OUT1_3_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_3_OBUF_167,
      O => OUT1_3_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_8 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y30"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_49_168,
      IB => MUX1_Mmux_DATAOUT_39_176,
      O => OUT1_3_OBUF_167,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_49 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y30",
      INIT => X"FFF0AACC00F0AACC"
    )
    port map (
      ADR3 => RD1_1_IBUF_0,
      ADR4 => RD1_0_IBUF_0,
      ADR0 => RM3_DATAOUT(3),
      ADR5 => RM4_DATAOUT(3),
      ADR2 => RM2_DATAOUT(3),
      ADR1 => RM1_DATAOUT(3),
      O => MUX1_Mmux_DATAOUT_49_168
    );
  MUX1_Mmux_DATAOUT_39 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y30",
      INIT => X"FADD50DDFA885088"
    )
    port map (
      ADR0 => RD1_1_IBUF_0,
      ADR3 => RD1_0_IBUF_0,
      ADR1 => RM7_DATAOUT(3),
      ADR4 => RM8_DATAOUT(3),
      ADR2 => RM6_DATAOUT(3),
      ADR5 => RM5_DATAOUT(3),
      O => MUX1_Mmux_DATAOUT_39_176
    );
  OUT1_0_OBUF_OUT1_0_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_0_OBUF_183,
      O => OUT1_0_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y31"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_4_184,
      IB => MUX1_Mmux_DATAOUT_3_192,
      O => OUT1_0_OBUF_183,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_4 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y31",
      INIT => X"F3BBF388C0BBC088"
    )
    port map (
      ADR1 => RD1_1_IBUF_0,
      ADR3 => RD1_0_IBUF_0,
      ADR0 => RM3_DATAOUT(0),
      ADR2 => RM4_DATAOUT(0),
      ADR5 => RM2_DATAOUT(0),
      ADR4 => RM1_DATAOUT(0),
      O => MUX1_Mmux_DATAOUT_4_184
    );
  MUX1_Mmux_DATAOUT_3 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y31",
      INIT => X"AAAAFF00F0F0CCCC"
    )
    port map (
      ADR5 => RD1_1_IBUF_0,
      ADR4 => RD1_0_IBUF_0,
      ADR3 => RM7_DATAOUT(0),
      ADR0 => RM8_DATAOUT(0),
      ADR2 => RM6_DATAOUT(0),
      ADR1 => RM5_DATAOUT(0),
      O => MUX1_Mmux_DATAOUT_3_192
    );
  RM5_DATAOUT_3 : X_SFF
    generic map(
      LOC => "SLICE_X1Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_3_CLK,
      I => NlwBufferSignal_RM5_DATAOUT_3_IN,
      O => RM5_DATAOUT(3),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_2 : X_SFF
    generic map(
      LOC => "SLICE_X1Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_2_CLK,
      I => NlwBufferSignal_RM5_DATAOUT_2_IN,
      O => RM5_DATAOUT(2),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_1 : X_SFF
    generic map(
      LOC => "SLICE_X1Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_1_CLK,
      I => NlwBufferSignal_RM5_DATAOUT_1_IN,
      O => RM5_DATAOUT(1),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_0 : X_SFF
    generic map(
      LOC => "SLICE_X1Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_0_CLK,
      I => NlwBufferSignal_RM5_DATAOUT_0_IN,
      O => RM5_DATAOUT(0),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_3 : X_SFF
    generic map(
      LOC => "SLICE_X1Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_3_CLK,
      I => NlwBufferSignal_RM4_DATAOUT_3_IN,
      O => RM4_DATAOUT(3),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_2 : X_SFF
    generic map(
      LOC => "SLICE_X1Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_2_CLK,
      I => NlwBufferSignal_RM4_DATAOUT_2_IN,
      O => RM4_DATAOUT(2),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_1 : X_SFF
    generic map(
      LOC => "SLICE_X1Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_1_CLK,
      I => NlwBufferSignal_RM4_DATAOUT_1_IN,
      O => RM4_DATAOUT(1),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_0 : X_SFF
    generic map(
      LOC => "SLICE_X1Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_0_CLK,
      I => NlwBufferSignal_RM4_DATAOUT_0_IN,
      O => RM4_DATAOUT(0),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  OUT2_2_OBUF_OUT2_2_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_2_OBUF_221,
      O => OUT2_2_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7_7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y27"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_48_222,
      IB => MUX2_Mmux_DATAOUT_38_230,
      O => OUT2_2_OBUF_221,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_48 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y27",
      INIT => X"FBCB3B0BF8C83808"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR1 => RD2_0_IBUF_0,
      ADR3 => RM3_DATAOUT(2),
      ADR4 => RM4_DATAOUT(2),
      ADR0 => RM2_DATAOUT(2),
      ADR5 => RM1_DATAOUT(2),
      O => MUX2_Mmux_DATAOUT_48_222
    );
  MUX2_Mmux_DATAOUT_38 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y27",
      INIT => X"FFB833B8CCB800B8"
    )
    port map (
      ADR1 => RD2_1_IBUF_0,
      ADR3 => RD2_0_IBUF_0,
      ADR0 => RM7_DATAOUT(2),
      ADR4 => RM8_DATAOUT(2),
      ADR5 => RM6_DATAOUT(2),
      ADR2 => RM5_DATAOUT(2),
      O => MUX2_Mmux_DATAOUT_38_230
    );
  OUT1_6_OBUF_OUT1_6_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_6_OBUF_237,
      O => OUT1_6_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_11 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y29"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_412_238,
      IB => MUX1_Mmux_DATAOUT_312_246,
      O => OUT1_6_OBUF_237,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_412 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y29",
      INIT => X"FDF8ADA85D580D08"
    )
    port map (
      ADR2 => RD1_1_IBUF_0,
      ADR0 => RD1_0_IBUF_0,
      ADR4 => RM3_DATAOUT(6),
      ADR5 => RM4_DATAOUT(6),
      ADR1 => RM2_DATAOUT(6),
      ADR3 => RM1_DATAOUT(6),
      O => MUX1_Mmux_DATAOUT_412_238
    );
  MUX1_Mmux_DATAOUT_312 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y29",
      INIT => X"EEF544F5EEA044A0"
    )
    port map (
      ADR0 => RD1_1_IBUF_0,
      ADR3 => RD1_0_IBUF_0,
      ADR2 => RM7_DATAOUT(6),
      ADR4 => RM8_DATAOUT(6),
      ADR1 => RM6_DATAOUT(6),
      ADR5 => RM5_DATAOUT(6),
      O => MUX1_Mmux_DATAOUT_312_246
    );
  OUT2_3_OBUF_OUT2_3_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_3_OBUF_253,
      O => OUT2_3_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7_8 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y30"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_49_254,
      IB => MUX2_Mmux_DATAOUT_39_262,
      O => OUT2_3_OBUF_253,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_49 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => X"FCFAFC0A0CFA0C0A"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR3 => RD2_0_IBUF_0,
      ADR4 => RM3_DATAOUT(3),
      ADR5 => RM4_DATAOUT(3),
      ADR1 => RM2_DATAOUT(3),
      ADR0 => RM1_DATAOUT(3),
      O => MUX2_Mmux_DATAOUT_49_254
    );
  MUX2_Mmux_DATAOUT_39 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => X"FB73EA62D951C840"
    )
    port map (
      ADR1 => RD2_1_IBUF_0,
      ADR0 => RD2_0_IBUF_0,
      ADR2 => RM7_DATAOUT(3),
      ADR3 => RM8_DATAOUT(3),
      ADR5 => RM6_DATAOUT(3),
      ADR4 => RM5_DATAOUT(3),
      O => MUX2_Mmux_DATAOUT_39_262
    );
  OUT2_0_OBUF_OUT2_0_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_0_OBUF_269,
      O => OUT2_0_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y31"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_4_270,
      IB => MUX2_Mmux_DATAOUT_3_278,
      O => OUT2_0_OBUF_269,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y31",
      INIT => X"BF8FBC8CB383B080"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR1 => RD2_0_IBUF_0,
      ADR3 => RM3_DATAOUT(0),
      ADR0 => RM4_DATAOUT(0),
      ADR5 => RM2_DATAOUT(0),
      ADR4 => RM1_DATAOUT(0),
      O => MUX2_Mmux_DATAOUT_4_270
    );
  MUX2_Mmux_DATAOUT_3 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y31",
      INIT => X"FF00CCCCAAAAF0F0"
    )
    port map (
      ADR4 => RD2_1_IBUF_0,
      ADR5 => RD2_0_IBUF_0,
      ADR0 => RM7_DATAOUT(0),
      ADR3 => RM8_DATAOUT(0),
      ADR1 => RM6_DATAOUT(0),
      ADR2 => RM5_DATAOUT(0),
      O => MUX2_Mmux_DATAOUT_3_278
    );
  RM6_DATAOUT_3 : X_SFF
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_3_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_3_IN,
      O => RM6_DATAOUT(3),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM6_DATAOUT_2 : X_SFF
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_2_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_2_IN,
      O => RM6_DATAOUT(2),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM6_DATAOUT_1 : X_SFF
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_1_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_1_IN,
      O => RM6_DATAOUT(1),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM6_DATAOUT_0 : X_SFF
    generic map(
      LOC => "SLICE_X3Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_0_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_0_IN,
      O => RM6_DATAOUT(0),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM1_DATAOUT_3 : X_SFF
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_3_CLK,
      I => NlwBufferSignal_RM1_DATAOUT_3_IN,
      O => RM1_DATAOUT(3),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM1_DATAOUT_2 : X_SFF
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_2_CLK,
      I => NlwBufferSignal_RM1_DATAOUT_2_IN,
      O => RM1_DATAOUT(2),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM1_DATAOUT_1 : X_SFF
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_1_CLK,
      I => NlwBufferSignal_RM1_DATAOUT_1_IN,
      O => RM1_DATAOUT(1),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM1_DATAOUT_0 : X_SFF
    generic map(
      LOC => "SLICE_X3Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_0_CLK,
      I => NlwBufferSignal_RM1_DATAOUT_0_IN,
      O => RM1_DATAOUT(0),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM2_DATAOUT_3 : X_SFF
    generic map(
      LOC => "SLICE_X3Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_3_CLK,
      I => NlwBufferSignal_RM2_DATAOUT_3_IN,
      O => RM2_DATAOUT(3),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM2_DATAOUT_2 : X_SFF
    generic map(
      LOC => "SLICE_X3Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_2_CLK,
      I => NlwBufferSignal_RM2_DATAOUT_2_IN,
      O => RM2_DATAOUT(2),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM2_DATAOUT_1 : X_SFF
    generic map(
      LOC => "SLICE_X3Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_1_CLK,
      I => NlwBufferSignal_RM2_DATAOUT_1_IN,
      O => RM2_DATAOUT(1),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM2_DATAOUT_0 : X_SFF
    generic map(
      LOC => "SLICE_X3Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_0_CLK,
      I => NlwBufferSignal_RM2_DATAOUT_0_IN,
      O => RM2_DATAOUT(0),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_3 : X_SFF
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_3_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_3_IN,
      O => RM7_DATAOUT(3),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_2 : X_SFF
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_2_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_2_IN,
      O => RM7_DATAOUT(2),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_1 : X_SFF
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_1_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_1_IN,
      O => RM7_DATAOUT(1),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_0 : X_SFF
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_0_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_0_IN,
      O => RM7_DATAOUT(0),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  OUT2_6_OBUF_OUT2_6_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_6_OBUF_329,
      O => OUT2_6_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7_11 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y29"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_412_330,
      IB => MUX2_Mmux_DATAOUT_312_338,
      O => OUT2_6_OBUF_329,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_412 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"AFAFA0A0CFC0CFC0"
    )
    port map (
      ADR5 => RD2_1_IBUF_0,
      ADR2 => RD2_0_IBUF_0,
      ADR4 => RM3_DATAOUT(6),
      ADR0 => RM4_DATAOUT(6),
      ADR1 => RM2_DATAOUT(6),
      ADR3 => RM1_DATAOUT(6),
      O => MUX2_Mmux_DATAOUT_412_330
    );
  MUX2_Mmux_DATAOUT_312 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"AFCFAFC0A0CFA0C0"
    )
    port map (
      ADR3 => RD2_1_IBUF_0,
      ADR2 => RD2_0_IBUF_0,
      ADR5 => RM7_DATAOUT(6),
      ADR0 => RM8_DATAOUT(6),
      ADR1 => RM6_DATAOUT(6),
      ADR4 => RM5_DATAOUT(6),
      O => MUX2_Mmux_DATAOUT_312_338
    );
  OUT2_1_OBUF_OUT2_1_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_1_OBUF_345,
      O => OUT2_1_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7_6 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y30"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_47_346,
      IB => MUX2_Mmux_DATAOUT_37_354,
      O => OUT2_1_OBUF_345,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_47 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y30",
      INIT => X"CFC0CFC0FAFA0A0A"
    )
    port map (
      ADR5 => RD2_1_IBUF_0,
      ADR2 => RD2_0_IBUF_0,
      ADR3 => RM3_DATAOUT(1),
      ADR1 => RM4_DATAOUT(1),
      ADR4 => RM2_DATAOUT(1),
      ADR0 => RM1_DATAOUT(1),
      O => MUX2_Mmux_DATAOUT_47_346
    );
  MUX2_Mmux_DATAOUT_37 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y30",
      INIT => X"FBCBF8C83B0B3808"
    )
    port map (
      ADR1 => RD2_1_IBUF_0,
      ADR2 => RD2_0_IBUF_0,
      ADR0 => RM7_DATAOUT(1),
      ADR5 => RM8_DATAOUT(1),
      ADR3 => RM6_DATAOUT(1),
      ADR4 => RM5_DATAOUT(1),
      O => MUX2_Mmux_DATAOUT_37_354
    );
  OUT1_1_OBUF_OUT1_1_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_1_OBUF_361,
      O => OUT1_1_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_6 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y31"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_47_362,
      IB => MUX1_Mmux_DATAOUT_37_370,
      O => OUT1_1_OBUF_361,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_47 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => X"FCFCBB883030BB88"
    )
    port map (
      ADR1 => RD1_1_IBUF_0,
      ADR4 => RD1_0_IBUF_0,
      ADR0 => RM3_DATAOUT(1),
      ADR5 => RM4_DATAOUT(1),
      ADR2 => RM2_DATAOUT(1),
      ADR3 => RM1_DATAOUT(1),
      O => MUX1_Mmux_DATAOUT_47_362
    );
  MUX1_Mmux_DATAOUT_37 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => X"AFA0AFA0CFCFC0C0"
    )
    port map (
      ADR2 => RD1_1_IBUF_0,
      ADR5 => RD1_0_IBUF_0,
      ADR1 => RM7_DATAOUT(1),
      ADR0 => RM8_DATAOUT(1),
      ADR3 => RM6_DATAOUT(1),
      ADR4 => RM5_DATAOUT(1),
      O => MUX1_Mmux_DATAOUT_37_370
    );
  RM3_DATAOUT_7 : X_SFF
    generic map(
      LOC => "SLICE_X5Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_7_CLK,
      I => NlwBufferSignal_RM3_DATAOUT_7_IN,
      O => RM3_DATAOUT(7),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_6 : X_SFF
    generic map(
      LOC => "SLICE_X5Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_6_CLK,
      I => NlwBufferSignal_RM3_DATAOUT_6_IN,
      O => RM3_DATAOUT(6),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_5 : X_SFF
    generic map(
      LOC => "SLICE_X5Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_5_CLK,
      I => NlwBufferSignal_RM3_DATAOUT_5_IN,
      O => RM3_DATAOUT(5),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_4 : X_SFF
    generic map(
      LOC => "SLICE_X5Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_4_CLK,
      I => NlwBufferSignal_RM3_DATAOUT_4_IN,
      O => RM3_DATAOUT(4),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_3 : X_SFF
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_3_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_3_IN,
      O => RM8_DATAOUT(3),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_2 : X_SFF
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_2_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_2_IN,
      O => RM8_DATAOUT(2),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_1 : X_SFF
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_1_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_1_IN,
      O => RM8_DATAOUT(1),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_0 : X_SFF
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_0_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_0_IN,
      O => RM8_DATAOUT(0),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_3 : X_SFF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_3_CLK,
      I => NlwBufferSignal_RM3_DATAOUT_3_IN,
      O => RM3_DATAOUT(3),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_2 : X_SFF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_2_CLK,
      I => NlwBufferSignal_RM3_DATAOUT_2_IN,
      O => RM3_DATAOUT(2),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_1 : X_SFF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_1_CLK,
      I => NlwBufferSignal_RM3_DATAOUT_1_IN,
      O => RM3_DATAOUT(1),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_0 : X_SFF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_0_CLK,
      I => NlwBufferSignal_RM3_DATAOUT_0_IN,
      O => RM3_DATAOUT(0),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  OUT1_7_OBUF_OUT1_7_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_7_OBUF_410,
      O => OUT1_7_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_12 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y29"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_413_411,
      IB => MUX1_Mmux_DATAOUT_313_419,
      O => OUT1_7_OBUF_410,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_413 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"EEFAEE5044FA4450"
    )
    port map (
      ADR0 => RD1_1_IBUF_0,
      ADR3 => RD1_0_IBUF_0,
      ADR4 => RM3_DATAOUT(7),
      ADR5 => RM4_DATAOUT(7),
      ADR1 => RM2_DATAOUT(7),
      ADR2 => RM1_DATAOUT(7),
      O => MUX1_Mmux_DATAOUT_413_411
    );
  MUX1_Mmux_DATAOUT_313 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"CFAFCFA0C0AFC0A0"
    )
    port map (
      ADR3 => RD1_1_IBUF_0,
      ADR2 => RD1_0_IBUF_0,
      ADR5 => RM7_DATAOUT(7),
      ADR1 => RM8_DATAOUT(7),
      ADR0 => RM6_DATAOUT(7),
      ADR4 => RM5_DATAOUT(7),
      O => MUX1_Mmux_DATAOUT_313_419
    );
  RM8_DATAOUT_7 : X_SFF
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_7_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_7_IN,
      O => RM8_DATAOUT(7),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_6 : X_SFF
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_6_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_6_IN,
      O => RM8_DATAOUT(6),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_5 : X_SFF
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_5_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_5_IN,
      O => RM8_DATAOUT(5),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_4 : X_SFF
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_4_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_4_IN,
      O => RM8_DATAOUT(4),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_7 : X_SFF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_7_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_7_IN,
      O => RM7_DATAOUT(7),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_6 : X_SFF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_6_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_6_IN,
      O => RM7_DATAOUT(6),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_5 : X_SFF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_5_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_5_IN,
      O => RM7_DATAOUT(5),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_4 : X_SFF
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_4_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_4_IN,
      O => RM7_DATAOUT(4),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  OUT1_11_OBUF_OUT1_11_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_11_OBUF_448,
      O => OUT1_11_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_1 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y28"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_42_449,
      IB => MUX1_Mmux_DATAOUT_32_457,
      O => OUT1_11_OBUF_448,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_42 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => X"FFB833B8CCB800B8"
    )
    port map (
      ADR3 => RD1_1_IBUF_0,
      ADR1 => RD1_0_IBUF_0,
      ADR5 => RM3_DATAOUT(11),
      ADR4 => RM4_DATAOUT(11),
      ADR0 => RM2_DATAOUT_11_0,
      ADR2 => RM1_DATAOUT(11),
      O => MUX1_Mmux_DATAOUT_42_449
    );
  MUX1_Mmux_DATAOUT_32 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => X"EFE3ECE02F232C20"
    )
    port map (
      ADR2 => RD1_1_IBUF_0,
      ADR1 => RD1_0_IBUF_0,
      ADR0 => RM7_DATAOUT(11),
      ADR5 => RM8_DATAOUT(11),
      ADR3 => RM6_DATAOUT(11),
      ADR4 => RM5_DATAOUT(11),
      O => MUX1_Mmux_DATAOUT_32_457
    );
  OUT1_4_OBUF_OUT1_4_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_4_OBUF_464,
      O => OUT1_4_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_9 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y29"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_410_465,
      IB => MUX1_Mmux_DATAOUT_310_473,
      O => OUT1_4_OBUF_464,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_410 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"F3C0BBBBF3C08888"
    )
    port map (
      ADR1 => RD1_1_IBUF_0,
      ADR4 => RD1_0_IBUF_0,
      ADR0 => RM3_DATAOUT(4),
      ADR2 => RM4_DATAOUT(4),
      ADR3 => RM2_DATAOUT(4),
      ADR5 => RM1_DATAOUT(4),
      O => MUX1_Mmux_DATAOUT_410_465
    );
  MUX1_Mmux_DATAOUT_310 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"F0AAF0AAFFCC00CC"
    )
    port map (
      ADR5 => RD1_1_IBUF_0,
      ADR3 => RD1_0_IBUF_0,
      ADR0 => RM7_DATAOUT(4),
      ADR2 => RM8_DATAOUT(4),
      ADR4 => RM6_DATAOUT(4),
      ADR1 => RM5_DATAOUT(4),
      O => MUX1_Mmux_DATAOUT_310_473
    );
  OUT2_4_OBUF_OUT2_4_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_4_OBUF_480,
      O => OUT2_4_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7_9 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y30"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_410_481,
      IB => MUX2_Mmux_DATAOUT_310_489,
      O => OUT2_4_OBUF_480,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_410 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => X"FFD8AAD855D800D8"
    )
    port map (
      ADR3 => RD2_1_IBUF_0,
      ADR0 => RD2_0_IBUF_0,
      ADR4 => RM3_DATAOUT(4),
      ADR5 => RM4_DATAOUT(4),
      ADR1 => RM2_DATAOUT(4),
      ADR2 => RM1_DATAOUT(4),
      O => MUX2_Mmux_DATAOUT_410_481
    );
  MUX2_Mmux_DATAOUT_310 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => X"F0CCFFAAF0CC00AA"
    )
    port map (
      ADR4 => RD2_1_IBUF_0,
      ADR3 => RD2_0_IBUF_0,
      ADR1 => RM7_DATAOUT(4),
      ADR2 => RM8_DATAOUT(4),
      ADR5 => RM6_DATAOUT(4),
      ADR0 => RM5_DATAOUT(4),
      O => MUX2_Mmux_DATAOUT_310_489
    );
  RM6_DATAOUT_7 : X_SFF
    generic map(
      LOC => "SLICE_X9Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_7_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_7_IN,
      O => RM6_DATAOUT(7),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM6_DATAOUT_6 : X_SFF
    generic map(
      LOC => "SLICE_X9Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_6_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_6_IN,
      O => RM6_DATAOUT(6),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM6_DATAOUT_5 : X_SFF
    generic map(
      LOC => "SLICE_X9Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_5_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_5_IN,
      O => RM6_DATAOUT(5),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM6_DATAOUT_4 : X_SFF
    generic map(
      LOC => "SLICE_X9Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_4_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_4_IN,
      O => RM6_DATAOUT(4),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_7 : X_SFF
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_7_CLK,
      I => NlwBufferSignal_RM4_DATAOUT_7_IN,
      O => RM4_DATAOUT(7),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_6 : X_SFF
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_6_CLK,
      I => NlwBufferSignal_RM4_DATAOUT_6_IN,
      O => RM4_DATAOUT(6),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_5 : X_SFF
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_5_CLK,
      I => NlwBufferSignal_RM4_DATAOUT_5_IN,
      O => RM4_DATAOUT(5),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_4 : X_SFF
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_4_CLK,
      I => NlwBufferSignal_RM4_DATAOUT_4_IN,
      O => RM4_DATAOUT(4),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_7 : X_SFF
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_7_CLK,
      I => NlwBufferSignal_RM5_DATAOUT_7_IN,
      O => RM5_DATAOUT(7),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_6 : X_SFF
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_6_CLK,
      I => NlwBufferSignal_RM5_DATAOUT_6_IN,
      O => RM5_DATAOUT(6),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_5 : X_SFF
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_5_CLK,
      I => NlwBufferSignal_RM5_DATAOUT_5_IN,
      O => RM5_DATAOUT(5),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_4 : X_SFF
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_4_CLK,
      I => NlwBufferSignal_RM5_DATAOUT_4_IN,
      O => RM5_DATAOUT(4),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  OUT2_11_OBUF_OUT2_11_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_11_OBUF_529,
      O => OUT2_11_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7_1 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y28"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_42_530,
      IB => MUX2_Mmux_DATAOUT_32_538,
      O => OUT2_11_OBUF_529,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_42 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y28",
      INIT => X"AAAAFF00CCCCF0F0"
    )
    port map (
      ADR4 => RD2_1_IBUF_0,
      ADR5 => RD2_0_IBUF_0,
      ADR1 => RM3_DATAOUT(11),
      ADR0 => RM4_DATAOUT(11),
      ADR3 => RM2_DATAOUT_11_0,
      ADR2 => RM1_DATAOUT(11),
      O => MUX2_Mmux_DATAOUT_42_530
    );
  MUX2_Mmux_DATAOUT_32 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y28",
      INIT => X"F0AACCFFF0AACC00"
    )
    port map (
      ADR3 => RD2_1_IBUF_0,
      ADR4 => RD2_0_IBUF_0,
      ADR1 => RM7_DATAOUT(11),
      ADR2 => RM8_DATAOUT(11),
      ADR0 => RM6_DATAOUT(11),
      ADR5 => RM5_DATAOUT(11),
      O => MUX2_Mmux_DATAOUT_32_538
    );
  OUT2_7_OBUF_OUT2_7_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_7_OBUF_545,
      O => OUT2_7_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7_12 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y29"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_413_546,
      IB => MUX2_Mmux_DATAOUT_313_554,
      O => OUT2_7_OBUF_545,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_413 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y29",
      INIT => X"AFAFFC0CA0A0FC0C"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR4 => RD2_0_IBUF_0,
      ADR3 => RM3_DATAOUT(7),
      ADR0 => RM4_DATAOUT(7),
      ADR5 => RM2_DATAOUT(7),
      ADR1 => RM1_DATAOUT(7),
      O => MUX2_Mmux_DATAOUT_413_546
    );
  MUX2_Mmux_DATAOUT_313 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y29",
      INIT => X"AFFCAF0CA0FCA00C"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR3 => RD2_0_IBUF_0,
      ADR4 => RM7_DATAOUT(7),
      ADR0 => RM8_DATAOUT(7),
      ADR5 => RM6_DATAOUT(7),
      ADR1 => RM5_DATAOUT(7),
      O => MUX2_Mmux_DATAOUT_313_554
    );
  OUT1_9_OBUF_OUT1_9_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_9_OBUF_561,
      O => OUT1_9_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_14 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y30"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_415_562,
      IB => MUX1_Mmux_DATAOUT_315_570,
      O => OUT1_9_OBUF_561,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_415 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y30",
      INIT => X"FEF45E54AEA40E04"
    )
    port map (
      ADR0 => RD1_1_IBUF_0,
      ADR2 => RD1_0_IBUF_0,
      ADR3 => RM3_DATAOUT(9),
      ADR4 => RM4_DATAOUT(9),
      ADR5 => RM2_DATAOUT_9_0,
      ADR1 => RM1_DATAOUT(9),
      O => MUX1_Mmux_DATAOUT_415_562
    );
  MUX1_Mmux_DATAOUT_315 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y30",
      INIT => X"DFDA8F8AD5D08580"
    )
    port map (
      ADR0 => RD1_1_IBUF_0,
      ADR2 => RD1_0_IBUF_0,
      ADR5 => RM7_DATAOUT(9),
      ADR1 => RM8_DATAOUT(9),
      ADR4 => RM6_DATAOUT(9),
      ADR3 => RM5_DATAOUT(9),
      O => MUX1_Mmux_DATAOUT_315_570
    );
  OUT1_12_OBUF_OUT1_12_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_12_OBUF_577,
      O => OUT1_12_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y31"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_43_578,
      IB => MUX1_Mmux_DATAOUT_33_586,
      O => OUT1_12_OBUF_577,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_43 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => X"FC30BBBBFC308888"
    )
    port map (
      ADR1 => RD1_1_IBUF_0,
      ADR4 => RD1_0_IBUF_0,
      ADR0 => RM3_DATAOUT_12_0,
      ADR3 => RM4_DATAOUT_12_0,
      ADR2 => RM2_DATAOUT(12),
      ADR5 => RM1_DATAOUT_12_0,
      O => MUX1_Mmux_DATAOUT_43_578
    );
  MUX1_Mmux_DATAOUT_33 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => X"F5EEA0EEF544A044"
    )
    port map (
      ADR0 => RD1_1_IBUF_0,
      ADR3 => RD1_0_IBUF_0,
      ADR5 => RM7_DATAOUT(12),
      ADR2 => RM8_DATAOUT(12),
      ADR4 => RM6_DATAOUT(12),
      ADR1 => RM5_DATAOUT_12_0,
      O => MUX1_Mmux_DATAOUT_33_586
    );
  RM1_DATAOUT_7 : X_SFF
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_7_CLK,
      I => NlwBufferSignal_RM1_DATAOUT_7_IN,
      O => RM1_DATAOUT(7),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM1_DATAOUT_6 : X_SFF
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_6_CLK,
      I => NlwBufferSignal_RM1_DATAOUT_6_IN,
      O => RM1_DATAOUT(6),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM1_DATAOUT_5 : X_SFF
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_5_CLK,
      I => NlwBufferSignal_RM1_DATAOUT_5_IN,
      O => RM1_DATAOUT(5),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM1_DATAOUT_4 : X_SFF
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_4_CLK,
      I => NlwBufferSignal_RM1_DATAOUT_4_IN,
      O => RM1_DATAOUT(4),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM2_DATAOUT_7 : X_SFF
    generic map(
      LOC => "SLICE_X11Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_7_CLK,
      I => NlwBufferSignal_RM2_DATAOUT_7_IN,
      O => RM2_DATAOUT(7),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM2_DATAOUT_6 : X_SFF
    generic map(
      LOC => "SLICE_X11Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_6_CLK,
      I => NlwBufferSignal_RM2_DATAOUT_6_IN,
      O => RM2_DATAOUT(6),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM2_DATAOUT_5 : X_SFF
    generic map(
      LOC => "SLICE_X11Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_5_CLK,
      I => NlwBufferSignal_RM2_DATAOUT_5_IN,
      O => RM2_DATAOUT(5),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM2_DATAOUT_4 : X_SFF
    generic map(
      LOC => "SLICE_X11Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_4_CLK,
      I => NlwBufferSignal_RM2_DATAOUT_4_IN,
      O => RM2_DATAOUT(4),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  OUT1_10_OBUF_OUT1_10_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_10_OBUF_615,
      O => OUT1_10_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y27"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_41_616,
      IB => MUX1_Mmux_DATAOUT_31_624,
      O => OUT1_10_OBUF_615,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_41 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"CAFFCA0FCAF0CA00"
    )
    port map (
      ADR2 => RD1_1_IBUF_0,
      ADR3 => RD1_0_IBUF_0,
      ADR4 => RM3_DATAOUT(10),
      ADR1 => RM4_DATAOUT(10),
      ADR0 => RM2_DATAOUT_10_0,
      ADR5 => RM1_DATAOUT(10),
      O => MUX1_Mmux_DATAOUT_41_616
    );
  MUX1_Mmux_DATAOUT_31 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"DFD5DAD08F858A80"
    )
    port map (
      ADR0 => RD1_1_IBUF_0,
      ADR2 => RD1_0_IBUF_0,
      ADR3 => RM7_DATAOUT(10),
      ADR1 => RM8_DATAOUT(10),
      ADR5 => RM6_DATAOUT(10),
      ADR4 => RM5_DATAOUT(10),
      O => MUX1_Mmux_DATAOUT_31_624
    );
  OUT1_15_OBUF_OUT1_15_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_15_OBUF_631,
      O => OUT1_15_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_5 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y28"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_46_632,
      IB => MUX1_Mmux_DATAOUT_36_640,
      O => OUT1_15_OBUF_631,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_46 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => X"EF2FE323EC2CE020"
    )
    port map (
      ADR1 => RD1_1_IBUF_0,
      ADR2 => RD1_0_IBUF_0,
      ADR4 => RM3_DATAOUT_15_0,
      ADR3 => RM4_DATAOUT_15_0,
      ADR0 => RM2_DATAOUT(15),
      ADR5 => RM1_DATAOUT_15_0,
      O => MUX1_Mmux_DATAOUT_46_632
    );
  MUX1_Mmux_DATAOUT_36 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => X"FD5DF858AD0DA808"
    )
    port map (
      ADR0 => RD1_1_IBUF_0,
      ADR2 => RD1_0_IBUF_0,
      ADR1 => RM7_DATAOUT(15),
      ADR3 => RM8_DATAOUT(15),
      ADR5 => RM6_DATAOUT(15),
      ADR4 => RM5_DATAOUT_15_0,
      O => MUX1_Mmux_DATAOUT_36_640
    );
  OUT1_5_OBUF_OUT1_5_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_5_OBUF_647,
      O => OUT1_5_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_10 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y29"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_411_648,
      IB => MUX1_Mmux_DATAOUT_311_656,
      O => OUT1_5_OBUF_647,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_411 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y29",
      INIT => X"CFCFAFA0C0C0AFA0"
    )
    port map (
      ADR4 => RD1_1_IBUF_0,
      ADR2 => RD1_0_IBUF_0,
      ADR5 => RM3_DATAOUT(5),
      ADR1 => RM4_DATAOUT(5),
      ADR0 => RM2_DATAOUT(5),
      ADR3 => RM1_DATAOUT(5),
      O => MUX1_Mmux_DATAOUT_411_648
    );
  MUX1_Mmux_DATAOUT_311 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y29",
      INIT => X"BFB3BCB08F838C80"
    )
    port map (
      ADR1 => RD1_1_IBUF_0,
      ADR2 => RD1_0_IBUF_0,
      ADR3 => RM7_DATAOUT(5),
      ADR0 => RM8_DATAOUT(5),
      ADR5 => RM6_DATAOUT(5),
      ADR4 => RM5_DATAOUT(5),
      O => MUX1_Mmux_DATAOUT_311_656
    );
  DEC1_Mram_DATAOUT2_DEC1_Mram_DATAOUT2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_9_OBUF_673,
      O => OUT2_9_OBUF_0
    );
  DEC1_Mram_DATAOUT2_DEC1_Mram_DATAOUT2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DEC1_Mram_DATAOUT3,
      O => DEC1_Mram_DATAOUT3_0
    );
  DEC1_Mram_DATAOUT2_DEC1_Mram_DATAOUT2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DEC1_Mram_DATAOUT1,
      O => DEC1_Mram_DATAOUT1_0
    );
  MUX2_Mmux_DATAOUT_2_f7_14 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y30"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_415_674,
      IB => MUX2_Mmux_DATAOUT_315_682,
      O => OUT2_9_OBUF_673,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_415 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"DFDA8F8AD5D08580"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR0 => RD2_0_IBUF_0,
      ADR4 => RM3_DATAOUT(9),
      ADR1 => RM4_DATAOUT(9),
      ADR5 => RM2_DATAOUT_9_0,
      ADR3 => RM1_DATAOUT(9),
      O => MUX2_Mmux_DATAOUT_415_674
    );
  MUX2_Mmux_DATAOUT_315 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"FEF2CEC23E320E02"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR1 => RD2_0_IBUF_0,
      ADR4 => RM7_DATAOUT(9),
      ADR5 => RM8_DATAOUT(9),
      ADR3 => RM6_DATAOUT(9),
      ADR0 => RM5_DATAOUT(9),
      O => MUX2_Mmux_DATAOUT_315_682
    );
  DEC1_Mram_DATAOUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"0000500000005000"
    )
    port map (
      ADR1 => '1',
      ADR2 => WR_1_IBUF_0,
      ADR0 => WR_0_IBUF_0,
      ADR4 => WR_2_IBUF_0,
      ADR3 => WE_IBUF_0,
      ADR5 => '1',
      O => DEC1_Mram_DATAOUT2
    );
  DEC1_Mram_DATAOUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"0000A000"
    )
    port map (
      ADR1 => '1',
      ADR2 => WR_1_IBUF_0,
      ADR0 => WR_0_IBUF_0,
      ADR4 => WR_2_IBUF_0,
      ADR3 => WE_IBUF_0,
      O => DEC1_Mram_DATAOUT3
    );
  DEC1_Mram_DATAOUT12 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"0000030000000300"
    )
    port map (
      ADR0 => '1',
      ADR2 => WR_0_IBUF_0,
      ADR4 => WR_1_IBUF_0,
      ADR1 => WR_2_IBUF_0,
      ADR3 => WE_IBUF_0,
      ADR5 => '1',
      O => DEC1_Mram_DATAOUT
    );
  DEC1_Mram_DATAOUT111 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"00003000"
    )
    port map (
      ADR0 => '1',
      ADR2 => WR_0_IBUF_0,
      ADR4 => WR_1_IBUF_0,
      ADR1 => WR_2_IBUF_0,
      ADR3 => WE_IBUF_0,
      O => DEC1_Mram_DATAOUT1
    );
  OUT2_12_OBUF_OUT2_12_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_12_OBUF_693,
      O => OUT2_12_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7_2 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y31"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_43_694,
      IB => MUX2_Mmux_DATAOUT_33_702,
      O => OUT2_12_OBUF_693,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_43 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"ACFFACF0AC0FAC00"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR3 => RD2_0_IBUF_0,
      ADR5 => RM3_DATAOUT_12_0,
      ADR0 => RM4_DATAOUT_12_0,
      ADR1 => RM2_DATAOUT(12),
      ADR4 => RM1_DATAOUT_12_0,
      O => MUX2_Mmux_DATAOUT_43_694
    );
  MUX2_Mmux_DATAOUT_33 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"FCAFFCA00CAF0CA0"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR3 => RD2_0_IBUF_0,
      ADR0 => RM7_DATAOUT(12),
      ADR5 => RM8_DATAOUT(12),
      ADR1 => RM6_DATAOUT(12),
      ADR4 => RM5_DATAOUT_12_0,
      O => MUX2_Mmux_DATAOUT_33_702
    );
  RM6_DATAOUT_11 : X_SFF
    generic map(
      LOC => "SLICE_X13Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_11_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_11_IN,
      O => RM6_DATAOUT(11),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM6_DATAOUT_10 : X_SFF
    generic map(
      LOC => "SLICE_X13Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_10_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_10_IN,
      O => RM6_DATAOUT(10),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM6_DATAOUT_9 : X_SFF
    generic map(
      LOC => "SLICE_X13Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_9_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_9_IN,
      O => RM6_DATAOUT(9),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM6_DATAOUT_8 : X_SFF
    generic map(
      LOC => "SLICE_X13Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_8_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_8_IN,
      O => RM6_DATAOUT(8),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM1_DATAOUT_11_RM1_DATAOUT_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM1_DATAOUT(15),
      O => RM1_DATAOUT_15_0
    );
  RM1_DATAOUT_11_RM1_DATAOUT_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM1_DATAOUT(14),
      O => RM1_DATAOUT_14_0
    );
  RM1_DATAOUT_11_RM1_DATAOUT_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM1_DATAOUT(13),
      O => RM1_DATAOUT_13_0
    );
  RM1_DATAOUT_11_RM1_DATAOUT_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM1_DATAOUT(12),
      O => RM1_DATAOUT_12_0
    );
  RM1_DATAOUT_11 : X_SFF
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_11_CLK,
      I => NlwBufferSignal_RM1_DATAOUT_11_IN,
      O => RM1_DATAOUT(11),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INPUT_15_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => INPUT_15_IBUF_0,
      O => INPUT_15_IBUF_rt_727
    );
  RM1_DATAOUT_15 : X_SFF
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_15_CLK,
      I => INPUT_15_IBUF_rt_727,
      O => RM1_DATAOUT(15),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM1_DATAOUT_10 : X_SFF
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_10_CLK,
      I => NlwBufferSignal_RM1_DATAOUT_10_IN,
      O => RM1_DATAOUT(10),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INPUT_14_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => INPUT_14_IBUF_0,
      O => INPUT_14_IBUF_rt_728
    );
  RM1_DATAOUT_14 : X_SFF
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_14_CLK,
      I => INPUT_14_IBUF_rt_728,
      O => RM1_DATAOUT(14),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM1_DATAOUT_9 : X_SFF
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_9_CLK,
      I => NlwBufferSignal_RM1_DATAOUT_9_IN,
      O => RM1_DATAOUT(9),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INPUT_13_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => INPUT_13_IBUF_0,
      O => INPUT_13_IBUF_rt_734
    );
  RM1_DATAOUT_13 : X_SFF
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_13_CLK,
      I => INPUT_13_IBUF_rt_734,
      O => RM1_DATAOUT(13),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM1_DATAOUT_8 : X_SFF
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_8_CLK,
      I => NlwBufferSignal_RM1_DATAOUT_8_IN,
      O => RM1_DATAOUT(8),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INPUT_12_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => INPUT_12_IBUF_0,
      O => INPUT_12_IBUF_rt_741
    );
  RM1_DATAOUT_12 : X_SFF
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT,
      CLK => NlwBufferSignal_RM1_DATAOUT_12_CLK,
      I => INPUT_12_IBUF_rt_741,
      O => RM1_DATAOUT(12),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM2_DATAOUT_15_RM2_DATAOUT_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM2_DATAOUT(11),
      O => RM2_DATAOUT_11_0
    );
  RM2_DATAOUT_15_RM2_DATAOUT_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM2_DATAOUT(10),
      O => RM2_DATAOUT_10_0
    );
  RM2_DATAOUT_15_RM2_DATAOUT_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM2_DATAOUT(9),
      O => RM2_DATAOUT_9_0
    );
  RM2_DATAOUT_15_RM2_DATAOUT_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM2_DATAOUT(8),
      O => RM2_DATAOUT_8_0
    );
  RM2_DATAOUT_15 : X_SFF
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_15_CLK,
      I => NlwBufferSignal_RM2_DATAOUT_15_IN,
      O => RM2_DATAOUT(15),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INPUT_11_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => INPUT_11_IBUF_0,
      O => INPUT_11_IBUF_rt_750
    );
  RM2_DATAOUT_11 : X_SFF
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_11_CLK,
      I => INPUT_11_IBUF_rt_750,
      O => RM2_DATAOUT(11),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM2_DATAOUT_14 : X_SFF
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_14_CLK,
      I => NlwBufferSignal_RM2_DATAOUT_14_IN,
      O => RM2_DATAOUT(14),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INPUT_10_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => INPUT_10_IBUF_0,
      O => INPUT_10_IBUF_rt_751
    );
  RM2_DATAOUT_10 : X_SFF
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_10_CLK,
      I => INPUT_10_IBUF_rt_751,
      O => RM2_DATAOUT(10),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM2_DATAOUT_13 : X_SFF
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_13_CLK,
      I => NlwBufferSignal_RM2_DATAOUT_13_IN,
      O => RM2_DATAOUT(13),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INPUT_9_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => INPUT_9_IBUF_0,
      O => INPUT_9_IBUF_rt_757
    );
  RM2_DATAOUT_9 : X_SFF
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_9_CLK,
      I => INPUT_9_IBUF_rt_757,
      O => RM2_DATAOUT(9),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM2_DATAOUT_12 : X_SFF
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_12_CLK,
      I => NlwBufferSignal_RM2_DATAOUT_12_IN,
      O => RM2_DATAOUT(12),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  INPUT_8_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => INPUT_8_IBUF_0,
      O => INPUT_8_IBUF_rt_764
    );
  RM2_DATAOUT_8 : X_SFF
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT1_0,
      CLK => NlwBufferSignal_RM2_DATAOUT_8_CLK,
      I => INPUT_8_IBUF_rt_764,
      O => RM2_DATAOUT(8),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_15 : X_SFF
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_15_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_15_IN,
      O => RM7_DATAOUT(15),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_14 : X_SFF
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_14_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_14_IN,
      O => RM7_DATAOUT(14),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_13 : X_SFF
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_13_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_13_IN,
      O => RM7_DATAOUT(13),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_12 : X_SFF
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_12_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_12_IN,
      O => RM7_DATAOUT(12),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  OUT2_10_OBUF_OUT2_10_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_10_OBUF_777,
      O => OUT2_10_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y27"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_41_778,
      IB => MUX2_Mmux_DATAOUT_31_786,
      O => OUT2_10_OBUF_777,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_41 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y27",
      INIT => X"FACF0ACFFAC00AC0"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR3 => RD2_0_IBUF_0,
      ADR1 => RM3_DATAOUT(10),
      ADR4 => RM4_DATAOUT(10),
      ADR0 => RM2_DATAOUT_10_0,
      ADR5 => RM1_DATAOUT(10),
      O => MUX2_Mmux_DATAOUT_41_778
    );
  MUX2_Mmux_DATAOUT_31 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y27",
      INIT => X"FB3BCB0BF838C808"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR1 => RD2_0_IBUF_0,
      ADR4 => RM7_DATAOUT(10),
      ADR3 => RM8_DATAOUT(10),
      ADR0 => RM6_DATAOUT(10),
      ADR5 => RM5_DATAOUT(10),
      O => MUX2_Mmux_DATAOUT_31_786
    );
  OUT2_15_OBUF_OUT2_15_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_15_OBUF_793,
      O => OUT2_15_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7_5 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y28"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_46_794,
      IB => MUX2_Mmux_DATAOUT_36_802,
      O => OUT2_15_OBUF_793,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_46 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"FC0CFAFAFC0C0A0A"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR4 => RD2_0_IBUF_0,
      ADR5 => RM3_DATAOUT_15_0,
      ADR3 => RM4_DATAOUT_15_0,
      ADR1 => RM2_DATAOUT(15),
      ADR0 => RM1_DATAOUT_15_0,
      O => MUX2_Mmux_DATAOUT_46_794
    );
  MUX2_Mmux_DATAOUT_36 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"F0AACCFFF0AACC00"
    )
    port map (
      ADR3 => RD2_1_IBUF_0,
      ADR4 => RD2_0_IBUF_0,
      ADR1 => RM7_DATAOUT(15),
      ADR2 => RM8_DATAOUT(15),
      ADR0 => RM6_DATAOUT(15),
      ADR5 => RM5_DATAOUT_15_0,
      O => MUX2_Mmux_DATAOUT_36_802
    );
  OUT2_5_OBUF_OUT2_5_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_5_OBUF_809,
      O => OUT2_5_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7_10 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y29"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_411_810,
      IB => MUX2_Mmux_DATAOUT_311_818,
      O => OUT2_5_OBUF_809,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_411 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"FCEE30EEFC223022"
    )
    port map (
      ADR1 => RD2_1_IBUF_0,
      ADR3 => RD2_0_IBUF_0,
      ADR5 => RM3_DATAOUT(5),
      ADR4 => RM4_DATAOUT(5),
      ADR2 => RM2_DATAOUT(5),
      ADR0 => RM1_DATAOUT(5),
      O => MUX2_Mmux_DATAOUT_411_810
    );
  MUX2_Mmux_DATAOUT_311 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"EF4FE545EA4AE040"
    )
    port map (
      ADR0 => RD2_1_IBUF_0,
      ADR2 => RD2_0_IBUF_0,
      ADR4 => RM7_DATAOUT(5),
      ADR3 => RM8_DATAOUT(5),
      ADR1 => RM6_DATAOUT(5),
      ADR5 => RM5_DATAOUT(5),
      O => MUX2_Mmux_DATAOUT_311_818
    );
  DEC1_Mram_DATAOUT4_DEC1_Mram_DATAOUT4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_14_OBUF_826,
      O => OUT1_14_OBUF_0
    );
  DEC1_Mram_DATAOUT4_DEC1_Mram_DATAOUT4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DEC1_Mram_DATAOUT5,
      O => DEC1_Mram_DATAOUT5_0
    );
  MUX1_Mmux_DATAOUT_2_f7_4 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y30"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_45_825,
      IB => MUX1_Mmux_DATAOUT_35_833,
      O => OUT1_14_OBUF_826,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_45 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"FFB833B8CCB800B8"
    )
    port map (
      ADR3 => RD1_1_IBUF_0,
      ADR1 => RD1_0_IBUF_0,
      ADR5 => RM3_DATAOUT_14_0,
      ADR4 => RM4_DATAOUT_14_0,
      ADR0 => RM2_DATAOUT(14),
      ADR2 => RM1_DATAOUT_14_0,
      O => MUX1_Mmux_DATAOUT_45_825
    );
  MUX1_Mmux_DATAOUT_35 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"DDFA88FADD508850"
    )
    port map (
      ADR3 => RD1_1_IBUF_0,
      ADR0 => RD1_0_IBUF_0,
      ADR4 => RM7_DATAOUT(14),
      ADR1 => RM8_DATAOUT(14),
      ADR5 => RM6_DATAOUT(14),
      ADR2 => RM5_DATAOUT_14_0,
      O => MUX1_Mmux_DATAOUT_35_833
    );
  DEC1_Mram_DATAOUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"0020002000200020"
    )
    port map (
      ADR4 => '1',
      ADR0 => WR_2_IBUF_0,
      ADR3 => WR_0_IBUF_0,
      ADR1 => WR_1_IBUF_0,
      ADR2 => WE_IBUF_0,
      ADR5 => '1',
      O => DEC1_Mram_DATAOUT4
    );
  DEC1_Mram_DATAOUT51 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"20002000"
    )
    port map (
      ADR4 => '1',
      ADR0 => WR_2_IBUF_0,
      ADR3 => WR_0_IBUF_0,
      ADR1 => WR_1_IBUF_0,
      ADR2 => WE_IBUF_0,
      O => DEC1_Mram_DATAOUT5
    );
  OUT1_13_OBUF_OUT1_13_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_13_OBUF_848,
      O => OUT1_13_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_3 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y31"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_44_849,
      IB => MUX1_Mmux_DATAOUT_34_857,
      O => OUT1_13_OBUF_848,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_44 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"EFE3ECE02F232C20"
    )
    port map (
      ADR2 => RD1_1_IBUF_0,
      ADR1 => RD1_0_IBUF_0,
      ADR0 => RM3_DATAOUT_13_0,
      ADR5 => RM4_DATAOUT_13_0,
      ADR3 => RM2_DATAOUT(13),
      ADR4 => RM1_DATAOUT_13_0,
      O => MUX1_Mmux_DATAOUT_44_849
    );
  MUX1_Mmux_DATAOUT_34 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"F7E6D5C4B3A29180"
    )
    port map (
      ADR0 => RD1_1_IBUF_0,
      ADR1 => RD1_0_IBUF_0,
      ADR4 => RM7_DATAOUT(13),
      ADR2 => RM8_DATAOUT(13),
      ADR5 => RM6_DATAOUT(13),
      ADR3 => RM5_DATAOUT_13_0,
      O => MUX1_Mmux_DATAOUT_34_857
    );
  RM4_DATAOUT_11_RM4_DATAOUT_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM4_DATAOUT(15),
      O => RM4_DATAOUT_15_0
    );
  RM4_DATAOUT_11_RM4_DATAOUT_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM4_DATAOUT(14),
      O => RM4_DATAOUT_14_0
    );
  RM4_DATAOUT_11_RM4_DATAOUT_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM4_DATAOUT(13),
      O => RM4_DATAOUT_13_0
    );
  RM4_DATAOUT_11_RM4_DATAOUT_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM4_DATAOUT(12),
      O => RM4_DATAOUT_12_0
    );
  RM4_DATAOUT_11 : X_SFF
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_11_CLK,
      I => NlwBufferSignal_RM4_DATAOUT_11_IN,
      O => RM4_DATAOUT(11),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_11_INPUT_15_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => INPUT_15_IBUF_0,
      O => RM4_DATAOUT_11_INPUT_15_IBUF_rt_871
    );
  RM4_DATAOUT_15 : X_SFF
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_15_CLK,
      I => RM4_DATAOUT_11_INPUT_15_IBUF_rt_871,
      O => RM4_DATAOUT(15),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_10 : X_SFF
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_10_CLK,
      I => NlwBufferSignal_RM4_DATAOUT_10_IN,
      O => RM4_DATAOUT(10),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_11_INPUT_14_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => INPUT_14_IBUF_0,
      O => RM4_DATAOUT_11_INPUT_14_IBUF_rt_872
    );
  RM4_DATAOUT_14 : X_SFF
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_14_CLK,
      I => RM4_DATAOUT_11_INPUT_14_IBUF_rt_872,
      O => RM4_DATAOUT(14),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_9 : X_SFF
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_9_CLK,
      I => NlwBufferSignal_RM4_DATAOUT_9_IN,
      O => RM4_DATAOUT(9),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_11_INPUT_13_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => INPUT_13_IBUF_0,
      O => RM4_DATAOUT_11_INPUT_13_IBUF_rt_878
    );
  RM4_DATAOUT_13 : X_SFF
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_13_CLK,
      I => RM4_DATAOUT_11_INPUT_13_IBUF_rt_878,
      O => RM4_DATAOUT(13),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_8 : X_SFF
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_8_CLK,
      I => NlwBufferSignal_RM4_DATAOUT_8_IN,
      O => RM4_DATAOUT(8),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM4_DATAOUT_11_INPUT_12_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => INPUT_12_IBUF_0,
      O => RM4_DATAOUT_11_INPUT_12_IBUF_rt_885
    );
  RM4_DATAOUT_12 : X_SFF
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT3_0,
      CLK => NlwBufferSignal_RM4_DATAOUT_12_CLK,
      I => RM4_DATAOUT_11_INPUT_12_IBUF_rt_885,
      O => RM4_DATAOUT(12),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_11_RM3_DATAOUT_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM3_DATAOUT(15),
      O => RM3_DATAOUT_15_0
    );
  RM3_DATAOUT_11_RM3_DATAOUT_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM3_DATAOUT(14),
      O => RM3_DATAOUT_14_0
    );
  RM3_DATAOUT_11_RM3_DATAOUT_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM3_DATAOUT(13),
      O => RM3_DATAOUT_13_0
    );
  RM3_DATAOUT_11_RM3_DATAOUT_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM3_DATAOUT(12),
      O => RM3_DATAOUT_12_0
    );
  RM3_DATAOUT_11 : X_SFF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_11_CLK,
      I => NlwBufferSignal_RM3_DATAOUT_11_IN,
      O => RM3_DATAOUT(11),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_11_INPUT_15_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => INPUT_15_IBUF_0,
      O => RM3_DATAOUT_11_INPUT_15_IBUF_rt_894
    );
  RM3_DATAOUT_15 : X_SFF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_15_CLK,
      I => RM3_DATAOUT_11_INPUT_15_IBUF_rt_894,
      O => RM3_DATAOUT(15),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_10 : X_SFF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_10_CLK,
      I => NlwBufferSignal_RM3_DATAOUT_10_IN,
      O => RM3_DATAOUT(10),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_11_INPUT_14_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => INPUT_14_IBUF_0,
      O => RM3_DATAOUT_11_INPUT_14_IBUF_rt_895
    );
  RM3_DATAOUT_14 : X_SFF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_14_CLK,
      I => RM3_DATAOUT_11_INPUT_14_IBUF_rt_895,
      O => RM3_DATAOUT(14),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_9 : X_SFF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_9_CLK,
      I => NlwBufferSignal_RM3_DATAOUT_9_IN,
      O => RM3_DATAOUT(9),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_11_INPUT_13_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => INPUT_13_IBUF_0,
      O => RM3_DATAOUT_11_INPUT_13_IBUF_rt_901
    );
  RM3_DATAOUT_13 : X_SFF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_13_CLK,
      I => RM3_DATAOUT_11_INPUT_13_IBUF_rt_901,
      O => RM3_DATAOUT(13),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_8 : X_SFF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_8_CLK,
      I => NlwBufferSignal_RM3_DATAOUT_8_IN,
      O => RM3_DATAOUT(8),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM3_DATAOUT_11_INPUT_12_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => INPUT_12_IBUF_0,
      O => RM3_DATAOUT_11_INPUT_12_IBUF_rt_908
    );
  RM3_DATAOUT_12 : X_SFF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT2,
      CLK => NlwBufferSignal_RM3_DATAOUT_12_CLK,
      I => RM3_DATAOUT_11_INPUT_12_IBUF_rt_908,
      O => RM3_DATAOUT(12),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_11_RM5_DATAOUT_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM5_DATAOUT(15),
      O => RM5_DATAOUT_15_0
    );
  RM5_DATAOUT_11_RM5_DATAOUT_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM5_DATAOUT(14),
      O => RM5_DATAOUT_14_0
    );
  RM5_DATAOUT_11_RM5_DATAOUT_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM5_DATAOUT(13),
      O => RM5_DATAOUT_13_0
    );
  RM5_DATAOUT_11_RM5_DATAOUT_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RM5_DATAOUT(12),
      O => RM5_DATAOUT_12_0
    );
  RM5_DATAOUT_11 : X_SFF
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_11_CLK,
      I => NlwBufferSignal_RM5_DATAOUT_11_IN,
      O => RM5_DATAOUT(11),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_11_INPUT_15_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => INPUT_15_IBUF_0,
      O => RM5_DATAOUT_11_INPUT_15_IBUF_rt_917
    );
  RM5_DATAOUT_15 : X_SFF
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_15_CLK,
      I => RM5_DATAOUT_11_INPUT_15_IBUF_rt_917,
      O => RM5_DATAOUT(15),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_10 : X_SFF
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_10_CLK,
      I => NlwBufferSignal_RM5_DATAOUT_10_IN,
      O => RM5_DATAOUT(10),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_11_INPUT_14_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"AAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => INPUT_14_IBUF_0,
      O => RM5_DATAOUT_11_INPUT_14_IBUF_rt_918
    );
  RM5_DATAOUT_14 : X_SFF
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_14_CLK,
      I => RM5_DATAOUT_11_INPUT_14_IBUF_rt_918,
      O => RM5_DATAOUT(14),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_9 : X_SFF
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_9_CLK,
      I => NlwBufferSignal_RM5_DATAOUT_9_IN,
      O => RM5_DATAOUT(9),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_11_INPUT_13_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => INPUT_13_IBUF_0,
      O => RM5_DATAOUT_11_INPUT_13_IBUF_rt_924
    );
  RM5_DATAOUT_13 : X_SFF
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_13_CLK,
      I => RM5_DATAOUT_11_INPUT_13_IBUF_rt_924,
      O => RM5_DATAOUT(13),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_8 : X_SFF
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_8_CLK,
      I => NlwBufferSignal_RM5_DATAOUT_8_IN,
      O => RM5_DATAOUT(8),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM5_DATAOUT_11_INPUT_12_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => INPUT_12_IBUF_0,
      O => RM5_DATAOUT_11_INPUT_12_IBUF_rt_931
    );
  RM5_DATAOUT_12 : X_SFF
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT4,
      CLK => NlwBufferSignal_RM5_DATAOUT_12_CLK,
      I => RM5_DATAOUT_11_INPUT_12_IBUF_rt_931,
      O => RM5_DATAOUT(12),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM6_DATAOUT_15 : X_SFF
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_15_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_15_IN,
      O => RM6_DATAOUT(15),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM6_DATAOUT_14 : X_SFF
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_14_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_14_IN,
      O => RM6_DATAOUT(14),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM6_DATAOUT_13 : X_SFF
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_13_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_13_IN,
      O => RM6_DATAOUT(13),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM6_DATAOUT_12 : X_SFF
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT5_0,
      CLK => NlwBufferSignal_RM6_DATAOUT_12_CLK,
      I => NlwBufferSignal_RM6_DATAOUT_12_IN,
      O => RM6_DATAOUT(12),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  OUT1_8_OBUF_OUT1_8_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_8_OBUF_944,
      O => OUT1_8_OBUF_0
    );
  MUX1_Mmux_DATAOUT_2_f7_13 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y28"
    )
    port map (
      IA => MUX1_Mmux_DATAOUT_414_945,
      IB => MUX1_Mmux_DATAOUT_314_953,
      O => OUT1_8_OBUF_944,
      SEL => RD1_2_IBUF_0
    );
  MUX1_Mmux_DATAOUT_414 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => X"FFCC00CCAAF0AAF0"
    )
    port map (
      ADR3 => RD1_1_IBUF_0,
      ADR5 => RD1_0_IBUF_0,
      ADR0 => RM3_DATAOUT(8),
      ADR4 => RM4_DATAOUT(8),
      ADR1 => RM2_DATAOUT_8_0,
      ADR2 => RM1_DATAOUT(8),
      O => MUX1_Mmux_DATAOUT_414_945
    );
  MUX1_Mmux_DATAOUT_314 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => X"CCF0CCF0AAFFAA00"
    )
    port map (
      ADR3 => RD1_1_IBUF_0,
      ADR5 => RD1_0_IBUF_0,
      ADR0 => RM7_DATAOUT(8),
      ADR1 => RM8_DATAOUT(8),
      ADR2 => RM6_DATAOUT(8),
      ADR4 => RM5_DATAOUT(8),
      O => MUX1_Mmux_DATAOUT_314_953
    );
  OUT2_8_OBUF_OUT2_8_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_8_OBUF_960,
      O => OUT2_8_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7_13 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y29"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_414_961,
      IB => MUX2_Mmux_DATAOUT_314_969,
      O => OUT2_8_OBUF_960,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_414 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => X"AFA0FCFCAFA00C0C"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR4 => RD2_0_IBUF_0,
      ADR5 => RM3_DATAOUT(8),
      ADR0 => RM4_DATAOUT(8),
      ADR3 => RM2_DATAOUT_8_0,
      ADR1 => RM1_DATAOUT(8),
      O => MUX2_Mmux_DATAOUT_414_961
    );
  MUX2_Mmux_DATAOUT_314 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => X"AAAACCCCF0F0FF00"
    )
    port map (
      ADR5 => RD2_1_IBUF_0,
      ADR4 => RD2_0_IBUF_0,
      ADR1 => RM7_DATAOUT(8),
      ADR0 => RM8_DATAOUT(8),
      ADR2 => RM6_DATAOUT(8),
      ADR3 => RM5_DATAOUT(8),
      O => MUX2_Mmux_DATAOUT_314_969
    );
  DEC1_Mram_DATAOUT6_DEC1_Mram_DATAOUT6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_14_OBUF_995,
      O => OUT2_14_OBUF_0
    );
  DEC1_Mram_DATAOUT6_DEC1_Mram_DATAOUT6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => DEC1_Mram_DATAOUT7,
      O => DEC1_Mram_DATAOUT7_0
    );
  MUX2_Mmux_DATAOUT_2_f7_4 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y30"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_45_997,
      IB => MUX2_Mmux_DATAOUT_35_983,
      O => OUT2_14_OBUF_995,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_45 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y30",
      INIT => X"CFAFC0AFCFA0C0A0"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR3 => RD2_0_IBUF_0,
      ADR0 => RM3_DATAOUT_14_0,
      ADR1 => RM4_DATAOUT_14_0,
      ADR4 => RM2_DATAOUT(14),
      ADR5 => RM1_DATAOUT_14_0,
      O => MUX2_Mmux_DATAOUT_45_997
    );
  MUX2_Mmux_DATAOUT_35 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y30",
      INIT => X"AFFCA0FCAF0CA00C"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR3 => RD2_0_IBUF_0,
      ADR5 => RM7_DATAOUT(14),
      ADR0 => RM8_DATAOUT(14),
      ADR4 => RM6_DATAOUT(14),
      ADR1 => RM5_DATAOUT_14_0,
      O => MUX2_Mmux_DATAOUT_35_983
    );
  DEC1_Mram_DATAOUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y30",
      INIT => X"0808000008080000"
    )
    port map (
      ADR3 => '1',
      ADR1 => WR_2_IBUF_0,
      ADR0 => WR_1_IBUF_0,
      ADR2 => WR_0_IBUF_0,
      ADR4 => WE_IBUF_0,
      ADR5 => '1',
      O => DEC1_Mram_DATAOUT6
    );
  DEC1_Mram_DATAOUT71 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y30",
      INIT => X"80800000"
    )
    port map (
      ADR3 => '1',
      ADR1 => WR_2_IBUF_0,
      ADR0 => WR_1_IBUF_0,
      ADR2 => WR_0_IBUF_0,
      ADR4 => WE_IBUF_0,
      O => DEC1_Mram_DATAOUT7
    );
  OUT2_13_OBUF_OUT2_13_OBUF_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_13_OBUF_999,
      O => OUT2_13_OBUF_0
    );
  MUX2_Mmux_DATAOUT_2_f7_3 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y31"
    )
    port map (
      IA => MUX2_Mmux_DATAOUT_44_1000,
      IB => MUX2_Mmux_DATAOUT_34_1008,
      O => OUT2_13_OBUF_999,
      SEL => RD2_2_IBUF_0
    );
  MUX2_Mmux_DATAOUT_44 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y31",
      INIT => X"DFD58F85DAD08A80"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR0 => RD2_0_IBUF_0,
      ADR4 => RM3_DATAOUT_13_0,
      ADR1 => RM4_DATAOUT_13_0,
      ADR3 => RM2_DATAOUT(13),
      ADR5 => RM1_DATAOUT_13_0,
      O => MUX2_Mmux_DATAOUT_44_1000
    );
  MUX2_Mmux_DATAOUT_34 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y31",
      INIT => X"ACACFFF0ACAC0F00"
    )
    port map (
      ADR2 => RD2_1_IBUF_0,
      ADR4 => RD2_0_IBUF_0,
      ADR5 => RM7_DATAOUT(13),
      ADR0 => RM8_DATAOUT(13),
      ADR1 => RM6_DATAOUT(13),
      ADR3 => RM5_DATAOUT_13_0,
      O => MUX2_Mmux_DATAOUT_34_1008
    );
  RM7_DATAOUT_11 : X_SFF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_11_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_11_IN,
      O => RM7_DATAOUT(11),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_10 : X_SFF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_10_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_10_IN,
      O => RM7_DATAOUT(10),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_9 : X_SFF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_9_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_9_IN,
      O => RM7_DATAOUT(9),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM7_DATAOUT_8 : X_SFF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT6,
      CLK => NlwBufferSignal_RM7_DATAOUT_8_CLK,
      I => NlwBufferSignal_RM7_DATAOUT_8_IN,
      O => RM7_DATAOUT(8),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_11 : X_SFF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_11_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_11_IN,
      O => RM8_DATAOUT(11),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_10 : X_SFF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_10_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_10_IN,
      O => RM8_DATAOUT(10),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_9 : X_SFF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_9_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_9_IN,
      O => RM8_DATAOUT(9),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_8 : X_SFF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_8_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_8_IN,
      O => RM8_DATAOUT(8),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_15 : X_SFF
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_15_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_15_IN,
      O => RM8_DATAOUT(15),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_14 : X_SFF
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_14_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_14_IN,
      O => RM8_DATAOUT(14),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_13 : X_SFF
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_13_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_13_IN,
      O => RM8_DATAOUT(13),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  RM8_DATAOUT_12 : X_SFF
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => '0'
    )
    port map (
      CE => DEC1_Mram_DATAOUT7_0,
      CLK => NlwBufferSignal_RM8_DATAOUT_12_CLK,
      I => NlwBufferSignal_RM8_DATAOUT_12_IN,
      O => RM8_DATAOUT(12),
      SRST => RM1_RESET_inv,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  NlwBufferBlock_CLOCK_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP_IBUFG_0,
      O => NlwBufferSignal_CLOCK_BUFGP_BUFG_IN
    );
  NlwBufferBlock_OUT1_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_0_OBUF_0,
      O => NlwBufferSignal_OUT1_0_OBUF_I
    );
  NlwBufferBlock_OUT1_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_1_OBUF_0,
      O => NlwBufferSignal_OUT1_1_OBUF_I
    );
  NlwBufferBlock_OUT1_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_2_OBUF_0,
      O => NlwBufferSignal_OUT1_2_OBUF_I
    );
  NlwBufferBlock_OUT1_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_3_OBUF_0,
      O => NlwBufferSignal_OUT1_3_OBUF_I
    );
  NlwBufferBlock_OUT2_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_0_OBUF_0,
      O => NlwBufferSignal_OUT2_0_OBUF_I
    );
  NlwBufferBlock_OUT1_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_4_OBUF_0,
      O => NlwBufferSignal_OUT1_4_OBUF_I
    );
  NlwBufferBlock_OUT2_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_1_OBUF_0,
      O => NlwBufferSignal_OUT2_1_OBUF_I
    );
  NlwBufferBlock_OUT1_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_5_OBUF_0,
      O => NlwBufferSignal_OUT1_5_OBUF_I
    );
  NlwBufferBlock_OUT2_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_2_OBUF_0,
      O => NlwBufferSignal_OUT2_2_OBUF_I
    );
  NlwBufferBlock_OUT1_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_6_OBUF_0,
      O => NlwBufferSignal_OUT1_6_OBUF_I
    );
  NlwBufferBlock_OUT2_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_3_OBUF_0,
      O => NlwBufferSignal_OUT2_3_OBUF_I
    );
  NlwBufferBlock_OUT1_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_7_OBUF_0,
      O => NlwBufferSignal_OUT1_7_OBUF_I
    );
  NlwBufferBlock_OUT2_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_4_OBUF_0,
      O => NlwBufferSignal_OUT2_4_OBUF_I
    );
  NlwBufferBlock_OUT1_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_8_OBUF_0,
      O => NlwBufferSignal_OUT1_8_OBUF_I
    );
  NlwBufferBlock_OUT2_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_5_OBUF_0,
      O => NlwBufferSignal_OUT2_5_OBUF_I
    );
  NlwBufferBlock_OUT1_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_9_OBUF_0,
      O => NlwBufferSignal_OUT1_9_OBUF_I
    );
  NlwBufferBlock_OUT2_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_6_OBUF_0,
      O => NlwBufferSignal_OUT2_6_OBUF_I
    );
  NlwBufferBlock_OUT2_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_7_OBUF_0,
      O => NlwBufferSignal_OUT2_7_OBUF_I
    );
  NlwBufferBlock_OUT2_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_8_OBUF_0,
      O => NlwBufferSignal_OUT2_8_OBUF_I
    );
  NlwBufferBlock_OUT2_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_9_OBUF_0,
      O => NlwBufferSignal_OUT2_9_OBUF_I
    );
  NlwBufferBlock_OUT1_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_10_OBUF_0,
      O => NlwBufferSignal_OUT1_10_OBUF_I
    );
  NlwBufferBlock_OUT1_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_11_OBUF_0,
      O => NlwBufferSignal_OUT1_11_OBUF_I
    );
  NlwBufferBlock_OUT1_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_12_OBUF_0,
      O => NlwBufferSignal_OUT1_12_OBUF_I
    );
  NlwBufferBlock_OUT1_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_13_OBUF_0,
      O => NlwBufferSignal_OUT1_13_OBUF_I
    );
  NlwBufferBlock_OUT1_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_14_OBUF_0,
      O => NlwBufferSignal_OUT1_14_OBUF_I
    );
  NlwBufferBlock_OUT1_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT1_15_OBUF_0,
      O => NlwBufferSignal_OUT1_15_OBUF_I
    );
  NlwBufferBlock_OUT2_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_10_OBUF_0,
      O => NlwBufferSignal_OUT2_10_OBUF_I
    );
  NlwBufferBlock_OUT2_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_11_OBUF_0,
      O => NlwBufferSignal_OUT2_11_OBUF_I
    );
  NlwBufferBlock_OUT2_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_12_OBUF_0,
      O => NlwBufferSignal_OUT2_12_OBUF_I
    );
  NlwBufferBlock_OUT2_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_13_OBUF_0,
      O => NlwBufferSignal_OUT2_13_OBUF_I
    );
  NlwBufferBlock_OUT2_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_14_OBUF_0,
      O => NlwBufferSignal_OUT2_14_OBUF_I
    );
  NlwBufferBlock_OUT2_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => OUT2_15_OBUF_0,
      O => NlwBufferSignal_OUT2_15_OBUF_I
    );
  NlwBufferBlock_RM5_DATAOUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_3_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_3_IBUF_0,
      O => NlwBufferSignal_RM5_DATAOUT_3_IN
    );
  NlwBufferBlock_RM5_DATAOUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_2_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_2_IBUF_0,
      O => NlwBufferSignal_RM5_DATAOUT_2_IN
    );
  NlwBufferBlock_RM5_DATAOUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_1_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_1_IBUF_0,
      O => NlwBufferSignal_RM5_DATAOUT_1_IN
    );
  NlwBufferBlock_RM5_DATAOUT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_0_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_0_IBUF_0,
      O => NlwBufferSignal_RM5_DATAOUT_0_IN
    );
  NlwBufferBlock_RM4_DATAOUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_3_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_3_IBUF_0,
      O => NlwBufferSignal_RM4_DATAOUT_3_IN
    );
  NlwBufferBlock_RM4_DATAOUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_2_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_2_IBUF_0,
      O => NlwBufferSignal_RM4_DATAOUT_2_IN
    );
  NlwBufferBlock_RM4_DATAOUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_1_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_1_IBUF_0,
      O => NlwBufferSignal_RM4_DATAOUT_1_IN
    );
  NlwBufferBlock_RM4_DATAOUT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_0_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_0_IBUF_0,
      O => NlwBufferSignal_RM4_DATAOUT_0_IN
    );
  NlwBufferBlock_RM6_DATAOUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_3_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_3_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_3_IN
    );
  NlwBufferBlock_RM6_DATAOUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_2_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_2_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_2_IN
    );
  NlwBufferBlock_RM6_DATAOUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_1_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_1_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_1_IN
    );
  NlwBufferBlock_RM6_DATAOUT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_0_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_0_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_0_IN
    );
  NlwBufferBlock_RM1_DATAOUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_3_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_3_IBUF_0,
      O => NlwBufferSignal_RM1_DATAOUT_3_IN
    );
  NlwBufferBlock_RM1_DATAOUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_2_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_2_IBUF_0,
      O => NlwBufferSignal_RM1_DATAOUT_2_IN
    );
  NlwBufferBlock_RM1_DATAOUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_1_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_1_IBUF_0,
      O => NlwBufferSignal_RM1_DATAOUT_1_IN
    );
  NlwBufferBlock_RM1_DATAOUT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_0_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_0_IBUF_0,
      O => NlwBufferSignal_RM1_DATAOUT_0_IN
    );
  NlwBufferBlock_RM2_DATAOUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_3_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_3_IBUF_0,
      O => NlwBufferSignal_RM2_DATAOUT_3_IN
    );
  NlwBufferBlock_RM2_DATAOUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_2_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_2_IBUF_0,
      O => NlwBufferSignal_RM2_DATAOUT_2_IN
    );
  NlwBufferBlock_RM2_DATAOUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_1_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_1_IBUF_0,
      O => NlwBufferSignal_RM2_DATAOUT_1_IN
    );
  NlwBufferBlock_RM2_DATAOUT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_0_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_0_IBUF_0,
      O => NlwBufferSignal_RM2_DATAOUT_0_IN
    );
  NlwBufferBlock_RM7_DATAOUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_3_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_3_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_3_IN
    );
  NlwBufferBlock_RM7_DATAOUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_2_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_2_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_2_IN
    );
  NlwBufferBlock_RM7_DATAOUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_1_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_1_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_1_IN
    );
  NlwBufferBlock_RM7_DATAOUT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_0_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_0_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_0_IN
    );
  NlwBufferBlock_RM3_DATAOUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_7_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_7_IBUF_0,
      O => NlwBufferSignal_RM3_DATAOUT_7_IN
    );
  NlwBufferBlock_RM3_DATAOUT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_6_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_6_IBUF_0,
      O => NlwBufferSignal_RM3_DATAOUT_6_IN
    );
  NlwBufferBlock_RM3_DATAOUT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_5_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_5_IBUF_0,
      O => NlwBufferSignal_RM3_DATAOUT_5_IN
    );
  NlwBufferBlock_RM3_DATAOUT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_4_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_4_IBUF_0,
      O => NlwBufferSignal_RM3_DATAOUT_4_IN
    );
  NlwBufferBlock_RM8_DATAOUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_3_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_3_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_3_IN
    );
  NlwBufferBlock_RM8_DATAOUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_2_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_2_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_2_IN
    );
  NlwBufferBlock_RM8_DATAOUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_1_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_1_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_1_IN
    );
  NlwBufferBlock_RM8_DATAOUT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_0_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_0_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_0_IN
    );
  NlwBufferBlock_RM3_DATAOUT_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_3_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_3_IBUF_0,
      O => NlwBufferSignal_RM3_DATAOUT_3_IN
    );
  NlwBufferBlock_RM3_DATAOUT_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_2_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_2_IBUF_0,
      O => NlwBufferSignal_RM3_DATAOUT_2_IN
    );
  NlwBufferBlock_RM3_DATAOUT_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_1_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_1_IBUF_0,
      O => NlwBufferSignal_RM3_DATAOUT_1_IN
    );
  NlwBufferBlock_RM3_DATAOUT_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_0_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_0_IBUF_0,
      O => NlwBufferSignal_RM3_DATAOUT_0_IN
    );
  NlwBufferBlock_RM8_DATAOUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_7_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_7_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_7_IN
    );
  NlwBufferBlock_RM8_DATAOUT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_6_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_6_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_6_IN
    );
  NlwBufferBlock_RM8_DATAOUT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_5_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_5_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_5_IN
    );
  NlwBufferBlock_RM8_DATAOUT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_4_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_4_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_4_IN
    );
  NlwBufferBlock_RM7_DATAOUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_7_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_7_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_7_IN
    );
  NlwBufferBlock_RM7_DATAOUT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_6_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_6_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_6_IN
    );
  NlwBufferBlock_RM7_DATAOUT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_5_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_5_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_5_IN
    );
  NlwBufferBlock_RM7_DATAOUT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_4_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_4_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_4_IN
    );
  NlwBufferBlock_RM6_DATAOUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_7_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_7_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_7_IN
    );
  NlwBufferBlock_RM6_DATAOUT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_6_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_6_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_6_IN
    );
  NlwBufferBlock_RM6_DATAOUT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_5_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_5_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_5_IN
    );
  NlwBufferBlock_RM6_DATAOUT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_4_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_4_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_4_IN
    );
  NlwBufferBlock_RM4_DATAOUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_7_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_7_IBUF_0,
      O => NlwBufferSignal_RM4_DATAOUT_7_IN
    );
  NlwBufferBlock_RM4_DATAOUT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_6_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_6_IBUF_0,
      O => NlwBufferSignal_RM4_DATAOUT_6_IN
    );
  NlwBufferBlock_RM4_DATAOUT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_5_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_5_IBUF_0,
      O => NlwBufferSignal_RM4_DATAOUT_5_IN
    );
  NlwBufferBlock_RM4_DATAOUT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_4_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_4_IBUF_0,
      O => NlwBufferSignal_RM4_DATAOUT_4_IN
    );
  NlwBufferBlock_RM5_DATAOUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_7_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_7_IBUF_0,
      O => NlwBufferSignal_RM5_DATAOUT_7_IN
    );
  NlwBufferBlock_RM5_DATAOUT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_6_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_6_IBUF_0,
      O => NlwBufferSignal_RM5_DATAOUT_6_IN
    );
  NlwBufferBlock_RM5_DATAOUT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_5_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_5_IBUF_0,
      O => NlwBufferSignal_RM5_DATAOUT_5_IN
    );
  NlwBufferBlock_RM5_DATAOUT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_4_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_4_IBUF_0,
      O => NlwBufferSignal_RM5_DATAOUT_4_IN
    );
  NlwBufferBlock_RM1_DATAOUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_7_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_7_IBUF_0,
      O => NlwBufferSignal_RM1_DATAOUT_7_IN
    );
  NlwBufferBlock_RM1_DATAOUT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_6_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_6_IBUF_0,
      O => NlwBufferSignal_RM1_DATAOUT_6_IN
    );
  NlwBufferBlock_RM1_DATAOUT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_5_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_5_IBUF_0,
      O => NlwBufferSignal_RM1_DATAOUT_5_IN
    );
  NlwBufferBlock_RM1_DATAOUT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_4_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_4_IBUF_0,
      O => NlwBufferSignal_RM1_DATAOUT_4_IN
    );
  NlwBufferBlock_RM2_DATAOUT_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_7_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_7_IBUF_0,
      O => NlwBufferSignal_RM2_DATAOUT_7_IN
    );
  NlwBufferBlock_RM2_DATAOUT_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_6_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_6_IBUF_0,
      O => NlwBufferSignal_RM2_DATAOUT_6_IN
    );
  NlwBufferBlock_RM2_DATAOUT_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_5_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_5_IBUF_0,
      O => NlwBufferSignal_RM2_DATAOUT_5_IN
    );
  NlwBufferBlock_RM2_DATAOUT_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_4_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_4_IBUF_0,
      O => NlwBufferSignal_RM2_DATAOUT_4_IN
    );
  NlwBufferBlock_RM6_DATAOUT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_11_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_11_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_11_IN
    );
  NlwBufferBlock_RM6_DATAOUT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_10_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_10_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_10_IN
    );
  NlwBufferBlock_RM6_DATAOUT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_9_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_9_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_9_IN
    );
  NlwBufferBlock_RM6_DATAOUT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_8_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_8_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_8_IN
    );
  NlwBufferBlock_RM1_DATAOUT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_11_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_11_IBUF_0,
      O => NlwBufferSignal_RM1_DATAOUT_11_IN
    );
  NlwBufferBlock_RM1_DATAOUT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_15_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_10_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_10_IBUF_0,
      O => NlwBufferSignal_RM1_DATAOUT_10_IN
    );
  NlwBufferBlock_RM1_DATAOUT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_14_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_9_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_9_IBUF_0,
      O => NlwBufferSignal_RM1_DATAOUT_9_IN
    );
  NlwBufferBlock_RM1_DATAOUT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_13_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_8_CLK
    );
  NlwBufferBlock_RM1_DATAOUT_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_8_IBUF_0,
      O => NlwBufferSignal_RM1_DATAOUT_8_IN
    );
  NlwBufferBlock_RM1_DATAOUT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM1_DATAOUT_12_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_15_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_15_IBUF_0,
      O => NlwBufferSignal_RM2_DATAOUT_15_IN
    );
  NlwBufferBlock_RM2_DATAOUT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_11_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_14_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_14_IBUF_0,
      O => NlwBufferSignal_RM2_DATAOUT_14_IN
    );
  NlwBufferBlock_RM2_DATAOUT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_10_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_13_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_13_IBUF_0,
      O => NlwBufferSignal_RM2_DATAOUT_13_IN
    );
  NlwBufferBlock_RM2_DATAOUT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_9_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_12_CLK
    );
  NlwBufferBlock_RM2_DATAOUT_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_12_IBUF_0,
      O => NlwBufferSignal_RM2_DATAOUT_12_IN
    );
  NlwBufferBlock_RM2_DATAOUT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM2_DATAOUT_8_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_15_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_15_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_15_IN
    );
  NlwBufferBlock_RM7_DATAOUT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_14_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_14_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_14_IN
    );
  NlwBufferBlock_RM7_DATAOUT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_13_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_13_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_13_IN
    );
  NlwBufferBlock_RM7_DATAOUT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_12_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_12_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_12_IN
    );
  NlwBufferBlock_RM4_DATAOUT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_11_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_11_IBUF_0,
      O => NlwBufferSignal_RM4_DATAOUT_11_IN
    );
  NlwBufferBlock_RM4_DATAOUT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_15_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_10_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_10_IBUF_0,
      O => NlwBufferSignal_RM4_DATAOUT_10_IN
    );
  NlwBufferBlock_RM4_DATAOUT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_14_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_9_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_9_IBUF_0,
      O => NlwBufferSignal_RM4_DATAOUT_9_IN
    );
  NlwBufferBlock_RM4_DATAOUT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_13_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_8_CLK
    );
  NlwBufferBlock_RM4_DATAOUT_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_8_IBUF_0,
      O => NlwBufferSignal_RM4_DATAOUT_8_IN
    );
  NlwBufferBlock_RM4_DATAOUT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM4_DATAOUT_12_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_11_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_11_IBUF_0,
      O => NlwBufferSignal_RM3_DATAOUT_11_IN
    );
  NlwBufferBlock_RM3_DATAOUT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_15_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_10_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_10_IBUF_0,
      O => NlwBufferSignal_RM3_DATAOUT_10_IN
    );
  NlwBufferBlock_RM3_DATAOUT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_14_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_9_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_9_IBUF_0,
      O => NlwBufferSignal_RM3_DATAOUT_9_IN
    );
  NlwBufferBlock_RM3_DATAOUT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_13_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_8_CLK
    );
  NlwBufferBlock_RM3_DATAOUT_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_8_IBUF_0,
      O => NlwBufferSignal_RM3_DATAOUT_8_IN
    );
  NlwBufferBlock_RM3_DATAOUT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM3_DATAOUT_12_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_11_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_11_IBUF_0,
      O => NlwBufferSignal_RM5_DATAOUT_11_IN
    );
  NlwBufferBlock_RM5_DATAOUT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_15_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_10_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_10_IBUF_0,
      O => NlwBufferSignal_RM5_DATAOUT_10_IN
    );
  NlwBufferBlock_RM5_DATAOUT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_14_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_9_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_9_IBUF_0,
      O => NlwBufferSignal_RM5_DATAOUT_9_IN
    );
  NlwBufferBlock_RM5_DATAOUT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_13_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_8_CLK
    );
  NlwBufferBlock_RM5_DATAOUT_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_8_IBUF_0,
      O => NlwBufferSignal_RM5_DATAOUT_8_IN
    );
  NlwBufferBlock_RM5_DATAOUT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM5_DATAOUT_12_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_15_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_15_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_15_IN
    );
  NlwBufferBlock_RM6_DATAOUT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_14_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_14_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_14_IN
    );
  NlwBufferBlock_RM6_DATAOUT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_13_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_13_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_13_IN
    );
  NlwBufferBlock_RM6_DATAOUT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM6_DATAOUT_12_CLK
    );
  NlwBufferBlock_RM6_DATAOUT_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_12_IBUF_0,
      O => NlwBufferSignal_RM6_DATAOUT_12_IN
    );
  NlwBufferBlock_RM7_DATAOUT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_11_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_11_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_11_IN
    );
  NlwBufferBlock_RM7_DATAOUT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_10_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_10_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_10_IN
    );
  NlwBufferBlock_RM7_DATAOUT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_9_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_9_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_9_IN
    );
  NlwBufferBlock_RM7_DATAOUT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM7_DATAOUT_8_CLK
    );
  NlwBufferBlock_RM7_DATAOUT_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_8_IBUF_0,
      O => NlwBufferSignal_RM7_DATAOUT_8_IN
    );
  NlwBufferBlock_RM8_DATAOUT_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_11_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_11_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_11_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_11_IN
    );
  NlwBufferBlock_RM8_DATAOUT_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_10_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_10_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_10_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_10_IN
    );
  NlwBufferBlock_RM8_DATAOUT_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_9_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_9_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_9_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_9_IN
    );
  NlwBufferBlock_RM8_DATAOUT_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_8_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_8_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_8_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_8_IN
    );
  NlwBufferBlock_RM8_DATAOUT_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_15_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_15_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_15_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_15_IN
    );
  NlwBufferBlock_RM8_DATAOUT_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_14_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_14_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_14_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_14_IN
    );
  NlwBufferBlock_RM8_DATAOUT_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_13_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_13_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_13_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_13_IN
    );
  NlwBufferBlock_RM8_DATAOUT_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => CLOCK_BUFGP,
      O => NlwBufferSignal_RM8_DATAOUT_12_CLK
    );
  NlwBufferBlock_RM8_DATAOUT_12_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => INPUT_12_IBUF_0,
      O => NlwBufferSignal_RM8_DATAOUT_12_IN
    );
  NlwBlock_RegisterFile_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

