----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:25:06 04/26/2016 
-- Design Name: 
-- Module Name:    DFlipFlop - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

entity DFlipFlop is
	port(	Data,Clk,Reset   : IN STD_LOGIC;--Reset is actually test mode
			Q			  		  : OUT STD_LOGIC);--Note! QNot not included, its not used
end DFlipFlop;

architecture Behavioral of DFlipFlop is
	signal inTestMode : STD_LOGIC := '0';
begin
	process(clk)
	begin
		if Clk'event and Clk='1' then
			if inTestMode = '0' then
				if Reset = '1' then --test mode goes high
					inTestMode <= '1';-- set that we're in test mode
					Q <= '1'; -- seed
				else--not in test mode and test mode did not go high
					Q <= '0'; --just cycle zeros
				end if;
			elsif inTestMode = '1' then -- already in test mode
				if Reset = '0' then --test mode goes to 0
					inTestMode <= '0';--set state to not in test mode
					Q <= '0'; 
				else --in tets mode and test mode still high
					Q <= Data;
				end if;
			end if;			
		else --not rising edge
			--chill yo
		end if;
	end process;
end Behavioral;

