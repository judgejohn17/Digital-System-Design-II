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
use IEEE.NUMERIC_STD.ALL;

entity Multiplier_8 is
--Correct in and outs
	Port (	DATAIN1, DATAIN2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
						DATAOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)) ;
end Multiplier_8;

architecture Structural of Multiplier_8 is
--The 16 bit adder is made of 16 different fulladders
	Component fulladder
		Port(X,Y,Ci:	IN		STD_LOGIC;
				Co,Sum:	OUT	STD_LOGIC);
	end component;
	Component andgate
		Port(X,Y:	IN		STD_LOGIC;
				Z:	OUT	STD_LOGIC);
	end component;
	Signal C0,C1,C2,C3,C4,C5,C6,C7: STD_LOGIC_VECTOR(7 downto 0);--Carry signals for each line of FAs
	--Array for Carrys
	type CarryOut is array (7 downto 0) of std_logic_vector(7 downto 0); 
	signal C : CarryOut;
	--Array for out of FA
	type OutOfFAs is array (6 downto 0) of std_logic_vector(7 downto 0); 
	signal OutOfFA : OutOfFAs;   --OutOfFA is a 7 element array of 8-bit vectors.
	--Array for out of ANDS
	type OutOfANDSs is array (7 downto 0) of std_logic_vector(7 downto 0); 
	signal OutOfAND : OutOfANDSs;   --OutOfAND is a 8 element array of 8-bit vectors.
	--Signals for Arrays
	signal ZeroSignal: STD_LOGIC := '0';--For FA that gets input of 0 (used to be IntoFA8)
	signal DATAOUTtemp: STD_LOGIC_VECTOR(15 downto 0);
	signal DATAOUTFAs: STD_LOGIC_VECTOR(13 downto 0);
	signal DATAOUTAND: STD_LOGIC;
	signal DATAOUTCarry: STD_LOGIC;
