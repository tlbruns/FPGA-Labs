--------------------------------------------------------------------------------
--
--   FileName:         lcd_example.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 32-bit Version 11.1 Build 173 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 6/13/2012 Scott Larson
--     Initial Public Release
--
--   Prints "123456789" on a HD44780 compatible 8-bit interface character LCD 
--   module using the lcd_controller.vhd component.
--
--------------------------------------------------------------------------------

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
  SIGNAL lcd_line1 : lcd_line := (X"45",X"45",X"43",X"45",X"20",X"32",X"37",X"37",X"20",X"20",X"20",X"20",X"20",X"20",X"20",X"20");
  SIGNAL lcd_line2 : lcd_line := (X"46",X"50",X"47",X"41",X"20",X"44",X"65",X"73",X"69",X"67",X"6e",X"20",X"20",X"20",X"20",X"20");
  CONSTANT goto_line2 : STD_LOGIC_VECTOR(9 DOWNTO 0) := ("00" & X"C0"); 
  CONSTANT goto_line1 : STD_LOGIC_VECTOR(9 DOWNTO 0) := ("00" & X"80");   
  SIGNAL lcd_line0  : STD_LOGIC_VECTOR(7 DOWNTO 0); 
  SIGNAL lcd_line0b  : STD_LOGIC_VECTOR(7 DOWNTO 0); 
  SIGNAL count_enable1 : STD_LOGIC; 
  SIGNAL Q1 : STD_LOGIC; 


  ------------------------------------------------------------------- 
