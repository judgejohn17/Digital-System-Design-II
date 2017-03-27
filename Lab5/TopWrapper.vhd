-------------------------------------------------
-- File:	MultiplierWrapper.VHD
-- Entity: Multiplier Wrapper
-- Architecture:	Behavioral
-- Author: John Judge
-- Created: 4/12/16
-- Modified: 4/12/16
-- VHDL'93
-- Description: The following is the entity and
--	Behavioral description of the top level diagram
-- used in Lab 5 
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.bin_bcd.all;

entity MultiplierWrapper is
	port(   A,B				: in  STD_LOGIC_VECTOR(3 downto 0);--Mult. Wrap. ins
			  test_mode_in,Clock,Reset : in STD_LOGIC; --Mult. Wrap. ins 
			  unused_anode : out STD_LOGIC; -- unused an3
			  hund_anode   : out STD_LOGIC; -- digilent an2
	        tens_anode   : out STD_LOGIC; -- digilent an3
	        ones_anode   : out STD_LOGIC; -- digilent an4
			  CAn,CBn,CCn,CDn,CEn,CFn,CGn : out STD_LOGIC;
			  output 		: out STD_LOGIC_VECTOR (11 downto 0)); -- digilent cathode - used for all displays
end MultiplierWrapper;

architecture Behavioral of MultiplierWrapper is
	--Mult Wrapper
	Component LFSR is
		port ( 	Clk : in  STD_LOGIC;
					TestMode : in STD_LOGIC;
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
			  TestMode : in STD_LOGIC;
           Signature: out  STD_LOGIC_VECTOR (7 downto 0));
	 end component; 
	 Component Multiplexer2to1 is
		Generic (N : integer);--generic
    Port ( Input1 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Input2 : in  STD_LOGIC_VECTOR (N-1 downto 0);
           Sel : in  STD_LOGIC;--1 bit select
           Output : out  STD_LOGIC_VECTOR (N-1 downto 0));
	 end component;
	--Seven Seg Dec
	component seven_seg_dec is
		port(	  clk : in std_logic;
					bcd : in std_logic_vector(11 downto 0);  --BCD input
					hund_disp_n, tens_disp_n, ones_disp_n : out  STD_LOGIC_VECTOR (6 downto 0)); -- digilent cathode - used for all displays
	end component;
	--Seven Seg Disp
	component seven_seg_disp is
    Port ( hund_disp_n  : in  STD_LOGIC_VECTOR (6 downto 0);
	        tens_disp_n  : in  STD_LOGIC_VECTOR (6 downto 0);
           ones_disp_n  : in  STD_LOGIC_VECTOR (6 downto 0);
	        clk          : in  STD_LOGIC; -- digilent board generated clock
			  reset_n      : in  STD_LOGIC; -- switch input
			  unused_anode : out STD_LOGIC; -- unused an3
			  hund_anode   : out STD_LOGIC; -- digilent an2
	        tens_anode   : out STD_LOGIC; -- digilent an3
	        ones_anode   : out STD_LOGIC; -- digilent an4
			  CAn,CBn,CCn,CDn,CEn,CFn,CGn : out STD_LOGIC); -- digilent cathode - used for all displays
	end component;
	component debouncer is 
		Port ( test_mode_in : in STD_LOGIC;
					clock : in STD_LOGIC;
					reset : in STD_LOGIC;
					test_mode :out STD_LOGIC);
	end component;
	
	--Signals
	Signal LFSROut : STD_LOGIC_VECTOR (7 downto 0);--Output of LFSR to the Multiplier
	Signal MultIn1, MultIn2 : STD_LOGIC_VECTOR (3 downto 0); --Output of MUX's (1&2) that go to the Multiplier
	Signal MultOut : STD_LOGIC_VECTOR (7 downto 0); --Output of Multiplier to MUX'3's input 
	Signal MISROut : STD_LOGIC_VECTOR (7 downto 0); --Ouptut of the MISR to MUX'3's input 
	Signal SignatureTemp : STD_LOGIC_VECTOR (7 downto 0); --Output of MUX'3 to BIN_to_BCD
	Signal bcd_wire_1, bcd_wire_2 : STD_LOGIC_VECTOR (11 downto 0);--The wires used to convert SignatureTemp to BCD for seven_seg_decoder
	Signal hund_disp_n_wire1, tens_disp_n_wire1, ones_disp_n_wire1 : STD_LOGIC_VECTOR (6 downto 0);
	Signal test_mode : STD_LOGIC;
	Signal Seven_Seg_Disp_RST : STD_LOGIC;--this shit is active low for some fucking reason so i need another signal
	
	
begin
	output <= bcd_wire_1;
	bcd_wire_1 <= "0000" & SignatureTemp;
	bcd_wire_2 <= Bin_To_BCD(bcd_wire_1);
	Seven_Seg_Disp_RST <= NOT Reset;
	--Instance declarations
	--Two 4 bit Multiplexers
		M1: Multiplexer2to1
			generic map (N => 4)
			port map (A,LFSROut(3 downto 0),test_mode,MultIn1);
		M2: Multiplexer2to1
			generic map (N => 4)
			port map (B,LFSROut(7 downto 4),test_mode,MultIn2);
		--One 8-bit Multiplexer
		M3: Multiplexer2to1
			generic map (N => 8)
			port map (MultOut,MISROut,test_mode,SignatureTemp);
		--LFSR
		LFSR1: LFSR
			port map (Clock,test_mode, Reset,LFSROut);
		--Multiplier
		Mult1: Multiplier_4x4
			port map (Clock, MultIn1, MultIn2, MultOut);
		--MISR
		MISR1: MISR
			port map (Clock,Reset,MultOut,test_mode,MISROut);
	
	--Seven Seg Decoder
	SevenSegDec: seven_seg_dec
		port map (Clock,bcd_wire_2,hund_disp_n_wire1, tens_disp_n_wire1, ones_disp_n_wire1); 
	--Seven Sed Display
	SevenSegDisp: seven_seg_disp
		port map (hund_disp_n_wire1, tens_disp_n_wire1, ones_disp_n_wire1,Clock,Seven_Seg_Disp_RST,
						unused_anode, hund_anode, tens_anode, ones_anode,CAn,
						CBn,CCn,CDn,CEn,CFn,CGn);
	--Debouncer
	D0 : debouncer 
		port map (test_mode_in, Clock, Reset, test_mode);
end Behavioral;

