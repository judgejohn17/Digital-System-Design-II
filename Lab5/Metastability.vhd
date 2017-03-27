----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:42:47 04/28/2016 
-- Design Name: 
-- Module Name:    Metastability - Behavioral 
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

entity Metastability is
	Port ( test_mode_in : IN STD_LOGIC;
			 Clock : IN STD_LOGIC;
			 RESET : IN STD_LOGIC;
			 test_mode_reg : OUT STD_LOGIC;
			);
end Metastability;

architecture Behavioral of Metastability is
	
begin

end Behavioral;

