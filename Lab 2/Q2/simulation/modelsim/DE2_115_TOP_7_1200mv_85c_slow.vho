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

-- DATE "10/06/2014 18:15:12"

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

ENTITY 	DE2_115_TOP IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END DE2_115_TOP;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE2_115_TOP IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BUTTON|DBx~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BUTTON|State~q\ : std_logic;
SIGNAL \BUTTON|Add0~0_combout\ : std_logic;
SIGNAL \BUTTON|Add0~1\ : std_logic;
SIGNAL \BUTTON|Add0~2_combout\ : std_logic;
SIGNAL \BUTTON|Add0~3\ : std_logic;
SIGNAL \BUTTON|Add0~4_combout\ : std_logic;
SIGNAL \BUTTON|Add0~5\ : std_logic;
SIGNAL \BUTTON|Add0~6_combout\ : std_logic;
SIGNAL \BUTTON|Add0~7\ : std_logic;
SIGNAL \BUTTON|Add0~8_combout\ : std_logic;
SIGNAL \BUTTON|Add0~9\ : std_logic;
SIGNAL \BUTTON|Add0~10_combout\ : std_logic;
SIGNAL \BUTTON|Add0~11\ : std_logic;
SIGNAL \BUTTON|Add0~12_combout\ : std_logic;
SIGNAL \BUTTON|Add0~13\ : std_logic;
SIGNAL \BUTTON|Add0~14_combout\ : std_logic;
SIGNAL \BUTTON|Add0~15\ : std_logic;
SIGNAL \BUTTON|Add0~16_combout\ : std_logic;
SIGNAL \BUTTON|Add0~17\ : std_logic;
SIGNAL \BUTTON|Add0~18_combout\ : std_logic;
SIGNAL \BUTTON|Add0~19\ : std_logic;
SIGNAL \BUTTON|Add0~20_combout\ : std_logic;
SIGNAL \BUTTON|Add0~21\ : std_logic;
SIGNAL \BUTTON|Add0~22_combout\ : std_logic;
SIGNAL \BUTTON|Add0~23\ : std_logic;
SIGNAL \BUTTON|Add0~24_combout\ : std_logic;
SIGNAL \BUTTON|Add0~25\ : std_logic;
SIGNAL \BUTTON|Add0~26_combout\ : std_logic;
SIGNAL \BUTTON|Add0~27\ : std_logic;
SIGNAL \BUTTON|Add0~28_combout\ : std_logic;
SIGNAL \BUTTON|Add0~29\ : std_logic;
SIGNAL \BUTTON|Add0~30_combout\ : std_logic;
SIGNAL \BUTTON|Add0~31\ : std_logic;
SIGNAL \BUTTON|Add0~32_combout\ : std_logic;
SIGNAL \BUTTON|Add0~33\ : std_logic;
SIGNAL \BUTTON|Add0~34_combout\ : std_logic;
SIGNAL \BUTTON|Add0~35\ : std_logic;
SIGNAL \BUTTON|Add0~36_combout\ : std_logic;
SIGNAL \BUTTON|Add0~37\ : std_logic;
SIGNAL \BUTTON|Add0~38_combout\ : std_logic;
SIGNAL \BUTTON|Add0~39\ : std_logic;
SIGNAL \BUTTON|Add0~40_combout\ : std_logic;
SIGNAL \BUTTON|Add0~41\ : std_logic;
SIGNAL \BUTTON|Add0~42_combout\ : std_logic;
SIGNAL \BUTTON|Add0~43\ : std_logic;
SIGNAL \BUTTON|Add0~44_combout\ : std_logic;
SIGNAL \BUTTON|Add0~45\ : std_logic;
SIGNAL \BUTTON|Add0~46_combout\ : std_logic;
SIGNAL \BUTTON|Add0~47\ : std_logic;
SIGNAL \BUTTON|Add0~48_combout\ : std_logic;
SIGNAL \BUTTON|Add0~49\ : std_logic;
SIGNAL \BUTTON|Add0~50_combout\ : std_logic;
SIGNAL \BUTTON|Add0~51\ : std_logic;
SIGNAL \BUTTON|Add0~52_combout\ : std_logic;
SIGNAL \BUTTON|Add0~53\ : std_logic;
SIGNAL \BUTTON|Add0~54_combout\ : std_logic;
SIGNAL \BUTTON|Add0~55\ : std_logic;
SIGNAL \BUTTON|Add0~56_combout\ : std_logic;
SIGNAL \BUTTON|Add0~57\ : std_logic;
SIGNAL \BUTTON|Add0~58_combout\ : std_logic;
SIGNAL \BUTTON|Add0~59\ : std_logic;
SIGNAL \BUTTON|Add0~60_combout\ : std_logic;
SIGNAL \BUTTON|Add0~61\ : std_logic;
SIGNAL \BUTTON|Add0~62_combout\ : std_logic;
SIGNAL \BUTTON|DBx~0_combout\ : std_logic;
SIGNAL \BUTTON|DBx~1_combout\ : std_logic;
SIGNAL \BUTTON|DBx~2_combout\ : std_logic;
SIGNAL \BUTTON|DBx~3_combout\ : std_logic;
SIGNAL \BUTTON|DPB~q\ : std_logic;
SIGNAL \BUTTON|Equal0~0_combout\ : std_logic;
SIGNAL \BUTTON|Equal0~1_combout\ : std_logic;
SIGNAL \BUTTON|Equal0~2_combout\ : std_logic;
SIGNAL \BUTTON|Equal0~3_combout\ : std_logic;
SIGNAL \BUTTON|Equal0~4_combout\ : std_logic;
SIGNAL \BUTTON|Equal0~5_combout\ : std_logic;
SIGNAL \BUTTON|State~0_combout\ : std_logic;
SIGNAL \BUTTON|State~1_combout\ : std_logic;
SIGNAL \BUTTON|State~2_combout\ : std_logic;
SIGNAL \BUTTON|State~3_combout\ : std_logic;
SIGNAL \BUTTON|State~4_combout\ : std_logic;
SIGNAL \BUTTON|SPB~q\ : std_logic;
SIGNAL \BUTTON|SDC~0_combout\ : std_logic;
SIGNAL \BUTTON|SDC~1_combout\ : std_logic;
SIGNAL \BUTTON|SDC~2_combout\ : std_logic;
SIGNAL \BUTTON|SDC~3_combout\ : std_logic;
SIGNAL \BUTTON|SDC~4_combout\ : std_logic;
SIGNAL \BUTTON|SDC~5_combout\ : std_logic;
SIGNAL \BUTTON|SDC~6_combout\ : std_logic;
SIGNAL \BUTTON|SDC~7_combout\ : std_logic;
SIGNAL \BUTTON|SDC~8_combout\ : std_logic;
SIGNAL \BUTTON|SDC~9_combout\ : std_logic;
SIGNAL \BUTTON|SDC~10_combout\ : std_logic;
SIGNAL \BUTTON|SDC~11_combout\ : std_logic;
SIGNAL \BUTTON|SDC~12_combout\ : std_logic;
SIGNAL \BUTTON|SDC~13_combout\ : std_logic;
SIGNAL \BUTTON|SDC~14_combout\ : std_logic;
SIGNAL \BUTTON|SDC~15_combout\ : std_logic;
SIGNAL \BUTTON|SDC~16_combout\ : std_logic;
SIGNAL \BUTTON|SDC~17_combout\ : std_logic;
SIGNAL \BUTTON|SDC~18_combout\ : std_logic;
SIGNAL \BUTTON|SDC~19_combout\ : std_logic;
SIGNAL \BUTTON|SDC~20_combout\ : std_logic;
SIGNAL \BUTTON|SDC~21_combout\ : std_logic;
SIGNAL \BUTTON|SDC~22_combout\ : std_logic;
SIGNAL \BUTTON|SDC~23_combout\ : std_logic;
SIGNAL \BUTTON|SDC~24_combout\ : std_logic;
SIGNAL \BUTTON|SDC~25_combout\ : std_logic;
SIGNAL \BUTTON|SDC~26_combout\ : std_logic;
SIGNAL \BUTTON|SDC~27_combout\ : std_logic;
SIGNAL \BUTTON|SDC~28_combout\ : std_logic;
SIGNAL \BUTTON|SDC~29_combout\ : std_logic;
SIGNAL \BUTTON|SDC~30_combout\ : std_logic;
SIGNAL \BUTTON|SDC~31_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \BUTTON|DReg[3]~feeder_combout\ : std_logic;
SIGNAL \BUTTON|DReg[5]~feeder_combout\ : std_logic;
SIGNAL \BUTTON|DReg[1]~feeder_combout\ : std_logic;
SIGNAL \BUTTON|DReg[2]~feeder_combout\ : std_logic;
SIGNAL \BUTTON|DReg[0]~feeder_combout\ : std_logic;
SIGNAL \BUTTON|DPB~feeder_combout\ : std_logic;
SIGNAL \BUTTON|SPB~feeder_combout\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \BUTTON|DBx~feeder_combout\ : std_logic;
SIGNAL \BUTTON|DBx~q\ : std_logic;
SIGNAL \BUTTON|DBx~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SA1|state_present~0_combout\ : std_logic;
SIGNAL \SA1|state_present~q\ : std_logic;
SIGNAL \SA1|s~0_combout\ : std_logic;
SIGNAL \SA1|s~q\ : std_logic;
SIGNAL \BUTTON|SDC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \BUTTON|DReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BUTTON|ALT_INV_State~q\ : std_logic;
SIGNAL \SA1|ALT_INV_state_present~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\BUTTON|DBx~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \BUTTON|DBx~q\);
\BUTTON|ALT_INV_State~q\ <= NOT \BUTTON|State~q\;
\SA1|ALT_INV_state_present~q\ <= NOT \SA1|state_present~q\;

