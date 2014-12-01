-------------------------------------------------------------------------------
--
-- Project				: Mouse_LCD_Test
-- File name			: Mouse_LCD_Test.vhd
-- Title				: Mouse LCD display test 
-- Description			:  
--						: 
-- Design library		: N/A
-- Analysis Dependency	: LCD_Display
-- Simulator(s)			: ModelSim-Altera version 6.1g
-- Initialization		: none
-- Notes				: This model is designed for synthesis
--						: Compile with VHDL'93
--
-------------------------------------------------------------------------------
--
-- Revisions
--			Date		Author			Revision		Comments
--		3/28/2009		W.H.Robinson	Rev A			Creation
--
--			
-------------------------------------------------------------------------------

-- Always specify the IEEE library in your design


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

-- Entity declaration
-- 		Defines the interface to the entity

ENTITY Mouse_LCD_Test IS


	PORT
	(
-- 	Note: It is easier to identify individual ports and change their order
--	or types when their declarations are on separate lines.
--	This also helps the readability of your code.

    -- Clocks
    
    CLOCK_50	: IN STD_LOGIC;  -- 50 MHz
 

    -- Input switches
    
    SW 			: IN STD_LOGIC_VECTOR (17 downto 0);         -- DPDT switches


    -- PS/2 port

    PS2_DAT,                    -- Data
    PS2_CLK : INOUT STD_LOGIC;  -- Clock


    -- 16 X 2 LCD Module
    
    LCD_ON		: OUT STD_LOGIC;  -- Power ON/OFF
    LCD_BLON	: OUT STD_LOGIC;  -- Back Light ON/OFF
    LCD_RW		: OUT STD_LOGIC;  -- Read/Write Select, 0 = Write, 1 = Read
    LCD_EN		: OUT STD_LOGIC;  -- Enable
    LCD_RS 		: OUT STD_LOGIC;  -- Command/Data Select, 0 = Command, 1 = Data
    LCD_DATA 	: INOUT STD_LOGIC_VECTOR (7 downto 0) -- Data bus 8 bits

	);
END Mouse_LCD_Test ;


-- Architecture body 
-- 		Describes the functionality or internal implementation of the entity

ARCHITECTURE structural OF Mouse_LCD_Test IS

COMPONENT LCD_Display

	GENERIC(Num_Hex_Digits: Integer:= 6);
	
	PORT(reset				: IN	STD_LOGIC;
	     clk_50MHz			: IN	STD_LOGIC;
		 Hex_Display_Data	: IN    STD_LOGIC_VECTOR((Num_Hex_Digits*4)-1 DOWNTO 0);
		 LCD_RS				: OUT	STD_LOGIC;
		 LCD_E				: OUT	STD_LOGIC;
		 LCD_RW				: OUT   STD_LOGIC;
		 DATA_BUS			: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
		);

END COMPONENT;


COMPONENT MOUSE

   PORT( clk_50MHz, reset 			: IN std_logic;
         mouse_data					: INOUT std_logic;
         mouse_clk 					: INOUT std_logic;
         left_button, right_button	: OUT std_logic;
		 mouse_cursor_row 			: OUT std_logic_vector(9 DOWNTO 0); 
		 mouse_cursor_column 		: OUT std_logic_vector(9 DOWNTO 0)
		);       
		
END COMPONENT;


COMPONENT mouse_LCD_interface

	PORT(mouse_cursor_row			: IN	STD_LOGIC_VECTOR(9 DOWNTO 0);
		 mouse_cursor_column		: IN	STD_LOGIC_VECTOR(9 DOWNTO 0);
		 left_button, right_button 	: IN 	STD_LOGIC;
		 Hex_Display_Data			: OUT	STD_LOGIC_VECTOR(23 DOWNTO 0)
		 );

END COMPONENT;


SIGNAL Hex_Display_Data_int : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL left_button_int : STD_LOGIC;
SIGNAL right_button_int : STD_LOGIC;
SIGNAL mouse_cursor_row_int : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL mouse_cursor_column_int : STD_LOGIC_VECTOR(9 DOWNTO 0);


BEGIN

	LCD_ON   <= '1';
	LCD_BLON <= '1';


	U1: LCD_Display PORT MAP
		(reset				=>	NOT SW(17),
		 clk_50MHz			=>	CLOCK_50,
		 Hex_Display_Data	=>	Hex_Display_Data_int,	
		 LCD_RS				=>	LCD_RS,
		 LCD_E				=>	LCD_EN,
		 LCD_RW				=>	LCD_RW,
		 DATA_BUS			=>	LCD_DATA
		);


	U2: MOUSE PORT MAP
		(clk_50MHz		=> CLOCK_50,
		 reset 			=> NOT SW(17),
         mouse_data		=> PS2_DAT,
         mouse_clk 		=> PS2_CLK,
         left_button	=> left_button_int,
         right_button	=> right_button_int,
		 mouse_cursor_row 	=>	mouse_cursor_row_int,
		 mouse_cursor_column => mouse_cursor_column_int
		);

	
	U3: mouse_LCD_interface PORT MAP
		(mouse_cursor_row		=> mouse_cursor_row_int,
		 mouse_cursor_column	=> mouse_cursor_column_int,
		 left_button 			=> left_button_int,
		 right_button			=> right_button_int,
		 Hex_Display_Data		=> Hex_Display_Data_int
		 );
	

END structural;

