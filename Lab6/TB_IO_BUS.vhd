-------------------------------------------------
-- File:	TB_IO_BUS.VHD
-- Entity: test bench
-- Architecture:	Behavioral
-- Author: John Judge
-- Created: 3/12/16
-- Modified: 3/12/16
-- VHDL'93
-- Description: The following is the test bench 
-- used to test the IO_BUS
-------------------------------------------------
  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  USE ieee.std_logic_textio.all;
  USE std.textio.all;
  
  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 
  -- Component Declaration
     COMPONENT IO_Bus
          PORT(bus_id : in  STD_LOGIC_Vector (7 downto 0);
           reset : in  STD_LOGIC;
           rw : in  STD_LOGIC;
           ready : in  STD_LOGIC;
           burst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           addr_in : in  STD_LOGIC_VECTOR (2 downto 0);
           data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           addr_out : out  STD_LOGIC_VECTOR (2 downto 0);
           data_out : out  STD_LOGIC_VECTOR (3 downto 0);
			  unused_anode      : out STD_LOGIC; -- unused an3
			  hund_anode_out    : out STD_LOGIC; -- digilent an2
		     tens_anode_out    : out STD_LOGIC; -- digilent an3
           ones_anode_out    : out STD_LOGIC; -- digilent an4
           CAn_out           : out STD_LOGIC;
           CBn_out           : out STD_LOGIC;
           CCn_out           : out STD_LOGIC;
           CDn_out           : out STD_LOGIC;
           CEn_out           : out STD_LOGIC;
           CFn_out           : out STD_LOGIC;
           CGn_out           : out STD_LOGIC);
      END COMPONENT;
  --Signals
      signal bus_id				 : STD_LOGIC_Vector (7 downto 0):= "00000000";
      signal reset				 : STD_LOGIC:= '1';
      signal rw					 : STD_LOGIC:= '0';
      signal ready				 : STD_LOGIC:= '0';
      signal burst				 : STD_LOGIC:= '0';
      signal clk					 : STD_LOGIC:= '0';
      signal addr_in				 : STD_LOGIC_VECTOR (2 downto 0):= "000";
      signal data_in				 : STD_LOGIC_VECTOR (3 downto 0):= "0000";
      signal addr_out 			 : STD_LOGIC_VECTOR (2 downto 0); 
      signal data_out 			 : STD_LOGIC_VECTOR (3 downto 0);
		signal unused_anode      : STD_LOGIC; 
	   signal hund_anode_out    : STD_LOGIC;
		signal tens_anode_out    : STD_LOGIC; 
      signal ones_anode_out    : STD_LOGIC; 
      signal CAn_out           : STD_LOGIC;
      signal CBn_out           : STD_LOGIC;
      signal CCn_out           : STD_LOGIC;
      signal CDn_out           : STD_LOGIC;
      signal CEn_out           : STD_LOGIC;
      signal CFn_out           : STD_LOGIC;
      signal CGn_out           : STD_LOGIC; 
		constant clk_period : time := 10 ns;
  BEGIN

  -- Component Instantiation
          uut: IO_Bus PORT MAP(
           bus_id => bus_id,
           reset => reset,
           rw => rw,
           ready => ready,
           burst => burst,
           clk => clk,
           addr_in => addr_in,
           data_in => data_in,
           addr_out => addr_out,
           data_out => data_out,
			  unused_anode => unused_anode,
			  hund_anode_out => hund_anode_out,
		     tens_anode_out => tens_anode_out,
           ones_anode_out => ones_anode_out,
           CAn_out => CAn_out,
           CBn_out => CBn_out,
           CCn_out => CCn_out,
           CDn_out => CDn_out,
           CEn_out => CEn_out,
           CFn_out => CFn_out,
           CGn_out => CGn_out);
	-- Clock process definitions
		clk_process :process
		begin
			clk <= '0';
			wait for clk_period/2;
			clk <= '1';
			wait for clk_period/2;
		end process;

	--Test Bench Statements
		tb : PROCESS
		BEGIN
			wait for 100 ns; -- wait until global set/reset completes
			Reset <= '0';
--Test Decision State		
			bus_id <= "10000000"; --Invalid bus_id, state should remain in idle
			wait for 50 ns;
			Ready <= '1';
			wait for 50 ns;
			Ready <= '0'; 
			wait for 50 ns;
			Ready <= '1'; 
			wait for 50 ns;
			assert addr_out = "000" --addr should be all 0's
				report "Error, not in Idle" 
				severity ERROR;
				
