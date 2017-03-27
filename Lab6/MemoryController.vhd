-------------------------------------------------
-- File:	MemoryController.vhd
-- Entity:	MemoryController (Moore State Machine)
-- Architecture: Behavioral
-- Author: John Judge
-- Created: 5/9/16
-- Modified: 5/11/16
-- VHDL'93
-- Description: The following is the entity and
--	behavioral description of a Memory Controller for 
-- a SRAM unit
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity MemoryController is
    Port ( bus_id : in  STD_LOGIC_VECTOR (7 downto 0);
           reset : in  STD_LOGIC;
           rw : in  STD_LOGIC;
           ready : in  STD_LOGIC;
           burst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           addr_in : in  STD_LOGIC_VECTOR (2 downto 0);
           oe : out  STD_LOGIC;
           we : out  STD_LOGIC;
           addr1 : out  STD_LOGIC;
			  addr2 : out  STD_LOGIC);
end MemoryController;

architecture Behavioral of MemoryController is
	--Signals and States
	TYPE Moore_State IS (Idle, Decision, Reading, Read_Single, Read_Burst0, Read_Burst1, Read_Burst2, Read_Burst3, Writing, BurstWait0, BurstWait1, BurstWait2, BurstWait3, ReadSingleWait, FinalWait);
	Signal state : Moore_State;
	Signal addr1_temp : STD_LOGIC := '0';
	Signal addr2_temp : STD_LOGIC := '0';
begin
	Moore: Process(clk,reset)--dependent only on clock, reset, and ready
	begin
		IF(reset = '1') THEN --active high reset
			state <= Idle;--Idle state is default 
		ELSIF(clk='1' AND clk'event) THEN--State change on clock 
			Case state is 
			
				When Idle => --In Idle 
					addr1_temp <= '0';
					addr2_temp <= '0';
					If (bus_id(0) = '0') and (ready = '1') then
						state <= Decision;--next state
					end if;
					
				When Decision => --In Decision 
					If rw = '1' then
						state <= Writing;
					Elsif rw = '0' then
						state <= Reading;
					End If;
					
				When Reading => --In reading
					If (burst = '0') and (ready = '1') then
						state <= Read_Single;
					Elsif(burst = '1') and (ready = '1') then
						state <= Read_Burst0;
					Else 
						state <= Reading;
					End If; 
					
				When Read_Single => --In Read_Single
					if ready = '0' then
						state <= ReadSingleWait;--next state
					end if; 
					
				 When ReadSingleWait =>
					if ready = '1' then 
						state <= FinalWait;
					end if;
					
				When Read_Burst0 =>  --In Read_Burst0
					addr1_temp <= '0';
					addr2_temp <= '0';
					if ready = '0' then -- wait for ready to go low
						state <= BurstWait0;--next state
					end if; 
					
				When Read_Burst1 =>  --In Read_Burst1
					addr1_temp <= '1';
					addr2_temp <= '0';
					if ready = '0' then -- wait for ready to go low
						state <= BurstWait1;--next state
					end if; 
				
				When Read_Burst2 =>  --In Read_Burst2
					addr1_temp <= '0';
					addr2_temp <= '1';
					if ready = '0' then -- wait for ready to go low
						state <= BurstWait2;--next state
					end if; 
					
				When Read_Burst3 =>  --In Read_Burst3
					addr1_temp <= '1';
					addr2_temp <= '1';
					if ready = '0' then -- wait for ready to go low
						state <= BurstWait3;--next state
					end if;  
					
				When BurstWait0 =>
					if ready = '1' then --wait till ready goes to 1
						state <= Read_Burst1; --next state
					end if;
					
				When BurstWait1 =>
					if ready = '1' then --wait till ready goes to 1
						state <= Read_Burst2; --next state
					end if;
				
				When BurstWait2 =>
					if ready = '1' then --wait till ready goes to 1
						state <= Read_Burst3; --next state
					end if;
				
				When BurstWait3 =>
					if ready = '1' then --wait till ready goes to 1
						state <= FinalWait; --next state
					end if;
					
				When FinalWait =>
					if ready = '0' then
						state <= Idle;
					end if;
					
				When Writing => --In Writing 
					if ready = '0' then
						state <= Idle;
					end if;
					
			End Case;
		End If;
	End process;
	--Outputs 
	oe <= '1' when (state = BurstWait0) or (state = BurstWait1) or (state = BurstWait2) or (state = BurstWait3) or (state = ReadSingleWait) or (state = Read_Burst0) or (state = Read_Burst1)or (state = Read_Burst2) or (state = Read_Burst3) or (state = Read_Single) else '0';
	we <= '1' when state = Writing else '0';
	addr1 <= addr1_temp;
	addr2 <= addr2_temp;
end Behavioral;

