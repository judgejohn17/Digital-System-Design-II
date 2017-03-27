-------------------------------------------------
-- File:	vending_Machine_Controller.VHD
-- Entity: Vending Machine Controller
-- Architecture:	Behavioral
-- Author: John Judge
-- Created: 3/12/16
-- Modified: 3/12/16
-- VHDL'93
-- Description: The following is the entity and
--	Behavioral description of vending machine controller
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.bin_bcd.all;

entity vending_machine_controller is
Port ( 	   Clk : in  STD_LOGIC;
           Reset_n : in  STD_LOGIC;
           Qp : in  STD_LOGIC;
           Dp : in  STD_LOGIC;
           Np : in  STD_LOGIC;
           soda_price : in  STD_LOGIC_VECTOR (3 downto 0);
           soda_req : in  STD_LOGIC;
           amt_err : out  STD_LOGIC;
           drop_soda : out  STD_LOGIC;
           hund_disp_n, tens_disp_n, ones_disp_n : out  STD_LOGIC_VECTOR (6 downto 0));
end vending_machine_controller;

architecture Behavioral of vending_machine_controller is

signal amt_dep_wire_1	   : STD_LOGIC_VECTOR (9 downto 0);
signal bcd_wire_1				: STD_LOGIC_VECTOR (11 downto 0);
signal bcd_wire_2          : STD_LOGIC_VECTOR (11 downto 0);
component Coin_Controller 
    Port ( Clk : in  STD_LOGIC;
           Reset_n : in  STD_LOGIC;
           Qp : in  STD_LOGIC;
           Dp : in  STD_LOGIC;
           Np : in  STD_LOGIC;
           soda_price : in  STD_LOGIC_VECTOR (3 downto 0);
           soda_req : in  STD_LOGIC;
           amt_err : out  STD_LOGIC;
           drop_soda : out  STD_LOGIC;
           amt_dep : out  STD_LOGIC_VECTOR (9 downto 0));
END COMPONENT;

component seven_seg_dec
    Port ( clk : in std_logic;
        bcd : in std_logic_vector(11 downto 0);  --BCD input
        hund_disp_n, tens_disp_n, ones_disp_n : out  STD_LOGIC_VECTOR (6 downto 0)); -- digilent cathode - used for all displays
end component;

begin

bcd_wire_1 <= "00" & amt_dep_wire_1;
bcd_wire_2 <= Bin_To_BCD(bcd_wire_1);

instance0_Coin_Controller : Coin_Controller
port map (
	 Clk 				=> clk,
    Reset_n		 			=> Reset_n,
    Qp 					=> Qp,
    Dp 					=> Dp,
    Np					=> Np,
    soda_price 			=> soda_price,
    soda_req 			=> soda_req,
    amt_err 			=> amt_err,
    drop_soda 			=> drop_soda,
    amt_dep 			=> amt_dep_wire_1
);

instance0_seven_seg_dec : seven_seg_dec
port map (
	clk => clk,
	bcd => bcd_wire_2,
	hund_disp_n => hund_disp_n, 
	tens_disp_n => tens_disp_n,
	ones_disp_n => ones_disp_n
);
end Behavioral;

