-------------------------------------------------
-- File:	comparator_top.vhd
-- Entity:	Top Level Comparator
-- Architecture: Structural
-- Author: John Judge
-- Created: 2/15/16
-- Modified: 2/17/16
-- VHDL'93
-- Description: The following is the entity and
--	structural description of a top level wrapper 
-------------------------------------------------
-- Libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
-- Entity Declaration
entity comparator_top is
	port( X_in, Y_in: in std_logic_vector(1 downto 0);
		Z_out: out std_logic_vector(3 downto 0));
end comparator_top;
-- Structural Architecture
architecture structural of comparator_top is
-- Component Declarations
component if_then_else is
	port( X,Y : in std_logic_vector(1 downto 0);
		Z : out std_logic);
end component;
component when_else is
	port( X,Y : in std_logic_vector(1 downto 0);
		Z : out std_logic);
end component;
component boolean_equation is
	port( X,Y : in std_logic_vector(1 downto 0);
		Z : out std_logic);
end component;
component LUT_primitive is
	port( X,Y : in std_logic_vector(1 downto 0);
		Z : out std_logic);
end component;
begin
-- Component Port Maps
if_then_else0 : if_then_else port map(
	X => X_in,
	Y => Y_in,
	Z => Z_out(3));
when_else0 : when_else port map(
	X => X_in,
	Y => Y_in,
	Z => Z_out(2));
boolean_equation0 : boolean_equation port map(
	X => X_in,
	Y => Y_in,
	Z => Z_out(1));
LUT_primitive0 : LUT_primitive port map(
	X => X_in,
	Y => Y_in,
	Z => Z_out(0));
end structural;
