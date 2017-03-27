-------------------------------------------------
-- File:	FullAdder.vhd
-- Entity:	Full Adder
-- Architecture:	dataflow
-- Author: John Judge
-- Created: 3/3/16
-- Modified: 3/10/16
-- VHDL'93
-- Description: The following is the entity and
--	structural description of a 16-bit adder
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FullAdder is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Ci : in  STD_LOGIC;
           Co : OUT  STD_LOGIC;
           Sum : OUT  STD_LOGIC);
end FullAdder;

architecture dataflow of FullAdder is

begin
	sum <= (X XOR Y) XOR Ci;--Lecture 13 Arithemetic 1
	co <= (X AND (Y OR Ci)) OR (Ci AND Y);

end dataflow;

