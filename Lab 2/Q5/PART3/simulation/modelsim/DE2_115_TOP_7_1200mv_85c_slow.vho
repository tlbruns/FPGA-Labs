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

-- DATE "10/08/2014 18:53:42"

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
	LEDG : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END DE2_115_TOP;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B1|DBx~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B1|State~q\ : std_logic;
SIGNAL \B1|Add0~0_combout\ : std_logic;
SIGNAL \B1|Add0~1\ : std_logic;
SIGNAL \B1|Add0~2_combout\ : std_logic;
SIGNAL \B1|Add0~3\ : std_logic;
SIGNAL \B1|Add0~4_combout\ : std_logic;
SIGNAL \B1|Add0~5\ : std_logic;
SIGNAL \B1|Add0~6_combout\ : std_logic;
SIGNAL \B1|Add0~7\ : std_logic;
SIGNAL \B1|Add0~8_combout\ : std_logic;
SIGNAL \B1|Add0~9\ : std_logic;
SIGNAL \B1|Add0~10_combout\ : std_logic;
SIGNAL \B1|Add0~11\ : std_logic;
SIGNAL \B1|Add0~12_combout\ : std_logic;
SIGNAL \B1|Add0~13\ : std_logic;
SIGNAL \B1|Add0~14_combout\ : std_logic;
SIGNAL \B1|Add0~15\ : std_logic;
SIGNAL \B1|Add0~16_combout\ : std_logic;
SIGNAL \B1|Add0~17\ : std_logic;
SIGNAL \B1|Add0~18_combout\ : std_logic;
SIGNAL \B1|Add0~19\ : std_logic;
SIGNAL \B1|Add0~20_combout\ : std_logic;
SIGNAL \B1|Add0~21\ : std_logic;
SIGNAL \B1|Add0~22_combout\ : std_logic;
SIGNAL \B1|Add0~23\ : std_logic;
SIGNAL \B1|Add0~24_combout\ : std_logic;
SIGNAL \B1|Add0~25\ : std_logic;
SIGNAL \B1|Add0~26_combout\ : std_logic;
SIGNAL \B1|Add0~27\ : std_logic;
SIGNAL \B1|Add0~28_combout\ : std_logic;
SIGNAL \B1|Add0~29\ : std_logic;
SIGNAL \B1|Add0~30_combout\ : std_logic;
SIGNAL \B1|Add0~31\ : std_logic;
SIGNAL \B1|Add0~32_combout\ : std_logic;
SIGNAL \B1|Add0~33\ : std_logic;
SIGNAL \B1|Add0~34_combout\ : std_logic;
SIGNAL \B1|Add0~35\ : std_logic;
SIGNAL \B1|Add0~36_combout\ : std_logic;
SIGNAL \B1|Add0~37\ : std_logic;
SIGNAL \B1|Add0~38_combout\ : std_logic;
SIGNAL \B1|Add0~39\ : std_logic;
SIGNAL \B1|Add0~40_combout\ : std_logic;
SIGNAL \B1|Add0~41\ : std_logic;
SIGNAL \B1|Add0~42_combout\ : std_logic;
SIGNAL \B1|Add0~43\ : std_logic;
SIGNAL \B1|Add0~44_combout\ : std_logic;
SIGNAL \B1|Add0~45\ : std_logic;
SIGNAL \B1|Add0~46_combout\ : std_logic;
SIGNAL \B1|Add0~47\ : std_logic;
SIGNAL \B1|Add0~48_combout\ : std_logic;
SIGNAL \B1|Add0~49\ : std_logic;
SIGNAL \B1|Add0~50_combout\ : std_logic;
SIGNAL \B1|Add0~51\ : std_logic;
SIGNAL \B1|Add0~52_combout\ : std_logic;
SIGNAL \B1|Add0~53\ : std_logic;
SIGNAL \B1|Add0~54_combout\ : std_logic;
SIGNAL \B1|Add0~55\ : std_logic;
SIGNAL \B1|Add0~56_combout\ : std_logic;
SIGNAL \B1|Add0~57\ : std_logic;
SIGNAL \B1|Add0~58_combout\ : std_logic;
SIGNAL \B1|Add0~59\ : std_logic;
SIGNAL \B1|Add0~60_combout\ : std_logic;
SIGNAL \B1|Add0~61\ : std_logic;
SIGNAL \B1|Add0~62_combout\ : std_logic;
SIGNAL \B1|DBx~0_combout\ : std_logic;
SIGNAL \B1|DBx~1_combout\ : std_logic;
SIGNAL \B1|DBx~2_combout\ : std_logic;
SIGNAL \B1|DBx~3_combout\ : std_logic;
SIGNAL \B1|DPB~q\ : std_logic;
SIGNAL \B1|State~0_combout\ : std_logic;
SIGNAL \B1|State~1_combout\ : std_logic;
SIGNAL \B1|Equal0~0_combout\ : std_logic;
SIGNAL \B1|State~2_combout\ : std_logic;
SIGNAL \B1|Equal0~1_combout\ : std_logic;
SIGNAL \B1|Equal0~2_combout\ : std_logic;
SIGNAL \B1|Equal0~3_combout\ : std_logic;
SIGNAL \B1|Equal0~4_combout\ : std_logic;
SIGNAL \B1|Equal0~5_combout\ : std_logic;
SIGNAL \B1|State~3_combout\ : std_logic;
SIGNAL \B1|State~4_combout\ : std_logic;
SIGNAL \B1|State~5_combout\ : std_logic;
SIGNAL \B1|SPB~q\ : std_logic;
SIGNAL \B1|SDC~0_combout\ : std_logic;
SIGNAL \B1|SDC~1_combout\ : std_logic;
SIGNAL \B1|SDC~2_combout\ : std_logic;
SIGNAL \B1|SDC~3_combout\ : std_logic;
SIGNAL \B1|SDC~4_combout\ : std_logic;
SIGNAL \B1|SDC~5_combout\ : std_logic;
SIGNAL \B1|SDC~6_combout\ : std_logic;
SIGNAL \B1|SDC~7_combout\ : std_logic;
SIGNAL \B1|SDC~8_combout\ : std_logic;
SIGNAL \B1|SDC~9_combout\ : std_logic;
SIGNAL \B1|SDC~10_combout\ : std_logic;
SIGNAL \B1|SDC~11_combout\ : std_logic;
SIGNAL \B1|SDC~12_combout\ : std_logic;
SIGNAL \B1|SDC~13_combout\ : std_logic;
SIGNAL \B1|SDC~14_combout\ : std_logic;
SIGNAL \B1|SDC~15_combout\ : std_logic;
SIGNAL \B1|SDC~16_combout\ : std_logic;
SIGNAL \B1|SDC~17_combout\ : std_logic;
SIGNAL \B1|SDC~18_combout\ : std_logic;
SIGNAL \B1|SDC~19_combout\ : std_logic;
SIGNAL \B1|SDC~20_combout\ : std_logic;
SIGNAL \B1|SDC~21_combout\ : std_logic;
SIGNAL \B1|SDC~22_combout\ : std_logic;
SIGNAL \B1|SDC~23_combout\ : std_logic;
SIGNAL \B1|SDC~24_combout\ : std_logic;
SIGNAL \B1|SDC~25_combout\ : std_logic;
SIGNAL \B1|SDC~26_combout\ : std_logic;
SIGNAL \B1|SDC~27_combout\ : std_logic;
SIGNAL \B1|SDC~28_combout\ : std_logic;
SIGNAL \B1|SDC~29_combout\ : std_logic;
SIGNAL \B1|SDC~30_combout\ : std_logic;
SIGNAL \B1|SDC~31_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \B1|DReg[3]~feeder_combout\ : std_logic;
SIGNAL \B1|DReg[5]~feeder_combout\ : std_logic;
SIGNAL \B1|DReg[4]~feeder_combout\ : std_logic;
SIGNAL \B1|DReg[1]~feeder_combout\ : std_logic;
SIGNAL \B1|DReg[2]~feeder_combout\ : std_logic;
SIGNAL \B1|DReg[0]~feeder_combout\ : std_logic;
SIGNAL \B1|DPB~feeder_combout\ : std_logic;
SIGNAL \B1|SPB~feeder_combout\ : std_logic;
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
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \B1|DBx~feeder_combout\ : std_logic;
SIGNAL \B1|DBx~q\ : std_logic;
SIGNAL \B1|DBx~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \SSD0|Mux6~0_combout\ : std_logic;
SIGNAL \SSD0|Mux5~0_combout\ : std_logic;
SIGNAL \SSD0|Mux4~0_combout\ : std_logic;
SIGNAL \SSD0|Mux3~0_combout\ : std_logic;
SIGNAL \SSD0|Mux2~0_combout\ : std_logic;
SIGNAL \SSD0|Mux1~0_combout\ : std_logic;
SIGNAL \SSD0|Mux0~0_combout\ : std_logic;
SIGNAL \SSD1|Mux6~0_combout\ : std_logic;
SIGNAL \SSD1|Mux5~0_combout\ : std_logic;
SIGNAL \SSD1|Mux4~0_combout\ : std_logic;
SIGNAL \SSD1|Mux3~0_combout\ : std_logic;
SIGNAL \SSD1|Mux2~0_combout\ : std_logic;
SIGNAL \SSD1|Mux1~0_combout\ : std_logic;
SIGNAL \SSD1|Mux0~0_combout\ : std_logic;
SIGNAL \SSD2|Mux6~0_combout\ : std_logic;
SIGNAL \SSD2|Mux5~0_combout\ : std_logic;
SIGNAL \SSD2|Mux4~0_combout\ : std_logic;
SIGNAL \SSD2|Mux3~0_combout\ : std_logic;
SIGNAL \SSD2|Mux2~0_combout\ : std_logic;
SIGNAL \SSD2|Mux1~0_combout\ : std_logic;
SIGNAL \SSD2|Mux0~0_combout\ : std_logic;
SIGNAL \SSD4|Mux6~0_combout\ : std_logic;
SIGNAL \SSD4|Mux5~0_combout\ : std_logic;
SIGNAL \SSD4|Mux4~0_combout\ : std_logic;
SIGNAL \SSD4|Mux3~0_combout\ : std_logic;
SIGNAL \SSD4|Mux2~0_combout\ : std_logic;
SIGNAL \SSD4|Mux1~0_combout\ : std_logic;
SIGNAL \SSD4|Mux0~0_combout\ : std_logic;
SIGNAL \SSD6|Mux6~0_combout\ : std_logic;
SIGNAL \SSD6|Mux5~0_combout\ : std_logic;
SIGNAL \SSD6|Mux4~0_combout\ : std_logic;
SIGNAL \SSD6|Mux3~0_combout\ : std_logic;
SIGNAL \SSD6|Mux2~0_combout\ : std_logic;
SIGNAL \SSD6|Mux1~0_combout\ : std_logic;
SIGNAL \SSD6|Mux0~0_combout\ : std_logic;
SIGNAL \SSD7|Mux6~0_combout\ : std_logic;
SIGNAL \SSD7|Mux5~0_combout\ : std_logic;
SIGNAL \SSD7|Mux4~0_combout\ : std_logic;
SIGNAL \SSD7|Mux3~0_combout\ : std_logic;
SIGNAL \SSD7|Mux2~0_combout\ : std_logic;
SIGNAL \SSD7|Mux1~0_combout\ : std_logic;
SIGNAL \SSD7|Mux0~0_combout\ : std_logic;
SIGNAL \B1|SDC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \B1|DReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \SSD7|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SSD6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SSD4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SSD2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SSD1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SSD0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B1|ALT_INV_State~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\SW[7]~input_o\ & \SW[6]~input_o\ & \SW[5]~input_o\ & \SW[4]~input_o\ & \SW[3]~input_o\ & \SW[2]~input_o\ & \SW[1]~input_o\ & \SW[0]~input_o\);

