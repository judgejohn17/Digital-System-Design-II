-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT Usr_interaction
				Port 
				( Qrcd_in           : in  STD_LOGIC; -- Quarter received from switch
				  Drcd_in           : in  STD_LOGIC; -- Dime received from switch
				  Nrcd_in           : in  STD_LOGIC; -- Nickel received from switch
				  Clk_in            : in  STD_LOGIC; -- 25, 50 or 100MHz clock
				  Reset_n_in        : in  STD_LOGIC; -- active low reset from switch
				  Soda_req_in       : in  STD_LOGIC; -- request of soda from user
				  Soda_price_in     : in  STD_LOGIC_VECTOR(3 downto 0); -- soda price from LED, 4 bit code
				  Drop_soda_out     : out STD_LOGIC; -- soda release to LED
				  Qrcd_out          : out STD_LOGIC; -- quarter pulse to LED
				  Drcd_out          : out STD_LOGIC; -- dime pulse to LED
				  Nrcd_out          : out STD_LOGIC; -- nickel pulse to LED
				  Amt_err           : out STD_LOGIC; -- soda requested but not enough money deposited
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
				--inputs
				signal		  Qrcd_in           :  STD_LOGIC := '0';
				signal		  Drcd_in           :  STD_LOGIC := '0';
				signal		  Nrcd_in           :  STD_LOGIC := '0'; 
				signal		  Clk_in            :  STD_LOGIC := '0'; 
				signal		  Reset_n_in        :  STD_LOGIC := '0'; 
				signal		  Soda_req_in       :  STD_LOGIC := '0'; 
				signal		  Soda_price_in     :  STD_LOGIC_VECTOR(3 downto 0):= (others => '0');
				--outputs
				signal		  Drop_soda_out     :  STD_LOGIC; 
				signal		  Qrcd_out          :  STD_LOGIC; 
				signal		  Drcd_out          :  STD_LOGIC; 
				signal		  Nrcd_out          :  STD_LOGIC; 
				signal		  Amt_err           :  STD_LOGIC; 
				signal		  unused_anode      :  STD_LOGIC; 
				signal		  hund_anode_out    :  STD_LOGIC; 
				signal		  tens_anode_out    :  STD_LOGIC; 
				signal		  ones_anode_out    :  STD_LOGIC; 
				signal		  CAn_out           :  STD_LOGIC;
				signal		  CBn_out           :  STD_LOGIC;
				signal		  CCn_out           :  STD_LOGIC;
				signal		  CDn_out           :  STD_LOGIC;
				signal		  CEn_out           :  STD_LOGIC;
				signal		  CFn_out           :  STD_LOGIC;
				signal		  CGn_out				:  STD_LOGIC;
            -- Clock period definitions
				constant clk_period : time := 10 ns;

  BEGIN

  -- Component Instantiation
          uut: Usr_interaction PORT MAP(
                    Qrcd_in  => Qrcd_in,         
						  Drcd_in   => Drcd_in,        
						  Nrcd_in     => Nrcd_in,      
						  Clk_in       =>  Clk_in , 
						  Reset_n_in    => Reset_n_in,  
						  Soda_req_in    => Soda_req_in,    
						  Soda_price_in   => Soda_price_in,   
						  Drop_soda_out    => Drop_soda_out, 
						  Qrcd_out        => Qrcd_out,   
						  Drcd_out        => Drcd_out,   
						  Nrcd_out      => Nrcd_out,    
						  Amt_err        => Amt_err,    
						  unused_anode      => unused_anode, 
						  hund_anode_out   => hund_anode_out, 
						  tens_anode_out    => tens_anode_out, 
						  ones_anode_out    => ones_anode_out, 
						  CAn_out        => CAn_out,  
						  CBn_out        => CBn_out,   
						  CCn_out        => CCn_out,    
						  CDn_out        => CDn_out,  
						  CEn_out         => CEn_out,
						  CFn_out         => CFn_out, 
						  CGn_out         => CGn_out  
          );

	-- Clock process definitions
   clk_process :process
   begin
		clk_in <= '0';
		wait for clk_period/2;
		clk_in <= '1';
		wait for clk_period/2;
   end process;
	
  --  Test Bench Statements
     tb : PROCESS
     BEGIN
			Reset_n_in <= '0';--active low reset
         wait for 5 ms; 
			Reset_n_in <= '1';-- not reset anymore
			wait for 5 ms;
			soda_price_in <= "0001";--select a soda
			wait for 5 ms;
			Qrcd_in <= '1';--insert quarter, active low
			wait for 5 ms;
			Qrcd_in <= '0';--stop inserting quarter
			wait for 5 ms;
			Soda_req_in <= '1'; -- request soda active low, should fail
			wait for 5 ms;
			Soda_req_in <= '0'; -- stop requesting soda
			wait for 5 ms;
			Qrcd_in <= '1';--insert quarter, active low
			wait for 5 ms;
			Qrcd_in <= '0';--stop inserting quarter
			wait for 5 ms;
			Drcd_in <= '1';--insert dime, active low
			wait for 5 ms;
			Drcd_in <= '0';--stop inserting dime
			wait for 5 ms;
			Drcd_in <= '1';--insert dime, active low
			wait for 5 ms;
			Drcd_in <= '0';--stop inserting dime
			wait for 5 ms;
			Drcd_in <= '1';--insert dime, active low
			wait for 5 ms;
			Drcd_in <= '0';--stop inserting dime
			wait for 5 ms;
			Nrcd_in <= '1';--insert nickel, active low
			wait for 5 ms;
			Nrcd_in <= '0';--stop inserting nickel
			wait for 5 ms;
			Soda_req_in <= '1'; -- request soda active low, should work
			wait for 5 ms;
			Soda_req_in <= '0'; -- stop requesting soda
			wait for 5 ms;
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
