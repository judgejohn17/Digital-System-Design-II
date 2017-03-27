-------------------------------------------------
-- File:	Variable_Shifter_16.vhd
-- Entity:	16 Bit Variable Shifter
-- Architecture:	Behavioral
-- Author: John Judge
-- Created: 3/14/16
-- Modified: 3/14/16
-- VHDL'93
-- Description: The following is the entity and
--	behavioral description of a 16-bit variable shifter
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Variable_Shifter_16 is
	Port( In1: IN STD_LOGIC_VECTOR(15 downto 0);
			ShiftAmount: IN STD_LOGIC_VECTOR(3 downto 0);
			ShiftType:	IN STD_LOGIC_VECTOR(1 downto 0);
			Output:	OUT STD_LOGIC_VECTOR(15 downto 0));
end Variable_Shifter_16;

architecture Behavioral of Variable_Shifter_16 is
	--Made of a Logical Left Shifter, Logical Right Shifter, and Arethmetic Right Shifter
	
	Component LogicalLeftShifter is --LLS
		PORT( A : IN STD_LOGIC_VECTOR(15 downto 0);
				B : IN STD_LOGIC_VECTOR(3 downto 0);
				C : OUT STD_LOGIC_VECTOR(15 downto 0));
	END component;
	Component LogicalRightShifter is --LRS
		PORT( A : IN STD_LOGIC_VECTOR(15 downto 0);
				B : IN STD_LOGIC_VECTOR(3 downto 0);
				C : OUT STD_LOGIC_VECTOR(15 downto 0));
	END component;
	
	Component ArithmeticRightShifter is --ARS
		PORT( A : IN STD_LOGIC_VECTOR(15 downto 0);
				B : IN STD_LOGIC_VECTOR(3 downto 0);
				C : OUT STD_LOGIC_VECTOR(15 downto 0));
	END component;

	Signal LLSOutTemp: STD_LOGIC_VECTOR(15 downto 0);
	Signal ARSOutTemp: STD_LOGIC_VECTOR(15 downto 0);
	Signal LRSOutTemp: STD_LOGIC_VECTOR(15 downto 0);
begin
	LLS: LogicalLeftShifter PORT MAP(In1,ShiftAmount,LLSOutTemp);
	ARS: ArithmeticRightShifter PORT MAP(In1,ShiftAmount,ARSOutTemp);
	LRS: LogicalRightShifter PORT MAP(In1,ShiftAmount,LRSOutTemp);
	WITH ShiftType SELECT
	Output <= LLSOutTemp WHEN "00",
				LRSOutTemp WHEN "01",
				ARSOutTemp WHEN "10",
				In1 WHEN "11",
				"0000000000000000" WHEN OTHERS;--spit nothing back when input is not understood
end Behavioral;

