-------------------------------------------------
-- File:	Coin_Controller.VHD
-- Entity: Moore State Machine
-- Architecture:	Behavioral
-- Author: John Judge
-- Created: 3/12/16
-- Modified: 3/12/16
-- VHDL'93
-- Description: The following is the entity and
--	Behavioral description of finite State Machine
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;


entity Coin_Controller is
    Port ( clk : in  STD_LOGIC;
           Reset_n : in  STD_LOGIC;
           Qp : in  STD_LOGIC;
           Dp : in  STD_LOGIC;
           Np : in  STD_LOGIC;
           soda_price : in  STD_LOGIC_VECTOR (3 downto 0);
           soda_req : in  STD_LOGIC;
           amt_err : out  STD_LOGIC;
           drop_soda : out  STD_LOGIC;
           amt_dep : out  STD_LOGIC_VECTOR (9 downto 0));
end Coin_Controller;
architecture Behavioral of Coin_Controller is
	TYPE state IS (Idle, Add25, Add10, Add5, CoinHolder, NoSoda, CheckPrice, DropSoda, Hold,holddropsoda,holdnosoda);
	Signal Moore_State: state;
	Signal CoinHolderAmount : STD_LOGIC_VECTOR (9 downto 0):= "0000000000";
	Signal soda_price_temp : STD_LOGIC_VECTOR (9 downto 0):= "0000000000";
	Signal CoinHolderAmountTemp: STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
	
BEGIN

--Process for states
Moore: Process(clk,Reset_n,Qp,Dp,Np,soda_req,soda_price)
begin
	IF(Reset_n = '0') THEN --Active high
		CoinHolderAmount <= "0000000000";--Reset hold amount
		CoinHolderAmountTemp <= "0000000000";--Reset hold amount
		soda_price_temp <= "0000000000";
		Moore_State <= Idle;--Idle state is default 
		

	ELSIF(clk='1' AND clk'event) THEN--State change on clock 
			
		CASE Moore_State IS
		
		WHEN Idle =>
			--Set soda_price_temp to the binary rep. of the cost
			CASE soda_price IS
				WHEN "0000"=> soda_price_temp<="0000110111";
				WHEN "0001"=> soda_price_temp<="0001010101";
				WHEN "0010"=> soda_price_temp<="0001011111";
				WHEN "0011"=> soda_price_temp<="0001111101";
				WHEN "0100"=> soda_price_temp<="0010000111";
				WHEN "0101"=> soda_price_temp<="0010010110";
				WHEN "0110"=> soda_price_temp<="0011100001";
				WHEN "0111"=> soda_price_temp<="0011111010";
				WHEN "1000"=> soda_price_temp<="0100101100";
				WHEN OTHERS => soda_price_temp <= "0000000000";
			END CASE;
			
			IF Qp = '1' THEN
				Moore_State <= Add25;
			ELSIF Dp = '1' THEN
				Moore_State <= Add10;
			ELSIF Np = '1' THEN
				Moore_State <= Add5;
			ELSIF soda_req = '1' THEN
				Moore_State <= CheckPrice;
			ELSE
				Moore_State <= Idle;
			END IF;
			
		WHEN CheckPrice =>
			
			--Find theoretical result of operation
			IF CoinHolderAmountTemp >= soda_price_temp THEN -- problems
				Moore_State <= DropSoda;
			ELSE
				Moore_State <= NoSoda;
			END IF;
			
		WHEN NoSoda =>
			Moore_State <= holdnosoda;
		WHEN DropSoda =>
			CoinHolderAmount <= CoinHolderAmountTemp - soda_price_temp;--Set amount remaining because the operation was succesful
			Moore_State <= holddropsoda;

		When holddropsoda =>
			IF soda_req = '0' THEN
				CoinHolderAmountTemp <= CoinHolderAmountTemp - soda_price_temp;
				Moore_State <= Idle;
			ELSE
				Moore_State <= holddropsoda;
			END IF;
			
		When holdnosoda =>
			IF soda_req = '0' THEN
				Moore_State <= Idle;
			ELSE
				Moore_State <= holdnosoda;
			END IF;
			
		WHEN Add5 =>
			CoinHolderAmountTemp <= CoinHolderAmountTemp + 5;--adds 5 to int
			Moore_State <= CoinHolder;
			
		WHEN Add10 =>
			CoinHolderAmountTemp <= CoinHolderAmountTemp + 10;--adds 10 to int
			Moore_State <= CoinHolder;
			
		WHEN Add25 =>
			CoinHolderAmountTemp <= CoinHolderAmountTemp + 25;--adds 25 to int
			Moore_State <= CoinHolder;
		
		WHEN CoinHolder =>
			CoinHolderAmount <= CoinHolderAmountTemp;
			Moore_State <= Hold;
			
		WHEN Hold =>
			IF Qp = '0' and Dp = '0' and Np = '0' THEN
				Moore_State <= Idle;
			ELSE
				Moore_State <= Hold;
			END IF;
			
			
		END CASE;
	END IF;
END PROCESS;
amt_err <= '1' WHEN Moore_State = holdnosoda ELSE '0';
drop_soda <= '1' WHEN Moore_State = holddropsoda ELSE '0';
amt_dep <= CoinHolderAmount; 
end Behavioral;