\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\SW[12]~input_o\ & \SW[11]~input_o\ & \SW[10]~input_o\ & \SW[9]~input_o\ & \SW[8]~input_o\);

\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\SW[17]~input_o\ & \SW[16]~input_o\ & \SW[15]~input_o\ & \SW[14]~input_o\ & \SW[13]~input_o\);

\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ <= \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\ <= \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\ <= \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\ <= \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\ <= \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ <= \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\ <= \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\B1|DBx~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \B1|DBx~q\);
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\SSD7|ALT_INV_Mux0~0_combout\ <= NOT \SSD7|Mux0~0_combout\;
\SSD6|ALT_INV_Mux0~0_combout\ <= NOT \SSD6|Mux0~0_combout\;
\SSD4|ALT_INV_Mux0~0_combout\ <= NOT \SSD4|Mux0~0_combout\;
\SSD2|ALT_INV_Mux0~0_combout\ <= NOT \SSD2|Mux0~0_combout\;
\SSD1|ALT_INV_Mux0~0_combout\ <= NOT \SSD1|Mux0~0_combout\;
\SSD0|ALT_INV_Mux0~0_combout\ <= NOT \SSD0|Mux0~0_combout\;
\B1|ALT_INV_State~q\ <= NOT \B1|State~q\;

-- Location: FF_X111_Y30_N9
\B1|State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|State~5_combout\,
	asdata => VCC,
	sload => \B1|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|State~q\);

-- Location: LCCOMB_X112_Y31_N0
\B1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~0_combout\ = \B1|SDC\(0) $ (GND)
-- \B1|Add0~1\ = CARRY(!\B1|SDC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(0),
	datad => VCC,
	combout => \B1|Add0~0_combout\,
	cout => \B1|Add0~1\);

