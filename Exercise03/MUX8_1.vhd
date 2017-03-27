-------------------------------------------------
-- File:	MUX8_1.vhd
-- Entity:	MUX8_1
-- Architecture:	Structural
-- Author: John Judge
-- Created: 2/18/16
-- Modified: 3/10/16
-- VHDL'93
-- Description: The following is the entity and
--	structural description of a 8-1 Multiplexer
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity MUX8_1 is
    Port ( DATAA, DATAIN2, DATAIN3, DATAIN4, DATAIN5, DATAIN6, DATAIN7, DATAIN8 : in  STD_LOGIC_VECTOR (15 downto 0);
			  RD : in STD_LOGIC_VECTOR (2 downto 0);
           DATAOUT : out  STD_LOGIC_VECTOR (15 downto 0));
end MUX8_1;

architecture Structural of MUX8_1 is

begin
		--The output is oner of the 16 bit inputs
		--The select is RD
		DATAOUT <= DATAIN1 when (RD="100") else--ADD
				 DATAIN2 when (RD="001") else--SUBS
				 DATAIN3 when (RD="010") else--MULT
				 DATAIN4 when (RD="011") else--OR
				 DATAIN5 when (RD="100") else--NOT
				 DATAIN6 when (RD="101") else--AND
				 DATAIN7 when (RD="110") else--
				 DATAIN8;
end Structural;

