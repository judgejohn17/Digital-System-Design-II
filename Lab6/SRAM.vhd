-------------------------------------------------
-- File:	SRAM.vhd
-- Entity:	SRAM unit
-- Architecture: Behavioral
-- Author: John Judge
-- Created: 5/9/16
-- Modified: 5/11/16
-- VHDL'93
-- Description: The following is the entity and
--	behavioral description of an SRAM Unit
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

entity SRAM is
    Port ( i_oe : in  STD_LOGIC;--Read Enable
           i_we : in  STD_LOGIC;--Write Enable
           i_addr : in  STD_LOGIC_VECTOR (2 downto 0);--Address 
           i_data : in  STD_LOGIC_VECTOR (3 downto 0);--Data to write
			  addr1_offset : in STD_LOGIC;--Offset 1
			  addr2_offset : in STD_LOGIC;--Offset 2
			  reset : in STD_LOGIC; 
           o_data : out  STD_LOGIC_VECTOR (3 downto 0));--Output of register
end SRAM;

architecture Behavioral of SRAM is
	--Signals
	Type data_table is array (7 downto 0) of std_logic_vector(3 downto 0);
	Signal data : data_table; 
	Signal Addr1_and_2		   : std_logic_vector (1 downto 0);
	signal ComputedAddr        : STD_LOGIC_VECTOR (2 downto 0);
begin
	 Addr1_and_2 <=  addr2_offset & addr1_offset; 
	 ComputedAddr <= i_addr + Addr1_and_2;
	PROCESS (i_oe,i_we)
		BEGIN
			IF i_oe = '1' THEN --read
				CASE ComputedAddr is --Access the data array and output that signal
					when "000" => o_data <= data(0);
					when "001" => o_data <= data(1);
					when "010" => o_data <= data(2);
					when "011" => o_data <= data(3);
					when "100" => o_data <= data(4);
					when "101" => o_data <= data(5);
					when "110" => o_data <= data(6);
					when others => o_data <= data(7);
				END CASE;
			ELSIF i_we = '1' THEN -- write 
				o_data <= "0000";--Output 0 when i_oe = '0'
				CASE ComputedAddr is --Access the data array and output that signal
					when "000" => data(0) <= i_data;
					when "001" => data(1) <= i_data;
					when "010" => data(2) <= i_data;
					when "011" => data(3) <= i_data;
					when "100" => data(4) <= i_data;
					when "101" => data(5) <= i_data;
					when "110" => data(6) <= i_data;
					when others => data(7) <= i_data;
				END CASE;
			ELSE
				o_data <= "0000";--Output 0 when i_oe = '0'
			END IF;
	END PROCESS;
end Behavioral;