-- Location: FF_X42_Y28_N9
\BUTTON|State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|State~4_combout\,
	asdata => VCC,
	sload => \BUTTON|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|State~q\);

-- Location: LCCOMB_X41_Y29_N0
\BUTTON|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~0_combout\ = \BUTTON|SDC\(0) $ (GND)
-- \BUTTON|Add0~1\ = CARRY(!\BUTTON|SDC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(0),
	datad => VCC,
	combout => \BUTTON|Add0~0_combout\,
	cout => \BUTTON|Add0~1\);

-- Location: LCCOMB_X41_Y29_N2
\BUTTON|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~2_combout\ = (\BUTTON|SDC\(1) & (\BUTTON|Add0~1\ & VCC)) # (!\BUTTON|SDC\(1) & (!\BUTTON|Add0~1\))
-- \BUTTON|Add0~3\ = CARRY((!\BUTTON|SDC\(1) & !\BUTTON|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(1),
	datad => VCC,
	cin => \BUTTON|Add0~1\,
	combout => \BUTTON|Add0~2_combout\,
	cout => \BUTTON|Add0~3\);

-- Location: LCCOMB_X41_Y29_N4
\BUTTON|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~4_combout\ = (\BUTTON|SDC\(2) & ((GND) # (!\BUTTON|Add0~3\))) # (!\BUTTON|SDC\(2) & (\BUTTON|Add0~3\ $ (GND)))
-- \BUTTON|Add0~5\ = CARRY((\BUTTON|SDC\(2)) # (!\BUTTON|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(2),
	datad => VCC,
	cin => \BUTTON|Add0~3\,
	combout => \BUTTON|Add0~4_combout\,
	cout => \BUTTON|Add0~5\);

-- Location: LCCOMB_X41_Y29_N6
\BUTTON|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~6_combout\ = (\BUTTON|SDC\(3) & (\BUTTON|Add0~5\ & VCC)) # (!\BUTTON|SDC\(3) & (!\BUTTON|Add0~5\))
-- \BUTTON|Add0~7\ = CARRY((!\BUTTON|SDC\(3) & !\BUTTON|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(3),
	datad => VCC,
	cin => \BUTTON|Add0~5\,
	combout => \BUTTON|Add0~6_combout\,
	cout => \BUTTON|Add0~7\);

-- Location: LCCOMB_X41_Y29_N8
\BUTTON|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~8_combout\ = (\BUTTON|SDC\(4) & ((GND) # (!\BUTTON|Add0~7\))) # (!\BUTTON|SDC\(4) & (\BUTTON|Add0~7\ $ (GND)))
-- \BUTTON|Add0~9\ = CARRY((\BUTTON|SDC\(4)) # (!\BUTTON|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(4),
	datad => VCC,
	cin => \BUTTON|Add0~7\,
	combout => \BUTTON|Add0~8_combout\,
	cout => \BUTTON|Add0~9\);

-- Location: LCCOMB_X41_Y29_N10
\BUTTON|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~10_combout\ = (\BUTTON|SDC\(5) & (\BUTTON|Add0~9\ & VCC)) # (!\BUTTON|SDC\(5) & (!\BUTTON|Add0~9\))
-- \BUTTON|Add0~11\ = CARRY((!\BUTTON|SDC\(5) & !\BUTTON|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(5),
	datad => VCC,
	cin => \BUTTON|Add0~9\,
	combout => \BUTTON|Add0~10_combout\,
	cout => \BUTTON|Add0~11\);

-- Location: LCCOMB_X41_Y29_N12
\BUTTON|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~12_combout\ = (\BUTTON|SDC\(6) & ((GND) # (!\BUTTON|Add0~11\))) # (!\BUTTON|SDC\(6) & (\BUTTON|Add0~11\ $ (GND)))
-- \BUTTON|Add0~13\ = CARRY((\BUTTON|SDC\(6)) # (!\BUTTON|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(6),
	datad => VCC,
	cin => \BUTTON|Add0~11\,
	combout => \BUTTON|Add0~12_combout\,
	cout => \BUTTON|Add0~13\);

-- Location: LCCOMB_X41_Y29_N14
\BUTTON|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~14_combout\ = (\BUTTON|SDC\(7) & (\BUTTON|Add0~13\ & VCC)) # (!\BUTTON|SDC\(7) & (!\BUTTON|Add0~13\))
-- \BUTTON|Add0~15\ = CARRY((!\BUTTON|SDC\(7) & !\BUTTON|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(7),
	datad => VCC,
	cin => \BUTTON|Add0~13\,
	combout => \BUTTON|Add0~14_combout\,
	cout => \BUTTON|Add0~15\);

-- Location: LCCOMB_X41_Y29_N16
\BUTTON|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~16_combout\ = (\BUTTON|SDC\(8) & ((GND) # (!\BUTTON|Add0~15\))) # (!\BUTTON|SDC\(8) & (\BUTTON|Add0~15\ $ (GND)))
-- \BUTTON|Add0~17\ = CARRY((\BUTTON|SDC\(8)) # (!\BUTTON|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(8),
	datad => VCC,
	cin => \BUTTON|Add0~15\,
	combout => \BUTTON|Add0~16_combout\,
	cout => \BUTTON|Add0~17\);

-- Location: LCCOMB_X41_Y29_N18
\BUTTON|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~18_combout\ = (\BUTTON|SDC\(9) & (\BUTTON|Add0~17\ & VCC)) # (!\BUTTON|SDC\(9) & (!\BUTTON|Add0~17\))
-- \BUTTON|Add0~19\ = CARRY((!\BUTTON|SDC\(9) & !\BUTTON|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(9),
	datad => VCC,
	cin => \BUTTON|Add0~17\,
	combout => \BUTTON|Add0~18_combout\,
	cout => \BUTTON|Add0~19\);

-- Location: LCCOMB_X41_Y29_N20
\BUTTON|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~20_combout\ = (\BUTTON|SDC\(10) & ((GND) # (!\BUTTON|Add0~19\))) # (!\BUTTON|SDC\(10) & (\BUTTON|Add0~19\ $ (GND)))
-- \BUTTON|Add0~21\ = CARRY((\BUTTON|SDC\(10)) # (!\BUTTON|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(10),
	datad => VCC,
	cin => \BUTTON|Add0~19\,
	combout => \BUTTON|Add0~20_combout\,
	cout => \BUTTON|Add0~21\);

-- Location: LCCOMB_X41_Y29_N22
\BUTTON|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~22_combout\ = (\BUTTON|SDC\(11) & (\BUTTON|Add0~21\ & VCC)) # (!\BUTTON|SDC\(11) & (!\BUTTON|Add0~21\))
-- \BUTTON|Add0~23\ = CARRY((!\BUTTON|SDC\(11) & !\BUTTON|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(11),
	datad => VCC,
	cin => \BUTTON|Add0~21\,
	combout => \BUTTON|Add0~22_combout\,
	cout => \BUTTON|Add0~23\);

-- Location: LCCOMB_X41_Y29_N24
\BUTTON|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~24_combout\ = (\BUTTON|SDC\(12) & ((GND) # (!\BUTTON|Add0~23\))) # (!\BUTTON|SDC\(12) & (\BUTTON|Add0~23\ $ (GND)))
-- \BUTTON|Add0~25\ = CARRY((\BUTTON|SDC\(12)) # (!\BUTTON|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(12),
	datad => VCC,
	cin => \BUTTON|Add0~23\,
	combout => \BUTTON|Add0~24_combout\,
	cout => \BUTTON|Add0~25\);

-- Location: LCCOMB_X41_Y29_N26
\BUTTON|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~26_combout\ = (\BUTTON|SDC\(13) & (\BUTTON|Add0~25\ & VCC)) # (!\BUTTON|SDC\(13) & (!\BUTTON|Add0~25\))
-- \BUTTON|Add0~27\ = CARRY((!\BUTTON|SDC\(13) & !\BUTTON|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(13),
	datad => VCC,
	cin => \BUTTON|Add0~25\,
	combout => \BUTTON|Add0~26_combout\,
	cout => \BUTTON|Add0~27\);

-- Location: LCCOMB_X41_Y29_N28
\BUTTON|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~28_combout\ = (\BUTTON|SDC\(14) & ((GND) # (!\BUTTON|Add0~27\))) # (!\BUTTON|SDC\(14) & (\BUTTON|Add0~27\ $ (GND)))
-- \BUTTON|Add0~29\ = CARRY((\BUTTON|SDC\(14)) # (!\BUTTON|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(14),
	datad => VCC,
	cin => \BUTTON|Add0~27\,
	combout => \BUTTON|Add0~28_combout\,
	cout => \BUTTON|Add0~29\);

-- Location: LCCOMB_X41_Y29_N30
\BUTTON|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~30_combout\ = (\BUTTON|SDC\(15) & (\BUTTON|Add0~29\ & VCC)) # (!\BUTTON|SDC\(15) & (!\BUTTON|Add0~29\))
-- \BUTTON|Add0~31\ = CARRY((!\BUTTON|SDC\(15) & !\BUTTON|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(15),
	datad => VCC,
	cin => \BUTTON|Add0~29\,
	combout => \BUTTON|Add0~30_combout\,
	cout => \BUTTON|Add0~31\);

-- Location: LCCOMB_X41_Y28_N0
\BUTTON|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~32_combout\ = (\BUTTON|SDC\(16) & ((GND) # (!\BUTTON|Add0~31\))) # (!\BUTTON|SDC\(16) & (\BUTTON|Add0~31\ $ (GND)))
-- \BUTTON|Add0~33\ = CARRY((\BUTTON|SDC\(16)) # (!\BUTTON|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(16),
	datad => VCC,
	cin => \BUTTON|Add0~31\,
	combout => \BUTTON|Add0~32_combout\,
	cout => \BUTTON|Add0~33\);

-- Location: LCCOMB_X41_Y28_N2
\BUTTON|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~34_combout\ = (\BUTTON|SDC\(17) & (\BUTTON|Add0~33\ & VCC)) # (!\BUTTON|SDC\(17) & (!\BUTTON|Add0~33\))
-- \BUTTON|Add0~35\ = CARRY((!\BUTTON|SDC\(17) & !\BUTTON|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(17),
	datad => VCC,
	cin => \BUTTON|Add0~33\,
	combout => \BUTTON|Add0~34_combout\,
	cout => \BUTTON|Add0~35\);

-- Location: LCCOMB_X41_Y28_N4
\BUTTON|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~36_combout\ = (\BUTTON|SDC\(18) & ((GND) # (!\BUTTON|Add0~35\))) # (!\BUTTON|SDC\(18) & (\BUTTON|Add0~35\ $ (GND)))
-- \BUTTON|Add0~37\ = CARRY((\BUTTON|SDC\(18)) # (!\BUTTON|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(18),
	datad => VCC,
	cin => \BUTTON|Add0~35\,
	combout => \BUTTON|Add0~36_combout\,
	cout => \BUTTON|Add0~37\);

-- Location: LCCOMB_X41_Y28_N6
\BUTTON|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~38_combout\ = (\BUTTON|SDC\(19) & (\BUTTON|Add0~37\ & VCC)) # (!\BUTTON|SDC\(19) & (!\BUTTON|Add0~37\))
-- \BUTTON|Add0~39\ = CARRY((!\BUTTON|SDC\(19) & !\BUTTON|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(19),
	datad => VCC,
	cin => \BUTTON|Add0~37\,
	combout => \BUTTON|Add0~38_combout\,
	cout => \BUTTON|Add0~39\);

-- Location: LCCOMB_X41_Y28_N8
\BUTTON|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~40_combout\ = (\BUTTON|SDC\(20) & ((GND) # (!\BUTTON|Add0~39\))) # (!\BUTTON|SDC\(20) & (\BUTTON|Add0~39\ $ (GND)))
-- \BUTTON|Add0~41\ = CARRY((\BUTTON|SDC\(20)) # (!\BUTTON|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(20),
	datad => VCC,
	cin => \BUTTON|Add0~39\,
	combout => \BUTTON|Add0~40_combout\,
	cout => \BUTTON|Add0~41\);

-- Location: LCCOMB_X41_Y28_N10
\BUTTON|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~42_combout\ = (\BUTTON|SDC\(21) & (\BUTTON|Add0~41\ & VCC)) # (!\BUTTON|SDC\(21) & (!\BUTTON|Add0~41\))
-- \BUTTON|Add0~43\ = CARRY((!\BUTTON|SDC\(21) & !\BUTTON|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(21),
	datad => VCC,
	cin => \BUTTON|Add0~41\,
	combout => \BUTTON|Add0~42_combout\,
	cout => \BUTTON|Add0~43\);

-- Location: LCCOMB_X41_Y28_N12
\BUTTON|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~44_combout\ = (\BUTTON|SDC\(22) & ((GND) # (!\BUTTON|Add0~43\))) # (!\BUTTON|SDC\(22) & (\BUTTON|Add0~43\ $ (GND)))
-- \BUTTON|Add0~45\ = CARRY((\BUTTON|SDC\(22)) # (!\BUTTON|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(22),
	datad => VCC,
	cin => \BUTTON|Add0~43\,
	combout => \BUTTON|Add0~44_combout\,
	cout => \BUTTON|Add0~45\);

-- Location: LCCOMB_X41_Y28_N14
\BUTTON|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~46_combout\ = (\BUTTON|SDC\(23) & (\BUTTON|Add0~45\ & VCC)) # (!\BUTTON|SDC\(23) & (!\BUTTON|Add0~45\))
-- \BUTTON|Add0~47\ = CARRY((!\BUTTON|SDC\(23) & !\BUTTON|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(23),
	datad => VCC,
	cin => \BUTTON|Add0~45\,
	combout => \BUTTON|Add0~46_combout\,
	cout => \BUTTON|Add0~47\);

-- Location: LCCOMB_X41_Y28_N16
\BUTTON|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~48_combout\ = (\BUTTON|SDC\(24) & ((GND) # (!\BUTTON|Add0~47\))) # (!\BUTTON|SDC\(24) & (\BUTTON|Add0~47\ $ (GND)))
-- \BUTTON|Add0~49\ = CARRY((\BUTTON|SDC\(24)) # (!\BUTTON|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(24),
	datad => VCC,
	cin => \BUTTON|Add0~47\,
	combout => \BUTTON|Add0~48_combout\,
	cout => \BUTTON|Add0~49\);

-- Location: LCCOMB_X41_Y28_N18
\BUTTON|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~50_combout\ = (\BUTTON|SDC\(25) & (\BUTTON|Add0~49\ & VCC)) # (!\BUTTON|SDC\(25) & (!\BUTTON|Add0~49\))
-- \BUTTON|Add0~51\ = CARRY((!\BUTTON|SDC\(25) & !\BUTTON|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(25),
	datad => VCC,
	cin => \BUTTON|Add0~49\,
	combout => \BUTTON|Add0~50_combout\,
	cout => \BUTTON|Add0~51\);

-- Location: LCCOMB_X41_Y28_N20
\BUTTON|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~52_combout\ = (\BUTTON|SDC\(26) & ((GND) # (!\BUTTON|Add0~51\))) # (!\BUTTON|SDC\(26) & (\BUTTON|Add0~51\ $ (GND)))
-- \BUTTON|Add0~53\ = CARRY((\BUTTON|SDC\(26)) # (!\BUTTON|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|SDC\(26),
	datad => VCC,
	cin => \BUTTON|Add0~51\,
	combout => \BUTTON|Add0~52_combout\,
	cout => \BUTTON|Add0~53\);

-- Location: LCCOMB_X41_Y28_N22
\BUTTON|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~54_combout\ = (\BUTTON|SDC\(27) & (\BUTTON|Add0~53\ & VCC)) # (!\BUTTON|SDC\(27) & (!\BUTTON|Add0~53\))
-- \BUTTON|Add0~55\ = CARRY((!\BUTTON|SDC\(27) & !\BUTTON|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(27),
	datad => VCC,
	cin => \BUTTON|Add0~53\,
	combout => \BUTTON|Add0~54_combout\,
	cout => \BUTTON|Add0~55\);

-- Location: LCCOMB_X41_Y28_N24
\BUTTON|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~56_combout\ = (\BUTTON|SDC\(28) & ((GND) # (!\BUTTON|Add0~55\))) # (!\BUTTON|SDC\(28) & (\BUTTON|Add0~55\ $ (GND)))
-- \BUTTON|Add0~57\ = CARRY((\BUTTON|SDC\(28)) # (!\BUTTON|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(28),
	datad => VCC,
	cin => \BUTTON|Add0~55\,
	combout => \BUTTON|Add0~56_combout\,
	cout => \BUTTON|Add0~57\);

-- Location: LCCOMB_X41_Y28_N26
\BUTTON|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~58_combout\ = (\BUTTON|SDC\(29) & (\BUTTON|Add0~57\ & VCC)) # (!\BUTTON|SDC\(29) & (!\BUTTON|Add0~57\))
-- \BUTTON|Add0~59\ = CARRY((!\BUTTON|SDC\(29) & !\BUTTON|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(29),
	datad => VCC,
	cin => \BUTTON|Add0~57\,
	combout => \BUTTON|Add0~58_combout\,
	cout => \BUTTON|Add0~59\);

-- Location: LCCOMB_X41_Y28_N28
\BUTTON|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~60_combout\ = (\BUTTON|SDC\(30) & ((GND) # (!\BUTTON|Add0~59\))) # (!\BUTTON|SDC\(30) & (\BUTTON|Add0~59\ $ (GND)))
-- \BUTTON|Add0~61\ = CARRY((\BUTTON|SDC\(30)) # (!\BUTTON|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|SDC\(30),
	datad => VCC,
	cin => \BUTTON|Add0~59\,
	combout => \BUTTON|Add0~60_combout\,
	cout => \BUTTON|Add0~61\);

-- Location: LCCOMB_X41_Y28_N30
\BUTTON|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Add0~62_combout\ = \BUTTON|Add0~61\ $ (\BUTTON|SDC\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BUTTON|SDC\(31),
	cin => \BUTTON|Add0~61\,
	combout => \BUTTON|Add0~62_combout\);

-- Location: FF_X114_Y37_N1
\BUTTON|DReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|DReg[2]~feeder_combout\,
	ena => \BUTTON|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|DReg\(2));

-- Location: FF_X114_Y37_N21
\BUTTON|DReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|DReg\(3),
	sload => VCC,
	ena => \BUTTON|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|DReg\(4));

-- Location: FF_X114_Y37_N19
\BUTTON|DReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|DReg\(6),
	sload => VCC,
	ena => \BUTTON|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|DReg\(7));

-- Location: LCCOMB_X114_Y37_N18
\BUTTON|DBx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|DBx~0_combout\ = (\BUTTON|DReg\(4) & ((\BUTTON|DReg\(7)) # (!\BUTTON|DReg\(2)))) # (!\BUTTON|DReg\(4) & (\BUTTON|DReg\(7) & !\BUTTON|DReg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|DReg\(4),
	datac => \BUTTON|DReg\(7),
	datad => \BUTTON|DReg\(2),
	combout => \BUTTON|DBx~0_combout\);

-- Location: FF_X114_Y37_N9
\BUTTON|DReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|DReg[3]~feeder_combout\,
	ena => \BUTTON|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|DReg\(3));

-- Location: FF_X114_Y37_N31
\BUTTON|DReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|DReg[5]~feeder_combout\,
	ena => \BUTTON|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|DReg\(5));

-- Location: LCCOMB_X114_Y37_N14
\BUTTON|DBx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|DBx~1_combout\ = (\BUTTON|DReg\(5) & ((\BUTTON|DBx~q\) # ((\BUTTON|DReg\(3) & \BUTTON|DReg\(2))))) # (!\BUTTON|DReg\(5) & (\BUTTON|DBx~q\ & ((\BUTTON|DReg\(3)) # (\BUTTON|DReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|DReg\(5),
	datab => \BUTTON|DBx~q\,
	datac => \BUTTON|DReg\(3),
	datad => \BUTTON|DReg\(2),
	combout => \BUTTON|DBx~1_combout\);

-- Location: FF_X114_Y37_N17
\BUTTON|DReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|DReg[0]~feeder_combout\,
	ena => \BUTTON|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|DReg\(0));

-- Location: FF_X114_Y37_N13
\BUTTON|DReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|DReg[1]~feeder_combout\,
	ena => \BUTTON|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|DReg\(1));

-- Location: FF_X114_Y37_N23
\BUTTON|DReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|DReg\(5),
	sload => VCC,
	ena => \BUTTON|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|DReg\(6));

-- Location: LCCOMB_X114_Y37_N4
\BUTTON|DBx~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|DBx~2_combout\ = (\BUTTON|DReg\(1) & ((\BUTTON|DBx~q\) # ((\BUTTON|DReg\(6) & \BUTTON|DReg\(0))))) # (!\BUTTON|DReg\(1) & (\BUTTON|DBx~q\ & ((\BUTTON|DReg\(6)) # (\BUTTON|DReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|DReg\(1),
	datab => \BUTTON|DBx~q\,
	datac => \BUTTON|DReg\(6),
	datad => \BUTTON|DReg\(0),
	combout => \BUTTON|DBx~2_combout\);

-- Location: LCCOMB_X114_Y37_N10
\BUTTON|DBx~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|DBx~3_combout\ = (\BUTTON|DBx~1_combout\ & ((\BUTTON|DBx~q\) # ((\BUTTON|DBx~2_combout\ & \BUTTON|DBx~0_combout\)))) # (!\BUTTON|DBx~1_combout\ & (\BUTTON|DBx~q\ & ((\BUTTON|DBx~2_combout\) # (\BUTTON|DBx~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|DBx~1_combout\,
	datab => \BUTTON|DBx~2_combout\,
	datac => \BUTTON|DBx~q\,
	datad => \BUTTON|DBx~0_combout\,
	combout => \BUTTON|DBx~3_combout\);

-- Location: FF_X114_Y37_N29
\BUTTON|DPB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|DPB~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|DPB~q\);

-- Location: FF_X40_Y28_N13
\BUTTON|SDC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(30));

-- Location: FF_X40_Y28_N11
\BUTTON|SDC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(29));

-- Location: FF_X40_Y28_N17
\BUTTON|SDC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(28));

-- Location: FF_X40_Y28_N27
\BUTTON|SDC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(27));

-- Location: FF_X40_Y28_N25
\BUTTON|SDC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(26));

-- Location: FF_X40_Y28_N19
\BUTTON|SDC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(25));

-- Location: FF_X40_Y28_N5
\BUTTON|SDC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(24));

-- Location: FF_X40_Y28_N23
\BUTTON|SDC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(23));

-- Location: FF_X40_Y28_N9
\BUTTON|SDC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(22));

-- Location: FF_X41_Y28_N11
\BUTTON|SDC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(21));

-- Location: FF_X40_Y28_N7
\BUTTON|SDC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(20));

-- Location: FF_X42_Y28_N19
\BUTTON|SDC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(19));

-- Location: FF_X41_Y28_N19
\BUTTON|SDC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(18));

-- Location: FF_X42_Y28_N5
\BUTTON|SDC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(17));

-- Location: FF_X41_Y28_N1
\BUTTON|SDC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(16));

-- Location: FF_X42_Y29_N5
\BUTTON|SDC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(15));

-- Location: FF_X41_Y29_N17
\BUTTON|SDC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(14));

-- Location: FF_X41_Y29_N7
\BUTTON|SDC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(13));

-- Location: FF_X41_Y29_N19
\BUTTON|SDC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(12));

-- Location: FF_X41_Y29_N3
\BUTTON|SDC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(11));

-- Location: FF_X41_Y29_N23
\BUTTON|SDC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(10));

-- Location: FF_X41_Y29_N31
\BUTTON|SDC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(9));

-- Location: FF_X41_Y29_N5
\BUTTON|SDC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(8));

-- Location: FF_X41_Y29_N21
\BUTTON|SDC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(7));

-- Location: FF_X41_Y29_N13
\BUTTON|SDC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(6));

-- Location: FF_X41_Y29_N25
\BUTTON|SDC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(5));

-- Location: FF_X41_Y29_N11
\BUTTON|SDC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(4));

-- Location: FF_X41_Y29_N9
\BUTTON|SDC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(3));

-- Location: FF_X41_Y29_N29
\BUTTON|SDC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(2));

-- Location: FF_X41_Y29_N27
\BUTTON|SDC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(1));

-- Location: FF_X41_Y29_N1
\BUTTON|SDC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \BUTTON|SDC~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(0));

-- Location: FF_X40_Y28_N21
\BUTTON|SDC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SDC~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SDC\(31));

-- Location: LCCOMB_X42_Y29_N14
\BUTTON|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Equal0~0_combout\ = (!\BUTTON|Add0~0_combout\ & (!\BUTTON|Add0~6_combout\ & (!\BUTTON|Add0~4_combout\ & !\BUTTON|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|Add0~0_combout\,
	datab => \BUTTON|Add0~6_combout\,
	datac => \BUTTON|Add0~4_combout\,
	datad => \BUTTON|Add0~2_combout\,
	combout => \BUTTON|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y28_N14
\BUTTON|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Equal0~1_combout\ = (!\BUTTON|Add0~8_combout\ & (!\BUTTON|Add0~14_combout\ & (!\BUTTON|Add0~10_combout\ & !\BUTTON|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|Add0~8_combout\,
	datab => \BUTTON|Add0~14_combout\,
	datac => \BUTTON|Add0~10_combout\,
	datad => \BUTTON|Add0~12_combout\,
	combout => \BUTTON|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y28_N16
\BUTTON|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Equal0~2_combout\ = (!\BUTTON|Add0~18_combout\ & (!\BUTTON|Add0~16_combout\ & (!\BUTTON|Add0~20_combout\ & !\BUTTON|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|Add0~18_combout\,
	datab => \BUTTON|Add0~16_combout\,
	datac => \BUTTON|Add0~20_combout\,
	datad => \BUTTON|Add0~22_combout\,
	combout => \BUTTON|Equal0~2_combout\);

-- Location: LCCOMB_X42_Y28_N26
\BUTTON|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Equal0~3_combout\ = (!\BUTTON|Add0~24_combout\ & (!\BUTTON|Add0~28_combout\ & (!\BUTTON|Add0~26_combout\ & !\BUTTON|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|Add0~24_combout\,
	datab => \BUTTON|Add0~28_combout\,
	datac => \BUTTON|Add0~26_combout\,
	datad => \BUTTON|Add0~30_combout\,
	combout => \BUTTON|Equal0~3_combout\);

-- Location: LCCOMB_X42_Y28_N28
\BUTTON|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Equal0~4_combout\ = (\BUTTON|Equal0~0_combout\ & (\BUTTON|Equal0~1_combout\ & (\BUTTON|Equal0~3_combout\ & \BUTTON|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|Equal0~0_combout\,
	datab => \BUTTON|Equal0~1_combout\,
	datac => \BUTTON|Equal0~3_combout\,
	datad => \BUTTON|Equal0~2_combout\,
	combout => \BUTTON|Equal0~4_combout\);

-- Location: LCCOMB_X42_Y28_N22
\BUTTON|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|Equal0~5_combout\ = (!\BUTTON|Add0~34_combout\ & (!\BUTTON|Add0~36_combout\ & (!\BUTTON|Add0~38_combout\ & !\BUTTON|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|Add0~34_combout\,
	datab => \BUTTON|Add0~36_combout\,
	datac => \BUTTON|Add0~38_combout\,
	datad => \BUTTON|Add0~32_combout\,
	combout => \BUTTON|Equal0~5_combout\);

-- Location: LCCOMB_X42_Y28_N12
\BUTTON|State~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|State~0_combout\ = (\BUTTON|Add0~42_combout\) # ((\BUTTON|Add0~40_combout\) # ((!\BUTTON|Equal0~4_combout\) # (!\BUTTON|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|Add0~42_combout\,
	datab => \BUTTON|Add0~40_combout\,
	datac => \BUTTON|Equal0~5_combout\,
	datad => \BUTTON|Equal0~4_combout\,
	combout => \BUTTON|State~0_combout\);

-- Location: LCCOMB_X42_Y28_N30
\BUTTON|State~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|State~1_combout\ = (\BUTTON|Add0~44_combout\) # ((\BUTTON|Add0~52_combout\) # ((\BUTTON|Add0~50_combout\) # (\BUTTON|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|Add0~44_combout\,
	datab => \BUTTON|Add0~52_combout\,
	datac => \BUTTON|Add0~50_combout\,
	datad => \BUTTON|Add0~54_combout\,
	combout => \BUTTON|State~1_combout\);

-- Location: LCCOMB_X42_Y28_N24
\BUTTON|State~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|State~2_combout\ = (\BUTTON|Add0~48_combout\) # ((\BUTTON|Add0~46_combout\) # ((\BUTTON|State~1_combout\) # (\BUTTON|State~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|Add0~48_combout\,
	datab => \BUTTON|Add0~46_combout\,
	datac => \BUTTON|State~1_combout\,
	datad => \BUTTON|State~0_combout\,
	combout => \BUTTON|State~2_combout\);

-- Location: LCCOMB_X42_Y28_N2
\BUTTON|State~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|State~3_combout\ = (\BUTTON|Add0~56_combout\) # ((\BUTTON|Add0~58_combout\) # (\BUTTON|State~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|Add0~56_combout\,
	datac => \BUTTON|Add0~58_combout\,
	datad => \BUTTON|State~2_combout\,
	combout => \BUTTON|State~3_combout\);

-- Location: LCCOMB_X42_Y28_N8
\BUTTON|State~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|State~4_combout\ = (\BUTTON|State~q\ & ((\BUTTON|Add0~60_combout\) # ((\BUTTON|Add0~62_combout\) # (\BUTTON|State~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|Add0~60_combout\,
	datab => \BUTTON|Add0~62_combout\,
	datac => \BUTTON|State~q\,
	datad => \BUTTON|State~3_combout\,
	combout => \BUTTON|State~4_combout\);

-- Location: FF_X114_Y37_N25
\BUTTON|SPB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|SPB~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|SPB~q\);

-- Location: LCCOMB_X40_Y28_N12
\BUTTON|SDC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~0_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|State~q\,
	datad => \BUTTON|Add0~60_combout\,
	combout => \BUTTON|SDC~0_combout\);

-- Location: LCCOMB_X40_Y28_N10
\BUTTON|SDC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~1_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|State~q\,
	datad => \BUTTON|Add0~58_combout\,
	combout => \BUTTON|SDC~1_combout\);

-- Location: LCCOMB_X40_Y28_N16
\BUTTON|SDC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~2_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|State~q\,
	datad => \BUTTON|Add0~56_combout\,
	combout => \BUTTON|SDC~2_combout\);

-- Location: LCCOMB_X40_Y28_N26
\BUTTON|SDC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~3_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|State~q\,
	datad => \BUTTON|Add0~54_combout\,
	combout => \BUTTON|SDC~3_combout\);

-- Location: LCCOMB_X40_Y28_N24
\BUTTON|SDC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~4_combout\ = (\BUTTON|Add0~52_combout\ & \BUTTON|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|Add0~52_combout\,
	datad => \BUTTON|State~q\,
	combout => \BUTTON|SDC~4_combout\);

-- Location: LCCOMB_X40_Y28_N18
\BUTTON|SDC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~5_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|State~q\,
	datad => \BUTTON|Add0~50_combout\,
	combout => \BUTTON|SDC~5_combout\);

-- Location: LCCOMB_X40_Y28_N4
\BUTTON|SDC~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~6_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|State~q\,
	datad => \BUTTON|Add0~48_combout\,
	combout => \BUTTON|SDC~6_combout\);

-- Location: LCCOMB_X40_Y28_N22
\BUTTON|SDC~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~7_combout\ = (\BUTTON|Add0~46_combout\ & \BUTTON|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|Add0~46_combout\,
	datad => \BUTTON|State~q\,
	combout => \BUTTON|SDC~7_combout\);

-- Location: LCCOMB_X40_Y28_N8
\BUTTON|SDC~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~8_combout\ = (\BUTTON|Add0~44_combout\ & \BUTTON|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|Add0~44_combout\,
	datad => \BUTTON|State~q\,
	combout => \BUTTON|SDC~8_combout\);

-- Location: LCCOMB_X42_Y28_N0
\BUTTON|SDC~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~9_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~42_combout\,
	combout => \BUTTON|SDC~9_combout\);

-- Location: LCCOMB_X40_Y28_N6
\BUTTON|SDC~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~10_combout\ = (\BUTTON|Add0~40_combout\ & \BUTTON|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|Add0~40_combout\,
	datad => \BUTTON|State~q\,
	combout => \BUTTON|SDC~10_combout\);

-- Location: LCCOMB_X42_Y28_N18
\BUTTON|SDC~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~11_combout\ = (\BUTTON|Add0~38_combout\ & \BUTTON|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|Add0~38_combout\,
	datac => \BUTTON|State~q\,
	combout => \BUTTON|SDC~11_combout\);

-- Location: LCCOMB_X42_Y28_N6
\BUTTON|SDC~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~12_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|State~q\,
	datad => \BUTTON|Add0~36_combout\,
	combout => \BUTTON|SDC~12_combout\);

-- Location: LCCOMB_X42_Y28_N4
\BUTTON|SDC~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~13_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~34_combout\,
	combout => \BUTTON|SDC~13_combout\);

-- Location: LCCOMB_X42_Y28_N20
\BUTTON|SDC~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~14_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~32_combout\,
	combout => \BUTTON|SDC~14_combout\);

-- Location: LCCOMB_X42_Y29_N4
\BUTTON|SDC~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~15_combout\ = (\BUTTON|Add0~30_combout\) # (!\BUTTON|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~30_combout\,
	combout => \BUTTON|SDC~15_combout\);

-- Location: LCCOMB_X42_Y29_N20
\BUTTON|SDC~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~16_combout\ = (\BUTTON|Add0~28_combout\) # (!\BUTTON|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~28_combout\,
	combout => \BUTTON|SDC~16_combout\);

-- Location: LCCOMB_X42_Y29_N22
\BUTTON|SDC~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~17_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|State~q\,
	datac => \BUTTON|Add0~26_combout\,
	combout => \BUTTON|SDC~17_combout\);

-- Location: LCCOMB_X42_Y29_N0
\BUTTON|SDC~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~18_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~24_combout\,
	combout => \BUTTON|SDC~18_combout\);

-- Location: LCCOMB_X42_Y29_N18
\BUTTON|SDC~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~19_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~22_combout\,
	combout => \BUTTON|SDC~19_combout\);

-- Location: LCCOMB_X42_Y29_N8
\BUTTON|SDC~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~20_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~20_combout\,
	combout => \BUTTON|SDC~20_combout\);

-- Location: LCCOMB_X42_Y29_N2
\BUTTON|SDC~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~21_combout\ = (\BUTTON|Add0~18_combout\) # (!\BUTTON|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~18_combout\,
	combout => \BUTTON|SDC~21_combout\);

-- Location: LCCOMB_X42_Y29_N12
\BUTTON|SDC~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~22_combout\ = (\BUTTON|Add0~16_combout\) # (!\BUTTON|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|State~q\,
	datac => \BUTTON|Add0~16_combout\,
	combout => \BUTTON|SDC~22_combout\);

