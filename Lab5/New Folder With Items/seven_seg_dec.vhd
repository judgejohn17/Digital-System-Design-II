-------------------------------------------------
-- File:	seven_seg_dec.VHD
-- Entity: Seven Segment Decoder
-- Architecture:	Behavioral
-- Author: John Judge
-- Created: 3/12/16
-- Modified: 3/12/16
-- VHDL'93
-- Description: The following is the entity and
--	Behavioral description of a seven segment decoder
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seven_seg_dec is
port(	  clk : in std_logic;
        bcd : in std_logic_vector(11 downto 0);  --BCD input
        hund_disp_n, tens_disp_n, ones_disp_n : out  STD_LOGIC_VECTOR (6 downto 0)); -- digilent cathode - used for all displays
end seven_seg_dec;

architecture Behavioral of seven_seg_dec is

begin
process (clk,bcd)
BEGIN
	if (clk'event and clk='1') then
		case  bcd(11 downto 8) is
			when "0000"=> hund_disp_n <="0000001";  -- '0'
			when "0001"=> hund_disp_n <="1001111";  -- '1'
			when "0010"=> hund_disp_n <="0010010";  -- '2'
			when "0011"=> hund_disp_n <="0000110";  -- '3'
			when "0100"=> hund_disp_n <="1001100";  -- '4' 
			when "0101"=> hund_disp_n <="0100100";  -- '5'
			when "0110"=> hund_disp_n <="0100000";  -- '6'
			when "0111"=> hund_disp_n <="0001111";  -- '7'
			when "1000"=> hund_disp_n <="0000000";  -- '8'
			when "1001"=> hund_disp_n <="0000100";  -- '9'
			--nothing is displayed when a number more than 9 is given as input. 
			when others=> hund_disp_n <="0000001"; 
		end case;
		case  bcd(7 downto 4) is
			when "0000"=> tens_disp_n <="0000001";  -- '0'
			when "0001"=> tens_disp_n <="1001111";  -- '1'
			when "0010"=> tens_disp_n <="0010010";  -- '2'
			when "0011"=> tens_disp_n <="0000110";  -- '3'
			when "0100"=> tens_disp_n <="1001100";  -- '4' 
			when "0101"=> tens_disp_n <="0100100";  -- '5'
			when "0110"=> tens_disp_n <="0100000";  -- '6'
			when "0111"=> tens_disp_n <="0001111";  -- '7'
			when "1000"=> tens_disp_n <="0000000";  -- '8'
			when "1001"=> tens_disp_n <="0000100";  -- '9'
			--nothing is displayed when a number more than 9 is given as input. 
			when others=> tens_disp_n <="0000001"; 
		end case;
		case  bcd(3 downto 0) is
			when "0000"=> ones_disp_n <="0000001";  -- '0'
			when "0001"=> ones_disp_n <="1001111";  -- '1'
			when "0010"=> ones_disp_n <="0010010";  -- '2'
			when "0011"=> ones_disp_n <="0000110";  -- '3'
			when "0100"=> ones_disp_n <="1001100";  -- '4' 
			when "0101"=> ones_disp_n <="0100100";  -- '5'
			when "0110"=> ones_disp_n <="0100000";  -- '6'
			when "0111"=> ones_disp_n <="0001111";  -- '7'
			when "1000"=> ones_disp_n <="0000000";  -- '8'
			when "1001"=> ones_disp_n <="0000100";  -- '9'
			--nothing is displayed when a number more than 9 is given as input. 
			when others=> ones_disp_n <="0000001"; 
		end case;
	end if;
end process;

end Behavioral;

