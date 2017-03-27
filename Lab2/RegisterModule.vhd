-------------------------------------------------
-- File:	RegisterModule.vhd
-- Entity:	Register Module
-- Architecture:	BEHAVIORAL
-- Author: John Judge
-- Created: 2/18/16
-- Modified: 2/17/16
-- VHDL'93
-- Description: The following is the entity and
--	behavioral description of a Register Module
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity RegisterModule is
	Generic (N:Integer := 16;
				R:Bit := 0);
	
    Port ( DATAIN : in  STD_LOGIC_VECTOR (N-1 downto 0);
           CLOCK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
			  WE : in  STD_LOGIC;
           DATAOUT : out  STD_LOGIC_VECTOR (N-1 downto 0));
end RegisterModule;

architecture Behavioral of RegisterModule is
begin
	PROCESS ( WE, RESET, CLOCK ) --Process depends on WE, RST, and Clock
		BEGIN
			IF RESET = '1' THEN --If reset is high then output is 0
				DATAOUT <= (OTHERS => '0') ;
			ELSIF rising_edge(CLOCK) THEN -- synchronus
				IF WE ='1' THEN 	--Enable must be high
					DATAOUT <= DATAIN ;	--OUT=IN 
				END IF;
			END IF ;
		END PROCESS ;
end Behavioral;

