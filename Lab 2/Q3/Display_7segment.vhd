library ieee;
use ieee.std_logic_1164.ALL;

ENTITY Display_7segment IS
	PORT( bcd	:	IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			seven	:	OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
			);
END Display_7segment;

ARCHITECTURE behavioral OF Display_7segment IS
BEGIN
	WITH bcd SELECT
		seven <= "1000000" 	WHEN "0000",	-- 0
					"1111001"	WHEN "0001",	-- 1
					"0100100"	WHEN "0010",	-- 2
					"0110000"	WHEN "0011",	-- 3
					"0011001"	WHEN "0100",	-- 4
					"0010010"	WHEN "0101",	-- 5
					"0000010"	WHEN "0110",	-- 6
					"1111000"	WHEN "0111",	-- 7
					"0000000"	WHEN "1000",	-- 8
					"0010000"	WHEN "1001",	-- 9
					"0001000"	WHEN "1010",	-- A
					"0000011"	WHEN "1011",	-- B
					"1000110"	WHEN "1100",	-- C
					"0100001"	WHEN "1101",	-- D
					"0000110"	WHEN "1110",	-- E
					"0001110"	WHEN "1111",	-- F
					"1111111" WHEN OTHERS;
END behavioral;

--seven <= "0000001" 	WHEN "0000",
--					"1001111"	WHEN "0001",
--					"0010010"	WHEN "0010",
--					"0000110"	WHEN "0011",
--					"1001100"	WHEN "0100",
--					"0100100"	WHEN "0101",
--					"0100000"	WHEN "0110",
--					"0001111"	WHEN "0111",
--					"0000000"	WHEN "1000",
--					"0000100"	WHEN "1001",
--					"0001000"	WHEN "1010",
--					"1100000"	WHEN "1011",
--					"0110001"	WHEN "1100",
--					"1000010"	WHEN "1101",
--					"0110000"	WHEN "1110",
--					"0111000"	WHEN "1111",
--					"1111111" WHEN OTHERS;
