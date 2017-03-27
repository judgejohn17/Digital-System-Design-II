-------------------------------------------------
-- File:	Bebounjcer.VHD
-- Entity: Debouncer
-- Architecture:	Behavioral
-- Author: John Judge
-- Created: 3/12/16
-- Modified: 3/12/16
-- VHDL'93
-- Description: The following is the entity and
--	Behavioral description of a debouncer unit.
-- This is used to debounce signals in FPGA implementation
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Debouncer is
    Port ( test_mode_in : in  STD_LOGIC;
				clock : in  STD_LOGIC;
				reset : in  STD_LOGIC;
           test_mode : out  STD_LOGIC);
end Debouncer;

architecture Behavioral of Debouncer is
	--Signals for bouncing
	Signal temp_signal : STD_LOGIC_VECTOR(3 downto 0);
	Signal test_signal : STD_LOGIC_VECTOR(2 downto 0);
	Signal Input_pulse : STD_LOGIC;
	Signal test_mode_reg : STD_LOGIC;
	Signal Conditioned_input : STD_LOGIC;
begin

--	test_mode_reg_proc: process (test_mode_in,reset)
--	begin 
--		if (test_mode_in = '1') then 
--			if reset = '1' then
--				test_mode <= '0';
--			else 
--				test_mode <= '1';
--			end if;
--		else
--			test_mode <= '0';
--		end if;
--			
--	end process test_mode_reg_proc;	
	
--	test_mode_reg_proc : process (clock)
--	begin 
--		if (clock'event and clock ='1') then
--			if reset = '1' then
--				temp_signal <= (others => '0');
--			else
--				temp_signal(0) <= test_mode_in;
--				temp_signal(1) <= test_signal(0);
--				temp_signal(2) <= test_signal(1);
--				temp_signal(3) <= test_signal(2);
--			end if;
--		end if;
--	end process test_mode_reg_proc;
--	
--	--debounced, synch puls that is one clock pulse long
--	Input_pulse <= NOT temp_signal(3) and temp_signal(2) and temp_signal(1); --"011"
--	--debounced, synch signal
--	Conditioned_input <= '1' when temp_signal(3 downto 1) = "111" else '0';
--	--test mode remains active till board is reset
--	test_mode_start_proc : process (clock) begin
--		if (clock'event and clock = '1') then
--			if reset = '1' then
--				test_mode_reg <= '0';
--			else 
--				if input_pulse = '1' then
--					test_mode_reg <= '1';
--				else 
--					test_mode_reg <= test_mode_reg;
--				end if;
--			end if;
--		end if;
--	end process test_mode_start_proc;
--test_mode <= test_mode_reg;
test_mode <= test_mode_in;
end Behavioral;

