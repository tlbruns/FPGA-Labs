-------------------------------------------------------------------------------
--
-- Project name			: Display_7segment
-- File name				: Display_7segment_tb.vhd
-- Title						: Display_7segment test bench
-- Description				: Test bench for verification of Display_7segment.vhd
--								
-- Design library			: N/A
-- Analysis Dependency	: N/A
-- Initialization			: N/A
-- Simulator(s)			: ModelSim-Altera Starter Edition version 10.1d
-- Notes						: Include DE2_115_TOP.vhd and Display_7segment.vhd
--
-------------------------------------------------------------------------------
--
-- Revisions
--		Date					Author				 Revision		Comments
--		10/8/2014	T. Bruns & M. Beccani		Rev A			Design creation
--
--			
-------------------------------------------------------------------------------

Library ieee;
use ieee.std_logic_1164.ALL;

ENTITY Display_7segment_tb IS
END Display_7segment_tb;

ARCHITECTURE test_bench OF Display_7segment_tb IS
	
	COMPONENT DE2_115_TOP
		PORT (
			 -- Buttons and switches
			 SW  : IN std_logic_vector(17 downto 0);        -- DPDT switches

			 -- LED displays
			 HEX0 : OUT std_logic_vector(6 downto 0)       -- 7-segment display (active low)    
			 );
	 END COMPONENT;
	 
	 SIGNAL SW_tb :	STD_LOGIC_VECTOR(17 DOWNTO 0) := (OTHERS => '0');
	 SIGNAL HEX0  :	STD_LOGIC_VECTOR(6 DOWNTO 0)  := (OTHERS => '0');
	 
	 BEGIN
		
		-- Instantiate the Unit Under Test (UUT)
		uut: DE2_115_TOP PORT MAP(
			SW   => SW_tb,
			HEX0 => HEX0);
		
		-- Generate test stimulus
		stim_process : PROCESS
		BEGIN
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "0000";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "1000000")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
				
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "0001";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "1111001")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
				
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "0010";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "0100100")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
				
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "0011";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "0110000")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
				
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "0100";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "0011001")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
				
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "0101";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "0010010")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
				
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "0110";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "0000010")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
				
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "0111";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "1111000")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
				
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "1000";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "0000000")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
				
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "1001";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "0010000")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
				
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "1010";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "0001000")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "1011";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "0000011")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
				
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "1100";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "1000110")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
				
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "1101";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "0100001")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "1110";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "0000110")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			
			WAIT FOR 10 ns;
			SW_tb(3 DOWNTO 0) <= "1111";
			WAIT FOR 1 ns;
			ASSERT (HEX0 = "0001110")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			
		END PROCESS;
END test_bench;