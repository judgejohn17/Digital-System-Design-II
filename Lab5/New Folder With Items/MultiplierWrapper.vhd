----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:42:36 04/26/2016 
-- Design Name: 
-- Module Name:    MultiplierWrapper - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MultiplierWrapper is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           TestMode : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Signature : out  STD_LOGIC_VECTOR (7 downto 0));
end MultiplierWrapper;

architecture Structural of MultiplierWrapper is
	--Components
	Component LFSR is
		port ( 	Clk : in  STD_LOGIC;
				 Reset : in  STD_LOGIC;
            Output : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	Component Multiplier_4x4 is 
		port(
         clk : IN  std_logic;
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         p : OUT  std_logic_vector(7 downto 0)
        );
    end component;
	 Component MISR is 
		Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           DataIn : in  STD_LOGIC_VECTOR (7 downto 0);
           Signature: out  STD_LOGIC_VECTOR (7 downto 0));
	 end component; 
	 Component Multiplexer2to1 is
		Generic (N : integer);--generic
    Port ( Input1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Input2 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Sel : in  STD_LOGIC;--1 bit select
           Output : out  STD_LOGIC_VECTOR (N-1 downto 0));
	 end component;
	 --Signals
	 Signal MultIn1, MultIn2, LFSROut : STD_LOGIC_VECTOR (3 downto 0);
	 Signal MultOut, MISROut, SignatureTemp : STD_LOGIC_VECTOR (7 downto 0);
begin
		--Two 4 bit Multiplexers
		M1: Multiplexer2to1
			generic map (N => 4)
			port map (A,LFSROut(3 downto 0),TestMode,MultIn1);
		M2: Multiplexer2to1
			generic map (N => 4)
			port map (B,LFSROut(7 downto 4),TestMode,MultIn2);
		--One 8-bit Multiplexer
		M3: Multiplexer2to1
			generic map (N => 8)
			port map (MultOut,MISROut,TestMode,SignatureTemp);
		--LFSR
		LFSR1: LFSR
			port map (Clock,Reset,LFSROut);
		--Multiplier
		Mult1: Multiplier_4x4
			port map (Clock, MultIn1, MultIn2, MultOut);
		--MISR
		MISR1: MISR
			port map (Clock,Reset,MultOut,MISROut);
		--Assign Output
		
		--nois filter the test_mode_in signal must be true for 2 cycles
		--first
		
		Signature <= SignatureTemp;
end Structural;

