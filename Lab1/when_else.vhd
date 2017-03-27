-------------------------------------------------
-- File:	when_else.vhd
-- Entity:	When Else Statement
-- Architecture: Behavioral
-- Author: John Judge
-- Created: 2/15/16
-- Modified: 2/17/16
-- VHDL'93
-- Description: The following is the entity and
--	behavioral description of a when_else statement
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

entity when_else is
    Port ( x : in  STD_LOGIC_VECTOR (1 downto 0);
           y : in  STD_LOGIC_VECTOR (1 downto 0);
           z : out  STD_LOGIC);
end when_else;

architecture Behavioral of when_else is

begin
	Z <= '1' when (X = Y) else
		'0';
end Behavioral;