-- Location: LCCOMB_X42_Y29_N30
\BUTTON|SDC~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~23_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~14_combout\,
	combout => \BUTTON|SDC~23_combout\);

-- Location: LCCOMB_X42_Y28_N10
\BUTTON|SDC~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~24_combout\ = (\BUTTON|Add0~12_combout\) # (!\BUTTON|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~12_combout\,
	combout => \BUTTON|SDC~24_combout\);

-- Location: LCCOMB_X42_Y29_N24
\BUTTON|SDC~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~25_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~10_combout\,
	combout => \BUTTON|SDC~25_combout\);

-- Location: LCCOMB_X42_Y29_N26
\BUTTON|SDC~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~26_combout\ = (\BUTTON|Add0~8_combout\) # (!\BUTTON|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~8_combout\,
	combout => \BUTTON|SDC~26_combout\);

-- Location: LCCOMB_X42_Y29_N28
\BUTTON|SDC~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~27_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|State~q\,
	datac => \BUTTON|Add0~6_combout\,
	combout => \BUTTON|SDC~27_combout\);

-- Location: LCCOMB_X42_Y29_N10
\BUTTON|SDC~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~28_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|State~q\,
	datac => \BUTTON|Add0~4_combout\,
	combout => \BUTTON|SDC~28_combout\);

