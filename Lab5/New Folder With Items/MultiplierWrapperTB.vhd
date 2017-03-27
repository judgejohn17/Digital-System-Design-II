-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  use IEEE.STD_LOGIC_UNSIGNED.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT MultiplierWrapper
          PORT(
						A,B						    	 : in  STD_LOGIC_VECTOR(3 downto 0);--Mult. Wrap. ins
						test_mode_in,Clock,Reset 	 : in STD_LOGIC; --Mult. Wrap. ins 
						unused_anode 				 	 : out STD_LOGIC; -- unused an3
						hund_anode   			    	 : out STD_LOGIC; -- digilent an2
						tens_anode   	          	 : out STD_LOGIC; -- digilent an3
						ones_anode   				 	 : out STD_LOGIC; -- digilent an4
						CAn,CBn,CCn,CDn,CEn,CFn,CGn : out STD_LOGIC;
						output 							 : out STD_LOGIC_Vector (11 downto 0));--added for post route
          END COMPONENT;

          SIGNAL test_mode_in,Clock,Reset,unused_anode,hund_anode,tens_anode,ones_anode,CAn,CBn,CCn,CDn,CEn,CFn,CGn :  std_logic;
          SIGNAL A,B :  std_logic_vector(3 downto 0);
          constant clk_period : time := 10 ns;
			 Signal counter :std_logic_vector(3 downto 0) := "0000";
			 Signal output : std_logic_vector (11 downto 0) :="000000000000";

  BEGIN

  -- Component Instantiation
          uut: MultiplierWrapper PORT MAP(
                  A => A,
						B => B,				    	 
						test_mode_in => test_mode_in,
						Clock => Clock,
						Reset => Reset,	  
						unused_anode => unused_anode,				 	
						hund_anode => hund_anode,			    	
						tens_anode => tens_anode, 	          	
						ones_anode => ones_anode,				 	 
						CAn => CAn,
						CBn => CBn,
						CCn => CCn,
						CDn => CDn,
						CEn => CEn,
						CFn => CFn,
						CGn => CGn,
						output => output
          );

		-- Clock process definitions
		clk_process :process
			begin
				Clock <= '0';
				wait for clk_period/2;
				Clock <= '1';
				wait for clk_period/2;
		end process;
  --  Test Bench Statements
     tb : PROCESS
     BEGIN
			Reset <='0';--Init reset
		  test_mode_in <= '0'; -- intialize test mode
		  A <="0000"; -- intialize A
		  B <= "0000"; --Initialize B 
		  Reset <= '1'; --Reset
        wait for 100 ns; -- wait until global set/reset completes
		  Reset <= '0'; -- Reset back to low
		  wait for 50 ns;
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
		  wait for 50 ns;
		  
		  test_mode_in <= '1'; -- Testmode on
		  wait for 100 ns;
		  
		  
		  for I in 0 to 100 loop
			a <= "0000"+ counter;
			b <= "0000"+ counter -1;
			counter <= counter +1;
			wait for 50 ns;
		end loop;
			
			test_mode_in <= '0'; -- Testmode off
			
		   reset <= '1'; --reset
			wait for 100 ns;
			reset <= '0';
			wait for 100 ns;
			
			
			--Case 1 (0x0=0)
		  a <= "0000";
		  b <= "0000";
		  wait for 50 ns;
		  --Case 2 (0x3=0)
		  a <= "0000";
		  b <= "0011";
		  wait for 50 ns;
		  
		  test_mode_in <= '1'; -- Testmode on
		  wait for 100 ns;
		  
		  
        for J in 0 to 100 loop
			a <= "0000"+ counter;
			b <= "0000"+ counter -1;
			counter <= counter +1;
			wait for 50 ns;
			end loop;
			test_mode_in <= '0'; -- Testmode off
			wait for 2500 ns;
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
