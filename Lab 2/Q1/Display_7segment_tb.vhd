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
		stim_process : PROCESS()
		BEGIN
			WAIT FOR 10ns;
			SW_tb(3 DOWNTO 0) <= "0000";
			ASSERT (HEX0 = "1000000")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			WAIT FOR 10ns;
			SW_tb(3 DOWNTO 0) <= "0001";
			ASSERT (HEX0 = "1111001")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			WAIT FOR 10ns;
			SW_tb(3 DOWNTO 0) <= "0010";
			ASSERT (HEX0 = "0100100")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			WAIT FOR 10ns;
			SW_tb(3 DOWNTO 0) <= "0011";
			ASSERT (HEX0 = "0110000")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			WAIT FOR 10ns;
			SW_tb(3 DOWNTO 0) <= "0100";
			ASSERT (HEX0 = "0011001")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			WAIT FOR 10ns;
			SW_tb(3 DOWNTO 0) <= "0101";
			ASSERT (HEX0 = "0010010")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			WAIT FOR 10ns;
			SW_tb(3 DOWNTO 0) <= "0110";
			ASSERT (HEX0 = "0000010")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			WAIT FOR 10ns;
			SW_tb(3 DOWNTO 0) <= "0111";
			ASSERT (HEX0 = "1111000")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			WAIT FOR 10ns;
			SW_tb(3 DOWNTO 0) <= "1000";
			ASSERT (HEX0 = "0000000")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			WAIT FOR 10ns;
			SW_tb(3 DOWNTO 0) <= "1001";
			ASSERT (HEX0 = "0010000")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			WAIT FOR 10ns;
			SW_tb(3 DOWNTO 0) <= "1010";
			ASSERT (HEX0 = "0001000")
				REPORT "Incorrect HEX display"
				SEVERITY NOTE;
			
			
			
			
					
					"0000011"	WHEN "1011",	-- B
					"1000110"	WHEN "1100",	-- C
					"0100001"	WHEN "1101",	-- D
					"0000110"	WHEN "1110",	-- E
					"0001110"	WHEN "1111",	-- F
				