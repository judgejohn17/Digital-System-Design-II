-------------------------------------------------
-- File:	MISR.VHD
-- Entity: MISR
-- Architecture:	Behavioral
-- Author: John Judge
-- Created: 3/12/16
-- Modified: 3/12/16
-- VHDL'93
-- Description: The following is the entity and
--	Behavioral description of an MISR unit
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

entity MISR is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           DataIn : in  STD_LOGIC_VECTOR (7 downto 0);
			  TestMode : in STD_LOGIC;
           Signature : out  STD_LOGIC_VECTOR (7 downto 0));
end MISR;

architecture Behavioral of MISR is
	--Components
	Component DFlipFlopMISR is	--D Flip Flop component 
		port(	Data,Clk,Reset   : IN STD_LOGIC;
			Q			  		  : OUT STD_LOGIC);
	end component;
	
	Component XORgate is		--XOR gate component 
		Port ( X : in  STD_LOGIC;
				 Y : in  STD_LOGIC;
             Z : out  STD_LOGIC);
	end component;
	
	Component Multiplexer2to1_1bit is--MUX
    Port ( Input1 : in  STD_LOGIC;
           Input2 : in  STD_LOGIC;
           Sel : in  STD_LOGIC;--1 bit select
           Output : out  STD_LOGIC);
	 end component;
	
	--Signals
	
	Signal W0,W1,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16,W17,W18,W19,W20,W21,W22,W23,W24: STD_LOGIC;
	signal select_signal : STD_LOGIC := '0';--Intialize so that the MUX ouput the flowing signal
	Signal Counter : STD_LOGIC_VECTOR (15 downto 0):= "0000000000000000";--counter variable
begin
    
	--Eight total D Flip Flops
		DFF1: DFlipFlopMISR
			port map (W1,clk,Reset,W0);
		DFF2: DFlipFlopMISR
			port map (W4,clk,Reset,W3);
		DFF3: DFlipFlopMISR
			port map (W7,clk,Reset,W6);
		DFF4: DFlipFlopMISR
			port map (W10,clk,Reset,W9);
		DFF5: DFlipFlopMISR
			port map (W13,clk,Reset,W12);
		DFF6: DFlipFlopMISR
			port map (W16,clk,Reset,W15);
		DFF7: DFlipFlopMISR
			port map (W19,clk,Reset,W18);
		DFF8: DFlipFlopMISR
			port map (W22,clk,Reset,W21);
			
	--Eight 2-1 MUX's of 1 bit
		M1: Multiplexer2to1_1bit
			port map (W0,W2,select_signal,W1);
		M2: Multiplexer2to1_1bit
			port map (W3,W5,select_signal,W4);
		M3: Multiplexer2to1_1bit
			port map (W6,W8,select_signal,W7);
		M4: Multiplexer2to1_1bit
			port map (W9,W11,select_signal,W10);
		M5: Multiplexer2to1_1bit
			port map (W12,W14,select_signal,W13);
		M6: Multiplexer2to1_1bit
			port map (W15,W17,select_signal,W16);
		M7: Multiplexer2to1_1bit
			port map (W18,W20,select_signal,W19);
		M8: Multiplexer2to1_1bit
			port map (W21,W23,select_signal,W22);
			
			
			
	--Nine XOR(2) Gates
		XORgate1: XORgate
			port map (W3,DataIn(0),W2);
		XORgate2: XORgate
			port map (W6,DataIn(1),W5);
		XORgate3: XORgate
			port map (W9,DataIn(2),W8);
		XORgate4: XORgate
			port map (W12,DataIn(3),W11);
		XORgate5: XORgate
			port map (W15,DataIn(4),W14);
		XORgate6: XORgate
			port map (W18,DataIn(5),W17);
		XORgate7: XORgate
			port map (W21,DataIn(6),W20);
		XORgate8: XORgate
			port map (W21,DataIn(7),W23);
		

	
	MISRProcess: process (Clk)
	begin 
		if (Clk'event and clk = '1') then
				if reset = '1' then
					counter <= "0000000000000000";
					select_signal <= '0';
				else
					if TestMode = '1' then
						if counter <= 20 then--Wait 10 clock cycles
							Signature <= "00000000";--just give out zeros
							counter <= counter + 1;
						elsif counter < 120 then --good data
							Signature <= W21 & W18 & W15 & W12 & W9 & W6 & W3 & W0;
							counter <= counter + 1;
						elsif counter >= 120 then  --hold the signature 
							Signature <= W21 & W18 & W15 & W12 & W9 & W6 & W3 & W0;
							select_signal <= '1';--Start recyclying DFlipFlop signals
						end if;
					else --not in test mode
						Signature <= "00000000";
					end if; 
				end if;
		else --Not rising edge, hold values
				--Signature <= Signature;
				--slecet_signal <= slecet_signal;
				--counter := counter;
		end if; 
	end process MISRProcess;
		--Output
	
end Behavioral;

