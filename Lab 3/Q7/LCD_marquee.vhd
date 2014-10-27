
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.ALL;

ENTITY lcd_marquee IS


	PORT
	(
	
    CLOCK_50	: IN STD_LOGIC;  -- 50 MHz
    -- 16 X 2 LCD Module
    LCD_BLON : out std_logic;      							-- Back Light ON/OFF
    LCD_EN   : out std_logic;      							-- Enable
    LCD_ON   : out std_logic;      							-- Power ON/OFF
    LCD_RS   : out std_logic;	   							-- Command/Data Select, 0 = Command, 1 = Data
    LCD_RW   : out std_logic; 	   						-- Read/Write Select, 0 = Write, 1 = Read
    LCD_DATA : inout std_logic_vector(7 downto 0) 	      -- Data bus 8 bits
	);
	
END lcd_marquee;

ARCHITECTURE behavior OF lcd_marquee IS
  SIGNAL   lcd_enable : STD_LOGIC;
  SIGNAL   lcd_bus    : STD_LOGIC_VECTOR(9 DOWNTO 0);
  SIGNAL   lcd_busy   : STD_LOGIC;
  TYPE lcd_line IS ARRAY (0 to 15)   OF  STD_LOGIC_VECTOR(7 DOWNTO 0); 
  CONSTANT lcd_line1 : lcd_line := (X"45",X"45",X"43",X"45",X"20",X"32",X"37",X"37",X"20",X"20",X"20",X"20",X"20",X"20",X"20",X"20");
  CONSTANT lcd_line2 : lcd_line := (X"46",X"50",X"47",X"41",X"20",X"44",X"65",X"73",X"69",X"67",X"6e",X"20",X"20",X"20",X"20",X"20");
  CONSTANT  goto_line1 : STD_LOGIC_VECTOR(9 DOWNTO 0) := ("00" & X"90");   
  CONSTANT  goto_line2 : STD_LOGIC_VECTOR(9 DOWNTO 0) := ("00" & X"D0");
  --SIGNAL count_enable1 : STD_LOGIC; 
  SIGNAL Q1 : STD_LOGIC; 

  
  COMPONENT lcd_controller IS
    PORT(
       clk        : IN  STD_LOGIC; --system clock
       reset_n    : IN  STD_LOGIC; --active low reinitializes lcd
       lcd_enable : IN  STD_LOGIC; --latches data into lcd controller
       lcd_bus    : IN  STD_LOGIC_VECTOR(9 DOWNTO 0); --data and control signals
       busy       : OUT STD_LOGIC; --lcd controller busy/idle feedback
       rw, rs, e  : OUT STD_LOGIC; --read/write, setup/data, and enable for lcd
       lcd_data   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --data signals for lcd
  END COMPONENT;
  
COMPONENT counter_1Hz IS   
	generic (
	  width: natural := 26;
	  max_count: natural := 2000000    -- 50 MHz / 1 Hz
	);
	port (
	  clock:  in std_logic;
	  rst:    in std_logic;
	  count_enable:  in std_logic;
	  Q:      out std_logic
	);
END COMPONENT;

BEGIN

  --instantiate the lcd controller
  dut: lcd_controller
    PORT MAP(clk => CLOCK_50, 
	 reset_n => '1', 
	 lcd_enable => lcd_enable, 
	 lcd_bus => lcd_bus, 
    busy => lcd_busy, 
	 rw => LCD_RW, 
	 rs => LCD_RS, 
	 e => LCD_EN, 
	 lcd_data => LCD_DATA
	 );
	
  clk_lcd_gen : counter_1Hz 
  PORT MAP(
	clock => CLOCK_50, 
	rst => '0',
   count_enable => '1',
	Q => Q1
  );
  
 -- count_enable1 <= '1';
  --Q1 <= Q1;
  LCD_ON <='1';
  
  PROCESS(CLOCK_50)
  VARIABLE counter : INTEGER := 0; 
  VARIABLE memory_offset  : INTEGER := 0; 
  VARIABLE display_offset  : INTEGER := 0; 
  BEGIN
  IF(CLOCK_50 'EVENT AND CLOCK_50 = '1') THEN
			IF(lcd_busy = '0' AND lcd_enable = '0' AND Q1 = '1') THEN 
			
					 lcd_enable <= '1';
					 counter := counter + 1; 
					 
				 CASE counter IS 
				 WHEN  1 => lcd_bus <= goto_line1 + memory_offset;  
				 WHEN  2 => lcd_bus <= "10" & lcd_line1(display_offset);
				 WHEN  3 => lcd_bus <= goto_line2 + memory_offset;
				 WHEN  4 => lcd_bus <= "10" & lcd_line2(display_offset); 
				 WHEN  5 => lcd_bus <= "00" & "00011000"; 
								memory_offset := memory_offset  + 1 ; 
								display_offset := display_offset + 1; 
								counter := 0;
				 IF(display_offset = 16) THEN display_offset := 0;  END IF; 
				 IF (memory_offset = 25) THEN memory_offset := -15; END IF;

				 WHEN OTHERS =>  counter := 1;
				 END CASE;
	
	ELSE
	lcd_enable <= '0';
		   
        
      END IF;
    END IF;
  END PROCESS;
END behavior;
