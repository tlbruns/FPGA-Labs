-------------------------------------------------------------------------------
--
-- Project name			: Display_7segment
-- File name				: Display_7segment.vhd
-- Title						: Display_7segment
-- Description				: Takes a 4-bit hex value as input and outputs the
--								: corresponding character on a 7-segment display
--								
-- Design library			: N/A
-- Analysis Dependency	: N/A
-- Initialization			: N/A
-- Simulator(s)			: ModelSim-Altera Starter Edition version 10.1d
-- Notes						: testbench file is Display_7segment_tb.vhd
--
-------------------------------------------------------------------------------
--
-- Revisions
--		Date					Author				 Revision		Comments
--		10/8/2014	T. Bruns & M. Beccani		Rev A			Design creation
--
--			
-------------------------------------------------------------------------------
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