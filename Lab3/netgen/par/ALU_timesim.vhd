--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ALU_timesim.vhd
-- /___/   /\     Timestamp: Thu Mar 31 10:37:43 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf ALU.pcf -rpw 100 -tpw 0 -ar Structure -tm ALU -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim ALU.ncd ALU_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: ALU.ncd
-- Output file	: D:\DSDII\Lab3\netgen\par\ALU_timesim.vhd
-- # of Entities	: 1
-- Design Name	: ALU
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

entity ALU is
  port (
    Input1 : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    Input2 : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    Control : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Output : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end ALU;

architecture Structure of ALU is
  signal Multiplier_8_0_C_1_0_Q : STD_LOGIC; 
  signal Input1_0_IBUF_0 : STD_LOGIC; 
  signal Input2_1_IBUF_0 : STD_LOGIC; 
  signal Input1_1_IBUF_0 : STD_LOGIC; 
  signal Input2_0_IBUF_0 : STD_LOGIC; 
  signal Input1_2_IBUF_0 : STD_LOGIC; 
  signal Input2_2_IBUF_0 : STD_LOGIC; 
  signal Output_4_OBUF_1583 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output104_1584 : STD_LOGIC; 
  signal Input1_11_IBUF_0 : STD_LOGIC; 
  signal Input1_10_IBUF_0 : STD_LOGIC; 
  signal Input1_12_IBUF_0 : STD_LOGIC; 
  signal Input1_13_IBUF_0 : STD_LOGIC; 
  signal Output_5_OBUF_1589 : STD_LOGIC; 
  signal Multiplier_8_0_C_0_4_Q : STD_LOGIC; 
  signal Input1_4_IBUF_0 : STD_LOGIC; 
  signal Input1_5_IBUF_0 : STD_LOGIC; 
  signal Input1_3_IBUF_0 : STD_LOGIC; 
  signal Output_6_OBUF_1594 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output1010_1595 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output102_1596 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output106_1597 : STD_LOGIC; 
  signal Control_3_IBUF_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output107_1599 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output109_0 : STD_LOGIC; 
  signal Input2_3_IBUF_0 : STD_LOGIC; 
  signal Input2_1_mmx_out8 : STD_LOGIC; 
  signal Control_2_IBUF_0 : STD_LOGIC; 
  signal Input2_2_mmx_out4 : STD_LOGIC; 
  signal Output_7_OBUF_1605 : STD_LOGIC; 
  signal Input1_8_IBUF_0 : STD_LOGIC; 
  signal Input1_6_IBUF_0 : STD_LOGIC; 
  signal Input1_7_IBUF_0 : STD_LOGIC; 
  signal Input1_9_IBUF_0 : STD_LOGIC; 
  signal Output_8_OBUF_1610 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output206_1611 : STD_LOGIC; 
  signal Control_1_IBUF_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output205_0 : STD_LOGIC; 
  signal Input1_15_IBUF_0 : STD_LOGIC; 
  signal Input2_1_mmx_out1 : STD_LOGIC; 
  signal Output_9_OBUF_1616 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output322_1617 : STD_LOGIC; 
  signal Input2_9_IBUF_0 : STD_LOGIC; 
  signal Control_0_IBUF_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output1021 : STD_LOGIC; 
  signal Input2_13_IBUF_0 : STD_LOGIC; 
  signal Input2_1_mmx_out10 : STD_LOGIC; 
  signal Output_10_OBUF_1623 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output43_1624 : STD_LOGIC; 
  signal Input2_1_mmx_out : STD_LOGIC; 
  signal Input2_1_mmx_out5 : STD_LOGIC; 
  signal N12_0 : STD_LOGIC; 
  signal Output_11_OBUF_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output44_1630 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output41_1631 : STD_LOGIC; 
  signal Input2_10_IBUF_0 : STD_LOGIC; 
  signal Output_12_OBUF_1633 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_2_7_Q : STD_LOGIC; 
  signal Input2_4_IBUF_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output223_1636 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output225_1637 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output226_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output221 : STD_LOGIC; 
  signal Multiplier_8_0_C_1_1_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_2_0_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_1_2_Q : STD_LOGIC; 
  signal Output_13_OBUF_1643 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_3_5_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_2_6_Q : STD_LOGIC; 
  signal Input2_5_IBUF_0 : STD_LOGIC; 
  signal Multiplier_8_0_C_1_5_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_1_6_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_4_4_Q : STD_LOGIC; 
  signal Input2_6_IBUF_0 : STD_LOGIC; 
  signal Multiplier_8_0_C_2_4_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_2_5_Q : STD_LOGIC; 
  signal Output_14_OBUF_1653 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output1213_1654 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output121 : STD_LOGIC; 
  signal Input1_14_IBUF_0 : STD_LOGIC; 
  signal Input2_1_mmx_out3 : STD_LOGIC; 
  signal Input2_1_mmx_out2 : STD_LOGIC; 
  signal Output_15_OBUF_1659 : STD_LOGIC; 
  signal Output_3_OBUF_1660 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output204_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output203_1662 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_0_3_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output182 : STD_LOGIC; 
  signal Multiplier_8_0_C_0_2_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output24_1666 : STD_LOGIC; 
  signal AdderSub16Bit_0_C_3_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output1214_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output1212_0 : STD_LOGIC; 
  signal Multiplier_8_0_C_5_7_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_6_6_Q : STD_LOGIC; 
  signal Input2_7_IBUF_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output306_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output302 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output303_1675 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_5_2_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_5_0_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_4_2_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_4_1_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_0_7_0 : STD_LOGIC; 
  signal Input2_11_IBUF_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output162_1682 : STD_LOGIC; 
  signal Input2_1_mmx_out11_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output16 : STD_LOGIC; 
  signal Input2_8_IBUF_0 : STD_LOGIC; 
  signal Input2_12_IBUF_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output47_0 : STD_LOGIC; 
  signal Multiplier_8_0_C_4_4_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_5_3_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_6_2_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_3_7_0 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_4_5_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output325_1693 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output32_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output324 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output221111 : STD_LOGIC; 
  signal Multiplier_8_0_C_3_5_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_3_6_Q : STD_LOGIC; 
  signal Input2_14_IBUF_0 : STD_LOGIC; 
  signal Input2_15_IBUF_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output244_1701 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output245_1702 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output246_1703 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output241_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output87_1705 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output85_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output147_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output144_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output66_1709 : STD_LOGIC; 
  signal Input2_1_mmx_out6 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output83 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output327_1712 : STD_LOGIC; 
  signal AdderSub16Bit_0_C_7_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_2_1_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_0_1_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_0_2_Q : STD_LOGIC; 
  signal Output_1_OBUF_1717 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output165 : STD_LOGIC; 
  signal Input2_1_mmx_out7 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output184_1720 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output69 : STD_LOGIC; 
  signal AdderSub16Bit_0_C_9_Q : STD_LOGIC; 
  signal Output_2_OBUF_1723 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output183_1724 : STD_LOGIC; 
  signal AdderSub16Bit_0_C_1_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output264_1726 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output281_1727 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_5_6_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_5_5_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_6_4_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output86_1731 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_3_3_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_2_2_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_2_3_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output284_1735 : STD_LOGIC; 
  signal AdderSub16Bit_0_C_5_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output101_1737 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output328_1738 : STD_LOGIC; 
  signal Multiplier_8_0_C_6_1_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_5_3_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output329_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output286_1742 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output28 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output282_1744 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output283_1745 : STD_LOGIC; 
  signal Multiplier_8_0_C_3_6_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_1_6_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_1_7_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_5_7_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_3_7_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_2_4_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_1_3_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_1_4_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_4_2_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_4_3_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_3_3_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_3_4_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_3_7_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_0_7_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_6_1_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_7_0_0 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_4_0_0 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_1_5_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_0_5_Q : STD_LOGIC; 
  signal Input2_2_mmx_out5_0 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_3_2_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_4_0_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_3_1_Q : STD_LOGIC; 
  signal Output_0_OBUF_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output127_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output122_0 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output143_1772 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output142 : STD_LOGIC; 
  signal Input2_2_mmx_out6 : STD_LOGIC; 
  signal AdderSub16Bit_0_C_13_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output64_0 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_5_5_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output6_0 : STD_LOGIC; 
  signal Multiplier_8_0_C_5_6_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output108_1781 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_0_6_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_5_1_0 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_6_0_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output20_0 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_3_1_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_2_2_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_1_3_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_4_6_Q : STD_LOGIC; 
  signal AdderSub16Bit_0_C_11_Q : STD_LOGIC; 
  signal Multiplier_8_0_C_1_7_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_0_4_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output10 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output105_1794 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output1210_1796 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output1215_1797 : STD_LOGIC; 
  signal Input2_1_mmx_out9 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output42_1799 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output1011_1800 : STD_LOGIC; 
  signal Input2_0_mmx_out12 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output262 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output265_1803 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output242_1804 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output285_1806 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output84_1807 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output4 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output8 : STD_LOGIC; 
  signal Input2_1_mmx_out4 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output321_1811 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output326_1812 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output65_1813 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output610_1814 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output61_1815 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output46_1816 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfFA_4_7_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output243_1818 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output305 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output263_1820 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output30 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output222_1823 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output224_1824 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output185_1825 : STD_LOGIC; 
  signal Multiplier_8_0_C_3_0_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output202_1827 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output201_1828 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output207_1829 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output161_1831 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output166_1832 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output22 : STD_LOGIC; 
  signal Input1_0_IBUF_13 : STD_LOGIC; 
  signal Input1_1_IBUF_16 : STD_LOGIC; 
  signal Input1_2_IBUF_21 : STD_LOGIC; 
  signal Input1_10_IBUF_24 : STD_LOGIC; 
  signal Input1_3_IBUF_29 : STD_LOGIC; 
  signal Input1_11_IBUF_32 : STD_LOGIC; 
  signal Input2_0_IBUF_37 : STD_LOGIC; 
  signal Input1_4_IBUF_40 : STD_LOGIC; 
  signal Input1_12_IBUF_43 : STD_LOGIC; 
  signal Input2_1_IBUF_48 : STD_LOGIC; 
  signal Input1_5_IBUF_51 : STD_LOGIC; 
  signal Input1_13_IBUF_54 : STD_LOGIC; 
  signal Input2_2_IBUF_59 : STD_LOGIC; 
  signal Input1_6_IBUF_62 : STD_LOGIC; 
  signal Input1_14_IBUF_65 : STD_LOGIC; 
  signal Input2_3_IBUF_70 : STD_LOGIC; 
  signal Input1_7_IBUF_73 : STD_LOGIC; 
  signal Input1_15_IBUF_76 : STD_LOGIC; 
  signal Input2_4_IBUF_79 : STD_LOGIC; 
  signal Input1_8_IBUF_82 : STD_LOGIC; 
  signal Input2_5_IBUF_85 : STD_LOGIC; 
  signal Input1_9_IBUF_88 : STD_LOGIC; 
  signal Input2_6_IBUF_91 : STD_LOGIC; 
  signal Input2_10_IBUF_94 : STD_LOGIC; 
  signal Input2_7_IBUF_97 : STD_LOGIC; 
  signal Input2_11_IBUF_100 : STD_LOGIC; 
  signal Input2_8_IBUF_103 : STD_LOGIC; 
  signal Input2_12_IBUF_106 : STD_LOGIC; 
  signal Input2_9_IBUF_109 : STD_LOGIC; 
  signal Input2_13_IBUF_112 : STD_LOGIC; 
  signal Input2_14_IBUF_115 : STD_LOGIC; 
  signal Input2_15_IBUF_118 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output144_120 : STD_LOGIC; 
  signal Control_0_IBUF_138 : STD_LOGIC; 
  signal Control_1_IBUF_141 : STD_LOGIC; 
  signal Control_2_IBUF_144 : STD_LOGIC; 
  signal Control_3_IBUF_147 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output127_198 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N10_pack_10 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output109_218 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output1212_240 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output147 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output122_281 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output1214_291 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output262_pack_8 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output32 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output85_489 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output226_652 : STD_LOGIC; 
  signal Input2_2_mmx_out5 : STD_LOGIC; 
  signal Input2_1_mmx_out11 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output64 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal Output_11_OBUF_746 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output329_775 : STD_LOGIC; 
  signal Multiplier_8_0_C_1_7_pack_4 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output6 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output47_818 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output20 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_0_7_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_7_0_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_6_1_pack_3 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output263_pack_2 : STD_LOGIC; 
  signal N6_pack_7 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output306_1077 : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_3_7_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_4_0_Q : STD_LOGIC; 
  signal Multiplier_8_0_OutOfAND_5_1_Q : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output241_1279 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output201_pack_6 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output204_1378 : STD_LOGIC; 
  signal N8_pack_5 : STD_LOGIC; 
  signal Mux7_1_0_Mmux_Output205_1463 : STD_LOGIC; 
  signal AdderSub16Bit_0_C_1_pack_2 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal Output_0_OBUF_1503 : STD_LOGIC; 
  signal NlwBufferSignal_Output_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Output_3_OBUF_I : STD_LOGIC; 
  signal NLW_N0_D6LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NlwRenamedSig_IO_Input1 : STD_LOGIC_VECTOR ( 15 downto 2 ); 
  signal NlwRenamedSig_IO_Input2 : STD_LOGIC_VECTOR ( 15 downto 2 ); 
  signal Variable_Shifter_16_0_LRSOutTemp : STD_LOGIC_VECTOR ( 13 downto 13 ); 
begin
  NlwRenamedSig_IO_Input1(15) <= Input1(15);
  NlwRenamedSig_IO_Input1(14) <= Input1(14);
  NlwRenamedSig_IO_Input1(13) <= Input1(13);
  NlwRenamedSig_IO_Input1(12) <= Input1(12);
  NlwRenamedSig_IO_Input1(11) <= Input1(11);
  NlwRenamedSig_IO_Input1(10) <= Input1(10);
  NlwRenamedSig_IO_Input1(9) <= Input1(9);
  NlwRenamedSig_IO_Input1(8) <= Input1(8);
  NlwRenamedSig_IO_Input1(7) <= Input1(7);
  NlwRenamedSig_IO_Input1(6) <= Input1(6);
  NlwRenamedSig_IO_Input1(5) <= Input1(5);
  NlwRenamedSig_IO_Input1(4) <= Input1(4);
  NlwRenamedSig_IO_Input1(3) <= Input1(3);
  NlwRenamedSig_IO_Input1(2) <= Input1(2);
  NlwRenamedSig_IO_Input2(15) <= Input2(15);
  NlwRenamedSig_IO_Input2(14) <= Input2(14);
  NlwRenamedSig_IO_Input2(13) <= Input2(13);
  NlwRenamedSig_IO_Input2(12) <= Input2(12);
  NlwRenamedSig_IO_Input2(11) <= Input2(11);
  NlwRenamedSig_IO_Input2(10) <= Input2(10);
  NlwRenamedSig_IO_Input2(9) <= Input2(9);
  NlwRenamedSig_IO_Input2(8) <= Input2(8);
  NlwRenamedSig_IO_Input2(7) <= Input2(7);
  NlwRenamedSig_IO_Input2(6) <= Input2(6);
  NlwRenamedSig_IO_Input2(5) <= Input2(5);
  NlwRenamedSig_IO_Input2(4) <= Input2(4);
  NlwRenamedSig_IO_Input2(3) <= Input2(3);
  NlwRenamedSig_IO_Input2(2) <= Input2(2);
  Output_4_PULLDOWN : X_PD
    generic map(
      LOC => "PAD179"
    )
    port map (
      O => Output(4)
    );
  Output_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD179"
    )
    port map (
      I => NlwBufferSignal_Output_4_OBUF_I,
      O => Output(4)
    );
  Output_5_PULLDOWN : X_PD
    generic map(
      LOC => "PAD184"
    )
    port map (
      O => Output(5)
    );
  Output_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD184"
    )
    port map (
      I => NlwBufferSignal_Output_5_OBUF_I,
      O => Output(5)
    );
  Output_6_PULLDOWN : X_PD
    generic map(
      LOC => "PAD167"
    )
    port map (
      O => Output(6)
    );
  Output_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD167"
    )
    port map (
      I => NlwBufferSignal_Output_6_OBUF_I,
      O => Output(6)
    );
  Output_7_PULLDOWN : X_PD
    generic map(
      LOC => "PAD182"
    )
    port map (
      O => Output(7)
    );
  Output_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD182"
    )
    port map (
      I => NlwBufferSignal_Output_7_OBUF_I,
      O => Output(7)
    );
  Output_8_PULLDOWN : X_PD
    generic map(
      LOC => "PAD187"
    )
    port map (
      O => Output(8)
    );
  Output_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD187"
    )
    port map (
      I => NlwBufferSignal_Output_8_OBUF_I,
      O => Output(8)
    );
  Output_9_PULLDOWN : X_PD
    generic map(
      LOC => "PAD188"
    )
    port map (
      O => Output(9)
    );
  Output_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD188"
    )
    port map (
      I => NlwBufferSignal_Output_9_OBUF_I,
      O => Output(9)
    );
  Input1_0_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_0_IBUF_13,
      I => Input1(0)
    );
  ProtoComp7_IMUX : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_0_IBUF_13,
      O => Input1_0_IBUF_0
    );
  Input1_1_IBUF : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_1_IBUF_16,
      I => Input1(1)
    );
  ProtoComp7_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD161",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_1_IBUF_16,
      O => Input1_1_IBUF_0
    );
  Output_10_PULLDOWN : X_PD
    generic map(
      LOC => "PAD198"
    )
    port map (
      O => Output(10)
    );
  Output_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD198"
    )
    port map (
      I => NlwBufferSignal_Output_10_OBUF_I,
      O => Output(10)
    );
  Input1_2_PULLDOWN : X_PD
    generic map(
      LOC => "PAD168"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(2)
    );
  Input1_2_IBUF : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_2_IBUF_21,
      I => NlwRenamedSig_IO_Input1(2)
    );
  ProtoComp10_IMUX : X_BUF
    generic map(
      LOC => "PAD168",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_2_IBUF_21,
      O => Input1_2_IBUF_0
    );
  Input1_10_PULLDOWN : X_PD
    generic map(
      LOC => "PAD180"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(10)
    );
  Input1_10_IBUF : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_10_IBUF_24,
      I => NlwRenamedSig_IO_Input1(10)
    );
  ProtoComp10_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_10_IBUF_24,
      O => Input1_10_IBUF_0
    );
  Output_11_PULLDOWN : X_PD
    generic map(
      LOC => "PAD196"
    )
    port map (
      O => Output(11)
    );
  Output_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD196"
    )
    port map (
      I => NlwBufferSignal_Output_11_OBUF_I,
      O => Output(11)
    );
  Input1_3_PULLDOWN : X_PD
    generic map(
      LOC => "PAD169"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(3)
    );
  Input1_3_IBUF : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_3_IBUF_29,
      I => NlwRenamedSig_IO_Input1(3)
    );
  ProtoComp10_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD169",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_3_IBUF_29,
      O => Input1_3_IBUF_0
    );
  Input1_11_PULLDOWN : X_PD
    generic map(
      LOC => "PAD185"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(11)
    );
  Input1_11_IBUF : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_11_IBUF_32,
      I => NlwRenamedSig_IO_Input1(11)
    );
  ProtoComp10_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD185",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_11_IBUF_32,
      O => Input1_11_IBUF_0
    );
  Output_12_PULLDOWN : X_PD
    generic map(
      LOC => "PAD195"
    )
    port map (
      O => Output(12)
    );
  Output_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD195"
    )
    port map (
      I => NlwBufferSignal_Output_12_OBUF_I,
      O => Output(12)
    );
  Input2_0_IBUF : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_0_IBUF_37,
      I => Input2(0)
    );
  ProtoComp7_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD154",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_0_IBUF_37,
      O => Input2_0_IBUF_0
    );
  Input1_4_PULLDOWN : X_PD
    generic map(
      LOC => "PAD170"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(4)
    );
  Input1_4_IBUF : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_4_IBUF_40,
      I => NlwRenamedSig_IO_Input1(4)
    );
  ProtoComp10_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD170",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_4_IBUF_40,
      O => Input1_4_IBUF_0
    );
  Input1_12_PULLDOWN : X_PD
    generic map(
      LOC => "PAD183"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(12)
    );
  Input1_12_IBUF : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_12_IBUF_43,
      I => NlwRenamedSig_IO_Input1(12)
    );
  ProtoComp10_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD183",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_12_IBUF_43,
      O => Input1_12_IBUF_0
    );
  Output_13_PULLDOWN : X_PD
    generic map(
      LOC => "PAD192"
    )
    port map (
      O => Output(13)
    );
  Output_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => NlwBufferSignal_Output_13_OBUF_I,
      O => Output(13)
    );
  Input2_1_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_1_IBUF_48,
      I => Input2(1)
    );
  ProtoComp7_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_1_IBUF_48,
      O => Input2_1_IBUF_0
    );
  Input1_5_PULLDOWN : X_PD
    generic map(
      LOC => "PAD175"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(5)
    );
  Input1_5_IBUF : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_5_IBUF_51,
      I => NlwRenamedSig_IO_Input1(5)
    );
  ProtoComp10_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_5_IBUF_51,
      O => Input1_5_IBUF_0
    );
  Input1_13_PULLDOWN : X_PD
    generic map(
      LOC => "PAD181"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(13)
    );
  Input1_13_IBUF : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_13_IBUF_54,
      I => NlwRenamedSig_IO_Input1(13)
    );
  ProtoComp10_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD181",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_13_IBUF_54,
      O => Input1_13_IBUF_0
    );
  Output_14_PULLDOWN : X_PD
    generic map(
      LOC => "PAD193"
    )
    port map (
      O => Output(14)
    );
  Output_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD193"
    )
    port map (
      I => NlwBufferSignal_Output_14_OBUF_I,
      O => Output(14)
    );
  Input2_2_PULLDOWN : X_PD
    generic map(
      LOC => "PAD143"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(2)
    );
  Input2_2_IBUF : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_2_IBUF_59,
      I => NlwRenamedSig_IO_Input2(2)
    );
  ProtoComp10_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD143",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_2_IBUF_59,
      O => Input2_2_IBUF_0
    );
  Input1_6_PULLDOWN : X_PD
    generic map(
      LOC => "PAD172"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(6)
    );
  Input1_6_IBUF : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_6_IBUF_62,
      I => NlwRenamedSig_IO_Input1(6)
    );
  ProtoComp10_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_6_IBUF_62,
      O => Input1_6_IBUF_0
    );
  Input1_14_PULLDOWN : X_PD
    generic map(
      LOC => "PAD176"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(14)
    );
  Input1_14_IBUF : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_14_IBUF_65,
      I => NlwRenamedSig_IO_Input1(14)
    );
  ProtoComp10_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_14_IBUF_65,
      O => Input1_14_IBUF_0
    );
  Output_15_PULLDOWN : X_PD
    generic map(
      LOC => "PAD194"
    )
    port map (
      O => Output(15)
    );
  Output_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD194"
    )
    port map (
      I => NlwBufferSignal_Output_15_OBUF_I,
      O => Output(15)
    );
  Input2_3_PULLDOWN : X_PD
    generic map(
      LOC => "PAD144"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(3)
    );
  Input2_3_IBUF : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_3_IBUF_70,
      I => NlwRenamedSig_IO_Input2(3)
    );
  ProtoComp10_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD144",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_3_IBUF_70,
      O => Input2_3_IBUF_0
    );
  Input1_7_PULLDOWN : X_PD
    generic map(
      LOC => "PAD173"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(7)
    );
  Input1_7_IBUF : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_7_IBUF_73,
      I => NlwRenamedSig_IO_Input1(7)
    );
  ProtoComp10_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD173",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_7_IBUF_73,
      O => Input1_7_IBUF_0
    );
  Input1_15_PULLDOWN : X_PD
    generic map(
      LOC => "PAD186"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(15)
    );
  Input1_15_IBUF : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_15_IBUF_76,
      I => NlwRenamedSig_IO_Input1(15)
    );
  ProtoComp10_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD186",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_15_IBUF_76,
      O => Input1_15_IBUF_0
    );
  Input2_4_PULLDOWN : X_PD
    generic map(
      LOC => "PAD145"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(4)
    );
  Input2_4_IBUF : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_4_IBUF_79,
      I => NlwRenamedSig_IO_Input2(4)
    );
  ProtoComp10_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD145",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_4_IBUF_79,
      O => Input2_4_IBUF_0
    );
  Input1_8_PULLDOWN : X_PD
    generic map(
      LOC => "PAD174"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(8)
    );
  Input1_8_IBUF : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_8_IBUF_82,
      I => NlwRenamedSig_IO_Input1(8)
    );
  ProtoComp10_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD174",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_8_IBUF_82,
      O => Input1_8_IBUF_0
    );
  Input2_5_PULLDOWN : X_PD
    generic map(
      LOC => "PAD146"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(5)
    );
  Input2_5_IBUF : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_5_IBUF_85,
      I => NlwRenamedSig_IO_Input2(5)
    );
  ProtoComp10_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD146",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_5_IBUF_85,
      O => Input2_5_IBUF_0
    );
  Input1_9_PULLDOWN : X_PD
    generic map(
      LOC => "PAD177"
    )
    port map (
      O => NlwRenamedSig_IO_Input1(9)
    );
  Input1_9_IBUF : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input1_9_IBUF_88,
      I => NlwRenamedSig_IO_Input1(9)
    );
  ProtoComp10_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input1_9_IBUF_88,
      O => Input1_9_IBUF_0
    );
  Input2_6_PULLDOWN : X_PD
    generic map(
      LOC => "PAD149"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(6)
    );
  Input2_6_IBUF : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_6_IBUF_91,
      I => NlwRenamedSig_IO_Input2(6)
    );
  ProtoComp10_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD149",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_6_IBUF_91,
      O => Input2_6_IBUF_0
    );
  Input2_10_PULLDOWN : X_PD
    generic map(
      LOC => "PAD153"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(10)
    );
  Input2_10_IBUF : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_10_IBUF_94,
      I => NlwRenamedSig_IO_Input2(10)
    );
  ProtoComp10_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD153",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_10_IBUF_94,
      O => Input2_10_IBUF_0
    );
  Input2_7_PULLDOWN : X_PD
    generic map(
      LOC => "PAD150"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(7)
    );
  Input2_7_IBUF : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_7_IBUF_97,
      I => NlwRenamedSig_IO_Input2(7)
    );
  ProtoComp10_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD150",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_7_IBUF_97,
      O => Input2_7_IBUF_0
    );
  Input2_11_PULLDOWN : X_PD
    generic map(
      LOC => "PAD155"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(11)
    );
  Input2_11_IBUF : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_11_IBUF_100,
      I => NlwRenamedSig_IO_Input2(11)
    );
  ProtoComp10_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD155",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_11_IBUF_100,
      O => Input2_11_IBUF_0
    );
  Input2_8_PULLDOWN : X_PD
    generic map(
      LOC => "PAD151"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(8)
    );
  Input2_8_IBUF : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_8_IBUF_103,
      I => NlwRenamedSig_IO_Input2(8)
    );
  ProtoComp10_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD151",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_8_IBUF_103,
      O => Input2_8_IBUF_0
    );
  Input2_12_PULLDOWN : X_PD
    generic map(
      LOC => "PAD156"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(12)
    );
  Input2_12_IBUF : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_12_IBUF_106,
      I => NlwRenamedSig_IO_Input2(12)
    );
  ProtoComp10_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD156",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_12_IBUF_106,
      O => Input2_12_IBUF_0
    );
  Input2_9_PULLDOWN : X_PD
    generic map(
      LOC => "PAD152"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(9)
    );
  Input2_9_IBUF : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_9_IBUF_109,
      I => NlwRenamedSig_IO_Input2(9)
    );
  ProtoComp10_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD152",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_9_IBUF_109,
      O => Input2_9_IBUF_0
    );
  Input2_13_PULLDOWN : X_PD
    generic map(
      LOC => "PAD157"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(13)
    );
  Input2_13_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_13_IBUF_112,
      I => NlwRenamedSig_IO_Input2(13)
    );
  ProtoComp10_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_13_IBUF_112,
      O => Input2_13_IBUF_0
    );
  Input2_14_PULLDOWN : X_PD
    generic map(
      LOC => "PAD158"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(14)
    );
  Input2_14_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_14_IBUF_115,
      I => NlwRenamedSig_IO_Input2(14)
    );
  ProtoComp10_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_14_IBUF_115,
      O => Input2_14_IBUF_0
    );
  Input2_15_PULLDOWN : X_PD
    generic map(
      LOC => "PAD171"
    )
    port map (
      O => NlwRenamedSig_IO_Input2(15)
    );
  Input2_15_IBUF : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 115 ps
    )
    port map (
      O => Input2_15_IBUF_118,
      I => NlwRenamedSig_IO_Input2(15)
    );
  ProtoComp10_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD171",
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_15_IBUF_118,
      O => Input2_15_IBUF_0
    );
  Mux7_1_0_Mmux_Output143_Mux7_1_0_Mmux_Output143_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output144_120,
      O => Mux7_1_0_Mmux_Output144_0
    );
  Mux7_1_0_Mmux_Output145 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y4"
    )
    port map (
      IA => '0',
      IB => N15,
      O => Mux7_1_0_Mmux_Output144_120,
      SEL => Control_3_IBUF_0
    );
  N0_D6LUT : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"0000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => '1',
      O => NLW_N0_D6LUT_O_UNCONNECTED
    );
  Mux7_1_0_Mmux_Output145_G : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"3F0C4B4B3300B2B2"
    )
    port map (
      ADR4 => Control_2_IBUF_0,
      ADR1 => Control_1_IBUF_0,
      ADR2 => Control_0_IBUF_0,
      ADR5 => Input1_15_IBUF_0,
      ADR0 => Input2_15_IBUF_0,
      ADR3 => Mux7_1_0_Mmux_Output143_1772,
      O => N15
    );
  Mux7_1_0_Mmux_Output144 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"0404FEF404040E04"
    )
    port map (
      ADR2 => Input2_3_IBUF_0,
      ADR3 => Input2_1_mmx_out10,
      ADR0 => Input2_2_IBUF_0,
      ADR4 => Control_0_IBUF_0,
      ADR1 => Mux7_1_0_Mmux_Output142,
      ADR5 => Input2_2_mmx_out6,
      O => Mux7_1_0_Mmux_Output143_1772
    );
  Control_0_IBUF : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 115 ps
    )
    port map (
      O => Control_0_IBUF_138,
      I => Control(0)
    );
  ProtoComp7_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD162",
      PATHPULSE => 115 ps
    )
    port map (
      I => Control_0_IBUF_138,
      O => Control_0_IBUF_0
    );
  Control_1_IBUF : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 115 ps
    )
    port map (
      O => Control_1_IBUF_141,
      I => Control(1)
    );
  ProtoComp7_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD163",
      PATHPULSE => 115 ps
    )
    port map (
      I => Control_1_IBUF_141,
      O => Control_1_IBUF_0
    );
  Control_2_IBUF : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 115 ps
    )
    port map (
      O => Control_2_IBUF_144,
      I => Control(2)
    );
  ProtoComp7_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD164",
      PATHPULSE => 115 ps
    )
    port map (
      I => Control_2_IBUF_144,
      O => Control_2_IBUF_0
    );
  Control_3_IBUF : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 115 ps
    )
    port map (
      O => Control_3_IBUF_147,
      I => Control(3)
    );
  ProtoComp7_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 115 ps
    )
    port map (
      I => Control_3_IBUF_147,
      O => Control_3_IBUF_0
    );
  Output_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD139"
    )
    port map (
      I => NlwBufferSignal_Output_0_OBUF_I,
      O => Output(0)
    );
  Output_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD140"
    )
    port map (
      I => NlwBufferSignal_Output_1_OBUF_I,
      O => Output(1)
    );
  Output_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD141"
    )
    port map (
      I => NlwBufferSignal_Output_2_OBUF_I,
      O => Output(2)
    );
  Output_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD142"
    )
    port map (
      I => NlwBufferSignal_Output_3_OBUF_I,
      O => Output(3)
    );
  Mux7_1_0_Mmux_Output104 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"3F353A30FFFFFFFF"
    )
    port map (
      ADR2 => Input2_3_IBUF_0,
      ADR3 => Input2_1_mmx_out8,
      ADR0 => Input2_2_IBUF_0,
      ADR4 => Mux7_1_0_Mmux_Output104_1584,
      ADR5 => Control_2_IBUF_0,
      ADR1 => Input2_2_mmx_out4,
      O => Mux7_1_0_Mmux_Output105_1794
    );
  Mux7_1_0_Mmux_Output109 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y2",
      INIT => X"F0C0F0C0A0800000"
    )
    port map (
      ADR5 => Mux7_1_0_Mmux_Output102_1596,
      ADR4 => Mux7_1_0_Mmux_Output105_1794,
      ADR0 => Mux7_1_0_Mmux_Output106_1597,
      ADR2 => Control_3_IBUF_0,
      ADR3 => Mux7_1_0_Mmux_Output107_1599,
      ADR1 => Mux7_1_0_Mmux_Output109_0,
      O => Mux7_1_0_Mmux_Output1010_1595
    );
  Mux7_1_0_Mmux_Output108_Mux7_1_0_Mmux_Output108_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output127_198,
      O => Mux7_1_0_Mmux_Output127_0
    );
  Mux7_1_0_Mmux_Output108_Mux7_1_0_Mmux_Output108_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N10_pack_10,
      O => N10
    );
  Mux7_1_0_Mmux_Output127 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y3"
    )
    port map (
      IA => N30,
      IB => N31,
      O => Mux7_1_0_Mmux_Output127_198,
      SEL => Input2_1_IBUF_0
    );
  Mux7_1_0_Mmux_Output127_F : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"0000445000000050"
    )
    port map (
      ADR0 => Input2_2_IBUF_0,
      ADR4 => Input2_3_IBUF_0,
      ADR3 => Input2_0_IBUF_0,
      ADR1 => Control_2_IBUF_0,
      ADR5 => Input1_13_IBUF_0,
      ADR2 => Input1_14_IBUF_0,
      O => N30
    );
  Mux7_1_0_Mmux_Output127_G : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"0000008C00000080"
    )
    port map (
      ADR3 => Input2_2_IBUF_0,
      ADR4 => Input2_3_IBUF_0,
      ADR1 => Control_2_IBUF_0,
      ADR2 => Input2_0_IBUF_0,
      ADR0 => Input1_11_IBUF_0,
      ADR5 => Input1_12_IBUF_0,
      O => N31
    );
  Mux7_1_0_Mmux_Output107 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"CCC0CC00CCC0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => Input1_15_IBUF_0,
      ADR4 => Input2_0_IBUF_0,
      ADR2 => Input2_1_IBUF_0,
      ADR3 => Input2_2_IBUF_0,
      ADR5 => '1',
      O => Mux7_1_0_Mmux_Output108_1781
    );
  Mux7_1_0_Mmux_Output325_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"F0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => Input2_0_IBUF_0,
      ADR2 => Input2_1_IBUF_0,
      ADR3 => Input2_2_IBUF_0,
      O => N10_pack_10
    );
  Mux7_1_0_Mmux_Output325 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y3",
      INIT => X"3130353001000500"
    )
    port map (
      ADR1 => Control_0_IBUF_0,
      ADR3 => Input1_9_IBUF_0,
      ADR0 => Input2_3_IBUF_0,
      ADR2 => N10,
      ADR5 => Input1_15_IBUF_0,
      ADR4 => Control_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output324
    );
  Mux7_1_0_Mmux_Output106_Mux7_1_0_Mmux_Output106_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output109_218,
      O => Mux7_1_0_Mmux_Output109_0
    );
  Mux7_1_0_Mmux_Output105 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"000F000F000F000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Control_0_IBUF_0,
      ADR2 => Control_1_IBUF_0,
      ADR5 => '1',
      O => Mux7_1_0_Mmux_Output106_1597
    );
  Mux7_1_0_Mmux_Output108 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"08AA0888"
    )
    port map (
      ADR0 => Control_2_IBUF_0,
      ADR1 => Variable_Shifter_16_0_LRSOutTemp(13),
      ADR4 => Mux7_1_0_Mmux_Output108_1781,
      ADR3 => Control_0_IBUF_0,
      ADR2 => Control_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output109_218
    );
  Mux7_1_0_Mmux_Output102 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"FFA0FAA0FAAAFAAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => Control_0_IBUF_0,
      ADR5 => Input1_13_IBUF_0,
      ADR3 => Control_1_IBUF_0,
      ADR2 => Control_2_IBUF_0,
      ADR4 => Input2_13_IBUF_0,
      O => Mux7_1_0_Mmux_Output102_1596
    );
  Mux7_1_0_Mmux_Output103 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y2",
      INIT => X"F0F0CCCCAAAAFF00"
    )
    port map (
      ADR5 => Input2_1_IBUF_0,
      ADR4 => Input2_0_IBUF_0,
      ADR1 => Input1_11_IBUF_0,
      ADR2 => Input1_10_IBUF_0,
      ADR0 => Input1_12_IBUF_0,
      ADR3 => Input1_13_IBUF_0,
      O => Mux7_1_0_Mmux_Output104_1584
    );
  Mux7_1_0_Mmux_Output1210_Mux7_1_0_Mmux_Output1210_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output1212_240,
      O => Mux7_1_0_Mmux_Output1212_0
    );
  Mux7_1_0_Mmux_Output1212 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y3"
    )
    port map (
      IA => N18,
      IB => N19,
      O => Mux7_1_0_Mmux_Output1212_240,
      SEL => Control_2_IBUF_0
    );
  Mux7_1_0_Mmux_Output1212_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"3C0FC0EA00000000"
    )
    port map (
      ADR5 => Control_3_IBUF_0,
      ADR4 => Control_0_IBUF_0,
      ADR2 => Input1_14_IBUF_0,
      ADR3 => Control_1_IBUF_0,
      ADR1 => Input2_14_IBUF_0,
      ADR0 => Mux7_1_0_Mmux_Output1210_1796,
      O => N18
    );
  Mux7_1_0_Mmux_Output1212_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"000000008080CC00"
    )
    port map (
      ADR1 => Control_3_IBUF_0,
      ADR5 => Control_0_IBUF_0,
      ADR4 => Control_1_IBUF_0,
      ADR2 => Mux7_1_0_Mmux_Output122_0,
      ADR0 => Input1_15_IBUF_0,
      ADR3 => Mux7_1_0_Mmux_Output1210_1796,
      O => N19
    );
  Mux7_1_0_Mmux_Output1210 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"FFFFFFFFAAFCAAFC"
    )
    port map (
      ADR4 => '1',
      ADR3 => Control_2_IBUF_0,
      ADR1 => Input1_14_IBUF_0,
      ADR2 => Input2_14_IBUF_0,
      ADR0 => N12_0,
      ADR5 => Mux7_1_0_Mmux_Output127_0,
      O => Mux7_1_0_Mmux_Output1210_1796
    );
  Mux7_1_0_Mmux_Output1213 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y3",
      INIT => X"0000100000000000"
    )
    port map (
      ADR3 => Mux7_1_0_Mmux_Output121,
      ADR2 => Control_3_IBUF_0,
      ADR5 => Input1_14_IBUF_0,
      ADR4 => Input2_2_IBUF_0,
      ADR0 => Input2_3_IBUF_0,
      ADR1 => Input2_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output1213_1654
    );
  Multiplier_8_0_C_5_7_Multiplier_8_0_C_5_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output147,
      O => Mux7_1_0_Mmux_Output147_0
    );
  Mux7_1_0_Mmux_Output148 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y4"
    )
    port map (
      IA => N26,
      IB => N27,
      O => Mux7_1_0_Mmux_Output147,
      SEL => Control_1_IBUF_0
    );
  Mux7_1_0_Mmux_Output148_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"65A6A9959A59566A"
    )
    port map (
      ADR4 => Control_0_IBUF_0,
      ADR5 => Input2_15_IBUF_0,
      ADR0 => Input1_15_IBUF_0,
      ADR1 => Input1_14_IBUF_0,
      ADR3 => AdderSub16Bit_0_C_13_Q,
      ADR2 => Input2_14_IBUF_0,
      O => N26
    );
  Mux7_1_0_Mmux_Output148_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"3230323020002000"
    )
    port map (
      ADR4 => '1',
      ADR1 => Control_0_IBUF_0,
      ADR2 => Multiplier_8_0_C_6_6_Q,
      ADR5 => Multiplier_8_0_C_5_7_Q,
      ADR0 => Input1_7_IBUF_0,
      ADR3 => Input2_7_IBUF_0,
      O => N27
    );
  Multiplier_8_0_FA57_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y4",
      INIT => X"E880C800A8008000"
    )
    port map (
      ADR0 => Input1_6_IBUF_0,
      ADR3 => Input2_6_IBUF_0,
      ADR1 => Input1_7_IBUF_0,
      ADR2 => Multiplier_8_0_C_3_7_Q,
      ADR5 => Input2_5_IBUF_0,
      ADR4 => Input2_7_IBUF_0,
      O => Multiplier_8_0_C_5_7_Q
    );
  Input2_1_mmx_out8_Input2_1_mmx_out8_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output122_281,
      O => Mux7_1_0_Mmux_Output122_0
    );
  Input2_1_101 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"F0CCAAFFF0CCAA00"
    )
    port map (
      ADR4 => Input2_0_IBUF_0,
      ADR3 => Input2_1_IBUF_0,
      ADR1 => Input1_8_IBUF_0,
      ADR2 => Input1_6_IBUF_0,
      ADR0 => Input1_7_IBUF_0,
      ADR5 => Input1_9_IBUF_0,
      O => Input2_1_mmx_out8
    );
  Variable_Shifter_16_0_LRS_Mmux_C51 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"0000007000000070"
    )
    port map (
      ADR2 => Input1_13_IBUF_0,
      ADR3 => Input2_2_IBUF_0,
      ADR4 => Input2_3_IBUF_0,
      ADR0 => Input2_0_IBUF_0,
      ADR1 => Input2_1_IBUF_0,
      ADR5 => '1',
      O => Variable_Shifter_16_0_LRSOutTemp(13)
    );
  Mux7_1_0_Mmux_Output122 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y2",
      INIT => X"FFFFFFCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => Input2_2_IBUF_0,
      ADR4 => Input2_3_IBUF_0,
      ADR2 => '1',
      ADR1 => Input2_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output122_281
    );
  Mux7_1_0_Mmux_Output121_Mux7_1_0_Mmux_Output121_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output1214_291,
      O => Mux7_1_0_Mmux_Output1214_0
    );
  Mux7_1_0_Mmux_Output1211 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Control_0_IBUF_0,
      ADR3 => Control_1_IBUF_0,
      ADR5 => '1',
      O => Mux7_1_0_Mmux_Output121
    );
  Mux7_1_0_Mmux_Output1214 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"00690096"
    )
    port map (
      ADR2 => Input1_14_IBUF_0,
      ADR0 => Input2_14_IBUF_0,
      ADR1 => AdderSub16Bit_0_C_13_Q,
      ADR4 => Control_0_IBUF_0,
      ADR3 => Control_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output1214_291
    );
  Mux7_1_0_Mmux_Output283 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"0A000A000A002A00"
    )
    port map (
      ADR3 => Mux7_1_0_Mmux_Output121,
      ADR0 => Input1_7_IBUF_0,
      ADR2 => Input2_3_IBUF_0,
      ADR4 => Input2_2_IBUF_0,
      ADR1 => Input2_0_IBUF_0,
      ADR5 => Input2_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output282_1744
    );
  AdderSub16Bit_0_Gen_ADD_13_FA_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y3",
      INIT => X"D0FE40F8FDE0F480"
    )
    port map (
      ADR2 => Input1_13_IBUF_0,
      ADR3 => Control_0_IBUF_0,
      ADR5 => Input2_13_IBUF_0,
      ADR4 => AdderSub16Bit_0_C_11_Q,
      ADR1 => Input1_12_IBUF_0,
      ADR0 => Input2_12_IBUF_0,
      O => AdderSub16Bit_0_C_13_Q
    );
  Mux7_1_0_Mmux_Output1215 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"2002020202202020"
    )
    port map (
      ADR5 => Multiplier_8_0_C_5_7_Q,
      ADR2 => Multiplier_8_0_C_6_6_Q,
      ADR4 => Input1_7_IBUF_0,
      ADR3 => Input2_7_IBUF_0,
      ADR0 => Control_1_IBUF_0,
      ADR1 => Control_0_IBUF_0,
      O => Mux7_1_0_Mmux_Output1215_1797
    );
  Mux7_1_0_Mmux_Output1216 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y4",
      INIT => X"FFAFAAAAFFAEAAAA"
    )
    port map (
      ADR4 => Control_2_IBUF_0,
      ADR2 => Control_3_IBUF_0,
      ADR5 => Mux7_1_0_Mmux_Output1215_1797,
      ADR1 => Mux7_1_0_Mmux_Output1214_0,
      ADR3 => Mux7_1_0_Mmux_Output1213_1654,
      ADR0 => Mux7_1_0_Mmux_Output1212_0,
      O => Output_14_OBUF_1653
    );
  Mux7_1_0_Mmux_Output287 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"0FC3F33000000000"
    )
    port map (
      ADR0 => '1',
      ADR5 => Control_3_IBUF_0,
      ADR2 => Input1_7_IBUF_0,
      ADR4 => Control_0_IBUF_0,
      ADR3 => Input2_7_IBUF_0,
      ADR1 => Control_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output286_1742
    );
  Mux7_1_0_Mmux_Output42 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y2",
      INIT => X"0014003C00000000"
    )
    port map (
      ADR1 => Control_0_IBUF_0,
      ADR2 => Control_1_IBUF_0,
      ADR5 => Input1_10_IBUF_0,
      ADR3 => Input2_3_IBUF_0,
      ADR4 => Input2_2_IBUF_0,
      ADR0 => Input2_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output41_1631
    );
  Mux7_1_0_Mmux_Output42_Mux7_1_0_Mmux_Output42_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N12,
      O => N12_0
    );
  Mux7_1_0_Mmux_Output43 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"00CC0FAA00CC0FAA"
    )
    port map (
      ADR4 => Input2_2_IBUF_0,
      ADR3 => Input2_3_IBUF_0,
      ADR0 => Input2_1_mmx_out9,
      ADR2 => Input2_1_mmx_out,
      ADR1 => Input2_1_mmx_out5,
      ADR5 => '1',
      O => Mux7_1_0_Mmux_Output42_1799
    );
  Mux7_1_0_Mmux_Output1210_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"0FAACC00"
    )
    port map (
      ADR4 => Input2_2_IBUF_0,
      ADR3 => Input2_3_IBUF_0,
      ADR0 => Input2_1_mmx_out9,
      ADR2 => Input2_1_mmx_out,
      ADR1 => Input2_1_mmx_out5,
      O => N12
    );
  Mux7_1_0_Mmux_Output44 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"EFE00F00AFA00F00"
    )
    port map (
      ADR2 => Control_1_IBUF_0,
      ADR4 => Input1_15_IBUF_0,
      ADR5 => Input2_2_IBUF_0,
      ADR1 => Input2_1_IBUF_0,
      ADR0 => Input2_3_IBUF_0,
      ADR3 => Mux7_1_0_Mmux_Output42_1799,
      O => Mux7_1_0_Mmux_Output43_1624
    );
  Input2_1_111 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"F5F5DD88A0A0DD88"
    )
    port map (
      ADR4 => Input2_1_IBUF_0,
      ADR0 => Input2_0_IBUF_0,
      ADR5 => Input1_8_IBUF_0,
      ADR2 => Input1_7_IBUF_0,
      ADR1 => Input1_9_IBUF_0,
      ADR3 => Input1_10_IBUF_0,
      O => Input2_1_mmx_out9
    );
  Mux7_1_0_Mmux_Output84 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y5",
      INIT => X"FF55E4E4AA00E4E4"
    )
    port map (
      ADR4 => Input2_1_IBUF_0,
      ADR0 => Input2_0_IBUF_0,
      ADR5 => Input1_10_IBUF_0,
      ADR3 => Input1_9_IBUF_0,
      ADR2 => Input1_11_IBUF_0,
      ADR1 => Input1_12_IBUF_0,
      O => Mux7_1_0_Mmux_Output83
    );
  Mux7_1_0_Mmux_Output106 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"FFFF0555FFFF5150"
    )
    port map (
      ADR0 => Control_2_IBUF_0,
      ADR5 => Input2_13_IBUF_0,
      ADR3 => Control_0_IBUF_0,
      ADR2 => Input1_13_IBUF_0,
      ADR1 => Control_1_IBUF_0,
      ADR4 => Mux7_1_0_Mmux_Output1021,
      O => Mux7_1_0_Mmux_Output107_1599
    );
  Mux7_1_0_Mmux_Output247 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y2",
      INIT => X"55AAAA0000FFFFAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR3 => Input1_5_IBUF_0,
      ADR4 => Control_0_IBUF_0,
      ADR0 => Input2_5_IBUF_0,
      ADR5 => Control_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output246_1703
    );
  Mux7_1_0_Mmux_Output1010 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => X"3C9999C3C366663C"
    )
    port map (
      ADR5 => Input1_13_IBUF_0,
      ADR2 => Control_0_IBUF_0,
      ADR1 => Input2_13_IBUF_0,
      ADR3 => AdderSub16Bit_0_C_11_Q,
      ADR4 => Input1_12_IBUF_0,
      ADR0 => Input2_12_IBUF_0,
      O => Mux7_1_0_Mmux_Output1011_1800
    );
  Mux7_1_0_Mmux_Output1012 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => X"FFCCFFCCFFCEFFCC"
    )
    port map (
      ADR1 => Mux7_1_0_Mmux_Output1010_1595,
      ADR3 => Mux7_1_0_Mmux_Output10,
      ADR4 => Mux7_1_0_Mmux_Output1011_1800,
      ADR5 => Control_1_IBUF_0,
      ADR0 => Control_2_IBUF_0,
      ADR2 => Control_3_IBUF_0,
      O => Output_13_OBUF_1643
    );
  Mux7_1_0_Mmux_Output149 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"DDCCCCCCDDCCCCCC"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => Mux7_1_0_Mmux_Output147_0,
      ADR4 => Control_2_IBUF_0,
      ADR0 => Control_3_IBUF_0,
      ADR1 => Mux7_1_0_Mmux_Output144_0,
      O => Output_15_OBUF_1659
    );
  Input2_0_41 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"CCCCCCCCAAAAAAAA"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => Input2_0_IBUF_0,
      ADR0 => Input1_13_IBUF_0,
      ADR1 => Input1_12_IBUF_0,
      O => Input2_0_mmx_out12
    );
  Mux7_1_0_Mmux_Output143 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"10101010FEDC3210"
    )
    port map (
      ADR1 => Input2_1_IBUF_0,
      ADR3 => Input1_14_IBUF_0,
      ADR0 => Input2_0_IBUF_0,
      ADR5 => Control_0_IBUF_0,
      ADR2 => Input1_15_IBUF_0,
      ADR4 => Input2_0_mmx_out12,
      O => Mux7_1_0_Mmux_Output142
    );
  Mux7_1_0_Mmux_Output265_Mux7_1_0_Mmux_Output265_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output262_pack_8,
      O => Mux7_1_0_Mmux_Output262
    );
  Mux7_1_0_Mmux_Output263 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y1"
    )
    port map (
      IA => N22,
      IB => N23,
      O => Mux7_1_0_Mmux_Output262_pack_8,
      SEL => Control_3_IBUF_0
    );
  Mux7_1_0_Mmux_Output263_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"1221122121122112"
    )
    port map (
      ADR4 => '1',
      ADR1 => Control_1_IBUF_0,
      ADR5 => AdderSub16Bit_0_C_5_Q,
      ADR0 => Control_0_IBUF_0,
      ADR2 => Input1_6_IBUF_0,
      ADR3 => Input2_6_IBUF_0,
      O => N22
    );
  Mux7_1_0_Mmux_Output263_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"00AA00000AAA0000"
    )
    port map (
      ADR1 => '1',
      ADR4 => Mux7_1_0_Mmux_Output121,
      ADR0 => Input1_6_IBUF_0,
      ADR2 => Input2_1_IBUF_0,
      ADR5 => Input2_2_IBUF_0,
      ADR3 => Input2_3_IBUF_0,
      O => N23
    );
  Mux7_1_0_Mmux_Output266 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"6600770088006600"
    )
    port map (
      ADR2 => '1',
      ADR3 => Control_3_IBUF_0,
      ADR1 => Input1_6_IBUF_0,
      ADR0 => Control_0_IBUF_0,
      ADR5 => Input2_6_IBUF_0,
      ADR4 => Control_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output265_1803
    );
  Mux7_1_0_Mmux_Output267 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y1",
      INIT => X"FFFFFAFAEFEFEAEA"
    )
    port map (
      ADR3 => '1',
      ADR2 => Control_2_IBUF_0,
      ADR1 => Mux7_1_0_Mmux_Output262,
      ADR5 => Mux7_1_0_Mmux_Output264_1726,
      ADR0 => Mux7_1_0_Mmux_Output281_1727,
      ADR4 => Mux7_1_0_Mmux_Output265_1803,
      O => Output_6_OBUF_1594
    );
  N2_N2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output32,
      O => Mux7_1_0_Mmux_Output32_0
    );
  Mux7_1_0_Mmux_Output281_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"FFFF0FFFFFFF0FFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => Control_2_IBUF_0,
      ADR4 => Control_0_IBUF_0,
      ADR2 => Control_1_IBUF_0,
      ADR5 => '1',
      O => N2
    );
  Mux7_1_0_Mmux_Output321 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"F5F5808F"
    )
    port map (
      ADR0 => Input1_9_IBUF_0,
      ADR1 => Input2_9_IBUF_0,
      ADR3 => Control_2_IBUF_0,
      ADR4 => Control_0_IBUF_0,
      ADR2 => Control_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output32
    );
  Mux7_1_0_Mmux_Output281 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"00000000E0000000"
    )
    port map (
      ADR5 => N2,
      ADR2 => Input2_3_IBUF_0,
      ADR3 => Input1_15_IBUF_0,
      ADR4 => Control_3_IBUF_0,
      ADR0 => Input2_2_IBUF_0,
      ADR1 => Input2_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output281_1727
    );
  Mux7_1_0_Mmux_Output243 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"0000008800C000C0"
    )
    port map (
      ADR1 => Control_2_IBUF_0,
      ADR3 => Control_3_IBUF_0,
      ADR5 => Control_1_IBUF_0,
      ADR0 => Mux7_1_0_Mmux_Output241_0,
      ADR4 => Control_0_IBUF_0,
      ADR2 => Mux7_1_0_Mmux_Output24_1666,
      O => Mux7_1_0_Mmux_Output242_1804
    );
  Mux7_1_0_Mmux_Output248 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"FFFFEE00FFFFE200"
    )
    port map (
      ADR3 => Control_3_IBUF_0,
      ADR1 => Control_2_IBUF_0,
      ADR2 => Mux7_1_0_Mmux_Output244_1701,
      ADR5 => Mux7_1_0_Mmux_Output245_1702,
      ADR0 => Mux7_1_0_Mmux_Output246_1703,
      ADR4 => Mux7_1_0_Mmux_Output242_1804,
      O => Output_5_OBUF_1589
    );
  Input2_1_91 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"FFF0CCAA00F0CCAA"
    )
    port map (
      ADR3 => Input2_0_IBUF_0,
      ADR4 => Input2_1_IBUF_0,
      ADR1 => Input1_7_IBUF_0,
      ADR5 => Input1_5_IBUF_0,
      ADR2 => Input1_6_IBUF_0,
      ADR0 => Input1_8_IBUF_0,
      O => Input2_1_mmx_out7
    );
  Mux7_1_0_Mmux_Output286 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"FCFCB8B8FFFCBBB8"
    )
    port map (
      ADR1 => Control_3_IBUF_0,
      ADR0 => Mux7_1_0_Mmux_Output28,
      ADR4 => Mux7_1_0_Mmux_Output282_1744,
      ADR3 => Mux7_1_0_Mmux_Output284_1735,
      ADR5 => Control_1_IBUF_0,
      ADR2 => Mux7_1_0_Mmux_Output283_1745,
      O => Mux7_1_0_Mmux_Output285_1806
    );
  Mux7_1_0_Mmux_Output288 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"FFFFAAFFFFAAAAAA"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => Mux7_1_0_Mmux_Output281_1727,
      ADR3 => Control_2_IBUF_0,
      ADR5 => Mux7_1_0_Mmux_Output286_1742,
      ADR4 => Mux7_1_0_Mmux_Output285_1806,
      O => Output_7_OBUF_1605
    );
  Input2_1_21 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"FEF4AEA45E540E04"
    )
    port map (
      ADR0 => Input2_1_IBUF_0,
      ADR2 => Input2_0_IBUF_0,
      ADR3 => Input1_9_IBUF_0,
      ADR5 => Input1_8_IBUF_0,
      ADR4 => Input1_10_IBUF_0,
      ADR1 => Input1_11_IBUF_0,
      O => Input2_1_mmx_out10
    );
  Mux7_1_0_Mmux_Output84_Mux7_1_0_Mmux_Output84_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output85_489,
      O => Mux7_1_0_Mmux_Output85_0
    );
  Mux7_1_0_Mmux_Output86 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y5"
    )
    port map (
      IA => N28,
      IB => N29,
      O => Mux7_1_0_Mmux_Output85_489,
      SEL => Control_1_IBUF_0
    );
  Mux7_1_0_Mmux_Output86_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"0A0A0ACA00000000"
    )
    port map (
      ADR5 => Control_3_IBUF_0,
      ADR2 => Control_0_IBUF_0,
      ADR1 => Input1_12_IBUF_0,
      ADR4 => Input2_2_IBUF_0,
      ADR3 => Input2_3_IBUF_0,
      ADR0 => Mux7_1_0_Mmux_Output84_1807,
      O => N28
    );
  Mux7_1_0_Mmux_Output86_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"4445444000000000"
    )
    port map (
      ADR5 => Control_3_IBUF_0,
      ADR0 => Control_0_IBUF_0,
      ADR1 => Input1_15_IBUF_0,
      ADR3 => Input2_2_IBUF_0,
      ADR2 => Input2_3_IBUF_0,
      ADR4 => Input1_12_IBUF_0,
      O => N29
    );
  Mux7_1_0_Mmux_Output85 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"30EEFCEE3022FC22"
    )
    port map (
      ADR3 => Input2_2_IBUF_0,
      ADR1 => Input2_3_IBUF_0,
      ADR4 => Input2_1_mmx_out2,
      ADR2 => Input2_1_mmx_out7,
      ADR5 => Input2_1_mmx_out3,
      ADR0 => Mux7_1_0_Mmux_Output83,
      O => Mux7_1_0_Mmux_Output84_1807
    );
  Mux7_1_0_Mmux_Output88 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"0A0A0A0ACA3A3ACA"
    )
    port map (
      ADR2 => Control_1_IBUF_0,
      ADR5 => Control_0_IBUF_0,
      ADR4 => Multiplier_8_0_OutOfFA_5_6_Q,
      ADR3 => Multiplier_8_0_C_5_5_Q,
      ADR1 => Multiplier_8_0_C_6_4_Q,
      ADR0 => Mux7_1_0_Mmux_Output86_1731,
      O => Mux7_1_0_Mmux_Output87_1705
    );
  Mux7_1_0_Mmux_Output241 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"6A95A956659A59A6"
    )
    port map (
      ADR0 => Input1_5_IBUF_0,
      ADR1 => Control_0_IBUF_0,
      ADR3 => Input2_5_IBUF_0,
      ADR2 => AdderSub16Bit_0_C_3_Q,
      ADR4 => Input1_4_IBUF_0,
      ADR5 => Input2_4_IBUF_0,
      O => Mux7_1_0_Mmux_Output24_1666
    );
  AdderSub16Bit_0_Gen_ADD_5_FA_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"DD5CEECA5C44CA88"
    )
    port map (
      ADR1 => Input1_5_IBUF_0,
      ADR0 => Control_0_IBUF_0,
      ADR4 => Input2_5_IBUF_0,
      ADR5 => AdderSub16Bit_0_C_3_Q,
      ADR3 => Input1_4_IBUF_0,
      ADR2 => Input2_4_IBUF_0,
      O => AdderSub16Bit_0_C_5_Q
    );
  AdderSub16Bit_0_Gen_ADD_3_FA_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y2",
      INIT => X"B2FFFFE800E8B200"
    )
    port map (
      ADR5 => Input1_3_IBUF_0,
      ADR3 => Control_0_IBUF_0,
      ADR4 => Input2_3_IBUF_0,
      ADR2 => AdderSub16Bit_0_C_1_Q,
      ADR0 => Input1_2_IBUF_0,
      ADR1 => Input2_2_IBUF_0,
      O => AdderSub16Bit_0_C_3_Q
    );
  Mux7_1_0_Mmux_Output246 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => X"020AAAAA00000000"
    )
    port map (
      ADR0 => Mux7_1_0_Mmux_Output121,
      ADR5 => Input1_5_IBUF_0,
      ADR2 => Input2_2_IBUF_0,
      ADR3 => Input2_1_IBUF_0,
      ADR1 => Input2_0_IBUF_0,
      ADR4 => Input2_3_IBUF_0,
      O => Mux7_1_0_Mmux_Output245_1702
    );
  Mux7_1_0_Mmux_Output41 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => X"0330300000333330"
    )
    port map (
      ADR0 => '1',
      ADR1 => Control_2_IBUF_0,
      ADR3 => Control_0_IBUF_0,
      ADR4 => Input1_10_IBUF_0,
      ADR2 => Input2_10_IBUF_0,
      ADR5 => Control_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output4
    );
  Mux7_1_0_Mmux_Output45 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y3",
      INIT => X"AAAA8888AAAA0800"
    )
    port map (
      ADR0 => Control_3_IBUF_0,
      ADR1 => Control_2_IBUF_0,
      ADR5 => Mux7_1_0_Mmux_Output41_1631,
      ADR3 => Mux7_1_0_Mmux_Output43_1624,
      ADR2 => Control_0_IBUF_0,
      ADR4 => Mux7_1_0_Mmux_Output4,
      O => Mux7_1_0_Mmux_Output44_1630
    );
  Mux7_1_0_Mmux_Output87 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => X"5A5AA5A5A5A55A5A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => AdderSub16Bit_0_C_11_Q,
      ADR5 => Control_0_IBUF_0,
      ADR0 => Input1_12_IBUF_0,
      ADR2 => Input2_12_IBUF_0,
      O => Mux7_1_0_Mmux_Output86_1731
    );
  AdderSub16Bit_0_Gen_ADD_11_FA_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => X"FF7E7E5A5A424200"
    )
    port map (
      ADR5 => Input1_11_IBUF_0,
      ADR0 => Control_0_IBUF_0,
      ADR2 => Input2_11_IBUF_0,
      ADR3 => AdderSub16Bit_0_C_9_Q,
      ADR4 => Input1_10_IBUF_0,
      ADR1 => Input2_10_IBUF_0,
      O => AdderSub16Bit_0_C_11_Q
    );
  Mux7_1_0_Mmux_Output81 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => X"1220113200000000"
    )
    port map (
      ADR1 => Control_2_IBUF_0,
      ADR5 => Control_3_IBUF_0,
      ADR3 => Control_0_IBUF_0,
      ADR0 => Input1_12_IBUF_0,
      ADR2 => Input2_12_IBUF_0,
      ADR4 => Control_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output8
    );
  Mux7_1_0_Mmux_Output89 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => X"FFFFFFFFF000FA00"
    )
    port map (
      ADR1 => '1',
      ADR3 => Control_2_IBUF_0,
      ADR0 => Mux7_1_0_Mmux_Output87_1705,
      ADR4 => Control_3_IBUF_0,
      ADR2 => Mux7_1_0_Mmux_Output85_0,
      ADR5 => Mux7_1_0_Mmux_Output8,
      O => Output_12_OBUF_1633
    );
  Mux7_1_0_Mmux_Output1011 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y6",
      INIT => X"0050005000000000"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => Control_1_IBUF_0,
      ADR3 => Control_0_IBUF_0,
      ADR5 => Control_2_IBUF_0,
      ADR0 => Control_3_IBUF_0,
      O => Mux7_1_0_Mmux_Output101_1737
    );
  Mux7_1_0_Mmux_Output101 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"E1871E7800000000"
    )
    port map (
      ADR5 => Mux7_1_0_Mmux_Output101_1737,
      ADR2 => Multiplier_8_0_C_5_6_Q,
      ADR4 => Multiplier_8_0_OutOfFA_5_7_Q,
      ADR1 => Multiplier_8_0_C_6_4_Q,
      ADR3 => Multiplier_8_0_OutOfFA_5_6_Q,
      ADR0 => Multiplier_8_0_C_5_5_Q,
      O => Mux7_1_0_Mmux_Output10
    );
  Mux7_1_0_Mmux_Output322 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"FF00FFAAFF0FFFCC"
    )
    port map (
      ADR4 => Input2_3_IBUF_0,
      ADR5 => Input2_2_IBUF_0,
      ADR0 => Input2_1_mmx_out4,
      ADR1 => Input2_1_mmx_out8,
      ADR2 => Input2_1_mmx_out11_0,
      ADR3 => Mux7_1_0_Mmux_Output221111,
      O => Mux7_1_0_Mmux_Output321_1811
    );
  Mux7_1_0_Mmux_Output326 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"EC00E000EC000000"
    )
    port map (
      ADR4 => Mux7_1_0_Mmux_Output32_0,
      ADR2 => Control_2_IBUF_0,
      ADR5 => Mux7_1_0_Mmux_Output321_1811,
      ADR3 => Control_3_IBUF_0,
      ADR1 => Mux7_1_0_Mmux_Output322_1617,
      ADR0 => Mux7_1_0_Mmux_Output324,
      O => Mux7_1_0_Mmux_Output325_1693
    );
  Input2_1_61 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"EEF322F3EEC022C0"
    )
    port map (
      ADR3 => Input2_0_IBUF_0,
      ADR1 => Input2_1_IBUF_0,
      ADR0 => Input1_4_IBUF_0,
      ADR4 => Input1_2_IBUF_0,
      ADR2 => Input1_3_IBUF_0,
      ADR5 => Input1_5_IBUF_0,
      O => Input2_1_mmx_out4
    );
  Input2_2_41 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"F0F0FFFF30503F5F"
    )
    port map (
      ADR2 => Input2_2_IBUF_0,
      ADR3 => Input2_0_IBUF_0,
      ADR1 => Input1_0_IBUF_0,
      ADR5 => Input2_1_IBUF_0,
      ADR0 => Input1_1_IBUF_0,
      ADR4 => Input2_1_mmx_out4,
      O => Input2_2_mmx_out4
    );
  Mux7_1_0_Mmux_Output10211 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"0C0F000F00000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => Control_0_IBUF_0,
      ADR5 => Control_2_IBUF_0,
      ADR1 => Input2_3_IBUF_0,
      ADR4 => Input1_15_IBUF_0,
      ADR3 => Control_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output1021
    );
  Mux7_1_0_Mmux_Output323 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"FFFF0000FFFF5FBA"
    )
    port map (
      ADR5 => Control_2_IBUF_0,
      ADR3 => Input2_9_IBUF_0,
      ADR2 => Control_0_IBUF_0,
      ADR0 => Input1_9_IBUF_0,
      ADR1 => Control_1_IBUF_0,
      ADR4 => Mux7_1_0_Mmux_Output1021,
      O => Mux7_1_0_Mmux_Output322_1617
    );
  Input2_1_81 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"F0CCF0CCFFAA00AA"
    )
    port map (
      ADR3 => Input2_0_IBUF_0,
      ADR5 => Input2_1_IBUF_0,
      ADR4 => Input1_6_IBUF_0,
      ADR2 => Input1_4_IBUF_0,
      ADR1 => Input1_5_IBUF_0,
      ADR0 => Input1_7_IBUF_0,
      O => Input2_1_mmx_out6
    );
  Input2_1_mmx_out5_Input2_1_mmx_out5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output226_652,
      O => Mux7_1_0_Mmux_Output226_0
    );
  Input2_1_71 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"BB88BB88FCFC3030"
    )
    port map (
      ADR5 => Input2_0_IBUF_0,
      ADR1 => Input2_1_IBUF_0,
      ADR3 => Input1_5_IBUF_0,
      ADR0 => Input1_3_IBUF_0,
      ADR4 => Input1_4_IBUF_0,
      ADR2 => Input1_6_IBUF_0,
      O => Input2_1_mmx_out5
    );
  Mux7_1_0_Mmux_Output223 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"0069009600690096"
    )
    port map (
      ADR3 => Control_1_IBUF_0,
      ADR1 => Control_0_IBUF_0,
      ADR2 => Input1_4_IBUF_0,
      ADR4 => Input2_4_IBUF_0,
      ADR0 => AdderSub16Bit_0_C_3_Q,
      ADR5 => '1',
      O => Mux7_1_0_Mmux_Output223_1636
    );
  Mux7_1_0_Mmux_Output226 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"3C3FC03C"
    )
    port map (
      ADR3 => Control_1_IBUF_0,
      ADR1 => Control_0_IBUF_0,
      ADR2 => Input1_4_IBUF_0,
      ADR4 => Input2_4_IBUF_0,
      ADR0 => '1',
      O => Mux7_1_0_Mmux_Output226_652
    );
  Input2_2_mmx_out6_Input2_2_mmx_out6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_2_mmx_out5,
      O => Input2_2_mmx_out5_0
    );
  Input2_2_61 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => X"CCCCFF00CCCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => Input2_2_IBUF_0,
      ADR3 => Input2_1_mmx_out6,
      ADR1 => Input2_1_mmx_out1,
      ADR5 => '1',
      O => Input2_2_mmx_out6
    );
  Input2_2_51 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => X"F0F05555"
    )
    port map (
      ADR0 => Input2_1_mmx_out5,
      ADR2 => Input2_1_mmx_out,
      ADR4 => Input2_2_IBUF_0,
      ADR3 => '1',
      ADR1 => '1',
      O => Input2_2_mmx_out5
    );
  Mux7_1_0_Mmux_Output282 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => X"0800030308000000"
    )
    port map (
      ADR2 => Control_0_IBUF_0,
      ADR1 => Input2_3_IBUF_0,
      ADR4 => Control_1_IBUF_0,
      ADR3 => Input1_15_IBUF_0,
      ADR0 => Input2_0_IBUF_0,
      ADR5 => Input2_2_mmx_out6,
      O => Mux7_1_0_Mmux_Output28
    );
  Input2_1_51 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y3",
      INIT => X"E2FFE2CCE233E200"
    )
    port map (
      ADR1 => Input2_0_IBUF_0,
      ADR3 => Input2_1_IBUF_0,
      ADR5 => Input1_3_IBUF_0,
      ADR2 => Input1_1_IBUF_0,
      ADR0 => Input1_2_IBUF_0,
      ADR4 => Input1_4_IBUF_0,
      O => Input2_1_mmx_out3
    );
  Input2_1_mmx_out_Input2_1_mmx_out_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Input2_1_mmx_out11,
      O => Input2_1_mmx_out11_0
    );
  Input2_1_4 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"AA1BFF1BAA1BFF1B"
    )
    port map (
      ADR3 => Input2_1_IBUF_0,
      ADR0 => Input2_0_IBUF_0,
      ADR4 => Input1_0_IBUF_0,
      ADR1 => Input1_2_IBUF_0,
      ADR2 => Input1_1_IBUF_0,
      ADR5 => '1',
      O => Input2_1_mmx_out
    );
  Input2_1_31 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"FF05FFAF"
    )
    port map (
      ADR3 => Input2_1_IBUF_0,
      ADR0 => Input2_0_IBUF_0,
      ADR4 => Input1_0_IBUF_0,
      ADR1 => '1',
      ADR2 => Input1_1_IBUF_0,
      O => Input2_1_mmx_out11
    );
  Mux7_1_0_Mmux_Output184 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"8000801100000011"
    )
    port map (
      ADR0 => Input2_2_IBUF_0,
      ADR3 => Input2_3_IBUF_0,
      ADR1 => Control_1_IBUF_0,
      ADR4 => Input2_1_mmx_out,
      ADR5 => Input2_1_IBUF_0,
      ADR2 => Input1_15_IBUF_0,
      O => Mux7_1_0_Mmux_Output183_1724
    );
  Mux7_1_0_Mmux_Output326_Mux7_1_0_Mmux_Output326_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output64,
      O => Mux7_1_0_Mmux_Output64_0
    );
  Mux7_1_0_Mmux_Output65 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y3"
    )
    port map (
      IA => N24,
      IB => N25,
      O => Mux7_1_0_Mmux_Output64,
      SEL => Control_2_IBUF_0
    );
  Mux7_1_0_Mmux_Output65_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y3",
      INIT => X"F0F0F3F0FCFCFFFC"
    )
    port map (
      ADR0 => '1',
      ADR1 => Input2_11_IBUF_0,
      ADR4 => Control_1_IBUF_0,
      ADR3 => Control_0_IBUF_0,
      ADR5 => Input1_11_IBUF_0,
      ADR2 => Mux7_1_0_Mmux_Output1021,
      O => N24
    );
  Mux7_1_0_Mmux_Output65_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y3",
      INIT => X"F0F0F0F0FCF8F0F0"
    )
    port map (
      ADR5 => Control_0_IBUF_0,
      ADR1 => Input2_2_IBUF_0,
      ADR4 => Input1_15_IBUF_0,
      ADR0 => Input2_1_IBUF_0,
      ADR3 => Input2_0_IBUF_0,
      ADR2 => Mux7_1_0_Mmux_Output1021,
      O => N25
    );
  Mux7_1_0_Mmux_Output327 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y3",
      INIT => X"6999696699966696"
    )
    port map (
      ADR1 => Input1_9_IBUF_0,
      ADR2 => Control_0_IBUF_0,
      ADR0 => Input2_9_IBUF_0,
      ADR5 => AdderSub16Bit_0_C_7_Q,
      ADR3 => Input1_8_IBUF_0,
      ADR4 => Input2_8_IBUF_0,
      O => Mux7_1_0_Mmux_Output326_1812
    );
  Mux7_1_0_Mmux_Output328 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y3",
      INIT => X"FFFF1000FFFF1000"
    )
    port map (
      ADR5 => '1',
      ADR2 => Mux7_1_0_Mmux_Output326_1812,
      ADR0 => Control_1_IBUF_0,
      ADR3 => Control_2_IBUF_0,
      ADR1 => Control_3_IBUF_0,
      ADR4 => Mux7_1_0_Mmux_Output325_1693,
      O => Mux7_1_0_Mmux_Output327_1712
    );
  Mux7_1_0_Mmux_Output66 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y4",
      INIT => X"0000570057575757"
    )
    port map (
      ADR3 => Control_2_IBUF_0,
      ADR4 => Control_1_IBUF_0,
      ADR5 => Control_0_IBUF_0,
      ADR1 => Input2_0_IBUF_0,
      ADR2 => Input2_1_IBUF_0,
      ADR0 => Input2_2_IBUF_0,
      O => Mux7_1_0_Mmux_Output65_1813
    );
  Mux7_1_0_Mmux_Output67 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y4",
      INIT => X"0444CCCC04440444"
    )
    port map (
      ADR1 => Input1_11_IBUF_0,
      ADR0 => Control_2_IBUF_0,
      ADR2 => Input2_11_IBUF_0,
      ADR3 => Control_0_IBUF_0,
      ADR5 => Mux7_1_0_Mmux_Output65_1813,
      ADR4 => Input2_3_IBUF_0,
      O => Mux7_1_0_Mmux_Output66_1709
    );
  Mux7_1_0_Mmux_Output610 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y4",
      INIT => X"4BE1D287B41E2D78"
    )
    port map (
      ADR2 => Input1_11_IBUF_0,
      ADR3 => Control_0_IBUF_0,
      ADR5 => Input2_11_IBUF_0,
      ADR4 => AdderSub16Bit_0_C_9_Q,
      ADR0 => Input1_10_IBUF_0,
      ADR1 => Input2_10_IBUF_0,
      O => Mux7_1_0_Mmux_Output69
    );
  Mux7_1_0_Mmux_Output61_Mux7_1_0_Mmux_Output61_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_11_OBUF_746,
      O => Output_11_OBUF_0
    );
  Mux7_1_0_Mmux_Output612 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y5"
    )
    port map (
      IA => N20,
      IB => N21,
      O => Output_11_OBUF_746,
      SEL => Control_3_IBUF_0
    );
  Mux7_1_0_Mmux_Output612_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y5",
      INIT => X"0000CC00C0C0CC00"
    )
    port map (
      ADR0 => '1',
      ADR1 => Control_2_IBUF_0,
      ADR4 => Control_1_IBUF_0,
      ADR3 => Mux7_1_0_Mmux_Output69,
      ADR2 => Mux7_1_0_Mmux_Output610_1814,
      ADR5 => Control_0_IBUF_0,
      O => N20
    );
  Mux7_1_0_Mmux_Output612_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y5",
      INIT => X"FFAAF0A0AAAAA0A0"
    )
    port map (
      ADR1 => '1',
      ADR0 => Mux7_1_0_Mmux_Output6_0,
      ADR5 => Control_2_IBUF_0,
      ADR3 => Mux7_1_0_Mmux_Output61_1815,
      ADR2 => Mux7_1_0_Mmux_Output64_0,
      ADR4 => Mux7_1_0_Mmux_Output66_1709,
      O => N21
    );
  Mux7_1_0_Mmux_Output62 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y5",
      INIT => X"F4F4FFFAF4F4F5F0"
    )
    port map (
      ADR4 => Input2_3_IBUF_0,
      ADR3 => Input2_1_mmx_out10,
      ADR0 => Input2_2_IBUF_0,
      ADR5 => Input2_1_mmx_out6,
      ADR2 => Mux7_1_0_Mmux_Output221111,
      ADR1 => Input2_1_mmx_out1,
      O => Mux7_1_0_Mmux_Output61_1815
    );
  Mux7_1_0_Mmux_Output611 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y5",
      INIT => X"C99393369336366C"
    )
    port map (
      ADR4 => Multiplier_8_0_C_5_3_Q,
      ADR0 => Multiplier_8_0_C_6_2_Q,
      ADR2 => Multiplier_8_0_C_4_4_Q,
      ADR5 => Multiplier_8_0_OutOfAND_3_7_0,
      ADR3 => Multiplier_8_0_OutOfFA_4_5_Q,
      ADR1 => Multiplier_8_0_OutOfFA_5_5_Q,
      O => Mux7_1_0_Mmux_Output610_1814
    );
  Mux7_1_0_Mmux_Output328_Mux7_1_0_Mmux_Output328_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output329_775,
      O => Mux7_1_0_Mmux_Output329_0
    );
  Mux7_1_0_Mmux_Output329 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y6",
      INIT => X"EECC8800EECC8800"
    )
    port map (
      ADR2 => '1',
      ADR4 => Multiplier_8_0_C_4_2_Q,
      ADR1 => Multiplier_8_0_OutOfFA_4_3_Q,
      ADR0 => Input1_1_IBUF_0,
      ADR3 => Input2_7_IBUF_0,
      ADR5 => '1',
      O => Mux7_1_0_Mmux_Output328_1738
    );
  Mux7_1_0_Mmux_Output3210 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y6",
      INIT => X"113377FF"
    )
    port map (
      ADR2 => '1',
      ADR4 => Multiplier_8_0_C_4_2_Q,
      ADR1 => Multiplier_8_0_OutOfFA_4_3_Q,
      ADR0 => Input1_1_IBUF_0,
      ADR3 => Input2_7_IBUF_0,
      O => Mux7_1_0_Mmux_Output329_775
    );
  Multiplier_8_0_OutOfFA_1_7_Multiplier_8_0_OutOfFA_1_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Multiplier_8_0_C_1_7_pack_4,
      O => Multiplier_8_0_C_1_7_Q
    );
  Multiplier_8_0_FA17_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"F7088888F7088888"
    )
    port map (
      ADR1 => Input1_7_IBUF_0,
      ADR0 => Input2_2_IBUF_0,
      ADR2 => Input2_1_IBUF_0,
      ADR3 => Input2_3_IBUF_0,
      ADR4 => Input1_6_IBUF_0,
      ADR5 => '1',
      O => Multiplier_8_0_OutOfFA_1_7_Q
    );
  Multiplier_8_0_FA17_Co1 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"88800000"
    )
    port map (
      ADR1 => Input1_7_IBUF_0,
      ADR0 => Input2_2_IBUF_0,
      ADR2 => Input2_1_IBUF_0,
      ADR3 => Input2_3_IBUF_0,
      ADR4 => Input1_6_IBUF_0,
      O => Multiplier_8_0_C_1_7_pack_4
    );
  Multiplier_8_0_FA37_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"E8C0E000C0008000"
    )
    port map (
      ADR3 => Input1_6_IBUF_0,
      ADR2 => Input2_4_IBUF_0,
      ADR1 => Input1_7_IBUF_0,
      ADR5 => Multiplier_8_0_C_1_7_Q,
      ADR4 => Input2_3_IBUF_0,
      ADR0 => Input2_5_IBUF_0,
      O => Multiplier_8_0_C_3_7_Q
    );
  AdderSub16Bit_0_Gen_ADD_9_FA_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => X"DF0DFEE04F04F880"
    )
    port map (
      ADR3 => Input1_9_IBUF_0,
      ADR4 => Control_0_IBUF_0,
      ADR2 => Input2_9_IBUF_0,
      ADR5 => AdderSub16Bit_0_C_7_Q,
      ADR1 => Input1_8_IBUF_0,
      ADR0 => Input2_8_IBUF_0,
      O => AdderSub16Bit_0_C_9_Q
    );
  AdderSub16Bit_0_Gen_ADD_7_FA_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => X"B2F330B2FCE8E8C0"
    )
    port map (
      ADR2 => Input1_7_IBUF_0,
      ADR5 => Control_0_IBUF_0,
      ADR1 => Input2_7_IBUF_0,
      ADR4 => AdderSub16Bit_0_C_5_Q,
      ADR0 => Input1_6_IBUF_0,
      ADR3 => Input2_6_IBUF_0,
      O => AdderSub16Bit_0_C_7_Q
    );
  Mux7_1_0_Mmux_Output285 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y3",
      INIT => X"69A5A5965A96695A"
    )
    port map (
      ADR2 => Input1_7_IBUF_0,
      ADR3 => Control_0_IBUF_0,
      ADR0 => Input2_7_IBUF_0,
      ADR4 => AdderSub16Bit_0_C_5_Q,
      ADR1 => Input1_6_IBUF_0,
      ADR5 => Input2_6_IBUF_0,
      O => Mux7_1_0_Mmux_Output284_1735
    );
  Mux7_1_0_Mmux_Output221111_Mux7_1_0_Mmux_Output221111_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output6,
      O => Mux7_1_0_Mmux_Output6_0
    );
  Mux7_1_0_Mmux_Output221111_Mux7_1_0_Mmux_Output221111_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output47_818,
      O => Mux7_1_0_Mmux_Output47_0
    );
  Mux7_1_0_Mmux_Output2211111 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => X"FFAAFFAAFFAAFFAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Control_0_IBUF_0,
      ADR0 => Control_1_IBUF_0,
      ADR5 => '1',
      O => Mux7_1_0_Mmux_Output221111
    );
  Mux7_1_0_Mmux_Output61 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => X"AAB1FF11"
    )
    port map (
      ADR4 => Input1_11_IBUF_0,
      ADR2 => Input2_11_IBUF_0,
      ADR1 => Control_2_IBUF_0,
      ADR3 => Control_0_IBUF_0,
      ADR0 => Control_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output6
    );
  Mux7_1_0_Mmux_Output46 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Control_1_IBUF_0,
      ADR2 => Control_0_IBUF_0,
      ADR5 => '1',
      O => Mux7_1_0_Mmux_Output221
    );
  Mux7_1_0_Mmux_Output48 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y4",
      INIT => X"00006996"
    )
    port map (
      ADR1 => Input1_10_IBUF_0,
      ADR0 => Input2_10_IBUF_0,
      ADR3 => AdderSub16Bit_0_C_9_Q,
      ADR4 => Control_1_IBUF_0,
      ADR2 => Control_0_IBUF_0,
      O => Mux7_1_0_Mmux_Output47_818
    );
  Mux7_1_0_Mmux_Output47 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y5",
      INIT => X"8228288228828228"
    )
    port map (
      ADR0 => Mux7_1_0_Mmux_Output221,
      ADR5 => Multiplier_8_0_C_4_4_Q,
      ADR3 => Multiplier_8_0_C_5_3_Q,
      ADR1 => Multiplier_8_0_C_6_2_Q,
      ADR2 => Multiplier_8_0_OutOfAND_3_7_0,
      ADR4 => Multiplier_8_0_OutOfFA_4_5_Q,
      O => Mux7_1_0_Mmux_Output46_1816
    );
  Mux7_1_0_Mmux_Output49 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y5",
      INIT => X"F5F0F5F0F5F0F0F0"
    )
    port map (
      ADR1 => '1',
      ADR3 => Control_2_IBUF_0,
      ADR0 => Control_3_IBUF_0,
      ADR4 => Mux7_1_0_Mmux_Output47_0,
      ADR5 => Mux7_1_0_Mmux_Output46_1816,
      ADR2 => Mux7_1_0_Mmux_Output44_1630,
      O => Output_10_OBUF_1623
    );
  Mux7_1_0_Mmux_Output3211 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y6",
      INIT => X"FFEDCCCCDECCCCCC"
    )
    port map (
      ADR4 => Mux7_1_0_Mmux_Output101_1737,
      ADR5 => Mux7_1_0_Mmux_Output328_1738,
      ADR2 => Multiplier_8_0_C_6_1_Q,
      ADR0 => Multiplier_8_0_OutOfFA_5_3_Q,
      ADR3 => Mux7_1_0_Mmux_Output329_0,
      ADR1 => Mux7_1_0_Mmux_Output327_1712,
      O => Output_9_OBUF_1616
    );
  Multiplier_8_0_FA66_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y13",
      INIT => X"FCE8E8C0FCE8E8C0"
    )
    port map (
      ADR5 => '1',
      ADR1 => Multiplier_8_0_C_5_6_Q,
      ADR2 => Multiplier_8_0_OutOfFA_5_7_Q,
      ADR4 => Multiplier_8_0_C_6_4_Q,
      ADR3 => Multiplier_8_0_OutOfFA_5_6_Q,
      ADR0 => Multiplier_8_0_C_5_5_Q,
      O => Multiplier_8_0_C_6_6_Q
    );
  Multiplier_8_0_FA64_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y13",
      INIT => X"FFFEE880FEE88000"
    )
    port map (
      ADR4 => Multiplier_8_0_OutOfFA_5_5_Q,
      ADR3 => Multiplier_8_0_C_5_3_Q,
      ADR0 => Multiplier_8_0_C_6_2_Q,
      ADR1 => Multiplier_8_0_C_4_4_Q,
      ADR2 => Multiplier_8_0_OutOfAND_3_7_0,
      ADR5 => Multiplier_8_0_OutOfFA_4_5_Q,
      O => Multiplier_8_0_C_6_4_Q
    );
  Multiplier_8_0_FA57_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y13",
      INIT => X"906C9CA0ACA06CA0"
    )
    port map (
      ADR2 => Input1_6_IBUF_0,
      ADR0 => Input2_7_IBUF_0,
      ADR3 => Input2_6_IBUF_0,
      ADR5 => Multiplier_8_0_C_3_7_Q,
      ADR1 => Input1_7_IBUF_0,
      ADR4 => Input2_5_IBUF_0,
      O => Multiplier_8_0_OutOfFA_5_7_Q
    );
  Multiplier_8_0_FA56_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y16",
      INIT => X"FEECC880A0A00000"
    )
    port map (
      ADR2 => Multiplier_8_0_C_3_6_Q,
      ADR0 => Multiplier_8_0_OutOfFA_3_7_Q,
      ADR4 => Multiplier_8_0_OutOfFA_4_7_Q,
      ADR5 => Input1_5_IBUF_0,
      ADR3 => Input2_6_IBUF_0,
      ADR1 => Input2_7_IBUF_0,
      O => Multiplier_8_0_C_5_6_Q
    );
  Multiplier_8_0_FA47_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y16",
      INIT => X"A55A5A5A0FF0F0F0"
    )
    port map (
      ADR1 => '1',
      ADR4 => Input1_6_IBUF_0,
      ADR3 => Input2_6_IBUF_0,
      ADR2 => Multiplier_8_0_C_3_7_Q,
      ADR5 => Input1_7_IBUF_0,
      ADR0 => Input2_5_IBUF_0,
      O => Multiplier_8_0_OutOfFA_4_7_Q
    );
  Multiplier_8_0_FA56_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y16",
      INIT => X"C39C336C9C3C6CCC"
    )
    port map (
      ADR1 => Multiplier_8_0_OutOfFA_4_7_Q,
      ADR4 => Input2_7_IBUF_0,
      ADR2 => Input1_5_IBUF_0,
      ADR0 => Input2_6_IBUF_0,
      ADR5 => Multiplier_8_0_C_3_6_Q,
      ADR3 => Multiplier_8_0_OutOfFA_3_7_Q,
      O => Multiplier_8_0_OutOfFA_5_6_Q
    );
  Multiplier_8_0_FA46_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y17",
      INIT => X"95956A6A95956A6A"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => Input1_5_IBUF_0,
      ADR1 => Input2_6_IBUF_0,
      ADR0 => Multiplier_8_0_C_3_6_Q,
      ADR4 => Multiplier_8_0_OutOfFA_3_7_Q,
      O => Multiplier_8_0_OutOfFA_4_6_Q
    );
  Multiplier_8_0_FA37_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y17",
      INIT => X"E17877885AF00000"
    )
    port map (
      ADR4 => Input1_6_IBUF_0,
      ADR2 => Input2_5_IBUF_0,
      ADR3 => Input2_4_IBUF_0,
      ADR0 => Multiplier_8_0_C_1_7_Q,
      ADR5 => Input1_7_IBUF_0,
      ADR1 => Input2_3_IBUF_0,
      O => Multiplier_8_0_OutOfFA_3_7_Q
    );
  Mux7_1_0_Mmux_Output243_Mux7_1_0_Mmux_Output243_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output20,
      O => Mux7_1_0_Mmux_Output20_0
    );
  Mux7_1_0_Mmux_Output244 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y2",
      INIT => X"FFFFC0C0FFFFC0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => Input2_2_IBUF_0,
      ADR1 => Input2_0_IBUF_0,
      ADR2 => Input2_1_IBUF_0,
      ADR5 => '1',
      O => Mux7_1_0_Mmux_Output243_1818
    );
  Mux7_1_0_Mmux_Output201 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y2",
      INIT => X"0303FFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => Input2_2_IBUF_0,
      ADR1 => Input2_0_IBUF_0,
      ADR2 => Input2_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output20
    );
  Mux7_1_0_Mmux_Output245 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y2",
      INIT => X"0080000000830003"
    )
    port map (
      ADR3 => Control_0_IBUF_0,
      ADR2 => Input2_3_IBUF_0,
      ADR1 => Control_1_IBUF_0,
      ADR5 => Input2_2_mmx_out4,
      ADR0 => Input1_15_IBUF_0,
      ADR4 => Mux7_1_0_Mmux_Output243_1818,
      O => Mux7_1_0_Mmux_Output244_1701
    );
  Mux7_1_0_Mmux_Output284 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y3",
      INIT => X"1400410041001400"
    )
    port map (
      ADR3 => Control_1_IBUF_0,
      ADR0 => Control_0_IBUF_0,
      ADR1 => Multiplier_8_0_C_5_0_Q,
      ADR4 => Multiplier_8_0_OutOfAND_0_7_0,
      ADR5 => Multiplier_8_0_OutOfFA_4_2_Q,
      ADR2 => Multiplier_8_0_C_4_1_Q,
      O => Mux7_1_0_Mmux_Output283_1745
    );
  Multiplier_8_0_FA41_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y3",
      INIT => X"FEEA8080A8808080"
    )
    port map (
      ADR2 => Multiplier_8_0_C_2_1_Q,
      ADR1 => Multiplier_8_0_OutOfFA_2_2_Q,
      ADR0 => Multiplier_8_0_OutOfFA_3_2_Q,
      ADR4 => Input1_0_IBUF_0,
      ADR3 => Input2_5_IBUF_0,
      ADR5 => Input2_6_IBUF_0,
      O => Multiplier_8_0_C_4_1_Q
    );
  Mux7_1_0_Mmux_Output306 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y4",
      INIT => X"807010E010E07080"
    )
    port map (
      ADR3 => Multiplier_8_0_OutOfFA_5_2_Q,
      ADR0 => Multiplier_8_0_C_5_0_Q,
      ADR1 => Multiplier_8_0_OutOfFA_4_2_Q,
      ADR4 => Multiplier_8_0_C_4_1_Q,
      ADR5 => Multiplier_8_0_OutOfAND_0_7_0,
      ADR2 => Mux7_1_0_Mmux_Output221,
      O => Mux7_1_0_Mmux_Output305
    );
  Mux7_1_0_Mmux_Output308 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y4",
      INIT => X"F0FFCC00F0AACC00"
    )
    port map (
      ADR4 => Control_2_IBUF_0,
      ADR3 => Control_3_IBUF_0,
      ADR5 => Mux7_1_0_Mmux_Output305,
      ADR0 => Mux7_1_0_Mmux_Output306_0,
      ADR2 => Mux7_1_0_Mmux_Output302,
      ADR1 => Mux7_1_0_Mmux_Output303_1675,
      O => Output_8_OBUF_1610
    );
  Multiplier_8_0_C_6_2_Multiplier_8_0_C_6_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Multiplier_8_0_OutOfAND_0_7_Q,
      O => Multiplier_8_0_OutOfAND_0_7_0
    );
  Multiplier_8_0_FA62_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y6",
      INIT => X"FEE0F880FCC0F000"
    )
    port map (
      ADR2 => Multiplier_8_0_C_6_1_Q,
      ADR3 => Multiplier_8_0_OutOfFA_5_3_Q,
      ADR1 => Multiplier_8_0_C_4_2_Q,
      ADR4 => Multiplier_8_0_OutOfFA_4_3_Q,
      ADR0 => Input1_1_IBUF_0,
      ADR5 => Input2_7_IBUF_0,
      O => Multiplier_8_0_C_6_2_Q
    );
  Multiplier_8_0_FA61_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y6",
      INIT => X"EAA8A880AA888800"
    )
    port map (
      ADR0 => Multiplier_8_0_OutOfFA_5_2_Q,
      ADR4 => Multiplier_8_0_C_4_1_Q,
      ADR2 => Input1_0_IBUF_0,
      ADR5 => Input2_7_IBUF_0,
      ADR3 => Multiplier_8_0_C_5_0_Q,
      ADR1 => Multiplier_8_0_OutOfFA_4_2_Q,
      O => Multiplier_8_0_C_6_1_Q
    );
  Multiplier_8_0_FA52_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y6",
      INIT => X"A55A55AAA55A55AA"
    )
    port map (
      ADR1 => '1',
      ADR4 => Input1_1_IBUF_0,
      ADR2 => Input2_7_IBUF_0,
      ADR3 => Multiplier_8_0_C_4_2_Q,
      ADR0 => Multiplier_8_0_OutOfFA_4_3_Q,
      ADR5 => '1',
      O => Multiplier_8_0_OutOfFA_5_2_Q
    );
  Multiplier_8_0_ANDS0_7_A0_z1 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y6",
      INIT => X"C0C0C0C0"
    )
    port map (
      ADR1 => Input1_0_IBUF_0,
      ADR0 => '1',
      ADR2 => Input2_7_IBUF_0,
      ADR3 => '1',
      ADR4 => '1',
      O => Multiplier_8_0_OutOfAND_0_7_Q
    );
  Multiplier_8_0_FA15_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y10",
      INIT => X"FCF0E080EC800000"
    )
    port map (
      ADR1 => Multiplier_8_0_OutOfAND_5_1_0,
      ADR3 => Multiplier_8_0_OutOfAND_6_0_Q,
      ADR4 => Multiplier_8_0_OutOfFA_0_6_Q,
      ADR2 => Input1_4_IBUF_0,
      ADR0 => Input2_2_IBUF_0,
      ADR5 => Input2_3_IBUF_0,
      O => Multiplier_8_0_C_1_5_Q
    );
  Multiplier_8_0_FA06_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y10",
      INIT => X"96665AAA3CCCF000"
    )
    port map (
      ADR1 => Input2_1_IBUF_0,
      ADR4 => Input1_6_IBUF_0,
      ADR0 => Input2_0_IBUF_0,
      ADR3 => Input2_2_IBUF_0,
      ADR2 => Input1_5_IBUF_0,
      ADR5 => Input1_7_IBUF_0,
      O => Multiplier_8_0_OutOfFA_0_6_Q
    );
  Multiplier_8_0_FA53_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y12",
      INIT => X"A596965A0FF0F0F0"
    )
    port map (
      ADR2 => Multiplier_8_0_OutOfFA_4_4_Q,
      ADR0 => Input2_7_IBUF_0,
      ADR5 => Input1_2_IBUF_0,
      ADR1 => Input2_6_IBUF_0,
      ADR3 => Multiplier_8_0_C_3_3_Q,
      ADR4 => Multiplier_8_0_OutOfFA_3_4_Q,
      O => Multiplier_8_0_OutOfFA_5_3_Q
    );
  Multiplier_8_0_FA53_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y13",
      INIT => X"FE88EA00A8888000"
    )
    port map (
      ADR4 => Multiplier_8_0_C_3_3_Q,
      ADR1 => Multiplier_8_0_OutOfFA_3_4_Q,
      ADR0 => Multiplier_8_0_OutOfFA_4_4_Q,
      ADR3 => Input1_2_IBUF_0,
      ADR2 => Input2_6_IBUF_0,
      ADR5 => Input2_7_IBUF_0,
      O => Multiplier_8_0_C_5_3_Q
    );
  Multiplier_8_0_OutOfFA_4_5_Multiplier_8_0_OutOfFA_4_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Multiplier_8_0_OutOfAND_7_0_Q,
      O => Multiplier_8_0_OutOfAND_7_0_0
    );
  Multiplier_8_0_FA45_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y14",
      INIT => X"8877887777887788"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => Input1_4_IBUF_0,
      ADR0 => Input2_6_IBUF_0,
      ADR5 => Multiplier_8_0_C_3_5_Q,
      ADR3 => Multiplier_8_0_OutOfFA_3_6_Q,
      O => Multiplier_8_0_OutOfFA_4_5_Q
    );
  Multiplier_8_0_FA35_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y14",
      INIT => X"FEF88080E0808080"
    )
    port map (
      ADR0 => Multiplier_8_0_C_1_5_Q,
      ADR1 => Multiplier_8_0_OutOfFA_1_6_Q,
      ADR2 => Multiplier_8_0_OutOfFA_2_6_Q,
      ADR4 => Input1_4_IBUF_0,
      ADR3 => Input2_4_IBUF_0,
      ADR5 => Input2_5_IBUF_0,
      O => Multiplier_8_0_C_3_5_Q
    );
  Multiplier_8_0_ANDS6_0_A6_z1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y14",
      INIT => X"A0A0A0A0A0A0A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => Input1_6_IBUF_0,
      ADR2 => Input2_0_IBUF_0,
      ADR5 => '1',
      O => Multiplier_8_0_OutOfAND_6_0_Q
    );
  Multiplier_8_0_ANDS7_0_A7_z1 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y14",
      INIT => X"F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => Input1_7_IBUF_0,
      ADR4 => '1',
      ADR2 => Input2_0_IBUF_0,
      O => Multiplier_8_0_OutOfAND_7_0_Q
    );
  Multiplier_8_0_OutOfFA_2_6_Multiplier_8_0_OutOfFA_2_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Multiplier_8_0_OutOfAND_6_1_pack_3,
      O => Multiplier_8_0_OutOfAND_6_1_Q
    );
  Multiplier_8_0_FA26_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y15",
      INIT => X"995566AA995566AA"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => Input1_5_IBUF_0,
      ADR3 => Input2_4_IBUF_0,
      ADR4 => Multiplier_8_0_C_1_6_Q,
      ADR0 => Multiplier_8_0_OutOfFA_1_7_Q,
      O => Multiplier_8_0_OutOfFA_2_6_Q
    );
  Multiplier_8_0_FA16_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y15",
      INIT => X"FFC0E080E080C000"
    )
    port map (
      ADR5 => Multiplier_8_0_OutOfAND_6_1_Q,
      ADR4 => Multiplier_8_0_OutOfAND_7_0_0,
      ADR3 => Multiplier_8_0_OutOfFA_0_7_Q,
      ADR2 => Input1_5_IBUF_0,
      ADR0 => Input2_2_IBUF_0,
      ADR1 => Input2_3_IBUF_0,
      O => Multiplier_8_0_C_1_6_Q
    );
  Multiplier_8_0_FA07_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y15",
      INIT => X"7878888878788888"
    )
    port map (
      ADR3 => '1',
      ADR2 => Input1_6_IBUF_0,
      ADR4 => Input2_2_IBUF_0,
      ADR0 => Input1_7_IBUF_0,
      ADR1 => Input2_1_IBUF_0,
      ADR5 => '1',
      O => Multiplier_8_0_OutOfFA_0_7_Q
    );
  Multiplier_8_0_ANDS6_1_A6_z1 : X_LUT5
    generic map(
      LOC => "SLICE_X18Y15",
      INIT => X"C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => Input1_6_IBUF_0,
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => Input2_1_IBUF_0,
      O => Multiplier_8_0_OutOfAND_6_1_pack_3
    );
  Multiplier_8_0_FA36_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y16",
      INIT => X"FEC8C0C0EC800000"
    )
    port map (
      ADR5 => Multiplier_8_0_C_1_6_Q,
      ADR2 => Multiplier_8_0_OutOfFA_1_7_Q,
      ADR1 => Multiplier_8_0_OutOfFA_2_7_Q,
      ADR4 => Input1_5_IBUF_0,
      ADR0 => Input2_4_IBUF_0,
      ADR3 => Input2_5_IBUF_0,
      O => Multiplier_8_0_C_3_6_Q
    );
  Multiplier_8_0_FA55_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y16",
      INIT => X"999633CC9666CCCC"
    )
    port map (
      ADR1 => Multiplier_8_0_OutOfFA_4_6_Q,
      ADR0 => Input2_7_IBUF_0,
      ADR4 => Input1_4_IBUF_0,
      ADR2 => Input2_6_IBUF_0,
      ADR3 => Multiplier_8_0_C_3_5_Q,
      ADR5 => Multiplier_8_0_OutOfFA_3_6_Q,
      O => Multiplier_8_0_OutOfFA_5_5_Q
    );
  Multiplier_8_0_FA36_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X18Y16",
      INIT => X"995A965A96AA66AA"
    )
    port map (
      ADR0 => Multiplier_8_0_OutOfFA_2_7_Q,
      ADR1 => Input2_5_IBUF_0,
      ADR3 => Input1_5_IBUF_0,
      ADR4 => Input2_4_IBUF_0,
      ADR2 => Multiplier_8_0_C_1_6_Q,
      ADR5 => Multiplier_8_0_OutOfFA_1_7_Q,
      O => Multiplier_8_0_OutOfFA_3_6_Q
    );
  Multiplier_8_0_C_5_0_Multiplier_8_0_C_5_0_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output263_pack_2,
      O => Mux7_1_0_Mmux_Output263_1820
    );
  Multiplier_8_0_FA50_Ci_X_AND_2_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"956A0000956A0000"
    )
    port map (
      ADR4 => Multiplier_8_0_C_4_0_Q,
      ADR0 => Multiplier_8_0_C_3_1_Q,
      ADR3 => Multiplier_8_0_OutOfFA_3_2_Q,
      ADR2 => Input1_0_IBUF_0,
      ADR1 => Input2_6_IBUF_0,
      ADR5 => '1',
      O => Multiplier_8_0_C_5_0_Q
    );
  Mux7_1_0_Mmux_Output264 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"6A95956A"
    )
    port map (
      ADR4 => Multiplier_8_0_C_4_0_Q,
      ADR0 => Multiplier_8_0_C_3_1_Q,
      ADR3 => Multiplier_8_0_OutOfFA_3_2_Q,
      ADR2 => Input1_0_IBUF_0,
      ADR1 => Input2_6_IBUF_0,
      O => Mux7_1_0_Mmux_Output263_pack_2
    );
  Multiplier_8_0_FA32_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"9955995566AA66AA"
    )
    port map (
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => Input1_1_IBUF_0,
      ADR3 => Input2_5_IBUF_0,
      ADR5 => Multiplier_8_0_C_2_2_Q,
      ADR0 => Multiplier_8_0_OutOfFA_2_3_Q,
      O => Multiplier_8_0_OutOfFA_3_2_Q
    );
  Mux7_1_0_Mmux_Output265 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"040400000404000A"
    )
    port map (
      ADR2 => Control_0_IBUF_0,
      ADR4 => Control_1_IBUF_0,
      ADR0 => Control_3_IBUF_0,
      ADR5 => Input2_2_mmx_out5_0,
      ADR3 => Input2_3_IBUF_0,
      ADR1 => Mux7_1_0_Mmux_Output263_1820,
      O => Mux7_1_0_Mmux_Output264_1726
    );
  Mux7_1_0_Mmux_Output303_Mux7_1_0_Mmux_Output303_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output306_1077,
      O => Mux7_1_0_Mmux_Output306_0
    );
  Mux7_1_0_Mmux_Output303_Mux7_1_0_Mmux_Output303_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N6_pack_7,
      O => N6
    );
  Mux7_1_0_Mmux_Output304 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y3",
      INIT => X"6677886666778866"
    )
    port map (
      ADR2 => '1',
      ADR1 => Input1_8_IBUF_0,
      ADR0 => Control_0_IBUF_0,
      ADR4 => Input2_8_IBUF_0,
      ADR3 => Control_1_IBUF_0,
      ADR5 => '1',
      O => Mux7_1_0_Mmux_Output303_1675
    );
  Mux7_1_0_Mmux_Output307 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y3",
      INIT => X"00690096"
    )
    port map (
      ADR2 => AdderSub16Bit_0_C_7_Q,
      ADR1 => Input1_8_IBUF_0,
      ADR0 => Control_0_IBUF_0,
      ADR4 => Input2_8_IBUF_0,
      ADR3 => Control_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output306_1077
    );
  Mux7_1_0_Mmux_Output301 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y3",
      INIT => X"0055D8D80055D8D8"
    )
    port map (
      ADR0 => Input2_2_IBUF_0,
      ADR4 => Input2_3_IBUF_0,
      ADR2 => Input2_1_mmx_out7,
      ADR3 => Input2_1_mmx_out2,
      ADR1 => Input2_1_mmx_out3,
      ADR5 => '1',
      O => Mux7_1_0_Mmux_Output30
    );
  Mux7_1_0_Mmux_Output166_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y3",
      INIT => X"AAAA0000"
    )
    port map (
      ADR0 => Input2_2_IBUF_0,
      ADR4 => Input2_3_IBUF_0,
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => '1',
      O => N6_pack_7
    );
  Mux7_1_0_Mmux_Output166 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y3",
      INIT => X"02665D992266DD99"
    )
    port map (
      ADR4 => Control_0_IBUF_0,
      ADR1 => Control_1_IBUF_0,
      ADR3 => Input2_1_IBUF_0,
      ADR5 => N6,
      ADR2 => Input2_0_IBUF_0,
      ADR0 => Control_2_IBUF_0,
      O => Mux7_1_0_Mmux_Output165
    );
  Mux7_1_0_Mmux_Output303 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y3",
      INIT => X"00F555CC00A000CC"
    )
    port map (
      ADR3 => Control_0_IBUF_0,
      ADR4 => Control_1_IBUF_0,
      ADR2 => Input1_15_IBUF_0,
      ADR0 => Input2_3_IBUF_0,
      ADR5 => Input1_8_IBUF_0,
      ADR1 => Mux7_1_0_Mmux_Output30,
      O => Mux7_1_0_Mmux_Output302
    );
  Multiplier_8_0_FA42_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y6",
      INIT => X"8D72D72887787788"
    )
    port map (
      ADR3 => Multiplier_8_0_OutOfFA_3_3_Q,
      ADR1 => Input2_6_IBUF_0,
      ADR0 => Input1_1_IBUF_0,
      ADR5 => Input2_5_IBUF_0,
      ADR4 => Multiplier_8_0_C_2_2_Q,
      ADR2 => Multiplier_8_0_OutOfFA_2_3_Q,
      O => Multiplier_8_0_OutOfFA_4_2_Q
    );
  Multiplier_8_0_FA05_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y7",
      INIT => X"956A6A6A3FC0C0C0"
    )
    port map (
      ADR1 => Input2_1_IBUF_0,
      ADR2 => Input1_5_IBUF_0,
      ADR0 => Input2_0_IBUF_0,
      ADR4 => Input2_2_IBUF_0,
      ADR3 => Input1_4_IBUF_0,
      ADR5 => Input1_6_IBUF_0,
      O => Multiplier_8_0_OutOfFA_0_5_Q
    );
  Multiplier_8_0_FA24_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => X"FCC88880F8888000"
    )
    port map (
      ADR3 => Multiplier_8_0_C_0_4_Q,
      ADR2 => Multiplier_8_0_OutOfFA_0_5_Q,
      ADR4 => Multiplier_8_0_OutOfFA_1_5_Q,
      ADR1 => Input1_3_IBUF_0,
      ADR5 => Input2_3_IBUF_0,
      ADR0 => Input2_4_IBUF_0,
      O => Multiplier_8_0_C_2_4_Q
    );
  Multiplier_8_0_FA15_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => X"E38F1C70137FEC80"
    )
    port map (
      ADR4 => Multiplier_8_0_OutOfFA_0_6_Q,
      ADR5 => Input2_3_IBUF_0,
      ADR2 => Input1_4_IBUF_0,
      ADR0 => Input2_2_IBUF_0,
      ADR3 => Multiplier_8_0_OutOfAND_5_1_0,
      ADR1 => Multiplier_8_0_OutOfAND_6_0_Q,
      O => Multiplier_8_0_OutOfFA_1_5_Q
    );
  Multiplier_8_0_FA44_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y12",
      INIT => X"FEA88888EA800000"
    )
    port map (
      ADR5 => Multiplier_8_0_C_2_4_Q,
      ADR1 => Multiplier_8_0_OutOfFA_2_5_Q,
      ADR0 => Multiplier_8_0_OutOfFA_3_5_Q,
      ADR4 => Input1_3_IBUF_0,
      ADR2 => Input2_5_IBUF_0,
      ADR3 => Input2_6_IBUF_0,
      O => Multiplier_8_0_C_4_4_Q
    );
  Multiplier_8_0_OutOfFA_4_4_Multiplier_8_0_OutOfFA_4_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Multiplier_8_0_OutOfAND_3_7_Q,
      O => Multiplier_8_0_OutOfAND_3_7_0
    );
  Multiplier_8_0_FA44_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y13",
      INIT => X"E58F1A70157FEA80"
    )
    port map (
      ADR4 => Multiplier_8_0_OutOfFA_3_5_Q,
      ADR5 => Input2_6_IBUF_0,
      ADR2 => Input1_3_IBUF_0,
      ADR1 => Input2_5_IBUF_0,
      ADR0 => Multiplier_8_0_C_2_4_Q,
      ADR3 => Multiplier_8_0_OutOfFA_2_5_Q,
      O => Multiplier_8_0_OutOfFA_4_4_Q
    );
  Multiplier_8_0_FA35_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y13",
      INIT => X"A5559A6A9A6A5AAA"
    )
    port map (
      ADR0 => Multiplier_8_0_OutOfFA_2_6_Q,
      ADR3 => Input2_5_IBUF_0,
      ADR2 => Input1_4_IBUF_0,
      ADR1 => Input2_4_IBUF_0,
      ADR5 => Multiplier_8_0_C_1_5_Q,
      ADR4 => Multiplier_8_0_OutOfFA_1_6_Q,
      O => Multiplier_8_0_OutOfFA_3_5_Q
    );
  Multiplier_8_0_FA34_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y13",
      INIT => X"93936C6C93936C6C"
    )
    port map (
      ADR3 => '1',
      ADR2 => Input1_3_IBUF_0,
      ADR0 => Input2_5_IBUF_0,
      ADR4 => Multiplier_8_0_C_2_4_Q,
      ADR1 => Multiplier_8_0_OutOfFA_2_5_Q,
      ADR5 => '1',
      O => Multiplier_8_0_OutOfFA_3_4_Q
    );
  Multiplier_8_0_ANDS3_7_A3_z1 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y13",
      INIT => X"F000F000"
    )
    port map (
      ADR3 => Input2_7_IBUF_0,
      ADR2 => Input1_3_IBUF_0,
      ADR1 => '1',
      ADR0 => '1',
      ADR4 => '1',
      O => Multiplier_8_0_OutOfAND_3_7_Q
    );
  Multiplier_8_0_FA43_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y13",
      INIT => X"A05F5FA0A05F5FA0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => Input1_2_IBUF_0,
      ADR0 => Input2_6_IBUF_0,
      ADR3 => Multiplier_8_0_C_3_3_Q,
      ADR4 => Multiplier_8_0_OutOfFA_3_4_Q,
      O => Multiplier_8_0_OutOfFA_4_3_Q
    );
  Multiplier_8_0_OutOfFA_2_5_Multiplier_8_0_OutOfFA_2_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Multiplier_8_0_OutOfAND_4_0_Q,
      O => Multiplier_8_0_OutOfAND_4_0_0
    );
  Multiplier_8_0_FA25_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y14",
      INIT => X"C33C0FF0C33C0FF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => Input1_4_IBUF_0,
      ADR4 => Input2_4_IBUF_0,
      ADR2 => Multiplier_8_0_C_1_5_Q,
      ADR3 => Multiplier_8_0_OutOfFA_1_6_Q,
      ADR5 => '1',
      O => Multiplier_8_0_OutOfFA_2_5_Q
    );
  Multiplier_8_0_ANDS4_0_A4_z1 : X_LUT5
    generic map(
      LOC => "SLICE_X19Y14",
      INIT => X"88888888"
    )
    port map (
      ADR0 => Input2_0_IBUF_0,
      ADR1 => Input1_4_IBUF_0,
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => Multiplier_8_0_OutOfAND_4_0_Q
    );
  Multiplier_8_0_FA16_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y14",
      INIT => X"C396963C33CCCCCC"
    )
    port map (
      ADR1 => Multiplier_8_0_OutOfFA_0_7_Q,
      ADR2 => Input2_3_IBUF_0,
      ADR5 => Input1_5_IBUF_0,
      ADR0 => Input2_2_IBUF_0,
      ADR4 => Multiplier_8_0_OutOfAND_6_1_Q,
      ADR3 => Multiplier_8_0_OutOfAND_7_0_0,
      O => Multiplier_8_0_OutOfFA_1_6_Q
    );
  Multiplier_8_0_FA55_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y16",
      INIT => X"ECE8C8C0E0A08000"
    )
    port map (
      ADR4 => Multiplier_8_0_C_3_5_Q,
      ADR0 => Multiplier_8_0_OutOfFA_3_6_Q,
      ADR2 => Multiplier_8_0_OutOfFA_4_6_Q,
      ADR1 => Input1_4_IBUF_0,
      ADR3 => Input2_6_IBUF_0,
      ADR5 => Input2_7_IBUF_0,
      O => Multiplier_8_0_C_5_5_Q
    );
  Multiplier_8_0_FA27_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y17",
      INIT => X"AF7F5080F000F000"
    )
    port map (
      ADR5 => Input1_6_IBUF_0,
      ADR4 => Input2_4_IBUF_0,
      ADR3 => Input2_3_IBUF_0,
      ADR0 => Input2_2_IBUF_0,
      ADR1 => Input2_1_IBUF_0,
      ADR2 => Input1_7_IBUF_0,
      O => Multiplier_8_0_OutOfFA_2_7_Q
    );
  Mux7_1_0_Mmux_Output222 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => X"6C930000936C0000"
    )
    port map (
      ADR4 => Mux7_1_0_Mmux_Output221,
      ADR5 => Multiplier_8_0_C_1_1_Q,
      ADR1 => Multiplier_8_0_C_2_0_Q,
      ADR3 => Multiplier_8_0_OutOfFA_1_2_Q,
      ADR0 => Input1_0_IBUF_0,
      ADR2 => Input2_4_IBUF_0,
      O => Mux7_1_0_Mmux_Output222_1823
    );
  Mux7_1_0_Mmux_Output227 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => X"AFF0AFC0A0F0A0C0"
    )
    port map (
      ADR2 => Control_2_IBUF_0,
      ADR3 => Control_3_IBUF_0,
      ADR4 => Mux7_1_0_Mmux_Output222_1823,
      ADR1 => Mux7_1_0_Mmux_Output223_1636,
      ADR0 => Mux7_1_0_Mmux_Output225_1637,
      ADR5 => Mux7_1_0_Mmux_Output226_0,
      O => Output_4_OBUF_1583
    );
  Mux7_1_0_Mmux_Output224 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y3",
      INIT => X"C0C0000000000AFA"
    )
    port map (
      ADR0 => Input2_1_mmx_out3,
      ADR2 => Input2_2_IBUF_0,
      ADR3 => Input2_1_mmx_out2,
      ADR4 => Control_1_IBUF_0,
      ADR5 => Input2_3_IBUF_0,
      ADR1 => Input1_15_IBUF_0,
      O => Mux7_1_0_Mmux_Output224_1824
    );
  Mux7_1_0_Mmux_Output225 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y3",
      INIT => X"11F433FC00F000F0"
    )
    port map (
      ADR5 => Input1_4_IBUF_0,
      ADR3 => Control_0_IBUF_0,
      ADR1 => Control_1_IBUF_0,
      ADR0 => Input2_3_IBUF_0,
      ADR4 => Input2_2_IBUF_0,
      ADR2 => Mux7_1_0_Mmux_Output224_1824,
      O => Mux7_1_0_Mmux_Output225_1637
    );
  Multiplier_8_0_FA22_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y4",
      INIT => X"FCCCC880F8800000"
    )
    port map (
      ADR3 => Multiplier_8_0_C_0_2_Q,
      ADR2 => Multiplier_8_0_OutOfFA_0_3_Q,
      ADR4 => Multiplier_8_0_OutOfFA_1_3_Q,
      ADR1 => Input1_1_IBUF_0,
      ADR0 => Input2_3_IBUF_0,
      ADR5 => Input2_4_IBUF_0,
      O => Multiplier_8_0_C_2_2_Q
    );
  Multiplier_8_0_FA13_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y4",
      INIT => X"E71718E887777888"
    )
    port map (
      ADR4 => Multiplier_8_0_OutOfFA_0_4_Q,
      ADR3 => Input2_3_IBUF_0,
      ADR2 => Input1_2_IBUF_0,
      ADR5 => Input2_2_IBUF_0,
      ADR1 => Multiplier_8_0_OutOfAND_3_1_Q,
      ADR0 => Multiplier_8_0_OutOfAND_4_0_0,
      O => Multiplier_8_0_OutOfFA_1_3_Q
    );
  Mux7_1_0_Mmux_Output185 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y4",
      INIT => X"163CDAF0E6CC2A00"
    )
    port map (
      ADR2 => Input2_0_IBUF_0,
      ADR5 => Input1_2_IBUF_0,
      ADR1 => Input1_0_IBUF_0,
      ADR0 => Input2_1_IBUF_0,
      ADR3 => Input1_1_IBUF_0,
      ADR4 => Input2_2_IBUF_0,
      O => Mux7_1_0_Mmux_Output184_1720
    );
  Multiplier_8_0_FA42_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => X"FEA8EA80CC000000"
    )
    port map (
      ADR4 => Multiplier_8_0_C_2_2_Q,
      ADR1 => Multiplier_8_0_OutOfFA_2_3_Q,
      ADR3 => Multiplier_8_0_OutOfFA_3_3_Q,
      ADR5 => Input1_1_IBUF_0,
      ADR2 => Input2_5_IBUF_0,
      ADR0 => Input2_6_IBUF_0,
      O => Multiplier_8_0_C_4_2_Q
    );
  Multiplier_8_0_FA33_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => X"E81717E83FC03FC0"
    )
    port map (
      ADR3 => Multiplier_8_0_OutOfFA_2_4_Q,
      ADR4 => Input2_5_IBUF_0,
      ADR5 => Input1_2_IBUF_0,
      ADR0 => Input2_4_IBUF_0,
      ADR2 => Multiplier_8_0_C_1_3_Q,
      ADR1 => Multiplier_8_0_OutOfFA_1_4_Q,
      O => Multiplier_8_0_OutOfFA_3_3_Q
    );
  Multiplier_8_0_FA33_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y7",
      INIT => X"FCECE000F0808000"
    )
    port map (
      ADR5 => Multiplier_8_0_C_1_3_Q,
      ADR1 => Multiplier_8_0_OutOfFA_1_4_Q,
      ADR4 => Multiplier_8_0_OutOfFA_2_4_Q,
      ADR2 => Input1_2_IBUF_0,
      ADR0 => Input2_4_IBUF_0,
      ADR3 => Input2_5_IBUF_0,
      O => Multiplier_8_0_C_3_3_Q
    );
  Multiplier_8_0_FA24_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y7",
      INIT => X"E3131CEC8F7F7080"
    )
    port map (
      ADR4 => Multiplier_8_0_OutOfFA_1_5_Q,
      ADR3 => Input2_4_IBUF_0,
      ADR2 => Input1_3_IBUF_0,
      ADR0 => Input2_3_IBUF_0,
      ADR1 => Multiplier_8_0_C_0_4_Q,
      ADR5 => Multiplier_8_0_OutOfFA_0_5_Q,
      O => Multiplier_8_0_OutOfFA_2_4_Q
    );
  Multiplier_8_0_OutOfAND_3_1_Multiplier_8_0_OutOfAND_3_1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Multiplier_8_0_OutOfAND_5_1_Q,
      O => Multiplier_8_0_OutOfAND_5_1_0
    );
  Multiplier_8_0_ANDS3_1_A3_z1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y9",
      INIT => X"C0C0C0C0C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => Input1_3_IBUF_0,
      ADR2 => Input2_1_IBUF_0,
      ADR5 => '1',
      O => Multiplier_8_0_OutOfAND_3_1_Q
    );
  Multiplier_8_0_ANDS5_1_A5_z1 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y9",
      INIT => X"F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => Input1_5_IBUF_0,
      ADR3 => '1',
      ADR2 => Input2_1_IBUF_0,
      O => Multiplier_8_0_OutOfAND_5_1_Q
    );
  Multiplier_8_0_C_4_0_Multiplier_8_0_C_4_0_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output241_1279,
      O => Mux7_1_0_Mmux_Output241_0
    );
  Multiplier_8_0_FA40_Ci_X_AND_2_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"936C0000936C0000"
    )
    port map (
      ADR4 => Multiplier_8_0_C_3_0_Q,
      ADR1 => Multiplier_8_0_C_2_1_Q,
      ADR3 => Multiplier_8_0_OutOfFA_2_2_Q,
      ADR2 => Input1_0_IBUF_0,
      ADR0 => Input2_5_IBUF_0,
      ADR5 => '1',
      O => Multiplier_8_0_C_4_0_Q
    );
  Mux7_1_0_Mmux_Output242 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"6C93936C"
    )
    port map (
      ADR4 => Multiplier_8_0_C_3_0_Q,
      ADR1 => Multiplier_8_0_C_2_1_Q,
      ADR3 => Multiplier_8_0_OutOfFA_2_2_Q,
      ADR2 => Input1_0_IBUF_0,
      ADR0 => Input2_5_IBUF_0,
      O => Mux7_1_0_Mmux_Output241_1279
    );
  Multiplier_8_0_FA30_Ci_X_AND_2_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"990066003300CC00"
    )
    port map (
      ADR2 => '1',
      ADR3 => Multiplier_8_0_C_2_0_Q,
      ADR4 => Multiplier_8_0_C_1_1_Q,
      ADR1 => Multiplier_8_0_OutOfFA_1_2_Q,
      ADR5 => Input1_0_IBUF_0,
      ADR0 => Input2_4_IBUF_0,
      O => Multiplier_8_0_C_3_0_Q
    );
  Mux7_1_0_Mmux_Output186 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"06090609F9F60906"
    )
    port map (
      ADR2 => Control_1_IBUF_0,
      ADR0 => Input1_2_IBUF_0,
      ADR5 => Control_0_IBUF_0,
      ADR1 => Input2_2_IBUF_0,
      ADR3 => AdderSub16Bit_0_C_1_Q,
      ADR4 => Mux7_1_0_Mmux_Output184_1720,
      O => Mux7_1_0_Mmux_Output185_1825
    );
  Mux7_1_0_Mmux_Output187 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"BAF0BA00AAF0AA00"
    )
    port map (
      ADR3 => Control_3_IBUF_0,
      ADR5 => Mux7_1_0_Mmux_Output183_1724,
      ADR2 => Control_2_IBUF_0,
      ADR1 => Control_0_IBUF_0,
      ADR0 => Mux7_1_0_Mmux_Output182,
      ADR4 => Mux7_1_0_Mmux_Output185_1825,
      O => Output_2_OBUF_1723
    );
  Multiplier_8_0_FA13_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y4",
      INIT => X"FCF88880C8888000"
    )
    port map (
      ADR5 => Multiplier_8_0_OutOfAND_3_1_Q,
      ADR2 => Multiplier_8_0_OutOfAND_4_0_0,
      ADR4 => Multiplier_8_0_OutOfFA_0_4_Q,
      ADR1 => Input1_2_IBUF_0,
      ADR3 => Input2_2_IBUF_0,
      ADR0 => Input2_3_IBUF_0,
      O => Multiplier_8_0_C_1_3_Q
    );
  Multiplier_8_0_FA04_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y4",
      INIT => X"953F6AC06AC06AC0"
    )
    port map (
      ADR2 => Input1_3_IBUF_0,
      ADR1 => Input2_2_IBUF_0,
      ADR0 => Input1_4_IBUF_0,
      ADR4 => Input1_5_IBUF_0,
      ADR5 => Input2_0_IBUF_0,
      ADR3 => Input2_1_IBUF_0,
      O => Multiplier_8_0_OutOfFA_0_4_Q
    );
  Multiplier_8_0_FA23_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y6",
      INIT => X"F00F0FF000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Input1_2_IBUF_0,
      ADR5 => Input2_4_IBUF_0,
      ADR3 => Multiplier_8_0_C_1_3_Q,
      ADR4 => Multiplier_8_0_OutOfFA_1_4_Q,
      O => Multiplier_8_0_OutOfFA_2_3_Q
    );
  Multiplier_8_0_FA14_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y6",
      INIT => X"C3C333333C3CCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => Input1_3_IBUF_0,
      ADR4 => Input2_3_IBUF_0,
      ADR1 => Multiplier_8_0_C_0_4_Q,
      ADR5 => Multiplier_8_0_OutOfFA_0_5_Q,
      O => Multiplier_8_0_OutOfFA_1_4_Q
    );
  Multiplier_8_0_FA04_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y6",
      INIT => X"E888A000C0000000"
    )
    port map (
      ADR1 => Input1_4_IBUF_0,
      ADR4 => Input2_1_IBUF_0,
      ADR2 => Input1_5_IBUF_0,
      ADR3 => Input2_0_IBUF_0,
      ADR5 => Input1_3_IBUF_0,
      ADR0 => Input2_2_IBUF_0,
      O => Multiplier_8_0_C_0_4_Q
    );
  Mux7_1_0_Mmux_Output202_Mux7_1_0_Mmux_Output202_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output201_pack_6,
      O => Mux7_1_0_Mmux_Output201_1828
    );
  Mux7_1_0_Mmux_Output203 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y1",
      INIT => X"F000FFF0F000FFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => Input2_3_IBUF_0,
      ADR4 => Control_1_IBUF_0,
      ADR2 => Control_0_IBUF_0,
      ADR5 => '1',
      O => Mux7_1_0_Mmux_Output202_1827
    );
  Mux7_1_0_Mmux_Output202 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y1",
      INIT => X"0D5A85A5"
    )
    port map (
      ADR0 => Control_2_IBUF_0,
      ADR1 => Mux7_1_0_Mmux_Output20_0,
      ADR3 => Input2_3_IBUF_0,
      ADR4 => Control_1_IBUF_0,
      ADR2 => Control_0_IBUF_0,
      O => Mux7_1_0_Mmux_Output201_pack_6
    );
  Mux7_1_0_Mmux_Output208 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y1",
      INIT => X"232F202F23202020"
    )
    port map (
      ADR2 => Control_3_IBUF_0,
      ADR4 => Mux7_1_0_Mmux_Output204_0,
      ADR3 => Control_1_IBUF_0,
      ADR1 => Control_0_IBUF_0,
      ADR5 => Mux7_1_0_Mmux_Output203_1662,
      ADR0 => Mux7_1_0_Mmux_Output206_1611,
      O => Mux7_1_0_Mmux_Output207_1829
    );
  Mux7_1_0_Mmux_Output209 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y1",
      INIT => X"FCF0F0F0CCAA0000"
    )
    port map (
      ADR4 => Control_3_IBUF_0,
      ADR3 => Input1_3_IBUF_0,
      ADR5 => Control_2_IBUF_0,
      ADR0 => Mux7_1_0_Mmux_Output202_1827,
      ADR1 => Mux7_1_0_Mmux_Output201_1828,
      ADR2 => Mux7_1_0_Mmux_Output207_1829,
      O => Output_3_OBUF_1660
    );
  Multiplier_8_0_C_3_1_Multiplier_8_0_C_3_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output204_1378,
      O => Mux7_1_0_Mmux_Output204_0
    );
  Multiplier_8_0_FA31_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y2",
      INIT => X"FCCCC000FCCCC000"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => Multiplier_8_0_C_2_1_Q,
      ADR4 => Multiplier_8_0_OutOfFA_2_2_Q,
      ADR2 => Input1_0_IBUF_0,
      ADR3 => Input2_5_IBUF_0,
      O => Multiplier_8_0_C_3_1_Q
    );
  Multiplier_8_0_FA22_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y2",
      INIT => X"C39633CC963CCCCC"
    )
    port map (
      ADR1 => Multiplier_8_0_OutOfFA_1_3_Q,
      ADR2 => Input2_4_IBUF_0,
      ADR4 => Input1_1_IBUF_0,
      ADR0 => Input2_3_IBUF_0,
      ADR3 => Multiplier_8_0_C_0_2_Q,
      ADR5 => Multiplier_8_0_OutOfFA_0_3_Q,
      O => Multiplier_8_0_OutOfFA_2_2_Q
    );
  Multiplier_8_0_FA20_Ci_X_AND_2_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y2",
      INIT => X"8070708080707080"
    )
    port map (
      ADR2 => Multiplier_8_0_C_1_0_Q,
      ADR4 => Multiplier_8_0_C_0_1_Q,
      ADR3 => Multiplier_8_0_OutOfFA_0_2_Q,
      ADR1 => Input1_0_IBUF_0,
      ADR0 => Input2_3_IBUF_0,
      ADR5 => '1',
      O => Multiplier_8_0_C_2_0_Q
    );
  Mux7_1_0_Mmux_Output205 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y2",
      INIT => X"78878778"
    )
    port map (
      ADR2 => Multiplier_8_0_C_1_0_Q,
      ADR4 => Multiplier_8_0_C_0_1_Q,
      ADR3 => Multiplier_8_0_OutOfFA_0_2_Q,
      ADR1 => Input1_0_IBUF_0,
      ADR0 => Input2_3_IBUF_0,
      O => Mux7_1_0_Mmux_Output204_1378
    );
  Multiplier_8_0_FA02_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y2",
      INIT => X"956A3FC06A6AC0C0"
    )
    port map (
      ADR0 => Input1_1_IBUF_0,
      ADR4 => Input2_2_IBUF_0,
      ADR1 => Input1_2_IBUF_0,
      ADR5 => Input1_3_IBUF_0,
      ADR3 => Input2_0_IBUF_0,
      ADR2 => Input2_1_IBUF_0,
      O => Multiplier_8_0_OutOfFA_0_2_Q
    );
  Multiplier_8_0_OutOfFA_1_2_Multiplier_8_0_OutOfFA_1_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => N8_pack_5,
      O => N8
    );
  Multiplier_8_0_FA12_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y3",
      INIT => X"9966666699666666"
    )
    port map (
      ADR2 => '1',
      ADR4 => Input1_1_IBUF_0,
      ADR3 => Input2_3_IBUF_0,
      ADR1 => Multiplier_8_0_C_0_2_Q,
      ADR0 => Multiplier_8_0_OutOfFA_0_3_Q,
      ADR5 => '1',
      O => Multiplier_8_0_OutOfFA_1_2_Q
    );
  Mux7_1_0_Mmux_Output183_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X22Y3",
      INIT => X"F000F000"
    )
    port map (
      ADR2 => Input2_1_IBUF_0,
      ADR1 => '1',
      ADR3 => Input2_3_IBUF_0,
      ADR0 => '1',
      ADR4 => '1',
      O => N8_pack_5
    );
  Mux7_1_0_Mmux_Output183 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y3",
      INIT => X"1123298219A32982"
    )
    port map (
      ADR0 => Input1_2_IBUF_0,
      ADR3 => Control_0_IBUF_0,
      ADR2 => Control_1_IBUF_0,
      ADR4 => Input2_2_IBUF_0,
      ADR5 => N8,
      ADR1 => Control_2_IBUF_0,
      O => Mux7_1_0_Mmux_Output182
    );
  Multiplier_8_0_FA03_Mxor_Sum_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y3",
      INIT => X"965A66AA3CF0CC00"
    )
    port map (
      ADR3 => Input2_1_IBUF_0,
      ADR1 => Input1_3_IBUF_0,
      ADR4 => Input2_0_IBUF_0,
      ADR5 => Input2_2_IBUF_0,
      ADR0 => Input1_2_IBUF_0,
      ADR2 => Input1_4_IBUF_0,
      O => Multiplier_8_0_OutOfFA_0_3_Q
    );
  Input2_1_12 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y4",
      INIT => X"BBFC88FCBB308830"
    )
    port map (
      ADR1 => Input2_0_IBUF_0,
      ADR3 => Input2_1_IBUF_0,
      ADR5 => Input1_2_IBUF_0,
      ADR0 => Input1_0_IBUF_0,
      ADR4 => Input1_1_IBUF_0,
      ADR2 => Input1_3_IBUF_0,
      O => Input2_1_mmx_out1
    );
  Mux7_1_0_Mmux_Output207 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y4",
      INIT => X"8000800011110000"
    )
    port map (
      ADR0 => Input2_2_IBUF_0,
      ADR1 => Input2_3_IBUF_0,
      ADR5 => Control_1_IBUF_0,
      ADR3 => Mux7_1_0_Mmux_Output205_0,
      ADR2 => Input1_15_IBUF_0,
      ADR4 => Input2_1_mmx_out1,
      O => Mux7_1_0_Mmux_Output206_1611
    );
  Multiplier_8_0_FA11_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y1",
      INIT => X"FFC0C000FFC0C000"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR3 => Multiplier_8_0_C_0_1_Q,
      ADR4 => Multiplier_8_0_OutOfFA_0_2_Q,
      ADR2 => Input1_0_IBUF_0,
      ADR1 => Input2_3_IBUF_0,
      O => Multiplier_8_0_C_1_1_Q
    );
  Multiplier_8_0_FA01_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y1",
      INIT => X"E8A0C00088000000"
    )
    port map (
      ADR3 => Input1_1_IBUF_0,
      ADR1 => Input2_1_IBUF_0,
      ADR5 => Input1_0_IBUF_0,
      ADR2 => Input2_2_IBUF_0,
      ADR4 => Input1_2_IBUF_0,
      ADR0 => Input2_0_IBUF_0,
      O => Multiplier_8_0_C_0_1_Q
    );
  Mux7_1_0_Mmux_Output162 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y2",
      INIT => X"8800000300000003"
    )
    port map (
      ADR4 => Input2_2_IBUF_0,
      ADR1 => Input2_3_IBUF_0,
      ADR3 => Control_1_IBUF_0,
      ADR2 => Input2_1_mmx_out11_0,
      ADR5 => Input1_15_IBUF_0,
      ADR0 => Mux7_1_0_Mmux_Output16,
      O => Mux7_1_0_Mmux_Output161_1831
    );
  Mux7_1_0_Mmux_Output163 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y2",
      INIT => X"0F000FB2000000B2"
    )
    port map (
      ADR3 => Control_2_IBUF_0,
      ADR4 => Input1_1_IBUF_0,
      ADR2 => Control_0_IBUF_0,
      ADR0 => Input2_1_IBUF_0,
      ADR1 => Control_1_IBUF_0,
      ADR5 => Mux7_1_0_Mmux_Output161_1831,
      O => Mux7_1_0_Mmux_Output162_1682
    );
  Multiplier_8_0_FA10_Ci_X_AND_2_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y2",
      INIT => X"8000400000000000"
    )
    port map (
      ADR5 => Input1_0_IBUF_0,
      ADR2 => Input2_1_IBUF_0,
      ADR3 => Input1_1_IBUF_0,
      ADR1 => Input2_0_IBUF_0,
      ADR0 => Input1_2_IBUF_0,
      ADR4 => Input2_2_IBUF_0,
      O => Multiplier_8_0_C_1_0_Q
    );
  Multiplier_8_0_FA21_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y2",
      INIT => X"F8E8C888E0C08000"
    )
    port map (
      ADR0 => Multiplier_8_0_C_0_1_Q,
      ADR5 => Multiplier_8_0_OutOfFA_0_2_Q,
      ADR1 => Multiplier_8_0_OutOfFA_1_2_Q,
      ADR2 => Input1_0_IBUF_0,
      ADR3 => Input2_3_IBUF_0,
      ADR4 => Input2_4_IBUF_0,
      O => Multiplier_8_0_C_2_1_Q
    );
  Multiplier_8_0_C_0_2_Multiplier_8_0_C_0_2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Mux7_1_0_Mmux_Output205_1463,
      O => Mux7_1_0_Mmux_Output205_0
    );
  Multiplier_8_0_FA02_Co1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y3",
      INIT => X"F888800080008000"
    )
    port map (
      ADR0 => Input1_2_IBUF_0,
      ADR1 => Input2_1_IBUF_0,
      ADR5 => Input1_3_IBUF_0,
      ADR4 => Input2_0_IBUF_0,
      ADR3 => Input1_1_IBUF_0,
      ADR2 => Input2_2_IBUF_0,
      O => Multiplier_8_0_C_0_2_Q
    );
  Mux7_1_0_Mmux_Output161 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y3",
      INIT => X"F000F000F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Input2_0_IBUF_0,
      ADR2 => Input2_1_IBUF_0,
      ADR5 => '1',
      O => Mux7_1_0_Mmux_Output16
    );
  Mux7_1_0_Mmux_Output206 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y3",
      INIT => X"FFF0FFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Input2_0_IBUF_0,
      ADR2 => Input2_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output205_1463
    );
  Mux7_1_0_Mmux_Output167 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => X"005900A66C95A06A"
    )
    port map (
      ADR5 => Control_0_IBUF_0,
      ADR2 => Input1_0_IBUF_0,
      ADR1 => Input2_0_IBUF_0,
      ADR4 => Input1_1_IBUF_0,
      ADR0 => Input2_1_IBUF_0,
      ADR3 => Control_1_IBUF_0,
      O => Mux7_1_0_Mmux_Output166_1832
    );
  Mux7_1_0_Mmux_Output168 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y2",
      INIT => X"FFAAAAAAD5808080"
    )
    port map (
      ADR0 => Control_3_IBUF_0,
      ADR1 => Input1_1_IBUF_0,
      ADR2 => Mux7_1_0_Mmux_Output165,
      ADR5 => Mux7_1_0_Mmux_Output162_1682,
      ADR4 => Mux7_1_0_Mmux_Output166_1832,
      ADR3 => Control_2_IBUF_0,
      O => Output_1_OBUF_1717
    );
  Input2_1_mmx_out2_Input2_1_mmx_out2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => AdderSub16Bit_0_C_1_pack_2,
      O => AdderSub16Bit_0_C_1_Q
    );
  Input2_1_41 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y2",
      INIT => X"FFFFCCFFFFFFCCFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => Input2_0_IBUF_0,
      ADR1 => Input2_1_IBUF_0,
      ADR3 => Input1_0_IBUF_0,
      ADR5 => '1',
      O => Input2_1_mmx_out2
    );
  AdderSub16Bit_0_Gen_ADD_1_FA_Co1 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y2",
      INIT => X"F660E2E2"
    )
    port map (
      ADR0 => Control_0_IBUF_0,
      ADR2 => Input1_1_IBUF_0,
      ADR4 => Input2_0_IBUF_0,
      ADR1 => Input2_1_IBUF_0,
      ADR3 => Input1_0_IBUF_0,
      O => AdderSub16Bit_0_C_1_pack_2
    );
  Mux7_1_0_Mmux_Output204 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y2",
      INIT => X"399CC663C993366C"
    )
    port map (
      ADR4 => Input1_3_IBUF_0,
      ADR5 => Control_0_IBUF_0,
      ADR1 => Input2_3_IBUF_0,
      ADR2 => AdderSub16Bit_0_C_1_Q,
      ADR3 => Input1_2_IBUF_0,
      ADR0 => Input2_2_IBUF_0,
      O => Mux7_1_0_Mmux_Output203_1662
    );
  Mux7_1_0_Mmux_Output22_Mux7_1_0_Mmux_Output22_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_0_OBUF_1503,
      O => Output_0_OBUF_0
    );
  Mux7_1_0_Mmux_Output26 : X_MUX2
    generic map(
      LOC => "SLICE_X26Y2"
    )
    port map (
      IA => N16,
      IB => N17,
      O => Output_0_OBUF_1503,
      SEL => Control_2_IBUF_0
    );
  Mux7_1_0_Mmux_Output26_F : X_LUT6
    generic map(
      LOC => "SLICE_X26Y2",
      INIT => X"3C3F0000C03C0000"
    )
    port map (
      ADR0 => '1',
      ADR4 => Control_3_IBUF_0,
      ADR1 => Control_0_IBUF_0,
      ADR2 => Input1_0_IBUF_0,
      ADR5 => Input2_0_IBUF_0,
      ADR3 => Control_1_IBUF_0,
      O => N16
    );
  Mux7_1_0_Mmux_Output26_G : X_LUT6
    generic map(
      LOC => "SLICE_X26Y2",
      INIT => X"33B7308533F320D0"
    )
    port map (
      ADR1 => Control_0_IBUF_0,
      ADR4 => Mux7_1_0_Mmux_Output22,
      ADR5 => Input2_0_IBUF_0,
      ADR3 => Control_1_IBUF_0,
      ADR2 => Input1_0_IBUF_0,
      ADR0 => Control_3_IBUF_0,
      O => N17
    );
  Mux7_1_0_Mmux_Output24 : X_LUT6
    generic map(
      LOC => "SLICE_X26Y2",
      INIT => X"0000000000000030"
    )
    port map (
      ADR0 => '1',
      ADR3 => Input2_3_IBUF_0,
      ADR5 => Input2_2_IBUF_0,
      ADR4 => Control_1_IBUF_0,
      ADR2 => Control_3_IBUF_0,
      ADR1 => Input2_1_mmx_out2,
      O => Mux7_1_0_Mmux_Output22
    );
  NlwBufferBlock_Output_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_4_OBUF_1583,
      O => NlwBufferSignal_Output_4_OBUF_I
    );
  NlwBufferBlock_Output_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_5_OBUF_1589,
      O => NlwBufferSignal_Output_5_OBUF_I
    );
  NlwBufferBlock_Output_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_6_OBUF_1594,
      O => NlwBufferSignal_Output_6_OBUF_I
    );
  NlwBufferBlock_Output_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_7_OBUF_1605,
      O => NlwBufferSignal_Output_7_OBUF_I
    );
  NlwBufferBlock_Output_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_8_OBUF_1610,
      O => NlwBufferSignal_Output_8_OBUF_I
    );
  NlwBufferBlock_Output_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_9_OBUF_1616,
      O => NlwBufferSignal_Output_9_OBUF_I
    );
  NlwBufferBlock_Output_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_10_OBUF_1623,
      O => NlwBufferSignal_Output_10_OBUF_I
    );
  NlwBufferBlock_Output_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_11_OBUF_0,
      O => NlwBufferSignal_Output_11_OBUF_I
    );
  NlwBufferBlock_Output_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_12_OBUF_1633,
      O => NlwBufferSignal_Output_12_OBUF_I
    );
  NlwBufferBlock_Output_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_13_OBUF_1643,
      O => NlwBufferSignal_Output_13_OBUF_I
    );
  NlwBufferBlock_Output_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_14_OBUF_1653,
      O => NlwBufferSignal_Output_14_OBUF_I
    );
  NlwBufferBlock_Output_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_15_OBUF_1659,
      O => NlwBufferSignal_Output_15_OBUF_I
    );
  NlwBufferBlock_Output_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_0_OBUF_0,
      O => NlwBufferSignal_Output_0_OBUF_I
    );
  NlwBufferBlock_Output_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_1_OBUF_1717,
      O => NlwBufferSignal_Output_1_OBUF_I
    );
  NlwBufferBlock_Output_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_2_OBUF_1723,
      O => NlwBufferSignal_Output_2_OBUF_I
    );
  NlwBufferBlock_Output_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 115 ps
    )
    port map (
      I => Output_3_OBUF_1660,
      O => NlwBufferSignal_Output_3_OBUF_I
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

