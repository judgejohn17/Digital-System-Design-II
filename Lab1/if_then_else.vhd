-------------------------------------------------
-- File:	if_then_else.vhd
-- Entity:	if_then_else
-- Architecture:	BEHAVIORAL
-- Author: John Judge
-- Created: 2/15/16
-- Modified: 2/17/16
-- VHDL'93
-- Description: The following is the entity and
--	behavioral description of an if_then_else
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity if_then_else is
    Port ( x : in  STD_LOGIC_VECTOR (1 downto 0);
           y : in  STD_LOGIC_VECTOR (1 downto 0);
           z : out  STD_LOGIC);
end if_then_else;

architecture Behavioral of if_then_else is

begin
	P1: process (X, Y)
	begin
		if (X = Y) then
			Z <= '1';
		else
			Z <= '0';
		end if;
	end process P1;
end Behavioral;

