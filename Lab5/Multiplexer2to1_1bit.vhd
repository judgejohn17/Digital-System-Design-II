----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:58:34 04/28/2016 
-- Design Name: 
-- Module Name:    Multiplexer2to1_1bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer2to1_1bit is
    Port ( Input1 : in  STD_LOGIC;
           Input2 : in  STD_LOGIC;
           Sel : in  STD_LOGIC;--1 bit select
           Output : out  STD_LOGIC);
end Multiplexer2to1_1bit;

architecture Behavioral of Multiplexer2to1_1bit is

begin
			Output <= Input1 WHEN (Sel = '1') else Input2;
end Behavioral;

