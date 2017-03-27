-------------------------------------------------
-- File:	Adder16Bit.vhd
-- Entity:	16 Bit Adder
-- Architecture:	Structural
-- Author: John Judge
-- Created: 3/10/16
-- Modified: 3/10/16
-- VHDL'93
-- Description: The following is the entity and
--	structural description of a 16-bit adder
-------------------------------------------------
LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
		
ENTITY Shifter_16_Bit IS
--These are the inputs needed 
			PORT (	DATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
						ShiftAmount : In STD_LOGIC_VECTOR(3 downto 0);
						ShiftType	:	IN STD_LOGIC_VECTOR(1 downto 0);
						DATAOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) ) ;
	END Shifter_16_Bit ;
	ARCHITECTURE behavioral OF Shifter_16_Bit IS
	--This is not right
			--SIGNAL Qt: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	BEGIN
			I
			
			PROCESS (Clock)
			BEGIN
					IF rising_edge(Clock) THEN
						IF Enable = ‘1’ THEN
							IF Load = '1' THEN
								Qt <= D ;
							ELSE
								Qt <= Sin & Qt(N-1 downto 1);
							END IF ;
						END IF;
					END IF ;
			END PROCESS ;
			Q <= Qt;
	--
END behavior al;

--Use this somehow
LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
	ENTITY variable_rotator_16 is--Lecture 11_VHDL_7(Structural-2)
		PORT(
				A : IN STD_LOGIC_VECTOR(15 downto 0);
				B : IN STD_LOGIC_VECTOR(3 downto 0);
				C : OUT STD_LOGIC_VECTOR(15 downto 0)
				);
	END variable_rotator_16;
	ARCHITECTURE structural OF variable_rotator_16 IS
			TYPE array16 IS ARRAY (0 to 4) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL ZERO: STD_LOGIC_VECTOR(15 downto 0);--kid
			SIGNAL Al : array16;
			SIGNAL Ar : array16;
	BEGIN
			ZERO <= "0000000000000000";--kid
			Al(0) <= A;
			G:
				FOR i IN 0 TO 3 GENERATE
				ROT_I: ENTITY work.fixed_rotator_left_16(dataflow)
				GENERIC MAP (L => 2** i)
				PORT MAP ( a => Al(i) ,
				y => Ar(i));
				MUX_I: ENTITY work.mux2to1_16(dataflow)
				PORT MAP (w0 => Al(i),
								w1 => Ar(i),
								s => B(i),
				f => Al(i+1));
				END GENERATE;
					C <= Al(4);
END structural;