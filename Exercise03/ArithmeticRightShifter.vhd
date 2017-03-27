-------------------------------------------------
-- File:	ArithmeticRightShifter.vhd
-- Entity:	ARS
-- Architecture:	DataFlow
-- Author: John Judge
-- Created: 3/15/16
-- Modified: 3/15/16
-- VHDL'93
-- Description: The following is the entity and
--	dataflow description of a 16-bit variable shifter
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArithmeticRightShifter is
	PORT(
			A : IN STD_LOGIC_VECTOR(15 downto 0);
			B : IN STD_LOGIC_VECTOR(3 downto 0);
			C : OUT STD_LOGIC_VECTOR(15 downto 0));
end ArithmeticRightShifter;

architecture Dataflow of ArithmeticRightShifter is
	TYPE array16 IS ARRAY (0 to 15) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL Al : array16;--Array of shifted values
	Signal SignVector : STD_LOGIC_VECTOR(15 downto 0); --Zeros to add to end of shift
begin
	WITH A(15) SELECT
	SignVector <= "0000000000000000" WHEN '0',--When unsigned
						"1111111111111111" WHEN OTHERS;--When signed or other
	Al(0) <= A;--Unshifted
	G:FOR i IN 0 TO 14 GENERATE
		Al(i+1) <= SignVector(i downto 0) & Al(0)(14-i downto 0) ;--Make vector smaller and sign to front
	END GENERATE;
	WITH B SELECT --Select shifted value
	C <= Al(1) WHEN "0001",
			Al(2) WHEN "0010",
			Al(3) WHEN "0011",
			Al(4) WHEN "0100",
			Al(5) WHEN "0101",
			Al(6) WHEN "0110",
			Al(7) WHEN "0111",
			Al(8) WHEN "1000",
			Al(9) WHEN "1001",
			Al(10) WHEN "1010",
			Al(11) WHEN "1011",
			Al(12) WHEN "1100",
			Al(13) WHEN "1101",
			Al(14) WHEN "1110",
			Al(15) WHEN "1111",
			Al(0) WHEN OTHERS;--Give unshifter value for "0000" and others
end DataFlow;
