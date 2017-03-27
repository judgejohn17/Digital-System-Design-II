-------------------------------------------------
-- File:	ALU.vhd
-- Entity:	16 Bit ALU
-- Architecture:	Structural
-- Author: John Judge
-- Created: 3/3/16
-- Modified: 3/10/16
-- VHDL'93
-- Description: The following is the entity and
--	structural description the top level ALU for
-- this project
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
	Port(		Input1,Input2	: 	IN STD_LOGIC_VECTOR (15 downto 0);
				Control			: 	IN STD_LOGIC_VECTOR (3 downto 0);
				Output			: 	OUT STD_LOGIC_VECTOR (15 downto 0));
end ALU;

architecture Structural of ALU is
	--Adder/Sub
	Component AdderSub16Bit is
		Port(			In1		:	IN		STD_LOGIC_VECTOR(15 downto 0);
						In2		:	IN		STD_LOGIC_VECTOR(15 downto 0);
						Cin		:	IN		STD_LOGIC;
						Output	: 	OUT	STD_LOGIC_VECTOR(15 downto 0));
	END Component;
	--Logical Unit 
	Component LogicalUnit is 
		Port(			In1		:	In STD_LOGIC_VECTOR (15 downto 0);
						In2		:	In STD_LOGIC_VECTOR(15 downto 0);
						OutOR		:	Out STD_LOGIC_VECTOR(15 downto 0);
						OutNOT	:	Out STD_LOGIC_VECTOR(15 downto 0);	
						OutAND	:	Out STD_LOGIC_VECTOR(15 downto 0);
						OutXOR	:	Out STD_LOGIC_VECTOR(15 downto 0));
	END Component;
	--Multiplier 
	Component Multiplier_8 is 
		Port (		DATAIN1, DATAIN2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
						DATAOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)) ;
	END Component;
	--MUX 
	Component Mux7_1 is 
		Port (		AdderIn,MultIn,ShifterIn,ORIn,NOTIn,ANDIn,XORIn: IN STD_LOGIC_VECTOR (15 downto 0);
						ControlSelect: IN STD_LOGIC_VECTOR (3 downto 0);
						Output: OUT STD_LOGIC_VECTOR (15 downto 0)); 
	END Component;
	--Shifter 
	Component Variable_Shifter_16 is 
		Port( 		In1		: 	IN STD_LOGIC_VECTOR(15 downto 0);
						ShiftAmount: IN STD_LOGIC_VECTOR(3 downto 0);
						ShiftType:	IN STD_LOGIC_VECTOR(1 downto 0);
						Output	:	OUT STD_LOGIC_VECTOR(15 downto 0));
	END Component;
	--Signals
	Signal AdderSub16Temp: STD_LOGIC_VECTOR(15 downto 0); --Temp for output
	Signal ORTemp: STD_LOGIC_VECTOR(15 downto 0); --Temp for output
	Signal NOTTemp: STD_LOGIC_VECTOR(15 downto 0); --Temp for output
	Signal ANDTemp: STD_LOGIC_VECTOR(15 downto 0); --Temp for output
	Signal XORTemp: STD_LOGIC_VECTOR(15 downto 0); --Temp for output
	Signal Multiplier_8Temp: STD_LOGIC_VECTOR(15 downto 0); --Temp for output
	Signal Variable_Shifter_16Temp: STD_LOGIC_VECTOR(15 downto 0); --Temp for output
	
begin
		AdderSub16Bit_0 			: AdderSub16Bit 	    port map(Input1,Input2,Control(0),AdderSub16Temp);
		LogicalUnit_0				: LogicalUnit 			 port map(Input1,Input2,ORTemp,NOTTemp,ANDTemp,XORTemp);
		Multiplier_8_0				: Multiplier_8 		 port map(Input1(7 downto 0),Input2(7 downto 0),Multiplier_8Temp);
		Variable_Shifter_16_0 	: Variable_Shifter_16 port map(Input1,Input2(3 downto 0),Control(1 downto 0),Variable_Shifter_16Temp);
		Mux7_1_0						: Mux7_1 				 port map(AdderSub16Temp,Multiplier_8Temp,Variable_Shifter_16Temp,ORTemp,NOTTemp,ANDTemp,XORTemp,Control,Output);
end Structural;

