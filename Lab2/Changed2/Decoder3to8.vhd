-------------------------------------------------
-- File:	Decoder3to8.vhd
-- Entity:	Decoder3to8
-- Architecture:	dataflow
-- Author: John Judge
-- Created: 2/18/16
-- Modified: 2/17/16
-- VHDL'93
-- Description: The following is the entity and
--	dataflow description of a 3-8 Decoder
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity Decoder3to8 is
    Port ( WR : in  STD_LOGIC_VECTOR (2 downto 0);
				WE: in STD_LOGIC;
           DATAOUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Decoder3to8;

architecture dataflow of Decoder3to8 is
	Signal WEWR : STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
	WEWR <= WE&WR; --Combine WE and WR 
	WITH WEWR SELECT
		DATAOUT<="00000001" When "1000",
					"00000010" When "1001",
					"00000100" When "1010",
					"00001000" When "1011",
					"00010000" When "1100",
					"00100000" When "1101",
					"01000000" When "1110",
					"10000000" When "1111",
		         "00000000" When OTHERS;
end dataflow;

