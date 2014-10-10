-------------------------------------------------------------------------------
--
-- Project name			: DE2-115 SRAM
-- File name				: DE2_115_TOP.vhd
-- Title						: DE2-115 SRAM
-- Description				: Implements read/write functions of the on-board SRAM
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
    LEDR : out std_logic_vector(17 downto 0);      -- Red LEDs (active high)


    -- SRAM
    
    SRAM_ADDR : out std_logic_vector(19 downto 0);    -- Address bus 20 Bits
    SRAM_DQ : inout std_logic_vector(15 downto 0);    -- Data bus 16 Bits
    SRAM_CE_N : out std_logic;                     	-- Chip Enable
    SRAM_LB_N : out std_logic;                     	-- Low-byte Data Mask 
    SRAM_OE_N : out std_logic;                    	 	-- Output Enable
    SRAM_UB_N : out std_logic;                     	-- High-byte Data Mask 
    SRAM_WE_N : out std_logic                      	-- Write Enable
	 
    );
  
end DE2_115_TOP;

ARCHITECTURE structural OF DE2_115_TOP IS

component Display_7segment IS
	PORT( bcd	:	IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			seven	:	OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
			);
END component;

signal address_register	: 	std_logic_vector(4 downto 0);
signal data_register		: 	std_logic_vector(7 downto 0);
signal data_int 			: 	std_logic_vector(7 downto 0);
signal we_n_int			: 	std_logic;
signal bcd_in0, bcd_in1, bcd_in2, bcd_in3, bcd_in4, bcd_in5, bcd_in6, bcd_in7 : std_logic_vector(3 downto 0);

BEGIN 

	SSD0: Display_7segment PORT MAP (bcd_in0, HEX0);
	SSD1: Display_7segment PORT MAP (bcd_in1, HEX1);
	SSD2: Display_7segment PORT MAP (bcd_in2, HEX2);
	SSD3: Display_7segment PORT MAP (bcd_in3, HEX3);
	SSD4: Display_7segment PORT MAP (bcd_in4, HEX4);
	SSD5: Display_7segment PORT MAP (bcd_in5, HEX5);
	SSD6: Display_7segment PORT MAP (bcd_in6, HEX6);
	SSD7: Display_7segment PORT MAP (bcd_in7, HEX7);
	
	-- chip enable, output enable always asserted
   SRAM_CE_N <= '0';
   SRAM_OE_N <= '0';
   SRAM_UB_N <= '0';
   SRAM_LB_N <= '0';
	
	we_n_int <= not SW(17);		-- active low
	LEDR(17) <= SW(17);
	SRAM_WE_N <= we_n_int;
	
	-- set address
	address_register <= SW(15 downto 11);
	SRAM_ADDR(19 downto 5) <= (others => '0');
	SRAM_ADDR(4 downto 0)  <= address_register;
	
	-- either place data on the I/O line if writing
	-- or set to z to allow SRAM to output data to read
	data_int <= SW(7 downto 0)	WHEN we_n_int = '0' ELSE (others => 'Z');
	SRAM_DQ(15 downto 8) <= (others => '0');
	SRAM_DQ(7 downto 0)  <= data_int;
	data_register <= SRAM_DQ(7 downto 0);	-- read
	
	-- seven segment displays
	bcd_in0 <= SRAM_DQ(3 downto 0);
   bcd_in1 <= SRAM_DQ(7 downto 4);
   bcd_in4 <= SW(3 downto 0); 
   bcd_in5 <= SW(7 downto 4);
   bcd_in6 <= address_register(3 downto 0); 
   bcd_in7 <= "000" & address_register(4);

END structural;







