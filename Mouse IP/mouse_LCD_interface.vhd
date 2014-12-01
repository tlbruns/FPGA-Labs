LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

	-- Interface Mouse to LCD_Display
ENTITY mouse_LCD_interface IS

	PORT(mouse_cursor_row			: IN	STD_LOGIC_VECTOR(9 DOWNTO 0);
		 mouse_cursor_column		: IN	STD_LOGIC_VECTOR(9 DOWNTO 0);
		 left_button, right_button 	: IN 	STD_LOGIC;
		 Hex_Display_Data			: OUT	STD_LOGIC_VECTOR(23 DOWNTO 0)
		 );
		 
END mouse_LCD_interface;

ARCHITECTURE a OF mouse_LCD_interface IS

BEGIN
Hex_Display_Data(23 DOWNTO 16) <= mouse_cursor_row(9 DOWNTO 2);
Hex_Display_Data(15 DOWNTO 8)  <= mouse_cursor_column(9 DOWNTO 2);
Hex_Display_Data(7 DOWNTO 4) <= "000" & left_button;
Hex_Display_Data(3 DOWNTO 0) <= "000" & right_button;

END a;