begin
	

	--L1: for i in 0 to 7 generate
		--L2: for j in 0 to 7 generate 
				--OutOfAND(i)(j) <= DATAIN1(i) AND DATAIN2(j);
		--end generate L2;
	--end generate L1;
	ANDS0: FOR i IN 0 to 7 generate
		A0: andgate PORT MAP(DATAIN1(0),DATAIN2(i),OutOfAND(0)(i));
	END generate ANDS0;
	ANDS1: FOR j IN 0 to 7 generate
		A1: andgate PORT MAP(DATAIN1(1),DATAIN2(j),OutOfAND(1)(j));
	END generate ANDS1;
	ANDS2: FOR k IN 0 to 7 generate
		A2: andgate PORT MAP(DATAIN1(2),DATAIN2(k),OutOfAND(2)(k));
	END generate ANDS2;
	ANDS3: FOR l IN 0 to 7 generate
		A3: andgate PORT MAP(DATAIN1(3),DATAIN2(l),OutOfAND(3)(l));
	END generate ANDS3;
	ANDS4: FOR m IN 0 to 7 generate
		A4: andgate PORT MAP(DATAIN1(4),DATAIN2(m),OutOfAND(4)(m));
	END generate ANDS4;
	ANDS5: FOR n IN 0 to 7 generate
		A5: andgate PORT MAP(DATAIN1(5),DATAIN2(n),OutOfAND(5)(n));
	END generate ANDS5;
	ANDS6: FOR o IN 0 to 7 generate
		A6: andgate PORT MAP(DATAIN1(6),DATAIN2(o),OutOfAND(6)(o));
	END generate ANDS6;
	ANDS7: FOR p IN 0 to 7 generate
		A7: andgate PORT MAP(DATAIN1(7),DATAIN2(p),OutOfAND(7)(p));
	END generate ANDS7;
	
	--L1: for z in 0 to 7 generate 
		--OutOfAND(0)(z) <= DATAIN1(0) AND DATAIN2(z);
		--OutOfAND(1)(z) <= DATAIN1(1) AND DATAIN2(z);
		--OutOfAND(2)(z) <= DATAIN1(2) AND DATAIN2(z);
		--OutOfAND(3)(z) <= DATAIN1(3) AND DATAIN2(z);
		--OutOfAND(4)(z) <= DATAIN1(4) AND DATAIN2(z);
		--OutOfAND(5)(z) <= DATAIN1(5) AND DATAIN2(z);
		--OutOfAND(6)(z) <= DATAIN1(6) AND DATAIN2(z);
		--OutOfAND(7)(z) <= DATAIN1(7) AND DATAIN2(z);
	--end generate L1;
	
	FA00: fulladder PORT MAP(OutOfAND(1)(0),OutOfAND(0)(1),ZeroSignal,    C(0)(0),OutofFA(0)(0));
	FA01: fulladder PORT MAP(OutOfAND(2)(0),OutOfAND(1)(1),OutOfAND(0)(2),C(0)(1),OutofFA(0)(1));
	FA02: fulladder PORT MAP(OutOfAND(3)(0),OutOfAND(2)(1),OutOfAND(1)(2),C(0)(2),OutofFA(0)(2));
	FA03: fulladder PORT MAP(OutOfAND(4)(0),OutOfAND(3)(1),OutOfAND(2)(2),C(0)(3),OutofFA(0)(3));
	FA04: fulladder PORT MAP(OutOfAND(5)(0),OutOfAND(4)(1),OutOfAND(3)(2),C(0)(4),OutofFA(0)(4));
	FA05: fulladder PORT MAP(OutOfAND(6)(0),OutOfAND(5)(1),OutOfAND(4)(2),C(0)(5),OutofFA(0)(5));
	FA06: fulladder PORT MAP(OutOfAND(7)(0),OutOfAND(6)(1),OutOfAND(5)(2),C(0)(6),OutofFA(0)(6));
	FA07: fulladder PORT MAP(ZeroSignal    ,OutOfAND(7)(1),OutOfAND(6)(2),C(0)(7),OutofFA(0)(7));
	
	FA10: fulladder PORT MAP(OutofFA(0)(1),ZeroSignal,    C(0)(0),C(1)(0),OutofFA(1)(0));
	FA11: fulladder PORT MAP(OutofFA(0)(2),OutOfAND(0)(3),C(0)(1),C(1)(1),OutofFA(1)(1));
	FA12: fulladder PORT MAP(OutofFA(0)(3),OutOfAND(1)(3),C(0)(2),C(1)(2),OutofFA(1)(2));
	FA13: fulladder PORT MAP(OutofFA(0)(4),OutOfAND(2)(3),C(0)(3),C(1)(3),OutofFA(1)(3));
	FA14: fulladder PORT MAP(OutofFA(0)(5),OutOfAND(3)(3),C(0)(4),C(1)(4),OutofFA(1)(4));
	FA15: fulladder PORT MAP(OutofFA(0)(6),OutOfAND(4)(3),C(0)(5),C(1)(5),OutofFA(1)(5));
	FA16: fulladder PORT MAP(OutofFA(0)(7),OutOfAND(5)(3),C(0)(6),C(1)(6),OutofFA(1)(6));
	FA17: fulladder PORT MAP(OutOfAND(7)(2),OutOfAND(6)(3),C(0)(7),C(1)(7),OutofFA(1)(7));
	
	FA20: fulladder PORT MAP(OutofFA(1)(1),ZeroSignal,    C(1)(0),C(2)(0),OutofFA(2)(0));
	FA21: fulladder PORT MAP(OutofFA(1)(2),OutOfAND(0)(4),C(1)(1),C(2)(1),OutofFA(2)(1));
	FA22: fulladder PORT MAP(OutofFA(1)(3),OutOfAND(1)(4),C(1)(2),C(2)(2),OutofFA(2)(2));
	FA23: fulladder PORT MAP(OutofFA(1)(4),OutOfAND(2)(4),C(1)(3),C(2)(3),OutofFA(2)(3));
	FA24: fulladder PORT MAP(OutofFA(1)(5),OutOfAND(3)(4),C(1)(4),C(2)(4),OutofFA(2)(4));
	FA25: fulladder PORT MAP(OutofFA(1)(6),OutOfAND(4)(4),C(1)(5),C(2)(5),OutofFA(2)(5));
	FA26: fulladder PORT MAP(OutofFA(1)(7),OutOfAND(5)(4),C(1)(6),C(2)(6),OutofFA(2)(6));
	FA27: fulladder PORT MAP(OutOfAND(7)(3),OutOfAND(6)(4),C(1)(7),C(2)(7),OutofFA(2)(7));
	
	FA30: fulladder PORT MAP(OutofFA(2)(1),ZeroSignal,    C(2)(0),C(3)(0),OutofFA(3)(0));
	FA31: fulladder PORT MAP(OutofFA(2)(2),OutOfAND(0)(5),C(2)(1),C(3)(1),OutofFA(3)(1));
	FA32: fulladder PORT MAP(OutofFA(2)(3),OutOfAND(1)(5),C(2)(2),C(3)(2),OutofFA(3)(2));
	FA33: fulladder PORT MAP(OutofFA(2)(4),OutOfAND(2)(5),C(2)(3),C(3)(3),OutofFA(3)(3));
	FA34: fulladder PORT MAP(OutofFA(2)(5),OutOfAND(3)(5),C(2)(4),C(3)(4),OutofFA(3)(4));
	FA35: fulladder PORT MAP(OutofFA(2)(6),OutOfAND(4)(5),C(2)(5),C(3)(5),OutofFA(3)(5));
	FA36: fulladder PORT MAP(OutofFA(2)(7),OutOfAND(5)(5),C(2)(6),C(3)(6),OutofFA(3)(6));
	FA37: fulladder PORT MAP(OutOfAND(7)(4),OutOfAND(6)(5),C(2)(7),C(3)(7),OutofFA(3)(7));
	
	FA40: fulladder PORT MAP(OutofFA(3)(1),ZeroSignal,    C(3)(0),C(4)(0),OutofFA(4)(0));
	FA41: fulladder PORT MAP(OutofFA(3)(2),OutOfAND(0)(6),C(3)(1),C(4)(1),OutofFA(4)(1));
	FA42: fulladder PORT MAP(OutofFA(3)(3),OutOfAND(1)(6),C(3)(2),C(4)(2),OutofFA(4)(2));
	FA43: fulladder PORT MAP(OutofFA(3)(4),OutOfAND(2)(6),C(3)(3),C(4)(3),OutofFA(4)(3));
	FA44: fulladder PORT MAP(OutofFA(3)(5),OutOfAND(3)(6),C(3)(4),C(4)(4),OutofFA(4)(4));
	FA45: fulladder PORT MAP(OutofFA(3)(6),OutOfAND(4)(6),C(3)(5),C(4)(5),OutofFA(4)(5));
	FA46: fulladder PORT MAP(OutofFA(3)(7),OutOfAND(5)(6),C(3)(6),C(4)(6),OutofFA(4)(6));
	FA47: fulladder PORT MAP(OutOfAND(7)(5),OutOfAND(6)(6),C(3)(7),C(4)(7),OutofFA(4)(7));
	
	FA50: fulladder PORT MAP(OutofFA(4)(1),ZeroSignal,    C(4)(0),C(5)(0),OutofFA(5)(0));
	FA51: fulladder PORT MAP(OutofFA(4)(2),OutOfAND(0)(7),C(4)(1),C(5)(1),OutofFA(5)(1));
	FA52: fulladder PORT MAP(OutofFA(4)(3),OutOfAND(1)(7),C(4)(2),C(5)(2),OutofFA(5)(2));
	FA53: fulladder PORT MAP(OutofFA(4)(4),OutOfAND(2)(7),C(4)(3),C(5)(3),OutofFA(5)(3));
	FA54: fulladder PORT MAP(OutofFA(4)(5),OutOfAND(3)(7),C(4)(4),C(5)(4),OutofFA(5)(4));
	FA55: fulladder PORT MAP(OutofFA(4)(6),OutOfAND(4)(7),C(4)(5),C(5)(5),OutofFA(5)(5));
	FA56: fulladder PORT MAP(OutofFA(4)(7),OutOfAND(5)(7),C(4)(6),C(5)(6),OutofFA(5)(6));
	FA57: fulladder PORT MAP(OutOfAND(7)(6),OutOfAND(6)(7),C(4)(7),C(5)(7),OutofFA(5)(7));
	
	FA60: fulladder PORT MAP(OutofFA(5)(1),ZeroSignal,C(5)(0),C(6)(0),OutofFA(6)(0));
	FA61: fulladder PORT MAP(OutofFA(5)(2),C(5)(1)		 ,C(6)(0),C(6)(1),OutofFA(6)(1));
	FA62: fulladder PORT MAP(OutofFA(5)(3),C(5)(2)		 ,C(6)(1),C(6)(2),OutofFA(6)(2));
	FA63: fulladder PORT MAP(OutofFA(5)(4),C(5)(3)		 ,C(6)(2),C(6)(3),OutofFA(6)(3));
	FA64: fulladder PORT MAP(OutofFA(5)(5),C(5)(4)		 ,C(6)(3),C(6)(4),OutofFA(6)(4));
	FA65: fulladder PORT MAP(OutofFA(5)(6),C(5)(5)		 ,C(6)(4),C(6)(5),OutofFA(6)(5));
	FA66: fulladder PORT MAP(OutofFA(5)(7),C(5)(6)		 ,C(6)(5),C(6)(6),OutofFA(6)(6));
	FA67: fulladder PORT MAP(OutofAND(7)(7),C(5)(7)	 ,C(6)(6),C(6)(7),OutofFA(6)(7));
	--Generate Structure
	
	--FABEGINLINE0: fulladder PORT MAP(OutOfAND(0)(1),OutOfAND(1)(0),ZeroSignal,C0(0),OutofFA(0)(0));
	--FALINE0: for i in 1 to 6 generate --1 less than line since last FA gets 0 as input
		--FA0: fulladder PORT MAP(OutOfAND(0)(i+1),OutOfAND(1)(i),OutOfAND(2)(i-1),C0(i),OutofFA(0)(i));--Loop to generate FAs
	--end generate FALINE0;
	--FAENDLINE0: fulladder PORT MAP(ZeroSignal,OutOfAND(1)(7),OutOfAND(2)(6),C0(7),OutofFA(0)(7));--Need this because input of last is 0
	
	--FABEGINLINE1: fulladder PORT MAP(OutofFA(0)(1),ZeroSignal,C0(0),C1(0),OutofFA(1)(0));
	--FALINE1: for j in 1 to 6 generate --1 less than line since last FA gets cout of last FA on previous line as input
		--FA1: fulladder PORT MAP(OutOfFA(0)(j+1),OutOfAND(3)(j-1),C0(j),C1(j),OutofFA(1)(j));--Loop to generate FAs
	--end generate FALINE1;
	--FAENDLINE1: fulladder PORT MAP(OutOfAND(2)(7),OutOfAND(3)(6),C0(7),C1(7),OutofFA(1)(7));--Need this because input of last is Out of FA7 on previous line
	
	--FABEGINLINE2: fulladder PORT MAP(OutofFA(1)(1),ZeroSignal,C1(0),C2(0),OutofFA(2)(0));
	--FALINE2: for k in 1 to 6 generate --1 less than line since last FA gets 0 as input
		--FA2: fulladder PORT MAP(OutOfFA(1)(k+1),OutOfAND(4)(k-1),C1(k),C2(k),OutofFA(2)(k));--Loop to generate FAs
	--end generate FALINE2;
	--FAENDLINE2: fulladder PORT MAP(OutOfAND(3)(7),OutOfAND(4)(6),C1(7),C2(7),OutofFA(2)(7));--Need this because input of last is Out of FA7 on previous line
	
	--FABEGINLINE3: fulladder PORT MAP(OutofFA(2)(1),ZeroSignal,C2(0),C3(0),OutofFA(3)(0));
	--FALINE3: for l in 1 to 6 generate --1 less than line since last FA gets 0 as input
		--FA3: fulladder PORT MAP(OutOfFA(2)(l+1),OutOfAND(5)(l-1),C2(l),C3(l),OutofFA(3)(l));--Loop to generate FAs
	--end generate FALINE3;
	--FAENDLINE3: fulladder PORT MAP(OutOfAND(5)(6),OutOfAND(4)(7),C2(7),C3(7),OutofFA(3)(7));--Need this because input of last is Out of FA7 on previous line
	
	--FABEGINLINE4: fulladder PORT MAP(OutofFA(3)(1),ZeroSignal,C3(0),C4(0),OutofFA(4)(0));
	--FALINE4: for m in 1 to 6 generate --1 less than line since last FA gets 0 as input
		--FA4: fulladder PORT MAP(OutOfFA(3)(m+1),OutOfAND(6)(m-1),C3(m),C4(m),OutofFA(4)(m));--Loop to generate FAs
	--end generate FALINE4;
	--FAENDLINE4: fulladder PORT MAP(OutOfAND(6)(6),OutOfAND(5)(7),C3(7),C4(7),OutofFA(4)(7));--Need this because input of last is Out of FA7 on previous line
	
	--FABEGINLINE5: fulladder PORT MAP(OutofFA(4)(1),ZeroSignal,C4(0),C5(0),OutofFA(5)(0));
	--FALINE5: for n in 1 to 6 generate --1 less than line since last FA gets 0 as input
		--FA5: fulladder PORT MAP(OutOfFA(4)(n+1),OutOfAND(7)(n-1),C4(n),C5(n),OutofFA(5)(n));--Loop to generate FAs
	--end generate FALINE5;
	--FAENDLINE5: fulladder PORT MAP(OutOfAND(6)(7),OutOfAND(7)(6),C4(7),C5(7),OutofFA(5)(7));--Need this because input of last is Out of FA7 on previous line
	
	--FABEGINLINE6: fulladder PORT MAP(OutofFA(5)(1),ZeroSignal,C5(0),C6(0),OutofFA(6)(0));
	--FALINE6: for o in 1 to 6 generate --1 less than line since last FA gets 0 as input
		--FA6: fulladder PORT MAP(OutOfFA(5)(o+1),C5(o),C6(o-1),C6(o),OutofFA(6)(o));--Loop to generate FAs
	--end generate FALINE6;
	--FAENDLINE6: fulladder PORT MAP(OutOfAND(7)(7),C5(7),C6(7),OutofFA(6)(7));--Need this because input of last is Out of FA7 on previous line
	DATAOUTCarry <= C(6)(7);
	DATAOUTFAs <=(OutOfFA(6)(7) & OutOfFA(6)(6) & OutOfFA(6)(5) & OutOfFA(6)(4) & OutOfFA(6)(3) & OutOfFA(6)(2) & OutOfFA(6)(1) & OutOfFA(6)(0) & OutOfFA(5)(0) & OutOfFA(4)(0) & OutOfFA(3)(0) & OutOfFA(2)(0) & OutOfFA(1)(0)& OutOfFA(0)(0));
	DATAOUTAND <= OutOfAND(0)(0);
	DATAOUTtemp <= (DATAOUTCarry & DATAOUTFAs & DATAOUTAND);
	DATAOUT <= DATAOUTtemp;
	
end Structural;