-- Location: LCCOMB_X42_Y29_N16
\BUTTON|SDC~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~29_combout\ = (\BUTTON|State~q\ & \BUTTON|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|State~q\,
	datad => \BUTTON|Add0~2_combout\,
	combout => \BUTTON|SDC~29_combout\);

-- Location: LCCOMB_X42_Y29_N6
\BUTTON|SDC~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~30_combout\ = (!\BUTTON|Add0~0_combout\) # (!\BUTTON|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON|State~q\,
	datac => \BUTTON|Add0~0_combout\,
	combout => \BUTTON|SDC~30_combout\);

-- Location: LCCOMB_X40_Y28_N20
\BUTTON|SDC~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SDC~31_combout\ = (!\BUTTON|State~q\) # (!\BUTTON|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON|Add0~62_combout\,
	datad => \BUTTON|State~q\,
	combout => \BUTTON|SDC~31_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

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

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

-- Location: LCCOMB_X114_Y37_N8
\BUTTON|DReg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|DReg[3]~feeder_combout\ = \BUTTON|DReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUTTON|DReg\(2),
	combout => \BUTTON|DReg[3]~feeder_combout\);

-- Location: LCCOMB_X114_Y37_N30
\BUTTON|DReg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|DReg[5]~feeder_combout\ = \BUTTON|DReg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUTTON|DReg\(4),
	combout => \BUTTON|DReg[5]~feeder_combout\);