--                        ASCII HEX TABLE
--  Hex						Low Hex Digit
-- Value  0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
------\----------------------------------------------------------------
--H  2 |  SP  !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /
--i  3 |  0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?
--g  4 |  @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O
--h  5 |  P   Q   R   S   T   U   V   W   X   Y   Z   [   \   ]   ^   _
--   6 |  `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o
--   7 |  p   q   r   s   t   u   v   w   x   y   z   {   |   }   ~ DEL
-----------------------------------------------------------------------
-- Example "A" is row 4 column 1, so hex value is X"41"
-- *see LCD Controller's Datasheet for other graphics characters available
  
  
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
	  max_count: natural := 250000   -- 50 MHz / 1 Hz
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
   count_enable => count_enable1,
	Q => Q1
  );
  
  count_enable1 <= '1';
  
  Q1 <= Q1;
  LCD_ON <='1';
  
  PROCESS(CLOCK_50)
  VARIABLE char  :  INTEGER := 0; 
  BEGIN
  IF(CLOCK_50 'EVENT AND CLOCK_50 = '1') THEN
		  IF(lcd_busy = '0' AND lcd_enable = '0' and Q1 = '1') THEN
		  
		  char := char + 1;
		  lcd_enable <= '1';
		  lcd_bus <= "00" & "00001011";
		  
		  IF (char <17) THEN
		   if (char = 1) then lcd_bus <= "10" & X"20"; end if;
			lcd_bus <= "10" & lcd_line1(char);
		  END IF;

		
		  
		  IF (char = 17) THEN lcd_bus <= goto_line2; 
		  
		   lcd_line0    <=  lcd_line1(0);
			lcd_line1(0) <=  lcd_line1(1); 
			lcd_line1(1) <=  lcd_line1(2); 
			lcd_line1(2) <=  lcd_line1(3); 
			lcd_line1(3) <=  lcd_line1(4); 
			lcd_line1(4) <=  lcd_line1(5); 
			lcd_line1(5) <=  lcd_line1(6); 
			lcd_line1(6) <=  lcd_line1(7); 
			lcd_line1(7) <=  lcd_line1(8); 
			lcd_line1(8) <=  lcd_line1(9); 
			lcd_line1(9) <=  lcd_line1(10); 
			lcd_line1(10) <= lcd_line1(11); 
			lcd_line1(11) <= lcd_line1(12); 
			lcd_line1(12) <= lcd_line1(13); 
			lcd_line1(13) <= lcd_line1(14); 
			lcd_line1(14) <= lcd_line1(15); 
			lcd_line1(15) <= lcd_line0;
			
		  END IF;
		  
		  IF (char > 17 and char <  35) THEN
		   if (char = 18) then lcd_bus <= "10" & X"20"; end if;
			lcd_bus <= "10" & lcd_line2(char-17);
		  END IF;
			
		  
		  IF (char = 35) THEN 
		  lcd_bus <= goto_line1; char := 0; 
		  	lcd_line0b   <=  lcd_line2(0);
			lcd_line2(0) <=  lcd_line2(1); 
			lcd_line2(1) <=  lcd_line2(2); 
			lcd_line2(2) <=  lcd_line2(3); 
			lcd_line2(3) <=  lcd_line2(4); 
			lcd_line2(4) <=  lcd_line2(5); 
			lcd_line2(5) <=  lcd_line2(6); 
			lcd_line2(6) <=  lcd_line2(7); 
			lcd_line2(7) <=  lcd_line2(8); 
			lcd_line2(8) <=  lcd_line2(9); 
			lcd_line2(9) <=  lcd_line2(10); 
			lcd_line2(10) <= lcd_line2(11); 
			lcd_line2(11) <= lcd_line2(12); 
			lcd_line2(12) <= lcd_line2(13); 
			lcd_line2(13) <= lcd_line2(14); 
			lcd_line2(14) <= lcd_line2(15); 
			lcd_line2(15) <= lcd_line0b;
		  END IF;
			
		  ELSE 
		  
		  lcd_enable <= '0';  
		  END IF;
  END IF;
  END PROCESS; 
END behavior;
  
  
--  
--			IF(lcd_busy = '0' AND lcd_enable = '0') THEN 
--					 lcd_enable <= '1';
--					 counter := counter + 1; 
--					 
--				 CASE counter IS 
--				 WHEN  1 => lcd_bus <= goto_line1 + memory_offset;  
--				 WHEN  2 => lcd_bus <= "10" & lcd_line1(display_offset);
--				 WHEN  3 => lcd_bus <= goto_line2 + memory_offset;
--				 WHEN  4 => lcd_bus <= "10" & lcd_line2(display_offset); 
--				 WHEN  5 => lcd_bus <= "00" & "00011000"; 
--								memory_offset := memory_offset  + 1 ; 
--								display_offset := display_offset + 1; 
--								counter := 0;
--				 if (display_offset = 16) then display_offset := 0;  end if; 
--				 if (memory_offset = 25) then memory_offset := -15;  end if;
--
--				 WHEN OTHERS =>  counter := 1;
--				 END CASE;
--	
--	ELSE
--	lcd_enable <= '0';
--		   
--        
--      END IF;
--    END IF;
--  END PROCESS;
--END behavior;
--
--PROCESS(clk)
--    VARIABLE char  :  INTEGER RANGE 0 TO 10 := 0;
--  BEGIN
--    IF(clk'EVENT AND clk = '1') THEN
--      IF(lcd_busy = '0' AND lcd_enable = '0') THEN
--        lcd_enable <= '1';
--        IF(char < 10) THEN
--          char := char + 1;
--        END IF;
--        CASE char IS
--          WHEN 1 => lcd_bus <= "1000110001";
--          WHEN 2 => lcd_bus <= "1000110010";
--          WHEN 3 => lcd_bus <= "1000110011";
--          WHEN 4 => lcd_bus <= "1000110100";
--          WHEN 5 => lcd_bus <= "1000110101";
--          WHEN 6 => lcd_bus <= "1000110110";
--          WHEN 7 => lcd_bus <= "1000110111";
--          WHEN 8 => lcd_bus <= "1000111000";
--          WHEN 9 => lcd_bus <= "1000111001";
--          WHEN OTHERS => lcd_enable <= '0';
--        END CASE;
--      ELSE
--        lcd_enable <= '0';
--      END IF;
--    END IF;
--  END PROCESS;
--  
--END behavior;
--
--
--
--
--
--
--