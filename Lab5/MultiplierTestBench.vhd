-------------------------------------------------
-- File:	MultiplierTestBench.VHD
-- Entity: 4x4 Multiplier
-- Architecture:	Behavioral
-- Author: John Judge
-- Created: 4/14/16
-- Modified: 4/14/16
-- VHDL'93
-- Description: The following is the entity and
--	Behavioral description of the Multiplier_4x4.VHD
-------------------------------------------------
Library ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MultiplierTestBench IS
END MultiplierTestBench;
 
ARCHITECTURE behavior OF MultiplierTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplier_4x4
    PORT(
         clk : IN  std_logic;
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         p : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal p : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplier_4x4 PORT MAP (
          clk => clk,
          a => a,
          b => b,
          p => p
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		  --Case 1 (0x0=0)
		  a <= "0000";
		  b <= "0000";
		  wait for 50 ns;
		  --Case 2 (0x3=0)
		  a <= "0000";
		  b <= "0011";
		  wait for 50 ns;
		  --Case 3 (3x1=3)
		  a <= "0011";
		  b <= "0001";
		  wait for 50 ns;
		  --Case 4 (3x2=6)
		  a <= "0011";
		  b <= "0010";
		  wait for 50 ns;
		  --Case 5 (3x3=9)
		  a <= "0011";
		  b <= "0011";
		  wait for 50 ns;
		  --Case 6 (4x4=16)
		  a <= "0100";
		  b <= "0100";
		  wait for 50 ns;
		  --Case 7 (8x8=64)
		  a <= "1000";
		  b <= "1000";
		  wait for 50 ns;
		  --Case 8 (10x12=120)
		  a <= "1010";
		  b <= "1100";
		  wait for 50 ns;
		  --Case 9 (14x12=168)
		  a <= "1110";
		  b <= "1100";
		  wait for 50 ns;
		  --Case 10 (15x15=0)
		  a <= "1111";
		  b <= "1111";
      wait;
   end process;

END;
