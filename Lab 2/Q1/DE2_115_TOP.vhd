-------------------------------------------------------------------------------
--
-- Project name			: Display_7segment
-- File name				: DE2_115_TOP.vhd
-- Title						: Display_7segment
-- Description				: Takes a 4-bit hex value as input and outputs the
--								: corresponding character on a 7-segment display on
--								: the DE2-115 evaluation board
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