-- Location: LCCOMB_X114_Y37_N12
\BUTTON|DReg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|DReg[1]~feeder_combout\ = \BUTTON|DReg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUTTON|DReg\(0),
	combout => \BUTTON|DReg[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y37_N0
\BUTTON|DReg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|DReg[2]~feeder_combout\ = \BUTTON|DReg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUTTON|DReg\(1),
	combout => \BUTTON|DReg[2]~feeder_combout\);

-- Location: LCCOMB_X114_Y37_N16
\BUTTON|DReg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|DReg[0]~feeder_combout\ = \BUTTON|DPB~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUTTON|DPB~q\,
	combout => \BUTTON|DReg[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y37_N28
\BUTTON|DPB~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|DPB~feeder_combout\ = \BUTTON|SPB~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUTTON|SPB~q\,
	combout => \BUTTON|DPB~feeder_combout\);

-- Location: LCCOMB_X114_Y37_N24
\BUTTON|SPB~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|SPB~feeder_combout\ = \KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \BUTTON|SPB~feeder_combout\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SA1|s~q\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SA1|s~q\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SA1|s~q\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SA1|s~q\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SA1|ALT_INV_state_present~q\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SA1|state_present~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: LCCOMB_X114_Y37_N26
\BUTTON|DBx~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BUTTON|DBx~feeder_combout\ = \BUTTON|DBx~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON|DBx~3_combout\,
	combout => \BUTTON|DBx~feeder_combout\);

