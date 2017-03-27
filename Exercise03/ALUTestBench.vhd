-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT ALU
          PORT(
                 Input1,Input2	: 	IN STD_LOGIC_VECTOR (15 downto 0);
						Control			: 	IN STD_LOGIC_VECTOR (3 downto 0);
						Output			: 	OUT STD_LOGIC_VECTOR (15 downto 0));
          END COMPONENT;
			--InputSignals
          SIGNAL Input1 :  std_logic_vector(15 downto 0) := (others => '0');
			 SIGNAL Input2 :  std_logic_vector(15 downto 0) := (others => '0');
          SIGNAL Control :  std_logic_vector(3 downto 0) := (others => '0');
         --OutputSignals
			 SIGNAL Output :  std_logic_vector(15 downto 0) := (others => '0');
  BEGIN
  -- Component Instantiation
          uut: ALU PORT MAP(
                  Input1 => Input1,
                  Input2 => Input2,
						Control => Control,
						Output => Output
          );
  --  Test Bench Statements
     tb : PROCESS
     BEGIN
			Input1 <= "0000000000000000";--give initial values
			Input2 <= "0000000000000000";
			Control <= "0000";
        wait for 100 ns;
		--Test Adder
		  --Case 1 (1's + 0's)
		  Input1 <= "0000000000000101";
		  Input2 <= "0000000000001010";
		  Control <= "0100";
		  wait for 50 ns;
			--Case 2 (1's + 1's & 0's + 0's)
		  Input1 <= "0000111100001111";
		  Input2 <= "0000111100001111";
		  Control <= "0100";
		  wait for 50 ns;
			--Case 3 (Overflow)
		  Input1 <= "1111111111111111";
		  Input2 <= "1111111111111111";
		  Control <= "0100";
		  wait for 50 ns;
	--Test Sub
		  --Case 1 (1's - 0's)
		  Input1 <= "1111111111111111";
		  Input2 <= "0000000000000000";
		  Control <= "0101";
		  wait for 50 ns;
		  --Case 2 (0's - 1's)
		  Input1 <= "0000000000000000";
		  Input2 <= "1111111111111111";
		  Control <= "0101";
		  wait for 50 ns;
		  --Case 3 (LargeNumber - Smaller)
		  Input1 <= "1000000000000000";
		  Input2 <= "0000111100001111";
		  Control <= "0101";
		  wait for 50 ns;
	--Test Multiplier
		 --Case 1 (Value x 0)
		  Input1 <= "1111111111111111";
		  Input2 <= "0000000000000000";
		  Control <= "0110";
		  wait for 50 ns;
		  --Case 2 (Over Flow)
		  Input1 <= "1111000000000000";
		  Input2 <= "1111111111111111";
		  Control <= "0110";
		  wait for 50 ns;
		  --Case 2 (Double (x2))
		  Input1 <= "0000000000000010";
		  Input2 <= "0000111100001111";
		  Control <= "0110";
		  wait for 50 ns;
    --Test Logical Left Shift 
		  --Case 1 (Dont shift)
		  Input1 <= "1111111111111111";
		  Input2 <= "0000000000000000";
		  Control <= "1100";
		  wait for 50 ns;
		  --Case 2 (Shift 8 bits)
		  Input1 <= "1111111111111111";
		  Input2 <= "0000000000001000";
		  Control <= "1100";
		  wait for 50 ns;
		  --Case 3 (Shift 15 bitss, also tests that it only uses the 4 LSBs of Input 2
		  Input1 <= "0000000000000010";
		  Input2 <= "1111111111111111";
		  Control <= "1100";
		  wait for 50 ns;
	--Test Logical Right Shift 
		  --Case 1 (Dont shift)
		  Input1 <= "1111111111111111";
		  Input2 <= "0000000000000000";
		  Control <= "1101";
		  wait for 50 ns;
		  --Case 2 (Shift 8 bits)
		  Input1 <= "1111111111111111";
		  Input2 <= "0000000000001000";
		  Control <= "1101";
		  wait for 50 ns;
		  --Case 3 (Shift 15 bitss, also tests that it only uses the 4 LSBs of Input 2
		  Input1 <= "0000000000000010";
		  Input2 <= "1111111111111111";
		  Control <= "1101";
		  wait for 50 ns;
	--Test Arithmetic Right Shift 
		  --Case 1 (Dont shift)
		  Input1 <= "1111111111111111";
		  Input2 <= "0000000000000000";
		  Control <= "1110";
		  wait for 50 ns;
		  --Case 2 (Shift 8 bits)
		  Input1 <= "1111111111111111";
		  Input2 <= "0000000000001000";
		  Control <= "1110";
		  wait for 50 ns;
		  --Case 3 (Shift 15 bitss, also tests that it only uses the 4 LSBs of Input 2
		  Input1 <= "0000000000000010";
		  Input2 <= "1111111111111111";
		  Control <= "1110";
		  wait for 50 ns;
	--Test Logical Unit 
		  --OR
		  Input1 <= "1111111100000000";
		  Input2 <= "1111000011110000";
		  Control <= "1000";
		  wait for 50 ns;
		  --NOT
		  Input1 <= "1111000011110000";
		  Input2 <= "0101010101010101";
		  Control <= "1001";
		  wait for 50 ns;
		  --AND
		  Input1 <= "1111111100000000";
		  Input2 <= "1111000011110000";
		  Control <= "1010";
		  wait for 50 ns;
		  --XOR
		  Input1 <= "1111111100000000";
		  Input2 <= "1111000011110000";
		  Control <= "1011";
		  wait for 50 ns;
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 
  END;
