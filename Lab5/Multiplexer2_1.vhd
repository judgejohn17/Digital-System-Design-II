-------------------------------------------------
-- File:	Multiplexer2to1.VHD
-- Entity: 2-1 Multiplexer
-- Architecture:	Behavioral
-- Author: John Judge
-- Created: 4/12/16
-- Modified: 4/12/16
-- VHDL'93
-- Description: The following is the entity and
--	Behavioral description of a 2-1 Multiplexer
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer2to1 is
	 Generic (N : integer);--generic
    Port ( Input1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Input2 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Sel : in  STD_LOGIC;--1 bit select
           Output : out  STD_LOGIC_VECTOR (N-1 downto 0));
end Multiplexer2to1;

architecture Behavioral of Multiplexer2to1 is

begin
			Output <= Input1 WHEN (Sel = '0') else Input2;
end Behavioral;

