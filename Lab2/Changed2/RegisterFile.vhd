-------------------------------------------------
-- File:	RegisterFile.vhd
-- Entity:	RegisterFile
-- Architecture:	Structural
-- Author: John Judge
-- Created: 2/18/16
-- Modified: 2/17/16
-- VHDL'93
-- Description: The following is the entity and
--	structural description of a RegisterFil. This
-- is a top level wrapper using a 3-8 decoder,
-- 16-bit 8to1 Multiplexer, and 8 16-bit Registers
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

--NEED TO MAP CORRECT. NAMES CAN OVERLAP. CHANGE THEM
entity RegisterFile is
	Port ( RD1,RD2 : in STD_LOGIC_VECTOR (2 downto 0);--Register Read Select
				WR : in STD_LOGIC_VECTOR (2 downto 0);--Register Write Select
				OUT1,OUT2: out STD_LOGIC_VECTOR (15 downto 0);--Register Read Data
				INPUT : in STD_LOGIC_VECTOR (15 downto 0); --Register Write Data (Data being written)
				WE : in STD_LOGIC;
				RESET : in STD_LOGIC;
				CLOCK : in STD_LOGIC);
end RegisterFile;
architecture Structural of RegisterFile is
--------------------------------------------
Component DECODER3to8 --Decoder 3to8 (Need 1)
	Port ( WR : in  STD_LOGIC_VECTOR (2 downto 0);
			WE: in STD_LOGIC;
         DATAOUT : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
--------------------------------------------
Component MUX8_1 --MUX 8to1 16-bit (Need 2)
	Generic (N:Integer := 16);
	Port ( DATAIN1, DATAIN2, DATAIN3, DATAIN4, DATAIN5, DATAIN6, DATAIN7, DATAIN8 : in  STD_LOGIC_VECTOR (N-1 downto 0);
			 RD : in STD_LOGIC_VECTOR (2 downto 0);
          DATAOUT : out  STD_LOGIC_VECTOR (N-1 downto 0));
end component;
--------------------------------------------
Component REGISTERMODULE --Register Module 16-bit (Need 8)
	Generic (N:Integer := 16);
	Port ( DATAIN : in  STD_LOGIC_VECTOR (N-1 downto 0);
           CLOCK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
			  WE : in  STD_LOGIC;
           DATAOUT : out  STD_LOGIC_VECTOR (N-1 downto 0));
end component;
--------------------------------------------
	SIGNAL DECOUT: STD_LOGIC_VECTOR(7 downto 0);--Wire coming out of Decoder
	SIGNAL RMOUT1:	STD_LOGIC_VECTOR(15 downto 0);--Output of Register 1
	SIGNAL RMOUT2:	STD_LOGIC_VECTOR(15 downto 0);--Output of Register 2
	SIGNAL RMOUT3:	STD_LOGIC_VECTOR(15 downto 0);--Output of Register 3
	SIGNAL RMOUT4:	STD_LOGIC_VECTOR(15 downto 0);--Output of Register 4
	SIGNAL RMOUT5:	STD_LOGIC_VECTOR(15 downto 0);--Output of Register 5
	SIGNAL RMOUT6:	STD_LOGIC_VECTOR(15 downto 0);--Output of Register 6
	SIGNAL RMOUT7:	STD_LOGIC_VECTOR(15 downto 0);--Output of Register 7
	SIGNAL RMOUT8:	STD_LOGIC_VECTOR(15 downto 0);--Output of Register 8
begin
	DEC1:		DECODER3to8			port map(WR(2 downto 0),WE,DECOUT(7 downto 0));
	MUX1:		MUX8_1				port map(RMOUT1(15 downto 0),RMOUT2(15 downto 0),RMOUT3(15 downto 0),RMOUT4(15 downto 0),
													RMOUT5(15 downto 0),RMOUT6(15 downto 0),RMOUT7(15 downto 0),RMOUT8(15 downto 0),
													RD1(2 downto 0),OUT1(15 downto 0));
	MUX2:		MUX8_1				port map(RMOUT1(15 downto 0),RMOUT2(15 downto 0),RMOUT3(15 downto 0),RMOUT4(15 downto 0),
													RMOUT5(15 downto 0),RMOUT6(15 downto 0),RMOUT7(15 downto 0),RMOUT8(15 downto 0),
													RD2(2 downto 0),OUT2(15 downto 0));
	RM1:		RegisterModule		port map(INPUT(15 downto 0),CLOCK,RESET,DECOUT(0),RMOUT1(15 downto 0));
	RM2:		RegisterModule		port map(INPUT(15 downto 0),CLOCK,RESET,DECOUT(1),RMOUT2(15 downto 0));
	RM3:		RegisterModule		port map(INPUT(15 downto 0),CLOCK,RESET,DECOUT(2),RMOUT3(15 downto 0));
	RM4:		RegisterModule		port map(INPUT(15 downto 0),CLOCK,RESET,DECOUT(3),RMOUT4(15 downto 0));
	RM5:		RegisterModule		port map(INPUT(15 downto 0),CLOCK,RESET,DECOUT(4),RMOUT5(15 downto 0));
	RM6:		RegisterModule		port map(INPUT(15 downto 0),CLOCK,RESET,DECOUT(5),RMOUT6(15 downto 0));
	RM7:		RegisterModule		port map(INPUT(15 downto 0),CLOCK,RESET,DECOUT(6),RMOUT7(15 downto 0));
	RM8:		RegisterModule		port map(INPUT(15 downto 0),CLOCK,RESET,DECOUT(7),RMOUT8(15 downto 0));
	
end Structural;
