-------------------------------------------------
-- File:	Multiplier_8.vhd
-- Entity: Multiplier_8
-- Architecture:	Behavioral 
-- Author: John Judge
-- Created: 3/3/16
-- Modified: 3/10/16
-- VHDL'93
-- Description: The following is an 8 but multiplier
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplier_8 is
--Correct in and outs
	Port (	DATAIN1, DATAIN2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
						DATAOUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)) ;
end Multiplier_8;

architecture Structural of Multiplier_8 is
--The 16 bit adder is made of 16 different fulladders
	Component fulladder
		Port(X,Y,Ci:	IN		STD_LOGIC;
				Co,Sum:	OUT	STD_LOGIC);
	end component;
	Signal C0,C1,C2,C3,C4,C5,C6,C7: STD_LOGIC_VECTOR(8 downto 0);--Carry signals for each line of FAs
	--Array for out of FA
	type OutOfFAs is array (6 downto 0) of std_logic_vector(7 downto 0); 
	signal OutOfFA : OutOfFAs;   --OutOfFA is a 7 element array of 8-bit vectors.
	--Array for out of ANDS
	type OutOfANDSs is array (7 downto 0) of std_logic_vector(7 downto 0); 
	signal OutOfAND : OutOfANDSs;   --OutOfAND is a 8 element array of 8-bit vectors.
	--Signals for Arrays
	signal TempANDs0,TempANDs1,TempANDs2,TempANDs3,TempANDs4,TempANDs5,TempANDs6,TempANDs7: STD_LOGIC_VECTOR(7 downto 0);--Each line of ANDS
	signal TempFAs0,TempFAs1,TempFAs2,TempFAs3,TempFAs4,TempFAs5,TempFAs6,TempFAs7: STD_LOGIC_VECTOR(7 downto 0);--Each line of FAs
	signal IntoFA8: STD_LOGIC;--For FA that gets input of 0
	signal DATAOUTTemp: STD_LOGIC_VECTOR(7 downto 0); --Temp for output
