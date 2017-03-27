--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:36:09 04/28/2016
-- Design Name:   
-- Module Name:   D:/DSDII/Lab5/MISR_TB.vhd
-- Project Name:  Lab5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MISR
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MISR_TB IS
END MISR_TB;
 
ARCHITECTURE behavior OF MISR_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MISR
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         DataIn : IN  std_logic_vector(7 downto 0);
			TestMode : in STD_LOGIC;
         Signature : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal DataIn : std_logic_vector(7 downto 0) := (others => '0');
	signal TestMode : std_logic :='0';
 	--Outputs
   signal Signature : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MISR PORT MAP (
          Clk => Clk,
          Reset => Reset,
          DataIn => DataIn,
			 TestMode => TestMode,
          Signature => Signature
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      reset <= '1';
      wait for 100 ns;	
		reset <= '0';
		TestMode <= '1';
		for I in 0 to 50 loop
			DataIn <= "00000000";
			wait for 10 ns;
			DataIn <= "00000001";
			wait for 10 ns;
			DataIn <= "00000010";
			wait for 10 ns;
			DataIn <= "00000011";
			wait for 10 ns;
			DataIn <= "00000100";
			wait for 10 ns;
			DataIn <= "00000101";
			wait for 10 ns;
			DataIn <= "00000110";
			wait for 10 ns;
			DataIn <= "00000111";
			wait for 10 ns;
      -- insert stimulus here 
		end loop;
		
		reset <= '1';
      wait for 100 ns;	
		reset <= '0';
		TestMode <= '1';
		for I in 0 to 50 loop
			DataIn <= "00000000";
			wait for 10 ns;
			DataIn <= "00000001";
			wait for 10 ns;
			DataIn <= "00000010";
			wait for 10 ns;
			DataIn <= "00000011";
			wait for 10 ns;
			DataIn <= "00000100";
			wait for 10 ns;
			DataIn <= "00000101";
			wait for 10 ns;
			DataIn <= "00000110";
			wait for 10 ns;
			DataIn <= "00000111";
			wait for 10 ns;
      -- insert stimulus here 
		end loop;
      wait;
   end process;

END;
