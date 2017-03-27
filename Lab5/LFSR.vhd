-------------------------------------------------
-- File:	LFSR.VHD
-- Entity: LFSR
-- Architecture:	Behavioral
-- Author: John Judge
-- Created: 4/12/16
-- Modified: 4/12/16
-- VHDL'93
-- Description: The following is the entity and
--	Behavioral description of an LFSR unit for 
-- pseudo random number generation
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LFSR is
    Port ( Clk : in  STD_LOGIC;
				TestMode : in STD_LOGIC;
           Reset : in  STD_LOGIC;
           Output : out  STD_LOGIC_VECTOR (7 downto 0));
end LFSR;

architecture Behavioral of LFSR is


--	--Components
	Component DFlipFlop is	--D Flip Flop component 
		port(	Data,Clk,Reset   : IN STD_LOGIC;
			Q			  		  : Out STD_LOGIC);
	end component;
	
	Component XORgate is		--XOR gate component 
		Port ( X : in  STD_LOGIC;
				 Y : in  STD_LOGIC;
             Z : out  STD_LOGIC);
	end component;
	--Signals
	Signal Wire0,Wire1,Wire2,Wire3,Wire4,Wire5,Wire6,Wire7,Wire8,Wire9,Wire10,Wire11: STD_LOGIC;
	Signal temp : STD_LOGIC_VECTOR (7 downto 0);
begin
		--Eight total D Flip Flops
		DFF1: DFlipFlop
			port map (Wire1,Clk,TestMode,Wire0);
		DFF2: DFlipFlop
			port map (Wire2,Clk,TestMode,Wire1);
		DFF3: DFlipFlop
			port map (Wire3,Clk,TestMode,Wire2);
		DFF4: DFlipFlop
			port map (Wire4,Clk,TestMode,Wire3);
		DFF5: DFlipFlop
			port map (Wire6,Clk,TestMode,Wire5);
		DFF6: DFlipFlop
			port map (Wire8,Clk,TestMode,Wire7);
		DFF7: DFlipFlop
			port map (Wire10,Clk,TestMode,Wire9);
		DFF8: DFlipFlop
			port map (Wire0,Clk,TestMode,Wire10);
		--DFF8: DFlipFlop
			--port map (Wire11,Clk,Reset,Wire10);
		
		--Four XOR Gates
		--XORgate1: XORgate
			--port map (Wire0,Wire10,Wire11);
		XORgate2: XORgate
			port map (Wire0,Wire9,Wire8);
		XORgate3: XORgate
			port map (Wire0,Wire7,Wire6);
		XORgate4: XORgate
			port map (Wire0,Wire5,Wire4);
	
	
	--Set output
 temp <= Wire10 & Wire9 & Wire7 & Wire5 & Wire3 & Wire2 & Wire1 & Wire0;
 Output <= temp;
end Behavioral;

