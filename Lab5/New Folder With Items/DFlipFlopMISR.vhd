----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:45:10 05/04/2016 
-- Design Name: 
-- Module Name:    DFlipFlopMISR - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DFlipFlopMISR is
	port(	Data,Clk,Reset   : IN STD_LOGIC;
			Q			  		  : OUT STD_LOGIC);
end DFlipFlopMISR;

architecture Behavioral of DFlipFlopMISR is

begin
	process(clk)
	begin
		if Clk'event and Clk='1' then
			if Reset = '1' then
				Q <= '1';
			else 
				Q <= Data;
			end if;
		else --not rising edge
			--chill yo
		end if;
	end process;
end Behavioral;

