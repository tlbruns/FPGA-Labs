-------------------------------------------------------------------------------
--
-- Project					: BCD Counter 
-- File name				: DE2_115_TOP.vhd
-- Title				    	: BCD Counter
-- Description				: Top-level file to implement a 3 digit BCD counter with the DE2-115 Board

-- Design library			: N/A
-- Analysis Dependency	: none
-- Simulator(s)			: ModelSim-Altera version 10.1d
-- Initialization	    	: none
-- Notes			
-------------------------------------------------------------------------------
-- Revisions
--			Date				Author				Revision		Comments
--     10/8/2012	M. Beccani T. Bruns		Rev A			None
-------------------------------------------------------------------------------

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DE2_115_TOP is
  port (
    -- Clocks
    CLOCK_50 	: in std_logic;                     -- 50 MHz
	 
    -- Buttons and switches
    KEY : in std_logic_vector(3 downto 0);         -- Push buttons
    SW  : in std_logic_vector(17 downto 0);        -- DPDT switches

    -- LED displays
    HEX0 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
    HEX1 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
	 HEX2 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
	 HEX3 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
	 HEX4 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
	 HEX5 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
	 HEX6 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
    HEX7 : out std_logic_vector(6 downto 0)        -- 7-segment display (active low)
    
    );
  
end DE2_115_TOP;

ARCHITECTURE structural OF DE2_115_TOP IS

	COMPONENT  counter_1Hz 
		port (
		  clock			:  in std_logic;
		  rst				:  in std_logic;
		  count_enable	:  in std_logic;
		  Q				:  out std_logic
		);
	END COMPONENT;

	COMPONENT BCD_3 
		port (
		  clock	:  in std_logic;
		  rst		:  in std_logic;
		  enable	:  in std_logic;
		  q0		:  out std_logic_vector(3 downto 0);
		  q1		:  out std_logic_vector(3 downto 0);
		  q2		:  out std_logic_vector(3 downto 0)
		  );
	END COMPONENT;

	COMPONENT Display_7segment
		port (
			bcd	 :	IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			seven  :	OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
			);
	END COMPONENT;

	signal counter_enable_int: STD_LOGIC; 
	signal q0_int : STD_LOGIC_VECTOR(3 downto 0); 
	signal q1_int : STD_LOGIC_VECTOR(3 downto 0); 
	signal q2_int : STD_LOGIC_VECTOR(3 downto 0);
	signal q0_out : STD_LOGIC_VECTOR(6 downto 0);
	signal q1_out : STD_LOGIC_VECTOR(6 downto 0);
	signal q2_out : STD_LOGIC_VECTOR(6 downto 0);

	BEGIN
	  CN1  : counter_1Hz  port map(CLOCK_50,SW(17),SW(16),counter_enable_int);
	  BCD  : BCD_3 port map(CLOCK_50,SW(17),counter_enable_int,q0_int,q1_int,q2_int);
	  SEG1 : Display_7segment PORT MAP(q0_int,q0_out);
	  SEG2 : Display_7segment PORT MAP(q1_int,q1_out);
	  SEG3 : Display_7segment PORT MAP(q2_int,q2_out);

	  HEX3 <= "1111111"; HEX4 <= "1111111"; HEX5 <= "1111111"; HEX6 <= "1111111"; 	HEX7 <= "1111111";
	  
	  PROCESS(counter_enable_int,q0_int,q1_int,q2_int)
		BEGIN
		HEX0 <= q0_out;
		HEX1 <= q1_out;
		HEX2 <= q2_out;
		
	  END PROCESS;

END structural;







