-------------------------------------------------------------------------------
--
-- Project					: Serial Adder
-- File name				: DE2_115_TOP.vhd
-- Title					: Serial Adder 
-- Description				: This module implements a serial adder with the DE2-115 
-- 							: TOP LEVEL 
-- Design library			: N/A
-- Analysis Dependency		: none
-- Simulator(s)				: ModelSim-Altera version 10.1d
-- Initialization	   		: none
-- Notes			
-------------------------------------------------------------------------------
-- Revisions
--			Date		Author				Revision		Comments
--     10/8/2012	M. Beccani T. Brunst	Rev A			None
-------------------------------------------------------------------------------

library ieee;
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
    HEX7 : out std_logic_vector(6 downto 0);       -- 7-segment display (active low)
    LEDG : out std_logic_vector(8 downto 0);       -- Green LEDs (active high)
    LEDR : out std_logic_vector(17 downto 0)      -- Red LEDs (active high)
    );
  
end DE2_115_TOP;

ARCHITECTURE structure OF DE2_115_TOP IS

COMPONENT serial_adder_FSM
	PORT(
      clk      : IN   STD_LOGIC;
      a	      : IN   STD_LOGIC;
		b	      : IN   STD_LOGIC;
      reset    : IN   STD_LOGIC;
      s		   : OUT  STD_LOGIC;
		state 	: OUT	 STD_LOGIC
		);
END COMPONENT;

COMPONENT Debounce is
  PORT
  (
	CLK 	: in STD_LOGIC;	-- 50 MHz input clock
   x 		: in STD_LOGIC;	-- Push button input
   DBx 	: out STD_LOGIC	-- Debounced push button
  );
END COMPONENT;

COMPONENT Display_7segment IS
	PORT( bcd	:	IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			seven	:	OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
			);
END COMPONENT;

signal debounce_int:std_logic;
SIGNAL s, state : STD_LOGIC;
SIGNAL bcd_in	 : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";

BEGIN
	HEX1 <= (OTHERS =>'1');	-- blank unused hex displays
	HEX2 <= (OTHERS =>'1');
	HEX3 <= (OTHERS =>'1');
	HEX4 <= (OTHERS =>'1');
	HEX5 <= (OTHERS =>'1');
	HEX6 <= (OTHERS =>'1');
	HEX7 <= (OTHERS =>'1');
			
	BUTTON : Debounce PORT MAP (CLOCK_50,KEY(0),debounce_int); 		
	SSD: Display_7segment PORT MAP (bcd_in, HEX0);
	SA1: serial_adder_FSM
		PORT MAP (
			clk => debounce_int,
			a => SW(1),
			b => SW(0),
			reset => SW(17),
			s => s,
			state => state
			);
			
			
	LEDG(7) <= '1' WHEN state = '0' ELSE
				  '0';
				  
	LEDR(0) <= '1' WHEN state = '1' ELSE
				  '0';
				  
	bcd_in <= "0001" WHEN s = '1' ELSE
				 "0000";
		
END structure;
