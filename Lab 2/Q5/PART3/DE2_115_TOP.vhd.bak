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

entity DE2_115_TOP is
  port (
    -- Clocks
    
    CLOCK_50 	: in std_logic;                     -- 50 MHz
    CLOCK2_50 	: in std_logic;                     -- 50 MHz
    CLOCK3_50 	: in std_logic;                     -- 50 MHz
    SMA_CLKIN  : in std_logic;                     -- External Clock Input
    SMA_CLKOUT : out std_logic;                    -- External Clock Output

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

    -- RS-232 interface

    UART_CTS : out std_logic;                      -- UART Clear to Send   
    UART_RTS : in std_logic;                       -- UART Request to Send   
    UART_RXD : in std_logic;                       -- UART Receiver
    UART_TXD : out std_logic;                      -- UART Transmitter   

    -- 16 X 2 LCD Module
    
    LCD_BLON : out std_logic;      							-- Back Light ON/OFF
    LCD_EN   : out std_logic;      							-- Enable
    LCD_ON   : out std_logic;      							-- Power ON/OFF
    LCD_RS   : out std_logic;	   							-- Command/Data Select, 0 = Command, 1 = Data
    LCD_RW   : out std_logic; 	   						-- Read/Write Select, 0 = Write, 1 = Read
    LCD_DATA : inout std_logic_vector(7 downto 0); 	-- Data bus 8 bits

    -- PS/2 ports

    PS2_CLK : inout std_logic;     -- Clock
    PS2_DAT : inout std_logic;     -- Data

    PS2_CLK2 : inout std_logic;    -- Clock
    PS2_DAT2 : inout std_logic;    -- Data

    -- VGA output
    
    VGA_BLANK_N : out std_logic;            -- BLANK
    VGA_CLK 	 : out std_logic;            -- Clock
    VGA_HS 		 : out std_logic;            -- H_SYNC
    VGA_SYNC_N  : out std_logic;            -- SYNC
    VGA_VS 		 : out std_logic;            -- V_SYNC
    VGA_R 		 : out unsigned(7 downto 0); -- Red[9:0]
    VGA_G 		 : out unsigned(7 downto 0); -- Green[9:0]
    VGA_B 		 : out unsigned(7 downto 0); -- Blue[9:0]

    -- SRAM
    
    SRAM_ADDR : out unsigned(19 downto 0);         -- Address bus 20 Bits
    SRAM_DQ   : inout unsigned(15 downto 0);       -- Data bus 16 Bits
    SRAM_CE_N : out std_logic;                     -- Chip Enable
    SRAM_LB_N : out std_logic;                     -- Low-byte Data Mask 
    SRAM_OE_N : out std_logic;                     -- Output Enable
    SRAM_UB_N : out std_logic;                     -- High-byte Data Mask 
    SRAM_WE_N : out std_logic;                     -- Write Enable

    -- Audio CODEC
    
    AUD_ADCDAT 	: in std_logic;               -- ADC Data
    AUD_ADCLRCK 	: inout std_logic;            -- ADC LR Clock
    AUD_BCLK 		: inout std_logic;            -- Bit-Stream Clock
    AUD_DACDAT 	: out std_logic;              -- DAC Data
    AUD_DACLRCK 	: inout std_logic;            -- DAC LR Clock
    AUD_XCK 		: out std_logic               -- Chip Clock
    
    );
  
end DE2_115_TOP;

ARCHITECTURE structural OF DE2_115_TOP IS

--COMPONENT pulse_1k_gen
--   PORT(
--      clk  : IN   STD_LOGIC; 
--      reset : IN   STD_LOGIC;  
--		pulse_1k: OUT STD_LOGIC);
--END COMPONENT;

COMPONENT  counter_1Hz 
port (
  clock:  in std_logic;
  rst:    in std_logic;
  count_enable:  in std_logic;
  Q:      out std_logic
);
END COMPONENT;

COMPONENT BCD_3 
port (
  clock:  in std_logic;
  rst:    in std_logic;
  enable:  in std_logic;
  q0:      out std_logic_vector(3 downto 0);
  q1:      out std_logic_vector(3 downto 0);
  q2:      out std_logic_vector(3 downto 0)
  );
