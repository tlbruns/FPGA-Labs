-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/25/2014 22:04:22"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lcd_marquee IS
    PORT (
	CLOCK_50 : IN std_logic;
	LCD_BLON : OUT std_logic;
	LCD_EN : OUT std_logic;
	LCD_ON : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_DATA : INOUT std_logic_vector(7 DOWNTO 0)
	);
END lcd_marquee;

-- Design Ports Information
-- LCD_BLON	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lcd_marquee IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut|Add0~42_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~4_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~8_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~16_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~28_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~30_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~34_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~36_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~45\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~46_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~47\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~48_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~49\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~50_combout\ : std_logic;
SIGNAL \lcd_bus[0]~0_combout\ : std_logic;
SIGNAL \dut|Selector46~0_combout\ : std_logic;
SIGNAL \dut|LessThan9~2_combout\ : std_logic;
SIGNAL \dut|LessThan10~0_combout\ : std_logic;
SIGNAL \dut|LessThan9~5_combout\ : std_logic;
SIGNAL \dut|LessThan9~6_combout\ : std_logic;
SIGNAL \dut|LessThan10~1_combout\ : std_logic;
SIGNAL \dut|LessThan10~2_combout\ : std_logic;
SIGNAL \dut|LessThan11~0_combout\ : std_logic;
SIGNAL \dut|Selector46~1_combout\ : std_logic;
SIGNAL \dut|Selector46~2_combout\ : std_logic;
SIGNAL \dut|Selector46~3_combout\ : std_logic;
SIGNAL \dut|LessThan10~3_combout\ : std_logic;
SIGNAL \dut|LessThan12~0_combout\ : std_logic;
SIGNAL \dut|LessThan12~1_combout\ : std_logic;
SIGNAL \dut|LessThan12~2_combout\ : std_logic;
SIGNAL \dut|Selector46~4_combout\ : std_logic;
SIGNAL \dut|Selector46~5_combout\ : std_logic;
SIGNAL \dut|LessThan4~0_combout\ : std_logic;
SIGNAL \dut|LessThan3~2_combout\ : std_logic;
SIGNAL \dut|Selector46~8_combout\ : std_logic;
SIGNAL \dut|LessThan8~3_combout\ : std_logic;
SIGNAL \dut|LessThan8~6_combout\ : std_logic;
SIGNAL \dut|LessThan8~7_combout\ : std_logic;
SIGNAL \dut|LessThan0~2_combout\ : std_logic;
SIGNAL \dut|clk_count[17]~0_combout\ : std_logic;
SIGNAL \dut|clk_count[17]~1_combout\ : std_logic;
SIGNAL \dut|Selector17~0_combout\ : std_logic;
SIGNAL \dut|Selector7~0_combout\ : std_logic;
SIGNAL \dut|Selector20~0_combout\ : std_logic;
SIGNAL \dut|Selector2~0_combout\ : std_logic;
SIGNAL \dut|Selector26~0_combout\ : std_logic;
SIGNAL \dut|Selector34~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Equal0~1_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Equal0~7_combout\ : std_logic;
SIGNAL \char~0_combout\ : std_logic;
SIGNAL \dut|LessThan8~10_combout\ : std_logic;
SIGNAL \dut|LessThan8~11_combout\ : std_logic;
SIGNAL \dut|lcd_data[1]~5_combout\ : std_logic;
SIGNAL \clk_lcd_gen|prescaler~1_combout\ : std_logic;
SIGNAL \clk_lcd_gen|prescaler~5_combout\ : std_logic;
SIGNAL \lcd_line1[9][0]~q\ : std_logic;
SIGNAL \lcd_line1[10][0]~q\ : std_logic;
SIGNAL \lcd_line1[8][0]~q\ : std_logic;
SIGNAL \lcd_bus~7_combout\ : std_logic;
SIGNAL \lcd_line1[11][0]~q\ : std_logic;
SIGNAL \lcd_bus~8_combout\ : std_logic;
SIGNAL \lcd_line1[6][0]~q\ : std_logic;
SIGNAL \lcd_line1[5][0]~q\ : std_logic;
SIGNAL \lcd_line1[4][0]~q\ : std_logic;
SIGNAL \lcd_bus~9_combout\ : std_logic;
SIGNAL \lcd_line1[7][0]~q\ : std_logic;
SIGNAL \lcd_bus~10_combout\ : std_logic;
SIGNAL \lcd_line1[1][0]~q\ : std_logic;
SIGNAL \lcd_line1[2][0]~q\ : std_logic;
SIGNAL \lcd_line1[0][0]~q\ : std_logic;
SIGNAL \lcd_bus~11_combout\ : std_logic;
SIGNAL \lcd_line1[3][0]~q\ : std_logic;
SIGNAL \lcd_bus~12_combout\ : std_logic;
SIGNAL \lcd_bus~13_combout\ : std_logic;
SIGNAL \lcd_line1[14][0]~q\ : std_logic;
SIGNAL \lcd_line1[13][0]~q\ : std_logic;
SIGNAL \lcd_line1[12][0]~q\ : std_logic;
SIGNAL \lcd_bus~14_combout\ : std_logic;
SIGNAL \lcd_line1[15][0]~q\ : std_logic;
SIGNAL \lcd_bus~15_combout\ : std_logic;
SIGNAL \lcd_bus~16_combout\ : std_logic;
SIGNAL \lcd_line2[10][0]~q\ : std_logic;
SIGNAL \lcd_line2[9][0]~q\ : std_logic;
SIGNAL \lcd_line2[8][0]~q\ : std_logic;
SIGNAL \lcd_bus~17_combout\ : std_logic;
SIGNAL \lcd_line2[11][0]~q\ : std_logic;
SIGNAL \lcd_bus~18_combout\ : std_logic;
SIGNAL \lcd_line2[5][0]~q\ : std_logic;
SIGNAL \lcd_line2[6][0]~q\ : std_logic;
SIGNAL \lcd_line2[4][0]~q\ : std_logic;
SIGNAL \lcd_bus~19_combout\ : std_logic;
SIGNAL \lcd_line2[7][0]~q\ : std_logic;
SIGNAL \lcd_bus~20_combout\ : std_logic;
SIGNAL \lcd_line2[2][0]~q\ : std_logic;
SIGNAL \lcd_line2[1][0]~q\ : std_logic;
SIGNAL \lcd_line2[0][0]~q\ : std_logic;
SIGNAL \lcd_bus~21_combout\ : std_logic;
SIGNAL \lcd_line2[3][0]~q\ : std_logic;
SIGNAL \lcd_bus~22_combout\ : std_logic;
SIGNAL \lcd_bus~23_combout\ : std_logic;
SIGNAL \lcd_line2[13][0]~q\ : std_logic;
SIGNAL \lcd_line2[14][0]~q\ : std_logic;
SIGNAL \lcd_line2[12][0]~q\ : std_logic;
SIGNAL \lcd_bus~24_combout\ : std_logic;
SIGNAL \lcd_line2[15][0]~q\ : std_logic;
SIGNAL \lcd_bus~25_combout\ : std_logic;
SIGNAL \lcd_bus~26_combout\ : std_logic;
SIGNAL \lcd_line1[9][1]~q\ : std_logic;
SIGNAL \lcd_line1[5][1]~q\ : std_logic;
SIGNAL \lcd_line1[1][1]~q\ : std_logic;
SIGNAL \lcd_bus~27_combout\ : std_logic;
SIGNAL \lcd_line1[13][1]~q\ : std_logic;
SIGNAL \lcd_bus~28_combout\ : std_logic;
SIGNAL \lcd_line1[6][1]~q\ : std_logic;
SIGNAL \lcd_line1[10][1]~q\ : std_logic;
SIGNAL \lcd_line1[2][1]~q\ : std_logic;
SIGNAL \lcd_bus~29_combout\ : std_logic;
SIGNAL \lcd_line1[14][1]~q\ : std_logic;
SIGNAL \lcd_bus~30_combout\ : std_logic;
SIGNAL \lcd_line1[4][1]~q\ : std_logic;
SIGNAL \lcd_line1[8][1]~q\ : std_logic;
SIGNAL \lcd_line1[0][1]~q\ : std_logic;
SIGNAL \lcd_bus~31_combout\ : std_logic;
SIGNAL \lcd_line1[12][1]~q\ : std_logic;
SIGNAL \lcd_bus~32_combout\ : std_logic;
SIGNAL \lcd_bus~33_combout\ : std_logic;
SIGNAL \lcd_line1[11][1]~q\ : std_logic;
SIGNAL \lcd_line1[7][1]~q\ : std_logic;
SIGNAL \lcd_line1[3][1]~q\ : std_logic;
SIGNAL \lcd_bus~34_combout\ : std_logic;
SIGNAL \lcd_line1[15][1]~q\ : std_logic;
SIGNAL \lcd_bus~35_combout\ : std_logic;
SIGNAL \lcd_bus~36_combout\ : std_logic;
SIGNAL \lcd_bus~44_combout\ : std_logic;
SIGNAL \lcd_bus~45_combout\ : std_logic;
SIGNAL \lcd_bus~47_combout\ : std_logic;
SIGNAL \lcd_bus~48_combout\ : std_logic;
SIGNAL \lcd_bus~49_combout\ : std_logic;
SIGNAL \lcd_bus~54_combout\ : std_logic;
SIGNAL \lcd_line2[6][2]~q\ : std_logic;
SIGNAL \lcd_line2[5][2]~q\ : std_logic;
SIGNAL \lcd_line2[4][2]~q\ : std_logic;
SIGNAL \lcd_bus~57_combout\ : std_logic;
SIGNAL \lcd_line2[7][2]~q\ : std_logic;
SIGNAL \lcd_bus~58_combout\ : std_logic;
SIGNAL \lcd_line2[9][2]~q\ : std_logic;
SIGNAL \lcd_line2[10][2]~q\ : std_logic;
SIGNAL \lcd_line2[8][2]~q\ : std_logic;
SIGNAL \lcd_bus~59_combout\ : std_logic;
SIGNAL \lcd_line2[11][2]~q\ : std_logic;
SIGNAL \lcd_bus~60_combout\ : std_logic;
SIGNAL \lcd_line2[1][2]~q\ : std_logic;
SIGNAL \lcd_line2[2][2]~q\ : std_logic;
SIGNAL \lcd_line2[0][2]~q\ : std_logic;
SIGNAL \lcd_bus~61_combout\ : std_logic;
SIGNAL \lcd_line2[3][2]~q\ : std_logic;
SIGNAL \lcd_bus~62_combout\ : std_logic;
SIGNAL \lcd_bus~63_combout\ : std_logic;
SIGNAL \lcd_line2[14][2]~q\ : std_logic;
SIGNAL \lcd_line2[13][2]~q\ : std_logic;
SIGNAL \lcd_line2[12][2]~q\ : std_logic;
SIGNAL \lcd_bus~64_combout\ : std_logic;
SIGNAL \lcd_line2[15][2]~q\ : std_logic;
SIGNAL \lcd_bus~65_combout\ : std_logic;
SIGNAL \lcd_bus~66_combout\ : std_logic;
SIGNAL \lcd_bus~69_combout\ : std_logic;
SIGNAL \lcd_line2[5][3]~q\ : std_logic;
SIGNAL \lcd_line2[9][3]~q\ : std_logic;
SIGNAL \lcd_line2[1][3]~q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \lcd_line2[13][3]~q\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \lcd_line2[10][3]~q\ : std_logic;
SIGNAL \lcd_line2[6][3]~q\ : std_logic;
SIGNAL \lcd_line2[2][3]~q\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \lcd_line2[14][3]~q\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \lcd_line2[8][3]~q\ : std_logic;
SIGNAL \lcd_line2[4][3]~q\ : std_logic;
SIGNAL \lcd_line2[0][3]~q\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \lcd_line2[12][3]~q\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \lcd_line2[7][3]~q\ : std_logic;
SIGNAL \lcd_line2[11][3]~q\ : std_logic;
SIGNAL \lcd_line2[3][3]~q\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \lcd_line2[15][3]~q\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \lcd_bus~70_combout\ : std_logic;
SIGNAL \lcd_line2[10][4]~q\ : std_logic;
SIGNAL \lcd_line2[9][4]~q\ : std_logic;
SIGNAL \lcd_line2[8][4]~q\ : std_logic;
SIGNAL \lcd_bus~71_combout\ : std_logic;
SIGNAL \lcd_line2[11][4]~q\ : std_logic;
SIGNAL \lcd_bus~72_combout\ : std_logic;
SIGNAL \lcd_line2[5][4]~q\ : std_logic;
SIGNAL \lcd_line2[6][4]~q\ : std_logic;
SIGNAL \lcd_line2[4][4]~q\ : std_logic;
SIGNAL \lcd_bus~73_combout\ : std_logic;
SIGNAL \lcd_line2[7][4]~q\ : std_logic;
SIGNAL \lcd_bus~74_combout\ : std_logic;
SIGNAL \lcd_line2[2][4]~q\ : std_logic;
SIGNAL \lcd_line2[1][4]~q\ : std_logic;
SIGNAL \lcd_line2[0][4]~q\ : std_logic;
SIGNAL \lcd_bus~75_combout\ : std_logic;
SIGNAL \lcd_line2[3][4]~q\ : std_logic;
SIGNAL \lcd_bus~76_combout\ : std_logic;
SIGNAL \lcd_bus~77_combout\ : std_logic;
SIGNAL \lcd_line2[13][4]~q\ : std_logic;
SIGNAL \lcd_line2[14][4]~q\ : std_logic;
SIGNAL \lcd_line2[12][4]~q\ : std_logic;
SIGNAL \lcd_bus~78_combout\ : std_logic;
SIGNAL \lcd_line2[15][4]~q\ : std_logic;
SIGNAL \lcd_bus~79_combout\ : std_logic;
SIGNAL \lcd_bus~80_combout\ : std_logic;
SIGNAL \lcd_line1[10][4]~q\ : std_logic;
SIGNAL \lcd_line1[6][4]~q\ : std_logic;
SIGNAL \lcd_line1[2][4]~q\ : std_logic;
SIGNAL \lcd_bus~81_combout\ : std_logic;
SIGNAL \lcd_line1[14][4]~q\ : std_logic;
SIGNAL \lcd_bus~82_combout\ : std_logic;
SIGNAL \lcd_line1[5][4]~q\ : std_logic;
SIGNAL \lcd_line1[9][4]~q\ : std_logic;
SIGNAL \lcd_line1[1][4]~q\ : std_logic;
SIGNAL \lcd_bus~83_combout\ : std_logic;
SIGNAL \lcd_line1[13][4]~q\ : std_logic;
SIGNAL \lcd_bus~84_combout\ : std_logic;
SIGNAL \lcd_line1[8][4]~q\ : std_logic;
SIGNAL \lcd_line1[4][4]~q\ : std_logic;
SIGNAL \lcd_line1[0][4]~q\ : std_logic;
SIGNAL \lcd_bus~85_combout\ : std_logic;
SIGNAL \lcd_line1[12][4]~q\ : std_logic;
SIGNAL \lcd_bus~86_combout\ : std_logic;
SIGNAL \lcd_bus~87_combout\ : std_logic;
SIGNAL \lcd_line1[7][4]~q\ : std_logic;
SIGNAL \lcd_line1[11][4]~q\ : std_logic;
SIGNAL \lcd_line1[3][4]~q\ : std_logic;
SIGNAL \lcd_bus~88_combout\ : std_logic;
SIGNAL \lcd_line1[15][4]~q\ : std_logic;
SIGNAL \lcd_bus~89_combout\ : std_logic;
SIGNAL \lcd_bus~90_combout\ : std_logic;
SIGNAL \lcd_bus~91_combout\ : std_logic;
SIGNAL \lcd_bus~99_combout\ : std_logic;
SIGNAL \lcd_line1[9][5]~q\ : std_logic;
SIGNAL \lcd_line1[10][5]~q\ : std_logic;
SIGNAL \lcd_line1[8][5]~q\ : std_logic;
SIGNAL \lcd_bus~102_combout\ : std_logic;
SIGNAL \lcd_line1[11][5]~q\ : std_logic;
SIGNAL \lcd_bus~103_combout\ : std_logic;
SIGNAL \lcd_line1[6][5]~q\ : std_logic;
SIGNAL \lcd_line1[5][5]~q\ : std_logic;
SIGNAL \lcd_line1[4][5]~q\ : std_logic;
SIGNAL \lcd_bus~104_combout\ : std_logic;
SIGNAL \lcd_line1[7][5]~q\ : std_logic;
SIGNAL \lcd_bus~105_combout\ : std_logic;
SIGNAL \lcd_line1[1][5]~q\ : std_logic;
SIGNAL \lcd_line1[2][5]~q\ : std_logic;
SIGNAL \lcd_line1[0][5]~q\ : std_logic;
SIGNAL \lcd_bus~106_combout\ : std_logic;
SIGNAL \lcd_line1[3][5]~q\ : std_logic;
SIGNAL \lcd_bus~107_combout\ : std_logic;
SIGNAL \lcd_bus~108_combout\ : std_logic;
SIGNAL \lcd_line1[14][5]~q\ : std_logic;
SIGNAL \lcd_line1[13][5]~q\ : std_logic;
SIGNAL \lcd_line1[12][5]~q\ : std_logic;
SIGNAL \lcd_bus~109_combout\ : std_logic;
SIGNAL \lcd_line1[15][5]~q\ : std_logic;
SIGNAL \lcd_bus~110_combout\ : std_logic;
SIGNAL \lcd_bus~111_combout\ : std_logic;
SIGNAL \lcd_line1[9][6]~q\ : std_logic;
SIGNAL \lcd_line1[5][6]~q\ : std_logic;
SIGNAL \lcd_line1[1][6]~q\ : std_logic;
SIGNAL \lcd_bus~113_combout\ : std_logic;
SIGNAL \lcd_line1[13][6]~q\ : std_logic;
SIGNAL \lcd_bus~114_combout\ : std_logic;
SIGNAL \lcd_line1[6][6]~q\ : std_logic;
SIGNAL \lcd_line1[10][6]~q\ : std_logic;
SIGNAL \lcd_line1[2][6]~q\ : std_logic;
SIGNAL \lcd_bus~115_combout\ : std_logic;
SIGNAL \lcd_line1[14][6]~q\ : std_logic;
SIGNAL \lcd_bus~116_combout\ : std_logic;
SIGNAL \lcd_line1[4][6]~q\ : std_logic;
SIGNAL \lcd_line1[8][6]~q\ : std_logic;
SIGNAL \lcd_line1[0][6]~q\ : std_logic;
SIGNAL \lcd_bus~117_combout\ : std_logic;
SIGNAL \lcd_line1[12][6]~q\ : std_logic;
SIGNAL \lcd_bus~118_combout\ : std_logic;
SIGNAL \lcd_bus~119_combout\ : std_logic;
SIGNAL \lcd_line1[11][6]~q\ : std_logic;
SIGNAL \lcd_line1[7][6]~q\ : std_logic;
SIGNAL \lcd_line1[3][6]~q\ : std_logic;
SIGNAL \lcd_bus~120_combout\ : std_logic;
SIGNAL \lcd_line1[15][6]~q\ : std_logic;
SIGNAL \lcd_bus~121_combout\ : std_logic;
SIGNAL \lcd_bus~122_combout\ : std_logic;
SIGNAL \lcd_bus~130_combout\ : std_logic;
SIGNAL \lcd_bus~133_combout\ : std_logic;
SIGNAL \lcd_line1[5][0]~3_combout\ : std_logic;
SIGNAL \lcd_line1[7][0]~4_combout\ : std_logic;
SIGNAL \lcd_line1[3][0]~5_combout\ : std_logic;
SIGNAL \lcd_line2[9][0]~3_combout\ : std_logic;
SIGNAL \lcd_line2[5][0]~4_combout\ : std_logic;
SIGNAL \lcd_line2[1][0]~5_combout\ : std_logic;
SIGNAL \lcd_line2[3][0]~6_combout\ : std_logic;
SIGNAL \lcd_line1[1][1]~6_combout\ : std_logic;
SIGNAL \lcd_line1[2][1]~7_combout\ : std_logic;
SIGNAL \lcd_line1[4][1]~8_combout\ : std_logic;
SIGNAL \lcd_line1[7][1]~9_combout\ : std_logic;
SIGNAL \lcd_line2[6][2]~14_combout\ : std_logic;
SIGNAL \lcd_line2[4][2]~15_combout\ : std_logic;
SIGNAL \lcd_line2[10][2]~16_combout\ : std_logic;
SIGNAL \lcd_line2[8][2]~17_combout\ : std_logic;
SIGNAL \lcd_line2[1][2]~18_combout\ : std_logic;
SIGNAL \lcd_line2[2][2]~19_combout\ : std_logic;
SIGNAL \lcd_line2[0][2]~20_combout\ : std_logic;
SIGNAL \lcd_line2[9][3]~21_combout\ : std_logic;
SIGNAL \lcd_line2[10][3]~22_combout\ : std_logic;
SIGNAL \lcd_line2[8][3]~23_combout\ : std_logic;
SIGNAL \lcd_line2[7][3]~24_combout\ : std_logic;
SIGNAL \lcd_line2[6][4]~25_combout\ : std_logic;
SIGNAL \lcd_line2[7][4]~26_combout\ : std_logic;
SIGNAL \lcd_line2[1][4]~27_combout\ : std_logic;
SIGNAL \lcd_line2[0][4]~28_combout\ : std_logic;
SIGNAL \lcd_line1[4][4]~15_combout\ : std_logic;
SIGNAL \lcd_line1[7][4]~16_combout\ : std_logic;
SIGNAL \lcd_line1[3][5]~17_combout\ : std_logic;
SIGNAL \lcd_line1[15][5]~18_combout\ : std_logic;
SIGNAL \lcd_line1[3][6]~19_combout\ : std_logic;
SIGNAL \lcd_line0[0]~0_combout\ : std_logic;
SIGNAL \lcd_line0b[2]~1_combout\ : std_logic;
SIGNAL \lcd_line0[6]~2_combout\ : std_logic;
SIGNAL \LCD_DATA[0]~input_o\ : std_logic;
SIGNAL \LCD_DATA[1]~input_o\ : std_logic;
SIGNAL \LCD_DATA[2]~input_o\ : std_logic;
SIGNAL \LCD_DATA[3]~input_o\ : std_logic;
SIGNAL \LCD_DATA[4]~input_o\ : std_logic;
SIGNAL \LCD_DATA[5]~input_o\ : std_logic;
SIGNAL \LCD_DATA[6]~input_o\ : std_logic;
SIGNAL \LCD_DATA[7]~input_o\ : std_logic;
SIGNAL \lcd_line1[8][0]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[2][0]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[11][0]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[14][0]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[7][0]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[10][0]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[13][0]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[14][0]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[12][1]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[13][1]~feeder_combout\ : std_logic;
SIGNAL \lcd_line0[1]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[11][1]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[6][1]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[9][2]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[13][2]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[13][3]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[11][3]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[14][3]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[9][4]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[2][4]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[13][4]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[5][4]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[8][4]~feeder_combout\ : std_logic;
SIGNAL \lcd_line0[4]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[11][4]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[6][4]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[8][5]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[10][5]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[13][5]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[8][6]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[5][6]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[13][6]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[10][6]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[6][6]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[15][2]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[15][4]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[8][3]~feeder_combout\ : std_logic;
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \LCD_BLON~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_lcd_gen|prescaler~7_combout\ : std_logic;
SIGNAL \clk_lcd_gen|prescaler~4_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~1\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~2_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~3\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~5\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~7\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~9\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~10_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~11\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~12_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~13\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~14_combout\ : std_logic;
SIGNAL \clk_lcd_gen|prescaler~2_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~15\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~17\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~18_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~19\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~21\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~22_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~23\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~25\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~26_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~27\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~29\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~31\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~33\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~35\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~37\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~39\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~40_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~41\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~42_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~43\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~44_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Equal0~6_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~6_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~0_combout\ : std_logic;
SIGNAL \clk_lcd_gen|prescaler~0_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Equal0~0_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~20_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Equal0~2_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~24_combout\ : std_logic;
SIGNAL \clk_lcd_gen|prescaler~3_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Equal0~3_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Equal0~4_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~32_combout\ : std_logic;
SIGNAL \clk_lcd_gen|prescaler~6_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Add0~38_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Equal0~5_combout\ : std_logic;
SIGNAL \clk_lcd_gen|Equal0~8_combout\ : std_logic;
SIGNAL \clk_lcd_gen|pre_Q~feeder_combout\ : std_logic;
SIGNAL \clk_lcd_gen|pre_Q~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \lcd_enable~feeder_combout\ : std_logic;
SIGNAL \lcd_enable~q\ : std_logic;
SIGNAL \dut|Add0~58_combout\ : std_logic;
SIGNAL \dut|Selector5~0_combout\ : std_logic;
SIGNAL \dut|Selector27~0_combout\ : std_logic;
SIGNAL \dut|Selector28~0_combout\ : std_logic;
SIGNAL \dut|Add0~0_combout\ : std_logic;
SIGNAL \dut|Selector32~0_combout\ : std_logic;
SIGNAL \dut|Add0~1\ : std_logic;
SIGNAL \dut|Add0~2_combout\ : std_logic;
SIGNAL \dut|Selector31~0_combout\ : std_logic;
SIGNAL \dut|Add0~3\ : std_logic;
SIGNAL \dut|Add0~4_combout\ : std_logic;
SIGNAL \dut|Selector30~0_combout\ : std_logic;
SIGNAL \dut|Add0~5\ : std_logic;
SIGNAL \dut|Add0~6_combout\ : std_logic;
SIGNAL \dut|Selector29~0_combout\ : std_logic;
SIGNAL \dut|Add0~7\ : std_logic;
SIGNAL \dut|Add0~9\ : std_logic;
SIGNAL \dut|Add0~11\ : std_logic;
SIGNAL \dut|Add0~13\ : std_logic;
SIGNAL \dut|Add0~15\ : std_logic;
SIGNAL \dut|Add0~17\ : std_logic;
SIGNAL \dut|Add0~18_combout\ : std_logic;
SIGNAL \dut|Selector23~0_combout\ : std_logic;
SIGNAL \dut|Add0~19\ : std_logic;
SIGNAL \dut|Add0~20_combout\ : std_logic;
SIGNAL \dut|Selector22~0_combout\ : std_logic;
SIGNAL \dut|Add0~21\ : std_logic;
SIGNAL \dut|Add0~23\ : std_logic;
SIGNAL \dut|Add0~25\ : std_logic;
SIGNAL \dut|Add0~27\ : std_logic;
SIGNAL \dut|Add0~29\ : std_logic;
SIGNAL \dut|Add0~31\ : std_logic;
SIGNAL \dut|Add0~33\ : std_logic;
SIGNAL \dut|Add0~34_combout\ : std_logic;
SIGNAL \dut|Selector15~0_combout\ : std_logic;
SIGNAL \dut|Add0~35\ : std_logic;
SIGNAL \dut|Add0~36_combout\ : std_logic;
SIGNAL \dut|Selector14~0_combout\ : std_logic;
SIGNAL \dut|Add0~37\ : std_logic;
SIGNAL \dut|Add0~39\ : std_logic;
SIGNAL \dut|Add0~40_combout\ : std_logic;
SIGNAL \dut|Selector12~0_combout\ : std_logic;
SIGNAL \dut|Add0~41\ : std_logic;
SIGNAL \dut|Add0~43\ : std_logic;
SIGNAL \dut|Add0~45\ : std_logic;
SIGNAL \dut|Add0~47\ : std_logic;
SIGNAL \dut|Add0~49\ : std_logic;
SIGNAL \dut|Add0~51\ : std_logic;
SIGNAL \dut|Add0~52_combout\ : std_logic;
SIGNAL \dut|Selector6~0_combout\ : std_logic;
SIGNAL \dut|Add0~53\ : std_logic;
SIGNAL \dut|Add0~55\ : std_logic;
SIGNAL \dut|Add0~56_combout\ : std_logic;
SIGNAL \dut|Add0~50_combout\ : std_logic;
SIGNAL \dut|Add0~46_combout\ : std_logic;
SIGNAL \dut|Add0~44_combout\ : std_logic;
SIGNAL \dut|Add0~48_combout\ : std_logic;
SIGNAL \dut|LessThan8~1_combout\ : std_logic;
SIGNAL \dut|LessThan8~0_combout\ : std_logic;
SIGNAL \dut|busy~4_combout\ : std_logic;
SIGNAL \dut|busy~5_combout\ : std_logic;
SIGNAL \dut|Add0~28_combout\ : std_logic;
SIGNAL \dut|Add0~12_combout\ : std_logic;
SIGNAL \dut|Add0~8_combout\ : std_logic;
SIGNAL \dut|Add0~10_combout\ : std_logic;
SIGNAL \dut|LessThan8~2_combout\ : std_logic;
SIGNAL \dut|Add0~14_combout\ : std_logic;
SIGNAL \dut|Add0~16_combout\ : std_logic;
SIGNAL \dut|LessThan8~4_combout\ : std_logic;
SIGNAL \dut|LessThan7~1_combout\ : std_logic;
SIGNAL \dut|Add0~22_combout\ : std_logic;
SIGNAL \dut|Add0~24_combout\ : std_logic;
SIGNAL \dut|LessThan1~0_combout\ : std_logic;
SIGNAL \dut|LessThan7~2_combout\ : std_logic;
SIGNAL \dut|LessThan6~0_combout\ : std_logic;
SIGNAL \dut|LessThan6~1_combout\ : std_logic;
SIGNAL \dut|Add0~26_combout\ : std_logic;
SIGNAL \dut|Add0~32_combout\ : std_logic;
SIGNAL \dut|LessThan8~5_combout\ : std_logic;
SIGNAL \dut|LessThan6~2_combout\ : std_logic;
SIGNAL \dut|clk_count[17]~3_combout\ : std_logic;
SIGNAL \dut|clk_count[17]~4_combout\ : std_logic;
SIGNAL \dut|Selector10~0_combout\ : std_logic;
SIGNAL \dut|Selector9~0_combout\ : std_logic;
SIGNAL \dut|Selector8~0_combout\ : std_logic;
SIGNAL \dut|LessThan9~0_combout\ : std_logic;
SIGNAL \dut|LessThan9~1_combout\ : std_logic;
SIGNAL \dut|Selector3~0_combout\ : std_logic;
SIGNAL \dut|LessThan9~4_combout\ : std_logic;
SIGNAL \dut|Selector19~0_combout\ : std_logic;
SIGNAL \dut|Selector21~0_combout\ : std_logic;
SIGNAL \dut|LessThan0~3_combout\ : std_logic;
SIGNAL \dut|Selector16~0_combout\ : std_logic;
SIGNAL \dut|Add0~38_combout\ : std_logic;
SIGNAL \dut|Selector13~0_combout\ : std_logic;
SIGNAL \dut|Selector18~0_combout\ : std_logic;
SIGNAL \dut|LessThan0~0_combout\ : std_logic;
SIGNAL \dut|LessThan0~4_combout\ : std_logic;
SIGNAL \dut|Selector25~0_combout\ : std_logic;
SIGNAL \dut|Selector24~0_combout\ : std_logic;
SIGNAL \dut|LessThan0~5_combout\ : std_logic;
SIGNAL \dut|LessThan0~6_combout\ : std_logic;
SIGNAL \dut|LessThan0~1_combout\ : std_logic;
SIGNAL \dut|LessThan0~7_combout\ : std_logic;
SIGNAL \dut|LessThan0~8_combout\ : std_logic;
SIGNAL \dut|state~6_combout\ : std_logic;
SIGNAL \dut|state.power_up~feeder_combout\ : std_logic;
SIGNAL \dut|state.power_up~q\ : std_logic;
SIGNAL \dut|LessThan8~8_combout\ : std_logic;
SIGNAL \dut|LessThan8~9_combout\ : std_logic;
SIGNAL \dut|clk_count[17]~2_combout\ : std_logic;
SIGNAL \dut|clk_count[17]~5_combout\ : std_logic;
SIGNAL \dut|Selector4~0_combout\ : std_logic;
SIGNAL \dut|Add0~57\ : std_logic;
SIGNAL \dut|Add0~59\ : std_logic;
SIGNAL \dut|Add0~60_combout\ : std_logic;
SIGNAL \dut|Add0~30_combout\ : std_logic;
SIGNAL \dut|LessThan7~3_combout\ : std_logic;
SIGNAL \dut|LessThan7~4_combout\ : std_logic;
SIGNAL \dut|LessThan7~5_combout\ : std_logic;
SIGNAL \dut|busy~6_combout\ : std_logic;
SIGNAL \dut|Add0~54_combout\ : std_logic;
SIGNAL \dut|LessThan4~1_combout\ : std_logic;
SIGNAL \dut|LessThan4~2_combout\ : std_logic;
SIGNAL \dut|LessThan3~0_combout\ : std_logic;
SIGNAL \dut|LessThan3~1_combout\ : std_logic;
SIGNAL \dut|LessThan3~3_combout\ : std_logic;
SIGNAL \dut|LessThan3~4_combout\ : std_logic;
SIGNAL \dut|Selector34~0_combout\ : std_logic;
SIGNAL \dut|Selector34~2_combout\ : std_logic;
SIGNAL \dut|state.ready~q\ : std_logic;
SIGNAL \dut|LessThan7~0_combout\ : std_logic;
SIGNAL \dut|LessThan1~1_combout\ : std_logic;
SIGNAL \dut|LessThan1~3_combout\ : std_logic;
SIGNAL \dut|Selector11~0_combout\ : std_logic;
SIGNAL \dut|LessThan9~3_combout\ : std_logic;
SIGNAL \dut|LessThan9~7_combout\ : std_logic;
SIGNAL \dut|LessThan9~8_combout\ : std_logic;
SIGNAL \dut|Selector35~2_combout\ : std_logic;
SIGNAL \dut|Selector1~0_combout\ : std_logic;
SIGNAL \dut|Add0~61\ : std_logic;
SIGNAL \dut|Add0~62_combout\ : std_logic;
SIGNAL \dut|busy~7_combout\ : std_logic;
SIGNAL \dut|Selector33~0_combout\ : std_logic;
SIGNAL \dut|state.initialize~q\ : std_logic;
SIGNAL \dut|Selector45~2_combout\ : std_logic;
SIGNAL \dut|LessThan5~0_combout\ : std_logic;
SIGNAL \dut|LessThan5~1_combout\ : std_logic;
SIGNAL \dut|LessThan5~2_combout\ : std_logic;
SIGNAL \dut|LessThan5~3_combout\ : std_logic;
SIGNAL \dut|LessThan5~4_combout\ : std_logic;
SIGNAL \dut|LessThan4~3_combout\ : std_logic;
SIGNAL \dut|LessThan4~4_combout\ : std_logic;
SIGNAL \dut|LessThan4~5_combout\ : std_logic;
SIGNAL \dut|Selector46~12_combout\ : std_logic;
SIGNAL \dut|Selector45~3_combout\ : std_logic;
SIGNAL \dut|Selector45~4_combout\ : std_logic;
SIGNAL \dut|lcd_data[1]~8_combout\ : std_logic;
SIGNAL \dut|lcd_data[1]~2_combout\ : std_logic;
SIGNAL \dut|lcd_data[1]~6_combout\ : std_logic;
SIGNAL \dut|LessThan2~1_combout\ : std_logic;
SIGNAL \dut|LessThan2~0_combout\ : std_logic;
SIGNAL \dut|LessThan2~2_combout\ : std_logic;
SIGNAL \dut|lcd_data[1]~3_combout\ : std_logic;
SIGNAL \dut|lcd_data[1]~4_combout\ : std_logic;
SIGNAL \dut|lcd_data[1]~7_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \char~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \lcd_bus~5_combout\ : std_logic;
SIGNAL \lcd_bus[1]~1_combout\ : std_logic;
SIGNAL \dut|Selector0~0_combout\ : std_logic;
SIGNAL \dut|busy~q\ : std_logic;
SIGNAL \lcd_line2[0][0]~2_combout\ : std_logic;
SIGNAL \lcd_line2[5][1]~q\ : std_logic;
SIGNAL \lcd_line2[4][1]~q\ : std_logic;
SIGNAL \lcd_line2[3][1]~q\ : std_logic;
SIGNAL \lcd_line2[2][1]~9_combout\ : std_logic;
SIGNAL \lcd_line2[2][1]~q\ : std_logic;
SIGNAL \lcd_line2[1][1]~10_combout\ : std_logic;
SIGNAL \lcd_line2[1][1]~q\ : std_logic;
SIGNAL \lcd_line2[0][1]~12_combout\ : std_logic;
SIGNAL \lcd_line2[0][1]~q\ : std_logic;
SIGNAL \lcd_line0b[1]~0_combout\ : std_logic;
SIGNAL \lcd_line2[15][1]~q\ : std_logic;
SIGNAL \lcd_line2[14][1]~q\ : std_logic;
SIGNAL \lcd_line2[13][1]~q\ : std_logic;
SIGNAL \lcd_line2[12][1]~q\ : std_logic;
SIGNAL \lcd_line2[11][1]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[11][1]~q\ : std_logic;
SIGNAL \lcd_line2[10][1]~8_combout\ : std_logic;
SIGNAL \lcd_line2[10][1]~q\ : std_logic;
SIGNAL \lcd_line2[9][1]~q\ : std_logic;
SIGNAL \lcd_line2[8][1]~11_combout\ : std_logic;
SIGNAL \lcd_line2[8][1]~q\ : std_logic;
SIGNAL \lcd_line2[7][1]~13_combout\ : std_logic;
SIGNAL \lcd_line2[7][1]~q\ : std_logic;
SIGNAL \lcd_line2[6][1]~7_combout\ : std_logic;
SIGNAL \lcd_line2[6][1]~q\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \lcd_bus~37_combout\ : std_logic;
SIGNAL \lcd_bus~38_combout\ : std_logic;
SIGNAL \lcd_bus~39_combout\ : std_logic;
SIGNAL \lcd_bus~40_combout\ : std_logic;
SIGNAL \lcd_bus~41_combout\ : std_logic;
SIGNAL \lcd_bus~42_combout\ : std_logic;
SIGNAL \lcd_bus~43_combout\ : std_logic;
SIGNAL \lcd_bus~46_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \dut|Selector35~0_combout\ : std_logic;
SIGNAL \dut|busy~2_combout\ : std_logic;
SIGNAL \dut|busy~3_combout\ : std_logic;
SIGNAL \dut|Selector44~2_combout\ : std_logic;
SIGNAL \dut|Selector44~3_combout\ : std_logic;
SIGNAL \dut|Selector44~4_combout\ : std_logic;
SIGNAL \lcd_line1[0][0]~2_combout\ : std_logic;
SIGNAL \lcd_line1[12][2]~q\ : std_logic;
SIGNAL \lcd_line1[11][2]~q\ : std_logic;
SIGNAL \lcd_line1[10][2]~q\ : std_logic;
SIGNAL \lcd_line1[9][2]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[9][2]~q\ : std_logic;
SIGNAL \lcd_line1[8][2]~q\ : std_logic;
SIGNAL \lcd_line1[7][2]~11_combout\ : std_logic;
SIGNAL \lcd_line1[7][2]~q\ : std_logic;
SIGNAL \lcd_line1[6][2]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[6][2]~q\ : std_logic;
SIGNAL \lcd_line1[5][2]~10_combout\ : std_logic;
SIGNAL \lcd_line1[5][2]~q\ : std_logic;
SIGNAL \lcd_line1[4][2]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[4][2]~q\ : std_logic;
SIGNAL \lcd_line1[3][2]~14_combout\ : std_logic;
SIGNAL \lcd_line1[3][2]~q\ : std_logic;
SIGNAL \lcd_line1[2][2]~12_combout\ : std_logic;
SIGNAL \lcd_line1[2][2]~q\ : std_logic;
SIGNAL \lcd_line1[1][2]~13_combout\ : std_logic;
SIGNAL \lcd_line1[1][2]~q\ : std_logic;
SIGNAL \lcd_line1[0][2]~q\ : std_logic;
SIGNAL \lcd_line0[2]~1_combout\ : std_logic;
SIGNAL \lcd_line1[15][2]~q\ : std_logic;
SIGNAL \lcd_line1[14][2]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[14][2]~q\ : std_logic;
SIGNAL \lcd_line1[13][2]~feeder_combout\ : std_logic;
SIGNAL \lcd_line1[13][2]~q\ : std_logic;
SIGNAL \lcd_bus~55_combout\ : std_logic;
SIGNAL \lcd_bus~51_combout\ : std_logic;
SIGNAL \lcd_bus~52_combout\ : std_logic;
SIGNAL \lcd_bus~50_combout\ : std_logic;
SIGNAL \lcd_bus~53_combout\ : std_logic;
SIGNAL \lcd_bus~56_combout\ : std_logic;
SIGNAL \lcd_bus~67_combout\ : std_logic;
SIGNAL \lcd_bus~134_combout\ : std_logic;
SIGNAL \lcd_bus~68_combout\ : std_logic;
SIGNAL \dut|Selector43~2_combout\ : std_logic;
SIGNAL \dut|Selector42~0_combout\ : std_logic;
SIGNAL \dut|Selector42~1_combout\ : std_logic;
SIGNAL \dut|Selector41~4_combout\ : std_logic;
SIGNAL \dut|Selector41~5_combout\ : std_logic;
SIGNAL \char~2_combout\ : std_logic;
SIGNAL \lcd_line2[7][5]~q\ : std_logic;
SIGNAL \lcd_line2[6][5]~q\ : std_logic;
SIGNAL \lcd_line2[5][5]~29_combout\ : std_logic;
SIGNAL \lcd_line2[5][5]~q\ : std_logic;
SIGNAL \lcd_line2[4][5]~30_combout\ : std_logic;
SIGNAL \lcd_line2[4][5]~q\ : std_logic;
SIGNAL \lcd_line2[3][5]~31_combout\ : std_logic;
SIGNAL \lcd_line2[3][5]~q\ : std_logic;
SIGNAL \lcd_line2[2][5]~q\ : std_logic;
SIGNAL \lcd_line2[1][5]~q\ : std_logic;
SIGNAL \lcd_line2[0][5]~q\ : std_logic;
SIGNAL \lcd_line0b[5]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[15][5]~32_combout\ : std_logic;
SIGNAL \lcd_line2[15][5]~q\ : std_logic;
SIGNAL \lcd_line2[14][5]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[14][5]~q\ : std_logic;
SIGNAL \lcd_line2[13][5]~q\ : std_logic;
SIGNAL \lcd_line2[12][5]~q\ : std_logic;
SIGNAL \lcd_line2[11][5]~q\ : std_logic;
SIGNAL \lcd_line2[10][5]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[10][5]~q\ : std_logic;
SIGNAL \lcd_line2[9][5]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[9][5]~q\ : std_logic;
SIGNAL \lcd_line2[8][5]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[8][5]~q\ : std_logic;
SIGNAL \lcd_bus~96_combout\ : std_logic;
SIGNAL \lcd_bus~97_combout\ : std_logic;
SIGNAL \lcd_bus~94_combout\ : std_logic;
SIGNAL \lcd_bus~95_combout\ : std_logic;
SIGNAL \lcd_bus~98_combout\ : std_logic;
SIGNAL \lcd_bus~100_combout\ : std_logic;
SIGNAL \lcd_bus~92_combout\ : std_logic;
SIGNAL \lcd_bus~93_combout\ : std_logic;
SIGNAL \lcd_bus~101_combout\ : std_logic;
SIGNAL \lcd_bus~112_combout\ : std_logic;
SIGNAL \dut|Selector40~2_combout\ : std_logic;
SIGNAL \lcd_bus[6]~2_combout\ : std_logic;
SIGNAL \lcd_line2[13][6]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[13][6]~q\ : std_logic;
SIGNAL \lcd_line2[12][6]~q\ : std_logic;
SIGNAL \lcd_line2[11][6]~q\ : std_logic;
SIGNAL \lcd_line2[10][6]~34_combout\ : std_logic;
SIGNAL \lcd_line2[10][6]~q\ : std_logic;
SIGNAL \lcd_line2[9][6]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[9][6]~q\ : std_logic;
SIGNAL \lcd_line2[8][6]~q\ : std_logic;
SIGNAL \lcd_line2[7][6]~q\ : std_logic;
SIGNAL \lcd_line2[6][6]~q\ : std_logic;
SIGNAL \lcd_line2[5][6]~q\ : std_logic;
SIGNAL \lcd_line2[4][6]~33_combout\ : std_logic;
SIGNAL \lcd_line2[4][6]~q\ : std_logic;
SIGNAL \lcd_line2[3][6]~35_combout\ : std_logic;
SIGNAL \lcd_line2[3][6]~q\ : std_logic;
SIGNAL \lcd_line2[2][6]~feeder_combout\ : std_logic;
SIGNAL \lcd_line2[2][6]~q\ : std_logic;
SIGNAL \lcd_line2[1][6]~q\ : std_logic;
SIGNAL \lcd_line2[0][6]~q\ : std_logic;
SIGNAL \lcd_line0b[6]~2_combout\ : std_logic;
SIGNAL \lcd_line2[15][6]~q\ : std_logic;
SIGNAL \lcd_line2[14][6]~q\ : std_logic;
SIGNAL \lcd_bus~131_combout\ : std_logic;
SIGNAL \lcd_bus~123_combout\ : std_logic;
SIGNAL \lcd_bus~124_combout\ : std_logic;
SIGNAL \lcd_bus~125_combout\ : std_logic;
SIGNAL \lcd_bus~126_combout\ : std_logic;
SIGNAL \lcd_bus~127_combout\ : std_logic;
SIGNAL \lcd_bus~128_combout\ : std_logic;
SIGNAL \lcd_bus~129_combout\ : std_logic;
SIGNAL \lcd_bus~132_combout\ : std_logic;
SIGNAL \dut|Selector39~0_combout\ : std_logic;
SIGNAL \dut|Selector38~0_combout\ : std_logic;
SIGNAL \dut|Selector35~1_combout\ : std_logic;
SIGNAL \dut|state.send~q\ : std_logic;
SIGNAL \dut|Selector46~6_combout\ : std_logic;
SIGNAL \dut|LessThan1~2_combout\ : std_logic;
SIGNAL \dut|Selector46~7_combout\ : std_logic;
SIGNAL \dut|Selector46~9_combout\ : std_logic;
SIGNAL \dut|LessThan2~3_combout\ : std_logic;
SIGNAL \dut|Selector46~10_combout\ : std_logic;
SIGNAL \dut|Selector46~11_combout\ : std_logic;
SIGNAL \dut|Selector46~13_combout\ : std_logic;
SIGNAL \dut|Selector46~14_combout\ : std_logic;
SIGNAL \dut|Selector46~15_combout\ : std_logic;
SIGNAL \dut|e~q\ : std_logic;
SIGNAL \lcd_bus~6_combout\ : std_logic;
SIGNAL \dut|rs~0_combout\ : std_logic;
SIGNAL \dut|rs~1_combout\ : std_logic;
SIGNAL \dut|rs~q\ : std_logic;
SIGNAL lcd_line0b : std_logic_vector(7 DOWNTO 0);
SIGNAL lcd_line0 : std_logic_vector(7 DOWNTO 0);
SIGNAL lcd_bus : std_logic_vector(9 DOWNTO 0);
SIGNAL char : std_logic_vector(31 DOWNTO 0);
SIGNAL \dut|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk_lcd_gen|prescaler\ : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LCD_BLON <= ww_LCD_BLON;
LCD_EN <= ww_LCD_EN;
LCD_ON <= ww_LCD_ON;
LCD_RS <= ww_LCD_RS;
LCD_RW <= ww_LCD_RW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: LCCOMB_X18_Y40_N10
\dut|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~42_combout\ = (\dut|clk_count\(21) & (!\dut|Add0~41\)) # (!\dut|clk_count\(21) & ((\dut|Add0~41\) # (GND)))
-- \dut|Add0~43\ = CARRY((!\dut|Add0~41\) # (!\dut|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(21),
	datad => VCC,
	cin => \dut|Add0~41\,
	combout => \dut|Add0~42_combout\,
	cout => \dut|Add0~43\);

