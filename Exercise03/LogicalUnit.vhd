-------------------------------------------------
-- File:	LogicalUnit.vhd
-- Entity:	LogicalUnit
-- Architecture:	Behavioral 
-- Author: John Judge
-- Created: 3/3/16
-- Modified: 3/10/16
-- VHDL'93
-- Description: The following is the entity and
--	behavioral description of a Logical Unit with 
-- an OR, NOT, AND, and XOR
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity LogicalUnit is
	Port(In1			:	In STD_LOGIC_VECTOR (15 downto 0);
			In2		:	In STD_LOGIC_VECTOR(15 downto 0);
			OutOR		:	Out STD_LOGIC_VECTOR(15 downto 0);
			OutNOT	:	Out STD_LOGIC_VECTOR(15 downto 0);	
			OutAND	:	Out STD_LOGIC_VECTOR(15 downto 0);
			OutXOR	:	Out STD_LOGIC_VECTOR(15 downto 0));
end LogicalUnit;

architecture Behavioral of LogicalUnit is

begin
		OutOr	<= In1 OR In2;
		OutNot <= Not In1;
		OutAND <= In1 AND In2; 
		OutXOR <= In1 XOR IN2;
end Behavioral;

