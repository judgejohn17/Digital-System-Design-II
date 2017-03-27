--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: RegisterFile_synthesis.vhd
-- /___/   /\     Timestamp: Mon Feb 29 16:38:22 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm RegisterFile -w -dir netgen/synthesis -ofmt vhdl -sim RegisterFile.ngc RegisterFile_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: RegisterFile.ngc
-- Output file	: D:\DSDII\Lab2Fixed\netgen\synthesis\RegisterFile_synthesis.vhd
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

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
  signal RD1_2_IBUF_0 : STD_LOGIC; 
  signal RD1_1_IBUF_1 : STD_LOGIC; 
  signal RD1_0_IBUF_2 : STD_LOGIC; 
  signal RD2_2_IBUF_3 : STD_LOGIC; 
  signal RD2_1_IBUF_4 : STD_LOGIC; 
  signal RD2_0_IBUF_5 : STD_LOGIC; 
  signal WR_2_IBUF_6 : STD_LOGIC; 
  signal WR_1_IBUF_7 : STD_LOGIC; 
  signal WR_0_IBUF_8 : STD_LOGIC; 
  signal INPUT_15_IBUF_9 : STD_LOGIC; 
  signal INPUT_14_IBUF_10 : STD_LOGIC; 
  signal INPUT_13_IBUF_11 : STD_LOGIC; 
  signal INPUT_12_IBUF_12 : STD_LOGIC; 
  signal INPUT_11_IBUF_13 : STD_LOGIC; 
  signal INPUT_10_IBUF_14 : STD_LOGIC; 
  signal INPUT_9_IBUF_15 : STD_LOGIC; 
  signal INPUT_8_IBUF_16 : STD_LOGIC; 
  signal INPUT_7_IBUF_17 : STD_LOGIC; 
  signal INPUT_6_IBUF_18 : STD_LOGIC; 
  signal INPUT_5_IBUF_19 : STD_LOGIC; 
  signal INPUT_4_IBUF_20 : STD_LOGIC; 
  signal INPUT_3_IBUF_21 : STD_LOGIC; 
  signal INPUT_2_IBUF_22 : STD_LOGIC; 
  signal INPUT_1_IBUF_23 : STD_LOGIC; 
  signal INPUT_0_IBUF_24 : STD_LOGIC; 
  signal WE_IBUF_25 : STD_LOGIC; 
  signal RESET_IBUF_26 : STD_LOGIC; 
  signal CLOCK_BUFGP_27 : STD_LOGIC; 
  signal OUT1_15_OBUF_28 : STD_LOGIC; 
  signal OUT1_14_OBUF_29 : STD_LOGIC; 
  signal OUT1_13_OBUF_30 : STD_LOGIC; 
  signal OUT1_12_OBUF_31 : STD_LOGIC; 
  signal OUT1_11_OBUF_32 : STD_LOGIC; 
  signal OUT1_10_OBUF_33 : STD_LOGIC; 
  signal OUT1_9_OBUF_34 : STD_LOGIC; 
  signal OUT1_8_OBUF_35 : STD_LOGIC; 
  signal OUT1_7_OBUF_36 : STD_LOGIC; 
  signal OUT1_6_OBUF_37 : STD_LOGIC; 
  signal OUT1_5_OBUF_38 : STD_LOGIC; 
  signal OUT1_4_OBUF_39 : STD_LOGIC; 
  signal OUT1_3_OBUF_40 : STD_LOGIC; 
  signal OUT1_2_OBUF_41 : STD_LOGIC; 
  signal OUT1_1_OBUF_42 : STD_LOGIC; 
  signal OUT1_0_OBUF_43 : STD_LOGIC; 
  signal OUT2_15_OBUF_44 : STD_LOGIC; 
  signal OUT2_14_OBUF_45 : STD_LOGIC; 
  signal OUT2_13_OBUF_46 : STD_LOGIC; 
  signal OUT2_12_OBUF_47 : STD_LOGIC; 
  signal OUT2_11_OBUF_48 : STD_LOGIC; 
  signal OUT2_10_OBUF_49 : STD_LOGIC; 
  signal OUT2_9_OBUF_50 : STD_LOGIC; 
  signal OUT2_8_OBUF_51 : STD_LOGIC; 
  signal OUT2_7_OBUF_52 : STD_LOGIC; 
  signal OUT2_6_OBUF_53 : STD_LOGIC; 
  signal OUT2_5_OBUF_54 : STD_LOGIC; 
  signal OUT2_4_OBUF_55 : STD_LOGIC; 
  signal OUT2_3_OBUF_56 : STD_LOGIC; 
  signal OUT2_2_OBUF_57 : STD_LOGIC; 
  signal OUT2_1_OBUF_58 : STD_LOGIC; 
  signal OUT2_0_OBUF_59 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT1 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT2 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT3 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT4 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT5 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT6 : STD_LOGIC; 
  signal DEC1_Mram_DATAOUT7 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_415_196 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_315_197 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_414_198 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_314_199 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_413_200 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_313_201 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_412_202 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_312_203 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_411_204 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_311_205 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_410_206 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_310_207 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_49_208 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_39_209 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_48_210 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_38_211 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_47_212 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_37_213 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_46_214 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_36_215 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_45_216 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_35_217 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_44_218 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_34_219 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_43_220 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_33_221 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_42_222 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_32_223 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_41_224 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_31_225 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_4_226 : STD_LOGIC; 
  signal MUX2_Mmux_DATAOUT_3_227 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_415_228 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_315_229 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_414_230 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_314_231 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_413_232 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_313_233 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_412_234 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_312_235 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_411_236 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_311_237 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_410_238 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_310_239 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_49_240 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_39_241 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_48_242 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_38_243 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_47_244 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_37_245 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_46_246 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_36_247 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_45_248 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_35_249 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_44_250 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_34_251 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_43_252 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_33_253 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_42_254 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_32_255 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_41_256 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_31_257 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_4_258 : STD_LOGIC; 
  signal MUX1_Mmux_DATAOUT_3_259 : STD_LOGIC; 
  signal RM1_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM2_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM3_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM4_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM5_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM6_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM7_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal RM8_DATAOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  RM8_DATAOUT_15 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_15_IBUF_9,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(15)
    );
  RM8_DATAOUT_14 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_14_IBUF_10,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(14)
    );
  RM8_DATAOUT_13 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_13_IBUF_11,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(13)
    );
  RM8_DATAOUT_12 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_12_IBUF_12,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(12)
    );
  RM8_DATAOUT_11 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_11_IBUF_13,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(11)
    );
  RM8_DATAOUT_10 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_10_IBUF_14,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(10)
    );
  RM8_DATAOUT_9 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_9_IBUF_15,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(9)
    );
  RM8_DATAOUT_8 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_8_IBUF_16,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(8)
    );
  RM8_DATAOUT_7 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_7_IBUF_17,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(7)
    );
  RM8_DATAOUT_6 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_6_IBUF_18,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(6)
    );
  RM8_DATAOUT_5 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_5_IBUF_19,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(5)
    );
  RM8_DATAOUT_4 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_4_IBUF_20,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(4)
    );
  RM8_DATAOUT_3 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_3_IBUF_21,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(3)
    );
  RM8_DATAOUT_2 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_2_IBUF_22,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(2)
    );
  RM8_DATAOUT_1 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_1_IBUF_23,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(1)
    );
  RM8_DATAOUT_0 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT7,
      D => INPUT_0_IBUF_24,
      R => RESET_IBUF_26,
      Q => RM8_DATAOUT(0)
    );
  RM7_DATAOUT_15 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_15_IBUF_9,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(15)
    );
  RM7_DATAOUT_14 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_14_IBUF_10,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(14)
    );
  RM7_DATAOUT_13 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_13_IBUF_11,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(13)
    );
  RM7_DATAOUT_12 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_12_IBUF_12,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(12)
    );
  RM7_DATAOUT_11 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_11_IBUF_13,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(11)
    );
  RM7_DATAOUT_10 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_10_IBUF_14,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(10)
    );
  RM7_DATAOUT_9 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_9_IBUF_15,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(9)
    );
  RM7_DATAOUT_8 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_8_IBUF_16,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(8)
    );
  RM7_DATAOUT_7 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_7_IBUF_17,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(7)
    );
  RM7_DATAOUT_6 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_6_IBUF_18,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(6)
    );
  RM7_DATAOUT_5 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_5_IBUF_19,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(5)
    );
  RM7_DATAOUT_4 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_4_IBUF_20,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(4)
    );
  RM7_DATAOUT_3 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_3_IBUF_21,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(3)
    );
  RM7_DATAOUT_2 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_2_IBUF_22,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(2)
    );
  RM7_DATAOUT_1 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_1_IBUF_23,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(1)
    );
  RM7_DATAOUT_0 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT6,
      D => INPUT_0_IBUF_24,
      R => RESET_IBUF_26,
      Q => RM7_DATAOUT(0)
    );
  RM6_DATAOUT_15 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_15_IBUF_9,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(15)
    );
  RM6_DATAOUT_14 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_14_IBUF_10,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(14)
    );
  RM6_DATAOUT_13 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_13_IBUF_11,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(13)
    );
  RM6_DATAOUT_12 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_12_IBUF_12,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(12)
    );
  RM6_DATAOUT_11 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_11_IBUF_13,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(11)
    );
  RM6_DATAOUT_10 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_10_IBUF_14,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(10)
    );
  RM6_DATAOUT_9 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_9_IBUF_15,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(9)
    );
  RM6_DATAOUT_8 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_8_IBUF_16,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(8)
    );
  RM6_DATAOUT_7 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_7_IBUF_17,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(7)
    );
  RM6_DATAOUT_6 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_6_IBUF_18,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(6)
    );
  RM6_DATAOUT_5 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_5_IBUF_19,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(5)
    );
  RM6_DATAOUT_4 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_4_IBUF_20,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(4)
    );
  RM6_DATAOUT_3 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_3_IBUF_21,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(3)
    );
  RM6_DATAOUT_2 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_2_IBUF_22,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(2)
    );
  RM6_DATAOUT_1 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_1_IBUF_23,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(1)
    );
  RM6_DATAOUT_0 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT5,
      D => INPUT_0_IBUF_24,
      R => RESET_IBUF_26,
      Q => RM6_DATAOUT(0)
    );
  RM5_DATAOUT_15 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_15_IBUF_9,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(15)
    );
  RM5_DATAOUT_14 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_14_IBUF_10,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(14)
    );
  RM5_DATAOUT_13 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_13_IBUF_11,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(13)
    );
  RM5_DATAOUT_12 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_12_IBUF_12,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(12)
    );
  RM5_DATAOUT_11 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_11_IBUF_13,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(11)
    );
  RM5_DATAOUT_10 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_10_IBUF_14,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(10)
    );
  RM5_DATAOUT_9 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_9_IBUF_15,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(9)
    );
  RM5_DATAOUT_8 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_8_IBUF_16,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(8)
    );
  RM5_DATAOUT_7 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_7_IBUF_17,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(7)
    );
  RM5_DATAOUT_6 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_6_IBUF_18,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(6)
    );
  RM5_DATAOUT_5 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_5_IBUF_19,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(5)
    );
  RM5_DATAOUT_4 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_4_IBUF_20,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(4)
    );
  RM5_DATAOUT_3 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_3_IBUF_21,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(3)
    );
  RM5_DATAOUT_2 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_2_IBUF_22,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(2)
    );
  RM5_DATAOUT_1 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_1_IBUF_23,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(1)
    );
  RM5_DATAOUT_0 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT4,
      D => INPUT_0_IBUF_24,
      R => RESET_IBUF_26,
      Q => RM5_DATAOUT(0)
    );
  RM4_DATAOUT_15 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_15_IBUF_9,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(15)
    );
  RM4_DATAOUT_14 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_14_IBUF_10,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(14)
    );
  RM4_DATAOUT_13 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_13_IBUF_11,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(13)
    );
  RM4_DATAOUT_12 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_12_IBUF_12,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(12)
    );
  RM4_DATAOUT_11 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_11_IBUF_13,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(11)
    );
  RM4_DATAOUT_10 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_10_IBUF_14,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(10)
    );
  RM4_DATAOUT_9 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_9_IBUF_15,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(9)
    );
  RM4_DATAOUT_8 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_8_IBUF_16,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(8)
    );
  RM4_DATAOUT_7 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_7_IBUF_17,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(7)
    );
  RM4_DATAOUT_6 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_6_IBUF_18,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(6)
    );
  RM4_DATAOUT_5 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_5_IBUF_19,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(5)
    );
  RM4_DATAOUT_4 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_4_IBUF_20,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(4)
    );
  RM4_DATAOUT_3 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_3_IBUF_21,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(3)
    );
  RM4_DATAOUT_2 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_2_IBUF_22,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(2)
    );
  RM4_DATAOUT_1 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_1_IBUF_23,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(1)
    );
  RM4_DATAOUT_0 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT3,
      D => INPUT_0_IBUF_24,
      R => RESET_IBUF_26,
      Q => RM4_DATAOUT(0)
    );
  RM3_DATAOUT_15 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_15_IBUF_9,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(15)
    );
  RM3_DATAOUT_14 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_14_IBUF_10,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(14)
    );
  RM3_DATAOUT_13 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_13_IBUF_11,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(13)
    );
  RM3_DATAOUT_12 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_12_IBUF_12,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(12)
    );
  RM3_DATAOUT_11 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_11_IBUF_13,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(11)
    );
  RM3_DATAOUT_10 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_10_IBUF_14,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(10)
    );
  RM3_DATAOUT_9 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_9_IBUF_15,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(9)
    );
  RM3_DATAOUT_8 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_8_IBUF_16,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(8)
    );
  RM3_DATAOUT_7 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_7_IBUF_17,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(7)
    );
  RM3_DATAOUT_6 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_6_IBUF_18,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(6)
    );
  RM3_DATAOUT_5 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_5_IBUF_19,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(5)
    );
  RM3_DATAOUT_4 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_4_IBUF_20,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(4)
    );
  RM3_DATAOUT_3 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_3_IBUF_21,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(3)
    );
  RM3_DATAOUT_2 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_2_IBUF_22,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(2)
    );
  RM3_DATAOUT_1 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_1_IBUF_23,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(1)
    );
  RM3_DATAOUT_0 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT2,
      D => INPUT_0_IBUF_24,
      R => RESET_IBUF_26,
      Q => RM3_DATAOUT(0)
    );
  RM2_DATAOUT_15 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_15_IBUF_9,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(15)
    );
  RM2_DATAOUT_14 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_14_IBUF_10,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(14)
    );
  RM2_DATAOUT_13 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_13_IBUF_11,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(13)
    );
  RM2_DATAOUT_12 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_12_IBUF_12,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(12)
    );
  RM2_DATAOUT_11 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_11_IBUF_13,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(11)
    );
  RM2_DATAOUT_10 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_10_IBUF_14,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(10)
    );
  RM2_DATAOUT_9 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_9_IBUF_15,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(9)
    );
  RM2_DATAOUT_8 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_8_IBUF_16,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(8)
    );
  RM2_DATAOUT_7 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_7_IBUF_17,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(7)
    );
  RM2_DATAOUT_6 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_6_IBUF_18,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(6)
    );
  RM2_DATAOUT_5 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_5_IBUF_19,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(5)
    );
  RM2_DATAOUT_4 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_4_IBUF_20,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(4)
    );
  RM2_DATAOUT_3 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_3_IBUF_21,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(3)
    );
  RM2_DATAOUT_2 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_2_IBUF_22,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(2)
    );
  RM2_DATAOUT_1 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_1_IBUF_23,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(1)
    );
  RM2_DATAOUT_0 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT1,
      D => INPUT_0_IBUF_24,
      R => RESET_IBUF_26,
      Q => RM2_DATAOUT(0)
    );
  RM1_DATAOUT_15 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_15_IBUF_9,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(15)
    );
  RM1_DATAOUT_14 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_14_IBUF_10,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(14)
    );
  RM1_DATAOUT_13 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_13_IBUF_11,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(13)
    );
  RM1_DATAOUT_12 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_12_IBUF_12,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(12)
    );
  RM1_DATAOUT_11 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_11_IBUF_13,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(11)
    );
  RM1_DATAOUT_10 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_10_IBUF_14,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(10)
    );
  RM1_DATAOUT_9 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_9_IBUF_15,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(9)
    );
  RM1_DATAOUT_8 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_8_IBUF_16,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(8)
    );
  RM1_DATAOUT_7 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_7_IBUF_17,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(7)
    );
  RM1_DATAOUT_6 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_6_IBUF_18,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(6)
    );
  RM1_DATAOUT_5 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_5_IBUF_19,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(5)
    );
  RM1_DATAOUT_4 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_4_IBUF_20,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(4)
    );
  RM1_DATAOUT_3 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_3_IBUF_21,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(3)
    );
  RM1_DATAOUT_2 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_2_IBUF_22,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(2)
    );
  RM1_DATAOUT_1 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_1_IBUF_23,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(1)
    );
  RM1_DATAOUT_0 : FDRE
    port map (
      C => CLOCK_BUFGP_27,
      CE => DEC1_Mram_DATAOUT,
      D => INPUT_0_IBUF_24,
      R => RESET_IBUF_26,
      Q => RM1_DATAOUT(0)
    );
  MUX2_Mmux_DATAOUT_2_f7_14 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_415_196,
      I1 => MUX2_Mmux_DATAOUT_315_197,
      S => RD2_2_IBUF_3,
      O => OUT2_9_OBUF_50
    );
  MUX2_Mmux_DATAOUT_415 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(9),
      I3 => RM4_DATAOUT(9),
      I4 => RM2_DATAOUT(9),
      I5 => RM1_DATAOUT(9),
      O => MUX2_Mmux_DATAOUT_415_196
    );
  MUX2_Mmux_DATAOUT_315 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(9),
      I3 => RM8_DATAOUT(9),
      I4 => RM6_DATAOUT(9),
      I5 => RM5_DATAOUT(9),
      O => MUX2_Mmux_DATAOUT_315_197
    );
  MUX2_Mmux_DATAOUT_2_f7_13 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_414_198,
      I1 => MUX2_Mmux_DATAOUT_314_199,
      S => RD2_2_IBUF_3,
      O => OUT2_8_OBUF_51
    );
  MUX2_Mmux_DATAOUT_414 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(8),
      I3 => RM4_DATAOUT(8),
      I4 => RM2_DATAOUT(8),
      I5 => RM1_DATAOUT(8),
      O => MUX2_Mmux_DATAOUT_414_198
    );
  MUX2_Mmux_DATAOUT_314 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(8),
      I3 => RM8_DATAOUT(8),
      I4 => RM6_DATAOUT(8),
      I5 => RM5_DATAOUT(8),
      O => MUX2_Mmux_DATAOUT_314_199
    );
  MUX2_Mmux_DATAOUT_2_f7_12 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_413_200,
      I1 => MUX2_Mmux_DATAOUT_313_201,
      S => RD2_2_IBUF_3,
      O => OUT2_7_OBUF_52
    );
  MUX2_Mmux_DATAOUT_413 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(7),
      I3 => RM4_DATAOUT(7),
      I4 => RM2_DATAOUT(7),
      I5 => RM1_DATAOUT(7),
      O => MUX2_Mmux_DATAOUT_413_200
    );
  MUX2_Mmux_DATAOUT_313 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(7),
      I3 => RM8_DATAOUT(7),
      I4 => RM6_DATAOUT(7),
      I5 => RM5_DATAOUT(7),
      O => MUX2_Mmux_DATAOUT_313_201
    );
  MUX2_Mmux_DATAOUT_2_f7_11 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_412_202,
      I1 => MUX2_Mmux_DATAOUT_312_203,
      S => RD2_2_IBUF_3,
      O => OUT2_6_OBUF_53
    );
  MUX2_Mmux_DATAOUT_412 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(6),
      I3 => RM4_DATAOUT(6),
      I4 => RM2_DATAOUT(6),
      I5 => RM1_DATAOUT(6),
      O => MUX2_Mmux_DATAOUT_412_202
    );
  MUX2_Mmux_DATAOUT_312 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(6),
      I3 => RM8_DATAOUT(6),
      I4 => RM6_DATAOUT(6),
      I5 => RM5_DATAOUT(6),
      O => MUX2_Mmux_DATAOUT_312_203
    );
  MUX2_Mmux_DATAOUT_2_f7_10 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_411_204,
      I1 => MUX2_Mmux_DATAOUT_311_205,
      S => RD2_2_IBUF_3,
      O => OUT2_5_OBUF_54
    );
  MUX2_Mmux_DATAOUT_411 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(5),
      I3 => RM4_DATAOUT(5),
      I4 => RM2_DATAOUT(5),
      I5 => RM1_DATAOUT(5),
      O => MUX2_Mmux_DATAOUT_411_204
    );
  MUX2_Mmux_DATAOUT_311 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(5),
      I3 => RM8_DATAOUT(5),
      I4 => RM6_DATAOUT(5),
      I5 => RM5_DATAOUT(5),
      O => MUX2_Mmux_DATAOUT_311_205
    );
  MUX2_Mmux_DATAOUT_2_f7_9 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_410_206,
      I1 => MUX2_Mmux_DATAOUT_310_207,
      S => RD2_2_IBUF_3,
      O => OUT2_4_OBUF_55
    );
  MUX2_Mmux_DATAOUT_410 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(4),
      I3 => RM4_DATAOUT(4),
      I4 => RM2_DATAOUT(4),
      I5 => RM1_DATAOUT(4),
      O => MUX2_Mmux_DATAOUT_410_206
    );
  MUX2_Mmux_DATAOUT_310 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(4),
      I3 => RM8_DATAOUT(4),
      I4 => RM6_DATAOUT(4),
      I5 => RM5_DATAOUT(4),
      O => MUX2_Mmux_DATAOUT_310_207
    );
  MUX2_Mmux_DATAOUT_2_f7_8 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_49_208,
      I1 => MUX2_Mmux_DATAOUT_39_209,
      S => RD2_2_IBUF_3,
      O => OUT2_3_OBUF_56
    );
  MUX2_Mmux_DATAOUT_49 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(3),
      I3 => RM4_DATAOUT(3),
      I4 => RM2_DATAOUT(3),
      I5 => RM1_DATAOUT(3),
      O => MUX2_Mmux_DATAOUT_49_208
    );
  MUX2_Mmux_DATAOUT_39 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(3),
      I3 => RM8_DATAOUT(3),
      I4 => RM6_DATAOUT(3),
      I5 => RM5_DATAOUT(3),
      O => MUX2_Mmux_DATAOUT_39_209
    );
  MUX2_Mmux_DATAOUT_2_f7_7 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_48_210,
      I1 => MUX2_Mmux_DATAOUT_38_211,
      S => RD2_2_IBUF_3,
      O => OUT2_2_OBUF_57
    );
  MUX2_Mmux_DATAOUT_48 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(2),
      I3 => RM4_DATAOUT(2),
      I4 => RM2_DATAOUT(2),
      I5 => RM1_DATAOUT(2),
      O => MUX2_Mmux_DATAOUT_48_210
    );
  MUX2_Mmux_DATAOUT_38 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(2),
      I3 => RM8_DATAOUT(2),
      I4 => RM6_DATAOUT(2),
      I5 => RM5_DATAOUT(2),
      O => MUX2_Mmux_DATAOUT_38_211
    );
  MUX2_Mmux_DATAOUT_2_f7_6 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_47_212,
      I1 => MUX2_Mmux_DATAOUT_37_213,
      S => RD2_2_IBUF_3,
      O => OUT2_1_OBUF_58
    );
  MUX2_Mmux_DATAOUT_47 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(1),
      I3 => RM4_DATAOUT(1),
      I4 => RM2_DATAOUT(1),
      I5 => RM1_DATAOUT(1),
      O => MUX2_Mmux_DATAOUT_47_212
    );
  MUX2_Mmux_DATAOUT_37 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(1),
      I3 => RM8_DATAOUT(1),
      I4 => RM6_DATAOUT(1),
      I5 => RM5_DATAOUT(1),
      O => MUX2_Mmux_DATAOUT_37_213
    );
  MUX2_Mmux_DATAOUT_2_f7_5 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_46_214,
      I1 => MUX2_Mmux_DATAOUT_36_215,
      S => RD2_2_IBUF_3,
      O => OUT2_15_OBUF_44
    );
  MUX2_Mmux_DATAOUT_46 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(15),
      I3 => RM4_DATAOUT(15),
      I4 => RM2_DATAOUT(15),
      I5 => RM1_DATAOUT(15),
      O => MUX2_Mmux_DATAOUT_46_214
    );
  MUX2_Mmux_DATAOUT_36 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(15),
      I3 => RM8_DATAOUT(15),
      I4 => RM6_DATAOUT(15),
      I5 => RM5_DATAOUT(15),
      O => MUX2_Mmux_DATAOUT_36_215
    );
  MUX2_Mmux_DATAOUT_2_f7_4 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_45_216,
      I1 => MUX2_Mmux_DATAOUT_35_217,
      S => RD2_2_IBUF_3,
      O => OUT2_14_OBUF_45
    );
  MUX2_Mmux_DATAOUT_45 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(14),
      I3 => RM4_DATAOUT(14),
      I4 => RM2_DATAOUT(14),
      I5 => RM1_DATAOUT(14),
      O => MUX2_Mmux_DATAOUT_45_216
    );
  MUX2_Mmux_DATAOUT_35 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(14),
      I3 => RM8_DATAOUT(14),
      I4 => RM6_DATAOUT(14),
      I5 => RM5_DATAOUT(14),
      O => MUX2_Mmux_DATAOUT_35_217
    );
  MUX2_Mmux_DATAOUT_2_f7_3 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_44_218,
      I1 => MUX2_Mmux_DATAOUT_34_219,
      S => RD2_2_IBUF_3,
      O => OUT2_13_OBUF_46
    );
  MUX2_Mmux_DATAOUT_44 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(13),
      I3 => RM4_DATAOUT(13),
      I4 => RM2_DATAOUT(13),
      I5 => RM1_DATAOUT(13),
      O => MUX2_Mmux_DATAOUT_44_218
    );
  MUX2_Mmux_DATAOUT_34 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(13),
      I3 => RM8_DATAOUT(13),
      I4 => RM6_DATAOUT(13),
      I5 => RM5_DATAOUT(13),
      O => MUX2_Mmux_DATAOUT_34_219
    );
  MUX2_Mmux_DATAOUT_2_f7_2 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_43_220,
      I1 => MUX2_Mmux_DATAOUT_33_221,
      S => RD2_2_IBUF_3,
      O => OUT2_12_OBUF_47
    );
  MUX2_Mmux_DATAOUT_43 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(12),
      I3 => RM4_DATAOUT(12),
      I4 => RM2_DATAOUT(12),
      I5 => RM1_DATAOUT(12),
      O => MUX2_Mmux_DATAOUT_43_220
    );
  MUX2_Mmux_DATAOUT_33 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(12),
      I3 => RM8_DATAOUT(12),
      I4 => RM6_DATAOUT(12),
      I5 => RM5_DATAOUT(12),
      O => MUX2_Mmux_DATAOUT_33_221
    );
  MUX2_Mmux_DATAOUT_2_f7_1 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_42_222,
      I1 => MUX2_Mmux_DATAOUT_32_223,
      S => RD2_2_IBUF_3,
      O => OUT2_11_OBUF_48
    );
  MUX2_Mmux_DATAOUT_42 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(11),
      I3 => RM4_DATAOUT(11),
      I4 => RM2_DATAOUT(11),
      I5 => RM1_DATAOUT(11),
      O => MUX2_Mmux_DATAOUT_42_222
    );
  MUX2_Mmux_DATAOUT_32 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(11),
      I3 => RM8_DATAOUT(11),
      I4 => RM6_DATAOUT(11),
      I5 => RM5_DATAOUT(11),
      O => MUX2_Mmux_DATAOUT_32_223
    );
  MUX2_Mmux_DATAOUT_2_f7_0 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_41_224,
      I1 => MUX2_Mmux_DATAOUT_31_225,
      S => RD2_2_IBUF_3,
      O => OUT2_10_OBUF_49
    );
  MUX2_Mmux_DATAOUT_41 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(10),
      I3 => RM4_DATAOUT(10),
      I4 => RM2_DATAOUT(10),
      I5 => RM1_DATAOUT(10),
      O => MUX2_Mmux_DATAOUT_41_224
    );
  MUX2_Mmux_DATAOUT_31 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(10),
      I3 => RM8_DATAOUT(10),
      I4 => RM6_DATAOUT(10),
      I5 => RM5_DATAOUT(10),
      O => MUX2_Mmux_DATAOUT_31_225
    );
  MUX2_Mmux_DATAOUT_2_f7 : MUXF7
    port map (
      I0 => MUX2_Mmux_DATAOUT_4_226,
      I1 => MUX2_Mmux_DATAOUT_3_227,
      S => RD2_2_IBUF_3,
      O => OUT2_0_OBUF_59
    );
  MUX2_Mmux_DATAOUT_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM3_DATAOUT(0),
      I3 => RM4_DATAOUT(0),
      I4 => RM2_DATAOUT(0),
      I5 => RM1_DATAOUT(0),
      O => MUX2_Mmux_DATAOUT_4_226
    );
  MUX2_Mmux_DATAOUT_3 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD2_1_IBUF_4,
      I1 => RD2_0_IBUF_5,
      I2 => RM7_DATAOUT(0),
      I3 => RM8_DATAOUT(0),
      I4 => RM6_DATAOUT(0),
      I5 => RM5_DATAOUT(0),
      O => MUX2_Mmux_DATAOUT_3_227
    );
  MUX1_Mmux_DATAOUT_2_f7_14 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_415_228,
      I1 => MUX1_Mmux_DATAOUT_315_229,
      S => RD1_2_IBUF_0,
      O => OUT1_9_OBUF_34
    );
  MUX1_Mmux_DATAOUT_415 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(9),
      I3 => RM4_DATAOUT(9),
      I4 => RM2_DATAOUT(9),
      I5 => RM1_DATAOUT(9),
      O => MUX1_Mmux_DATAOUT_415_228
    );
  MUX1_Mmux_DATAOUT_315 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(9),
      I3 => RM8_DATAOUT(9),
      I4 => RM6_DATAOUT(9),
      I5 => RM5_DATAOUT(9),
      O => MUX1_Mmux_DATAOUT_315_229
    );
  MUX1_Mmux_DATAOUT_2_f7_13 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_414_230,
      I1 => MUX1_Mmux_DATAOUT_314_231,
      S => RD1_2_IBUF_0,
      O => OUT1_8_OBUF_35
    );
  MUX1_Mmux_DATAOUT_414 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(8),
      I3 => RM4_DATAOUT(8),
      I4 => RM2_DATAOUT(8),
      I5 => RM1_DATAOUT(8),
      O => MUX1_Mmux_DATAOUT_414_230
    );
  MUX1_Mmux_DATAOUT_314 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(8),
      I3 => RM8_DATAOUT(8),
      I4 => RM6_DATAOUT(8),
      I5 => RM5_DATAOUT(8),
      O => MUX1_Mmux_DATAOUT_314_231
    );
  MUX1_Mmux_DATAOUT_2_f7_12 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_413_232,
      I1 => MUX1_Mmux_DATAOUT_313_233,
      S => RD1_2_IBUF_0,
      O => OUT1_7_OBUF_36
    );
  MUX1_Mmux_DATAOUT_413 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(7),
      I3 => RM4_DATAOUT(7),
      I4 => RM2_DATAOUT(7),
      I5 => RM1_DATAOUT(7),
      O => MUX1_Mmux_DATAOUT_413_232
    );
  MUX1_Mmux_DATAOUT_313 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(7),
      I3 => RM8_DATAOUT(7),
      I4 => RM6_DATAOUT(7),
      I5 => RM5_DATAOUT(7),
      O => MUX1_Mmux_DATAOUT_313_233
    );
  MUX1_Mmux_DATAOUT_2_f7_11 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_412_234,
      I1 => MUX1_Mmux_DATAOUT_312_235,
      S => RD1_2_IBUF_0,
      O => OUT1_6_OBUF_37
    );
  MUX1_Mmux_DATAOUT_412 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(6),
      I3 => RM4_DATAOUT(6),
      I4 => RM2_DATAOUT(6),
      I5 => RM1_DATAOUT(6),
      O => MUX1_Mmux_DATAOUT_412_234
    );
  MUX1_Mmux_DATAOUT_312 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(6),
      I3 => RM8_DATAOUT(6),
      I4 => RM6_DATAOUT(6),
      I5 => RM5_DATAOUT(6),
      O => MUX1_Mmux_DATAOUT_312_235
    );
  MUX1_Mmux_DATAOUT_2_f7_10 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_411_236,
      I1 => MUX1_Mmux_DATAOUT_311_237,
      S => RD1_2_IBUF_0,
      O => OUT1_5_OBUF_38
    );
  MUX1_Mmux_DATAOUT_411 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(5),
      I3 => RM4_DATAOUT(5),
      I4 => RM2_DATAOUT(5),
      I5 => RM1_DATAOUT(5),
      O => MUX1_Mmux_DATAOUT_411_236
    );
  MUX1_Mmux_DATAOUT_311 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(5),
      I3 => RM8_DATAOUT(5),
      I4 => RM6_DATAOUT(5),
      I5 => RM5_DATAOUT(5),
      O => MUX1_Mmux_DATAOUT_311_237
    );
  MUX1_Mmux_DATAOUT_2_f7_9 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_410_238,
      I1 => MUX1_Mmux_DATAOUT_310_239,
      S => RD1_2_IBUF_0,
      O => OUT1_4_OBUF_39
    );
  MUX1_Mmux_DATAOUT_410 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(4),
      I3 => RM4_DATAOUT(4),
      I4 => RM2_DATAOUT(4),
      I5 => RM1_DATAOUT(4),
      O => MUX1_Mmux_DATAOUT_410_238
    );
  MUX1_Mmux_DATAOUT_310 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(4),
      I3 => RM8_DATAOUT(4),
      I4 => RM6_DATAOUT(4),
      I5 => RM5_DATAOUT(4),
      O => MUX1_Mmux_DATAOUT_310_239
    );
  MUX1_Mmux_DATAOUT_2_f7_8 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_49_240,
      I1 => MUX1_Mmux_DATAOUT_39_241,
      S => RD1_2_IBUF_0,
      O => OUT1_3_OBUF_40
    );
  MUX1_Mmux_DATAOUT_49 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(3),
      I3 => RM4_DATAOUT(3),
      I4 => RM2_DATAOUT(3),
      I5 => RM1_DATAOUT(3),
      O => MUX1_Mmux_DATAOUT_49_240
    );
  MUX1_Mmux_DATAOUT_39 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(3),
      I3 => RM8_DATAOUT(3),
      I4 => RM6_DATAOUT(3),
      I5 => RM5_DATAOUT(3),
      O => MUX1_Mmux_DATAOUT_39_241
    );
  MUX1_Mmux_DATAOUT_2_f7_7 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_48_242,
      I1 => MUX1_Mmux_DATAOUT_38_243,
      S => RD1_2_IBUF_0,
      O => OUT1_2_OBUF_41
    );
  MUX1_Mmux_DATAOUT_48 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(2),
      I3 => RM4_DATAOUT(2),
      I4 => RM2_DATAOUT(2),
      I5 => RM1_DATAOUT(2),
      O => MUX1_Mmux_DATAOUT_48_242
    );
  MUX1_Mmux_DATAOUT_38 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(2),
      I3 => RM8_DATAOUT(2),
      I4 => RM6_DATAOUT(2),
      I5 => RM5_DATAOUT(2),
      O => MUX1_Mmux_DATAOUT_38_243
    );
  MUX1_Mmux_DATAOUT_2_f7_6 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_47_244,
      I1 => MUX1_Mmux_DATAOUT_37_245,
      S => RD1_2_IBUF_0,
      O => OUT1_1_OBUF_42
    );
  MUX1_Mmux_DATAOUT_47 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(1),
      I3 => RM4_DATAOUT(1),
      I4 => RM2_DATAOUT(1),
      I5 => RM1_DATAOUT(1),
      O => MUX1_Mmux_DATAOUT_47_244
    );
  MUX1_Mmux_DATAOUT_37 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(1),
      I3 => RM8_DATAOUT(1),
      I4 => RM6_DATAOUT(1),
      I5 => RM5_DATAOUT(1),
      O => MUX1_Mmux_DATAOUT_37_245
    );
  MUX1_Mmux_DATAOUT_2_f7_5 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_46_246,
      I1 => MUX1_Mmux_DATAOUT_36_247,
      S => RD1_2_IBUF_0,
      O => OUT1_15_OBUF_28
    );
  MUX1_Mmux_DATAOUT_46 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(15),
      I3 => RM4_DATAOUT(15),
      I4 => RM2_DATAOUT(15),
      I5 => RM1_DATAOUT(15),
      O => MUX1_Mmux_DATAOUT_46_246
    );
  MUX1_Mmux_DATAOUT_36 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(15),
      I3 => RM8_DATAOUT(15),
      I4 => RM6_DATAOUT(15),
      I5 => RM5_DATAOUT(15),
      O => MUX1_Mmux_DATAOUT_36_247
    );
  MUX1_Mmux_DATAOUT_2_f7_4 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_45_248,
      I1 => MUX1_Mmux_DATAOUT_35_249,
      S => RD1_2_IBUF_0,
      O => OUT1_14_OBUF_29
    );
  MUX1_Mmux_DATAOUT_45 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(14),
      I3 => RM4_DATAOUT(14),
      I4 => RM2_DATAOUT(14),
      I5 => RM1_DATAOUT(14),
      O => MUX1_Mmux_DATAOUT_45_248
    );
  MUX1_Mmux_DATAOUT_35 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(14),
      I3 => RM8_DATAOUT(14),
      I4 => RM6_DATAOUT(14),
      I5 => RM5_DATAOUT(14),
      O => MUX1_Mmux_DATAOUT_35_249
    );
  MUX1_Mmux_DATAOUT_2_f7_3 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_44_250,
      I1 => MUX1_Mmux_DATAOUT_34_251,
      S => RD1_2_IBUF_0,
      O => OUT1_13_OBUF_30
    );
  MUX1_Mmux_DATAOUT_44 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(13),
      I3 => RM4_DATAOUT(13),
      I4 => RM2_DATAOUT(13),
      I5 => RM1_DATAOUT(13),
      O => MUX1_Mmux_DATAOUT_44_250
    );
  MUX1_Mmux_DATAOUT_34 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(13),
      I3 => RM8_DATAOUT(13),
      I4 => RM6_DATAOUT(13),
      I5 => RM5_DATAOUT(13),
      O => MUX1_Mmux_DATAOUT_34_251
    );
  MUX1_Mmux_DATAOUT_2_f7_2 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_43_252,
      I1 => MUX1_Mmux_DATAOUT_33_253,
      S => RD1_2_IBUF_0,
      O => OUT1_12_OBUF_31
    );
  MUX1_Mmux_DATAOUT_43 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(12),
      I3 => RM4_DATAOUT(12),
      I4 => RM2_DATAOUT(12),
      I5 => RM1_DATAOUT(12),
      O => MUX1_Mmux_DATAOUT_43_252
    );
  MUX1_Mmux_DATAOUT_33 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(12),
      I3 => RM8_DATAOUT(12),
      I4 => RM6_DATAOUT(12),
      I5 => RM5_DATAOUT(12),
      O => MUX1_Mmux_DATAOUT_33_253
    );
  MUX1_Mmux_DATAOUT_2_f7_1 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_42_254,
      I1 => MUX1_Mmux_DATAOUT_32_255,
      S => RD1_2_IBUF_0,
      O => OUT1_11_OBUF_32
    );
  MUX1_Mmux_DATAOUT_42 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(11),
      I3 => RM4_DATAOUT(11),
      I4 => RM2_DATAOUT(11),
      I5 => RM1_DATAOUT(11),
      O => MUX1_Mmux_DATAOUT_42_254
    );
  MUX1_Mmux_DATAOUT_32 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(11),
      I3 => RM8_DATAOUT(11),
      I4 => RM6_DATAOUT(11),
      I5 => RM5_DATAOUT(11),
      O => MUX1_Mmux_DATAOUT_32_255
    );
  MUX1_Mmux_DATAOUT_2_f7_0 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_41_256,
      I1 => MUX1_Mmux_DATAOUT_31_257,
      S => RD1_2_IBUF_0,
      O => OUT1_10_OBUF_33
    );
  MUX1_Mmux_DATAOUT_41 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(10),
      I3 => RM4_DATAOUT(10),
      I4 => RM2_DATAOUT(10),
      I5 => RM1_DATAOUT(10),
      O => MUX1_Mmux_DATAOUT_41_256
    );
  MUX1_Mmux_DATAOUT_31 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(10),
      I3 => RM8_DATAOUT(10),
      I4 => RM6_DATAOUT(10),
      I5 => RM5_DATAOUT(10),
      O => MUX1_Mmux_DATAOUT_31_257
    );
  MUX1_Mmux_DATAOUT_2_f7 : MUXF7
    port map (
      I0 => MUX1_Mmux_DATAOUT_4_258,
      I1 => MUX1_Mmux_DATAOUT_3_259,
      S => RD1_2_IBUF_0,
      O => OUT1_0_OBUF_43
    );
  MUX1_Mmux_DATAOUT_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM3_DATAOUT(0),
      I3 => RM4_DATAOUT(0),
      I4 => RM2_DATAOUT(0),
      I5 => RM1_DATAOUT(0),
      O => MUX1_Mmux_DATAOUT_4_258
    );
  MUX1_Mmux_DATAOUT_3 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => RD1_1_IBUF_1,
      I1 => RD1_0_IBUF_2,
      I2 => RM7_DATAOUT(0),
      I3 => RM8_DATAOUT(0),
      I4 => RM6_DATAOUT(0),
      I5 => RM5_DATAOUT(0),
      O => MUX1_Mmux_DATAOUT_3_259
    );
  DEC1_Mram_DATAOUT12 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => WR_0_IBUF_8,
      I1 => WR_2_IBUF_6,
      I2 => WR_1_IBUF_7,
      I3 => WE_IBUF_25,
      O => DEC1_Mram_DATAOUT
    );
  DEC1_Mram_DATAOUT111 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => WR_0_IBUF_8,
      I1 => WR_2_IBUF_6,
      I2 => WR_1_IBUF_7,
      I3 => WE_IBUF_25,
      O => DEC1_Mram_DATAOUT1
    );
  DEC1_Mram_DATAOUT21 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => WR_1_IBUF_7,
      I1 => WR_0_IBUF_8,
      I2 => WR_2_IBUF_6,
      I3 => WE_IBUF_25,
      O => DEC1_Mram_DATAOUT2
    );
  DEC1_Mram_DATAOUT31 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => WR_0_IBUF_8,
      I1 => WR_2_IBUF_6,
      I2 => WR_1_IBUF_7,
      I3 => WE_IBUF_25,
      O => DEC1_Mram_DATAOUT3
    );
  DEC1_Mram_DATAOUT41 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => WR_2_IBUF_6,
      I1 => WR_0_IBUF_8,
      I2 => WR_1_IBUF_7,
      I3 => WE_IBUF_25,
      O => DEC1_Mram_DATAOUT4
    );
  DEC1_Mram_DATAOUT51 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => WR_2_IBUF_6,
      I1 => WR_1_IBUF_7,
      I2 => WR_0_IBUF_8,
      I3 => WE_IBUF_25,
      O => DEC1_Mram_DATAOUT5
    );
  DEC1_Mram_DATAOUT61 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => WR_2_IBUF_6,
      I1 => WR_0_IBUF_8,
      I2 => WR_1_IBUF_7,
      I3 => WE_IBUF_25,
      O => DEC1_Mram_DATAOUT6
    );
  DEC1_Mram_DATAOUT71 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => WR_0_IBUF_8,
      I1 => WR_2_IBUF_6,
      I2 => WR_1_IBUF_7,
      I3 => WE_IBUF_25,
      O => DEC1_Mram_DATAOUT7
    );
  RD1_2_IBUF : IBUF
    port map (
      I => RD1(2),
      O => RD1_2_IBUF_0
    );
  RD1_1_IBUF : IBUF
    port map (
      I => RD1(1),
      O => RD1_1_IBUF_1
    );
  RD1_0_IBUF : IBUF
    port map (
      I => RD1(0),
      O => RD1_0_IBUF_2
    );
  RD2_2_IBUF : IBUF
    port map (
      I => RD2(2),
      O => RD2_2_IBUF_3
    );
  RD2_1_IBUF : IBUF
    port map (
      I => RD2(1),
      O => RD2_1_IBUF_4
    );
  RD2_0_IBUF : IBUF
    port map (
      I => RD2(0),
      O => RD2_0_IBUF_5
    );
  WR_2_IBUF : IBUF
    port map (
      I => WR(2),
      O => WR_2_IBUF_6
    );
  WR_1_IBUF : IBUF
    port map (
      I => WR(1),
      O => WR_1_IBUF_7
    );
  WR_0_IBUF : IBUF
    port map (
      I => WR(0),
      O => WR_0_IBUF_8
    );
  INPUT_15_IBUF : IBUF
    port map (
      I => INPUT(15),
      O => INPUT_15_IBUF_9
    );
  INPUT_14_IBUF : IBUF
    port map (
      I => INPUT(14),
      O => INPUT_14_IBUF_10
    );
  INPUT_13_IBUF : IBUF
    port map (
      I => INPUT(13),
      O => INPUT_13_IBUF_11
    );
  INPUT_12_IBUF : IBUF
    port map (
      I => INPUT(12),
      O => INPUT_12_IBUF_12
    );
  INPUT_11_IBUF : IBUF
    port map (
      I => INPUT(11),
      O => INPUT_11_IBUF_13
    );
  INPUT_10_IBUF : IBUF
    port map (
      I => INPUT(10),
      O => INPUT_10_IBUF_14
    );
  INPUT_9_IBUF : IBUF
    port map (
      I => INPUT(9),
      O => INPUT_9_IBUF_15
    );
  INPUT_8_IBUF : IBUF
    port map (
      I => INPUT(8),
      O => INPUT_8_IBUF_16
    );
  INPUT_7_IBUF : IBUF
    port map (
      I => INPUT(7),
      O => INPUT_7_IBUF_17
    );
  INPUT_6_IBUF : IBUF
    port map (
      I => INPUT(6),
      O => INPUT_6_IBUF_18
    );
  INPUT_5_IBUF : IBUF
    port map (
      I => INPUT(5),
      O => INPUT_5_IBUF_19
    );
  INPUT_4_IBUF : IBUF
    port map (
      I => INPUT(4),
      O => INPUT_4_IBUF_20
    );
  INPUT_3_IBUF : IBUF
    port map (
      I => INPUT(3),
      O => INPUT_3_IBUF_21
    );
  INPUT_2_IBUF : IBUF
    port map (
      I => INPUT(2),
      O => INPUT_2_IBUF_22
    );
  INPUT_1_IBUF : IBUF
    port map (
      I => INPUT(1),
      O => INPUT_1_IBUF_23
    );
  INPUT_0_IBUF : IBUF
    port map (
      I => INPUT(0),
      O => INPUT_0_IBUF_24
    );
  WE_IBUF : IBUF
    port map (
      I => WE,
      O => WE_IBUF_25
    );
  RESET_IBUF : IBUF
    port map (
      I => RESET,
      O => RESET_IBUF_26
    );
  OUT1_15_OBUF : OBUF
    port map (
      I => OUT1_15_OBUF_28,
      O => OUT1(15)
    );
  OUT1_14_OBUF : OBUF
    port map (
      I => OUT1_14_OBUF_29,
      O => OUT1(14)
    );
  OUT1_13_OBUF : OBUF
    port map (
      I => OUT1_13_OBUF_30,
      O => OUT1(13)
    );
  OUT1_12_OBUF : OBUF
    port map (
      I => OUT1_12_OBUF_31,
      O => OUT1(12)
    );
  OUT1_11_OBUF : OBUF
    port map (
      I => OUT1_11_OBUF_32,
      O => OUT1(11)
    );
  OUT1_10_OBUF : OBUF
    port map (
      I => OUT1_10_OBUF_33,
      O => OUT1(10)
    );
  OUT1_9_OBUF : OBUF
    port map (
      I => OUT1_9_OBUF_34,
      O => OUT1(9)
    );
  OUT1_8_OBUF : OBUF
    port map (
      I => OUT1_8_OBUF_35,
      O => OUT1(8)
    );
  OUT1_7_OBUF : OBUF
    port map (
      I => OUT1_7_OBUF_36,
      O => OUT1(7)
    );
  OUT1_6_OBUF : OBUF
    port map (
      I => OUT1_6_OBUF_37,
      O => OUT1(6)
    );
  OUT1_5_OBUF : OBUF
    port map (
      I => OUT1_5_OBUF_38,
      O => OUT1(5)
    );
  OUT1_4_OBUF : OBUF
    port map (
      I => OUT1_4_OBUF_39,
      O => OUT1(4)
    );
  OUT1_3_OBUF : OBUF
    port map (
      I => OUT1_3_OBUF_40,
      O => OUT1(3)
    );
  OUT1_2_OBUF : OBUF
    port map (
      I => OUT1_2_OBUF_41,
      O => OUT1(2)
    );
  OUT1_1_OBUF : OBUF
    port map (
      I => OUT1_1_OBUF_42,
      O => OUT1(1)
    );
  OUT1_0_OBUF : OBUF
    port map (
      I => OUT1_0_OBUF_43,
      O => OUT1(0)
    );
  OUT2_15_OBUF : OBUF
    port map (
      I => OUT2_15_OBUF_44,
      O => OUT2(15)
    );
  OUT2_14_OBUF : OBUF
    port map (
      I => OUT2_14_OBUF_45,
      O => OUT2(14)
    );
  OUT2_13_OBUF : OBUF
    port map (
      I => OUT2_13_OBUF_46,
      O => OUT2(13)
    );
  OUT2_12_OBUF : OBUF
    port map (
      I => OUT2_12_OBUF_47,
      O => OUT2(12)
    );
  OUT2_11_OBUF : OBUF
    port map (
      I => OUT2_11_OBUF_48,
      O => OUT2(11)
    );
  OUT2_10_OBUF : OBUF
    port map (
      I => OUT2_10_OBUF_49,
      O => OUT2(10)
    );
  OUT2_9_OBUF : OBUF
    port map (
      I => OUT2_9_OBUF_50,
      O => OUT2(9)
    );
  OUT2_8_OBUF : OBUF
    port map (
      I => OUT2_8_OBUF_51,
      O => OUT2(8)
    );
  OUT2_7_OBUF : OBUF
    port map (
      I => OUT2_7_OBUF_52,
      O => OUT2(7)
    );
  OUT2_6_OBUF : OBUF
    port map (
      I => OUT2_6_OBUF_53,
      O => OUT2(6)
    );
  OUT2_5_OBUF : OBUF
    port map (
      I => OUT2_5_OBUF_54,
      O => OUT2(5)
    );
  OUT2_4_OBUF : OBUF
    port map (
      I => OUT2_4_OBUF_55,
      O => OUT2(4)
    );
  OUT2_3_OBUF : OBUF
    port map (
      I => OUT2_3_OBUF_56,
      O => OUT2(3)
    );
  OUT2_2_OBUF : OBUF
    port map (
      I => OUT2_2_OBUF_57,
      O => OUT2(2)
    );
  OUT2_1_OBUF : OBUF
    port map (
      I => OUT2_1_OBUF_58,
      O => OUT2(1)
    );
  OUT2_0_OBUF : OBUF
    port map (
      I => OUT2_0_OBUF_59,
      O => OUT2(0)
    );
  CLOCK_BUFGP : BUFGP
    port map (
      I => CLOCK,
      O => CLOCK_BUFGP_27
    );

end Structure;