-- Location: LCCOMB_X112_Y31_N2
\B1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~2_combout\ = (\B1|SDC\(1) & (\B1|Add0~1\ & VCC)) # (!\B1|SDC\(1) & (!\B1|Add0~1\))
-- \B1|Add0~3\ = CARRY((!\B1|SDC\(1) & !\B1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(1),
	datad => VCC,
	cin => \B1|Add0~1\,
	combout => \B1|Add0~2_combout\,
	cout => \B1|Add0~3\);

-- Location: LCCOMB_X112_Y31_N4
\B1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~4_combout\ = (\B1|SDC\(2) & ((GND) # (!\B1|Add0~3\))) # (!\B1|SDC\(2) & (\B1|Add0~3\ $ (GND)))
-- \B1|Add0~5\ = CARRY((\B1|SDC\(2)) # (!\B1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(2),
	datad => VCC,
	cin => \B1|Add0~3\,
	combout => \B1|Add0~4_combout\,
	cout => \B1|Add0~5\);

-- Location: LCCOMB_X112_Y31_N6
\B1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~6_combout\ = (\B1|SDC\(3) & (\B1|Add0~5\ & VCC)) # (!\B1|SDC\(3) & (!\B1|Add0~5\))
-- \B1|Add0~7\ = CARRY((!\B1|SDC\(3) & !\B1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|SDC\(3),
	datad => VCC,
	cin => \B1|Add0~5\,
	combout => \B1|Add0~6_combout\,
	cout => \B1|Add0~7\);

-- Location: LCCOMB_X112_Y31_N8
\B1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~8_combout\ = (\B1|SDC\(4) & ((GND) # (!\B1|Add0~7\))) # (!\B1|SDC\(4) & (\B1|Add0~7\ $ (GND)))
-- \B1|Add0~9\ = CARRY((\B1|SDC\(4)) # (!\B1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(4),
	datad => VCC,
	cin => \B1|Add0~7\,
	combout => \B1|Add0~8_combout\,
	cout => \B1|Add0~9\);

-- Location: LCCOMB_X112_Y31_N10
\B1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~10_combout\ = (\B1|SDC\(5) & (\B1|Add0~9\ & VCC)) # (!\B1|SDC\(5) & (!\B1|Add0~9\))
-- \B1|Add0~11\ = CARRY((!\B1|SDC\(5) & !\B1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|SDC\(5),
	datad => VCC,
	cin => \B1|Add0~9\,
	combout => \B1|Add0~10_combout\,
	cout => \B1|Add0~11\);

-- Location: LCCOMB_X112_Y31_N12
\B1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~12_combout\ = (\B1|SDC\(6) & ((GND) # (!\B1|Add0~11\))) # (!\B1|SDC\(6) & (\B1|Add0~11\ $ (GND)))
-- \B1|Add0~13\ = CARRY((\B1|SDC\(6)) # (!\B1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(6),
	datad => VCC,
	cin => \B1|Add0~11\,
	combout => \B1|Add0~12_combout\,
	cout => \B1|Add0~13\);

-- Location: LCCOMB_X112_Y31_N14
\B1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~14_combout\ = (\B1|SDC\(7) & (\B1|Add0~13\ & VCC)) # (!\B1|SDC\(7) & (!\B1|Add0~13\))
-- \B1|Add0~15\ = CARRY((!\B1|SDC\(7) & !\B1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(7),
	datad => VCC,
	cin => \B1|Add0~13\,
	combout => \B1|Add0~14_combout\,
	cout => \B1|Add0~15\);

-- Location: LCCOMB_X112_Y31_N16
\B1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~16_combout\ = (\B1|SDC\(8) & ((GND) # (!\B1|Add0~15\))) # (!\B1|SDC\(8) & (\B1|Add0~15\ $ (GND)))
-- \B1|Add0~17\ = CARRY((\B1|SDC\(8)) # (!\B1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|SDC\(8),
	datad => VCC,
	cin => \B1|Add0~15\,
	combout => \B1|Add0~16_combout\,
	cout => \B1|Add0~17\);

-- Location: LCCOMB_X112_Y31_N18
\B1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~18_combout\ = (\B1|SDC\(9) & (\B1|Add0~17\ & VCC)) # (!\B1|SDC\(9) & (!\B1|Add0~17\))
-- \B1|Add0~19\ = CARRY((!\B1|SDC\(9) & !\B1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(9),
	datad => VCC,
	cin => \B1|Add0~17\,
	combout => \B1|Add0~18_combout\,
	cout => \B1|Add0~19\);

-- Location: LCCOMB_X112_Y31_N20
\B1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~20_combout\ = (\B1|SDC\(10) & ((GND) # (!\B1|Add0~19\))) # (!\B1|SDC\(10) & (\B1|Add0~19\ $ (GND)))
-- \B1|Add0~21\ = CARRY((\B1|SDC\(10)) # (!\B1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(10),
	datad => VCC,
	cin => \B1|Add0~19\,
	combout => \B1|Add0~20_combout\,
	cout => \B1|Add0~21\);

-- Location: LCCOMB_X112_Y31_N22
\B1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~22_combout\ = (\B1|SDC\(11) & (\B1|Add0~21\ & VCC)) # (!\B1|SDC\(11) & (!\B1|Add0~21\))
-- \B1|Add0~23\ = CARRY((!\B1|SDC\(11) & !\B1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(11),
	datad => VCC,
	cin => \B1|Add0~21\,
	combout => \B1|Add0~22_combout\,
	cout => \B1|Add0~23\);

-- Location: LCCOMB_X112_Y31_N24
\B1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~24_combout\ = (\B1|SDC\(12) & ((GND) # (!\B1|Add0~23\))) # (!\B1|SDC\(12) & (\B1|Add0~23\ $ (GND)))
-- \B1|Add0~25\ = CARRY((\B1|SDC\(12)) # (!\B1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|SDC\(12),
	datad => VCC,
	cin => \B1|Add0~23\,
	combout => \B1|Add0~24_combout\,
	cout => \B1|Add0~25\);

-- Location: LCCOMB_X112_Y31_N26
\B1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~26_combout\ = (\B1|SDC\(13) & (\B1|Add0~25\ & VCC)) # (!\B1|SDC\(13) & (!\B1|Add0~25\))
-- \B1|Add0~27\ = CARRY((!\B1|SDC\(13) & !\B1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|SDC\(13),
	datad => VCC,
	cin => \B1|Add0~25\,
	combout => \B1|Add0~26_combout\,
	cout => \B1|Add0~27\);

-- Location: LCCOMB_X112_Y31_N28
\B1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~28_combout\ = (\B1|SDC\(14) & ((GND) # (!\B1|Add0~27\))) # (!\B1|SDC\(14) & (\B1|Add0~27\ $ (GND)))
-- \B1|Add0~29\ = CARRY((\B1|SDC\(14)) # (!\B1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|SDC\(14),
	datad => VCC,
	cin => \B1|Add0~27\,
	combout => \B1|Add0~28_combout\,
	cout => \B1|Add0~29\);

-- Location: LCCOMB_X112_Y31_N30
\B1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~30_combout\ = (\B1|SDC\(15) & (\B1|Add0~29\ & VCC)) # (!\B1|SDC\(15) & (!\B1|Add0~29\))
-- \B1|Add0~31\ = CARRY((!\B1|SDC\(15) & !\B1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|SDC\(15),
	datad => VCC,
	cin => \B1|Add0~29\,
	combout => \B1|Add0~30_combout\,
	cout => \B1|Add0~31\);

-- Location: LCCOMB_X112_Y30_N0
\B1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~32_combout\ = (\B1|SDC\(16) & ((GND) # (!\B1|Add0~31\))) # (!\B1|SDC\(16) & (\B1|Add0~31\ $ (GND)))
-- \B1|Add0~33\ = CARRY((\B1|SDC\(16)) # (!\B1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|SDC\(16),
	datad => VCC,
	cin => \B1|Add0~31\,
	combout => \B1|Add0~32_combout\,
	cout => \B1|Add0~33\);

-- Location: LCCOMB_X112_Y30_N2
\B1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~34_combout\ = (\B1|SDC\(17) & (\B1|Add0~33\ & VCC)) # (!\B1|SDC\(17) & (!\B1|Add0~33\))
-- \B1|Add0~35\ = CARRY((!\B1|SDC\(17) & !\B1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(17),
	datad => VCC,
	cin => \B1|Add0~33\,
	combout => \B1|Add0~34_combout\,
	cout => \B1|Add0~35\);

-- Location: LCCOMB_X112_Y30_N4
\B1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~36_combout\ = (\B1|SDC\(18) & ((GND) # (!\B1|Add0~35\))) # (!\B1|SDC\(18) & (\B1|Add0~35\ $ (GND)))
-- \B1|Add0~37\ = CARRY((\B1|SDC\(18)) # (!\B1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(18),
	datad => VCC,
	cin => \B1|Add0~35\,
	combout => \B1|Add0~36_combout\,
	cout => \B1|Add0~37\);

-- Location: LCCOMB_X112_Y30_N6
\B1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~38_combout\ = (\B1|SDC\(19) & (\B1|Add0~37\ & VCC)) # (!\B1|SDC\(19) & (!\B1|Add0~37\))
-- \B1|Add0~39\ = CARRY((!\B1|SDC\(19) & !\B1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(19),
	datad => VCC,
	cin => \B1|Add0~37\,
	combout => \B1|Add0~38_combout\,
	cout => \B1|Add0~39\);

-- Location: LCCOMB_X112_Y30_N8
\B1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~40_combout\ = (\B1|SDC\(20) & ((GND) # (!\B1|Add0~39\))) # (!\B1|SDC\(20) & (\B1|Add0~39\ $ (GND)))
-- \B1|Add0~41\ = CARRY((\B1|SDC\(20)) # (!\B1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|SDC\(20),
	datad => VCC,
	cin => \B1|Add0~39\,
	combout => \B1|Add0~40_combout\,
	cout => \B1|Add0~41\);

-- Location: LCCOMB_X112_Y30_N10
\B1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~42_combout\ = (\B1|SDC\(21) & (\B1|Add0~41\ & VCC)) # (!\B1|SDC\(21) & (!\B1|Add0~41\))
-- \B1|Add0~43\ = CARRY((!\B1|SDC\(21) & !\B1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|SDC\(21),
	datad => VCC,
	cin => \B1|Add0~41\,
	combout => \B1|Add0~42_combout\,
	cout => \B1|Add0~43\);

-- Location: LCCOMB_X112_Y30_N12
\B1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~44_combout\ = (\B1|SDC\(22) & ((GND) # (!\B1|Add0~43\))) # (!\B1|SDC\(22) & (\B1|Add0~43\ $ (GND)))
-- \B1|Add0~45\ = CARRY((\B1|SDC\(22)) # (!\B1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(22),
	datad => VCC,
	cin => \B1|Add0~43\,
	combout => \B1|Add0~44_combout\,
	cout => \B1|Add0~45\);

-- Location: LCCOMB_X112_Y30_N14
\B1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~46_combout\ = (\B1|SDC\(23) & (\B1|Add0~45\ & VCC)) # (!\B1|SDC\(23) & (!\B1|Add0~45\))
-- \B1|Add0~47\ = CARRY((!\B1|SDC\(23) & !\B1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|SDC\(23),
	datad => VCC,
	cin => \B1|Add0~45\,
	combout => \B1|Add0~46_combout\,
	cout => \B1|Add0~47\);

-- Location: LCCOMB_X112_Y30_N16
\B1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~48_combout\ = (\B1|SDC\(24) & ((GND) # (!\B1|Add0~47\))) # (!\B1|SDC\(24) & (\B1|Add0~47\ $ (GND)))
-- \B1|Add0~49\ = CARRY((\B1|SDC\(24)) # (!\B1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(24),
	datad => VCC,
	cin => \B1|Add0~47\,
	combout => \B1|Add0~48_combout\,
	cout => \B1|Add0~49\);

-- Location: LCCOMB_X112_Y30_N18
\B1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~50_combout\ = (\B1|SDC\(25) & (\B1|Add0~49\ & VCC)) # (!\B1|SDC\(25) & (!\B1|Add0~49\))
-- \B1|Add0~51\ = CARRY((!\B1|SDC\(25) & !\B1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(25),
	datad => VCC,
	cin => \B1|Add0~49\,
	combout => \B1|Add0~50_combout\,
	cout => \B1|Add0~51\);

-- Location: LCCOMB_X112_Y30_N20
\B1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~52_combout\ = (\B1|SDC\(26) & ((GND) # (!\B1|Add0~51\))) # (!\B1|SDC\(26) & (\B1|Add0~51\ $ (GND)))
-- \B1|Add0~53\ = CARRY((\B1|SDC\(26)) # (!\B1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(26),
	datad => VCC,
	cin => \B1|Add0~51\,
	combout => \B1|Add0~52_combout\,
	cout => \B1|Add0~53\);

-- Location: LCCOMB_X112_Y30_N22
\B1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~54_combout\ = (\B1|SDC\(27) & (\B1|Add0~53\ & VCC)) # (!\B1|SDC\(27) & (!\B1|Add0~53\))
-- \B1|Add0~55\ = CARRY((!\B1|SDC\(27) & !\B1|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|SDC\(27),
	datad => VCC,
	cin => \B1|Add0~53\,
	combout => \B1|Add0~54_combout\,
	cout => \B1|Add0~55\);

-- Location: LCCOMB_X112_Y30_N24
\B1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~56_combout\ = (\B1|SDC\(28) & ((GND) # (!\B1|Add0~55\))) # (!\B1|SDC\(28) & (\B1|Add0~55\ $ (GND)))
-- \B1|Add0~57\ = CARRY((\B1|SDC\(28)) # (!\B1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(28),
	datad => VCC,
	cin => \B1|Add0~55\,
	combout => \B1|Add0~56_combout\,
	cout => \B1|Add0~57\);

-- Location: LCCOMB_X112_Y30_N26
\B1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~58_combout\ = (\B1|SDC\(29) & (\B1|Add0~57\ & VCC)) # (!\B1|SDC\(29) & (!\B1|Add0~57\))
-- \B1|Add0~59\ = CARRY((!\B1|SDC\(29) & !\B1|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(29),
	datad => VCC,
	cin => \B1|Add0~57\,
	combout => \B1|Add0~58_combout\,
	cout => \B1|Add0~59\);

-- Location: LCCOMB_X112_Y30_N28
\B1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~60_combout\ = (\B1|SDC\(30) & ((GND) # (!\B1|Add0~59\))) # (!\B1|SDC\(30) & (\B1|Add0~59\ $ (GND)))
-- \B1|Add0~61\ = CARRY((\B1|SDC\(30)) # (!\B1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|SDC\(30),
	datad => VCC,
	cin => \B1|Add0~59\,
	combout => \B1|Add0~60_combout\,
	cout => \B1|Add0~61\);

-- Location: LCCOMB_X112_Y30_N30
\B1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Add0~62_combout\ = \B1|Add0~61\ $ (\B1|SDC\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \B1|SDC\(31),
	cin => \B1|Add0~61\,
	combout => \B1|Add0~62_combout\);

-- Location: FF_X114_Y36_N29
\B1|DReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|DReg[2]~feeder_combout\,
	ena => \B1|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|DReg\(2));

-- Location: FF_X114_Y36_N19
\B1|DReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|DReg[4]~feeder_combout\,
	ena => \B1|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|DReg\(4));

-- Location: FF_X114_Y36_N3
\B1|DReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|DReg\(6),
	sload => VCC,
	ena => \B1|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|DReg\(7));

-- Location: LCCOMB_X114_Y36_N2
\B1|DBx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|DBx~0_combout\ = (\B1|DReg\(2) & (\B1|DReg\(7) & \B1|DReg\(4))) # (!\B1|DReg\(2) & ((\B1|DReg\(7)) # (\B1|DReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|DReg\(2),
	datac => \B1|DReg\(7),
	datad => \B1|DReg\(4),
	combout => \B1|DBx~0_combout\);

-- Location: FF_X114_Y36_N1
\B1|DReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|DReg[3]~feeder_combout\,
	ena => \B1|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|DReg\(3));

-- Location: FF_X114_Y36_N31
\B1|DReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|DReg[5]~feeder_combout\,
	ena => \B1|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|DReg\(5));

-- Location: LCCOMB_X114_Y36_N24
\B1|DBx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|DBx~1_combout\ = (\B1|DBx~q\ & ((\B1|DReg\(2)) # ((\B1|DReg\(5)) # (\B1|DReg\(3))))) # (!\B1|DBx~q\ & (\B1|DReg\(2) & (\B1|DReg\(5) & \B1|DReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|DBx~q\,
	datab => \B1|DReg\(2),
	datac => \B1|DReg\(5),
	datad => \B1|DReg\(3),
	combout => \B1|DBx~1_combout\);

-- Location: FF_X114_Y36_N7
\B1|DReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|DReg[0]~feeder_combout\,
	ena => \B1|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|DReg\(0));

-- Location: FF_X114_Y36_N17
\B1|DReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|DReg[1]~feeder_combout\,
	ena => \B1|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|DReg\(1));

-- Location: FF_X114_Y36_N23
\B1|DReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|DReg\(5),
	sload => VCC,
	ena => \B1|ALT_INV_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|DReg\(6));

-- Location: LCCOMB_X114_Y36_N4
\B1|DBx~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|DBx~2_combout\ = (\B1|DBx~q\ & ((\B1|DReg\(1)) # ((\B1|DReg\(6)) # (\B1|DReg\(0))))) # (!\B1|DBx~q\ & (\B1|DReg\(1) & (\B1|DReg\(6) & \B1|DReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|DBx~q\,
	datab => \B1|DReg\(1),
	datac => \B1|DReg\(6),
	datad => \B1|DReg\(0),
	combout => \B1|DBx~2_combout\);

-- Location: LCCOMB_X114_Y36_N14
\B1|DBx~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|DBx~3_combout\ = (\B1|DBx~1_combout\ & ((\B1|DBx~q\) # ((\B1|DBx~2_combout\ & \B1|DBx~0_combout\)))) # (!\B1|DBx~1_combout\ & (\B1|DBx~q\ & ((\B1|DBx~2_combout\) # (\B1|DBx~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|DBx~1_combout\,
	datab => \B1|DBx~2_combout\,
	datac => \B1|DBx~q\,
	datad => \B1|DBx~0_combout\,
	combout => \B1|DBx~3_combout\);

-- Location: FF_X114_Y36_N21
\B1|DPB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|DPB~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|DPB~q\);

-- Location: FF_X113_Y30_N29
\B1|SDC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(31));

-- Location: FF_X113_Y30_N11
\B1|SDC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(30));

-- Location: FF_X111_Y30_N31
\B1|SDC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(29));

-- Location: FF_X113_Y30_N13
\B1|SDC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(28));

-- Location: FF_X111_Y30_N17
\B1|SDC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(27));

-- Location: FF_X113_Y30_N23
\B1|SDC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(26));

-- Location: FF_X113_Y30_N1
\B1|SDC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(25));

-- Location: FF_X113_Y30_N19
\B1|SDC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(24));

-- Location: FF_X113_Y30_N21
\B1|SDC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(23));

-- Location: FF_X113_Y30_N27
\B1|SDC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(22));

-- Location: FF_X113_Y30_N5
\B1|SDC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(21));

-- Location: FF_X113_Y30_N7
\B1|SDC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(20));

-- Location: FF_X113_Y30_N9
\B1|SDC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(19));

-- Location: FF_X111_Y30_N23
\B1|SDC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(18));

-- Location: FF_X112_Y30_N3
\B1|SDC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|SDC~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(17));

-- Location: FF_X111_Y30_N1
\B1|SDC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(16));

-- Location: FF_X111_Y31_N9
\B1|SDC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(15));

-- Location: FF_X111_Y31_N3
\B1|SDC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(14));

-- Location: FF_X111_Y31_N13
\B1|SDC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(13));

-- Location: FF_X111_Y31_N15
\B1|SDC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(12));

-- Location: FF_X111_Y31_N29
\B1|SDC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SDC~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(11));

-- Location: FF_X112_Y31_N19
\B1|SDC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|SDC~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(10));

-- Location: FF_X112_Y31_N3
\B1|SDC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|SDC~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(9));

-- Location: FF_X112_Y31_N13
\B1|SDC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|SDC~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(8));

-- Location: FF_X112_Y31_N17
\B1|SDC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|SDC~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(7));

-- Location: FF_X112_Y31_N9
\B1|SDC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|SDC~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(6));

-- Location: FF_X112_Y31_N11
\B1|SDC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|SDC~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(5));

-- Location: FF_X112_Y31_N25
\B1|SDC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|SDC~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(4));

-- Location: FF_X112_Y31_N7
\B1|SDC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|SDC~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(3));

-- Location: FF_X112_Y31_N5
\B1|SDC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|SDC~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(2));

-- Location: FF_X112_Y31_N15
\B1|SDC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|SDC~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(1));

-- Location: FF_X112_Y31_N29
\B1|SDC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \B1|SDC~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SDC\(0));

-- Location: LCCOMB_X111_Y30_N18
\B1|State~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|State~0_combout\ = (\B1|Add0~52_combout\) # ((\B1|Add0~46_combout\) # (\B1|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|Add0~52_combout\,
	datac => \B1|Add0~46_combout\,
	datad => \B1|Add0~50_combout\,
	combout => \B1|State~0_combout\);

-- Location: LCCOMB_X111_Y30_N28
\B1|State~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|State~1_combout\ = (\B1|Add0~56_combout\) # ((\B1|Add0~58_combout\) # (\B1|State~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|Add0~56_combout\,
	datac => \B1|Add0~58_combout\,
	datad => \B1|State~0_combout\,
	combout => \B1|State~1_combout\);

-- Location: LCCOMB_X111_Y30_N10
\B1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Equal0~0_combout\ = (!\B1|Add0~34_combout\ & (!\B1|Add0~32_combout\ & (!\B1|Add0~36_combout\ & !\B1|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|Add0~34_combout\,
	datab => \B1|Add0~32_combout\,
	datac => \B1|Add0~36_combout\,
	datad => \B1|Add0~38_combout\,
	combout => \B1|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y30_N12
\B1|State~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|State~2_combout\ = (\B1|Add0~40_combout\) # ((\B1|Add0~42_combout\) # (!\B1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|Add0~40_combout\,
	datac => \B1|Add0~42_combout\,
	datad => \B1|Equal0~0_combout\,
	combout => \B1|State~2_combout\);

-- Location: LCCOMB_X111_Y31_N30
\B1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Equal0~1_combout\ = (!\B1|Add0~4_combout\ & (!\B1|Add0~0_combout\ & (!\B1|Add0~2_combout\ & !\B1|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|Add0~4_combout\,
	datab => \B1|Add0~0_combout\,
	datac => \B1|Add0~2_combout\,
	datad => \B1|Add0~6_combout\,
	combout => \B1|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y30_N14
\B1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Equal0~2_combout\ = (!\B1|Add0~8_combout\ & (!\B1|Add0~14_combout\ & (!\B1|Add0~10_combout\ & !\B1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|Add0~8_combout\,
	datab => \B1|Add0~14_combout\,
	datac => \B1|Add0~10_combout\,
	datad => \B1|Add0~12_combout\,
	combout => \B1|Equal0~2_combout\);

-- Location: LCCOMB_X111_Y30_N4
\B1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Equal0~3_combout\ = (!\B1|Add0~16_combout\ & (!\B1|Add0~22_combout\ & (!\B1|Add0~20_combout\ & !\B1|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|Add0~16_combout\,
	datab => \B1|Add0~22_combout\,
	datac => \B1|Add0~20_combout\,
	datad => \B1|Add0~18_combout\,
	combout => \B1|Equal0~3_combout\);

-- Location: LCCOMB_X111_Y30_N2
\B1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Equal0~4_combout\ = (!\B1|Add0~24_combout\ & (!\B1|Add0~30_combout\ & (!\B1|Add0~26_combout\ & !\B1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|Add0~24_combout\,
	datab => \B1|Add0~30_combout\,
	datac => \B1|Add0~26_combout\,
	datad => \B1|Add0~28_combout\,
	combout => \B1|Equal0~4_combout\);

-- Location: LCCOMB_X111_Y30_N24
\B1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|Equal0~5_combout\ = (\B1|Equal0~1_combout\ & (\B1|Equal0~2_combout\ & (\B1|Equal0~3_combout\ & \B1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|Equal0~1_combout\,
	datab => \B1|Equal0~2_combout\,
	datac => \B1|Equal0~3_combout\,
	datad => \B1|Equal0~4_combout\,
	combout => \B1|Equal0~5_combout\);

-- Location: LCCOMB_X111_Y30_N6
\B1|State~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|State~3_combout\ = (\B1|Add0~44_combout\) # ((\B1|Add0~48_combout\) # (!\B1|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|Add0~44_combout\,
	datac => \B1|Add0~48_combout\,
	datad => \B1|Equal0~5_combout\,
	combout => \B1|State~3_combout\);

-- Location: LCCOMB_X111_Y30_N20
\B1|State~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|State~4_combout\ = (\B1|State~2_combout\) # ((\B1|Add0~54_combout\) # ((\B1|Add0~60_combout\) # (\B1|State~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|State~2_combout\,
	datab => \B1|Add0~54_combout\,
	datac => \B1|Add0~60_combout\,
	datad => \B1|State~3_combout\,
	combout => \B1|State~4_combout\);

-- Location: LCCOMB_X111_Y30_N8
\B1|State~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|State~5_combout\ = (\B1|State~q\ & ((\B1|Add0~62_combout\) # ((\B1|State~1_combout\) # (\B1|State~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|Add0~62_combout\,
	datab => \B1|State~1_combout\,
	datac => \B1|State~q\,
	datad => \B1|State~4_combout\,
	combout => \B1|State~5_combout\);

-- Location: FF_X114_Y36_N13
\B1|SPB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|SPB~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|SPB~q\);

-- Location: LCCOMB_X113_Y30_N28
\B1|SDC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~0_combout\ = (!\B1|Add0~62_combout\) # (!\B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|State~q\,
	datad => \B1|Add0~62_combout\,
	combout => \B1|SDC~0_combout\);

-- Location: LCCOMB_X113_Y30_N10
\B1|SDC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~1_combout\ = (\B1|State~q\ & \B1|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|State~q\,
	datad => \B1|Add0~60_combout\,
	combout => \B1|SDC~1_combout\);

-- Location: LCCOMB_X111_Y30_N30
\B1|SDC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~2_combout\ = (\B1|Add0~58_combout\ & \B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|Add0~58_combout\,
	datac => \B1|State~q\,
	combout => \B1|SDC~2_combout\);

-- Location: LCCOMB_X113_Y30_N12
\B1|SDC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~3_combout\ = (\B1|State~q\ & \B1|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|State~q\,
	datad => \B1|Add0~56_combout\,
	combout => \B1|SDC~3_combout\);

-- Location: LCCOMB_X111_Y30_N16
\B1|SDC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~4_combout\ = (\B1|Add0~54_combout\ & \B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|Add0~54_combout\,
	datac => \B1|State~q\,
	combout => \B1|SDC~4_combout\);

-- Location: LCCOMB_X113_Y30_N22
\B1|SDC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~5_combout\ = (\B1|State~q\ & \B1|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|State~q\,
	datad => \B1|Add0~52_combout\,
	combout => \B1|SDC~5_combout\);

-- Location: LCCOMB_X113_Y30_N0
\B1|SDC~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~6_combout\ = (\B1|State~q\ & \B1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|State~q\,
	datad => \B1|Add0~50_combout\,
	combout => \B1|SDC~6_combout\);

-- Location: LCCOMB_X113_Y30_N18
\B1|SDC~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~7_combout\ = (\B1|State~q\ & \B1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|State~q\,
	datac => \B1|Add0~48_combout\,
	combout => \B1|SDC~7_combout\);

-- Location: LCCOMB_X113_Y30_N20
\B1|SDC~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~8_combout\ = (\B1|State~q\ & \B1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|State~q\,
	datad => \B1|Add0~46_combout\,
	combout => \B1|SDC~8_combout\);

-- Location: LCCOMB_X113_Y30_N26
\B1|SDC~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~9_combout\ = (\B1|State~q\ & \B1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|State~q\,
	datad => \B1|Add0~44_combout\,
	combout => \B1|SDC~9_combout\);

-- Location: LCCOMB_X113_Y30_N4
\B1|SDC~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~10_combout\ = (\B1|State~q\ & \B1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|State~q\,
	datad => \B1|Add0~42_combout\,
	combout => \B1|SDC~10_combout\);

-- Location: LCCOMB_X113_Y30_N6
\B1|SDC~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~11_combout\ = (\B1|State~q\ & \B1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|State~q\,
	datad => \B1|Add0~40_combout\,
	combout => \B1|SDC~11_combout\);

-- Location: LCCOMB_X113_Y30_N8
\B1|SDC~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~12_combout\ = (\B1|State~q\ & \B1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|State~q\,
	datac => \B1|Add0~38_combout\,
	combout => \B1|SDC~12_combout\);

-- Location: LCCOMB_X111_Y30_N22
\B1|SDC~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~13_combout\ = (\B1|Add0~36_combout\ & \B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Add0~36_combout\,
	datad => \B1|State~q\,
	combout => \B1|SDC~13_combout\);

-- Location: LCCOMB_X111_Y30_N26
\B1|SDC~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~14_combout\ = (\B1|State~q\ & \B1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|State~q\,
	datad => \B1|Add0~34_combout\,
	combout => \B1|SDC~14_combout\);

-- Location: LCCOMB_X111_Y30_N0
\B1|SDC~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~15_combout\ = (\B1|Add0~32_combout\ & \B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|Add0~32_combout\,
	datac => \B1|State~q\,
	combout => \B1|SDC~15_combout\);

-- Location: LCCOMB_X111_Y31_N8
\B1|SDC~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~16_combout\ = (\B1|Add0~30_combout\ & \B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Add0~30_combout\,
	datad => \B1|State~q\,
	combout => \B1|SDC~16_combout\);

-- Location: LCCOMB_X111_Y31_N2
\B1|SDC~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~17_combout\ = (\B1|State~q\ & \B1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|State~q\,
	datad => \B1|Add0~28_combout\,
	combout => \B1|SDC~17_combout\);

-- Location: LCCOMB_X111_Y31_N12
\B1|SDC~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~18_combout\ = (\B1|Add0~26_combout\) # (!\B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|State~q\,
	datad => \B1|Add0~26_combout\,
	combout => \B1|SDC~18_combout\);

-- Location: LCCOMB_X111_Y31_N14
\B1|SDC~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~19_combout\ = (\B1|Add0~24_combout\) # (!\B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|State~q\,
	datad => \B1|Add0~24_combout\,
	combout => \B1|SDC~19_combout\);

-- Location: LCCOMB_X111_Y31_N28
\B1|SDC~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~20_combout\ = (\B1|Add0~22_combout\) # (!\B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|State~q\,
	datad => \B1|Add0~22_combout\,
	combout => \B1|SDC~20_combout\);

-- Location: LCCOMB_X111_Y31_N0
\B1|SDC~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~21_combout\ = (\B1|Add0~20_combout\ & \B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Add0~20_combout\,
	datad => \B1|State~q\,
	combout => \B1|SDC~21_combout\);

-- Location: LCCOMB_X111_Y31_N6
\B1|SDC~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~22_combout\ = (\B1|Add0~18_combout\) # (!\B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|State~q\,
	datad => \B1|Add0~18_combout\,
	combout => \B1|SDC~22_combout\);

-- Location: LCCOMB_X111_Y31_N24
\B1|SDC~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~23_combout\ = (\B1|State~q\ & \B1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|State~q\,
	datad => \B1|Add0~16_combout\,
	combout => \B1|SDC~23_combout\);

-- Location: LCCOMB_X113_Y31_N12
\B1|SDC~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~24_combout\ = (\B1|Add0~14_combout\) # (!\B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|State~q\,
	datad => \B1|Add0~14_combout\,
	combout => \B1|SDC~24_combout\);

-- Location: LCCOMB_X111_Y31_N10
\B1|SDC~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~25_combout\ = (\B1|Add0~12_combout\ & \B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Add0~12_combout\,
	datad => \B1|State~q\,
	combout => \B1|SDC~25_combout\);

-- Location: LCCOMB_X111_Y31_N16
\B1|SDC~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~26_combout\ = (\B1|Add0~10_combout\ & \B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Add0~10_combout\,
	datad => \B1|State~q\,
	combout => \B1|SDC~26_combout\);

-- Location: LCCOMB_X111_Y31_N26
\B1|SDC~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~27_combout\ = (\B1|Add0~8_combout\) # (!\B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Add0~8_combout\,
	datad => \B1|State~q\,
	combout => \B1|SDC~27_combout\);

-- Location: LCCOMB_X111_Y31_N20
\B1|SDC~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~28_combout\ = (\B1|Add0~6_combout\) # (!\B1|State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|State~q\,
	datad => \B1|Add0~6_combout\,
	combout => \B1|SDC~28_combout\);

-- Location: LCCOMB_X111_Y31_N18
\B1|SDC~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~29_combout\ = (\B1|State~q\ & \B1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|State~q\,
	datad => \B1|Add0~4_combout\,
	combout => \B1|SDC~29_combout\);

-- Location: LCCOMB_X111_Y31_N4
\B1|SDC~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~30_combout\ = (\B1|State~q\ & \B1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|State~q\,
	datad => \B1|Add0~2_combout\,
	combout => \B1|SDC~30_combout\);

-- Location: LCCOMB_X111_Y31_N22
\B1|SDC~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SDC~31_combout\ = (!\B1|State~q\) # (!\B1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Add0~0_combout\,
	datad => \B1|State~q\,
	combout => \B1|SDC~31_combout\);

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

-- Location: LCCOMB_X114_Y36_N0
\B1|DReg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|DReg[3]~feeder_combout\ = \B1|DReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B1|DReg\(2),
	combout => \B1|DReg[3]~feeder_combout\);

-- Location: LCCOMB_X114_Y36_N30
\B1|DReg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|DReg[5]~feeder_combout\ = \B1|DReg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B1|DReg\(4),
	combout => \B1|DReg[5]~feeder_combout\);

-- Location: LCCOMB_X114_Y36_N18
\B1|DReg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|DReg[4]~feeder_combout\ = \B1|DReg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B1|DReg\(3),
	combout => \B1|DReg[4]~feeder_combout\);

-- Location: LCCOMB_X114_Y36_N16
\B1|DReg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|DReg[1]~feeder_combout\ = \B1|DReg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B1|DReg\(0),
	combout => \B1|DReg[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y36_N28
\B1|DReg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|DReg[2]~feeder_combout\ = \B1|DReg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B1|DReg\(1),
	combout => \B1|DReg[2]~feeder_combout\);

-- Location: LCCOMB_X114_Y36_N6
\B1|DReg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|DReg[0]~feeder_combout\ = \B1|DPB~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B1|DPB~q\,
	combout => \B1|DReg[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y36_N20
\B1|DPB~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|DPB~feeder_combout\ = \B1|SPB~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B1|SPB~q\,
	combout => \B1|DPB~feeder_combout\);

-- Location: LCCOMB_X114_Y36_N12
\B1|SPB~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|SPB~feeder_combout\ = \KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \B1|SPB~feeder_combout\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
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
	i => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\,
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
	i => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\,
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
	i => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\,
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
	i => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\,
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
	i => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\,
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
	i => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\,
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
	i => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\,
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
	i => GND,
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

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SSD0|Mux6~0_combout\,
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
	i => \SSD0|Mux5~0_combout\,
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
	i => \SSD0|Mux4~0_combout\,
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
	i => \SSD0|Mux3~0_combout\,
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
	i => \SSD0|Mux2~0_combout\,
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
	i => \SSD0|Mux1~0_combout\,
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
	i => \SSD0|ALT_INV_Mux0~0_combout\,
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
	i => \SSD1|Mux6~0_combout\,
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
	i => \SSD1|Mux5~0_combout\,
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
	i => \SSD1|Mux4~0_combout\,
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
	i => \SSD1|Mux3~0_combout\,
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
	i => \SSD1|Mux2~0_combout\,
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
	i => \SSD1|Mux1~0_combout\,
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
	i => \SSD1|ALT_INV_Mux0~0_combout\,
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
	i => \SSD2|Mux6~0_combout\,
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
	i => \SSD2|Mux5~0_combout\,
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
	i => \SSD2|Mux4~0_combout\,
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
	i => \SSD2|Mux3~0_combout\,
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
	i => \SSD2|Mux2~0_combout\,
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
	i => \SSD2|Mux1~0_combout\,
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
	i => \SSD2|ALT_INV_Mux0~0_combout\,
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
	i => \SW[12]~input_o\,
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
	i => GND,
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
	i => GND,
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
	i => \SW[12]~input_o\,
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
	i => \SW[12]~input_o\,
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
	i => \SW[12]~input_o\,
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
	i => \SSD4|Mux6~0_combout\,
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
	i => \SSD4|Mux5~0_combout\,
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
	i => \SSD4|Mux4~0_combout\,
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
	i => \SSD4|Mux3~0_combout\,
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
	i => \SSD4|Mux2~0_combout\,
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
	i => \SSD4|Mux1~0_combout\,
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
	i => \SSD4|ALT_INV_Mux0~0_combout\,
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
	i => \SW[17]~input_o\,
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
	i => GND,
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
	i => GND,
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
	i => \SW[17]~input_o\,
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
	i => \SW[17]~input_o\,
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
	i => \SW[17]~input_o\,
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
	i => \SSD6|Mux6~0_combout\,
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
	i => \SSD6|Mux5~0_combout\,
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
	i => \SSD6|Mux4~0_combout\,
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
	i => \SSD6|Mux3~0_combout\,
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
	i => \SSD6|Mux2~0_combout\,
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
	i => \SSD6|Mux1~0_combout\,
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
	i => \SSD6|ALT_INV_Mux0~0_combout\,
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
	i => \SSD7|Mux6~0_combout\,
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
	i => \SSD7|Mux5~0_combout\,
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
	i => \SSD7|Mux4~0_combout\,
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
	i => \SSD7|Mux3~0_combout\,
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
	i => \SSD7|Mux2~0_combout\,
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
	i => \SSD7|Mux1~0_combout\,
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
	i => \SSD7|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

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

-- Location: LCCOMB_X114_Y36_N10
\B1|DBx~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \B1|DBx~feeder_combout\ = \B1|DBx~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|DBx~3_combout\,
	combout => \B1|DBx~feeder_combout\);

-- Location: FF_X114_Y36_N11
\B1|DBx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \B1|DBx~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|DBx~q\);

-- Location: CLKCTRL_G8
\B1|DBx~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \B1|DBx~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \B1|DBx~clkctrl_outclk\);

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