--Test Decision State			
			bus_id <= "01000000"; --Invalis bus_id, state shpuld remain in Idle 
			wait for 50 ns;
			wait for 50 ns;
			Ready <= '1';
			wait for 50 ns;
			Ready <= '0'; 
			wait for 50 ns;
			Ready <= '1';
			assert addr_out = "000" --addr should be all 0's
				report "Error, not in Idle" 
				severity ERROR;

--Write 0 at 0	
			bus_id <= "00000000";--Valid bus_in
			RW <= '1';--Write data
			data_in <= "0000"; --give it some data to write 
			addr_in <= "000"; --give it an adsress 
			wait for 50 ns;
			Ready <= '1';--goes to decision here
			wait for 50 ns;
			Ready <= '0'; 
			wait for 50 ns;--goes to Idle here
			
--Write 1 at 1		
			bus_id <= "00000000";--Valid bus_in
			RW <= '1';--Write data
			data_in <= "0001"; --give it some data to write 
			addr_in <= "001"; --give it an adsress 
			wait for 50 ns;
			Ready <= '1';--goes to decision here
			wait for 50 ns;
			Ready <= '0'; 
			wait for 50 ns;--goes to Idle here
			
--Write 2 at 2		
			bus_id <= "00000000";--Valid bus_in
			RW <= '1';--Write data
			data_in <= "0010"; --give it some data to write 
			addr_in <= "010"; --give it an adsress 
			wait for 50 ns;
			Ready <= '1';--goes to decision here
			wait for 50 ns;
			Ready <= '0'; 
			wait for 50 ns;--goes to Idle here
			
--Write 3 at 3		
			bus_id <= "00000000";--Valid bus_in
			RW <= '1';--Write data
			data_in <= "0011"; --give it some data to write 
			addr_in <= "011"; --give it an adsress 
			wait for 50 ns;
			Ready <= '1';--goes to decision here
			wait for 50 ns;
			Ready <= '0'; 
			wait for 50 ns;--goes to Idle here
			
--Write 4 at 4		
			bus_id <= "00000000";--Valid bus_in
			RW <= '1';--Write data
			data_in <= "0100"; --give it some data to write 
			addr_in <= "100"; --give it an adsress 
			wait for 50 ns;
			Ready <= '1';--goes to decision here
			wait for 50 ns;
			Ready <= '0'; 
			wait for 50 ns;--goes to Idle here
			
--Write 5 at 5		
			bus_id <= "00000000";--Valid bus_in
			RW <= '1';--Write data
			data_in <= "0101"; --give it some data to write 
			addr_in <= "101"; --give it an adsress 
			wait for 50 ns;
			Ready <= '1';--goes to decision here
			wait for 50 ns;
			Ready <= '0'; 
			wait for 50 ns;--goes to Idle here
			
--Write 6 at 6		
			bus_id <= "00000000";--Valid bus_in
			RW <= '1';--Write data
			data_in <= "0110"; --give it some data to write 
			addr_in <= "110"; --give it an adsress 
			wait for 50 ns;
			Ready <= '1';--goes to decision here
			wait for 50 ns;
			Ready <= '0'; 
			wait for 50 ns;--goes to Idle here
			
--Write 7 at 7		
			bus_id <= "00000000";--Valid bus_in
			RW <= '1';--Write data
			data_in <= "0111"; --give it some data to write 
			addr_in <= "111"; --give it an adsress 
			wait for 50 ns;
			Ready <= '1';--goes to decision here
			wait for 50 ns;
			Ready <= '0'; 
			wait for 50 ns;--goes to Idle here
			
--Read from position 1
		RW <= '0';--Read
		addr_in <= "001";--Positon one 
		burst <= '0'; --single read
		bus_id <= "00000000";--Valid bus_in
		Ready <= '1';--goes to decision here, an consequentially read, and Read_singl 
		wait for 100 ns;
		ready <= '0'; --goes to read single wait
		wait for 50 ns;
		assert data_out = "0001" --data should be 1 at position 1
				report "Error, not in Read Single" 
				severity ERROR;
		Ready <= '1'; --goes to Final Wait here
		wait for 50 ns;
		Ready <= '0'; --goes to idle here 
		wait for 50 ns;
			
