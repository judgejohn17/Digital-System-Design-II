-------------------------------------------------
-- File:	AdderSub16Bit.vhd
-- Entity:	16 Bit Adder/Subtractor
-- Architecture:	Structural
-- Author: John Judge
-- Created: 3/3/16
-- Modified: 3/10/16
-- VHDL'93
-- Description: The following is the entity and
--	structural description of a 16-bit adder
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AdderSub16Bit is
	Port(In1:	IN		STD_LOGIC_VECTOR(15 downto 0);
			In2:	IN		STD_LOGIC_VECTOR(15 downto 0);
			Cin:	IN		STD_LOGIC;
			--Cout:	OUT	STD_LOGIC;
			Output: OUT	STD_LOGIC_VECTOR(15 downto 0));
end AdderSub16Bit;
	
architecture structural of AdderSub16Bit is
	--The 16 bit adder is made of 16 different fulladders
	Component fulladder
		Port(X,Y,Ci:	IN		STD_LOGIC;
				Co,Sum:	OUT	STD_LOGIC);
	end component;
	Signal C:	STD_LOGIC_VECTOR(15 downto 0);--Carry signals
	Signal Temp: STD_LOGIC_VECTOR(15 downto 0);--Control XOR Y (ADD/SUB functionality)
begin
	L1: for i in 0 to 15 generate 
		Temp(i)<=Cin xor In2(i);--XOR is Add/Sub Functionality 
	end generate L1;
	
	Gen_ADD: for i in 0 to 15 generate 
		FA: fulladder PORT MAP(In1(i),Temp(i),Cin,C(i),Output(i));--Loop to generate FAs
	end generate Gen_ADD;
	--Cout <= C(15) xor Output(15);--Cout. Not used anyway 
	
end structural;

