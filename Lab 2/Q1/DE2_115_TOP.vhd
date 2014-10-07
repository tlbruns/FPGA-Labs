--
-- DE2-115 top-level module (entity declaration)
--
-- William H. Robinson, Vanderbilt University University
--   william.h.robinson@vanderbilt.edu
--
-- Updated from the DE2 top-level module created by 
-- Stephen A. Edwards, Columbia University, sedwards@cs.columbia.edu
--

library ieee;
use ieee.std_logic_1164.all;

entity DE2_115_TOP is

  port (
    -- Buttons and switches
    SW  : in std_logic_vector(17 downto 0);        -- DPDT switches

    -- LED displays
    HEX0 : out std_logic_vector(6 downto 0)       -- 7-segment display (active low)    
    );
  
end DE2_115_TOP;

ARCHITECTURE structure OF DE2_115_TOP IS

COMPONENT Display_7segment
	PORT(
      bcd      : IN   STD_LOGIC_VECTOR(3 DOWNTO 0);
		seven 	: OUT	 STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
END COMPONENT;

SIGNAL bcd_in : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
	SA1: Display_7segment
		PORT MAP (
			bcd => bcd_in,
			seven => HEX0
			);
			
	bcd_in <= SW(3) & SW(2) & SW(1) & SW(0);
		
END structure;
