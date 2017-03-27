-------------------------------------------------
-- File:	Boolean_Equation.vhd
-- Entity:	Boolean_Equation
-- Architecture:	BEHAVIORAL
-- Author: John Judge
-- Created: 2/15/16
-- Modified: 2/17/16
-- VHDL'93
-- Description: The following is the entity and
--	behavioral description of an Boolean_Equation
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity boolean_equation is
    Port ( x : in  STD_LOGIC_VECTOR (1 downto 0);
           y : in  STD_LOGIC_VECTOR (1 downto 0);
           z : out  STD_LOGIC);
end boolean_equation;

architecture Behavioral of boolean_equation is
Signal prod_term: STD_LOGIC_VECTOR (3 downto 0);
begin
	prod_term(3) <= (not X(1) and not X(0) and not Y(1) and not Y(0));
	prod_term(2) <= (not X(1) and X(0) and not Y(1) and Y(0));
	prod_term(1) <= ( X(1) and not X(0) and Y(1) and not Y(0));
	prod_term(0) <= ( X(1) and X(0) and Y(1) and Y(0));
	Z <= prod_term(3) or prod_term(2) or prod_term(1) or prod_term(0);

end Behavioral;

