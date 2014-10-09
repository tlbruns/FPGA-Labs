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
    
    SRAM_ADDR : out unsigned(19 downto 0);         -- Address bus 20 Bits
    SRAM_DQ   : inout unsigned(15 downto 0);       -- Data bus 16 Bits
    SRAM_CE_N : out std_logic;                     -- Chip Enable
    SRAM_LB_N : out std_logic;                     -- Low-byte Data Mask 
    SRAM_OE_N : out std_logic;                     -- Output Enable
    SRAM_UB_N : out std_logic;                     -- High-byte Data Mask 
    SRAM_WE_N : out std_logic                    -- Write Enable
	 
    );
  
end DE2_115_TOP;

ARCHITECTURE structural OF DE2_115_TOP IS

--component Reg_5 is
--generic ( n : integer := 5);
--port( clk: in std_logic; 
--      rst: in std_logic; 
--      d_in: in std_logic_vector(n-1 downto 0); 
--      d_out: out std_logic_vector(n-1 downto 0) );
--end component;
--
--component Reg_8 is
--generic ( n : integer := 8);
--port( clk: in std_logic; 
--      rst: in std_logic; 
--      d_in: in std_logic_vector(n-1 downto 0); 
--      d_out: out std_logic_vector(n-1 downto 0) );
--end component;
--
--component Reg_1 is
--port( clk: in std_logic; 
--      rst: in std_logic; 
--      d_in: in std_logic; 
--      d_out: out std_logic );
--end component;

component Display_7segment IS
	PORT( bcd	:	IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			seven	:	OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
			);
END component;


component Debounce is
  Port 
  (
	CLK 	: in STD_LOGIC;	-- 50 MHz input clock
   x 		: in STD_LOGIC;	-- Push button input
   DBx 	: out STD_LOGIC	-- Debounced push button
  );
end component;

signal clk_reg:std_logic;
signal rst_reg:std_logic;
signal address_register: std_logic_vector(19 downto 0);
--signal data_register_low: std_logic_vector(7 downto 0);
signal data_register: std_logic_vector(15 downto 0);
signal data_int : std_logic_vector(15 downto 0);
signal we_n_int: std_logic;
signal bcd_in0, bcd_in1, bcd_in2, bcd_in3, bcd_in4, bcd_in5, bcd_in6, bcd_in7 : std_logic_vector(3 downto 0);

BEGIN

	B0 : Debounce PORT MAP (CLOCK_50,KEY(0),clk_reg); 

	SSD0: Display_7segment PORT MAP (bcd_in0, HEX0);
	SSD1: Display_7segment PORT MAP (bcd_in1, HEX1);
	SSD2: Display_7segment PORT MAP (bcd_in2, HEX2);
	SSD3: Display_7segment PORT MAP (bcd_in3, HEX3);
	SSD4: Display_7segment PORT MAP (bcd_in4, HEX4);
	SSD5: Display_7segment PORT MAP (bcd_in5, HEX5);
	SSD6: Display_7segment PORT MAP (bcd_in6, HEX6);
	SSD7: Display_7segment PORT MAP (bcd_in7, HEX7);

   SRAM_CE_N <= '0';
   SRAM_OE_N <= '0';
   SRAM_UB_N <= '0';
   SRAM_LB_N <= '0';
	
	we_n_int <= not SW(17);
	LEDR(17) <= not we_n_int;
	SRAM_WE_N <= we_n_int;
	address_register <= "000000000000000" & SW(15 downto 11);
	SRAM_ADDR <= unsigned(address_register);
	data_int <= "00000000" & SW(7 downto 0);
	
   bcd_in0 <= std_logic_vector(SRAM_DQ(3 downto 0));
   bcd_in1 <= std_logic_vector(SRAM_DQ(7 downto 4));
   bcd_in4 <= data_int(3 downto 0); 
   bcd_in5 <= data_int(7 downto 4);
   bcd_in6 <= address_register(3 downto 0); 
   bcd_in7 <= address_register(7 downto 4);
	
	
	

PROCESS(clk_reg,SW)
BEGIN
	
	IF (clk_reg'event and clk_reg = '1') then 
		data_register <= data_int;
		
		IF (we_n_int = '0') THEN 
		data_register <= std_logic_vector(SRAM_DQ);
		ELSE 
		SRAM_DQ <=  unsigned(data_register);
		END IF; 

	END IF; 
END PROCESS;


END structural;







