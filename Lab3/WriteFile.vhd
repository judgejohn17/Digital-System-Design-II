
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;


entity WriteFile is
	PORT(W_DATA: IN STD_LOGIC_VECTOR (9 DOWNTO 0));
end entity;
architecture Behavioral of WriteFile is
	begin
		PROCESS(W_DATA)
			VARIABLE L : LINE;
			FILE OUTFILE : TEXT IS OUT "VectorFile.HEX";
			BEGIN
				HWRITE(L,W_DATA);
				WRITELINE(OUTFILE,L);
		END PROCESS;

end Behavioral;