-- Location: LCCOMB_X25_Y40_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (char(6) & (\Add0~11\ $ (GND))) # (!char(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((char(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X25_Y40_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (char(11) & (!\Add0~21\)) # (!char(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!char(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X25_Y40_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (char(13) & (!\Add0~25\)) # (!char(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!char(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X24_Y40_N1
\lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_bus[0]~0_combout\,
	asdata => \lcd_bus~26_combout\,
	sclr => \Equal1~2_combout\,
	sload => \process_0~4_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(0));

-- Location: LCCOMB_X20_Y38_N10
\clk_lcd_gen|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~4_combout\ = (\clk_lcd_gen|prescaler\(2) & (\clk_lcd_gen|Add0~3\ $ (GND))) # (!\clk_lcd_gen|prescaler\(2) & (!\clk_lcd_gen|Add0~3\ & VCC))
-- \clk_lcd_gen|Add0~5\ = CARRY((\clk_lcd_gen|prescaler\(2) & !\clk_lcd_gen|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(2),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~3\,
	combout => \clk_lcd_gen|Add0~4_combout\,
	cout => \clk_lcd_gen|Add0~5\);

-- Location: LCCOMB_X20_Y38_N14
\clk_lcd_gen|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~8_combout\ = (\clk_lcd_gen|prescaler\(4) & (\clk_lcd_gen|Add0~7\ $ (GND))) # (!\clk_lcd_gen|prescaler\(4) & (!\clk_lcd_gen|Add0~7\ & VCC))
-- \clk_lcd_gen|Add0~9\ = CARRY((\clk_lcd_gen|prescaler\(4) & !\clk_lcd_gen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(4),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~7\,
	combout => \clk_lcd_gen|Add0~8_combout\,
	cout => \clk_lcd_gen|Add0~9\);

-- Location: LCCOMB_X20_Y38_N22
\clk_lcd_gen|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~16_combout\ = (\clk_lcd_gen|prescaler\(8) & (\clk_lcd_gen|Add0~15\ $ (GND))) # (!\clk_lcd_gen|prescaler\(8) & (!\clk_lcd_gen|Add0~15\ & VCC))
-- \clk_lcd_gen|Add0~17\ = CARRY((\clk_lcd_gen|prescaler\(8) & !\clk_lcd_gen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(8),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~15\,
	combout => \clk_lcd_gen|Add0~16_combout\,
	cout => \clk_lcd_gen|Add0~17\);

-- Location: LCCOMB_X20_Y37_N2
\clk_lcd_gen|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~28_combout\ = (\clk_lcd_gen|prescaler\(14) & (\clk_lcd_gen|Add0~27\ $ (GND))) # (!\clk_lcd_gen|prescaler\(14) & (!\clk_lcd_gen|Add0~27\ & VCC))
-- \clk_lcd_gen|Add0~29\ = CARRY((\clk_lcd_gen|prescaler\(14) & !\clk_lcd_gen|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|prescaler\(14),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~27\,
	combout => \clk_lcd_gen|Add0~28_combout\,
	cout => \clk_lcd_gen|Add0~29\);

-- Location: LCCOMB_X20_Y37_N4
\clk_lcd_gen|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~30_combout\ = (\clk_lcd_gen|prescaler\(15) & (!\clk_lcd_gen|Add0~29\)) # (!\clk_lcd_gen|prescaler\(15) & ((\clk_lcd_gen|Add0~29\) # (GND)))
-- \clk_lcd_gen|Add0~31\ = CARRY((!\clk_lcd_gen|Add0~29\) # (!\clk_lcd_gen|prescaler\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(15),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~29\,
	combout => \clk_lcd_gen|Add0~30_combout\,
	cout => \clk_lcd_gen|Add0~31\);

-- Location: LCCOMB_X20_Y37_N8
\clk_lcd_gen|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~34_combout\ = (\clk_lcd_gen|prescaler\(17) & (!\clk_lcd_gen|Add0~33\)) # (!\clk_lcd_gen|prescaler\(17) & ((\clk_lcd_gen|Add0~33\) # (GND)))
-- \clk_lcd_gen|Add0~35\ = CARRY((!\clk_lcd_gen|Add0~33\) # (!\clk_lcd_gen|prescaler\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|prescaler\(17),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~33\,
	combout => \clk_lcd_gen|Add0~34_combout\,
	cout => \clk_lcd_gen|Add0~35\);

-- Location: LCCOMB_X20_Y37_N10
\clk_lcd_gen|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~36_combout\ = (\clk_lcd_gen|prescaler\(18) & (\clk_lcd_gen|Add0~35\ $ (GND))) # (!\clk_lcd_gen|prescaler\(18) & (!\clk_lcd_gen|Add0~35\ & VCC))
-- \clk_lcd_gen|Add0~37\ = CARRY((\clk_lcd_gen|prescaler\(18) & !\clk_lcd_gen|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(18),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~35\,
	combout => \clk_lcd_gen|Add0~36_combout\,
	cout => \clk_lcd_gen|Add0~37\);

-- Location: LCCOMB_X20_Y37_N18
\clk_lcd_gen|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~44_combout\ = (\clk_lcd_gen|prescaler\(22) & (\clk_lcd_gen|Add0~43\ $ (GND))) # (!\clk_lcd_gen|prescaler\(22) & (!\clk_lcd_gen|Add0~43\ & VCC))
-- \clk_lcd_gen|Add0~45\ = CARRY((\clk_lcd_gen|prescaler\(22) & !\clk_lcd_gen|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|prescaler\(22),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~43\,
	combout => \clk_lcd_gen|Add0~44_combout\,
	cout => \clk_lcd_gen|Add0~45\);

-- Location: LCCOMB_X20_Y37_N20
\clk_lcd_gen|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~46_combout\ = (\clk_lcd_gen|prescaler\(23) & (!\clk_lcd_gen|Add0~45\)) # (!\clk_lcd_gen|prescaler\(23) & ((\clk_lcd_gen|Add0~45\) # (GND)))
-- \clk_lcd_gen|Add0~47\ = CARRY((!\clk_lcd_gen|Add0~45\) # (!\clk_lcd_gen|prescaler\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|prescaler\(23),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~45\,
	combout => \clk_lcd_gen|Add0~46_combout\,
	cout => \clk_lcd_gen|Add0~47\);

-- Location: LCCOMB_X20_Y37_N22
\clk_lcd_gen|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~48_combout\ = (\clk_lcd_gen|prescaler\(24) & (\clk_lcd_gen|Add0~47\ $ (GND))) # (!\clk_lcd_gen|prescaler\(24) & (!\clk_lcd_gen|Add0~47\ & VCC))
-- \clk_lcd_gen|Add0~49\ = CARRY((\clk_lcd_gen|prescaler\(24) & !\clk_lcd_gen|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(24),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~47\,
	combout => \clk_lcd_gen|Add0~48_combout\,
	cout => \clk_lcd_gen|Add0~49\);

-- Location: LCCOMB_X20_Y37_N24
\clk_lcd_gen|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~50_combout\ = \clk_lcd_gen|Add0~49\ $ (\clk_lcd_gen|prescaler\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_lcd_gen|prescaler\(25),
	cin => \clk_lcd_gen|Add0~49\,
	combout => \clk_lcd_gen|Add0~50_combout\);

-- Location: LCCOMB_X24_Y40_N0
\lcd_bus[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus[0]~0_combout\ = (\lcd_bus~5_combout\ & (\lcd_bus~16_combout\)) # (!\lcd_bus~5_combout\ & ((!\Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~16_combout\,
	datab => \Equal0~14_combout\,
	datad => \lcd_bus~5_combout\,
	combout => \lcd_bus[0]~0_combout\);

-- Location: LCCOMB_X16_Y38_N0
\dut|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~0_combout\ = (\dut|state.send~q\ & !\dut|clk_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~q\,
	datad => \dut|clk_count\(31),
	combout => \dut|Selector46~0_combout\);

-- Location: FF_X18_Y39_N23
\dut|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(15));

-- Location: FF_X18_Y39_N7
\dut|clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(25));

-- Location: FF_X19_Y39_N31
\dut|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(12));

-- Location: LCCOMB_X19_Y39_N26
\dut|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~2_combout\ = (!\dut|clk_count\(12) & (!\dut|clk_count\(13) & (!\dut|clk_count\(18) & !\dut|clk_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(12),
	datab => \dut|clk_count\(13),
	datac => \dut|clk_count\(18),
	datad => \dut|clk_count\(17),
	combout => \dut|LessThan9~2_combout\);

-- Location: LCCOMB_X16_Y39_N0
\dut|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan10~0_combout\ = (!\dut|clk_count\(10) & (!\dut|clk_count\(11) & \dut|LessThan9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(10),
	datab => \dut|clk_count\(11),
	datac => \dut|LessThan9~3_combout\,
	combout => \dut|LessThan10~0_combout\);

-- Location: FF_X19_Y40_N7
\dut|clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(30));

-- Location: FF_X19_Y41_N31
\dut|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(6));

-- Location: LCCOMB_X19_Y41_N14
\dut|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~5_combout\ = (!\dut|clk_count\(4) & (!\dut|clk_count\(5) & !\dut|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(4),
	datac => \dut|clk_count\(5),
	datad => \dut|clk_count\(3),
	combout => \dut|LessThan9~5_combout\);

-- Location: LCCOMB_X19_Y41_N26
\dut|LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~6_combout\ = (\dut|clk_count\(6) & (\dut|clk_count\(7) & ((\dut|clk_count\(2)) # (!\dut|LessThan9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(6),
	datab => \dut|clk_count\(7),
	datac => \dut|LessThan9~5_combout\,
	datad => \dut|clk_count\(2),
	combout => \dut|LessThan9~6_combout\);

-- Location: LCCOMB_X20_Y41_N0
\dut|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan10~1_combout\ = (\dut|clk_count\(5) & \dut|clk_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(5),
	datad => \dut|clk_count\(4),
	combout => \dut|LessThan10~1_combout\);

-- Location: LCCOMB_X20_Y41_N2
\dut|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan10~2_combout\ = ((!\dut|clk_count\(2) & (!\dut|clk_count\(1) & !\dut|clk_count\(3)))) # (!\dut|LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(2),
	datab => \dut|LessThan10~1_combout\,
	datac => \dut|clk_count\(1),
	datad => \dut|clk_count\(3),
	combout => \dut|LessThan10~2_combout\);

-- Location: LCCOMB_X20_Y41_N12
\dut|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan11~0_combout\ = (!\dut|clk_count\(6) & (((!\dut|clk_count\(3)) # (!\dut|clk_count\(2))) # (!\dut|LessThan10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(6),
	datab => \dut|LessThan10~1_combout\,
	datac => \dut|clk_count\(2),
	datad => \dut|clk_count\(3),
	combout => \dut|LessThan11~0_combout\);

-- Location: LCCOMB_X16_Y39_N12
\dut|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~1_combout\ = (\dut|clk_count\(9) & (((\dut|clk_count\(7) & !\dut|LessThan11~0_combout\)))) # (!\dut|clk_count\(9) & ((\dut|clk_count\(6)) # ((\dut|clk_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(6),
	datab => \dut|clk_count\(9),
	datac => \dut|clk_count\(7),
	datad => \dut|LessThan11~0_combout\,
	combout => \dut|Selector46~1_combout\);

-- Location: LCCOMB_X16_Y39_N6
\dut|Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~2_combout\ = (\dut|Selector46~1_combout\ & (((\dut|clk_count\(9))))) # (!\dut|Selector46~1_combout\ & ((\dut|clk_count\(8) & ((\dut|clk_count\(9)))) # (!\dut|clk_count\(8) & (\dut|LessThan10~2_combout\ & !\dut|clk_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector46~1_combout\,
	datab => \dut|clk_count\(8),
	datac => \dut|LessThan10~2_combout\,
	datad => \dut|clk_count\(9),
	combout => \dut|Selector46~2_combout\);

-- Location: LCCOMB_X16_Y39_N16
\dut|Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~3_combout\ = (\dut|LessThan9~8_combout\ & (((!\dut|Selector46~2_combout\ & \dut|LessThan10~0_combout\)))) # (!\dut|LessThan9~8_combout\ & (\dut|e~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|e~q\,
	datab => \dut|Selector46~2_combout\,
	datac => \dut|LessThan9~8_combout\,
	datad => \dut|LessThan10~0_combout\,
	combout => \dut|Selector46~3_combout\);

-- Location: LCCOMB_X16_Y39_N26
\dut|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan10~3_combout\ = (!\dut|clk_count\(6) & (!\dut|clk_count\(9) & (!\dut|clk_count\(7) & !\dut|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(6),
	datab => \dut|clk_count\(9),
	datac => \dut|clk_count\(7),
	datad => \dut|clk_count\(8),
	combout => \dut|LessThan10~3_combout\);

-- Location: LCCOMB_X20_Y41_N10
\dut|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan12~0_combout\ = ((\dut|LessThan9~5_combout\ & ((!\dut|clk_count\(2)) # (!\dut|clk_count\(1))))) # (!\dut|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(6),
	datab => \dut|clk_count\(1),
	datac => \dut|clk_count\(2),
	datad => \dut|LessThan9~5_combout\,
	combout => \dut|LessThan12~0_combout\);

-- Location: LCCOMB_X16_Y39_N20
\dut|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan12~1_combout\ = (!\dut|clk_count\(9) & (((\dut|LessThan12~0_combout\ & !\dut|clk_count\(7))) # (!\dut|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan12~0_combout\,
	datab => \dut|clk_count\(9),
	datac => \dut|clk_count\(7),
	datad => \dut|clk_count\(8),
	combout => \dut|LessThan12~1_combout\);

-- Location: LCCOMB_X16_Y39_N14
\dut|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan12~2_combout\ = (!\dut|clk_count\(11) & (\dut|LessThan9~3_combout\ & ((\dut|LessThan12~1_combout\) # (!\dut|clk_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(10),
	datab => \dut|clk_count\(11),
	datac => \dut|LessThan9~3_combout\,
	datad => \dut|LessThan12~1_combout\,
	combout => \dut|LessThan12~2_combout\);

-- Location: LCCOMB_X16_Y39_N4
\dut|Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~4_combout\ = (!\dut|LessThan12~2_combout\ & (((!\dut|LessThan10~0_combout\) # (!\dut|LessThan10~2_combout\)) # (!\dut|LessThan10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan10~3_combout\,
	datab => \dut|LessThan12~2_combout\,
	datac => \dut|LessThan10~2_combout\,
	datad => \dut|LessThan10~0_combout\,
	combout => \dut|Selector46~4_combout\);

-- Location: LCCOMB_X16_Y39_N10
\dut|Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~5_combout\ = (\dut|Selector46~0_combout\ & ((\dut|Selector46~3_combout\) # ((\dut|e~q\ & \dut|Selector46~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|e~q\,
	datab => \dut|Selector46~0_combout\,
	datac => \dut|Selector46~4_combout\,
	datad => \dut|Selector46~3_combout\,
	combout => \dut|Selector46~5_combout\);

-- Location: LCCOMB_X17_Y40_N12
\dut|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan4~0_combout\ = (!\dut|Add0~28_combout\ & (!\dut|Add0~30_combout\ & (!\dut|Add0~32_combout\ & !\dut|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~28_combout\,
	datab => \dut|Add0~30_combout\,
	datac => \dut|Add0~32_combout\,
	datad => \dut|Add0~26_combout\,
	combout => \dut|LessThan4~0_combout\);

-- Location: LCCOMB_X17_Y41_N0
\dut|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan3~2_combout\ = ((!\dut|Add0~8_combout\ & ((!\dut|Add0~6_combout\) # (!\dut|Add0~4_combout\)))) # (!\dut|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~4_combout\,
	datab => \dut|Add0~8_combout\,
	datac => \dut|Add0~10_combout\,
	datad => \dut|Add0~6_combout\,
	combout => \dut|LessThan3~2_combout\);

-- Location: LCCOMB_X16_Y39_N8
\dut|Selector46~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~8_combout\ = (\dut|state.initialize~q\ & !\dut|state.send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|state.initialize~q\,
	datac => \dut|state.send~q\,
	combout => \dut|Selector46~8_combout\);

-- Location: LCCOMB_X17_Y39_N6
\dut|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~3_combout\ = (!\dut|Add0~52_combout\ & (!\dut|Add0~50_combout\ & (!\dut|Add0~56_combout\ & !\dut|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~52_combout\,
	datab => \dut|Add0~50_combout\,
	datac => \dut|Add0~56_combout\,
	datad => \dut|Add0~54_combout\,
	combout => \dut|LessThan8~3_combout\);

-- Location: LCCOMB_X17_Y41_N20
\dut|LessThan8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~6_combout\ = (!\dut|Add0~18_combout\ & (((!\dut|Add0~12_combout\ & !\dut|LessThan8~2_combout\)) # (!\dut|LessThan8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~12_combout\,
	datab => \dut|Add0~18_combout\,
	datac => \dut|LessThan8~2_combout\,
	datad => \dut|LessThan8~4_combout\,
	combout => \dut|LessThan8~6_combout\);

-- Location: LCCOMB_X17_Y41_N6
\dut|LessThan8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~7_combout\ = (!\dut|Add0~24_combout\ & (!\dut|Add0~28_combout\ & ((\dut|LessThan8~6_combout\) # (!\dut|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~24_combout\,
	datab => \dut|Add0~28_combout\,
	datac => \dut|LessThan3~0_combout\,
	datad => \dut|LessThan8~6_combout\,
	combout => \dut|LessThan8~7_combout\);

-- Location: LCCOMB_X19_Y39_N22
\dut|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~2_combout\ = (!\dut|clk_count\(19) & (!\dut|clk_count\(20) & ((!\dut|clk_count\(18)) # (!\dut|clk_count\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(17),
	datab => \dut|clk_count\(18),
	datac => \dut|clk_count\(19),
	datad => \dut|clk_count\(20),
	combout => \dut|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y38_N10
\dut|clk_count[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|clk_count[17]~0_combout\ = (\dut|Add0~62_combout\ & ((\dut|state.initialize~q\) # ((!\dut|state.send~q\ & \dut|state.power_up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~q\,
	datab => \dut|state.initialize~q\,
	datac => \dut|state.power_up~q\,
	datad => \dut|Add0~62_combout\,
	combout => \dut|clk_count[17]~0_combout\);

-- Location: LCCOMB_X17_Y38_N0
\dut|clk_count[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|clk_count[17]~1_combout\ = (\dut|clk_count[17]~0_combout\) # ((\dut|state.power_up~q\ & ((\dut|Selector35~2_combout\))) # (!\dut|state.power_up~q\ & (\dut|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.power_up~q\,
	datab => \dut|LessThan0~8_combout\,
	datac => \dut|Selector35~2_combout\,
	datad => \dut|clk_count[17]~0_combout\,
	combout => \dut|clk_count[17]~1_combout\);

-- Location: LCCOMB_X18_Y39_N22
\dut|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector17~0_combout\ = (\dut|Add0~30_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~30_combout\,
	datac => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector17~0_combout\);

-- Location: LCCOMB_X18_Y39_N6
\dut|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector7~0_combout\ = (!\dut|clk_count[17]~5_combout\ & \dut|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_count[17]~5_combout\,
	datad => \dut|Add0~50_combout\,
	combout => \dut|Selector7~0_combout\);

-- Location: LCCOMB_X19_Y39_N30
\dut|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector20~0_combout\ = (\dut|Add0~24_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~24_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector20~0_combout\);

-- Location: LCCOMB_X19_Y40_N6
\dut|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector2~0_combout\ = (\dut|Add0~60_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~60_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector2~0_combout\);

-- Location: LCCOMB_X19_Y41_N30
\dut|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector26~0_combout\ = (\dut|Add0~12_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~12_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector26~0_combout\);

-- Location: LCCOMB_X16_Y39_N24
\dut|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector34~1_combout\ = (\dut|state.send~q\ & (!\dut|LessThan9~8_combout\ & !\dut|clk_count\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|state.send~q\,
	datac => \dut|LessThan9~8_combout\,
	datad => \dut|clk_count\(31),
	combout => \dut|Selector34~1_combout\);

-- Location: FF_X25_Y39_N31
\char[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(31));

-- Location: FF_X25_Y39_N27
\char[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(29));

-- Location: FF_X25_Y39_N23
\char[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(27));

-- Location: FF_X25_Y39_N13
\char[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(22));

-- Location: FF_X25_Y39_N11
\char[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(21));

-- Location: FF_X25_Y39_N7
\char[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(19));

-- Location: FF_X25_Y40_N31
\char[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(15));

-- Location: FF_X25_Y40_N27
\char[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(13));

-- Location: FF_X25_Y40_N23
\char[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(11));

-- Location: FF_X25_Y40_N13
\char[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(6));

-- Location: FF_X25_Y40_N11
\char[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \char~0_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(5));

-- Location: LCCOMB_X26_Y39_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~22_combout\ & (!\Add0~20_combout\ & (!\Add0~24_combout\ & !\Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add0~20_combout\,
	datac => \Add0~24_combout\,
	datad => \Add0~26_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X24_Y38_N4
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Add0~2_combout\ & (!\Add0~6_combout\ & !\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X24_Y38_N6
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\Add0~10_combout\ & (((!\Add0~0_combout\ & \Equal0~8_combout\)) # (!\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~10_combout\,
	datac => \Equal0~8_combout\,
	datad => \Add0~8_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y39_N22
\Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!\Add0~2_combout\ & (\Add0~8_combout\ & (\Equal0~11_combout\ & !\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~8_combout\,
	datac => \Equal0~11_combout\,
	datad => \Add0~10_combout\,
	combout => \Equal0~12_combout\);

-- Location: FF_X20_Y38_N11
\clk_lcd_gen|prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(2));

-- Location: FF_X21_Y38_N5
\clk_lcd_gen|prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|prescaler~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(4));

-- Location: LCCOMB_X20_Y38_N2
\clk_lcd_gen|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Equal0~1_combout\ = (\clk_lcd_gen|prescaler\(4) & (!\clk_lcd_gen|prescaler\(6) & (!\clk_lcd_gen|prescaler\(5) & \clk_lcd_gen|prescaler\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(4),
	datab => \clk_lcd_gen|prescaler\(6),
	datac => \clk_lcd_gen|prescaler\(5),
	datad => \clk_lcd_gen|prescaler\(7),
	combout => \clk_lcd_gen|Equal0~1_combout\);

-- Location: FF_X20_Y38_N23
\clk_lcd_gen|prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(8));

-- Location: FF_X21_Y37_N7
\clk_lcd_gen|prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|prescaler~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(15));

-- Location: FF_X20_Y37_N11
\clk_lcd_gen|prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(18));

-- Location: FF_X20_Y37_N21
\clk_lcd_gen|prescaler[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(23));

-- Location: FF_X20_Y37_N23
\clk_lcd_gen|prescaler[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(24));

-- Location: FF_X20_Y37_N25
\clk_lcd_gen|prescaler[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(25));

-- Location: LCCOMB_X20_Y37_N26
\clk_lcd_gen|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Equal0~7_combout\ = (!\clk_lcd_gen|prescaler\(24) & !\clk_lcd_gen|prescaler\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_lcd_gen|prescaler\(24),
	datad => \clk_lcd_gen|prescaler\(25),
	combout => \clk_lcd_gen|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y40_N4
\char~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \char~0_combout\ = (\Add0~10_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \Equal1~2_combout\,
	combout => \char~0_combout\);

-- Location: LCCOMB_X17_Y41_N10
\dut|LessThan8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~10_combout\ = (!\dut|Add0~24_combout\ & (!\dut|Add0~28_combout\ & ((\dut|LessThan8~6_combout\) # (!\dut|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~24_combout\,
	datab => \dut|Add0~28_combout\,
	datac => \dut|LessThan3~0_combout\,
	datad => \dut|LessThan8~6_combout\,
	combout => \dut|LessThan8~10_combout\);

-- Location: LCCOMB_X19_Y40_N22
\dut|LessThan8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~11_combout\ = (\dut|Add0~32_combout\ & \dut|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~32_combout\,
	datad => \dut|Add0~30_combout\,
	combout => \dut|LessThan8~11_combout\);

-- Location: LCCOMB_X17_Y40_N26
\dut|lcd_data[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|lcd_data[1]~5_combout\ = (\dut|LessThan8~11_combout\ & (\dut|LessThan8~5_combout\ & (!\dut|LessThan7~2_combout\ & !\dut|LessThan8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan8~11_combout\,
	datab => \dut|LessThan8~5_combout\,
	datac => \dut|LessThan7~2_combout\,
	datad => \dut|LessThan8~10_combout\,
	combout => \dut|lcd_data[1]~5_combout\);

-- Location: FF_X24_Y40_N11
\lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_bus~70_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(3));

-- Location: FF_X24_Y38_N19
\lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_bus~91_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(4));

-- Location: FF_X23_Y39_N21
\lcd_bus[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_bus~133_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(7));

-- Location: LCCOMB_X21_Y38_N4
\clk_lcd_gen|prescaler~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|prescaler~1_combout\ = (\clk_lcd_gen|Add0~8_combout\ & !\clk_lcd_gen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|Add0~8_combout\,
	datad => \clk_lcd_gen|Equal0~8_combout\,
	combout => \clk_lcd_gen|prescaler~1_combout\);

-- Location: LCCOMB_X21_Y37_N6
\clk_lcd_gen|prescaler~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|prescaler~5_combout\ = (\clk_lcd_gen|Add0~30_combout\ & !\clk_lcd_gen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_lcd_gen|Add0~30_combout\,
	datad => \clk_lcd_gen|Equal0~8_combout\,
	combout => \clk_lcd_gen|prescaler~5_combout\);

-- Location: FF_X23_Y38_N25
\lcd_line1[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[10][0]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[9][0]~q\);

-- Location: FF_X24_Y38_N3
\lcd_line1[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[11][0]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[10][0]~q\);

-- Location: FF_X23_Y38_N11
\lcd_line1[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[8][0]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[8][0]~q\);

-- Location: LCCOMB_X23_Y38_N24
\lcd_bus~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~7_combout\ = (\Add0~0_combout\ & (((\Add0~2_combout\)))) # (!\Add0~0_combout\ & ((\Add0~2_combout\ & ((\lcd_line1[10][0]~q\))) # (!\Add0~2_combout\ & (\lcd_line1[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[8][0]~q\,
	datab => \Add0~0_combout\,
	datac => \lcd_line1[10][0]~q\,
	datad => \Add0~2_combout\,
	combout => \lcd_bus~7_combout\);

-- Location: FF_X25_Y38_N13
\lcd_line1[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[11][0]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[11][0]~q\);

-- Location: LCCOMB_X24_Y38_N2
\lcd_bus~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~8_combout\ = (\Add0~0_combout\ & ((\lcd_bus~7_combout\ & ((\lcd_line1[11][0]~q\))) # (!\lcd_bus~7_combout\ & (\lcd_line1[9][0]~q\)))) # (!\Add0~0_combout\ & (((\lcd_bus~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[9][0]~q\,
	datab => \Add0~0_combout\,
	datac => \lcd_line1[11][0]~q\,
	datad => \lcd_bus~7_combout\,
	combout => \lcd_bus~8_combout\);

-- Location: FF_X25_Y38_N11
\lcd_line1[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[7][0]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[6][0]~q\);

-- Location: FF_X25_Y38_N29
\lcd_line1[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[5][0]~3_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[5][0]~q\);

-- Location: FF_X25_Y38_N3
\lcd_line1[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[5][0]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[4][0]~q\);

-- Location: LCCOMB_X25_Y38_N2
\lcd_bus~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~9_combout\ = (\Add0~0_combout\ & ((\lcd_line1[5][0]~q\) # ((\Add0~2_combout\)))) # (!\Add0~0_combout\ & (((\lcd_line1[4][0]~q\ & !\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \lcd_line1[5][0]~q\,
	datac => \lcd_line1[4][0]~q\,
	datad => \Add0~2_combout\,
	combout => \lcd_bus~9_combout\);

-- Location: FF_X25_Y38_N5
\lcd_line1[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[7][0]~4_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[7][0]~q\);

-- Location: LCCOMB_X25_Y38_N6
\lcd_bus~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~10_combout\ = (\Add0~2_combout\ & ((\lcd_bus~9_combout\ & ((!\lcd_line1[7][0]~q\))) # (!\lcd_bus~9_combout\ & (!\lcd_line1[6][0]~q\)))) # (!\Add0~2_combout\ & (((\lcd_bus~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \lcd_line1[6][0]~q\,
	datac => \lcd_line1[7][0]~q\,
	datad => \lcd_bus~9_combout\,
	combout => \lcd_bus~10_combout\);

-- Location: FF_X25_Y38_N17
\lcd_line1[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[2][0]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[1][0]~q\);

-- Location: FF_X25_Y38_N1
\lcd_line1[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[2][0]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[2][0]~q\);

-- Location: FF_X25_Y38_N19
\lcd_line1[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[1][0]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[0][0]~q\);

-- Location: LCCOMB_X25_Y38_N18
\lcd_bus~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~11_combout\ = (\Add0~0_combout\ & (((\Add0~2_combout\)))) # (!\Add0~0_combout\ & ((\Add0~2_combout\ & (!\lcd_line1[2][0]~q\)) # (!\Add0~2_combout\ & ((!\lcd_line1[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \lcd_line1[2][0]~q\,
	datac => \lcd_line1[0][0]~q\,
	datad => \Add0~2_combout\,
	combout => \lcd_bus~11_combout\);

-- Location: FF_X25_Y38_N27
\lcd_line1[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[3][0]~5_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[3][0]~q\);

-- Location: LCCOMB_X25_Y38_N16
\lcd_bus~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~12_combout\ = (\Add0~0_combout\ & ((\lcd_bus~11_combout\ & (!\lcd_line1[3][0]~q\)) # (!\lcd_bus~11_combout\ & ((!\lcd_line1[1][0]~q\))))) # (!\Add0~0_combout\ & (((\lcd_bus~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \lcd_line1[3][0]~q\,
	datac => \lcd_line1[1][0]~q\,
	datad => \lcd_bus~11_combout\,
	combout => \lcd_bus~12_combout\);

-- Location: LCCOMB_X25_Y38_N14
\lcd_bus~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~13_combout\ = (\Add0~4_combout\ & (((\Add0~6_combout\) # (\lcd_bus~10_combout\)))) # (!\Add0~4_combout\ & (\lcd_bus~12_combout\ & (!\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \lcd_bus~12_combout\,
	datac => \Add0~6_combout\,
	datad => \lcd_bus~10_combout\,
	combout => \lcd_bus~13_combout\);

-- Location: FF_X26_Y39_N15
\lcd_line1[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[14][0]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[14][0]~q\);

-- Location: FF_X25_Y38_N25
\lcd_line1[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[14][0]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[13][0]~q\);

-- Location: FF_X25_Y38_N21
\lcd_line1[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[13][0]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[12][0]~q\);

-- Location: LCCOMB_X25_Y38_N20
\lcd_bus~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~14_combout\ = (\Add0~0_combout\ & ((\lcd_line1[13][0]~q\) # ((\Add0~2_combout\)))) # (!\Add0~0_combout\ & (((\lcd_line1[12][0]~q\ & !\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \lcd_line1[13][0]~q\,
	datac => \lcd_line1[12][0]~q\,
	datad => \Add0~2_combout\,
	combout => \lcd_bus~14_combout\);

-- Location: FF_X25_Y38_N9
\lcd_line1[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => lcd_line0(0),
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[15][0]~q\);

-- Location: LCCOMB_X25_Y38_N8
\lcd_bus~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~15_combout\ = (\lcd_bus~14_combout\ & (((\lcd_line1[15][0]~q\) # (!\Add0~2_combout\)))) # (!\lcd_bus~14_combout\ & (\lcd_line1[14][0]~q\ & ((\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[14][0]~q\,
	datab => \lcd_bus~14_combout\,
	datac => \lcd_line1[15][0]~q\,
	datad => \Add0~2_combout\,
	combout => \lcd_bus~15_combout\);

-- Location: LCCOMB_X25_Y38_N30
\lcd_bus~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~16_combout\ = (\Add0~6_combout\ & ((\lcd_bus~13_combout\ & (\lcd_bus~15_combout\)) # (!\lcd_bus~13_combout\ & ((\lcd_bus~8_combout\))))) # (!\Add0~6_combout\ & (((\lcd_bus~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \lcd_bus~15_combout\,
	datac => \lcd_bus~13_combout\,
	datad => \lcd_bus~8_combout\,
	combout => \lcd_bus~16_combout\);

-- Location: FF_X24_Y40_N9
\lcd_line2[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[10][0]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[10][0]~q\);

-- Location: FF_X21_Y39_N31
\lcd_line2[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[9][0]~3_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[9][0]~q\);

-- Location: FF_X21_Y39_N29
\lcd_line2[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[9][0]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[8][0]~q\);

-- Location: LCCOMB_X21_Y39_N28
\lcd_bus~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~17_combout\ = (char(0) & (((char(1))) # (!\lcd_line2[9][0]~q\))) # (!char(0) & (((!\lcd_line2[8][0]~q\ & !char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[9][0]~q\,
	datab => char(0),
	datac => \lcd_line2[8][0]~q\,
	datad => char(1),
	combout => \lcd_bus~17_combout\);

-- Location: FF_X21_Y39_N7
\lcd_line2[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[12][0]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[11][0]~q\);

-- Location: LCCOMB_X21_Y39_N6
\lcd_bus~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~18_combout\ = (char(1) & ((\lcd_bus~17_combout\ & ((\lcd_line2[11][0]~q\))) # (!\lcd_bus~17_combout\ & (\lcd_line2[10][0]~q\)))) # (!char(1) & (((\lcd_bus~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datab => \lcd_line2[10][0]~q\,
	datac => \lcd_line2[11][0]~q\,
	datad => \lcd_bus~17_combout\,
	combout => \lcd_bus~18_combout\);

-- Location: FF_X21_Y39_N5
\lcd_line2[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[5][0]~4_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[5][0]~q\);

-- Location: FF_X21_Y39_N17
\lcd_line2[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[7][0]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[6][0]~q\);

-- Location: FF_X21_Y39_N1
\lcd_line2[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[5][0]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[4][0]~q\);

-- Location: LCCOMB_X21_Y39_N0
\lcd_bus~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~19_combout\ = (char(0) & (((char(1))))) # (!char(0) & ((char(1) & (!\lcd_line2[6][0]~q\)) # (!char(1) & ((\lcd_line2[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => \lcd_line2[6][0]~q\,
	datac => \lcd_line2[4][0]~q\,
	datad => char(1),
	combout => \lcd_bus~19_combout\);

-- Location: FF_X21_Y39_N27
\lcd_line2[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[7][0]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[7][0]~q\);

-- Location: LCCOMB_X21_Y39_N16
\lcd_bus~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~20_combout\ = (char(0) & ((\lcd_bus~19_combout\ & ((!\lcd_line2[7][0]~q\))) # (!\lcd_bus~19_combout\ & (\lcd_line2[5][0]~q\)))) # (!char(0) & (((\lcd_bus~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => \lcd_line2[5][0]~q\,
	datac => \lcd_line2[7][0]~q\,
	datad => \lcd_bus~19_combout\,
	combout => \lcd_bus~20_combout\);

-- Location: FF_X21_Y39_N25
\lcd_line2[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[3][0]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[2][0]~q\);

-- Location: FF_X21_Y39_N15
\lcd_line2[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[1][0]~5_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[1][0]~q\);

-- Location: FF_X21_Y39_N21
\lcd_line2[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[1][0]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[0][0]~q\);

-- Location: LCCOMB_X21_Y39_N20
\lcd_bus~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~21_combout\ = (char(0) & ((\lcd_line2[1][0]~q\) # ((char(1))))) # (!char(0) & (((\lcd_line2[0][0]~q\ & !char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => \lcd_line2[1][0]~q\,
	datac => \lcd_line2[0][0]~q\,
	datad => char(1),
	combout => \lcd_bus~21_combout\);

-- Location: FF_X21_Y39_N9
\lcd_line2[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[3][0]~6_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[3][0]~q\);

-- Location: LCCOMB_X21_Y39_N24
\lcd_bus~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~22_combout\ = (char(1) & ((\lcd_bus~21_combout\ & (!\lcd_line2[3][0]~q\)) # (!\lcd_bus~21_combout\ & ((!\lcd_line2[2][0]~q\))))) # (!char(1) & (((\lcd_bus~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datab => \lcd_line2[3][0]~q\,
	datac => \lcd_line2[2][0]~q\,
	datad => \lcd_bus~21_combout\,
	combout => \lcd_bus~22_combout\);

-- Location: LCCOMB_X21_Y40_N0
\lcd_bus~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~23_combout\ = (char(2) & (((\lcd_bus~20_combout\) # (char(3))))) # (!char(2) & (\lcd_bus~22_combout\ & ((!char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => \lcd_bus~22_combout\,
	datac => \lcd_bus~20_combout\,
	datad => char(3),
	combout => \lcd_bus~23_combout\);

-- Location: FF_X21_Y39_N23
\lcd_line2[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[13][0]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[13][0]~q\);

-- Location: FF_X21_Y39_N13
\lcd_line2[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[14][0]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[14][0]~q\);

-- Location: FF_X21_Y39_N19
\lcd_line2[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[13][0]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[12][0]~q\);

-- Location: LCCOMB_X21_Y39_N18
\lcd_bus~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~24_combout\ = (char(0) & (((char(1))))) # (!char(0) & ((char(1) & (\lcd_line2[14][0]~q\)) # (!char(1) & ((\lcd_line2[12][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[14][0]~q\,
	datab => char(0),
	datac => \lcd_line2[12][0]~q\,
	datad => char(1),
	combout => \lcd_bus~24_combout\);

-- Location: FF_X21_Y39_N11
\lcd_line2[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => lcd_line0b(0),
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[15][0]~q\);

-- Location: LCCOMB_X21_Y39_N10
\lcd_bus~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~25_combout\ = (char(0) & ((\lcd_bus~24_combout\ & ((\lcd_line2[15][0]~q\))) # (!\lcd_bus~24_combout\ & (\lcd_line2[13][0]~q\)))) # (!char(0) & (((\lcd_bus~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => \lcd_line2[13][0]~q\,
	datac => \lcd_line2[15][0]~q\,
	datad => \lcd_bus~24_combout\,
	combout => \lcd_bus~25_combout\);

-- Location: LCCOMB_X21_Y40_N6
\lcd_bus~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~26_combout\ = (char(3) & ((\lcd_bus~23_combout\ & ((\lcd_bus~25_combout\))) # (!\lcd_bus~23_combout\ & (\lcd_bus~18_combout\)))) # (!char(3) & (((\lcd_bus~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(3),
	datab => \lcd_bus~18_combout\,
	datac => \lcd_bus~25_combout\,
	datad => \lcd_bus~23_combout\,
	combout => \lcd_bus~26_combout\);

-- Location: FF_X25_Y37_N19
\lcd_line1[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[10][1]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[9][1]~q\);

-- Location: FF_X25_Y37_N25
\lcd_line1[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[6][1]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[5][1]~q\);

-- Location: FF_X25_Y37_N29
\lcd_line1[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[1][1]~6_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[1][1]~q\);

-- Location: LCCOMB_X25_Y37_N24
\lcd_bus~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~27_combout\ = (\Add0~4_combout\ & ((\Add0~6_combout\) # ((!\lcd_line1[5][1]~q\)))) # (!\Add0~4_combout\ & (!\Add0~6_combout\ & ((\lcd_line1[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~6_combout\,
	datac => \lcd_line1[5][1]~q\,
	datad => \lcd_line1[1][1]~q\,
	combout => \lcd_bus~27_combout\);

-- Location: FF_X25_Y37_N13
\lcd_line1[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[13][1]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[13][1]~q\);

-- Location: LCCOMB_X25_Y37_N18
\lcd_bus~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~28_combout\ = (\Add0~6_combout\ & ((\lcd_bus~27_combout\ & (\lcd_line1[13][1]~q\)) # (!\lcd_bus~27_combout\ & ((\lcd_line1[9][1]~q\))))) # (!\Add0~6_combout\ & (((\lcd_bus~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[13][1]~q\,
	datab => \Add0~6_combout\,
	datac => \lcd_line1[9][1]~q\,
	datad => \lcd_bus~27_combout\,
	combout => \lcd_bus~28_combout\);

-- Location: FF_X25_Y37_N15
\lcd_line1[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[6][1]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[6][1]~q\);

-- Location: FF_X25_Y37_N31
\lcd_line1[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[11][1]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[10][1]~q\);

-- Location: FF_X25_Y37_N9
\lcd_line1[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[2][1]~7_combout\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[2][1]~q\);

-- Location: LCCOMB_X25_Y37_N8
\lcd_bus~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~29_combout\ = (\Add0~6_combout\ & ((\lcd_line1[10][1]~q\) # ((\Add0~4_combout\)))) # (!\Add0~6_combout\ & (((!\lcd_line1[2][1]~q\ & !\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[10][1]~q\,
	datab => \Add0~6_combout\,
	datac => \lcd_line1[2][1]~q\,
	datad => \Add0~4_combout\,
	combout => \lcd_bus~29_combout\);

-- Location: FF_X25_Y37_N7
\lcd_line1[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[15][1]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[14][1]~q\);

-- Location: LCCOMB_X25_Y37_N6
\lcd_bus~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~30_combout\ = (\Add0~4_combout\ & ((\lcd_bus~29_combout\ & ((\lcd_line1[14][1]~q\))) # (!\lcd_bus~29_combout\ & (!\lcd_line1[6][1]~q\)))) # (!\Add0~4_combout\ & (((\lcd_bus~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \lcd_line1[6][1]~q\,
	datac => \lcd_line1[14][1]~q\,
	datad => \lcd_bus~29_combout\,
	combout => \lcd_bus~30_combout\);

-- Location: FF_X25_Y37_N3
\lcd_line1[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[4][1]~8_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[4][1]~q\);

-- Location: FF_X26_Y39_N13
\lcd_line1[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[9][1]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[8][1]~q\);

-- Location: FF_X25_Y37_N23
\lcd_line1[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[1][1]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[0][1]~q\);

-- Location: LCCOMB_X26_Y39_N2
\lcd_bus~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~31_combout\ = (\Add0~4_combout\ & (((\Add0~6_combout\)))) # (!\Add0~4_combout\ & ((\Add0~6_combout\ & (\lcd_line1[8][1]~q\)) # (!\Add0~6_combout\ & ((\lcd_line1[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[8][1]~q\,
	datab => \lcd_line1[0][1]~q\,
	datac => \Add0~4_combout\,
	datad => \Add0~6_combout\,
	combout => \lcd_bus~31_combout\);

-- Location: FF_X25_Y37_N17
\lcd_line1[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[12][1]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[12][1]~q\);

-- Location: LCCOMB_X26_Y39_N24
\lcd_bus~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~32_combout\ = (\Add0~4_combout\ & ((\lcd_bus~31_combout\ & ((\lcd_line1[12][1]~q\))) # (!\lcd_bus~31_combout\ & (\lcd_line1[4][1]~q\)))) # (!\Add0~4_combout\ & (((\lcd_bus~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[4][1]~q\,
	datab => \lcd_line1[12][1]~q\,
	datac => \Add0~4_combout\,
	datad => \lcd_bus~31_combout\,
	combout => \lcd_bus~32_combout\);

-- Location: LCCOMB_X26_Y39_N30
\lcd_bus~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~33_combout\ = (\Add0~0_combout\ & (((\Add0~2_combout\)))) # (!\Add0~0_combout\ & ((\Add0~2_combout\ & ((\lcd_bus~30_combout\))) # (!\Add0~2_combout\ & (\lcd_bus~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \lcd_bus~32_combout\,
	datac => \Add0~2_combout\,
	datad => \lcd_bus~30_combout\,
	combout => \lcd_bus~33_combout\);

-- Location: FF_X25_Y37_N27
\lcd_line1[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[11][1]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[11][1]~q\);

-- Location: FF_X25_Y37_N1
\lcd_line1[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[7][1]~9_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[7][1]~q\);

-- Location: FF_X25_Y37_N21
\lcd_line1[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[4][1]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[3][1]~q\);

-- Location: LCCOMB_X25_Y37_N20
\lcd_bus~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~34_combout\ = (\Add0~4_combout\ & ((\Add0~6_combout\) # ((!\lcd_line1[7][1]~q\)))) # (!\Add0~4_combout\ & (!\Add0~6_combout\ & (\lcd_line1[3][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~6_combout\,
	datac => \lcd_line1[3][1]~q\,
	datad => \lcd_line1[7][1]~q\,
	combout => \lcd_bus~34_combout\);

-- Location: FF_X25_Y37_N11
\lcd_line1[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => lcd_line0(1),
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[15][1]~q\);

-- Location: LCCOMB_X25_Y37_N10
\lcd_bus~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~35_combout\ = (\Add0~6_combout\ & ((\lcd_bus~34_combout\ & ((\lcd_line1[15][1]~q\))) # (!\lcd_bus~34_combout\ & (\lcd_line1[11][1]~q\)))) # (!\Add0~6_combout\ & (((\lcd_bus~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[11][1]~q\,
	datab => \Add0~6_combout\,
	datac => \lcd_line1[15][1]~q\,
	datad => \lcd_bus~34_combout\,
	combout => \lcd_bus~35_combout\);

-- Location: LCCOMB_X26_Y39_N0
\lcd_bus~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~36_combout\ = (\Add0~0_combout\ & ((\lcd_bus~33_combout\ & (\lcd_bus~35_combout\)) # (!\lcd_bus~33_combout\ & ((\lcd_bus~28_combout\))))) # (!\Add0~0_combout\ & (((\lcd_bus~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \lcd_bus~35_combout\,
	datac => \lcd_bus~33_combout\,
	datad => \lcd_bus~28_combout\,
	combout => \lcd_bus~36_combout\);

-- Location: LCCOMB_X25_Y41_N28
\lcd_bus~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~44_combout\ = (char(2) & (((char(3))) # (!\lcd_line2[7][1]~q\))) # (!char(2) & (((\lcd_line2[3][1]~q\ & !char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[7][1]~q\,
	datab => char(2),
	datac => \lcd_line2[3][1]~q\,
	datad => char(3),
	combout => \lcd_bus~44_combout\);

-- Location: LCCOMB_X25_Y41_N4
\lcd_bus~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~45_combout\ = (\lcd_bus~44_combout\ & (((\lcd_line2[15][1]~q\) # (!char(3))))) # (!\lcd_bus~44_combout\ & (\lcd_line2[11][1]~q\ & ((char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~44_combout\,
	datab => \lcd_line2[11][1]~q\,
	datac => \lcd_line2[15][1]~q\,
	datad => char(3),
	combout => \lcd_bus~45_combout\);

-- Location: LCCOMB_X25_Y42_N26
\lcd_bus~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~47_combout\ = (\Add0~2_combout\ & (((\Add0~0_combout\) # (!\lcd_line1[6][2]~q\)))) # (!\Add0~2_combout\ & (\lcd_line1[4][2]~q\ & ((!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[4][2]~q\,
	datab => \lcd_line1[6][2]~q\,
	datac => \Add0~2_combout\,
	datad => \Add0~0_combout\,
	combout => \lcd_bus~47_combout\);

-- Location: LCCOMB_X25_Y42_N6
\lcd_bus~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~48_combout\ = (\lcd_bus~47_combout\ & (((!\Add0~0_combout\)) # (!\lcd_line1[7][2]~q\))) # (!\lcd_bus~47_combout\ & (((\lcd_line1[5][2]~q\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[7][2]~q\,
	datab => \lcd_line1[5][2]~q\,
	datac => \lcd_bus~47_combout\,
	datad => \Add0~0_combout\,
	combout => \lcd_bus~48_combout\);

-- Location: LCCOMB_X24_Y42_N10
\lcd_bus~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~49_combout\ = (\Add0~0_combout\ & ((\lcd_line1[9][2]~q\) # ((\Add0~2_combout\)))) # (!\Add0~0_combout\ & (((!\Add0~2_combout\ & \lcd_line1[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[9][2]~q\,
	datab => \Add0~0_combout\,
	datac => \Add0~2_combout\,
	datad => \lcd_line1[8][2]~q\,
	combout => \lcd_bus~49_combout\);

-- Location: LCCOMB_X24_Y42_N26
\lcd_bus~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~54_combout\ = (\Add0~2_combout\ & ((\lcd_line1[14][2]~q\) # ((\Add0~0_combout\)))) # (!\Add0~2_combout\ & (((\lcd_line1[12][2]~q\ & !\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[14][2]~q\,
	datab => \Add0~2_combout\,
	datac => \lcd_line1[12][2]~q\,
	datad => \Add0~0_combout\,
	combout => \lcd_bus~54_combout\);

-- Location: FF_X23_Y41_N19
\lcd_line2[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[6][2]~14_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[6][2]~q\);

-- Location: FF_X23_Y41_N27
\lcd_line2[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[6][2]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[5][2]~q\);

-- Location: FF_X23_Y41_N23
\lcd_line2[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[4][2]~15_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[4][2]~q\);

-- Location: LCCOMB_X23_Y41_N10
\lcd_bus~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~57_combout\ = (char(1) & (((char(0))))) # (!char(1) & ((char(0) & (!\lcd_line2[5][2]~q\)) # (!char(0) & ((\lcd_line2[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[5][2]~q\,
	datab => char(1),
	datac => char(0),
	datad => \lcd_line2[4][2]~q\,
	combout => \lcd_bus~57_combout\);

-- Location: FF_X23_Y41_N3
\lcd_line2[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[8][2]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[7][2]~q\);

-- Location: LCCOMB_X23_Y41_N2
\lcd_bus~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~58_combout\ = (char(1) & ((\lcd_bus~57_combout\ & ((\lcd_line2[7][2]~q\))) # (!\lcd_bus~57_combout\ & (!\lcd_line2[6][2]~q\)))) # (!char(1) & (((\lcd_bus~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[6][2]~q\,
	datab => char(1),
	datac => \lcd_line2[7][2]~q\,
	datad => \lcd_bus~57_combout\,
	combout => \lcd_bus~58_combout\);

-- Location: FF_X23_Y41_N31
\lcd_line2[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[9][2]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[9][2]~q\);

-- Location: FF_X23_Y41_N21
\lcd_line2[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[10][2]~16_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[10][2]~q\);

-- Location: FF_X23_Y41_N7
\lcd_line2[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[8][2]~17_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[8][2]~q\);

-- Location: LCCOMB_X23_Y41_N28
\lcd_bus~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~59_combout\ = (char(1) & (((char(0)) # (!\lcd_line2[10][2]~q\)))) # (!char(1) & (\lcd_line2[8][2]~q\ & (!char(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[8][2]~q\,
	datab => char(1),
	datac => char(0),
	datad => \lcd_line2[10][2]~q\,
	combout => \lcd_bus~59_combout\);

-- Location: FF_X23_Y41_N17
\lcd_line2[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[12][2]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[11][2]~q\);

-- Location: LCCOMB_X23_Y41_N16
\lcd_bus~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~60_combout\ = (char(0) & ((\lcd_bus~59_combout\ & ((\lcd_line2[11][2]~q\))) # (!\lcd_bus~59_combout\ & (!\lcd_line2[9][2]~q\)))) # (!char(0) & (((\lcd_bus~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[9][2]~q\,
	datab => char(0),
	datac => \lcd_line2[11][2]~q\,
	datad => \lcd_bus~59_combout\,
	combout => \lcd_bus~60_combout\);

-- Location: FF_X24_Y41_N1
\lcd_line2[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[1][2]~18_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[1][2]~q\);

-- Location: FF_X24_Y41_N9
\lcd_line2[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[2][2]~19_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[2][2]~q\);

-- Location: FF_X24_Y41_N11
\lcd_line2[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[0][2]~20_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[0][2]~q\);

-- Location: LCCOMB_X24_Y41_N28
\lcd_bus~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~61_combout\ = (char(1) & (((char(0)) # (!\lcd_line2[2][2]~q\)))) # (!char(1) & (!\lcd_line2[0][2]~q\ & ((!char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[0][2]~q\,
	datab => char(1),
	datac => \lcd_line2[2][2]~q\,
	datad => char(0),
	combout => \lcd_bus~61_combout\);

-- Location: FF_X24_Y41_N7
\lcd_line2[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[4][2]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[3][2]~q\);

-- Location: LCCOMB_X24_Y41_N6
\lcd_bus~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~62_combout\ = (char(0) & ((\lcd_bus~61_combout\ & (\lcd_line2[3][2]~q\)) # (!\lcd_bus~61_combout\ & ((\lcd_line2[1][2]~q\))))) # (!char(0) & (\lcd_bus~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => \lcd_bus~61_combout\,
	datac => \lcd_line2[3][2]~q\,
	datad => \lcd_line2[1][2]~q\,
	combout => \lcd_bus~62_combout\);

-- Location: LCCOMB_X23_Y41_N4
\lcd_bus~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~63_combout\ = (char(3) & ((\lcd_bus~60_combout\) # ((char(2))))) # (!char(3) & (((!char(2) & \lcd_bus~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(3),
	datab => \lcd_bus~60_combout\,
	datac => char(2),
	datad => \lcd_bus~62_combout\,
	combout => \lcd_bus~63_combout\);

-- Location: FF_X23_Y41_N13
\lcd_line2[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[15][2]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[14][2]~q\);

-- Location: FF_X23_Y41_N1
\lcd_line2[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[13][2]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[13][2]~q\);

-- Location: FF_X23_Y41_N9
\lcd_line2[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[13][2]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[12][2]~q\);

-- Location: LCCOMB_X23_Y41_N8
\lcd_bus~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~64_combout\ = (char(0) & ((\lcd_line2[13][2]~q\) # ((char(1))))) # (!char(0) & (((\lcd_line2[12][2]~q\ & !char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => \lcd_line2[13][2]~q\,
	datac => \lcd_line2[12][2]~q\,
	datad => char(1),
	combout => \lcd_bus~64_combout\);

-- Location: FF_X24_Y41_N13
\lcd_line2[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[15][2]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[15][2]~q\);

-- Location: LCCOMB_X23_Y41_N24
\lcd_bus~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~65_combout\ = (\lcd_bus~64_combout\ & (((\lcd_line2[15][2]~q\) # (!char(1))))) # (!\lcd_bus~64_combout\ & (\lcd_line2[14][2]~q\ & ((char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[14][2]~q\,
	datab => \lcd_bus~64_combout\,
	datac => \lcd_line2[15][2]~q\,
	datad => char(1),
	combout => \lcd_bus~65_combout\);

-- Location: LCCOMB_X23_Y41_N14
\lcd_bus~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~66_combout\ = (\lcd_bus~63_combout\ & ((\lcd_bus~65_combout\) # ((!char(2))))) # (!\lcd_bus~63_combout\ & (((char(2) & \lcd_bus~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~65_combout\,
	datab => \lcd_bus~63_combout\,
	datac => char(2),
	datad => \lcd_bus~58_combout\,
	combout => \lcd_bus~66_combout\);

-- Location: LCCOMB_X24_Y40_N22
\lcd_bus~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~69_combout\ = (!\Equal0~14_combout\ & (!\Add0~62_combout\ & ((!\Equal0~7_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Equal0~14_combout\,
	datac => \Add0~62_combout\,
	datad => \Equal0~7_combout\,
	combout => \lcd_bus~69_combout\);

-- Location: FF_X23_Y40_N15
\lcd_line2[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[6][3]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[5][3]~q\);

-- Location: FF_X23_Y40_N21
\lcd_line2[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[9][3]~21_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[9][3]~q\);

-- Location: FF_X23_Y40_N31
\lcd_line2[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[2][3]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[1][3]~q\);

-- Location: LCCOMB_X23_Y40_N30
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (char(3) & ((\lcd_line2[9][3]~q\) # ((char(2))))) # (!char(3) & (((\lcd_line2[1][3]~q\ & !char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(3),
	datab => \lcd_line2[9][3]~q\,
	datac => \lcd_line2[1][3]~q\,
	datad => char(2),
	combout => \Mux12~0_combout\);

-- Location: FF_X23_Y40_N5
\lcd_line2[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[13][3]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[13][3]~q\);

-- Location: LCCOMB_X23_Y40_N14
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (char(2) & ((\Mux12~0_combout\ & (\lcd_line2[13][3]~q\)) # (!\Mux12~0_combout\ & ((\lcd_line2[5][3]~q\))))) # (!char(2) & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => \lcd_line2[13][3]~q\,
	datac => \lcd_line2[5][3]~q\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: FF_X23_Y40_N3
\lcd_line2[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[10][3]~22_combout\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[10][3]~q\);

-- Location: FF_X23_Y40_N9
\lcd_line2[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[7][3]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[6][3]~q\);

-- Location: FF_X23_Y40_N23
\lcd_line2[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[3][3]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[2][3]~q\);

-- Location: LCCOMB_X23_Y40_N22
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (char(2) & ((\lcd_line2[6][3]~q\) # ((char(3))))) # (!char(2) & (((\lcd_line2[2][3]~q\ & !char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => \lcd_line2[6][3]~q\,
	datac => \lcd_line2[2][3]~q\,
	datad => char(3),
	combout => \Mux12~2_combout\);

-- Location: FF_X23_Y40_N19
\lcd_line2[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[14][3]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[14][3]~q\);

-- Location: LCCOMB_X23_Y40_N2
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (char(3) & ((\Mux12~2_combout\ & (\lcd_line2[14][3]~q\)) # (!\Mux12~2_combout\ & ((!\lcd_line2[10][3]~q\))))) # (!char(3) & (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(3),
	datab => \lcd_line2[14][3]~q\,
	datac => \lcd_line2[10][3]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: FF_X24_Y40_N13
\lcd_line2[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[8][3]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[8][3]~q\);

-- Location: FF_X23_Y40_N27
\lcd_line2[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[5][3]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[4][3]~q\);

-- Location: FF_X23_Y40_N7
\lcd_line2[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[1][3]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[0][3]~q\);

-- Location: LCCOMB_X23_Y40_N6
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (char(2) & ((\lcd_line2[4][3]~q\) # ((char(3))))) # (!char(2) & (((\lcd_line2[0][3]~q\ & !char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => \lcd_line2[4][3]~q\,
	datac => \lcd_line2[0][3]~q\,
	datad => char(3),
	combout => \Mux12~4_combout\);

-- Location: FF_X23_Y40_N29
\lcd_line2[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[13][3]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[12][3]~q\);

-- Location: LCCOMB_X23_Y40_N28
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (char(3) & ((\Mux12~4_combout\ & ((\lcd_line2[12][3]~q\))) # (!\Mux12~4_combout\ & (!\lcd_line2[8][3]~q\)))) # (!char(3) & (((\Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(3),
	datab => \lcd_line2[8][3]~q\,
	datac => \lcd_line2[12][3]~q\,
	datad => \Mux12~4_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X21_Y40_N20
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (char(0) & (char(1))) # (!char(0) & ((char(1) & (\Mux12~3_combout\)) # (!char(1) & ((\Mux12~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => char(1),
	datac => \Mux12~3_combout\,
	datad => \Mux12~5_combout\,
	combout => \Mux12~6_combout\);

-- Location: FF_X24_Y40_N3
\lcd_line2[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[7][3]~24_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[7][3]~q\);

-- Location: FF_X23_Y40_N13
\lcd_line2[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[11][3]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[11][3]~q\);

-- Location: FF_X23_Y40_N25
\lcd_line2[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[4][3]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[3][3]~q\);

-- Location: LCCOMB_X23_Y40_N24
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (char(3) & ((char(2)) # ((\lcd_line2[11][3]~q\)))) # (!char(3) & (!char(2) & (\lcd_line2[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(3),
	datab => char(2),
	datac => \lcd_line2[3][3]~q\,
	datad => \lcd_line2[11][3]~q\,
	combout => \Mux12~7_combout\);

-- Location: FF_X23_Y40_N11
\lcd_line2[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => lcd_line0b(3),
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[15][3]~q\);

-- Location: LCCOMB_X23_Y40_N10
\Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\Mux12~7_combout\ & (((\lcd_line2[15][3]~q\) # (!char(2))))) # (!\Mux12~7_combout\ & (\lcd_line2[7][3]~q\ & ((char(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[7][3]~q\,
	datab => \Mux12~7_combout\,
	datac => \lcd_line2[15][3]~q\,
	datad => char(2),
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X24_Y40_N24
\Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (char(0) & ((\Mux12~6_combout\ & (\Mux12~8_combout\)) # (!\Mux12~6_combout\ & ((\Mux12~1_combout\))))) # (!char(0) & (((\Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~8_combout\,
	datab => char(0),
	datac => \Mux12~6_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~9_combout\);

-- Location: LCCOMB_X24_Y40_N10
\lcd_bus~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~70_combout\ = (!\Equal1~2_combout\ & ((\process_0~4_combout\ & (\Mux12~9_combout\)) # (!\process_0~4_combout\ & ((\lcd_bus~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Mux12~9_combout\,
	datac => \lcd_bus~69_combout\,
	datad => \process_0~4_combout\,
	combout => \lcd_bus~70_combout\);

-- Location: FF_X23_Y37_N3
\lcd_line2[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[11][4]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[10][4]~q\);

-- Location: FF_X24_Y41_N25
\lcd_line2[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[9][4]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[9][4]~q\);

-- Location: FF_X24_Y41_N27
\lcd_line2[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[9][4]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[8][4]~q\);

-- Location: LCCOMB_X24_Y41_N26
\lcd_bus~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~71_combout\ = (char(0) & ((char(1)) # ((\lcd_line2[9][4]~q\)))) # (!char(0) & (!char(1) & (\lcd_line2[8][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => char(1),
	datac => \lcd_line2[8][4]~q\,
	datad => \lcd_line2[9][4]~q\,
	combout => \lcd_bus~71_combout\);

-- Location: FF_X23_Y37_N5
\lcd_line2[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[12][4]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[11][4]~q\);

-- Location: LCCOMB_X23_Y37_N2
\lcd_bus~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~72_combout\ = (char(1) & ((\lcd_bus~71_combout\ & (\lcd_line2[11][4]~q\)) # (!\lcd_bus~71_combout\ & ((\lcd_line2[10][4]~q\))))) # (!char(1) & (((\lcd_bus~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datab => \lcd_line2[11][4]~q\,
	datac => \lcd_line2[10][4]~q\,
	datad => \lcd_bus~71_combout\,
	combout => \lcd_bus~72_combout\);

-- Location: FF_X23_Y37_N29
\lcd_line2[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[6][4]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[5][4]~q\);

-- Location: FF_X23_Y37_N21
\lcd_line2[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[6][4]~25_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[6][4]~q\);

-- Location: FF_X23_Y37_N1
\lcd_line2[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[5][4]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[4][4]~q\);

-- Location: LCCOMB_X23_Y37_N0
\lcd_bus~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~73_combout\ = (char(1) & ((char(0)) # ((\lcd_line2[6][4]~q\)))) # (!char(1) & (!char(0) & (\lcd_line2[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datab => char(0),
	datac => \lcd_line2[4][4]~q\,
	datad => \lcd_line2[6][4]~q\,
	combout => \lcd_bus~73_combout\);

-- Location: FF_X23_Y37_N27
\lcd_line2[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[7][4]~26_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[7][4]~q\);

-- Location: LCCOMB_X23_Y37_N28
\lcd_bus~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~74_combout\ = (char(0) & ((\lcd_bus~73_combout\ & (!\lcd_line2[7][4]~q\)) # (!\lcd_bus~73_combout\ & ((\lcd_line2[5][4]~q\))))) # (!char(0) & (((\lcd_bus~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[7][4]~q\,
	datab => char(0),
	datac => \lcd_line2[5][4]~q\,
	datad => \lcd_bus~73_combout\,
	combout => \lcd_bus~74_combout\);

-- Location: FF_X23_Y37_N9
\lcd_line2[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[2][4]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[2][4]~q\);

-- Location: FF_X23_Y37_N11
\lcd_line2[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[1][4]~27_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[1][4]~q\);

-- Location: FF_X23_Y37_N15
\lcd_line2[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[0][4]~28_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[0][4]~q\);

-- Location: LCCOMB_X23_Y37_N24
\lcd_bus~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~75_combout\ = (char(1) & (char(0))) # (!char(1) & ((char(0) & ((!\lcd_line2[1][4]~q\))) # (!char(0) & (\lcd_line2[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datab => char(0),
	datac => \lcd_line2[0][4]~q\,
	datad => \lcd_line2[1][4]~q\,
	combout => \lcd_bus~75_combout\);

-- Location: FF_X23_Y37_N7
\lcd_line2[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[4][4]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[3][4]~q\);

-- Location: LCCOMB_X23_Y37_N6
\lcd_bus~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~76_combout\ = (char(1) & ((\lcd_bus~75_combout\ & ((\lcd_line2[3][4]~q\))) # (!\lcd_bus~75_combout\ & (\lcd_line2[2][4]~q\)))) # (!char(1) & (((\lcd_bus~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datab => \lcd_line2[2][4]~q\,
	datac => \lcd_line2[3][4]~q\,
	datad => \lcd_bus~75_combout\,
	combout => \lcd_bus~76_combout\);

-- Location: LCCOMB_X23_Y37_N12
\lcd_bus~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~77_combout\ = (char(3) & (((char(2))))) # (!char(3) & ((char(2) & (\lcd_bus~74_combout\)) # (!char(2) & ((\lcd_bus~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(3),
	datab => \lcd_bus~74_combout\,
	datac => char(2),
	datad => \lcd_bus~76_combout\,
	combout => \lcd_bus~77_combout\);

-- Location: FF_X23_Y38_N19
\lcd_line2[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[13][4]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[13][4]~q\);

-- Location: FF_X23_Y37_N19
\lcd_line2[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[15][4]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[14][4]~q\);

-- Location: FF_X23_Y37_N23
\lcd_line2[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[13][4]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[12][4]~q\);

-- Location: LCCOMB_X23_Y37_N4
\lcd_bus~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~78_combout\ = (char(1) & ((char(0)) # ((\lcd_line2[14][4]~q\)))) # (!char(1) & (!char(0) & (\lcd_line2[12][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datab => char(0),
	datac => \lcd_line2[12][4]~q\,
	datad => \lcd_line2[14][4]~q\,
	combout => \lcd_bus~78_combout\);

-- Location: FF_X23_Y37_N31
\lcd_line2[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => lcd_line0b(4),
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[15][4]~q\);

-- Location: LCCOMB_X23_Y37_N22
\lcd_bus~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~79_combout\ = (\lcd_bus~78_combout\ & ((\lcd_line2[15][4]~q\) # ((!char(0))))) # (!\lcd_bus~78_combout\ & (((\lcd_line2[13][4]~q\ & char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[15][4]~q\,
	datab => \lcd_bus~78_combout\,
	datac => \lcd_line2[13][4]~q\,
	datad => char(0),
	combout => \lcd_bus~79_combout\);

-- Location: LCCOMB_X23_Y37_N16
\lcd_bus~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~80_combout\ = (\lcd_bus~77_combout\ & (((\lcd_bus~79_combout\) # (!char(3))))) # (!\lcd_bus~77_combout\ & (\lcd_bus~72_combout\ & (char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~77_combout\,
	datab => \lcd_bus~72_combout\,
	datac => char(3),
	datad => \lcd_bus~79_combout\,
	combout => \lcd_bus~80_combout\);

-- Location: FF_X27_Y39_N23
\lcd_line1[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[11][4]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[10][4]~q\);

-- Location: FF_X27_Y39_N13
\lcd_line1[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[6][4]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[6][4]~q\);

-- Location: FF_X27_Y39_N27
\lcd_line1[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[3][4]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[2][4]~q\);

-- Location: LCCOMB_X27_Y39_N26
\lcd_bus~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~81_combout\ = (\Add0~4_combout\ & (((\Add0~6_combout\)) # (!\lcd_line1[6][4]~q\))) # (!\Add0~4_combout\ & (((\lcd_line1[2][4]~q\ & !\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \lcd_line1[6][4]~q\,
	datac => \lcd_line1[2][4]~q\,
	datad => \Add0~6_combout\,
	combout => \lcd_bus~81_combout\);

-- Location: FF_X27_Y39_N17
\lcd_line1[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[15][4]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[14][4]~q\);

-- Location: LCCOMB_X27_Y39_N16
\lcd_bus~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~82_combout\ = (\lcd_bus~81_combout\ & (((\lcd_line1[14][4]~q\) # (!\Add0~6_combout\)))) # (!\lcd_bus~81_combout\ & (\lcd_line1[10][4]~q\ & ((\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[10][4]~q\,
	datab => \lcd_bus~81_combout\,
	datac => \lcd_line1[14][4]~q\,
	datad => \Add0~6_combout\,
	combout => \lcd_bus~82_combout\);

-- Location: FF_X27_Y39_N25
\lcd_line1[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[5][4]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[5][4]~q\);

-- Location: FF_X27_Y39_N1
\lcd_line1[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[10][4]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[9][4]~q\);

-- Location: FF_X27_Y39_N3
\lcd_line1[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[2][4]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[1][4]~q\);

-- Location: LCCOMB_X27_Y39_N2
\lcd_bus~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~83_combout\ = (\Add0~4_combout\ & (((\Add0~6_combout\)))) # (!\Add0~4_combout\ & ((\Add0~6_combout\ & (\lcd_line1[9][4]~q\)) # (!\Add0~6_combout\ & ((\lcd_line1[1][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \lcd_line1[9][4]~q\,
	datac => \lcd_line1[1][4]~q\,
	datad => \Add0~6_combout\,
	combout => \lcd_bus~83_combout\);

-- Location: FF_X27_Y39_N31
\lcd_line1[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[14][4]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[13][4]~q\);

-- Location: LCCOMB_X27_Y39_N30
\lcd_bus~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~84_combout\ = (\Add0~4_combout\ & ((\lcd_bus~83_combout\ & ((\lcd_line1[13][4]~q\))) # (!\lcd_bus~83_combout\ & (!\lcd_line1[5][4]~q\)))) # (!\Add0~4_combout\ & (((\lcd_bus~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \lcd_line1[5][4]~q\,
	datac => \lcd_line1[13][4]~q\,
	datad => \lcd_bus~83_combout\,
	combout => \lcd_bus~84_combout\);

-- Location: FF_X27_Y39_N15
\lcd_line1[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[8][4]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[8][4]~q\);

-- Location: FF_X27_Y39_N21
\lcd_line1[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[4][4]~15_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[4][4]~q\);

-- Location: FF_X27_Y39_N19
\lcd_line1[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[1][4]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[0][4]~q\);

-- Location: LCCOMB_X27_Y39_N18
\lcd_bus~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~85_combout\ = (\Add0~4_combout\ & ((\lcd_line1[4][4]~q\) # ((\Add0~6_combout\)))) # (!\Add0~4_combout\ & (((\lcd_line1[0][4]~q\ & !\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \lcd_line1[4][4]~q\,
	datac => \lcd_line1[0][4]~q\,
	datad => \Add0~6_combout\,
	combout => \lcd_bus~85_combout\);

-- Location: FF_X27_Y39_N7
\lcd_line1[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[13][4]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[12][4]~q\);

-- Location: LCCOMB_X27_Y39_N6
\lcd_bus~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~86_combout\ = (\Add0~6_combout\ & ((\lcd_bus~85_combout\ & ((\lcd_line1[12][4]~q\))) # (!\lcd_bus~85_combout\ & (\lcd_line1[8][4]~q\)))) # (!\Add0~6_combout\ & (((\lcd_bus~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \lcd_line1[8][4]~q\,
	datac => \lcd_line1[12][4]~q\,
	datad => \lcd_bus~85_combout\,
	combout => \lcd_bus~86_combout\);

-- Location: LCCOMB_X28_Y39_N0
\lcd_bus~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~87_combout\ = (\Add0~2_combout\ & (((\Add0~0_combout\)))) # (!\Add0~2_combout\ & ((\Add0~0_combout\ & ((\lcd_bus~84_combout\))) # (!\Add0~0_combout\ & (\lcd_bus~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \lcd_bus~86_combout\,
	datac => \Add0~0_combout\,
	datad => \lcd_bus~84_combout\,
	combout => \lcd_bus~87_combout\);

-- Location: FF_X27_Y39_N29
\lcd_line1[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[7][4]~16_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[7][4]~q\);

-- Location: FF_X27_Y39_N11
\lcd_line1[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[11][4]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[11][4]~q\);

-- Location: FF_X27_Y39_N9
\lcd_line1[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[4][4]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[3][4]~q\);

-- Location: LCCOMB_X27_Y39_N8
\lcd_bus~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~88_combout\ = (\Add0~4_combout\ & (((\Add0~6_combout\)))) # (!\Add0~4_combout\ & ((\Add0~6_combout\ & (\lcd_line1[11][4]~q\)) # (!\Add0~6_combout\ & ((\lcd_line1[3][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \lcd_line1[11][4]~q\,
	datac => \lcd_line1[3][4]~q\,
	datad => \Add0~6_combout\,
	combout => \lcd_bus~88_combout\);

-- Location: FF_X26_Y39_N19
\lcd_line1[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[15][4]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[15][4]~q\);

-- Location: LCCOMB_X27_Y39_N4
\lcd_bus~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~89_combout\ = (\Add0~4_combout\ & ((\lcd_bus~88_combout\ & ((\lcd_line1[15][4]~q\))) # (!\lcd_bus~88_combout\ & (!\lcd_line1[7][4]~q\)))) # (!\Add0~4_combout\ & (((\lcd_bus~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \lcd_line1[7][4]~q\,
	datac => \lcd_line1[15][4]~q\,
	datad => \lcd_bus~88_combout\,
	combout => \lcd_bus~89_combout\);

-- Location: LCCOMB_X28_Y39_N30
\lcd_bus~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~90_combout\ = (\Add0~2_combout\ & ((\lcd_bus~87_combout\ & ((\lcd_bus~89_combout\))) # (!\lcd_bus~87_combout\ & (\lcd_bus~82_combout\)))) # (!\Add0~2_combout\ & (((\lcd_bus~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~82_combout\,
	datab => \lcd_bus~89_combout\,
	datac => \Add0~2_combout\,
	datad => \lcd_bus~87_combout\,
	combout => \lcd_bus~90_combout\);

-- Location: LCCOMB_X24_Y38_N18
\lcd_bus~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~91_combout\ = (\lcd_bus~80_combout\ & ((\lcd_bus~134_combout\) # ((\lcd_bus~90_combout\ & \lcd_bus~67_combout\)))) # (!\lcd_bus~80_combout\ & (\lcd_bus~90_combout\ & (\lcd_bus~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~80_combout\,
	datab => \lcd_bus~90_combout\,
	datac => \lcd_bus~67_combout\,
	datad => \lcd_bus~134_combout\,
	combout => \lcd_bus~91_combout\);

-- Location: LCCOMB_X23_Y39_N26
\lcd_bus~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~99_combout\ = (char(2) & (((char(3)) # (!\lcd_line2[7][5]~q\)))) # (!char(2) & (\lcd_line2[3][5]~q\ & ((!char(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => \lcd_line2[3][5]~q\,
	datac => \lcd_line2[7][5]~q\,
	datad => char(3),
	combout => \lcd_bus~99_combout\);

-- Location: FF_X23_Y38_N1
\lcd_line1[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[10][5]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[9][5]~q\);

-- Location: FF_X23_Y38_N23
\lcd_line1[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[10][5]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[10][5]~q\);

-- Location: FF_X23_Y38_N15
\lcd_line1[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[8][5]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[8][5]~q\);

-- Location: LCCOMB_X23_Y38_N8
\lcd_bus~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~102_combout\ = (\Add0~0_combout\ & (((\Add0~2_combout\)))) # (!\Add0~0_combout\ & ((\Add0~2_combout\ & (!\lcd_line1[10][5]~q\)) # (!\Add0~2_combout\ & ((!\lcd_line1[8][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[10][5]~q\,
	datab => \Add0~0_combout\,
	datac => \lcd_line1[8][5]~q\,
	datad => \Add0~2_combout\,
	combout => \lcd_bus~102_combout\);

-- Location: FF_X23_Y38_N7
\lcd_line1[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[12][5]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[11][5]~q\);

-- Location: LCCOMB_X23_Y38_N6
\lcd_bus~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~103_combout\ = (\Add0~0_combout\ & ((\lcd_bus~102_combout\ & ((!\lcd_line1[11][5]~q\))) # (!\lcd_bus~102_combout\ & (!\lcd_line1[9][5]~q\)))) # (!\Add0~0_combout\ & (((\lcd_bus~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \lcd_line1[9][5]~q\,
	datac => \lcd_line1[11][5]~q\,
	datad => \lcd_bus~102_combout\,
	combout => \lcd_bus~103_combout\);

-- Location: FF_X23_Y38_N29
\lcd_line1[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[7][5]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[6][5]~q\);

-- Location: FF_X21_Y38_N25
\lcd_line1[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[6][5]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[5][5]~q\);

-- Location: FF_X23_Y38_N3
\lcd_line1[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[5][5]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[4][5]~q\);

-- Location: LCCOMB_X23_Y38_N2
\lcd_bus~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~104_combout\ = (\Add0~0_combout\ & (((\Add0~2_combout\)) # (!\lcd_line1[5][5]~q\))) # (!\Add0~0_combout\ & (((!\lcd_line1[4][5]~q\ & !\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[5][5]~q\,
	datab => \Add0~0_combout\,
	datac => \lcd_line1[4][5]~q\,
	datad => \Add0~2_combout\,
	combout => \lcd_bus~104_combout\);

-- Location: FF_X23_Y38_N9
\lcd_line1[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[8][5]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[7][5]~q\);

-- Location: LCCOMB_X23_Y38_N28
\lcd_bus~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~105_combout\ = (\Add0~2_combout\ & ((\lcd_bus~104_combout\ & (!\lcd_line1[7][5]~q\)) # (!\lcd_bus~104_combout\ & ((!\lcd_line1[6][5]~q\))))) # (!\Add0~2_combout\ & (((\lcd_bus~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \lcd_line1[7][5]~q\,
	datac => \lcd_line1[6][5]~q\,
	datad => \lcd_bus~104_combout\,
	combout => \lcd_bus~105_combout\);

-- Location: FF_X24_Y38_N31
\lcd_line1[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[2][5]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[1][5]~q\);

-- Location: FF_X24_Y38_N9
\lcd_line1[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[3][5]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[2][5]~q\);

-- Location: FF_X24_Y38_N5
\lcd_line1[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[1][5]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[0][5]~q\);

-- Location: LCCOMB_X24_Y38_N16
\lcd_bus~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~106_combout\ = (\Add0~0_combout\ & (((\Add0~2_combout\)))) # (!\Add0~0_combout\ & ((\Add0~2_combout\ & ((\lcd_line1[2][5]~q\))) # (!\Add0~2_combout\ & (\lcd_line1[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \lcd_line1[0][5]~q\,
	datac => \lcd_line1[2][5]~q\,
	datad => \Add0~2_combout\,
	combout => \lcd_bus~106_combout\);

-- Location: FF_X23_Y38_N21
\lcd_line1[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[3][5]~17_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[3][5]~q\);

-- Location: LCCOMB_X24_Y38_N30
\lcd_bus~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~107_combout\ = (\Add0~0_combout\ & ((\lcd_bus~106_combout\ & (\lcd_line1[3][5]~q\)) # (!\lcd_bus~106_combout\ & ((\lcd_line1[1][5]~q\))))) # (!\Add0~0_combout\ & (((\lcd_bus~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \lcd_line1[3][5]~q\,
	datac => \lcd_line1[1][5]~q\,
	datad => \lcd_bus~106_combout\,
	combout => \lcd_bus~107_combout\);

-- Location: LCCOMB_X24_Y38_N28
\lcd_bus~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~108_combout\ = (\Add0~4_combout\ & ((\Add0~6_combout\) # ((\lcd_bus~105_combout\)))) # (!\Add0~4_combout\ & (!\Add0~6_combout\ & (\lcd_bus~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~6_combout\,
	datac => \lcd_bus~107_combout\,
	datad => \lcd_bus~105_combout\,
	combout => \lcd_bus~108_combout\);

-- Location: FF_X23_Y38_N17
\lcd_line1[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[15][5]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[14][5]~q\);

-- Location: FF_X23_Y38_N5
\lcd_line1[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[13][5]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[13][5]~q\);

-- Location: FF_X23_Y38_N27
\lcd_line1[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[13][5]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[12][5]~q\);

-- Location: LCCOMB_X23_Y38_N26
\lcd_bus~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~109_combout\ = (\Add0~0_combout\ & (((\Add0~2_combout\)) # (!\lcd_line1[13][5]~q\))) # (!\Add0~0_combout\ & (((!\lcd_line1[12][5]~q\ & !\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \lcd_line1[13][5]~q\,
	datac => \lcd_line1[12][5]~q\,
	datad => \Add0~2_combout\,
	combout => \lcd_bus~109_combout\);

-- Location: FF_X23_Y38_N31
\lcd_line1[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[15][5]~18_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[15][5]~q\);

-- Location: LCCOMB_X23_Y38_N16
\lcd_bus~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~110_combout\ = (\lcd_bus~109_combout\ & (((!\Add0~2_combout\)) # (!\lcd_line1[15][5]~q\))) # (!\lcd_bus~109_combout\ & (((!\lcd_line1[14][5]~q\ & \Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[15][5]~q\,
	datab => \lcd_bus~109_combout\,
	datac => \lcd_line1[14][5]~q\,
	datad => \Add0~2_combout\,
	combout => \lcd_bus~110_combout\);

-- Location: LCCOMB_X24_Y38_N10
\lcd_bus~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~111_combout\ = (\Add0~6_combout\ & ((\lcd_bus~108_combout\ & ((\lcd_bus~110_combout\))) # (!\lcd_bus~108_combout\ & (\lcd_bus~103_combout\)))) # (!\Add0~6_combout\ & (((\lcd_bus~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~103_combout\,
	datab => \Add0~6_combout\,
	datac => \lcd_bus~110_combout\,
	datad => \lcd_bus~108_combout\,
	combout => \lcd_bus~111_combout\);

-- Location: FF_X24_Y37_N25
\lcd_line1[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[10][6]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[9][6]~q\);

-- Location: FF_X24_Y38_N21
\lcd_line1[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[5][6]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[5][6]~q\);

-- Location: FF_X24_Y37_N27
\lcd_line1[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[2][6]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[1][6]~q\);

-- Location: LCCOMB_X24_Y37_N26
\lcd_bus~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~113_combout\ = (\Add0~4_combout\ & ((\lcd_line1[5][6]~q\) # ((\Add0~6_combout\)))) # (!\Add0~4_combout\ & (((!\lcd_line1[1][6]~q\ & !\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \lcd_line1[5][6]~q\,
	datac => \lcd_line1[1][6]~q\,
	datad => \Add0~6_combout\,
	combout => \lcd_bus~113_combout\);

-- Location: FF_X24_Y37_N9
\lcd_line1[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[13][6]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[13][6]~q\);

-- Location: LCCOMB_X24_Y37_N24
\lcd_bus~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~114_combout\ = (\Add0~6_combout\ & ((\lcd_bus~113_combout\ & (\lcd_line1[13][6]~q\)) # (!\lcd_bus~113_combout\ & ((\lcd_line1[9][6]~q\))))) # (!\Add0~6_combout\ & (((\lcd_bus~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \lcd_line1[13][6]~q\,
	datac => \lcd_line1[9][6]~q\,
	datad => \lcd_bus~113_combout\,
	combout => \lcd_bus~114_combout\);

-- Location: FF_X24_Y38_N15
\lcd_line1[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[6][6]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[6][6]~q\);

-- Location: FF_X24_Y37_N15
\lcd_line1[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[10][6]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[10][6]~q\);

-- Location: FF_X24_Y37_N23
\lcd_line1[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[3][6]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[2][6]~q\);

-- Location: LCCOMB_X24_Y37_N22
\lcd_bus~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~115_combout\ = (\Add0~6_combout\ & ((\lcd_line1[10][6]~q\) # ((\Add0~4_combout\)))) # (!\Add0~6_combout\ & (((!\lcd_line1[2][6]~q\ & !\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \lcd_line1[10][6]~q\,
	datac => \lcd_line1[2][6]~q\,
	datad => \Add0~4_combout\,
	combout => \lcd_bus~115_combout\);

-- Location: FF_X24_Y37_N17
\lcd_line1[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[15][6]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[14][6]~q\);

-- Location: LCCOMB_X24_Y37_N16
\lcd_bus~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~116_combout\ = (\Add0~4_combout\ & ((\lcd_bus~115_combout\ & ((\lcd_line1[14][6]~q\))) # (!\lcd_bus~115_combout\ & (\lcd_line1[6][6]~q\)))) # (!\Add0~4_combout\ & (((\lcd_bus~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \lcd_line1[6][6]~q\,
	datac => \lcd_line1[14][6]~q\,
	datad => \lcd_bus~115_combout\,
	combout => \lcd_bus~116_combout\);

-- Location: FF_X24_Y37_N1
\lcd_line1[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[5][6]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[4][6]~q\);

-- Location: FF_X24_Y37_N5
\lcd_line1[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[8][6]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[8][6]~q\);

-- Location: FF_X24_Y37_N13
\lcd_line1[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[1][6]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[0][6]~q\);

-- Location: LCCOMB_X24_Y37_N12
\lcd_bus~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~117_combout\ = (\Add0~6_combout\ & ((\lcd_line1[8][6]~q\) # ((\Add0~4_combout\)))) # (!\Add0~6_combout\ & (((!\lcd_line1[0][6]~q\ & !\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \lcd_line1[8][6]~q\,
	datac => \lcd_line1[0][6]~q\,
	datad => \Add0~4_combout\,
	combout => \lcd_bus~117_combout\);

-- Location: FF_X24_Y37_N21
\lcd_line1[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[13][6]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[12][6]~q\);

-- Location: LCCOMB_X24_Y37_N20
\lcd_bus~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~118_combout\ = (\Add0~4_combout\ & ((\lcd_bus~117_combout\ & ((\lcd_line1[12][6]~q\))) # (!\lcd_bus~117_combout\ & (\lcd_line1[4][6]~q\)))) # (!\Add0~4_combout\ & (((\lcd_bus~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \lcd_line1[4][6]~q\,
	datac => \lcd_line1[12][6]~q\,
	datad => \lcd_bus~117_combout\,
	combout => \lcd_bus~118_combout\);

-- Location: LCCOMB_X24_Y37_N6
\lcd_bus~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~119_combout\ = (\Add0~2_combout\ & ((\Add0~0_combout\) # ((\lcd_bus~116_combout\)))) # (!\Add0~2_combout\ & (!\Add0~0_combout\ & ((\lcd_bus~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datac => \lcd_bus~116_combout\,
	datad => \lcd_bus~118_combout\,
	combout => \lcd_bus~119_combout\);

-- Location: FF_X24_Y39_N31
\lcd_line1[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[12][6]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[11][6]~q\);

-- Location: FF_X24_Y37_N11
\lcd_line1[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[8][6]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[7][6]~q\);

-- Location: FF_X24_Y37_N31
\lcd_line1[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[3][6]~19_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[3][6]~q\);

-- Location: LCCOMB_X24_Y37_N10
\lcd_bus~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~120_combout\ = (\Add0~4_combout\ & (((\lcd_line1[7][6]~q\) # (\Add0~6_combout\)))) # (!\Add0~4_combout\ & (!\lcd_line1[3][6]~q\ & ((!\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \lcd_line1[3][6]~q\,
	datac => \lcd_line1[7][6]~q\,
	datad => \Add0~6_combout\,
	combout => \lcd_bus~120_combout\);

-- Location: FF_X24_Y37_N3
\lcd_line1[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => lcd_line0(6),
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[15][6]~q\);

-- Location: LCCOMB_X24_Y37_N2
\lcd_bus~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~121_combout\ = (\Add0~6_combout\ & ((\lcd_bus~120_combout\ & ((\lcd_line1[15][6]~q\))) # (!\lcd_bus~120_combout\ & (\lcd_line1[11][6]~q\)))) # (!\Add0~6_combout\ & (((\lcd_bus~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \lcd_line1[11][6]~q\,
	datac => \lcd_line1[15][6]~q\,
	datad => \lcd_bus~120_combout\,
	combout => \lcd_bus~121_combout\);

-- Location: LCCOMB_X24_Y37_N28
\lcd_bus~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~122_combout\ = (\Add0~0_combout\ & ((\lcd_bus~119_combout\ & ((\lcd_bus~121_combout\))) # (!\lcd_bus~119_combout\ & (\lcd_bus~114_combout\)))) # (!\Add0~0_combout\ & (((\lcd_bus~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~114_combout\,
	datab => \lcd_bus~121_combout\,
	datac => \Add0~0_combout\,
	datad => \lcd_bus~119_combout\,
	combout => \lcd_bus~122_combout\);

-- Location: LCCOMB_X20_Y39_N26
\lcd_bus~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~130_combout\ = (char(0) & ((char(1)) # ((\lcd_line2[13][6]~q\)))) # (!char(0) & (!char(1) & (\lcd_line2[12][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => char(1),
	datac => \lcd_line2[12][6]~q\,
	datad => \lcd_line2[13][6]~q\,
	combout => \lcd_bus~130_combout\);

-- Location: LCCOMB_X23_Y39_N20
\lcd_bus~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~133_combout\ = (\Equal1~2_combout\) # ((!\process_0~4_combout\ & \Equal0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~2_combout\,
	datac => \process_0~4_combout\,
	datad => \Equal0~14_combout\,
	combout => \lcd_bus~133_combout\);

-- Location: FF_X25_Y38_N23
\lcd_line0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line0[0]~0_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_line0(0));

-- Location: FF_X21_Y39_N3
\lcd_line0b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[0][0]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_line0b(0));

-- Location: FF_X25_Y37_N5
\lcd_line0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line0[1]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_line0(1));

-- Location: FF_X24_Y41_N3
\lcd_line0b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line0b[2]~1_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_line0b(2));

-- Location: FF_X23_Y40_N17
\lcd_line0b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[0][3]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_line0b(3));

-- Location: FF_X23_Y37_N25
\lcd_line0b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[0][4]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_line0b(4));

-- Location: FF_X26_Y39_N29
\lcd_line0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line0[4]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_line0(4));

-- Location: FF_X23_Y38_N13
\lcd_line0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[0][5]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_line0(5));

-- Location: FF_X24_Y37_N19
\lcd_line0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line0[6]~2_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_line0(6));

-- Location: LCCOMB_X25_Y38_N28
\lcd_line1[5][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[5][0]~3_combout\ = !\lcd_line1[6][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line1[6][0]~q\,
	combout => \lcd_line1[5][0]~3_combout\);

-- Location: LCCOMB_X25_Y38_N4
\lcd_line1[7][0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[7][0]~4_combout\ = !\lcd_line1[8][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[8][0]~q\,
	combout => \lcd_line1[7][0]~4_combout\);

-- Location: LCCOMB_X25_Y38_N26
\lcd_line1[3][0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[3][0]~5_combout\ = !\lcd_line1[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line1[4][0]~q\,
	combout => \lcd_line1[3][0]~5_combout\);

-- Location: LCCOMB_X21_Y39_N30
\lcd_line2[9][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[9][0]~3_combout\ = !\lcd_line2[10][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line2[10][0]~q\,
	combout => \lcd_line2[9][0]~3_combout\);

-- Location: LCCOMB_X21_Y39_N4
\lcd_line2[5][0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[5][0]~4_combout\ = !\lcd_line2[6][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[6][0]~q\,
	combout => \lcd_line2[5][0]~4_combout\);

-- Location: LCCOMB_X21_Y39_N14
\lcd_line2[1][0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[1][0]~5_combout\ = !\lcd_line2[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[2][0]~q\,
	combout => \lcd_line2[1][0]~5_combout\);

-- Location: LCCOMB_X21_Y39_N8
\lcd_line2[3][0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[3][0]~6_combout\ = !\lcd_line2[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line2[4][0]~q\,
	combout => \lcd_line2[3][0]~6_combout\);

-- Location: LCCOMB_X25_Y37_N28
\lcd_line1[1][1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[1][1]~6_combout\ = !\lcd_line1[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line1[2][1]~q\,
	combout => \lcd_line1[1][1]~6_combout\);

-- Location: LCCOMB_X25_Y37_N22
\lcd_line1[2][1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[2][1]~7_combout\ = !\lcd_line1[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[3][1]~q\,
	combout => \lcd_line1[2][1]~7_combout\);

-- Location: LCCOMB_X25_Y37_N2
\lcd_line1[4][1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[4][1]~8_combout\ = !\lcd_line1[5][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line1[5][1]~q\,
	combout => \lcd_line1[4][1]~8_combout\);

-- Location: LCCOMB_X25_Y37_N0
\lcd_line1[7][1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[7][1]~9_combout\ = !\lcd_line1[8][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line1[8][1]~q\,
	combout => \lcd_line1[7][1]~9_combout\);

-- Location: LCCOMB_X23_Y41_N18
\lcd_line2[6][2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[6][2]~14_combout\ = !\lcd_line2[7][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line2[7][2]~q\,
	combout => \lcd_line2[6][2]~14_combout\);

-- Location: LCCOMB_X23_Y41_N22
\lcd_line2[4][2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[4][2]~15_combout\ = !\lcd_line2[5][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line2[5][2]~q\,
	combout => \lcd_line2[4][2]~15_combout\);

-- Location: LCCOMB_X23_Y41_N20
\lcd_line2[10][2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[10][2]~16_combout\ = !\lcd_line2[11][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[11][2]~q\,
	combout => \lcd_line2[10][2]~16_combout\);

-- Location: LCCOMB_X23_Y41_N6
\lcd_line2[8][2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[8][2]~17_combout\ = !\lcd_line2[9][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line2[9][2]~q\,
	combout => \lcd_line2[8][2]~17_combout\);

-- Location: LCCOMB_X24_Y41_N0
\lcd_line2[1][2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[1][2]~18_combout\ = !\lcd_line2[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line2[2][2]~q\,
	combout => \lcd_line2[1][2]~18_combout\);

-- Location: LCCOMB_X24_Y41_N8
\lcd_line2[2][2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[2][2]~19_combout\ = !\lcd_line2[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[3][2]~q\,
	combout => \lcd_line2[2][2]~19_combout\);

-- Location: LCCOMB_X24_Y41_N10
\lcd_line2[0][2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[0][2]~20_combout\ = !\lcd_line2[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[1][2]~q\,
	combout => \lcd_line2[0][2]~20_combout\);

-- Location: LCCOMB_X23_Y40_N20
\lcd_line2[9][3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[9][3]~21_combout\ = !\lcd_line2[10][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[10][3]~q\,
	combout => \lcd_line2[9][3]~21_combout\);

-- Location: LCCOMB_X23_Y40_N26
\lcd_line2[10][3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[10][3]~22_combout\ = !\lcd_line2[11][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[11][3]~q\,
	combout => \lcd_line2[10][3]~22_combout\);

-- Location: LCCOMB_X23_Y40_N8
\lcd_line2[8][3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[8][3]~23_combout\ = !\lcd_line2[9][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[9][3]~q\,
	combout => \lcd_line2[8][3]~23_combout\);

-- Location: LCCOMB_X24_Y40_N2
\lcd_line2[7][3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[7][3]~24_combout\ = !\lcd_line2[8][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[8][3]~q\,
	combout => \lcd_line2[7][3]~24_combout\);

-- Location: LCCOMB_X23_Y37_N20
\lcd_line2[6][4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[6][4]~25_combout\ = !\lcd_line2[7][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line2[7][4]~q\,
	combout => \lcd_line2[6][4]~25_combout\);

-- Location: LCCOMB_X23_Y37_N26
\lcd_line2[7][4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[7][4]~26_combout\ = !\lcd_line2[8][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[8][4]~q\,
	combout => \lcd_line2[7][4]~26_combout\);

-- Location: LCCOMB_X23_Y37_N10
\lcd_line2[1][4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[1][4]~27_combout\ = !\lcd_line2[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line2[2][4]~q\,
	combout => \lcd_line2[1][4]~27_combout\);

-- Location: LCCOMB_X23_Y37_N14
\lcd_line2[0][4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[0][4]~28_combout\ = !\lcd_line2[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[1][4]~q\,
	combout => \lcd_line2[0][4]~28_combout\);

-- Location: LCCOMB_X27_Y39_N20
\lcd_line1[4][4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[4][4]~15_combout\ = !\lcd_line1[5][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[5][4]~q\,
	combout => \lcd_line1[4][4]~15_combout\);

-- Location: LCCOMB_X27_Y39_N28
\lcd_line1[7][4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[7][4]~16_combout\ = !\lcd_line1[8][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[8][4]~q\,
	combout => \lcd_line1[7][4]~16_combout\);

-- Location: LCCOMB_X23_Y38_N20
\lcd_line1[3][5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[3][5]~17_combout\ = !\lcd_line1[4][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line1[4][5]~q\,
	combout => \lcd_line1[3][5]~17_combout\);

-- Location: LCCOMB_X23_Y38_N30
\lcd_line1[15][5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[15][5]~18_combout\ = !lcd_line0(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => lcd_line0(5),
	combout => \lcd_line1[15][5]~18_combout\);

-- Location: LCCOMB_X24_Y37_N30
\lcd_line1[3][6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[3][6]~19_combout\ = !\lcd_line1[4][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[4][6]~q\,
	combout => \lcd_line1[3][6]~19_combout\);

-- Location: LCCOMB_X25_Y38_N22
\lcd_line0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line0[0]~0_combout\ = !\lcd_line1[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line1[0][0]~q\,
	combout => \lcd_line0[0]~0_combout\);

-- Location: LCCOMB_X24_Y41_N2
\lcd_line0b[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line0b[2]~1_combout\ = !\lcd_line2[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[0][2]~q\,
	combout => \lcd_line0b[2]~1_combout\);

-- Location: LCCOMB_X24_Y37_N18
\lcd_line0[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line0[6]~2_combout\ = !\lcd_line1[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line1[0][6]~q\,
	combout => \lcd_line0[6]~2_combout\);

-- Location: LCCOMB_X23_Y38_N10
\lcd_line1[8][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[8][0]~feeder_combout\ = \lcd_line1[9][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[9][0]~q\,
	combout => \lcd_line1[8][0]~feeder_combout\);

-- Location: LCCOMB_X25_Y38_N0
\lcd_line1[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[2][0]~feeder_combout\ = \lcd_line1[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[3][0]~q\,
	combout => \lcd_line1[2][0]~feeder_combout\);

-- Location: LCCOMB_X25_Y38_N12
\lcd_line1[11][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[11][0]~feeder_combout\ = \lcd_line1[12][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[12][0]~q\,
	combout => \lcd_line1[11][0]~feeder_combout\);

-- Location: LCCOMB_X26_Y39_N14
\lcd_line1[14][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[14][0]~feeder_combout\ = \lcd_line1[15][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[15][0]~q\,
	combout => \lcd_line1[14][0]~feeder_combout\);

-- Location: LCCOMB_X21_Y39_N26
\lcd_line2[7][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[7][0]~feeder_combout\ = \lcd_line2[8][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[8][0]~q\,
	combout => \lcd_line2[7][0]~feeder_combout\);

-- Location: LCCOMB_X24_Y40_N8
\lcd_line2[10][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[10][0]~feeder_combout\ = \lcd_line2[11][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line2[11][0]~q\,
	combout => \lcd_line2[10][0]~feeder_combout\);

-- Location: LCCOMB_X21_Y39_N22
\lcd_line2[13][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[13][0]~feeder_combout\ = \lcd_line2[14][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[14][0]~q\,
	combout => \lcd_line2[13][0]~feeder_combout\);

-- Location: LCCOMB_X21_Y39_N12
\lcd_line2[14][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[14][0]~feeder_combout\ = \lcd_line2[15][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[15][0]~q\,
	combout => \lcd_line2[14][0]~feeder_combout\);

-- Location: LCCOMB_X25_Y37_N16
\lcd_line1[12][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[12][1]~feeder_combout\ = \lcd_line1[13][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[13][1]~q\,
	combout => \lcd_line1[12][1]~feeder_combout\);

-- Location: LCCOMB_X25_Y37_N12
\lcd_line1[13][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[13][1]~feeder_combout\ = \lcd_line1[14][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[14][1]~q\,
	combout => \lcd_line1[13][1]~feeder_combout\);

-- Location: LCCOMB_X25_Y37_N4
\lcd_line0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line0[1]~feeder_combout\ = \lcd_line1[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[0][1]~q\,
	combout => \lcd_line0[1]~feeder_combout\);

-- Location: LCCOMB_X25_Y37_N26
\lcd_line1[11][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[11][1]~feeder_combout\ = \lcd_line1[12][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[12][1]~q\,
	combout => \lcd_line1[11][1]~feeder_combout\);

-- Location: LCCOMB_X25_Y37_N14
\lcd_line1[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[6][1]~feeder_combout\ = \lcd_line1[7][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[7][1]~q\,
	combout => \lcd_line1[6][1]~feeder_combout\);

-- Location: LCCOMB_X23_Y41_N30
\lcd_line2[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[9][2]~feeder_combout\ = \lcd_line2[10][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[10][2]~q\,
	combout => \lcd_line2[9][2]~feeder_combout\);

-- Location: LCCOMB_X23_Y41_N0
\lcd_line2[13][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[13][2]~feeder_combout\ = \lcd_line2[14][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[14][2]~q\,
	combout => \lcd_line2[13][2]~feeder_combout\);

-- Location: LCCOMB_X23_Y40_N4
\lcd_line2[13][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[13][3]~feeder_combout\ = \lcd_line2[14][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[14][3]~q\,
	combout => \lcd_line2[13][3]~feeder_combout\);

-- Location: LCCOMB_X23_Y40_N12
\lcd_line2[11][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[11][3]~feeder_combout\ = \lcd_line2[12][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[12][3]~q\,
	combout => \lcd_line2[11][3]~feeder_combout\);

-- Location: LCCOMB_X23_Y40_N18
\lcd_line2[14][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[14][3]~feeder_combout\ = \lcd_line2[15][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[15][3]~q\,
	combout => \lcd_line2[14][3]~feeder_combout\);

-- Location: LCCOMB_X24_Y41_N24
\lcd_line2[9][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[9][4]~feeder_combout\ = \lcd_line2[10][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[10][4]~q\,
	combout => \lcd_line2[9][4]~feeder_combout\);

-- Location: LCCOMB_X23_Y37_N8
\lcd_line2[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[2][4]~feeder_combout\ = \lcd_line2[3][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[3][4]~q\,
	combout => \lcd_line2[2][4]~feeder_combout\);

-- Location: LCCOMB_X23_Y38_N18
\lcd_line2[13][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[13][4]~feeder_combout\ = \lcd_line2[14][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[14][4]~q\,
	combout => \lcd_line2[13][4]~feeder_combout\);

-- Location: LCCOMB_X27_Y39_N24
\lcd_line1[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[5][4]~feeder_combout\ = \lcd_line1[6][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[6][4]~q\,
	combout => \lcd_line1[5][4]~feeder_combout\);

-- Location: LCCOMB_X27_Y39_N14
\lcd_line1[8][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[8][4]~feeder_combout\ = \lcd_line1[9][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[9][4]~q\,
	combout => \lcd_line1[8][4]~feeder_combout\);

-- Location: LCCOMB_X26_Y39_N28
\lcd_line0[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line0[4]~feeder_combout\ = \lcd_line1[0][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[0][4]~q\,
	combout => \lcd_line0[4]~feeder_combout\);

-- Location: LCCOMB_X27_Y39_N10
\lcd_line1[11][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[11][4]~feeder_combout\ = \lcd_line1[12][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[12][4]~q\,
	combout => \lcd_line1[11][4]~feeder_combout\);

-- Location: LCCOMB_X27_Y39_N12
\lcd_line1[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[6][4]~feeder_combout\ = \lcd_line1[7][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[7][4]~q\,
	combout => \lcd_line1[6][4]~feeder_combout\);

-- Location: LCCOMB_X23_Y38_N14
\lcd_line1[8][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[8][5]~feeder_combout\ = \lcd_line1[9][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[9][5]~q\,
	combout => \lcd_line1[8][5]~feeder_combout\);

-- Location: LCCOMB_X23_Y38_N22
\lcd_line1[10][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[10][5]~feeder_combout\ = \lcd_line1[11][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[11][5]~q\,
	combout => \lcd_line1[10][5]~feeder_combout\);

-- Location: LCCOMB_X23_Y38_N4
\lcd_line1[13][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[13][5]~feeder_combout\ = \lcd_line1[14][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[14][5]~q\,
	combout => \lcd_line1[13][5]~feeder_combout\);

-- Location: LCCOMB_X24_Y37_N4
\lcd_line1[8][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[8][6]~feeder_combout\ = \lcd_line1[9][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[9][6]~q\,
	combout => \lcd_line1[8][6]~feeder_combout\);

-- Location: LCCOMB_X24_Y38_N20
\lcd_line1[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[5][6]~feeder_combout\ = \lcd_line1[6][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[6][6]~q\,
	combout => \lcd_line1[5][6]~feeder_combout\);

-- Location: LCCOMB_X24_Y37_N8
\lcd_line1[13][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[13][6]~feeder_combout\ = \lcd_line1[14][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[14][6]~q\,
	combout => \lcd_line1[13][6]~feeder_combout\);

-- Location: LCCOMB_X24_Y37_N14
\lcd_line1[10][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[10][6]~feeder_combout\ = \lcd_line1[11][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[11][6]~q\,
	combout => \lcd_line1[10][6]~feeder_combout\);

-- Location: LCCOMB_X24_Y38_N14
\lcd_line1[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[6][6]~feeder_combout\ = \lcd_line1[7][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[7][6]~q\,
	combout => \lcd_line1[6][6]~feeder_combout\);

-- Location: LCCOMB_X24_Y41_N12
\lcd_line2[15][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[15][2]~feeder_combout\ = lcd_line0b(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => lcd_line0b(2),
	combout => \lcd_line2[15][2]~feeder_combout\);

-- Location: LCCOMB_X26_Y39_N18
\lcd_line1[15][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[15][4]~feeder_combout\ = lcd_line0(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => lcd_line0(4),
	combout => \lcd_line1[15][4]~feeder_combout\);

-- Location: LCCOMB_X24_Y40_N12
\lcd_line2[8][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[8][3]~feeder_combout\ = \lcd_line2[8][3]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[8][3]~23_combout\,
	combout => \lcd_line2[8][3]~feeder_combout\);

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(3),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(4),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(5),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(6),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(7),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\LCD_BLON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_BLON~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|e~q\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_ON~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|rs~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y37_N12
\clk_lcd_gen|prescaler~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|prescaler~7_combout\ = (\clk_lcd_gen|Add0~34_combout\ & !\clk_lcd_gen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|Add0~34_combout\,
	datad => \clk_lcd_gen|Equal0~8_combout\,
	combout => \clk_lcd_gen|prescaler~7_combout\);

-- Location: FF_X21_Y37_N13
\clk_lcd_gen|prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|prescaler~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(17));

-- Location: LCCOMB_X21_Y37_N16
\clk_lcd_gen|prescaler~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|prescaler~4_combout\ = (\clk_lcd_gen|Add0~28_combout\ & !\clk_lcd_gen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|Add0~28_combout\,
	datad => \clk_lcd_gen|Equal0~8_combout\,
	combout => \clk_lcd_gen|prescaler~4_combout\);

-- Location: FF_X21_Y37_N17
\clk_lcd_gen|prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|prescaler~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(14));

-- Location: LCCOMB_X20_Y38_N6
\clk_lcd_gen|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~0_combout\ = \clk_lcd_gen|prescaler\(0) $ (VCC)
-- \clk_lcd_gen|Add0~1\ = CARRY(\clk_lcd_gen|prescaler\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(0),
	datad => VCC,
	combout => \clk_lcd_gen|Add0~0_combout\,
	cout => \clk_lcd_gen|Add0~1\);

-- Location: LCCOMB_X20_Y38_N8
\clk_lcd_gen|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~2_combout\ = (\clk_lcd_gen|prescaler\(1) & (!\clk_lcd_gen|Add0~1\)) # (!\clk_lcd_gen|prescaler\(1) & ((\clk_lcd_gen|Add0~1\) # (GND)))
-- \clk_lcd_gen|Add0~3\ = CARRY((!\clk_lcd_gen|Add0~1\) # (!\clk_lcd_gen|prescaler\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|prescaler\(1),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~1\,
	combout => \clk_lcd_gen|Add0~2_combout\,
	cout => \clk_lcd_gen|Add0~3\);

-- Location: FF_X20_Y38_N9
\clk_lcd_gen|prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(1));

-- Location: LCCOMB_X20_Y38_N12
\clk_lcd_gen|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~6_combout\ = (\clk_lcd_gen|prescaler\(3) & (!\clk_lcd_gen|Add0~5\)) # (!\clk_lcd_gen|prescaler\(3) & ((\clk_lcd_gen|Add0~5\) # (GND)))
-- \clk_lcd_gen|Add0~7\ = CARRY((!\clk_lcd_gen|Add0~5\) # (!\clk_lcd_gen|prescaler\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(3),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~5\,
	combout => \clk_lcd_gen|Add0~6_combout\,
	cout => \clk_lcd_gen|Add0~7\);

-- Location: LCCOMB_X20_Y38_N16
\clk_lcd_gen|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~10_combout\ = (\clk_lcd_gen|prescaler\(5) & (!\clk_lcd_gen|Add0~9\)) # (!\clk_lcd_gen|prescaler\(5) & ((\clk_lcd_gen|Add0~9\) # (GND)))
-- \clk_lcd_gen|Add0~11\ = CARRY((!\clk_lcd_gen|Add0~9\) # (!\clk_lcd_gen|prescaler\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|prescaler\(5),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~9\,
	combout => \clk_lcd_gen|Add0~10_combout\,
	cout => \clk_lcd_gen|Add0~11\);

-- Location: FF_X20_Y38_N17
\clk_lcd_gen|prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(5));

-- Location: LCCOMB_X20_Y38_N18
\clk_lcd_gen|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~12_combout\ = (\clk_lcd_gen|prescaler\(6) & (\clk_lcd_gen|Add0~11\ $ (GND))) # (!\clk_lcd_gen|prescaler\(6) & (!\clk_lcd_gen|Add0~11\ & VCC))
-- \clk_lcd_gen|Add0~13\ = CARRY((\clk_lcd_gen|prescaler\(6) & !\clk_lcd_gen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|prescaler\(6),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~11\,
	combout => \clk_lcd_gen|Add0~12_combout\,
	cout => \clk_lcd_gen|Add0~13\);

-- Location: FF_X20_Y38_N19
\clk_lcd_gen|prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(6));

-- Location: LCCOMB_X20_Y38_N20
\clk_lcd_gen|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~14_combout\ = (\clk_lcd_gen|prescaler\(7) & (!\clk_lcd_gen|Add0~13\)) # (!\clk_lcd_gen|prescaler\(7) & ((\clk_lcd_gen|Add0~13\) # (GND)))
-- \clk_lcd_gen|Add0~15\ = CARRY((!\clk_lcd_gen|Add0~13\) # (!\clk_lcd_gen|prescaler\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|prescaler\(7),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~13\,
	combout => \clk_lcd_gen|Add0~14_combout\,
	cout => \clk_lcd_gen|Add0~15\);

-- Location: LCCOMB_X21_Y38_N26
\clk_lcd_gen|prescaler~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|prescaler~2_combout\ = (\clk_lcd_gen|Add0~14_combout\ & !\clk_lcd_gen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|Add0~14_combout\,
	datad => \clk_lcd_gen|Equal0~8_combout\,
	combout => \clk_lcd_gen|prescaler~2_combout\);

-- Location: FF_X21_Y38_N27
\clk_lcd_gen|prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|prescaler~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(7));

-- Location: LCCOMB_X20_Y38_N24
\clk_lcd_gen|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~18_combout\ = (\clk_lcd_gen|prescaler\(9) & (!\clk_lcd_gen|Add0~17\)) # (!\clk_lcd_gen|prescaler\(9) & ((\clk_lcd_gen|Add0~17\) # (GND)))
-- \clk_lcd_gen|Add0~19\ = CARRY((!\clk_lcd_gen|Add0~17\) # (!\clk_lcd_gen|prescaler\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|prescaler\(9),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~17\,
	combout => \clk_lcd_gen|Add0~18_combout\,
	cout => \clk_lcd_gen|Add0~19\);

-- Location: FF_X20_Y38_N25
\clk_lcd_gen|prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(9));

-- Location: LCCOMB_X20_Y38_N26
\clk_lcd_gen|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~20_combout\ = (\clk_lcd_gen|prescaler\(10) & (\clk_lcd_gen|Add0~19\ $ (GND))) # (!\clk_lcd_gen|prescaler\(10) & (!\clk_lcd_gen|Add0~19\ & VCC))
-- \clk_lcd_gen|Add0~21\ = CARRY((\clk_lcd_gen|prescaler\(10) & !\clk_lcd_gen|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(10),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~19\,
	combout => \clk_lcd_gen|Add0~20_combout\,
	cout => \clk_lcd_gen|Add0~21\);

-- Location: LCCOMB_X20_Y38_N28
\clk_lcd_gen|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~22_combout\ = (\clk_lcd_gen|prescaler\(11) & (!\clk_lcd_gen|Add0~21\)) # (!\clk_lcd_gen|prescaler\(11) & ((\clk_lcd_gen|Add0~21\) # (GND)))
-- \clk_lcd_gen|Add0~23\ = CARRY((!\clk_lcd_gen|Add0~21\) # (!\clk_lcd_gen|prescaler\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|prescaler\(11),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~21\,
	combout => \clk_lcd_gen|Add0~22_combout\,
	cout => \clk_lcd_gen|Add0~23\);

-- Location: FF_X20_Y38_N29
\clk_lcd_gen|prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(11));

-- Location: LCCOMB_X20_Y38_N30
\clk_lcd_gen|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~24_combout\ = (\clk_lcd_gen|prescaler\(12) & (\clk_lcd_gen|Add0~23\ $ (GND))) # (!\clk_lcd_gen|prescaler\(12) & (!\clk_lcd_gen|Add0~23\ & VCC))
-- \clk_lcd_gen|Add0~25\ = CARRY((\clk_lcd_gen|prescaler\(12) & !\clk_lcd_gen|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(12),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~23\,
	combout => \clk_lcd_gen|Add0~24_combout\,
	cout => \clk_lcd_gen|Add0~25\);

-- Location: LCCOMB_X20_Y37_N0
\clk_lcd_gen|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~26_combout\ = (\clk_lcd_gen|prescaler\(13) & (!\clk_lcd_gen|Add0~25\)) # (!\clk_lcd_gen|prescaler\(13) & ((\clk_lcd_gen|Add0~25\) # (GND)))
-- \clk_lcd_gen|Add0~27\ = CARRY((!\clk_lcd_gen|Add0~25\) # (!\clk_lcd_gen|prescaler\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|prescaler\(13),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~25\,
	combout => \clk_lcd_gen|Add0~26_combout\,
	cout => \clk_lcd_gen|Add0~27\);

-- Location: FF_X20_Y37_N1
\clk_lcd_gen|prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(13));

-- Location: LCCOMB_X20_Y37_N6
\clk_lcd_gen|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~32_combout\ = (\clk_lcd_gen|prescaler\(16) & (\clk_lcd_gen|Add0~31\ $ (GND))) # (!\clk_lcd_gen|prescaler\(16) & (!\clk_lcd_gen|Add0~31\ & VCC))
-- \clk_lcd_gen|Add0~33\ = CARRY((\clk_lcd_gen|prescaler\(16) & !\clk_lcd_gen|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(16),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~31\,
	combout => \clk_lcd_gen|Add0~32_combout\,
	cout => \clk_lcd_gen|Add0~33\);

-- Location: LCCOMB_X20_Y37_N12
\clk_lcd_gen|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~38_combout\ = (\clk_lcd_gen|prescaler\(19) & (!\clk_lcd_gen|Add0~37\)) # (!\clk_lcd_gen|prescaler\(19) & ((\clk_lcd_gen|Add0~37\) # (GND)))
-- \clk_lcd_gen|Add0~39\ = CARRY((!\clk_lcd_gen|Add0~37\) # (!\clk_lcd_gen|prescaler\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(19),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~37\,
	combout => \clk_lcd_gen|Add0~38_combout\,
	cout => \clk_lcd_gen|Add0~39\);

-- Location: LCCOMB_X20_Y37_N14
\clk_lcd_gen|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~40_combout\ = (\clk_lcd_gen|prescaler\(20) & (\clk_lcd_gen|Add0~39\ $ (GND))) # (!\clk_lcd_gen|prescaler\(20) & (!\clk_lcd_gen|Add0~39\ & VCC))
-- \clk_lcd_gen|Add0~41\ = CARRY((\clk_lcd_gen|prescaler\(20) & !\clk_lcd_gen|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|prescaler\(20),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~39\,
	combout => \clk_lcd_gen|Add0~40_combout\,
	cout => \clk_lcd_gen|Add0~41\);

-- Location: FF_X20_Y37_N15
\clk_lcd_gen|prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(20));

-- Location: LCCOMB_X20_Y37_N16
\clk_lcd_gen|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Add0~42_combout\ = (\clk_lcd_gen|prescaler\(21) & (!\clk_lcd_gen|Add0~41\)) # (!\clk_lcd_gen|prescaler\(21) & ((\clk_lcd_gen|Add0~41\) # (GND)))
-- \clk_lcd_gen|Add0~43\ = CARRY((!\clk_lcd_gen|Add0~41\) # (!\clk_lcd_gen|prescaler\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_lcd_gen|prescaler\(21),
	datad => VCC,
	cin => \clk_lcd_gen|Add0~41\,
	combout => \clk_lcd_gen|Add0~42_combout\,
	cout => \clk_lcd_gen|Add0~43\);

-- Location: FF_X20_Y37_N17
\clk_lcd_gen|prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(21));

-- Location: FF_X20_Y37_N19
\clk_lcd_gen|prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(22));

-- Location: LCCOMB_X20_Y37_N28
\clk_lcd_gen|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Equal0~6_combout\ = (!\clk_lcd_gen|prescaler\(23) & (!\clk_lcd_gen|prescaler\(22) & (!\clk_lcd_gen|prescaler\(20) & !\clk_lcd_gen|prescaler\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(23),
	datab => \clk_lcd_gen|prescaler\(22),
	datac => \clk_lcd_gen|prescaler\(20),
	datad => \clk_lcd_gen|prescaler\(21),
	combout => \clk_lcd_gen|Equal0~6_combout\);

-- Location: FF_X20_Y38_N13
\clk_lcd_gen|prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(3));

-- Location: LCCOMB_X21_Y38_N6
\clk_lcd_gen|prescaler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|prescaler~0_combout\ = (\clk_lcd_gen|Add0~0_combout\ & !\clk_lcd_gen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_lcd_gen|Add0~0_combout\,
	datad => \clk_lcd_gen|Equal0~8_combout\,
	combout => \clk_lcd_gen|prescaler~0_combout\);

-- Location: FF_X21_Y38_N7
\clk_lcd_gen|prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|prescaler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(0));

-- Location: LCCOMB_X20_Y38_N4
\clk_lcd_gen|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Equal0~0_combout\ = (!\clk_lcd_gen|prescaler\(2) & (!\clk_lcd_gen|prescaler\(3) & (!\clk_lcd_gen|prescaler\(1) & !\clk_lcd_gen|prescaler\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(2),
	datab => \clk_lcd_gen|prescaler\(3),
	datac => \clk_lcd_gen|prescaler\(1),
	datad => \clk_lcd_gen|prescaler\(0),
	combout => \clk_lcd_gen|Equal0~0_combout\);

-- Location: FF_X20_Y38_N27
\clk_lcd_gen|prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(10));

-- Location: LCCOMB_X20_Y38_N0
\clk_lcd_gen|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Equal0~2_combout\ = (!\clk_lcd_gen|prescaler\(8) & (!\clk_lcd_gen|prescaler\(11) & (!\clk_lcd_gen|prescaler\(10) & !\clk_lcd_gen|prescaler\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(8),
	datab => \clk_lcd_gen|prescaler\(11),
	datac => \clk_lcd_gen|prescaler\(10),
	datad => \clk_lcd_gen|prescaler\(9),
	combout => \clk_lcd_gen|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y38_N20
\clk_lcd_gen|prescaler~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|prescaler~3_combout\ = (\clk_lcd_gen|Add0~24_combout\ & !\clk_lcd_gen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_lcd_gen|Add0~24_combout\,
	datad => \clk_lcd_gen|Equal0~8_combout\,
	combout => \clk_lcd_gen|prescaler~3_combout\);

-- Location: FF_X21_Y38_N21
\clk_lcd_gen|prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|prescaler~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(12));

-- Location: LCCOMB_X21_Y37_N0
\clk_lcd_gen|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Equal0~3_combout\ = (\clk_lcd_gen|prescaler\(15) & (\clk_lcd_gen|prescaler\(14) & (!\clk_lcd_gen|prescaler\(13) & \clk_lcd_gen|prescaler\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(15),
	datab => \clk_lcd_gen|prescaler\(14),
	datac => \clk_lcd_gen|prescaler\(13),
	datad => \clk_lcd_gen|prescaler\(12),
	combout => \clk_lcd_gen|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y38_N30
\clk_lcd_gen|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Equal0~4_combout\ = (\clk_lcd_gen|Equal0~1_combout\ & (\clk_lcd_gen|Equal0~0_combout\ & (\clk_lcd_gen|Equal0~2_combout\ & \clk_lcd_gen|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|Equal0~1_combout\,
	datab => \clk_lcd_gen|Equal0~0_combout\,
	datac => \clk_lcd_gen|Equal0~2_combout\,
	datad => \clk_lcd_gen|Equal0~3_combout\,
	combout => \clk_lcd_gen|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y37_N30
\clk_lcd_gen|prescaler~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|prescaler~6_combout\ = (\clk_lcd_gen|Add0~32_combout\ & !\clk_lcd_gen|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_lcd_gen|Add0~32_combout\,
	datad => \clk_lcd_gen|Equal0~8_combout\,
	combout => \clk_lcd_gen|prescaler~6_combout\);

-- Location: FF_X21_Y37_N31
\clk_lcd_gen|prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|prescaler~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(16));

-- Location: FF_X20_Y37_N13
\clk_lcd_gen|prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|prescaler\(19));

-- Location: LCCOMB_X20_Y37_N30
\clk_lcd_gen|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Equal0~5_combout\ = (!\clk_lcd_gen|prescaler\(18) & (\clk_lcd_gen|prescaler\(17) & (\clk_lcd_gen|prescaler\(16) & !\clk_lcd_gen|prescaler\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|prescaler\(18),
	datab => \clk_lcd_gen|prescaler\(17),
	datac => \clk_lcd_gen|prescaler\(16),
	datad => \clk_lcd_gen|prescaler\(19),
	combout => \clk_lcd_gen|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y37_N2
\clk_lcd_gen|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|Equal0~8_combout\ = (\clk_lcd_gen|Equal0~7_combout\ & (\clk_lcd_gen|Equal0~6_combout\ & (\clk_lcd_gen|Equal0~4_combout\ & \clk_lcd_gen|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|Equal0~7_combout\,
	datab => \clk_lcd_gen|Equal0~6_combout\,
	datac => \clk_lcd_gen|Equal0~4_combout\,
	datad => \clk_lcd_gen|Equal0~5_combout\,
	combout => \clk_lcd_gen|Equal0~8_combout\);

-- Location: LCCOMB_X21_Y38_N22
\clk_lcd_gen|pre_Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_lcd_gen|pre_Q~feeder_combout\ = \clk_lcd_gen|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_lcd_gen|Equal0~8_combout\,
	combout => \clk_lcd_gen|pre_Q~feeder_combout\);

-- Location: FF_X21_Y38_N23
\clk_lcd_gen|pre_Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk_lcd_gen|pre_Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_lcd_gen|pre_Q~q\);

-- Location: LCCOMB_X21_Y38_N0
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\dut|busy~q\ & (\clk_lcd_gen|pre_Q~q\ & !\lcd_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~q\,
	datac => \clk_lcd_gen|pre_Q~q\,
	datad => \lcd_enable~q\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X21_Y38_N12
\lcd_enable~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_enable~feeder_combout\ = \process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \process_0~0_combout\,
	combout => \lcd_enable~feeder_combout\);

-- Location: FF_X21_Y38_N13
lcd_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_enable~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_enable~q\);

-- Location: LCCOMB_X18_Y40_N26
\dut|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~58_combout\ = (\dut|clk_count\(29) & (!\dut|Add0~57\)) # (!\dut|clk_count\(29) & ((\dut|Add0~57\) # (GND)))
-- \dut|Add0~59\ = CARRY((!\dut|Add0~57\) # (!\dut|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(29),
	datad => VCC,
	cin => \dut|Add0~57\,
	combout => \dut|Add0~58_combout\,
	cout => \dut|Add0~59\);

-- Location: LCCOMB_X18_Y39_N24
\dut|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector5~0_combout\ = (\dut|Add0~54_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~54_combout\,
	datac => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector5~0_combout\);

-- Location: FF_X18_Y39_N25
\dut|clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(27));

-- Location: LCCOMB_X19_Y41_N8
\dut|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector27~0_combout\ = (\dut|Add0~10_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~10_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector27~0_combout\);

-- Location: FF_X19_Y41_N9
\dut|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(5));

-- Location: LCCOMB_X19_Y41_N10
\dut|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector28~0_combout\ = (\dut|Add0~8_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~8_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector28~0_combout\);

-- Location: FF_X19_Y41_N11
\dut|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(4));

-- Location: LCCOMB_X18_Y41_N0
\dut|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~0_combout\ = \dut|clk_count\(0) $ (VCC)
-- \dut|Add0~1\ = CARRY(\dut|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(0),
	datad => VCC,
	combout => \dut|Add0~0_combout\,
	cout => \dut|Add0~1\);

-- Location: LCCOMB_X19_Y41_N0
\dut|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector32~0_combout\ = (\dut|Add0~0_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~0_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector32~0_combout\);

-- Location: FF_X19_Y41_N1
\dut|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(0));

-- Location: LCCOMB_X18_Y41_N2
\dut|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~2_combout\ = (\dut|clk_count\(1) & (!\dut|Add0~1\)) # (!\dut|clk_count\(1) & ((\dut|Add0~1\) # (GND)))
-- \dut|Add0~3\ = CARRY((!\dut|Add0~1\) # (!\dut|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(1),
	datad => VCC,
	cin => \dut|Add0~1\,
	combout => \dut|Add0~2_combout\,
	cout => \dut|Add0~3\);

-- Location: LCCOMB_X18_Y39_N16
\dut|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector31~0_combout\ = (!\dut|clk_count[17]~5_combout\ & \dut|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_count[17]~5_combout\,
	datad => \dut|Add0~2_combout\,
	combout => \dut|Selector31~0_combout\);

-- Location: FF_X18_Y39_N17
\dut|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(1));

-- Location: LCCOMB_X18_Y41_N4
\dut|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~4_combout\ = (\dut|clk_count\(2) & (\dut|Add0~3\ $ (GND))) # (!\dut|clk_count\(2) & (!\dut|Add0~3\ & VCC))
-- \dut|Add0~5\ = CARRY((\dut|clk_count\(2) & !\dut|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(2),
	datad => VCC,
	cin => \dut|Add0~3\,
	combout => \dut|Add0~4_combout\,
	cout => \dut|Add0~5\);

-- Location: LCCOMB_X19_Y41_N16
\dut|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector30~0_combout\ = (\dut|Add0~4_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~4_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector30~0_combout\);

-- Location: FF_X19_Y41_N17
\dut|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(2));

-- Location: LCCOMB_X18_Y41_N6
\dut|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~6_combout\ = (\dut|clk_count\(3) & (!\dut|Add0~5\)) # (!\dut|clk_count\(3) & ((\dut|Add0~5\) # (GND)))
-- \dut|Add0~7\ = CARRY((!\dut|Add0~5\) # (!\dut|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(3),
	datad => VCC,
	cin => \dut|Add0~5\,
	combout => \dut|Add0~6_combout\,
	cout => \dut|Add0~7\);

-- Location: LCCOMB_X19_Y41_N24
\dut|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector29~0_combout\ = (\dut|Add0~6_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~6_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector29~0_combout\);

-- Location: FF_X19_Y41_N25
\dut|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(3));

-- Location: LCCOMB_X18_Y41_N8
\dut|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~8_combout\ = (\dut|clk_count\(4) & (\dut|Add0~7\ $ (GND))) # (!\dut|clk_count\(4) & (!\dut|Add0~7\ & VCC))
-- \dut|Add0~9\ = CARRY((\dut|clk_count\(4) & !\dut|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(4),
	datad => VCC,
	cin => \dut|Add0~7\,
	combout => \dut|Add0~8_combout\,
	cout => \dut|Add0~9\);

-- Location: LCCOMB_X18_Y41_N10
\dut|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~10_combout\ = (\dut|clk_count\(5) & (!\dut|Add0~9\)) # (!\dut|clk_count\(5) & ((\dut|Add0~9\) # (GND)))
-- \dut|Add0~11\ = CARRY((!\dut|Add0~9\) # (!\dut|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(5),
	datad => VCC,
	cin => \dut|Add0~9\,
	combout => \dut|Add0~10_combout\,
	cout => \dut|Add0~11\);

-- Location: LCCOMB_X18_Y41_N12
\dut|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~12_combout\ = (\dut|clk_count\(6) & (\dut|Add0~11\ $ (GND))) # (!\dut|clk_count\(6) & (!\dut|Add0~11\ & VCC))
-- \dut|Add0~13\ = CARRY((\dut|clk_count\(6) & !\dut|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(6),
	datad => VCC,
	cin => \dut|Add0~11\,
	combout => \dut|Add0~12_combout\,
	cout => \dut|Add0~13\);

-- Location: LCCOMB_X18_Y41_N14
\dut|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~14_combout\ = (\dut|clk_count\(7) & (!\dut|Add0~13\)) # (!\dut|clk_count\(7) & ((\dut|Add0~13\) # (GND)))
-- \dut|Add0~15\ = CARRY((!\dut|Add0~13\) # (!\dut|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(7),
	datad => VCC,
	cin => \dut|Add0~13\,
	combout => \dut|Add0~14_combout\,
	cout => \dut|Add0~15\);

-- Location: LCCOMB_X18_Y41_N16
\dut|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~16_combout\ = (\dut|clk_count\(8) & (\dut|Add0~15\ $ (GND))) # (!\dut|clk_count\(8) & (!\dut|Add0~15\ & VCC))
-- \dut|Add0~17\ = CARRY((\dut|clk_count\(8) & !\dut|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(8),
	datad => VCC,
	cin => \dut|Add0~15\,
	combout => \dut|Add0~16_combout\,
	cout => \dut|Add0~17\);

-- Location: LCCOMB_X18_Y41_N18
\dut|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~18_combout\ = (\dut|clk_count\(9) & (!\dut|Add0~17\)) # (!\dut|clk_count\(9) & ((\dut|Add0~17\) # (GND)))
-- \dut|Add0~19\ = CARRY((!\dut|Add0~17\) # (!\dut|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(9),
	datad => VCC,
	cin => \dut|Add0~17\,
	combout => \dut|Add0~18_combout\,
	cout => \dut|Add0~19\);

-- Location: LCCOMB_X19_Y41_N12
\dut|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector23~0_combout\ = (\dut|Add0~18_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~18_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector23~0_combout\);

-- Location: FF_X19_Y41_N13
\dut|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(9));

-- Location: LCCOMB_X18_Y41_N20
\dut|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~20_combout\ = (\dut|clk_count\(10) & (\dut|Add0~19\ $ (GND))) # (!\dut|clk_count\(10) & (!\dut|Add0~19\ & VCC))
-- \dut|Add0~21\ = CARRY((\dut|clk_count\(10) & !\dut|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(10),
	datad => VCC,
	cin => \dut|Add0~19\,
	combout => \dut|Add0~20_combout\,
	cout => \dut|Add0~21\);

-- Location: LCCOMB_X19_Y41_N18
\dut|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector22~0_combout\ = (\dut|Add0~20_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~20_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector22~0_combout\);

-- Location: FF_X19_Y41_N19
\dut|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(10));

-- Location: LCCOMB_X18_Y41_N22
\dut|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~22_combout\ = (\dut|clk_count\(11) & (!\dut|Add0~21\)) # (!\dut|clk_count\(11) & ((\dut|Add0~21\) # (GND)))
-- \dut|Add0~23\ = CARRY((!\dut|Add0~21\) # (!\dut|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(11),
	datad => VCC,
	cin => \dut|Add0~21\,
	combout => \dut|Add0~22_combout\,
	cout => \dut|Add0~23\);

-- Location: LCCOMB_X18_Y41_N24
\dut|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~24_combout\ = (\dut|clk_count\(12) & (\dut|Add0~23\ $ (GND))) # (!\dut|clk_count\(12) & (!\dut|Add0~23\ & VCC))
-- \dut|Add0~25\ = CARRY((\dut|clk_count\(12) & !\dut|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(12),
	datad => VCC,
	cin => \dut|Add0~23\,
	combout => \dut|Add0~24_combout\,
	cout => \dut|Add0~25\);

-- Location: LCCOMB_X18_Y41_N26
\dut|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~26_combout\ = (\dut|clk_count\(13) & (!\dut|Add0~25\)) # (!\dut|clk_count\(13) & ((\dut|Add0~25\) # (GND)))
-- \dut|Add0~27\ = CARRY((!\dut|Add0~25\) # (!\dut|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(13),
	datad => VCC,
	cin => \dut|Add0~25\,
	combout => \dut|Add0~26_combout\,
	cout => \dut|Add0~27\);

-- Location: LCCOMB_X18_Y41_N28
\dut|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~28_combout\ = (\dut|clk_count\(14) & (\dut|Add0~27\ $ (GND))) # (!\dut|clk_count\(14) & (!\dut|Add0~27\ & VCC))
-- \dut|Add0~29\ = CARRY((\dut|clk_count\(14) & !\dut|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(14),
	datad => VCC,
	cin => \dut|Add0~27\,
	combout => \dut|Add0~28_combout\,
	cout => \dut|Add0~29\);

-- Location: LCCOMB_X18_Y41_N30
\dut|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~30_combout\ = (\dut|clk_count\(15) & (!\dut|Add0~29\)) # (!\dut|clk_count\(15) & ((\dut|Add0~29\) # (GND)))
-- \dut|Add0~31\ = CARRY((!\dut|Add0~29\) # (!\dut|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(15),
	datad => VCC,
	cin => \dut|Add0~29\,
	combout => \dut|Add0~30_combout\,
	cout => \dut|Add0~31\);

-- Location: LCCOMB_X18_Y40_N0
\dut|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~32_combout\ = (\dut|clk_count\(16) & (\dut|Add0~31\ $ (GND))) # (!\dut|clk_count\(16) & (!\dut|Add0~31\ & VCC))
-- \dut|Add0~33\ = CARRY((\dut|clk_count\(16) & !\dut|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(16),
	datad => VCC,
	cin => \dut|Add0~31\,
	combout => \dut|Add0~32_combout\,
	cout => \dut|Add0~33\);

-- Location: LCCOMB_X18_Y40_N2
\dut|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~34_combout\ = (\dut|clk_count\(17) & (!\dut|Add0~33\)) # (!\dut|clk_count\(17) & ((\dut|Add0~33\) # (GND)))
-- \dut|Add0~35\ = CARRY((!\dut|Add0~33\) # (!\dut|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(17),
	datad => VCC,
	cin => \dut|Add0~33\,
	combout => \dut|Add0~34_combout\,
	cout => \dut|Add0~35\);

-- Location: LCCOMB_X19_Y39_N10
\dut|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector15~0_combout\ = (\dut|Add0~34_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~34_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector15~0_combout\);

-- Location: FF_X19_Y39_N11
\dut|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(17));

-- Location: LCCOMB_X18_Y40_N4
\dut|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~36_combout\ = (\dut|clk_count\(18) & (\dut|Add0~35\ $ (GND))) # (!\dut|clk_count\(18) & (!\dut|Add0~35\ & VCC))
-- \dut|Add0~37\ = CARRY((\dut|clk_count\(18) & !\dut|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(18),
	datad => VCC,
	cin => \dut|Add0~35\,
	combout => \dut|Add0~36_combout\,
	cout => \dut|Add0~37\);

-- Location: LCCOMB_X19_Y39_N4
\dut|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector14~0_combout\ = (\dut|Add0~36_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~36_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector14~0_combout\);

-- Location: FF_X19_Y39_N5
\dut|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(18));

-- Location: LCCOMB_X18_Y40_N6
\dut|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~38_combout\ = (\dut|clk_count\(19) & (!\dut|Add0~37\)) # (!\dut|clk_count\(19) & ((\dut|Add0~37\) # (GND)))
-- \dut|Add0~39\ = CARRY((!\dut|Add0~37\) # (!\dut|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(19),
	datad => VCC,
	cin => \dut|Add0~37\,
	combout => \dut|Add0~38_combout\,
	cout => \dut|Add0~39\);

-- Location: LCCOMB_X18_Y40_N8
\dut|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~40_combout\ = (\dut|clk_count\(20) & (\dut|Add0~39\ $ (GND))) # (!\dut|clk_count\(20) & (!\dut|Add0~39\ & VCC))
-- \dut|Add0~41\ = CARRY((\dut|clk_count\(20) & !\dut|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(20),
	datad => VCC,
	cin => \dut|Add0~39\,
	combout => \dut|Add0~40_combout\,
	cout => \dut|Add0~41\);

-- Location: LCCOMB_X19_Y39_N0
\dut|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector12~0_combout\ = (\dut|Add0~40_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~40_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector12~0_combout\);

-- Location: FF_X19_Y39_N1
\dut|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(20));

-- Location: LCCOMB_X18_Y40_N12
\dut|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~44_combout\ = (\dut|clk_count\(22) & (\dut|Add0~43\ $ (GND))) # (!\dut|clk_count\(22) & (!\dut|Add0~43\ & VCC))
-- \dut|Add0~45\ = CARRY((\dut|clk_count\(22) & !\dut|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(22),
	datad => VCC,
	cin => \dut|Add0~43\,
	combout => \dut|Add0~44_combout\,
	cout => \dut|Add0~45\);

-- Location: LCCOMB_X18_Y40_N14
\dut|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~46_combout\ = (\dut|clk_count\(23) & (!\dut|Add0~45\)) # (!\dut|clk_count\(23) & ((\dut|Add0~45\) # (GND)))
-- \dut|Add0~47\ = CARRY((!\dut|Add0~45\) # (!\dut|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(23),
	datad => VCC,
	cin => \dut|Add0~45\,
	combout => \dut|Add0~46_combout\,
	cout => \dut|Add0~47\);

-- Location: LCCOMB_X18_Y40_N16
\dut|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~48_combout\ = (\dut|clk_count\(24) & (\dut|Add0~47\ $ (GND))) # (!\dut|clk_count\(24) & (!\dut|Add0~47\ & VCC))
-- \dut|Add0~49\ = CARRY((\dut|clk_count\(24) & !\dut|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(24),
	datad => VCC,
	cin => \dut|Add0~47\,
	combout => \dut|Add0~48_combout\,
	cout => \dut|Add0~49\);

-- Location: LCCOMB_X18_Y40_N18
\dut|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~50_combout\ = (\dut|clk_count\(25) & (!\dut|Add0~49\)) # (!\dut|clk_count\(25) & ((\dut|Add0~49\) # (GND)))
-- \dut|Add0~51\ = CARRY((!\dut|Add0~49\) # (!\dut|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(25),
	datad => VCC,
	cin => \dut|Add0~49\,
	combout => \dut|Add0~50_combout\,
	cout => \dut|Add0~51\);

-- Location: LCCOMB_X18_Y40_N20
\dut|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~52_combout\ = (\dut|clk_count\(26) & (\dut|Add0~51\ $ (GND))) # (!\dut|clk_count\(26) & (!\dut|Add0~51\ & VCC))
-- \dut|Add0~53\ = CARRY((\dut|clk_count\(26) & !\dut|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(26),
	datad => VCC,
	cin => \dut|Add0~51\,
	combout => \dut|Add0~52_combout\,
	cout => \dut|Add0~53\);

-- Location: LCCOMB_X18_Y39_N18
\dut|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector6~0_combout\ = (\dut|Add0~52_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~52_combout\,
	datac => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector6~0_combout\);

-- Location: FF_X18_Y39_N19
\dut|clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(26));

-- Location: LCCOMB_X18_Y40_N22
\dut|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~54_combout\ = (\dut|clk_count\(27) & (!\dut|Add0~53\)) # (!\dut|clk_count\(27) & ((\dut|Add0~53\) # (GND)))
-- \dut|Add0~55\ = CARRY((!\dut|Add0~53\) # (!\dut|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(27),
	datad => VCC,
	cin => \dut|Add0~53\,
	combout => \dut|Add0~54_combout\,
	cout => \dut|Add0~55\);

-- Location: LCCOMB_X18_Y40_N24
\dut|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~56_combout\ = (\dut|clk_count\(28) & (\dut|Add0~55\ $ (GND))) # (!\dut|clk_count\(28) & (!\dut|Add0~55\ & VCC))
-- \dut|Add0~57\ = CARRY((\dut|clk_count\(28) & !\dut|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(28),
	datad => VCC,
	cin => \dut|Add0~55\,
	combout => \dut|Add0~56_combout\,
	cout => \dut|Add0~57\);

-- Location: LCCOMB_X17_Y40_N30
\dut|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~1_combout\ = (!\dut|Add0~42_combout\ & (!\dut|Add0~46_combout\ & (!\dut|Add0~44_combout\ & !\dut|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~42_combout\,
	datab => \dut|Add0~46_combout\,
	datac => \dut|Add0~44_combout\,
	datad => \dut|Add0~48_combout\,
	combout => \dut|LessThan8~1_combout\);

-- Location: LCCOMB_X17_Y40_N28
\dut|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~0_combout\ = (!\dut|Add0~38_combout\ & (!\dut|Add0~40_combout\ & (!\dut|Add0~34_combout\ & !\dut|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~38_combout\,
	datab => \dut|Add0~40_combout\,
	datac => \dut|Add0~34_combout\,
	datad => \dut|Add0~36_combout\,
	combout => \dut|LessThan8~0_combout\);

-- Location: LCCOMB_X17_Y40_N20
\dut|busy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|busy~4_combout\ = (!\dut|Add0~52_combout\ & (!\dut|Add0~50_combout\ & (\dut|LessThan8~1_combout\ & \dut|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~52_combout\,
	datab => \dut|Add0~50_combout\,
	datac => \dut|LessThan8~1_combout\,
	datad => \dut|LessThan8~0_combout\,
	combout => \dut|busy~4_combout\);

-- Location: LCCOMB_X17_Y40_N14
\dut|busy~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|busy~5_combout\ = (!\dut|Add0~54_combout\ & (!\dut|Add0~58_combout\ & (!\dut|Add0~56_combout\ & \dut|busy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~54_combout\,
	datab => \dut|Add0~58_combout\,
	datac => \dut|Add0~56_combout\,
	datad => \dut|busy~4_combout\,
	combout => \dut|busy~5_combout\);

-- Location: LCCOMB_X17_Y41_N30
\dut|LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~2_combout\ = (\dut|Add0~8_combout\ & \dut|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~8_combout\,
	datac => \dut|Add0~10_combout\,
	combout => \dut|LessThan8~2_combout\);

-- Location: LCCOMB_X17_Y41_N28
\dut|LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~4_combout\ = (\dut|Add0~14_combout\ & \dut|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~14_combout\,
	datad => \dut|Add0~16_combout\,
	combout => \dut|LessThan8~4_combout\);

-- Location: LCCOMB_X17_Y41_N14
\dut|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~1_combout\ = (((!\dut|LessThan8~4_combout\) # (!\dut|LessThan8~2_combout\)) # (!\dut|Add0~12_combout\)) # (!\dut|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~6_combout\,
	datab => \dut|Add0~12_combout\,
	datac => \dut|LessThan8~2_combout\,
	datad => \dut|LessThan8~4_combout\,
	combout => \dut|LessThan7~1_combout\);

-- Location: LCCOMB_X17_Y41_N12
\dut|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan1~0_combout\ = (!\dut|Add0~20_combout\ & (!\dut|Add0~18_combout\ & (!\dut|Add0~22_combout\ & !\dut|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~20_combout\,
	datab => \dut|Add0~18_combout\,
	datac => \dut|Add0~22_combout\,
	datad => \dut|Add0~24_combout\,
	combout => \dut|LessThan1~0_combout\);

-- Location: LCCOMB_X17_Y41_N24
\dut|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~2_combout\ = (!\dut|Add0~28_combout\ & (((\dut|LessThan7~1_combout\ & \dut|LessThan1~0_combout\)) # (!\dut|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~26_combout\,
	datab => \dut|Add0~28_combout\,
	datac => \dut|LessThan7~1_combout\,
	datad => \dut|LessThan1~0_combout\,
	combout => \dut|LessThan7~2_combout\);

-- Location: LCCOMB_X17_Y41_N16
\dut|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan6~0_combout\ = (!\dut|Add0~6_combout\ & (!\dut|Add0~8_combout\ & (!\dut|Add0~10_combout\ & !\dut|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~6_combout\,
	datab => \dut|Add0~8_combout\,
	datac => \dut|Add0~10_combout\,
	datad => \dut|Add0~4_combout\,
	combout => \dut|LessThan6~0_combout\);

-- Location: LCCOMB_X17_Y41_N26
\dut|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan6~1_combout\ = (!\dut|Add0~14_combout\ & (!\dut|Add0~16_combout\ & (!\dut|Add0~12_combout\ & \dut|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~14_combout\,
	datab => \dut|Add0~16_combout\,
	datac => \dut|Add0~12_combout\,
	datad => \dut|LessThan6~0_combout\,
	combout => \dut|LessThan6~1_combout\);

-- Location: LCCOMB_X17_Y41_N18
\dut|LessThan8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~5_combout\ = (\dut|Add0~30_combout\ & (\dut|Add0~32_combout\ & ((\dut|Add0~28_combout\) # (\dut|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~30_combout\,
	datab => \dut|Add0~28_combout\,
	datac => \dut|Add0~26_combout\,
	datad => \dut|Add0~32_combout\,
	combout => \dut|LessThan8~5_combout\);

-- Location: LCCOMB_X17_Y41_N8
\dut|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan6~2_combout\ = (\dut|LessThan8~5_combout\ & (((\dut|Add0~28_combout\) # (!\dut|LessThan6~1_combout\)) # (!\dut|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan1~0_combout\,
	datab => \dut|Add0~28_combout\,
	datac => \dut|LessThan6~1_combout\,
	datad => \dut|LessThan8~5_combout\,
	combout => \dut|LessThan6~2_combout\);

-- Location: LCCOMB_X17_Y40_N0
\dut|clk_count[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|clk_count[17]~3_combout\ = (\dut|LessThan7~2_combout\) # (!\dut|LessThan6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|LessThan7~2_combout\,
	datad => \dut|LessThan6~2_combout\,
	combout => \dut|clk_count[17]~3_combout\);

-- Location: LCCOMB_X17_Y40_N6
\dut|clk_count[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|clk_count[17]~4_combout\ = (\dut|state.initialize~q\ & (!\dut|Add0~60_combout\ & (\dut|busy~5_combout\ & \dut|clk_count[17]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.initialize~q\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|busy~5_combout\,
	datad => \dut|clk_count[17]~3_combout\,
	combout => \dut|clk_count[17]~4_combout\);

-- Location: LCCOMB_X18_Y39_N28
\dut|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector10~0_combout\ = (\dut|Add0~44_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~44_combout\,
	datac => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector10~0_combout\);

-- Location: FF_X18_Y39_N29
\dut|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(22));

-- Location: LCCOMB_X18_Y39_N30
\dut|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector9~0_combout\ = (\dut|Add0~46_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~46_combout\,
	datac => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector9~0_combout\);

-- Location: FF_X18_Y39_N31
\dut|clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(23));

-- Location: LCCOMB_X18_Y39_N12
\dut|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector8~0_combout\ = (!\dut|clk_count[17]~5_combout\ & \dut|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_count[17]~5_combout\,
	datad => \dut|Add0~48_combout\,
	combout => \dut|Selector8~0_combout\);

-- Location: FF_X18_Y39_N13
\dut|clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(24));

-- Location: LCCOMB_X18_Y39_N0
\dut|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~0_combout\ = (!\dut|clk_count\(25) & (!\dut|clk_count\(22) & (!\dut|clk_count\(23) & !\dut|clk_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(25),
	datab => \dut|clk_count\(22),
	datac => \dut|clk_count\(23),
	datad => \dut|clk_count\(24),
	combout => \dut|LessThan9~0_combout\);

-- Location: LCCOMB_X18_Y39_N20
\dut|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~1_combout\ = (\dut|LessThan9~0_combout\ & !\dut|clk_count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|LessThan9~0_combout\,
	datad => \dut|clk_count\(26),
	combout => \dut|LessThan9~1_combout\);

-- Location: LCCOMB_X19_Y40_N4
\dut|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector3~0_combout\ = (\dut|Add0~58_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~58_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector3~0_combout\);

-- Location: FF_X19_Y40_N5
\dut|clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(29));

-- Location: LCCOMB_X19_Y40_N8
\dut|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~4_combout\ = (!\dut|clk_count\(30) & (!\dut|clk_count\(29) & (!\dut|clk_count\(28) & !\dut|clk_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(30),
	datab => \dut|clk_count\(29),
	datac => \dut|clk_count\(28),
	datad => \dut|clk_count\(27),
	combout => \dut|LessThan9~4_combout\);

-- Location: LCCOMB_X19_Y39_N20
\dut|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector19~0_combout\ = (\dut|Add0~26_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~26_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector19~0_combout\);

-- Location: FF_X19_Y39_N21
\dut|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(13));

-- Location: LCCOMB_X18_Y39_N2
\dut|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector21~0_combout\ = (\dut|Add0~22_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~22_combout\,
	datac => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector21~0_combout\);

-- Location: FF_X18_Y39_N3
\dut|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(11));

-- Location: LCCOMB_X19_Y39_N24
\dut|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~3_combout\ = ((!\dut|clk_count\(12) & (!\dut|clk_count\(10) & !\dut|clk_count\(11)))) # (!\dut|clk_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(12),
	datab => \dut|clk_count\(13),
	datac => \dut|clk_count\(10),
	datad => \dut|clk_count\(11),
	combout => \dut|LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y40_N20
\dut|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector16~0_combout\ = (\dut|Add0~32_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~32_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector16~0_combout\);

-- Location: FF_X19_Y40_N21
\dut|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(16));

-- Location: LCCOMB_X18_Y39_N4
\dut|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector13~0_combout\ = (!\dut|clk_count[17]~5_combout\ & \dut|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_count[17]~5_combout\,
	datad => \dut|Add0~38_combout\,
	combout => \dut|Selector13~0_combout\);

-- Location: FF_X18_Y39_N5
\dut|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(19));

-- Location: LCCOMB_X19_Y41_N4
\dut|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector18~0_combout\ = (\dut|Add0~28_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~28_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector18~0_combout\);

-- Location: FF_X19_Y41_N5
\dut|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(14));

-- Location: LCCOMB_X19_Y39_N2
\dut|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~0_combout\ = (!\dut|clk_count\(15) & (!\dut|clk_count\(20) & (!\dut|clk_count\(19) & !\dut|clk_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(15),
	datab => \dut|clk_count\(20),
	datac => \dut|clk_count\(19),
	datad => \dut|clk_count\(14),
	combout => \dut|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y39_N18
\dut|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~4_combout\ = (\dut|LessThan0~2_combout\) # ((\dut|LessThan0~3_combout\ & (!\dut|clk_count\(16) & \dut|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan0~2_combout\,
	datab => \dut|LessThan0~3_combout\,
	datac => \dut|clk_count\(16),
	datad => \dut|LessThan0~0_combout\,
	combout => \dut|LessThan0~4_combout\);

-- Location: LCCOMB_X19_Y41_N20
\dut|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector25~0_combout\ = (\dut|Add0~14_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~14_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector25~0_combout\);

-- Location: FF_X19_Y41_N21
\dut|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(7));

-- Location: LCCOMB_X19_Y41_N2
\dut|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector24~0_combout\ = (\dut|Add0~16_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~16_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector24~0_combout\);

-- Location: FF_X19_Y41_N3
\dut|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(8));

-- Location: LCCOMB_X19_Y41_N6
\dut|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~5_combout\ = (((!\dut|clk_count\(6) & !\dut|clk_count\(5))) # (!\dut|clk_count\(8))) # (!\dut|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(6),
	datab => \dut|clk_count\(7),
	datac => \dut|clk_count\(5),
	datad => \dut|clk_count\(8),
	combout => \dut|LessThan0~5_combout\);

-- Location: LCCOMB_X19_Y39_N8
\dut|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~6_combout\ = (!\dut|clk_count\(12) & (!\dut|clk_count\(9) & (\dut|LessThan0~5_combout\ & !\dut|clk_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(12),
	datab => \dut|clk_count\(9),
	datac => \dut|LessThan0~5_combout\,
	datad => \dut|clk_count\(11),
	combout => \dut|LessThan0~6_combout\);

-- Location: LCCOMB_X19_Y39_N16
\dut|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~1_combout\ = (!\dut|clk_count\(16) & \dut|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_count\(16),
	datad => \dut|LessThan0~0_combout\,
	combout => \dut|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y39_N6
\dut|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~7_combout\ = ((\dut|LessThan0~4_combout\) # ((\dut|LessThan0~6_combout\ & \dut|LessThan0~1_combout\))) # (!\dut|clk_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(21),
	datab => \dut|LessThan0~4_combout\,
	datac => \dut|LessThan0~6_combout\,
	datad => \dut|LessThan0~1_combout\,
	combout => \dut|LessThan0~7_combout\);

-- Location: LCCOMB_X18_Y39_N8
\dut|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~8_combout\ = (\dut|clk_count\(31)) # ((\dut|LessThan9~1_combout\ & (\dut|LessThan9~4_combout\ & \dut|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(31),
	datab => \dut|LessThan9~1_combout\,
	datac => \dut|LessThan9~4_combout\,
	datad => \dut|LessThan0~7_combout\,
	combout => \dut|LessThan0~8_combout\);

-- Location: LCCOMB_X17_Y38_N16
\dut|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|state~6_combout\ = (\dut|state.power_up~q\) # (!\dut|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|state.power_up~q\,
	datad => \dut|LessThan0~8_combout\,
	combout => \dut|state~6_combout\);

-- Location: LCCOMB_X17_Y38_N8
\dut|state.power_up~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|state.power_up~feeder_combout\ = \dut|state~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|state~6_combout\,
	combout => \dut|state.power_up~feeder_combout\);

-- Location: FF_X17_Y38_N9
\dut|state.power_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|state.power_up~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.power_up~q\);

-- Location: LCCOMB_X17_Y39_N2
\dut|LessThan8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~8_combout\ = (\dut|LessThan8~1_combout\ & (\dut|LessThan8~0_combout\ & ((\dut|LessThan8~7_combout\) # (!\dut|LessThan8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan8~7_combout\,
	datab => \dut|LessThan8~5_combout\,
	datac => \dut|LessThan8~1_combout\,
	datad => \dut|LessThan8~0_combout\,
	combout => \dut|LessThan8~8_combout\);

-- Location: LCCOMB_X17_Y39_N16
\dut|LessThan8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~9_combout\ = (\dut|LessThan8~3_combout\ & (!\dut|Add0~60_combout\ & (!\dut|Add0~58_combout\ & \dut|LessThan8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan8~3_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|Add0~58_combout\,
	datad => \dut|LessThan8~8_combout\,
	combout => \dut|LessThan8~9_combout\);

-- Location: LCCOMB_X17_Y39_N8
\dut|clk_count[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|clk_count[17]~2_combout\ = (!\dut|state.send~q\ & (\dut|state.power_up~q\ & \dut|LessThan8~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~q\,
	datab => \dut|state.power_up~q\,
	datad => \dut|LessThan8~9_combout\,
	combout => \dut|clk_count[17]~2_combout\);

-- Location: LCCOMB_X18_Y39_N14
\dut|clk_count[17]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|clk_count[17]~5_combout\ = (\dut|state.ready~q\) # ((!\dut|clk_count[17]~1_combout\ & (!\dut|clk_count[17]~4_combout\ & !\dut|clk_count[17]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[17]~1_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|clk_count[17]~4_combout\,
	datad => \dut|clk_count[17]~2_combout\,
	combout => \dut|clk_count[17]~5_combout\);

-- Location: LCCOMB_X18_Y39_N26
\dut|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector4~0_combout\ = (!\dut|clk_count[17]~5_combout\ & \dut|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_count[17]~5_combout\,
	datad => \dut|Add0~56_combout\,
	combout => \dut|Selector4~0_combout\);

-- Location: FF_X18_Y39_N27
\dut|clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(28));

-- Location: LCCOMB_X18_Y40_N28
\dut|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~60_combout\ = (\dut|clk_count\(30) & (\dut|Add0~59\ $ (GND))) # (!\dut|clk_count\(30) & (!\dut|Add0~59\ & VCC))
-- \dut|Add0~61\ = CARRY((\dut|clk_count\(30) & !\dut|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(30),
	datad => VCC,
	cin => \dut|Add0~59\,
	combout => \dut|Add0~60_combout\,
	cout => \dut|Add0~61\);

-- Location: LCCOMB_X17_Y39_N28
\dut|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~3_combout\ = (\dut|LessThan8~0_combout\ & (((\dut|LessThan7~2_combout\) # (!\dut|Add0~30_combout\)) # (!\dut|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~32_combout\,
	datab => \dut|Add0~30_combout\,
	datac => \dut|LessThan7~2_combout\,
	datad => \dut|LessThan8~0_combout\,
	combout => \dut|LessThan7~3_combout\);

-- Location: LCCOMB_X17_Y39_N18
\dut|LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~4_combout\ = (\dut|LessThan8~1_combout\ & \dut|LessThan7~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|LessThan8~1_combout\,
	datad => \dut|LessThan7~3_combout\,
	combout => \dut|LessThan7~4_combout\);

-- Location: LCCOMB_X17_Y39_N24
\dut|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~5_combout\ = (\dut|LessThan8~3_combout\ & (!\dut|Add0~60_combout\ & (!\dut|Add0~58_combout\ & \dut|LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan8~3_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|Add0~58_combout\,
	datad => \dut|LessThan7~4_combout\,
	combout => \dut|LessThan7~5_combout\);

-- Location: LCCOMB_X17_Y39_N30
\dut|busy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|busy~6_combout\ = (!\dut|LessThan8~9_combout\ & (!\dut|LessThan7~5_combout\ & ((\dut|Add0~60_combout\) # (!\dut|busy~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~3_combout\,
	datab => \dut|LessThan8~9_combout\,
	datac => \dut|Add0~60_combout\,
	datad => \dut|LessThan7~5_combout\,
	combout => \dut|busy~6_combout\);

-- Location: LCCOMB_X17_Y40_N10
\dut|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan4~1_combout\ = (\dut|LessThan4~0_combout\ & (\dut|LessThan8~0_combout\ & (\dut|LessThan8~1_combout\ & !\dut|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan4~0_combout\,
	datab => \dut|LessThan8~0_combout\,
	datac => \dut|LessThan8~1_combout\,
	datad => \dut|Add0~50_combout\,
	combout => \dut|LessThan4~1_combout\);

-- Location: LCCOMB_X17_Y40_N24
\dut|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan4~2_combout\ = (!\dut|Add0~52_combout\ & (!\dut|Add0~54_combout\ & (!\dut|Add0~56_combout\ & \dut|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~52_combout\,
	datab => \dut|Add0~54_combout\,
	datac => \dut|Add0~56_combout\,
	datad => \dut|LessThan4~1_combout\,
	combout => \dut|LessThan4~2_combout\);

-- Location: LCCOMB_X17_Y41_N4
\dut|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan3~0_combout\ = (\dut|Add0~20_combout\ & \dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~20_combout\,
	datad => \dut|Add0~22_combout\,
	combout => \dut|LessThan3~0_combout\);

-- Location: LCCOMB_X17_Y41_N2
\dut|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan3~1_combout\ = ((!\dut|Add0~18_combout\ & ((!\dut|Add0~14_combout\) # (!\dut|Add0~16_combout\)))) # (!\dut|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~16_combout\,
	datab => \dut|Add0~14_combout\,
	datac => \dut|LessThan3~0_combout\,
	datad => \dut|Add0~18_combout\,
	combout => \dut|LessThan3~1_combout\);

-- Location: LCCOMB_X17_Y41_N22
\dut|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan3~3_combout\ = (\dut|LessThan3~1_combout\) # ((\dut|LessThan3~2_combout\ & (!\dut|Add0~18_combout\ & !\dut|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan3~2_combout\,
	datab => \dut|Add0~18_combout\,
	datac => \dut|Add0~12_combout\,
	datad => \dut|LessThan3~1_combout\,
	combout => \dut|LessThan3~3_combout\);

-- Location: LCCOMB_X17_Y40_N22
\dut|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan3~4_combout\ = (!\dut|Add0~24_combout\ & (\dut|LessThan4~2_combout\ & (\dut|LessThan3~3_combout\ & !\dut|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~24_combout\,
	datab => \dut|LessThan4~2_combout\,
	datac => \dut|LessThan3~3_combout\,
	datad => \dut|Add0~58_combout\,
	combout => \dut|LessThan3~4_combout\);

-- Location: LCCOMB_X16_Y39_N2
\dut|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector34~0_combout\ = (\dut|Selector45~2_combout\ & (\dut|busy~6_combout\ & ((\dut|Add0~60_combout\) # (!\dut|LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector45~2_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|busy~6_combout\,
	datad => \dut|LessThan3~4_combout\,
	combout => \dut|Selector34~0_combout\);

-- Location: LCCOMB_X16_Y39_N28
\dut|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector34~2_combout\ = (\dut|Selector34~1_combout\) # ((\dut|Selector34~0_combout\) # ((!\lcd_enable~q\ & \dut|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector34~1_combout\,
	datab => \lcd_enable~q\,
	datac => \dut|state.ready~q\,
	datad => \dut|Selector34~0_combout\,
	combout => \dut|Selector34~2_combout\);

-- Location: FF_X16_Y39_N29
\dut|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.ready~q\);

-- Location: LCCOMB_X19_Y40_N26
\dut|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~0_combout\ = (\dut|Add0~14_combout\ & (\dut|Add0~16_combout\ & (\dut|LessThan8~2_combout\ & \dut|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~14_combout\,
	datab => \dut|Add0~16_combout\,
	datac => \dut|LessThan8~2_combout\,
	datad => \dut|Add0~12_combout\,
	combout => \dut|LessThan7~0_combout\);

-- Location: LCCOMB_X19_Y40_N12
\dut|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan1~1_combout\ = (\dut|LessThan1~0_combout\ & (((!\dut|Add0~6_combout\ & !\dut|Add0~4_combout\)) # (!\dut|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~6_combout\,
	datab => \dut|Add0~4_combout\,
	datac => \dut|LessThan7~0_combout\,
	datad => \dut|LessThan1~0_combout\,
	combout => \dut|LessThan1~1_combout\);

-- Location: LCCOMB_X16_Y40_N2
\dut|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan1~3_combout\ = (!\dut|Add0~60_combout\ & (\dut|LessThan1~1_combout\ & (!\dut|Add0~58_combout\ & \dut|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~60_combout\,
	datab => \dut|LessThan1~1_combout\,
	datac => \dut|Add0~58_combout\,
	datad => \dut|LessThan4~2_combout\,
	combout => \dut|LessThan1~3_combout\);

-- Location: LCCOMB_X19_Y40_N30
\dut|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector11~0_combout\ = (\dut|Add0~42_combout\ & !\dut|clk_count[17]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~42_combout\,
	datad => \dut|clk_count[17]~5_combout\,
	combout => \dut|Selector11~0_combout\);

-- Location: FF_X19_Y40_N31
\dut|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(21));

-- Location: LCCOMB_X19_Y39_N28
\dut|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~3_combout\ = (\dut|LessThan9~2_combout\ & (\dut|LessThan9~1_combout\ & (!\dut|clk_count\(21) & \dut|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan9~2_combout\,
	datab => \dut|LessThan9~1_combout\,
	datac => \dut|clk_count\(21),
	datad => \dut|LessThan0~1_combout\,
	combout => \dut|LessThan9~3_combout\);

-- Location: LCCOMB_X16_Y41_N12
\dut|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~7_combout\ = (\dut|clk_count\(9)) # ((\dut|clk_count\(10)) # ((\dut|LessThan9~6_combout\ & \dut|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan9~6_combout\,
	datab => \dut|clk_count\(8),
	datac => \dut|clk_count\(9),
	datad => \dut|clk_count\(10),
	combout => \dut|LessThan9~7_combout\);

-- Location: LCCOMB_X16_Y39_N30
\dut|LessThan9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~8_combout\ = (\dut|LessThan9~4_combout\ & (\dut|LessThan9~3_combout\ & ((!\dut|LessThan9~7_combout\) # (!\dut|clk_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan9~4_combout\,
	datab => \dut|clk_count\(11),
	datac => \dut|LessThan9~3_combout\,
	datad => \dut|LessThan9~7_combout\,
	combout => \dut|LessThan9~8_combout\);

-- Location: LCCOMB_X17_Y38_N30
\dut|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector35~2_combout\ = (\dut|state.send~q\ & ((\dut|LessThan9~8_combout\) # (\dut|clk_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~q\,
	datac => \dut|LessThan9~8_combout\,
	datad => \dut|clk_count\(31),
	combout => \dut|Selector35~2_combout\);

-- Location: LCCOMB_X17_Y38_N24
\dut|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector1~0_combout\ = (\dut|Add0~62_combout\ & ((\dut|state.initialize~q\) # ((\dut|Selector35~2_combout\) # (!\dut|state~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.initialize~q\,
	datab => \dut|state~6_combout\,
	datac => \dut|Selector35~2_combout\,
	datad => \dut|Add0~62_combout\,
	combout => \dut|Selector1~0_combout\);

-- Location: FF_X17_Y38_N25
\dut|clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(31));

-- Location: LCCOMB_X18_Y40_N30
\dut|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~62_combout\ = \dut|clk_count\(31) $ (\dut|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(31),
	cin => \dut|Add0~61\,
	combout => \dut|Add0~62_combout\);

-- Location: LCCOMB_X17_Y38_N18
\dut|busy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|busy~7_combout\ = (\dut|Add0~62_combout\) # (((\dut|LessThan3~4_combout\ & !\dut|Add0~60_combout\)) # (!\dut|busy~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan3~4_combout\,
	datab => \dut|Add0~62_combout\,
	datac => \dut|busy~6_combout\,
	datad => \dut|Add0~60_combout\,
	combout => \dut|busy~7_combout\);

-- Location: LCCOMB_X17_Y38_N2
\dut|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector33~0_combout\ = (\dut|state.power_up~q\ & (((\dut|state.initialize~q\ & \dut|busy~7_combout\)))) # (!\dut|state.power_up~q\ & (((\dut|state.initialize~q\ & \dut|busy~7_combout\)) # (!\dut|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.power_up~q\,
	datab => \dut|LessThan0~8_combout\,
	datac => \dut|state.initialize~q\,
	datad => \dut|busy~7_combout\,
	combout => \dut|Selector33~0_combout\);

-- Location: FF_X17_Y38_N3
\dut|state.initialize\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.initialize~q\);

-- Location: LCCOMB_X16_Y40_N30
\dut|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector45~2_combout\ = (\dut|state.initialize~q\ & !\dut|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|state.initialize~q\,
	datad => \dut|Add0~62_combout\,
	combout => \dut|Selector45~2_combout\);

-- Location: LCCOMB_X19_Y40_N28
\dut|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan5~0_combout\ = ((!\dut|Add0~6_combout\ & (!\dut|Add0~4_combout\ & !\dut|Add0~8_combout\))) # (!\dut|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~6_combout\,
	datab => \dut|Add0~4_combout\,
	datac => \dut|Add0~8_combout\,
	datad => \dut|Add0~12_combout\,
	combout => \dut|LessThan5~0_combout\);

-- Location: LCCOMB_X19_Y40_N2
\dut|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan5~1_combout\ = ((!\dut|Add0~14_combout\ & ((\dut|LessThan5~0_combout\) # (!\dut|Add0~10_combout\)))) # (!\dut|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~14_combout\,
	datab => \dut|Add0~16_combout\,
	datac => \dut|Add0~10_combout\,
	datad => \dut|LessThan5~0_combout\,
	combout => \dut|LessThan5~1_combout\);

-- Location: LCCOMB_X19_Y40_N16
\dut|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan5~2_combout\ = ((!\dut|Add0~18_combout\ & (!\dut|Add0~20_combout\ & \dut|LessThan5~1_combout\))) # (!\dut|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~18_combout\,
	datab => \dut|Add0~20_combout\,
	datac => \dut|Add0~24_combout\,
	datad => \dut|LessThan5~1_combout\,
	combout => \dut|LessThan5~2_combout\);

-- Location: LCCOMB_X19_Y40_N10
\dut|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan5~3_combout\ = (\dut|LessThan5~2_combout\) # (!\dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~22_combout\,
	datad => \dut|LessThan5~2_combout\,
	combout => \dut|LessThan5~3_combout\);

-- Location: LCCOMB_X16_Y40_N12
\dut|LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan5~4_combout\ = (!\dut|Add0~60_combout\ & (!\dut|Add0~58_combout\ & (\dut|LessThan5~3_combout\ & \dut|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~60_combout\,
	datab => \dut|Add0~58_combout\,
	datac => \dut|LessThan5~3_combout\,
	datad => \dut|LessThan4~2_combout\,
	combout => \dut|LessThan5~4_combout\);

-- Location: LCCOMB_X19_Y41_N22
\dut|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan4~3_combout\ = (!\dut|Add0~14_combout\ & (((!\dut|Add0~12_combout\) # (!\dut|Add0~8_combout\)) # (!\dut|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~10_combout\,
	datab => \dut|Add0~8_combout\,
	datac => \dut|Add0~12_combout\,
	datad => \dut|Add0~14_combout\,
	combout => \dut|LessThan4~3_combout\);

-- Location: LCCOMB_X19_Y41_N28
\dut|LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan4~4_combout\ = (((\dut|LessThan4~3_combout\) # (!\dut|Add0~18_combout\)) # (!\dut|Add0~20_combout\)) # (!\dut|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~16_combout\,
	datab => \dut|Add0~20_combout\,
	datac => \dut|LessThan4~3_combout\,
	datad => \dut|Add0~18_combout\,
	combout => \dut|LessThan4~4_combout\);

-- Location: LCCOMB_X17_Y40_N2
\dut|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan4~5_combout\ = (\dut|LessThan4~2_combout\ & (((!\dut|Add0~22_combout\ & \dut|LessThan4~4_combout\)) # (!\dut|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~24_combout\,
	datab => \dut|Add0~22_combout\,
	datac => \dut|LessThan4~4_combout\,
	datad => \dut|LessThan4~2_combout\,
	combout => \dut|LessThan4~5_combout\);

-- Location: LCCOMB_X16_Y40_N10
\dut|Selector46~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~12_combout\ = (!\dut|LessThan2~3_combout\ & (\dut|LessThan5~4_combout\ & ((\dut|Add0~58_combout\) # (!\dut|LessThan4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan2~3_combout\,
	datab => \dut|Add0~58_combout\,
	datac => \dut|LessThan5~4_combout\,
	datad => \dut|LessThan4~5_combout\,
	combout => \dut|Selector46~12_combout\);

-- Location: LCCOMB_X16_Y40_N28
\dut|Selector45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector45~3_combout\ = (!\dut|Selector35~0_combout\ & (!\dut|LessThan1~3_combout\ & (\dut|Selector45~2_combout\ & \dut|Selector46~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector35~0_combout\,
	datab => \dut|LessThan1~3_combout\,
	datac => \dut|Selector45~2_combout\,
	datad => \dut|Selector46~12_combout\,
	combout => \dut|Selector45~3_combout\);

-- Location: LCCOMB_X16_Y40_N0
\dut|Selector45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector45~4_combout\ = (\dut|Selector45~3_combout\) # ((lcd_bus(0) & (\lcd_enable~q\ & \dut|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lcd_bus(0),
	datab => \lcd_enable~q\,
	datac => \dut|state.ready~q\,
	datad => \dut|Selector45~3_combout\,
	combout => \dut|Selector45~4_combout\);

-- Location: LCCOMB_X17_Y38_N4
\dut|lcd_data[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|lcd_data[1]~8_combout\ = (\dut|state.send~q\) # ((!\dut|state.power_up~q\ & \dut|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~q\,
	datac => \dut|state.power_up~q\,
	datad => \dut|LessThan0~8_combout\,
	combout => \dut|lcd_data[1]~8_combout\);

-- Location: LCCOMB_X17_Y38_N22
\dut|lcd_data[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|lcd_data[1]~2_combout\ = (\dut|lcd_data[1]~8_combout\) # ((\dut|state.initialize~q\ & (!\dut|Add0~62_combout\ & \dut|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.initialize~q\,
	datab => \dut|Add0~62_combout\,
	datac => \dut|lcd_data[1]~8_combout\,
	datad => \dut|Add0~60_combout\,
	combout => \dut|lcd_data[1]~2_combout\);

-- Location: LCCOMB_X17_Y40_N8
\dut|lcd_data[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|lcd_data[1]~6_combout\ = ((\dut|LessThan6~2_combout\ & ((\dut|lcd_data[1]~5_combout\) # (\dut|Add0~60_combout\)))) # (!\dut|busy~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|lcd_data[1]~5_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|busy~5_combout\,
	datad => \dut|LessThan6~2_combout\,
	combout => \dut|lcd_data[1]~6_combout\);

-- Location: LCCOMB_X19_Y40_N0
\dut|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan2~1_combout\ = ((!\dut|Add0~18_combout\) # (!\dut|Add0~16_combout\)) # (!\dut|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~14_combout\,
	datac => \dut|Add0~16_combout\,
	datad => \dut|Add0~18_combout\,
	combout => \dut|LessThan2~1_combout\);

-- Location: LCCOMB_X19_Y40_N14
\dut|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan2~0_combout\ = (!\dut|Add0~12_combout\ & (((!\dut|Add0~10_combout\) # (!\dut|Add0~8_combout\)) # (!\dut|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~6_combout\,
	datab => \dut|Add0~12_combout\,
	datac => \dut|Add0~8_combout\,
	datad => \dut|Add0~10_combout\,
	combout => \dut|LessThan2~0_combout\);

-- Location: LCCOMB_X19_Y40_N18
\dut|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan2~2_combout\ = ((!\dut|Add0~20_combout\ & ((\dut|LessThan2~1_combout\) # (\dut|LessThan2~0_combout\)))) # (!\dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~22_combout\,
	datab => \dut|LessThan2~1_combout\,
	datac => \dut|LessThan2~0_combout\,
	datad => \dut|Add0~20_combout\,
	combout => \dut|LessThan2~2_combout\);

-- Location: LCCOMB_X19_Y40_N24
\dut|lcd_data[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|lcd_data[1]~3_combout\ = (\dut|Add0~58_combout\) # ((!\dut|LessThan1~1_combout\ & ((\dut|Add0~24_combout\) # (!\dut|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~58_combout\,
	datab => \dut|LessThan2~2_combout\,
	datac => \dut|Add0~24_combout\,
	datad => \dut|LessThan1~1_combout\,
	combout => \dut|lcd_data[1]~3_combout\);

-- Location: LCCOMB_X17_Y40_N16
\dut|lcd_data[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|lcd_data[1]~4_combout\ = (\dut|state.initialize~q\ & (!\dut|Add0~62_combout\ & ((\dut|lcd_data[1]~3_combout\) # (!\dut|LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.initialize~q\,
	datab => \dut|LessThan4~2_combout\,
	datac => \dut|Add0~62_combout\,
	datad => \dut|lcd_data[1]~3_combout\,
	combout => \dut|lcd_data[1]~4_combout\);

-- Location: LCCOMB_X17_Y40_N18
\dut|lcd_data[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|lcd_data[1]~7_combout\ = (!\dut|lcd_data[1]~2_combout\ & (((!\dut|LessThan3~4_combout\ & !\dut|lcd_data[1]~6_combout\)) # (!\dut|lcd_data[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan3~4_combout\,
	datab => \dut|lcd_data[1]~2_combout\,
	datac => \dut|lcd_data[1]~6_combout\,
	datad => \dut|lcd_data[1]~4_combout\,
	combout => \dut|lcd_data[1]~7_combout\);

-- Location: FF_X16_Y40_N1
\dut|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector45~4_combout\,
	ena => \dut|lcd_data[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(0));

-- Location: FF_X25_Y39_N29
\char[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(30));

-- Location: LCCOMB_X25_Y39_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (char(30) & (\Add0~59\ $ (GND))) # (!char(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((char(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X25_Y39_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = char(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X24_Y40_N30
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!\Add0~6_combout\ & !\Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => \Add0~4_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X25_Y40_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (char(5) & (!\Add0~9\)) # (!char(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!char(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X24_Y39_N20
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Add0~2_combout\ & (!\Add0~8_combout\ & (\Equal0~11_combout\ & \Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~8_combout\,
	datac => \Equal0~11_combout\,
	datad => \Add0~10_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X25_Y39_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (char(22) & (\Add0~43\ $ (GND))) # (!char(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((char(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X24_Y39_N8
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\Add0~46_combout\ & (!\Add0~48_combout\ & (!\Add0~44_combout\ & !\Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Add0~48_combout\,
	datac => \Add0~44_combout\,
	datad => \Add0~50_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X26_Y39_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add0~12_combout\ & (!\Add0~16_combout\ & (!\Add0~14_combout\ & !\Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~18_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X25_Y40_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (char(15) & (!\Add0~29\)) # (!char(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!char(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X26_Y39_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~34_combout\ & (!\Add0~30_combout\ & (!\Add0~32_combout\ & !\Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Add0~30_combout\,
	datac => \Add0~32_combout\,
	datad => \Add0~28_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X25_Y39_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (char(19) & (!\Add0~37\)) # (!char(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!char(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X25_Y39_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (char(21) & (!\Add0~41\)) # (!char(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!char(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X26_Y39_N6
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~40_combout\ & (!\Add0~36_combout\ & (!\Add0~38_combout\ & !\Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add0~36_combout\,
	datac => \Add0~38_combout\,
	datad => \Add0~42_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X26_Y39_N16
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X24_Y39_N6
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Add0~0_combout\ & (\Equal1~0_combout\ & (\Equal0~10_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal0~10_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X24_Y39_N0
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal0~9_combout\ & (!\Add0~60_combout\ & (!\Add0~62_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Add0~60_combout\,
	datac => \Add0~62_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X24_Y40_N6
\char~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \char~1_combout\ = (\Add0~2_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => \Equal1~2_combout\,
	combout => \char~1_combout\);

-- Location: FF_X24_Y40_N7
\char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \char~1_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(1));

-- Location: LCCOMB_X25_Y40_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = char(0) $ (VCC)
-- \Add0~1\ = CARRY(char(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X25_Y40_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (char(1) & (!\Add0~1\)) # (!char(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!char(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X25_Y40_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (char(2) & (\Add0~3\ $ (GND))) # (!char(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((char(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X25_Y40_N5
\char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(2));

-- Location: LCCOMB_X25_Y40_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (char(3) & (!\Add0~5\)) # (!char(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!char(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X25_Y40_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (char(4) & (\Add0~7\ $ (GND))) # (!char(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((char(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X25_Y40_N9
\char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(4));

-- Location: LCCOMB_X25_Y40_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (char(7) & (!\Add0~13\)) # (!char(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!char(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X25_Y40_N15
\char[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(7));

-- Location: LCCOMB_X25_Y40_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (char(8) & (\Add0~15\ $ (GND))) # (!char(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((char(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X25_Y40_N17
\char[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(8));

-- Location: LCCOMB_X25_Y40_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (char(9) & (!\Add0~17\)) # (!char(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!char(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X25_Y40_N19
\char[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(9));

-- Location: LCCOMB_X25_Y40_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (char(10) & (\Add0~19\ $ (GND))) # (!char(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((char(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X25_Y40_N21
\char[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(10));

-- Location: LCCOMB_X25_Y40_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (char(12) & (\Add0~23\ $ (GND))) # (!char(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((char(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X25_Y40_N25
\char[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(12));

-- Location: LCCOMB_X25_Y40_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (char(14) & (\Add0~27\ $ (GND))) # (!char(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((char(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X25_Y40_N29
\char[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(14));

-- Location: LCCOMB_X25_Y39_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (char(16) & (\Add0~31\ $ (GND))) # (!char(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((char(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X25_Y39_N1
\char[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(16));

-- Location: LCCOMB_X25_Y39_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (char(17) & (!\Add0~33\)) # (!char(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!char(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X25_Y39_N3
\char[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(17));

-- Location: LCCOMB_X25_Y39_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (char(18) & (\Add0~35\ $ (GND))) # (!char(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((char(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X25_Y39_N5
\char[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(18));

-- Location: LCCOMB_X25_Y39_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (char(20) & (\Add0~39\ $ (GND))) # (!char(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((char(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X25_Y39_N9
\char[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(20));

-- Location: LCCOMB_X25_Y39_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (char(23) & (!\Add0~45\)) # (!char(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!char(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X25_Y39_N15
\char[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(23));

-- Location: LCCOMB_X25_Y39_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (char(24) & (\Add0~47\ $ (GND))) # (!char(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((char(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X25_Y39_N17
\char[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(24));

-- Location: LCCOMB_X25_Y39_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (char(25) & (!\Add0~49\)) # (!char(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!char(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X25_Y39_N19
\char[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(25));

-- Location: LCCOMB_X25_Y39_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (char(26) & (\Add0~51\ $ (GND))) # (!char(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((char(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X25_Y39_N21
\char[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(26));

-- Location: LCCOMB_X25_Y39_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (char(27) & (!\Add0~53\)) # (!char(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!char(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X25_Y39_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (char(28) & (\Add0~55\ $ (GND))) # (!char(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((char(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X25_Y39_N25
\char[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(28));

-- Location: LCCOMB_X25_Y39_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (char(29) & (!\Add0~57\)) # (!char(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!char(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCCOMB_X24_Y39_N26
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Add0~52_combout\ & (!\Add0~54_combout\ & (!\Add0~56_combout\ & !\Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Add0~54_combout\,
	datac => \Add0~56_combout\,
	datad => \Add0~58_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X24_Y39_N28
\Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (\Equal0~12_combout\ & (\Add0~0_combout\ & (\Equal0~10_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~12_combout\,
	datab => \Add0~0_combout\,
	datac => \Equal0~10_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X24_Y39_N18
\Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (!\Add0~62_combout\ & (!\Add0~60_combout\ & (\Equal0~9_combout\ & \Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \Add0~60_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~13_combout\,
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X24_Y39_N12
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add0~46_combout\ & (!\Add0~48_combout\ & (!\Add0~44_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datab => \Add0~48_combout\,
	datac => \Add0~44_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X24_Y39_N10
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Add0~52_combout\ & (!\Add0~54_combout\ & (!\Add0~50_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datab => \Add0~54_combout\,
	datac => \Add0~50_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X24_Y39_N16
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Add0~58_combout\ & (!\Add0~60_combout\ & (!\Add0~56_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datab => \Add0~60_combout\,
	datac => \Add0~56_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X24_Y39_N4
\lcd_bus~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~5_combout\ = (!\Equal0~14_combout\ & ((\Add0~62_combout\) # ((\LessThan0~0_combout\ & \Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Equal0~14_combout\,
	datac => \Add0~62_combout\,
	datad => \Equal0~7_combout\,
	combout => \lcd_bus~5_combout\);

-- Location: LCCOMB_X24_Y40_N18
\lcd_bus[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus[1]~1_combout\ = (\lcd_bus~5_combout\ & (\lcd_bus~36_combout\)) # (!\lcd_bus~5_combout\ & ((!\Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~36_combout\,
	datab => \Equal0~14_combout\,
	datad => \lcd_bus~5_combout\,
	combout => \lcd_bus[1]~1_combout\);

-- Location: LCCOMB_X17_Y38_N28
\dut|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector0~0_combout\ = (\lcd_enable~q\ & (\dut|state.initialize~q\ & ((!\dut|busy~7_combout\)))) # (!\lcd_enable~q\ & ((\dut|state.ready~q\) # ((\dut|state.initialize~q\ & !\dut|busy~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_enable~q\,
	datab => \dut|state.initialize~q\,
	datac => \dut|state.ready~q\,
	datad => \dut|busy~7_combout\,
	combout => \dut|Selector0~0_combout\);

-- Location: FF_X17_Y38_N29
\dut|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|busy~q\);

-- Location: LCCOMB_X24_Y39_N14
\lcd_line2[0][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[0][0]~2_combout\ = (\clk_lcd_gen|pre_Q~q\ & (!\lcd_enable~q\ & (\dut|busy~q\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|pre_Q~q\,
	datab => \lcd_enable~q\,
	datac => \dut|busy~q\,
	datad => \Equal1~2_combout\,
	combout => \lcd_line2[0][0]~2_combout\);

-- Location: FF_X25_Y41_N19
\lcd_line2[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[6][1]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[5][1]~q\);

-- Location: FF_X25_Y41_N31
\lcd_line2[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[5][1]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[4][1]~q\);

-- Location: FF_X25_Y41_N29
\lcd_line2[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[4][1]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[3][1]~q\);

-- Location: LCCOMB_X25_Y41_N24
\lcd_line2[2][1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[2][1]~9_combout\ = !\lcd_line2[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[3][1]~q\,
	combout => \lcd_line2[2][1]~9_combout\);

-- Location: FF_X25_Y41_N25
\lcd_line2[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[2][1]~9_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[2][1]~q\);

-- Location: LCCOMB_X25_Y41_N16
\lcd_line2[1][1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[1][1]~10_combout\ = !\lcd_line2[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[2][1]~q\,
	combout => \lcd_line2[1][1]~10_combout\);

-- Location: FF_X25_Y41_N17
\lcd_line2[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[1][1]~10_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[1][1]~q\);

-- Location: LCCOMB_X25_Y41_N10
\lcd_line2[0][1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[0][1]~12_combout\ = !\lcd_line2[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[1][1]~q\,
	combout => \lcd_line2[0][1]~12_combout\);

-- Location: FF_X25_Y41_N11
\lcd_line2[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[0][1]~12_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[0][1]~q\);

-- Location: LCCOMB_X25_Y41_N8
\lcd_line0b[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line0b[1]~0_combout\ = !\lcd_line2[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[0][1]~q\,
	combout => \lcd_line0b[1]~0_combout\);

-- Location: FF_X25_Y41_N9
\lcd_line0b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line0b[1]~0_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_line0b(1));

-- Location: FF_X25_Y41_N5
\lcd_line2[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => lcd_line0b(1),
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[15][1]~q\);

-- Location: FF_X25_Y41_N23
\lcd_line2[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[15][1]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[14][1]~q\);

-- Location: FF_X25_Y41_N27
\lcd_line2[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[14][1]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[13][1]~q\);

-- Location: FF_X25_Y41_N7
\lcd_line2[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[13][1]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[12][1]~q\);

-- Location: LCCOMB_X25_Y41_N2
\lcd_line2[11][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[11][1]~feeder_combout\ = \lcd_line2[12][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[12][1]~q\,
	combout => \lcd_line2[11][1]~feeder_combout\);

-- Location: FF_X25_Y41_N3
\lcd_line2[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[11][1]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[11][1]~q\);

-- Location: LCCOMB_X25_Y41_N14
\lcd_line2[10][1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[10][1]~8_combout\ = !\lcd_line2[11][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[11][1]~q\,
	combout => \lcd_line2[10][1]~8_combout\);

-- Location: FF_X25_Y41_N15
\lcd_line2[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[10][1]~8_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[10][1]~q\);

-- Location: FF_X25_Y41_N13
\lcd_line2[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[10][1]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[9][1]~q\);

-- Location: LCCOMB_X24_Y41_N16
\lcd_line2[8][1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[8][1]~11_combout\ = !\lcd_line2[9][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line2[9][1]~q\,
	combout => \lcd_line2[8][1]~11_combout\);

-- Location: FF_X24_Y41_N17
\lcd_line2[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[8][1]~11_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[8][1]~q\);

-- Location: LCCOMB_X24_Y41_N14
\lcd_line2[7][1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[7][1]~13_combout\ = !\lcd_line2[8][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[8][1]~q\,
	combout => \lcd_line2[7][1]~13_combout\);

-- Location: FF_X24_Y41_N15
\lcd_line2[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[7][1]~13_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[7][1]~q\);

-- Location: LCCOMB_X24_Y41_N18
\lcd_line2[6][1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[6][1]~7_combout\ = !\lcd_line2[7][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line2[7][1]~q\,
	combout => \lcd_line2[6][1]~7_combout\);

-- Location: FF_X24_Y41_N19
\lcd_line2[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[6][1]~7_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[6][1]~q\);

-- Location: FF_X25_Y40_N7
\char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(3));

-- Location: LCCOMB_X25_Y41_N20
\lcd_bus~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~37_combout\ = (char(2) & (char(3))) # (!char(2) & ((char(3) & (!\lcd_line2[10][1]~q\)) # (!char(3) & ((!\lcd_line2[2][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => char(3),
	datac => \lcd_line2[10][1]~q\,
	datad => \lcd_line2[2][1]~q\,
	combout => \lcd_bus~37_combout\);

-- Location: LCCOMB_X25_Y41_N22
\lcd_bus~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~38_combout\ = (char(2) & ((\lcd_bus~37_combout\ & ((\lcd_line2[14][1]~q\))) # (!\lcd_bus~37_combout\ & (\lcd_line2[6][1]~q\)))) # (!char(2) & (((\lcd_bus~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => \lcd_line2[6][1]~q\,
	datac => \lcd_line2[14][1]~q\,
	datad => \lcd_bus~37_combout\,
	combout => \lcd_bus~38_combout\);

-- Location: LCCOMB_X25_Y41_N18
\lcd_bus~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~39_combout\ = (char(2) & ((char(3)) # ((\lcd_line2[5][1]~q\)))) # (!char(2) & (!char(3) & ((\lcd_line2[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => char(3),
	datac => \lcd_line2[5][1]~q\,
	datad => \lcd_line2[1][1]~q\,
	combout => \lcd_bus~39_combout\);

-- Location: LCCOMB_X25_Y41_N26
\lcd_bus~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~40_combout\ = (char(3) & ((\lcd_bus~39_combout\ & ((\lcd_line2[13][1]~q\))) # (!\lcd_bus~39_combout\ & (!\lcd_line2[9][1]~q\)))) # (!char(3) & (((\lcd_bus~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[9][1]~q\,
	datab => char(3),
	datac => \lcd_line2[13][1]~q\,
	datad => \lcd_bus~39_combout\,
	combout => \lcd_bus~40_combout\);

-- Location: LCCOMB_X25_Y41_N0
\lcd_bus~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~41_combout\ = (char(3) & ((\lcd_line2[8][1]~q\) # ((char(2))))) # (!char(3) & (((!char(2) & !\lcd_line2[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[8][1]~q\,
	datab => char(3),
	datac => char(2),
	datad => \lcd_line2[0][1]~q\,
	combout => \lcd_bus~41_combout\);

-- Location: LCCOMB_X25_Y41_N6
\lcd_bus~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~42_combout\ = (char(2) & ((\lcd_bus~41_combout\ & ((\lcd_line2[12][1]~q\))) # (!\lcd_bus~41_combout\ & (\lcd_line2[4][1]~q\)))) # (!char(2) & (((\lcd_bus~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[4][1]~q\,
	datab => char(2),
	datac => \lcd_line2[12][1]~q\,
	datad => \lcd_bus~41_combout\,
	combout => \lcd_bus~42_combout\);

-- Location: LCCOMB_X24_Y41_N4
\lcd_bus~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~43_combout\ = (char(0) & ((\lcd_bus~40_combout\) # ((char(1))))) # (!char(0) & (((\lcd_bus~42_combout\ & !char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => \lcd_bus~40_combout\,
	datac => \lcd_bus~42_combout\,
	datad => char(1),
	combout => \lcd_bus~43_combout\);

-- Location: LCCOMB_X24_Y41_N30
\lcd_bus~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~46_combout\ = (\lcd_bus~43_combout\ & ((\lcd_bus~45_combout\) # ((!char(1))))) # (!\lcd_bus~43_combout\ & (((\lcd_bus~38_combout\ & char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~45_combout\,
	datab => \lcd_bus~38_combout\,
	datac => \lcd_bus~43_combout\,
	datad => char(1),
	combout => \lcd_bus~46_combout\);

-- Location: LCCOMB_X24_Y38_N8
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\Add0~2_combout\ & (\Add0~0_combout\)) # (!\Add0~2_combout\ & ((\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~6_combout\,
	datad => \Add0~2_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X24_Y38_N22
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\Add0~8_combout\ & ((\Add0~2_combout\) # ((\process_0~1_combout\)))) # (!\Add0~8_combout\ & (\Equal0~11_combout\ & ((!\process_0~1_combout\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~8_combout\,
	datac => \process_0~1_combout\,
	datad => \Equal0~11_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X24_Y38_N0
\process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\Add0~8_combout\ & (!\Add0~10_combout\ & ((\Add0~4_combout\) # (\process_0~2_combout\)))) # (!\Add0~8_combout\ & (((\process_0~2_combout\ & \Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~8_combout\,
	datac => \process_0~2_combout\,
	datad => \Add0~10_combout\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X24_Y39_N2
\process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (!\Add0~62_combout\ & (\process_0~3_combout\ & \Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \process_0~3_combout\,
	datad => \Equal0~7_combout\,
	combout => \process_0~4_combout\);

-- Location: FF_X24_Y40_N19
\lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_bus[1]~1_combout\,
	asdata => \lcd_bus~46_combout\,
	sclr => \Equal1~2_combout\,
	sload => \process_0~4_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(1));

-- Location: LCCOMB_X17_Y38_N12
\dut|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector35~0_combout\ = (\dut|state.ready~q\ & \lcd_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|state.ready~q\,
	datad => \lcd_enable~q\,
	combout => \dut|Selector35~0_combout\);

-- Location: LCCOMB_X17_Y39_N12
\dut|busy~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|busy~2_combout\ = (\dut|LessThan8~0_combout\ & !\dut|LessThan6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|LessThan8~0_combout\,
	datad => \dut|LessThan6~2_combout\,
	combout => \dut|busy~2_combout\);

-- Location: LCCOMB_X17_Y39_N10
\dut|busy~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|busy~3_combout\ = (\dut|LessThan8~3_combout\ & (!\dut|Add0~58_combout\ & (\dut|LessThan8~1_combout\ & \dut|busy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan8~3_combout\,
	datab => \dut|Add0~58_combout\,
	datac => \dut|LessThan8~1_combout\,
	datad => \dut|busy~2_combout\,
	combout => \dut|busy~3_combout\);

-- Location: LCCOMB_X16_Y40_N18
\dut|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector44~2_combout\ = (!\dut|LessThan4~5_combout\ & (!\dut|Selector35~0_combout\ & (\dut|Selector45~2_combout\ & !\dut|busy~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan4~5_combout\,
	datab => \dut|Selector35~0_combout\,
	datac => \dut|Selector45~2_combout\,
	datad => \dut|busy~3_combout\,
	combout => \dut|Selector44~2_combout\);

-- Location: LCCOMB_X16_Y40_N16
\dut|Selector44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector44~3_combout\ = (!\dut|LessThan5~4_combout\ & (\dut|LessThan7~5_combout\ & \dut|Selector44~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan5~4_combout\,
	datab => \dut|LessThan7~5_combout\,
	datad => \dut|Selector44~2_combout\,
	combout => \dut|Selector44~3_combout\);

-- Location: LCCOMB_X16_Y40_N22
\dut|Selector44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector44~4_combout\ = (\dut|Selector44~3_combout\) # ((\dut|state.ready~q\ & (lcd_bus(1) & \lcd_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => lcd_bus(1),
	datac => \lcd_enable~q\,
	datad => \dut|Selector44~3_combout\,
	combout => \dut|Selector44~4_combout\);

-- Location: FF_X16_Y40_N23
\dut|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector44~4_combout\,
	ena => \dut|lcd_data[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(1));

-- Location: LCCOMB_X24_Y39_N24
\lcd_line1[0][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[0][0]~2_combout\ = (\clk_lcd_gen|pre_Q~q\ & (!\lcd_enable~q\ & (\dut|busy~q\ & \Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_lcd_gen|pre_Q~q\,
	datab => \lcd_enable~q\,
	datac => \dut|busy~q\,
	datad => \Equal0~14_combout\,
	combout => \lcd_line1[0][0]~2_combout\);

-- Location: FF_X24_Y42_N27
\lcd_line1[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[13][2]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[12][2]~q\);

-- Location: FF_X24_Y42_N9
\lcd_line1[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[12][2]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[11][2]~q\);

-- Location: FF_X24_Y42_N3
\lcd_line1[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[11][2]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[10][2]~q\);

-- Location: LCCOMB_X24_Y42_N0
\lcd_line1[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[9][2]~feeder_combout\ = \lcd_line1[10][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[10][2]~q\,
	combout => \lcd_line1[9][2]~feeder_combout\);

-- Location: FF_X24_Y42_N1
\lcd_line1[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[9][2]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[9][2]~q\);

-- Location: FF_X24_Y42_N31
\lcd_line1[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[9][2]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[8][2]~q\);

-- Location: LCCOMB_X25_Y42_N28
\lcd_line1[7][2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[7][2]~11_combout\ = !\lcd_line1[8][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[8][2]~q\,
	combout => \lcd_line1[7][2]~11_combout\);

-- Location: FF_X25_Y42_N29
\lcd_line1[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[7][2]~11_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[7][2]~q\);

-- Location: LCCOMB_X25_Y42_N2
\lcd_line1[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[6][2]~feeder_combout\ = \lcd_line1[7][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[7][2]~q\,
	combout => \lcd_line1[6][2]~feeder_combout\);

-- Location: FF_X25_Y42_N3
\lcd_line1[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[6][2]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[6][2]~q\);

-- Location: LCCOMB_X25_Y42_N0
\lcd_line1[5][2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[5][2]~10_combout\ = !\lcd_line1[6][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[6][2]~q\,
	combout => \lcd_line1[5][2]~10_combout\);

-- Location: FF_X25_Y42_N1
\lcd_line1[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[5][2]~10_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[5][2]~q\);

-- Location: LCCOMB_X25_Y42_N12
\lcd_line1[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[4][2]~feeder_combout\ = \lcd_line1[5][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[5][2]~q\,
	combout => \lcd_line1[4][2]~feeder_combout\);

-- Location: FF_X25_Y42_N13
\lcd_line1[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[4][2]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[4][2]~q\);

-- Location: LCCOMB_X24_Y42_N2
\lcd_line1[3][2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[3][2]~14_combout\ = !\lcd_line1[4][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_line1[4][2]~q\,
	combout => \lcd_line1[3][2]~14_combout\);

-- Location: FF_X24_Y42_N5
\lcd_line1[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[3][2]~14_combout\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[3][2]~q\);

-- Location: LCCOMB_X24_Y42_N24
\lcd_line1[2][2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[2][2]~12_combout\ = !\lcd_line1[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line1[3][2]~q\,
	combout => \lcd_line1[2][2]~12_combout\);

-- Location: FF_X24_Y42_N25
\lcd_line1[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[2][2]~12_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[2][2]~q\);

-- Location: LCCOMB_X24_Y42_N28
\lcd_line1[1][2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[1][2]~13_combout\ = !\lcd_line1[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[2][2]~q\,
	combout => \lcd_line1[1][2]~13_combout\);

-- Location: FF_X24_Y42_N29
\lcd_line1[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[1][2]~13_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[1][2]~q\);

-- Location: FF_X24_Y42_N19
\lcd_line1[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line1[1][2]~q\,
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[0][2]~q\);

-- Location: LCCOMB_X24_Y42_N6
\lcd_line0[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line0[2]~1_combout\ = !\lcd_line1[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[0][2]~q\,
	combout => \lcd_line0[2]~1_combout\);

-- Location: FF_X24_Y42_N7
\lcd_line0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line0[2]~1_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_line0(2));

-- Location: FF_X24_Y42_N21
\lcd_line1[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => lcd_line0(2),
	sload => VCC,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[15][2]~q\);

-- Location: LCCOMB_X24_Y42_N12
\lcd_line1[14][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[14][2]~feeder_combout\ = \lcd_line1[15][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[15][2]~q\,
	combout => \lcd_line1[14][2]~feeder_combout\);

-- Location: FF_X24_Y42_N13
\lcd_line1[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[14][2]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[14][2]~q\);

-- Location: LCCOMB_X24_Y42_N14
\lcd_line1[13][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line1[13][2]~feeder_combout\ = \lcd_line1[14][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line1[14][2]~q\,
	combout => \lcd_line1[13][2]~feeder_combout\);

-- Location: FF_X24_Y42_N15
\lcd_line1[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line1[13][2]~feeder_combout\,
	ena => \lcd_line1[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line1[13][2]~q\);

-- Location: LCCOMB_X24_Y42_N20
\lcd_bus~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~55_combout\ = (\lcd_bus~54_combout\ & (((\lcd_line1[15][2]~q\) # (!\Add0~0_combout\)))) # (!\lcd_bus~54_combout\ & (\lcd_line1[13][2]~q\ & ((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~54_combout\,
	datab => \lcd_line1[13][2]~q\,
	datac => \lcd_line1[15][2]~q\,
	datad => \Add0~0_combout\,
	combout => \lcd_bus~55_combout\);

-- Location: LCCOMB_X24_Y42_N18
\lcd_bus~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~51_combout\ = (\Add0~2_combout\ & (((\Add0~0_combout\)))) # (!\Add0~2_combout\ & ((\Add0~0_combout\ & (!\lcd_line1[1][2]~q\)) # (!\Add0~0_combout\ & ((!\lcd_line1[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[1][2]~q\,
	datab => \Add0~2_combout\,
	datac => \lcd_line1[0][2]~q\,
	datad => \Add0~0_combout\,
	combout => \lcd_bus~51_combout\);

-- Location: LCCOMB_X24_Y42_N4
\lcd_bus~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~52_combout\ = (\Add0~2_combout\ & ((\lcd_bus~51_combout\ & ((!\lcd_line1[3][2]~q\))) # (!\lcd_bus~51_combout\ & (\lcd_line1[2][2]~q\)))) # (!\Add0~2_combout\ & (((\lcd_bus~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line1[2][2]~q\,
	datab => \Add0~2_combout\,
	datac => \lcd_line1[3][2]~q\,
	datad => \lcd_bus~51_combout\,
	combout => \lcd_bus~52_combout\);

-- Location: LCCOMB_X24_Y42_N8
\lcd_bus~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~50_combout\ = (\lcd_bus~49_combout\ & (((\lcd_line1[11][2]~q\)) # (!\Add0~2_combout\))) # (!\lcd_bus~49_combout\ & (\Add0~2_combout\ & ((\lcd_line1[10][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~49_combout\,
	datab => \Add0~2_combout\,
	datac => \lcd_line1[11][2]~q\,
	datad => \lcd_line1[10][2]~q\,
	combout => \lcd_bus~50_combout\);

-- Location: LCCOMB_X24_Y42_N16
\lcd_bus~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~53_combout\ = (\Add0~6_combout\ & (((\lcd_bus~50_combout\) # (\Add0~4_combout\)))) # (!\Add0~6_combout\ & (\lcd_bus~52_combout\ & ((!\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \lcd_bus~52_combout\,
	datac => \lcd_bus~50_combout\,
	datad => \Add0~4_combout\,
	combout => \lcd_bus~53_combout\);

-- Location: LCCOMB_X24_Y42_N22
\lcd_bus~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~56_combout\ = (\Add0~4_combout\ & ((\lcd_bus~53_combout\ & ((\lcd_bus~55_combout\))) # (!\lcd_bus~53_combout\ & (\lcd_bus~48_combout\)))) # (!\Add0~4_combout\ & (((\lcd_bus~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~48_combout\,
	datab => \Add0~4_combout\,
	datac => \lcd_bus~55_combout\,
	datad => \lcd_bus~53_combout\,
	combout => \lcd_bus~56_combout\);

-- Location: LCCOMB_X24_Y39_N30
\lcd_bus~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~67_combout\ = (!\Equal1~2_combout\ & (\lcd_bus~5_combout\ & !\process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \lcd_bus~5_combout\,
	datad => \process_0~4_combout\,
	combout => \lcd_bus~67_combout\);

-- Location: LCCOMB_X24_Y38_N24
\lcd_bus~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~134_combout\ = (!\Equal1~2_combout\ & (!\Add0~62_combout\ & (\Equal0~7_combout\ & \process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Add0~62_combout\,
	datac => \Equal0~7_combout\,
	datad => \process_0~3_combout\,
	combout => \lcd_bus~134_combout\);

-- Location: LCCOMB_X24_Y38_N26
\lcd_bus~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~68_combout\ = (\lcd_bus~66_combout\ & ((\lcd_bus~134_combout\) # ((\lcd_bus~56_combout\ & \lcd_bus~67_combout\)))) # (!\lcd_bus~66_combout\ & (\lcd_bus~56_combout\ & (\lcd_bus~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~66_combout\,
	datab => \lcd_bus~56_combout\,
	datac => \lcd_bus~67_combout\,
	datad => \lcd_bus~134_combout\,
	combout => \lcd_bus~68_combout\);

-- Location: FF_X24_Y38_N27
\lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_bus~68_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(2));

-- Location: LCCOMB_X16_Y40_N4
\dut|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector43~2_combout\ = (\dut|Selector44~3_combout\) # ((\dut|state.ready~q\ & (\lcd_enable~q\ & lcd_bus(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \lcd_enable~q\,
	datac => lcd_bus(2),
	datad => \dut|Selector44~3_combout\,
	combout => \dut|Selector43~2_combout\);

-- Location: FF_X16_Y40_N5
\dut|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector43~2_combout\,
	ena => \dut|lcd_data[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(2));

-- Location: LCCOMB_X16_Y40_N8
\dut|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector42~0_combout\ = (\dut|Selector35~0_combout\ & (lcd_bus(3))) # (!\dut|Selector35~0_combout\ & (((\dut|state.initialize~q\ & \dut|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lcd_bus(3),
	datab => \dut|state.initialize~q\,
	datac => \dut|Selector35~0_combout\,
	datad => \dut|Add0~62_combout\,
	combout => \dut|Selector42~0_combout\);

-- Location: LCCOMB_X16_Y40_N26
\dut|Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector42~1_combout\ = (\dut|Selector42~0_combout\) # ((\dut|state.initialize~q\ & (!\dut|Selector35~0_combout\ & \dut|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.initialize~q\,
	datab => \dut|Selector35~0_combout\,
	datac => \dut|Selector42~0_combout\,
	datad => \dut|LessThan1~3_combout\,
	combout => \dut|Selector42~1_combout\);

-- Location: FF_X16_Y40_N27
\dut|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector42~1_combout\,
	ena => \dut|lcd_data[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(3));

-- Location: LCCOMB_X16_Y40_N6
\dut|Selector41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector41~4_combout\ = (!\dut|state.ready~q\ & (((\dut|Add0~62_combout\) # (\dut|LessThan1~3_combout\)) # (!\dut|state.initialize~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.initialize~q\,
	datab => \dut|Add0~62_combout\,
	datac => \dut|state.ready~q\,
	datad => \dut|LessThan1~3_combout\,
	combout => \dut|Selector41~4_combout\);

-- Location: LCCOMB_X16_Y40_N24
\dut|Selector41~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector41~5_combout\ = (\dut|Selector41~4_combout\) # ((lcd_bus(4) & (\lcd_enable~q\ & \dut|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lcd_bus(4),
	datab => \lcd_enable~q\,
	datac => \dut|state.ready~q\,
	datad => \dut|Selector41~4_combout\,
	combout => \dut|Selector41~5_combout\);

-- Location: FF_X16_Y40_N25
\dut|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector41~5_combout\,
	ena => \dut|lcd_data[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(4));

-- Location: LCCOMB_X24_Y40_N16
\char~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \char~2_combout\ = (\Add0~0_combout\ & ((\Add0~62_combout\) # ((!\Equal0~7_combout\) # (!\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \Equal1~0_combout\,
	datac => \Add0~0_combout\,
	datad => \Equal0~7_combout\,
	combout => \char~2_combout\);

-- Location: FF_X24_Y40_N17
\char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \char~2_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(0));

-- Location: FF_X23_Y39_N27
\lcd_line2[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[8][5]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[7][5]~q\);

-- Location: FF_X23_Y39_N29
\lcd_line2[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[7][5]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[6][5]~q\);

-- Location: LCCOMB_X23_Y39_N6
\lcd_line2[5][5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[5][5]~29_combout\ = !\lcd_line2[6][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line2[6][5]~q\,
	combout => \lcd_line2[5][5]~29_combout\);

-- Location: FF_X23_Y39_N7
\lcd_line2[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[5][5]~29_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[5][5]~q\);

-- Location: LCCOMB_X23_Y39_N10
\lcd_line2[4][5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[4][5]~30_combout\ = !\lcd_line2[5][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[5][5]~q\,
	combout => \lcd_line2[4][5]~30_combout\);

-- Location: FF_X23_Y39_N11
\lcd_line2[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[4][5]~30_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[4][5]~q\);

-- Location: LCCOMB_X23_Y39_N24
\lcd_line2[3][5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[3][5]~31_combout\ = !\lcd_line2[4][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[4][5]~q\,
	combout => \lcd_line2[3][5]~31_combout\);

-- Location: FF_X23_Y39_N25
\lcd_line2[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[3][5]~31_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[3][5]~q\);

-- Location: FF_X23_Y39_N31
\lcd_line2[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[3][5]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[2][5]~q\);

-- Location: FF_X23_Y39_N15
\lcd_line2[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[2][5]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[1][5]~q\);

-- Location: FF_X23_Y39_N19
\lcd_line2[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[1][5]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[0][5]~q\);

-- Location: LCCOMB_X24_Y41_N22
\lcd_line0b[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line0b[5]~feeder_combout\ = \lcd_line2[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[0][5]~q\,
	combout => \lcd_line0b[5]~feeder_combout\);

-- Location: FF_X24_Y41_N23
\lcd_line0b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line0b[5]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_line0b(5));

-- Location: LCCOMB_X24_Y41_N20
\lcd_line2[15][5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[15][5]~32_combout\ = !lcd_line0b(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => lcd_line0b(5),
	combout => \lcd_line2[15][5]~32_combout\);

-- Location: FF_X24_Y41_N21
\lcd_line2[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[15][5]~32_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[15][5]~q\);

-- Location: LCCOMB_X23_Y40_N0
\lcd_line2[14][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[14][5]~feeder_combout\ = \lcd_line2[15][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[15][5]~q\,
	combout => \lcd_line2[14][5]~feeder_combout\);

-- Location: FF_X23_Y40_N1
\lcd_line2[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[14][5]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[14][5]~q\);

-- Location: FF_X23_Y39_N5
\lcd_line2[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[14][5]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[13][5]~q\);

-- Location: FF_X23_Y39_N23
\lcd_line2[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[13][5]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[12][5]~q\);

-- Location: FF_X23_Y39_N3
\lcd_line2[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[12][5]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[11][5]~q\);

-- Location: LCCOMB_X23_Y39_N16
\lcd_line2[10][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[10][5]~feeder_combout\ = \lcd_line2[11][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[11][5]~q\,
	combout => \lcd_line2[10][5]~feeder_combout\);

-- Location: FF_X23_Y39_N17
\lcd_line2[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[10][5]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[10][5]~q\);

-- Location: LCCOMB_X23_Y39_N12
\lcd_line2[9][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[9][5]~feeder_combout\ = \lcd_line2[10][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[10][5]~q\,
	combout => \lcd_line2[9][5]~feeder_combout\);

-- Location: FF_X23_Y39_N13
\lcd_line2[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[9][5]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[9][5]~q\);

-- Location: LCCOMB_X23_Y39_N8
\lcd_line2[8][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[8][5]~feeder_combout\ = \lcd_line2[9][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[9][5]~q\,
	combout => \lcd_line2[8][5]~feeder_combout\);

-- Location: FF_X23_Y39_N9
\lcd_line2[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[8][5]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[8][5]~q\);

-- Location: LCCOMB_X23_Y39_N18
\lcd_bus~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~96_combout\ = (char(2) & (((char(3))))) # (!char(2) & ((char(3) & (!\lcd_line2[8][5]~q\)) # (!char(3) & ((\lcd_line2[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => \lcd_line2[8][5]~q\,
	datac => \lcd_line2[0][5]~q\,
	datad => char(3),
	combout => \lcd_bus~96_combout\);

-- Location: LCCOMB_X23_Y39_N22
\lcd_bus~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~97_combout\ = (char(2) & ((\lcd_bus~96_combout\ & (!\lcd_line2[12][5]~q\)) # (!\lcd_bus~96_combout\ & ((!\lcd_line2[4][5]~q\))))) # (!char(2) & (\lcd_bus~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => \lcd_bus~96_combout\,
	datac => \lcd_line2[12][5]~q\,
	datad => \lcd_line2[4][5]~q\,
	combout => \lcd_bus~97_combout\);

-- Location: LCCOMB_X23_Y39_N14
\lcd_bus~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~94_combout\ = (char(2) & ((char(3)) # ((\lcd_line2[5][5]~q\)))) # (!char(2) & (!char(3) & (\lcd_line2[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => char(3),
	datac => \lcd_line2[1][5]~q\,
	datad => \lcd_line2[5][5]~q\,
	combout => \lcd_bus~94_combout\);

-- Location: LCCOMB_X23_Y39_N4
\lcd_bus~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~95_combout\ = (char(3) & ((\lcd_bus~94_combout\ & (!\lcd_line2[13][5]~q\)) # (!\lcd_bus~94_combout\ & ((!\lcd_line2[9][5]~q\))))) # (!char(3) & (\lcd_bus~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(3),
	datab => \lcd_bus~94_combout\,
	datac => \lcd_line2[13][5]~q\,
	datad => \lcd_line2[9][5]~q\,
	combout => \lcd_bus~95_combout\);

-- Location: LCCOMB_X24_Y40_N14
\lcd_bus~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~98_combout\ = (char(1) & (char(0))) # (!char(1) & ((char(0) & ((\lcd_bus~95_combout\))) # (!char(0) & (\lcd_bus~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datab => char(0),
	datac => \lcd_bus~97_combout\,
	datad => \lcd_bus~95_combout\,
	combout => \lcd_bus~98_combout\);

-- Location: LCCOMB_X23_Y39_N2
\lcd_bus~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~100_combout\ = (\lcd_bus~99_combout\ & (((!\lcd_line2[15][5]~q\)) # (!char(3)))) # (!\lcd_bus~99_combout\ & (char(3) & (!\lcd_line2[11][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~99_combout\,
	datab => char(3),
	datac => \lcd_line2[11][5]~q\,
	datad => \lcd_line2[15][5]~q\,
	combout => \lcd_bus~100_combout\);

-- Location: LCCOMB_X23_Y39_N30
\lcd_bus~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~92_combout\ = (char(2) & (((char(3))))) # (!char(2) & ((char(3) & (!\lcd_line2[10][5]~q\)) # (!char(3) & ((\lcd_line2[2][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => \lcd_line2[10][5]~q\,
	datac => \lcd_line2[2][5]~q\,
	datad => char(3),
	combout => \lcd_bus~92_combout\);

-- Location: LCCOMB_X23_Y39_N28
\lcd_bus~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~93_combout\ = (char(2) & ((\lcd_bus~92_combout\ & (!\lcd_line2[14][5]~q\)) # (!\lcd_bus~92_combout\ & ((!\lcd_line2[6][5]~q\))))) # (!char(2) & (((\lcd_bus~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => \lcd_line2[14][5]~q\,
	datac => \lcd_line2[6][5]~q\,
	datad => \lcd_bus~92_combout\,
	combout => \lcd_bus~93_combout\);

-- Location: LCCOMB_X24_Y40_N20
\lcd_bus~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~101_combout\ = (char(1) & ((\lcd_bus~98_combout\ & (\lcd_bus~100_combout\)) # (!\lcd_bus~98_combout\ & ((\lcd_bus~93_combout\))))) # (!char(1) & (\lcd_bus~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datab => \lcd_bus~98_combout\,
	datac => \lcd_bus~100_combout\,
	datad => \lcd_bus~93_combout\,
	combout => \lcd_bus~101_combout\);

-- Location: LCCOMB_X24_Y38_N12
\lcd_bus~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~112_combout\ = (\lcd_bus~111_combout\ & ((\lcd_bus~67_combout\) # ((\lcd_bus~101_combout\ & \lcd_bus~134_combout\)))) # (!\lcd_bus~111_combout\ & (\lcd_bus~101_combout\ & ((\lcd_bus~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~111_combout\,
	datab => \lcd_bus~101_combout\,
	datac => \lcd_bus~67_combout\,
	datad => \lcd_bus~134_combout\,
	combout => \lcd_bus~112_combout\);

-- Location: FF_X24_Y38_N13
\lcd_bus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_bus~112_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(5));

-- Location: LCCOMB_X16_Y40_N14
\dut|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector40~2_combout\ = (\dut|Selector41~4_combout\) # ((\dut|state.ready~q\ & (\lcd_enable~q\ & lcd_bus(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \lcd_enable~q\,
	datac => lcd_bus(5),
	datad => \dut|Selector41~4_combout\,
	combout => \dut|Selector40~2_combout\);

-- Location: FF_X16_Y40_N15
\dut|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector40~2_combout\,
	ena => \dut|lcd_data[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(5));

-- Location: LCCOMB_X24_Y40_N28
\lcd_bus[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus[6]~2_combout\ = (\lcd_bus~5_combout\ & (\lcd_bus~122_combout\)) # (!\lcd_bus~5_combout\ & ((\Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~122_combout\,
	datab => \Equal0~14_combout\,
	datad => \lcd_bus~5_combout\,
	combout => \lcd_bus[6]~2_combout\);

-- Location: LCCOMB_X20_Y39_N28
\lcd_line2[13][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[13][6]~feeder_combout\ = \lcd_line2[14][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[14][6]~q\,
	combout => \lcd_line2[13][6]~feeder_combout\);

-- Location: FF_X20_Y39_N29
\lcd_line2[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[13][6]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[13][6]~q\);

-- Location: FF_X20_Y39_N27
\lcd_line2[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[13][6]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[12][6]~q\);

-- Location: FF_X20_Y39_N7
\lcd_line2[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[12][6]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[11][6]~q\);

-- Location: LCCOMB_X20_Y39_N10
\lcd_line2[10][6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[10][6]~34_combout\ = !\lcd_line2[11][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[11][6]~q\,
	combout => \lcd_line2[10][6]~34_combout\);

-- Location: FF_X20_Y39_N11
\lcd_line2[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[10][6]~34_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[10][6]~q\);

-- Location: LCCOMB_X20_Y39_N18
\lcd_line2[9][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[9][6]~feeder_combout\ = \lcd_line2[10][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[10][6]~q\,
	combout => \lcd_line2[9][6]~feeder_combout\);

-- Location: FF_X20_Y39_N19
\lcd_line2[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[9][6]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[9][6]~q\);

-- Location: FF_X20_Y39_N5
\lcd_line2[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[9][6]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[8][6]~q\);

-- Location: FF_X20_Y39_N21
\lcd_line2[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[8][6]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[7][6]~q\);

-- Location: FF_X20_Y39_N31
\lcd_line2[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[7][6]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[6][6]~q\);

-- Location: FF_X20_Y39_N13
\lcd_line2[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[6][6]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[5][6]~q\);

-- Location: LCCOMB_X20_Y39_N24
\lcd_line2[4][6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[4][6]~33_combout\ = !\lcd_line2[5][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd_line2[5][6]~q\,
	combout => \lcd_line2[4][6]~33_combout\);

-- Location: FF_X20_Y39_N25
\lcd_line2[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[4][6]~33_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[4][6]~q\);

-- Location: LCCOMB_X20_Y39_N0
\lcd_line2[3][6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[3][6]~35_combout\ = !\lcd_line2[4][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[4][6]~q\,
	combout => \lcd_line2[3][6]~35_combout\);

-- Location: FF_X20_Y39_N1
\lcd_line2[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[3][6]~35_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[3][6]~q\);

-- Location: LCCOMB_X20_Y39_N8
\lcd_line2[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line2[2][6]~feeder_combout\ = \lcd_line2[3][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[3][6]~q\,
	combout => \lcd_line2[2][6]~feeder_combout\);

-- Location: FF_X20_Y39_N9
\lcd_line2[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line2[2][6]~feeder_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[2][6]~q\);

-- Location: FF_X20_Y39_N15
\lcd_line2[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[2][6]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[1][6]~q\);

-- Location: FF_X20_Y39_N17
\lcd_line2[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[1][6]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[0][6]~q\);

-- Location: LCCOMB_X24_Y40_N26
\lcd_line0b[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_line0b[6]~2_combout\ = !\lcd_line2[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_line2[0][6]~q\,
	combout => \lcd_line0b[6]~2_combout\);

-- Location: FF_X24_Y40_N27
\lcd_line0b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_line0b[6]~2_combout\,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_line0b(6));

-- Location: FF_X24_Y39_N3
\lcd_line2[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => lcd_line0b(6),
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[15][6]~q\);

-- Location: FF_X20_Y39_N3
\lcd_line2[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \lcd_line2[15][6]~q\,
	sload => VCC,
	ena => \lcd_line2[0][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_line2[14][6]~q\);

-- Location: LCCOMB_X20_Y39_N22
\lcd_bus~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~131_combout\ = (\lcd_bus~130_combout\ & (((\lcd_line2[15][6]~q\) # (!char(1))))) # (!\lcd_bus~130_combout\ & (\lcd_line2[14][6]~q\ & ((char(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus~130_combout\,
	datab => \lcd_line2[14][6]~q\,
	datac => \lcd_line2[15][6]~q\,
	datad => char(1),
	combout => \lcd_bus~131_combout\);

-- Location: LCCOMB_X20_Y39_N12
\lcd_bus~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~123_combout\ = (char(0) & ((char(1)) # ((!\lcd_line2[5][6]~q\)))) # (!char(0) & (!char(1) & ((\lcd_line2[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => char(1),
	datac => \lcd_line2[5][6]~q\,
	datad => \lcd_line2[4][6]~q\,
	combout => \lcd_bus~123_combout\);

-- Location: LCCOMB_X20_Y39_N30
\lcd_bus~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~124_combout\ = (char(1) & ((\lcd_bus~123_combout\ & (!\lcd_line2[7][6]~q\)) # (!\lcd_bus~123_combout\ & ((!\lcd_line2[6][6]~q\))))) # (!char(1) & (((\lcd_bus~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_line2[7][6]~q\,
	datab => char(1),
	datac => \lcd_line2[6][6]~q\,
	datad => \lcd_bus~123_combout\,
	combout => \lcd_bus~124_combout\);

-- Location: LCCOMB_X20_Y39_N4
\lcd_bus~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~125_combout\ = (char(0) & (char(1))) # (!char(0) & ((char(1) & ((!\lcd_line2[10][6]~q\))) # (!char(1) & (!\lcd_line2[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => char(1),
	datac => \lcd_line2[8][6]~q\,
	datad => \lcd_line2[10][6]~q\,
	combout => \lcd_bus~125_combout\);

-- Location: LCCOMB_X20_Y39_N6
\lcd_bus~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~126_combout\ = (char(0) & ((\lcd_bus~125_combout\ & ((\lcd_line2[11][6]~q\))) # (!\lcd_bus~125_combout\ & (!\lcd_line2[9][6]~q\)))) # (!char(0) & (((\lcd_bus~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => \lcd_line2[9][6]~q\,
	datac => \lcd_line2[11][6]~q\,
	datad => \lcd_bus~125_combout\,
	combout => \lcd_bus~126_combout\);

-- Location: LCCOMB_X20_Y39_N16
\lcd_bus~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~127_combout\ = (char(0) & (((char(1))))) # (!char(0) & ((char(1) & (!\lcd_line2[2][6]~q\)) # (!char(1) & ((!\lcd_line2[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => \lcd_line2[2][6]~q\,
	datac => \lcd_line2[0][6]~q\,
	datad => char(1),
	combout => \lcd_bus~127_combout\);

-- Location: LCCOMB_X20_Y39_N14
\lcd_bus~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~128_combout\ = (char(0) & ((\lcd_bus~127_combout\ & (!\lcd_line2[3][6]~q\)) # (!\lcd_bus~127_combout\ & ((!\lcd_line2[1][6]~q\))))) # (!char(0) & (((\lcd_bus~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => \lcd_line2[3][6]~q\,
	datac => \lcd_line2[1][6]~q\,
	datad => \lcd_bus~127_combout\,
	combout => \lcd_bus~128_combout\);

-- Location: LCCOMB_X21_Y38_N2
\lcd_bus~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~129_combout\ = (char(2) & (char(3))) # (!char(2) & ((char(3) & (\lcd_bus~126_combout\)) # (!char(3) & ((\lcd_bus~128_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => char(3),
	datac => \lcd_bus~126_combout\,
	datad => \lcd_bus~128_combout\,
	combout => \lcd_bus~129_combout\);

-- Location: LCCOMB_X21_Y38_N16
\lcd_bus~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~132_combout\ = (char(2) & ((\lcd_bus~129_combout\ & (\lcd_bus~131_combout\)) # (!\lcd_bus~129_combout\ & ((\lcd_bus~124_combout\))))) # (!char(2) & (((\lcd_bus~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => \lcd_bus~131_combout\,
	datac => \lcd_bus~124_combout\,
	datad => \lcd_bus~129_combout\,
	combout => \lcd_bus~132_combout\);

-- Location: FF_X24_Y40_N29
\lcd_bus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_bus[6]~2_combout\,
	asdata => \lcd_bus~132_combout\,
	sclr => \Equal1~2_combout\,
	sload => \process_0~4_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(6));

-- Location: LCCOMB_X20_Y40_N28
\dut|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector39~0_combout\ = (\lcd_enable~q\ & (\dut|state.ready~q\ & lcd_bus(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_enable~q\,
	datac => \dut|state.ready~q\,
	datad => lcd_bus(6),
	combout => \dut|Selector39~0_combout\);

-- Location: FF_X16_Y40_N31
\dut|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dut|Selector39~0_combout\,
	sload => VCC,
	ena => \dut|lcd_data[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(6));

-- Location: LCCOMB_X16_Y39_N18
\dut|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector38~0_combout\ = (lcd_bus(7) & (\dut|state.ready~q\ & \lcd_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lcd_bus(7),
	datab => \dut|state.ready~q\,
	datad => \lcd_enable~q\,
	combout => \dut|Selector38~0_combout\);

-- Location: FF_X16_Y40_N17
\dut|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \dut|Selector38~0_combout\,
	sload => VCC,
	ena => \dut|lcd_data[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(7));

-- Location: LCCOMB_X17_Y38_N6
\dut|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector35~1_combout\ = (\dut|Selector35~0_combout\) # ((\dut|state.send~q\ & ((\dut|LessThan9~8_combout\) # (\dut|clk_count\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector35~0_combout\,
	datab => \dut|LessThan9~8_combout\,
	datac => \dut|state.send~q\,
	datad => \dut|clk_count\(31),
	combout => \dut|Selector35~1_combout\);

-- Location: FF_X17_Y38_N7
\dut|state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.send~q\);

-- Location: LCCOMB_X18_Y39_N10
\dut|Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~6_combout\ = (!\dut|state.send~q\ & (\dut|state.initialize~q\ & !\dut|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|state.send~q\,
	datac => \dut|state.initialize~q\,
	datad => \dut|Add0~60_combout\,
	combout => \dut|Selector46~6_combout\);

-- Location: LCCOMB_X17_Y39_N14
\dut|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan1~2_combout\ = (!\dut|Add0~58_combout\ & (\dut|LessThan1~1_combout\ & \dut|LessThan4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~58_combout\,
	datac => \dut|LessThan1~1_combout\,
	datad => \dut|LessThan4~2_combout\,
	combout => \dut|LessThan1~2_combout\);

-- Location: LCCOMB_X17_Y39_N0
\dut|Selector46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~7_combout\ = (\dut|Selector46~6_combout\ & ((\dut|LessThan1~2_combout\) # ((!\dut|LessThan2~3_combout\ & \dut|LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan2~3_combout\,
	datab => \dut|Selector46~6_combout\,
	datac => \dut|LessThan1~2_combout\,
	datad => \dut|LessThan3~4_combout\,
	combout => \dut|Selector46~7_combout\);

-- Location: LCCOMB_X17_Y39_N26
\dut|Selector46~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~9_combout\ = (\dut|LessThan7~5_combout\) # ((\dut|e~q\ & (!\dut|LessThan8~9_combout\ & !\dut|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|e~q\,
	datab => \dut|LessThan8~9_combout\,
	datac => \dut|Add0~62_combout\,
	datad => \dut|LessThan7~5_combout\,
	combout => \dut|Selector46~9_combout\);

-- Location: LCCOMB_X17_Y40_N4
\dut|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan2~3_combout\ = (!\dut|Add0~24_combout\ & (!\dut|Add0~58_combout\ & (\dut|LessThan2~2_combout\ & \dut|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~24_combout\,
	datab => \dut|Add0~58_combout\,
	datac => \dut|LessThan2~2_combout\,
	datad => \dut|LessThan4~2_combout\,
	combout => \dut|LessThan2~3_combout\);

-- Location: LCCOMB_X17_Y39_N20
\dut|Selector46~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~10_combout\ = (!\dut|busy~3_combout\ & (!\dut|LessThan2~3_combout\ & ((\dut|Add0~58_combout\) # (!\dut|LessThan4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~3_combout\,
	datab => \dut|Add0~58_combout\,
	datac => \dut|LessThan2~3_combout\,
	datad => \dut|LessThan4~5_combout\,
	combout => \dut|Selector46~10_combout\);

-- Location: LCCOMB_X17_Y39_N22
\dut|Selector46~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~11_combout\ = (\dut|Selector46~8_combout\ & (\dut|Selector46~9_combout\ & ((\dut|Add0~60_combout\) # (\dut|Selector46~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector46~8_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|Selector46~9_combout\,
	datad => \dut|Selector46~10_combout\,
	combout => \dut|Selector46~11_combout\);

-- Location: LCCOMB_X16_Y39_N22
\dut|Selector46~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~13_combout\ = (\dut|state.initialize~q\ & ((\dut|state.send~q\))) # (!\dut|state.initialize~q\ & (\dut|e~q\ & !\dut|state.send~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|e~q\,
	datab => \dut|state.initialize~q\,
	datac => \dut|state.send~q\,
	combout => \dut|Selector46~13_combout\);

-- Location: LCCOMB_X16_Y40_N20
\dut|Selector46~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~14_combout\ = (\dut|state.initialize~q\ & (!\dut|Selector46~13_combout\ & ((\dut|Add0~62_combout\) # (\dut|Selector46~12_combout\)))) # (!\dut|state.initialize~q\ & (((\dut|Selector46~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.initialize~q\,
	datab => \dut|Add0~62_combout\,
	datac => \dut|Selector46~13_combout\,
	datad => \dut|Selector46~12_combout\,
	combout => \dut|Selector46~14_combout\);

-- Location: LCCOMB_X17_Y39_N4
\dut|Selector46~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~15_combout\ = (\dut|Selector46~5_combout\) # ((\dut|Selector46~7_combout\) # ((\dut|Selector46~11_combout\) # (\dut|Selector46~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector46~5_combout\,
	datab => \dut|Selector46~7_combout\,
	datac => \dut|Selector46~11_combout\,
	datad => \dut|Selector46~14_combout\,
	combout => \dut|Selector46~15_combout\);

-- Location: FF_X17_Y39_N5
\dut|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|Selector46~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|e~q\);

-- Location: LCCOMB_X23_Y39_N0
\lcd_bus~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus~6_combout\ = (!\Equal1~2_combout\ & ((\process_0~4_combout\) # (\lcd_bus~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~2_combout\,
	datac => \process_0~4_combout\,
	datad => \lcd_bus~5_combout\,
	combout => \lcd_bus~6_combout\);

-- Location: FF_X23_Y39_N1
\lcd_bus[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lcd_bus~6_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(9));

-- Location: LCCOMB_X17_Y38_N26
\dut|rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|rs~0_combout\ = (\dut|rs~q\ & ((\dut|state.power_up~q\ & (!\dut|state.ready~q\)) # (!\dut|state.power_up~q\ & ((\dut|LessThan0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|rs~q\,
	datab => \dut|state.ready~q\,
	datac => \dut|state.power_up~q\,
	datad => \dut|LessThan0~8_combout\,
	combout => \dut|rs~0_combout\);

-- Location: LCCOMB_X17_Y38_N20
\dut|rs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|rs~1_combout\ = (\dut|rs~0_combout\) # ((\dut|state.power_up~q\ & (lcd_bus(9) & \dut|Selector35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.power_up~q\,
	datab => lcd_bus(9),
	datac => \dut|rs~0_combout\,
	datad => \dut|Selector35~0_combout\,
	combout => \dut|rs~1_combout\);

-- Location: FF_X17_Y38_N21
\dut|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \dut|rs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|rs~q\);

-- Location: IOIBUF_X0_Y52_N15
\LCD_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(0),
	o => \LCD_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\LCD_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(1),
	o => \LCD_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\LCD_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(2),
	o => \LCD_DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\LCD_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(3),
	o => \LCD_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\LCD_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(4),
	o => \LCD_DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\LCD_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(5),
	o => \LCD_DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\LCD_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(6),
	o => \LCD_DATA[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\LCD_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(7),
	o => \LCD_DATA[7]~input_o\);

ww_LCD_BLON <= \LCD_BLON~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

LCD_DATA(7) <= \LCD_DATA[7]~output_o\;
END structure;


