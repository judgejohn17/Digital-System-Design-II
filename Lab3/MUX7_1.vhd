-------------------------------------------------
-- File:	MUX7_1.vhd
-- Entity:	16-bit 7-1 Multiplexer
-- Architecture:	Behavioral
-- Author: John Judge
-- Created: 3/14/16
-- Modified: 3/14/16
-- VHDL'93
-- Description: The following is the entity and
--	behavioral description of a 16-bit 7-1 Multiplexer
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux7_1 is
	Port (AdderIn,MultIn,ShifterIn,ORIn,NOTIn,ANDIn,XORIn: IN STD_LOGIC_VECTOR (15 downto 0);--7 inputs
			ControlSelect: IN STD_LOGIC_VECTOR (3 downto 0);--4 bit select
			Output: OUT STD_LOGIC_VECTOR (15 downto 0));--1 out 
end Mux7_1;

architecture Behavioral of Mux7_1 is
begin
	WITH ControlSelect SELECT
		Output <= AdderIn WHEN "0100",--ADD
						AdderIn WHEN "0101",--SUB
						MultIn WHEN "0110",--MULT
						OrIn WHEN "1000",--OR
						NOTIn WHEN "1001",--NOT
						ANDIn WHEN "1010",--AND
						XORIn WHEN "1011",--XOR
						ShifterIn WHEN "1100",--LSL
						ShifterIn WHEN "1101",--LSR
						ShifterIn WHEN "1110",--ASR
						"0000000000000000" WHEN OTHERS;--Spit out 0s when others
end Behavioral;