-- Location: M9K_X104_Y16_N0
\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_infer:ram8_32_1|altsyncram:ram_block_rtl_0|altsyncram_kpg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_KEY[3]~input_o\,
	portbre => VCC,
	clk0 => \B1|DBx~clkctrl_outclk\,
	portadatain => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X111_Y53_N24
\SSD0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD0|Mux6~0_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ $ (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \SSD0|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y53_N26
\SSD0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD0|Mux5~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[0]~input_o\ & (\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & (\SW[3]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \SSD0|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y53_N12
\SSD0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD0|Mux4~0_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\ & ((\SW[1]~input_o\) # (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \SSD0|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y53_N14
\SSD0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD0|Mux3~0_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[2]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & (\SW[2]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \SSD0|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y53_N0
\SSD0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD0|Mux2~0_combout\ = (\SW[1]~input_o\ & (((!\SW[3]~input_o\ & \SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (!\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \SSD0|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y53_N18
\SSD0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD0|Mux1~0_combout\ = (\SW[1]~input_o\ & (!\SW[3]~input_o\ & ((\SW[0]~input_o\) # (!\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ & (\SW[2]~input_o\ $ (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \SSD0|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y53_N16
\SSD0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD0|Mux0~0_combout\ = (\SW[0]~input_o\ & ((\SW[3]~input_o\) # (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\) # (\SW[2]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \SSD0|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y22_N12
\SSD1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD1|Mux6~0_combout\ = (\SW[7]~input_o\ & (\SW[4]~input_o\ & (\SW[5]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[7]~input_o\ & (!\SW[5]~input_o\ & (\SW[6]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \SSD1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y22_N2
\SSD1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD1|Mux5~0_combout\ = (\SW[5]~input_o\ & ((\SW[4]~input_o\ & (\SW[7]~input_o\)) # (!\SW[4]~input_o\ & ((\SW[6]~input_o\))))) # (!\SW[5]~input_o\ & (\SW[6]~input_o\ & (\SW[7]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \SSD1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y22_N24
\SSD1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD1|Mux4~0_combout\ = (\SW[7]~input_o\ & (\SW[6]~input_o\ & ((\SW[5]~input_o\) # (!\SW[4]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[5]~input_o\ & (!\SW[6]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \SSD1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y22_N26
\SSD1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD1|Mux3~0_combout\ = (\SW[5]~input_o\ & ((\SW[6]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[6]~input_o\ & (\SW[7]~input_o\ & !\SW[4]~input_o\)))) # (!\SW[5]~input_o\ & (!\SW[7]~input_o\ & (\SW[6]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \SSD1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y22_N28
\SSD1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD1|Mux2~0_combout\ = (\SW[5]~input_o\ & (!\SW[7]~input_o\ & ((\SW[4]~input_o\)))) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & (!\SW[7]~input_o\)) # (!\SW[6]~input_o\ & ((\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \SSD1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y22_N22
\SSD1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD1|Mux1~0_combout\ = (\SW[5]~input_o\ & (!\SW[7]~input_o\ & ((\SW[4]~input_o\) # (!\SW[6]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[4]~input_o\ & (\SW[7]~input_o\ $ (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \SSD1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y22_N4
\SSD1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD1|Mux0~0_combout\ = (\SW[4]~input_o\ & ((\SW[7]~input_o\) # (\SW[5]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[4]~input_o\ & ((\SW[5]~input_o\) # (\SW[7]~input_o\ $ (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \SSD1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y16_N0
\SSD2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD2|Mux6~0_combout\ = (\SW[10]~input_o\ & (!\SW[9]~input_o\ & (\SW[8]~input_o\ $ (!\SW[11]~input_o\)))) # (!\SW[10]~input_o\ & (\SW[8]~input_o\ & (\SW[9]~input_o\ $ (!\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \SSD2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y16_N22
\SSD2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD2|Mux5~0_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\SW[11]~input_o\))) # (!\SW[8]~input_o\ & (\SW[10]~input_o\)))) # (!\SW[9]~input_o\ & (\SW[10]~input_o\ & (\SW[8]~input_o\ $ (\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \SSD2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y16_N16
\SSD2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD2|Mux4~0_combout\ = (\SW[10]~input_o\ & (\SW[11]~input_o\ & ((\SW[9]~input_o\) # (!\SW[8]~input_o\)))) # (!\SW[10]~input_o\ & (\SW[9]~input_o\ & (!\SW[8]~input_o\ & !\SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \SSD2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y16_N18
\SSD2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD2|Mux3~0_combout\ = (\SW[9]~input_o\ & ((\SW[10]~input_o\ & (\SW[8]~input_o\)) # (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & \SW[11]~input_o\)))) # (!\SW[9]~input_o\ & (!\SW[11]~input_o\ & (\SW[10]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \SSD2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y16_N24
\SSD2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD2|Mux2~0_combout\ = (\SW[9]~input_o\ & (((\SW[8]~input_o\ & !\SW[11]~input_o\)))) # (!\SW[9]~input_o\ & ((\SW[10]~input_o\ & ((!\SW[11]~input_o\))) # (!\SW[10]~input_o\ & (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \SSD2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y16_N10
\SSD2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD2|Mux1~0_combout\ = (\SW[9]~input_o\ & (!\SW[11]~input_o\ & ((\SW[8]~input_o\) # (!\SW[10]~input_o\)))) # (!\SW[9]~input_o\ & (\SW[8]~input_o\ & (\SW[10]~input_o\ $ (!\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \SSD2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y16_N12
\SSD2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD2|Mux0~0_combout\ = (\SW[8]~input_o\ & ((\SW[11]~input_o\) # (\SW[9]~input_o\ $ (\SW[10]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\) # (\SW[10]~input_o\ $ (\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[11]~input_o\,
	combout => \SSD2|Mux0~0_combout\);

-- Location: LCCOMB_X86_Y4_N12
\SSD4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD4|Mux6~0_combout\ = (\SW[15]~input_o\ & (!\SW[14]~input_o\ & (\SW[13]~input_o\ $ (!\SW[16]~input_o\)))) # (!\SW[15]~input_o\ & (\SW[13]~input_o\ & (\SW[14]~input_o\ $ (!\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \SSD4|Mux6~0_combout\);

-- Location: LCCOMB_X86_Y4_N14
\SSD4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD4|Mux5~0_combout\ = (\SW[14]~input_o\ & ((\SW[13]~input_o\ & ((\SW[16]~input_o\))) # (!\SW[13]~input_o\ & (\SW[15]~input_o\)))) # (!\SW[14]~input_o\ & (\SW[15]~input_o\ & (\SW[13]~input_o\ $ (\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \SSD4|Mux5~0_combout\);

-- Location: LCCOMB_X86_Y4_N8
\SSD4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD4|Mux4~0_combout\ = (\SW[15]~input_o\ & (\SW[16]~input_o\ & ((\SW[14]~input_o\) # (!\SW[13]~input_o\)))) # (!\SW[15]~input_o\ & (\SW[14]~input_o\ & (!\SW[13]~input_o\ & !\SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \SSD4|Mux4~0_combout\);

-- Location: LCCOMB_X86_Y4_N10
\SSD4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD4|Mux3~0_combout\ = (\SW[14]~input_o\ & ((\SW[15]~input_o\ & (\SW[13]~input_o\)) # (!\SW[15]~input_o\ & (!\SW[13]~input_o\ & \SW[16]~input_o\)))) # (!\SW[14]~input_o\ & (!\SW[16]~input_o\ & (\SW[15]~input_o\ $ (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \SSD4|Mux3~0_combout\);

-- Location: LCCOMB_X86_Y4_N28
\SSD4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD4|Mux2~0_combout\ = (\SW[14]~input_o\ & (((\SW[13]~input_o\ & !\SW[16]~input_o\)))) # (!\SW[14]~input_o\ & ((\SW[15]~input_o\ & ((!\SW[16]~input_o\))) # (!\SW[15]~input_o\ & (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \SSD4|Mux2~0_combout\);

-- Location: LCCOMB_X86_Y4_N26
\SSD4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD4|Mux1~0_combout\ = (\SW[14]~input_o\ & (!\SW[16]~input_o\ & ((\SW[13]~input_o\) # (!\SW[15]~input_o\)))) # (!\SW[14]~input_o\ & (\SW[13]~input_o\ & (\SW[15]~input_o\ $ (!\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \SSD4|Mux1~0_combout\);

-- Location: LCCOMB_X86_Y4_N24
\SSD4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD4|Mux0~0_combout\ = (\SW[13]~input_o\ & ((\SW[16]~input_o\) # (\SW[14]~input_o\ $ (\SW[15]~input_o\)))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\) # (\SW[15]~input_o\ $ (\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \SSD4|Mux0~0_combout\);

-- Location: LCCOMB_X85_Y4_N12
\SSD6|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD6|Mux6~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ $ 
-- (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\)))) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\ & (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\ $ 
-- (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \SSD6|Mux6~0_combout\);

-- Location: LCCOMB_X85_Y4_N22
\SSD6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD6|Mux5~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\)) # 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\))))) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\ 
-- & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\ $ (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \SSD6|Mux5~0_combout\);

-- Location: LCCOMB_X85_Y4_N20
\SSD6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD6|Mux4~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\) # 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ & (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\ & 
-- !\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \SSD6|Mux4~0_combout\);

-- Location: LCCOMB_X85_Y4_N6
\SSD6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD6|Mux3~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\ & !\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ & 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\ $ (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \SSD6|Mux3~0_combout\);

-- Location: LCCOMB_X85_Y4_N28
\SSD6|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD6|Mux2~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ & (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\ & (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\)) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\ & 
-- ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \SSD6|Mux2~0_combout\);

-- Location: LCCOMB_X85_Y4_N26
\SSD6|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD6|Mux1~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ & (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\) # 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\)))) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\ $ 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \SSD6|Mux1~0_combout\);

-- Location: LCCOMB_X85_Y4_N4
\SSD6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD6|Mux0~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\) # (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\ $ 
-- (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\)))) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\) # (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\ $ 
-- (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \SSD6|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y4_N12
\SSD7|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD7|Mux6~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ & (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\ $ 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\)))) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\ $ 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\,
	combout => \SSD7|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y4_N30
\SSD7|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD7|Mux5~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\))) # 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\)))) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ & 
-- (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\ $ (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\,
	combout => \SSD7|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y4_N0
\SSD7|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD7|Mux4~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\) # 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\)))) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ & (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\ & 
-- !\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\,
	combout => \SSD7|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y4_N2
\SSD7|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD7|Mux3~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\))) # 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\ & !\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\)))) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\ & 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ $ (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\,
	combout => \SSD7|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y4_N28
\SSD7|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD7|Mux2~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\ & (((!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\ & \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\)))) # 
-- (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ & (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\)) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ & 
-- ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\,
	combout => \SSD7|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y4_N26
\SSD7|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD7|Mux1~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\ & (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\ $ 
-- (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\)))) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ & (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\) # 
-- (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\,
	combout => \SSD7|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y4_N24
\SSD7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SSD7|Mux0~0_combout\ = (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\) # (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ $ 
-- (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\)))) # (!\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\ & ((\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\) # (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\ $ 
-- (\ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \ram8_32_1|ram_block_rtl_0|auto_generated|ram_block1a4\,
	combout => \SSD7|Mux0~0_combout\);

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
END structure;


