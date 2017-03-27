-------------------------------------------------
-- File:	Gates.vhd
-- Entity: AND OR NOT XOR
-- Architecture:	package
-- Author: John Judge
-- Created: 3/3/16
-- Modified: 3/10/16
-- VHDL'93
-- Description: the following is a package declaring
--basic logic gates
-------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Gates is

component ORgate
	Port (X,Y : IN STD_LOGIC;
			Z	 : OUT STD_LOGIC);
END ORgate;

Architecture dataflow of ORgate is
	Begin
		Z <= X or Y;

End dataflow; 

component XORgate
	Port (X,Y : IN STD_LOGIC;
			Z	 : OUT STD_LOGIC);
END XORgate;

Architecture dataflow of XORgate is
	Begin
		Z <= X XOR Y;

End dataflow; 

component ANDgate
	Port (X,Y : IN STD_LOGIC;
			Z	 : OUT STD_LOGIC);
END ANDgate;

Architecture dataflow of ANDgate is
	Begin
		Z <= X AND Y;
 
End dataflow;

component NOTgate
	Port (X   : IN STD_LOGIC;
			Z	 : OUT STD_LOGIC);
END NOTgate;

Architecture dataflow of XORgate is
	Begin
		Z <= NOT X;

End dataflow;

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

end Gates;

package body Gates is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end Gates;
