-------------------------------------------------
-- File:	MUX8_1.vhd
-- Entity:	MUX8_1
-- Architecture:	Structural
-- Author: John Judge
-- Created: 2/18/16
-- Modified: 2/17/16
-- VHDL'93
-- Description: The following is the entity and
--	structural description of a 8-1 Multiplexer
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity MUX8_1 is
	 Generic (N:Integer := 16);
    Port ( DATAIN1, DATAIN2, DATAIN3, DATAIN4, DATAIN5, DATAIN6, DATAIN7, DATAIN8 : in  STD_LOGIC_VECTOR (N-1 downto 0);
			  RD : in STD_LOGIC_VECTOR (2 downto 0);
           DATAOUT : out  STD_LOGIC_VECTOR (N-1 downto 0));
end MUX8_1;

architecture Structural of MUX8_1 is

begin
		--The output is oner of the 16 bit inputs
		WITH RD SELECT--The select is RD
			DATAOUT <= DATAIN1 when "000",
						DATAIN2 when "001",
						DATAIN3 when "010",
						DATAIN4 when "011",
						DATAIN5 when "100",
						DATAIN6 when "101",
						DATAIN7 when "110",
						DATAIN8 when OTHERS;
end Structural;

