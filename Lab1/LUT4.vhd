-------------------------------------------------
-- File:	LUT4.vhd
-- Entity:	Top Level Comparator
-- Architecture: Behavioral
-- Author: John Judge
-- Created: 2/15/16
-- Modified: 2/17/16
-- VHDL'93
-- Description: The following is the entity and
--	behavioral description of a LUT with INIT of "8421"
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LUT_primitive is
    Port ( x : in  STD_LOGIC_VECTOR (1 downto 0);
           y : in  STD_LOGIC_VECTOR (1 downto 0);
           z : out  STD_LOGIC);
end LUT_primitive;

architecture Behavioral of LUT_primitive is

begin
LUT_primitive : LUT4
   generic map (
      INIT => X"8421")
   port map (
      O => z,   -- LUT general output
      I0 => x(0), -- LUT input
      I1 => x(1), -- LUT input
      I2 => y(0), -- LUT input
      I3 => y(1)  -- LUT input
   );

end Behavioral;