begin
	C0(0) <= '0'; --Initialize first carry for each line of FA 
	C1(0) <= '0';
	C2(0) <= '0';
	C3(0) <= '0';
	C4(0) <= '0';
	C5(0) <= '0';
	C6(0) <= '0';
	C7(0) <= '0';
	IntoFA8 <= '0';
	L1: for i in 0 to 7 generate --Initialize all TempAND Vectors
			TempANDs0(i) <= DATAIN1(i) AND DATAIN2(0);
			TempANDs1(i) <= DATAIN1(i) AND DATAIN2(1);
			TempANDs2(i) <= DATAIN1(i) AND DATAIN2(2);
			TempANDs3(i) <= DATAIN1(i) AND DATAIN2(3);
			TempANDs4(i) <= DATAIN1(i) AND DATAIN2(4);
			TempANDs5(i) <= DATAIN1(i) AND DATAIN2(5);
			TempANDs6(i) <= DATAIN1(i) AND DATAIN2(6);
			TempANDs7(i) <= DATAIN1(i) AND DATAIN2(7);
	end generate L1;
	
	--Store temps in AND ARRAY
	OutOfAND(0) <= TempANDs0;
	OutOfAND(1) <= TempANDs1;
	OutOfAND(2) <= TempANDs2;
	OutOfAND(3) <= TempANDs3;
	OutOfAND(4) <= TempANDs4;
	OutOfAND(5) <= TempANDs5;
	OutOfAND(6) <= TempANDs6;
	OutOfAND(7) <= TempANDs7;
	--Store temps in FA ARRAY
	OutofFA(0) <= TempFAs0;
	OutofFA(1) <= TempFAs1;
	OutofFA(2) <= TempFAs2;
	OutofFA(3) <= TempFAs3;
	OutofFA(4) <= TempFAs4;
	OutofFA(5) <= TempFAs5;
	OutofFA(5) <= TempFAs6;
	--Generate Structure
	FALINE0: for i in 0 to 6 generate --1 less than line since last FA gets 0 as input
		FA: fulladder PORT MAP(OutOfAND(0)(i),OutOfAND(1)(i),C0(i),C0(i+1),OutofFA(0)(i));--Loop to generate FAs
	end generate FALINE0;--Thing(0)(0)
	FAENDLINE0: fulladder PORT MAP(IntoFA8,OutOfAND(1)(7),C0(7),C0(8),OutofFA(0)(7));--Need this because input of last is 0
	
	FALINE1: for i in 0 to 6 generate --1 less than line since last FA gets cout of last FA on previous line as input
		FA: fulladder PORT MAP(OutOfFA(0)(i),OutOfAND(2)(i),C1(i),C1(i+1),OutofFA(1)(i));--Loop to generate FAs
	end generate FALINE1;
	FAENDLINE1: fulladder PORT MAP(C0(8),OutOfAND(2)(7),C1(7),C1(8),OutofFA(1)(7));--Need this because input of last is Out of FA7 on previous line
	
	FALINE2: for i in 0 to 6 generate --1 less than line since last FA gets 0 as input
		FA: fulladder PORT MAP(OutOfFA(1)(i),OutOfAND(3)(i),C2(i),C2(i+1),OutofFA(2)(i));--Loop to generate FAs
	end generate FALINE2;
	FAENDLINE2: fulladder PORT MAP(C1(8),OutOfAND(3)(7),C2(7),C2(8),OutofFA(2)(7));--Need this because input of last is Out of FA7 on previous line
	
	FALINE3: for i in 0 to 6 generate --1 less than line since last FA gets 0 as input
		FA: fulladder PORT MAP(OutOfFA(2)(i),OutOfAND(4)(i),C3(i),C3(i+1),OutofFA(3)(i));--Loop to generate FAs
	end generate FALINE3;
	FAENDLINE3: fulladder PORT MAP(C2(8),OutOfAND(4)(7),C3(7),C3(8),OutofFA(3)(7));--Need this because input of last is Out of FA7 on previous line
	
	FALINE4: for i in 0 to 6 generate --1 less than line since last FA gets 0 as input
		FA: fulladder PORT MAP(OutOfFA(3)(i),OutOfAND(5)(i),C4(i),C4(i+1),OutofFA(4)(i));--Loop to generate FAs
	end generate FALINE4;
	FAENDLINE4: fulladder PORT MAP(C3(8),OutOfAND(5)(7),C4(7),C4(8),OutofFA(4)(7));--Need this because input of last is Out of FA7 on previous line
	
	FALINE5: for i in 0 to 6 generate --1 less than line since last FA gets 0 as input
		FA: fulladder PORT MAP(OutOfFA(4)(i),OutOfAND(6)(i),C5(i),C5(i+1),OutofFA(5)(i));--Loop to generate FAs
	end generate FALINE5;
	FAENDLINE5: fulladder PORT MAP(C4(8),OutOfAND(6)(7),C5(7),C5(8),OutofFA(5)(7));--Need this because input of last is Out of FA7 on previous line
	
	FALINE6: for i in 0 to 6 generate --1 less than line since last FA gets 0 as input
		FA: fulladder PORT MAP(OutOfFA(5)(i),OutOfAND(7)(i),C6(i),C6(i+1),OutofFA(6)(i));--Loop to generate FAs
	end generate FALINE6;
	FAENDLINE6: fulladder PORT MAP(C5(8),OutOfAND(7)(7),C6(7),C6(8),OutofFA(6)(7));--Need this because input of last is Out of FA7 on previous line
	--Last 8 bits of result concatanated with 8 preceding 0s
	DATAOUTTemp <= (OutOfFA(6)(0),OutOfFA(5)(0),OutOfFA(4)(0),OutOfFA(3)(0),OutOfFA(2)(0),OutOfFA(1)(0),OutOfFA(0)(0),OutOfAND(0)(0));
	DATAOUT <= "00000000"&DATAOUTTemp; --Set output
end Structural;