-- Burst read from positions 3 - 6

		--Read_Burst0
		RW <= '0';--Read
		addr_in <= "001";--Positon one 
		burst <= '1'; --single read
		bus_id <= "00000000";--Valid bus_in
		Ready <= '0'; 
		wait for 50 ns;
		Ready <= '1';--goes to decision here, an consequentially read, and Read_burst0 
		wait for 100 ns;
		ready <= '0'; --goes to wait
		wait for 50 ns;
		assert addr_out = "011"
			report "Error, not in BurstWait0"
			severity ERROR;
		assert data_out = "0011"
			report "Error, not in BurstWait0"
			severity ERROR;
		--This change in ready should bring it to Read_Burst1
		Ready <= '1';--goes to read_burst1 here
		wait for 50 ns;
		
		--Read_Burst1
		ready <= '0'; --goes to wait
		wait for 50 ns;
		assert addr_out = "100"
			report "Error, not in BurstWait1"
			severity ERROR;
		assert data_out = "0100"
			report "Error, not in BurstWait1"
			severity ERROR;
		--This change in ready should bring it to Read_Burst1
		Ready <= '1';--goes to read_burst1 here
		wait for 50 ns;
		
		--Read_Burst2
		ready <= '0'; --goes to wait
		wait for 50 ns;
		assert addr_out = "101"
			report "Error, not in BurstWait2"
			severity ERROR;
		assert data_out = "0101"
			report "Error, not in BurstWait2"
			severity ERROR;
		--This change in ready should bring it to Read_Burst1
		Ready <= '1';--goes to read_burst1 here
		wait for 50 ns;
		
		--Read_Burst3
		ready <= '0'; --goes to wait
		wait for 50 ns;
		assert addr_out = "110"
			report "Error, not in BurstWait3"
			severity ERROR;
		assert data_out = "0110"
			report "Error, not in BurstWait3"
			severity ERROR;
		--This change in ready should bring it to Read_Burst1
		Ready <= '1';--goes to Final Wait
		wait for 50 ns;
		Ready <= '0'; --goes to Idle 
		wait for 50 ns;
		
--Burst with circular operation (6-1)
	--Read_Burst0
		RW <= '0';--Read
		addr_in <= "110";--Positon six 
		burst <= '1'; --single read
		bus_id <= "00000000";--Valid bus_in
		Ready <= '0'; 
		wait for 50 ns;
		Ready <= '1';--goes to decision here, an consequentially read, and Read_burst0 
		wait for 100 ns;
		ready <= '0'; --goes to wait
		wait for 50 ns;
		assert addr_out = "110"
			report "Error, not in BurstWait0"
			severity ERROR;
		assert data_out = "0110"
			report "Error, not in BurstWait0"
			severity ERROR;
		--This change in ready should bring it to Read_Burst1
		Ready <= '1';--goes to read_burst1 here
		wait for 50 ns;
		
		--Read_Burst1
		ready <= '0'; --goes to wait
		wait for 50 ns;
		assert addr_out = "111"
			report "Error, not in BurstWait1"
			severity ERROR;
		assert data_out = "0111"
			report "Error, not in BurstWait1"
			severity ERROR;
		--This change in ready should bring it to Read_Burst1
		Ready <= '1';--goes to read_burst1 here
		wait for 50 ns;
		
		--Read_Burst2
		ready <= '0'; --goes to wait
		wait for 50 ns;
		assert addr_out = "000"
			report "Error, not in BurstWait2"
			severity ERROR;
		assert data_out = "0000"
			report "Error, not in BurstWait2"
			severity ERROR;
		--This change in ready should bring it to Read_Burst1
		Ready <= '1';--goes to read_burst1 here
		wait for 50 ns;
		
		--Read_Burst3
		ready <= '0'; --goes to wait
		wait for 50 ns;
		assert addr_out = "001"
			report "Error, not in BurstWait3"
			severity ERROR;
		assert data_out = "0001"
			report "Error, not in BurstWait3"
			severity ERROR;
		--This change in ready should bring it to Read_Burst1
		Ready <= '1';--goes to Final Wait
		wait for 50 ns;
		Ready <= '0'; --goes to Idle 
		wait for 50 ns;
		
		
		--END OF TESTING
		wait;
	--End Test Bench 
	END PROCESS tb;
  END;
