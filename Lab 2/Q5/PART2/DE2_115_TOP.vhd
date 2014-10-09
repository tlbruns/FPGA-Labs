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
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity DE2_115_TOP is

  port (
    -- Clocks
    
    CLOCK_50 	: in std_logic;                     -- 50 MHz

    -- Buttons and switches
    
    KEY 	: in  std_logic_vector(3 downto 0);       -- Push buttons
    SW  	: in  std_logic_vector(17 downto 0);      -- DPDT switches
	 LEDG : out std_logic_vector(8 downto 0);       -- Green LEDs (active high)
    LEDR : out std_logic_vector(17 downto 0);      -- Red LEDs (active high)
	 
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

COMPONENT ramlpm IS
   PORT
   (
      address	: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
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


  signal data_int: std_logic_vector (7 DOWNTO 0);
  signal address_int:   INTEGER RANGE 0 TO 31;
  signal we_int: std_logic;
  signal q_int: std_logic_vector (7 DOWNTO 0);
  
  signal bcd_in0, bcd_in1, bcd_in2, bcd_in3, bcd_in4, bcd_in5, bcd_in6, bcd_in7 : std_logic_vector(3 downto 0);
  signal bcd_temp : std_logic_vector(4 downto 0);
  signal debounce_int0:std_logic;
  signal debounce_int3:std_logic;
  
 
  BEGIN
  
  data_int <= SW(7 downto 0);
  address_int  <= to_integer(unsigned(SW(15 downto 11)));
  we_int <=  SW(17);
  LEDR(17) <= we_int;
  LEDR(15 downto 11) <= SW(15 downto 11);
  LEDR(7 downto 0) <= SW(7 downto 0);
  
  B1 : Debounce PORT MAP (CLOCK_50,KEY(0),debounce_int0); 	
  ram1 : ramlpm PORT MAP(std_logic_vector(to_unsigned(address_int,5)),debounce_int0,data_int,we_int,q_int);

  SSD0: Display_7segment PORT MAP (bcd_in0, HEX0);
  SSD1: Display_7segment PORT MAP (bcd_in1, HEX1);
  SSD2: Display_7segment PORT MAP (bcd_in2, HEX2);
  SSD3: Display_7segment PORT MAP (bcd_in3, HEX3);
  SSD4: Display_7segment PORT MAP (bcd_in4, HEX4);
  SSD5: Display_7segment PORT MAP (bcd_in5, HEX5);
  SSD6: Display_7segment PORT MAP (bcd_in6, HEX6);
  SSD7: Display_7segment PORT MAP (bcd_in7, HEX7);
  
  PROCESS(debounce_int0)
  BEGIN 
  
  
--  bcd_in0 <=  data_int(3 downto 0);
--  bcd_in1 <=  data_int(7 downto 4);
--  
--  bcd_in0_temp <=  std_logic_vector(to_unsigned(write_address_int,5));
--  bcd_in2 <= bcd_in0_temp(3 downto 0); 
--  bcd_in3 <= bcd_in0_temp(4 downto 1) srl 3;
-- 
--		
--  bcd_in1_temp <=  std_logic_vector(to_unsigned(read_address_int,5));
--  bcd_in4 <= bcd_in1_temp(3 downto 0); 
--  bcd_in5 <= bcd_in1_temp(4 downto 1) srl 3;
--  
--  bcd_in6 <=  q_int(3 downto 0);
--  bcd_in7 <=  q_int(7 downto 4);
  
  bcd_in0 <=  q_int(3 downto 0);
  bcd_in1 <=  q_int(7 downto 4);
  
  bcd_in4 <=  data_int(3 downto 0);
  bcd_in5 <=  data_int(7 downto 4);
		
  bcd_temp <=  std_logic_vector(to_unsigned(address_int,5));
  bcd_in6 <= bcd_temp(3 downto 0); 
  bcd_in7 <= bcd_temp(4 downto 1) srl 3;
  		 
  END PROCESS;
END structural;

