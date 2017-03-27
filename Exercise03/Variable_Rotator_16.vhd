-------------------------------------------------
-- File:	Variable_Rotator_16.vhd
-- Entity:	16 Bit Variable rotator
-- Architecture:	Structural
-- Author: John Judge
-- Created: 3/3/16
-- Modified: 3/10/16
-- VHDL'93
-- Description: The following is the entity and
--	structural description of a 16-bit adder
-------------------------------------------------
LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY variable_rotator_16 is
PORT(
A : IN STD_LOGIC_VECTOR(15 downto 0);
B : IN STD_LOGIC_VECTOR(3 downto 0);
C : OUT STD_LOGIC_VECTOR(15 downto 0)
);
END variable_rotator_16;
ARCHITECTURE structural OF variable_rotator_16 IS
TYPE array16 IS ARRAY (0 to 4) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Al : array16;
SIGNAL Ar : array16;