end COMPONENT; 

 signal counter_enable_int: STD_LOGIC; 
 signal q0_int : STD_LOGIC_VECTOR(3 downto 0); 
 signal q1_int : STD_LOGIC_VECTOR(3 downto 0); 
 signal q2_int : STD_LOGIC_VECTOR(3 downto 0); 
--
  BEGIN
 -- S1 : pulse_1k_gen port map(CLOCK_50,KEY(0),LEDG(0));
  CN1 : counter_1Hz  port map(CLOCK_50,SW(17),SW(16),counter_enable_int);
  BCD : BCD_3 port map(CLOCK_50,SW(17),counter_enable_int,q0_int,q1_int,q2_int);

  HEX3 <= "1111111"; HEX4 <= "1111111"; HEX5 <= "1111111"; HEX6 <= "1111111"; 	HEX7 <= "1111111";
--
PROCESS(counter_enable_int,q0_int,q1_int,q2_int)
BEGIN

CASE q0_int is 
	WHEN "0000" => hex0 <= "1000000"; --7E, the seven-segment displays 0
	WHEN "0001" => hex0 <= "1111001"; --30, the seven-segment displays 1
	WHEN "0010" => hex0 <= "0100100"; --6D, the seven-segment displays 2
	WHEN "0011" => hex0 <= "0110000"; --79, the seven-segment displays 3
	WHEN "0100" => hex0 <= "0011001"; --33, the seven-segment displays 4
	WHEN "0101" => hex0 <= "0010010"; --5B, the seven-segment displays 5
	WHEN "0110" => hex0 <= "0000010"; --5F, the seven-segment displays 6
	WHEN "0111" => hex0 <= "1111000"; --70, the seven-segment displays 7
	WHEN "1000" => hex0 <= "0000000"; --7F, the seven-segment displays 8
   WHEN OTHERS => hex0 <= "0011000"; --7B, the seven-segment displays 9	
END CASE; 


CASE q1_int is 
	WHEN "0000" => hex1 <= "1000000"; --7E, the seven-segment displays 0
	WHEN "0001" => hex1 <= "1111001"; --30, the seven-segment displays 1
	WHEN "0010" => hex1 <= "0100100"; --6D, the seven-segment displays 2
	WHEN "0011" => hex1 <= "0110000"; --79, the seven-segment displays 3
	WHEN "0100" => hex1 <= "0011001"; --33, the seven-segment displays 4
	WHEN "0101" => hex1 <= "0010010"; --5B, the seven-segment displays 5
	WHEN "0110" => hex1 <= "0000010"; --5F, the seven-segment displays 6
	WHEN "0111" => hex1 <= "1111000"; --70, the seven-segment displays 7
	WHEN "1000" => hex1 <= "0000000"; --7F, the seven-segment displays 8
   WHEN OTHERS => hex1 <= "0011000"; --7B, the seven-segment displays 9	
END CASE; 

CASE q2_int is 
	WHEN "0000" => hex2 <= "1000000"; --7E, the seven-segment displays 0
	WHEN "0001" => hex2 <= "1111001"; --30, the seven-segment displays 1
	WHEN "0010" => hex2 <= "0100100"; --6D, the seven-segment displays 2
	WHEN "0011" => hex2 <= "0110000"; --79, the seven-segment displays 3
	WHEN "0100" => hex2 <= "0011001"; --33, the seven-segment displays 4
	WHEN "0101" => hex2 <= "0010010"; --5B, the seven-segment displays 5
	WHEN "0110" => hex2 <= "0000010"; --5F, the seven-segment displays 6
	WHEN "0111" => hex2 <= "1111000"; --70, the seven-segment displays 7
	WHEN "1000" => hex2 <= "0000000"; --7F, the seven-segment displays 8
   WHEN OTHERS => hex2 <= "0011000"; --7B, the seven-segment displays 9	
END CASE; 



----a_reg <= SW(16); b_reg <= SW(17); reset_reg <= SW(15); 
--
--	IF s_reg = '0' THEN     HEX0 <= "1000000";
--	ELSIF s_reg = '1' THEN  HEX0 <= "1111001"; 
--	END IF;
--	
--   IF fsm_state_reg = '1' THEN     LEDG(0) <= '0'; LEDR(0) <= '1';
--	ELSIF  fsm_state_reg = '0'	THEN     LEDG(0) <= '1'; LEDR(0) <= '0';
--	END IF;
--	
--	
END PROCESS;


END structural;







