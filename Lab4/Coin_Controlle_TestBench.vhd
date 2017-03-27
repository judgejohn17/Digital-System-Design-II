-------------------------------------------------
-- File:	Coin_Controller_TestBench.VHD
-- Entity: Test_Bench
-- Architecture:	Behavioral
-- Author: John Judge
-- Created: 3/12/16
-- Modified: 3/12/16
-- VHDL'93
-- Description: The following is the test bench
-- used to check the coin_controller
-------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY Coin_Controlle_TestBench IS
END Coin_Controlle_TestBench;
 
ARCHITECTURE behavior OF Coin_Controlle_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Coin_Controller
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         Qp : IN  std_logic;
         Dp : IN  std_logic;
         Np : IN  std_logic;
         soda_price : IN  std_logic_vector(3 downto 0);
         soda_req : IN  std_logic;
         amt_err : OUT  std_logic;
         drop_soda : OUT  std_logic;
         amt_dep : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal Qp : std_logic := '0';
   signal Dp : std_logic := '0';
   signal Np : std_logic := '0';
   signal soda_price : std_logic_vector(3 downto 0) := (others => '0');
   signal soda_req : std_logic := '0';

 	--Outputs
   signal amt_err : std_logic;
   signal drop_soda : std_logic;
   signal amt_dep : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Coin_Controller PORT MAP (
          clk => clk,
          rst => rst,
          Qp => Qp,
          Dp => Dp,
          Np => Np,
          soda_price => soda_price,
          soda_req => soda_req,
          amt_err => amt_err,
          drop_soda => drop_soda,
          amt_dep => amt_dep
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
      rst <= '1';--reset
      wait for 150 ns;	
		rst <='0';--set reset low
		wait for 400 ns;
		soda_price <= "0000"; --Try to buy $.55 soda
		soda_req <= '1'; -- ask for soda amt_error should go high
		wait for 400 ns;
		soda_req <= '0';
		wait for 400 ns;
		Qp <= '1'; --inset quarter
		wait for 150 ns;
		Qp <= '0';
		wait for 400 ns;
		Qp <= '1'; --inset quarter
		wait for 150 ns; 
		Qp <= '0';
		wait for 400 ns;
		soda_req <= '1'; -- ask for soda amt_error should go high
		wait for 400 ns;
		soda_req <= '0';
		wait for 400 ns;
		Qp <= '1'; --inset quarter
		wait for 150 ns;
		Qp <= '0';
		wait for 400 ns;
      soda_req <= '1'; --should dispense soda
		wait for 400 ns;
      wait;
   end process;

END;
