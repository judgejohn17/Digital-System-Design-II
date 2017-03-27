-------------------------------------------------
-- File:	IO_Bus.vhd
-- Entity:	IO_BUS
-- Architecture: Behavioral
-- Author: John Judge
-- Created: 5/9/16
-- Modified: 5/11/16
-- VHDL'93
-- Description: The following is the entity and
--	architectural description of an IO_Bus
-- using an SRAM unit and Moore State Machine
-- a decoder and seven segment display have been added 
-- for the FPGA implementation
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use work.bin_bcd.all;

entity IO_Bus is
    Port ( bus_id : in  STD_LOGIC_Vector (7 downto 0);
           reset : in  STD_LOGIC;
           rw : in  STD_LOGIC;
           ready : in  STD_LOGIC;
           burst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           addr_in : in  STD_LOGIC_VECTOR (2 downto 0);
           data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           addr_out : out  STD_LOGIC_VECTOR (2 downto 0);
           data_out : out  STD_LOGIC_VECTOR (3 downto 0);
			  unused_anode      : out STD_LOGIC; -- unused an3
			  hund_anode_out    : out STD_LOGIC; -- digilent an2
		     tens_anode_out    : out STD_LOGIC; -- digilent an3
           ones_anode_out    : out STD_LOGIC; -- digilent an4
           CAn_out           : out STD_LOGIC;
           CBn_out           : out STD_LOGIC;
           CCn_out           : out STD_LOGIC;
           CDn_out           : out STD_LOGIC;
           CEn_out           : out STD_LOGIC;
           CFn_out           : out STD_LOGIC;
           CGn_out           : out STD_LOGIC);
end IO_Bus;

architecture Behavioral of IO_Bus is
	--Signals
	signal oe_wire					: STD_LOGIC;
	signal we_wire					: STD_LOGIC;
	signal addr1_wire				: STD_LOGIC := '0';
	signal addr2_wire 			: STD_LOGIC := '0';
	signal o_data_temp    	   : STD_LOGIC_VECTOR (3 downto 0);
	signal bcd_wire_1				: STD_LOGIC_VECTOR (11 downto 0);
	signal bcd_wire_2          : STD_LOGIC_VECTOR (11 downto 0);
	signal hund_disp_n_wire  	: STD_LOGIC_VECTOR (6 downto 0);
	signal tens_disp_n_wire  	: STD_LOGIC_VECTOR (6 downto 0);
	signal ones_disp_n_wire  	: STD_LOGIC_VECTOR (6 downto 0);
	Signal Addr1_and_2		   : std_logic_vector (1 downto 0):= "00";
	Signal not_Reset 				: STD_LOGIC;
	--Components
	
	--Seven Seg Display
	component seven_seg_disp
    Port ( hund_disp_n  : in  STD_LOGIC_VECTOR (6 downto 0);
	        tens_disp_n  : in  STD_LOGIC_VECTOR (6 downto 0);
           ones_disp_n  : in  STD_LOGIC_VECTOR (6 downto 0);
	        clk          : in  STD_LOGIC; -- digilent board generated clock
			  reset_n      : in  STD_LOGIC; -- switch input
			  unused_anode : out STD_LOGIC; -- unused an3
			  hund_anode   : out STD_LOGIC; -- digilent an2
	        tens_anode   : out STD_LOGIC; -- digilent an3
	        ones_anode   : out STD_LOGIC; -- digilent an4
			  CAn,CBn,CCn,CDn,CEn,CFn,CGn : out STD_LOGIC); -- digilent cathode - used for all displays\
	end component;
	--Seven Seg Dec
	component seven_seg_dec
    Port ( clk : in std_logic;
        bcd : in std_logic_vector(11 downto 0);  --BCD input
        hund_disp_n, tens_disp_n, ones_disp_n : out  STD_LOGIC_VECTOR (6 downto 0)); -- digilent cathode - used for all displays
	end component;
	--Memory Controller
	component MemoryController is
    Port ( bus_id : in  STD_LOGIC_VECTOR (7 downto 0);
           reset : in  STD_LOGIC;
           rw : in  STD_LOGIC;
           ready : in  STD_LOGIC;
           burst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           addr_in : in  STD_LOGIC_VECTOR (2 downto 0);
           oe : out  STD_LOGIC;
           we : out  STD_LOGIC;
           addr1 : out  STD_LOGIC;
			  addr2 : out  STD_LOGIC);
	end component;
	--SRAM
	component SRAM is
    Port ( i_oe : in  STD_LOGIC;--Read Enable
           i_we : in  STD_LOGIC;--Write Enable
           i_addr : in  STD_LOGIC_VECTOR (2 downto 0);--Address 
           i_data : in  STD_LOGIC_VECTOR (3 downto 0);--Data to write
			  addr1_offset : in STD_LOGIC;--Offset 1
			  addr2_offset : in STD_LOGIC;--Offset 2
			  reset : in STD_LOGIC;
           o_data : out  STD_LOGIC_VECTOR (3 downto 0));--Output of register
	end component;
begin
	--Signals
	bcd_wire_1 <= "00000000" & o_data_temp;
	bcd_wire_2 <= Bin_To_BCD(bcd_wire_1);
	not_reset <= not reset;
	--Instances 
	--Seven Seg Decoder
	SSDEC : seven_seg_dec
		port map (
			clk => clk,
			bcd => bcd_wire_2,
			hund_disp_n => hund_disp_n_wire, 
			tens_disp_n => tens_disp_n_wire,
			ones_disp_n => ones_disp_n_wire);
	--Seven Seg Display
	SSD : seven_seg_disp
		port map (
			hund_disp_n       => hund_disp_n_wire,
			tens_disp_n       => tens_disp_n_wire,
			ones_disp_n       => ones_disp_n_wire,
			clk               => clk,
			reset_n           => not_reset,
			unused_anode      => unused_anode,
			hund_anode        => hund_anode_out,
			tens_anode        => tens_anode_out,
			ones_anode        => ones_anode_out,
			CAn               => CAn_out,
			CBn               => CBn_out,
			CCn               => CCn_out,
			CDn               => CDn_out,
			CEn               => CEn_out,
			CFn               => CFn_out,
			CGn               => CGn_out);
	--Memory Conrtoller
	MC : MemoryController
		port map ( 
			bus_id => bus_id,
         reset => reset,
         rw => rw,
         ready => ready,
         burst => burst,
         clk => clk,
         addr_in => addr_in,
         oe => oe_wire,
         we => we_wire,
         addr1 => addr1_wire,
			addr2 => addr2_wire);
	--SRAM
	SRAM_0 : SRAM 
		port map (
			i_oe => oe_wire,
         i_we => we_wire,
         i_addr => addr_in,
         i_data => data_in,
			addr1_offset => addr1_wire, 
			addr2_offset => addr2_wire,
			reset => reset,
         o_data => o_data_temp);
	--Outputs
	data_out <= o_data_temp;
	Addr1_and_2 <=  addr2_wire & addr1_wire; 
	addr_out <= addr_in + Addr1_and_2;
end Behavioral;