-- Location: FF_X114_Y37_N27
\BUTTON|DBx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BUTTON|DBx~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUTTON|DBx~q\);

-- Location: CLKCTRL_G5
\BUTTON|DBx~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \BUTTON|DBx~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \BUTTON|DBx~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X114_Y17_N2
\SA1|state_present~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SA1|state_present~0_combout\ = (!\SW[17]~input_o\ & ((\SW[1]~input_o\ & ((\SA1|state_present~q\) # (\SW[0]~input_o\))) # (!\SW[1]~input_o\ & (\SA1|state_present~q\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \SA1|state_present~q\,
	datad => \SW[0]~input_o\,
	combout => \SA1|state_present~0_combout\);

-- Location: FF_X114_Y17_N3
\SA1|state_present\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BUTTON|DBx~clkctrl_outclk\,
	d => \SA1|state_present~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SA1|state_present~q\);

-- Location: LCCOMB_X114_Y17_N12
\SA1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SA1|s~0_combout\ = (!\SW[17]~input_o\ & (\SW[1]~input_o\ $ (\SW[0]~input_o\ $ (\SA1|state_present~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \SA1|state_present~q\,
	combout => \SA1|s~0_combout\);

-- Location: FF_X114_Y17_N13
\SA1|s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BUTTON|DBx~clkctrl_outclk\,
	d => \SA1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SA1|s~q\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


