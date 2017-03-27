-------------------------------------------------
-- File:	comparator_top_tb.vhd
-- Entity:	Top Level Comparator Test Bench
-- Architecture: Behavioral
-- Author: John Judge
-- Created: 2/15/16
-- Modified: 2/17/16
-- VHDL'93
-- Description: The following is the testbench
--				of the toplevel wrapper
-------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY comparator_top_tb IS
END comparator_top_tb;
 
ARCHITECTURE behavior OF comparator_top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparator_top
    PORT(
         X_in : IN  std_logic_vector(1 downto 0);
         Y_in : IN  std_logic_vector(1 downto 0);
         Z_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X_in : std_logic_vector(1 downto 0) := (others => '0');
   signal Y_in : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Z_out : std_logic_vector(3 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator_top PORT MAP (
          X_in => X_in,
          Y_in => Y_in,
          Z_out => Z_out
        );

  tb: process
	begin
		for i in 0 to 3 loop
			for j in 0 to 3 loop
				X_in <= std_logic_vector(to_unsigned(i, 2));
				Y_in <= std_logic_vector(to_unsigned(j, 2));
				wait for 100 ns;
			end loop;
		end loop;
	end process;

END;
