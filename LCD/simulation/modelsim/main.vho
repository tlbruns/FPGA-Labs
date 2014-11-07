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

-- DATE "11/07/2014 13:11:45"

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

ENTITY 	main IS
    PORT (
	CLOCK_50 : IN std_logic;
	GPIO : INOUT std_logic_vector(35 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- GPIO[8]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[10]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[11]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[12]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[13]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[14]	=>  Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[15]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[16]	=>  Location: PIN_AF25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[17]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[18]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[19]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[20]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[21]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[22]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[23]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[24]	=>  Location: PIN_AH25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[25]	=>  Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[0]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[1]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[3]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[4]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[5]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[7]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[9]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[26]	=>  Location: PIN_AG22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[27]	=>  Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[28]	=>  Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[29]	=>  Location: PIN_AF26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[30]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[31]	=>  Location: PIN_AG23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[32]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[33]	=>  Location: PIN_AH26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[34]	=>  Location: PIN_AH23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[35]	=>  Location: PIN_AG26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF main IS
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
SIGNAL \pll_clock|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll_clock|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll_clock|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Tick~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \LessThan7~1_cout\ : std_logic;
SIGNAL \LessThan7~3_cout\ : std_logic;
SIGNAL \LessThan7~5_cout\ : std_logic;
SIGNAL \LessThan7~7_cout\ : std_logic;
SIGNAL \LessThan7~9_cout\ : std_logic;
SIGNAL \LessThan7~11_cout\ : std_logic;
SIGNAL \LessThan7~13_cout\ : std_logic;
SIGNAL \LessThan7~15_cout\ : std_logic;
SIGNAL \LessThan7~17_cout\ : std_logic;
SIGNAL \LessThan7~18_combout\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~15_cout\ : std_logic;
SIGNAL \LessThan4~17_cout\ : std_logic;
SIGNAL \LessThan4~19_cout\ : std_logic;
SIGNAL \LessThan4~20_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \LessThan5~1_cout\ : std_logic;
SIGNAL \LessThan5~3_cout\ : std_logic;
SIGNAL \LessThan5~5_cout\ : std_logic;
SIGNAL \LessThan5~7_cout\ : std_logic;
SIGNAL \LessThan5~9_cout\ : std_logic;
SIGNAL \LessThan5~11_cout\ : std_logic;
SIGNAL \LessThan5~13_cout\ : std_logic;
SIGNAL \LessThan5~15_cout\ : std_logic;
SIGNAL \LessThan5~17_cout\ : std_logic;
SIGNAL \LessThan5~19_cout\ : std_logic;
SIGNAL \LessThan5~20_combout\ : std_logic;
SIGNAL \Hcount[1]~13_combout\ : std_logic;
SIGNAL \Prescaler[0]~25\ : std_logic;
SIGNAL \Prescaler[0]~24_combout\ : std_logic;
SIGNAL \Prescaler[1]~27\ : std_logic;
SIGNAL \Prescaler[1]~26_combout\ : std_logic;
SIGNAL \Prescaler[2]~29\ : std_logic;
SIGNAL \Prescaler[2]~28_combout\ : std_logic;
SIGNAL \Prescaler[3]~31\ : std_logic;
SIGNAL \Prescaler[3]~30_combout\ : std_logic;
SIGNAL \Prescaler[4]~33\ : std_logic;
SIGNAL \Prescaler[4]~32_combout\ : std_logic;
SIGNAL \Prescaler[5]~35\ : std_logic;
SIGNAL \Prescaler[5]~34_combout\ : std_logic;
SIGNAL \Prescaler[6]~37\ : std_logic;
SIGNAL \Prescaler[6]~36_combout\ : std_logic;
SIGNAL \Prescaler[7]~39\ : std_logic;
SIGNAL \Prescaler[7]~38_combout\ : std_logic;
SIGNAL \Prescaler[8]~41\ : std_logic;
SIGNAL \Prescaler[8]~40_combout\ : std_logic;
SIGNAL \Prescaler[9]~43\ : std_logic;
SIGNAL \Prescaler[9]~42_combout\ : std_logic;
SIGNAL \Prescaler[10]~45\ : std_logic;
SIGNAL \Prescaler[10]~44_combout\ : std_logic;
SIGNAL \Prescaler[11]~47\ : std_logic;
SIGNAL \Prescaler[11]~46_combout\ : std_logic;
SIGNAL \Prescaler[12]~49\ : std_logic;
SIGNAL \Prescaler[12]~48_combout\ : std_logic;
SIGNAL \Prescaler[13]~51\ : std_logic;
SIGNAL \Prescaler[13]~50_combout\ : std_logic;
SIGNAL \Prescaler[14]~53\ : std_logic;
SIGNAL \Prescaler[14]~52_combout\ : std_logic;
SIGNAL \Prescaler[15]~55\ : std_logic;
SIGNAL \Prescaler[15]~54_combout\ : std_logic;
SIGNAL \Prescaler[16]~57\ : std_logic;
SIGNAL \Prescaler[16]~56_combout\ : std_logic;
SIGNAL \Prescaler[17]~59\ : std_logic;
SIGNAL \Prescaler[17]~58_combout\ : std_logic;
SIGNAL \Prescaler[18]~61\ : std_logic;
SIGNAL \Prescaler[18]~60_combout\ : std_logic;
SIGNAL \Prescaler[19]~63\ : std_logic;
SIGNAL \Prescaler[19]~62_combout\ : std_logic;
SIGNAL \Prescaler[20]~65\ : std_logic;
SIGNAL \Prescaler[20]~64_combout\ : std_logic;
SIGNAL \Prescaler[21]~67\ : std_logic;
SIGNAL \Prescaler[21]~66_combout\ : std_logic;
SIGNAL \Prescaler[22]~69\ : std_logic;
SIGNAL \Prescaler[22]~68_combout\ : std_logic;
SIGNAL \Prescaler[23]~70_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux0~17_combout\ : std_logic;
SIGNAL \Mux0~18_combout\ : std_logic;
SIGNAL \Mux0~19_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux0~22_combout\ : std_logic;
SIGNAL \Mux0~26_combout\ : std_logic;
SIGNAL \Mux0~27_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux0~28_combout\ : std_logic;
SIGNAL \Mux0~29_combout\ : std_logic;
SIGNAL \Mux0~30_combout\ : std_logic;
SIGNAL \Mux0~31_combout\ : std_logic;
SIGNAL \Mux0~32_combout\ : std_logic;
SIGNAL \Mux0~33_combout\ : std_logic;
SIGNAL \Mux0~34_combout\ : std_logic;
SIGNAL \Mux0~35_combout\ : std_logic;
SIGNAL \Mux0~36_combout\ : std_logic;
SIGNAL \Mux0~37_combout\ : std_logic;
SIGNAL \Mux0~38_combout\ : std_logic;
SIGNAL \Mux0~39_combout\ : std_logic;
SIGNAL \Mux0~40_combout\ : std_logic;
SIGNAL \GPIO~73_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \Tick~q\ : std_logic;
SIGNAL \squareLeft[10]~13_combout\ : std_logic;
SIGNAL \DE_Generator~0_combout\ : std_logic;
SIGNAL \DE_Generator~1_combout\ : std_logic;
SIGNAL \DE_Generator~3_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \LessThan15~1_combout\ : std_logic;
SIGNAL \LessThan15~2_combout\ : std_logic;
SIGNAL \LessThan15~3_combout\ : std_logic;
SIGNAL \LessThan15~4_combout\ : std_logic;
SIGNAL \LessThan15~5_combout\ : std_logic;
SIGNAL \LessThan15~6_combout\ : std_logic;
SIGNAL \LessThan15~7_combout\ : std_logic;
SIGNAL \Tick~0_combout\ : std_logic;
SIGNAL \Mux0~42_combout\ : std_logic;
SIGNAL \Mux0~43_combout\ : std_logic;
SIGNAL \Mux0~44_combout\ : std_logic;
SIGNAL \Mux0~45_combout\ : std_logic;
SIGNAL \GPIO[8]~input_o\ : std_logic;
SIGNAL \GPIO[10]~input_o\ : std_logic;
SIGNAL \GPIO[11]~input_o\ : std_logic;
SIGNAL \GPIO[12]~input_o\ : std_logic;
SIGNAL \GPIO[13]~input_o\ : std_logic;
SIGNAL \GPIO[14]~input_o\ : std_logic;
SIGNAL \GPIO[15]~input_o\ : std_logic;
SIGNAL \GPIO[16]~input_o\ : std_logic;
SIGNAL \GPIO[17]~input_o\ : std_logic;
SIGNAL \GPIO[18]~input_o\ : std_logic;
SIGNAL \GPIO[19]~input_o\ : std_logic;
SIGNAL \GPIO[20]~input_o\ : std_logic;
SIGNAL \GPIO[21]~input_o\ : std_logic;
SIGNAL \GPIO[22]~input_o\ : std_logic;
SIGNAL \GPIO[23]~input_o\ : std_logic;
SIGNAL \GPIO[24]~input_o\ : std_logic;
SIGNAL \GPIO[25]~input_o\ : std_logic;
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
SIGNAL \GPIO[3]~input_o\ : std_logic;
SIGNAL \GPIO[4]~input_o\ : std_logic;
SIGNAL \GPIO[5]~input_o\ : std_logic;
SIGNAL \GPIO[6]~input_o\ : std_logic;
SIGNAL \GPIO[7]~input_o\ : std_logic;
SIGNAL \GPIO[9]~input_o\ : std_logic;
SIGNAL \GPIO[26]~input_o\ : std_logic;
SIGNAL \GPIO[27]~input_o\ : std_logic;
SIGNAL \GPIO[28]~input_o\ : std_logic;
SIGNAL \GPIO[29]~input_o\ : std_logic;
SIGNAL \GPIO[30]~input_o\ : std_logic;
SIGNAL \GPIO[31]~input_o\ : std_logic;
SIGNAL \GPIO[32]~input_o\ : std_logic;
SIGNAL \GPIO[33]~input_o\ : std_logic;
SIGNAL \GPIO[34]~input_o\ : std_logic;
SIGNAL \GPIO[35]~input_o\ : std_logic;
SIGNAL \Tick~clkctrl_outclk\ : std_logic;
SIGNAL \Vcount[0]~11\ : std_logic;
SIGNAL \Vcount[1]~12_combout\ : std_logic;
SIGNAL \Vcount[8]~26_combout\ : std_logic;
SIGNAL \Hcount[0]~11_combout\ : std_logic;
SIGNAL \Hcount[0]~12\ : std_logic;
SIGNAL \Hcount[1]~14\ : std_logic;
SIGNAL \Hcount[2]~16\ : std_logic;
SIGNAL \Hcount[3]~17_combout\ : std_logic;
SIGNAL \Hcount[3]~18\ : std_logic;
SIGNAL \Hcount[4]~20\ : std_logic;
SIGNAL \Hcount[5]~21_combout\ : std_logic;
SIGNAL \Hcount[5]~22\ : std_logic;
SIGNAL \Hcount[6]~23_combout\ : std_logic;
SIGNAL \Hcount[6]~24\ : std_logic;
SIGNAL \Hcount[7]~25_combout\ : std_logic;
SIGNAL \Hcount[7]~26\ : std_logic;
SIGNAL \Hcount[8]~27_combout\ : std_logic;
SIGNAL \Hcount[8]~28\ : std_logic;
SIGNAL \Hcount[9]~30\ : std_logic;
SIGNAL \Hcount[10]~31_combout\ : std_logic;
SIGNAL \Hcount[9]~29_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \Vcount[1]~13\ : std_logic;
SIGNAL \Vcount[2]~15\ : std_logic;
SIGNAL \Vcount[3]~17\ : std_logic;
SIGNAL \Vcount[4]~18_combout\ : std_logic;
SIGNAL \Vcount[4]~19\ : std_logic;
SIGNAL \Vcount[5]~20_combout\ : std_logic;
SIGNAL \Vcount[5]~21\ : std_logic;
SIGNAL \Vcount[6]~22_combout\ : std_logic;
SIGNAL \Vcount[6]~23\ : std_logic;
SIGNAL \Vcount[7]~24_combout\ : std_logic;
SIGNAL \Vcount[7]~25\ : std_logic;
SIGNAL \Vcount[8]~27\ : std_logic;
SIGNAL \Vcount[9]~28_combout\ : std_logic;
SIGNAL \Vcount[0]~10_combout\ : std_logic;
SIGNAL \Vcount[3]~16_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Hcount[4]~19_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \squareTop[0]~12\ : std_logic;
SIGNAL \squareTop[1]~14\ : std_logic;
SIGNAL \squareTop[2]~16\ : std_logic;
SIGNAL \squareTop[3]~18\ : std_logic;
SIGNAL \squareTop[4]~20\ : std_logic;
SIGNAL \squareTop[5]~22\ : std_logic;
SIGNAL \squareTop[6]~24\ : std_logic;
SIGNAL \squareTop[7]~25_combout\ : std_logic;
SIGNAL \squareTop[7]~26\ : std_logic;
SIGNAL \squareTop[8]~28\ : std_logic;
SIGNAL \squareTop[9]~29_combout\ : std_logic;
SIGNAL \squareTop[9]~34_combout\ : std_logic;
SIGNAL \squareTop[3]~17_combout\ : std_logic;
SIGNAL \squareTop[1]~13_combout\ : std_logic;
SIGNAL \squareTop[9]~31_combout\ : std_logic;
SIGNAL \squareTop[6]~23_combout\ : std_logic;
SIGNAL \squareTop[4]~19_combout\ : std_logic;
SIGNAL \squareTop[5]~21_combout\ : std_logic;
SIGNAL \squareTop[9]~32_combout\ : std_logic;
SIGNAL \squareTop[9]~33_combout\ : std_logic;
SIGNAL \squareTop[9]~35_combout\ : std_logic;
SIGNAL \squareTop[8]~27_combout\ : std_logic;
SIGNAL \squareTop[2]~15_combout\ : std_logic;
SIGNAL \squareTop[0]~11_combout\ : std_logic;
SIGNAL \LessThan18~0_combout\ : std_logic;
SIGNAL \LessThan18~1_combout\ : std_logic;
SIGNAL \LessThan18~2_combout\ : std_logic;
SIGNAL \moveDown~0_combout\ : std_logic;
SIGNAL \moveDown~q\ : std_logic;
SIGNAL \squareTop[9]~30\ : std_logic;
SIGNAL \squareTop[10]~36_combout\ : std_logic;
SIGNAL \Vcount[2]~14_combout\ : std_logic;
SIGNAL \LessThan6~1_cout\ : std_logic;
SIGNAL \LessThan6~3_cout\ : std_logic;
SIGNAL \LessThan6~5_cout\ : std_logic;
SIGNAL \LessThan6~7_cout\ : std_logic;
SIGNAL \LessThan6~9_cout\ : std_logic;
SIGNAL \LessThan6~11_cout\ : std_logic;
SIGNAL \LessThan6~13_cout\ : std_logic;
SIGNAL \LessThan6~15_cout\ : std_logic;
SIGNAL \LessThan6~17_cout\ : std_logic;
SIGNAL \LessThan6~18_combout\ : std_logic;
SIGNAL \GPIO~72_combout\ : std_logic;
SIGNAL \Hcount[2]~15_combout\ : std_logic;
SIGNAL \squareLeft[0]~11_combout\ : std_logic;
SIGNAL \squareLeft[9]~35\ : std_logic;
SIGNAL \squareLeft[10]~36_combout\ : std_logic;
SIGNAL \moveRight~0_combout\ : std_logic;
SIGNAL \moveRight~q\ : std_logic;
SIGNAL \squareLeft[1]~19\ : std_logic;
SIGNAL \squareLeft[2]~21\ : std_logic;
SIGNAL \squareLeft[3]~22_combout\ : std_logic;
SIGNAL \squareLeft[3]~23\ : std_logic;
SIGNAL \squareLeft[4]~24_combout\ : std_logic;
SIGNAL \squareLeft[4]~25\ : std_logic;
SIGNAL \squareLeft[5]~26_combout\ : std_logic;
SIGNAL \squareLeft[5]~27\ : std_logic;
SIGNAL \squareLeft[6]~29\ : std_logic;
SIGNAL \squareLeft[7]~30_combout\ : std_logic;
SIGNAL \squareLeft[7]~31\ : std_logic;
SIGNAL \squareLeft[8]~33\ : std_logic;
SIGNAL \squareLeft[9]~34_combout\ : std_logic;
SIGNAL \squareLeft[2]~20_combout\ : std_logic;
SIGNAL \LessThan16~0_combout\ : std_logic;
SIGNAL \squareLeft[6]~28_combout\ : std_logic;
SIGNAL \LessThan16~1_combout\ : std_logic;
SIGNAL \LessThan16~2_combout\ : std_logic;
SIGNAL \squareLeft[8]~32_combout\ : std_logic;
SIGNAL \squareLeft[10]~15_combout\ : std_logic;
SIGNAL \squareLeft[10]~14_combout\ : std_logic;
SIGNAL \squareLeft[10]~16_combout\ : std_logic;
SIGNAL \squareLeft[10]~17_combout\ : std_logic;
SIGNAL \squareLeft[0]~12\ : std_logic;
SIGNAL \squareLeft[1]~18_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux0~21_combout\ : std_logic;
SIGNAL \Mux0~23_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux0~15_combout\ : std_logic;
SIGNAL \Mux0~16_combout\ : std_logic;
SIGNAL \Mux0~20_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Mux0~24_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~46_combout\ : std_logic;
SIGNAL \Mux0~47_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Mux0~25_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Mux0~41_combout\ : std_logic;
SIGNAL \GPIO~74_combout\ : std_logic;
SIGNAL \GPIO~75_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \pll_clock|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll_clock|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \DE_Generator~2_combout\ : std_logic;
SIGNAL \DE_Generator~4_combout\ : std_logic;
SIGNAL \GPIO[26]~reg0_q\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \GPIO~76_combout\ : std_logic;
SIGNAL \GPIO~77_combout\ : std_logic;
SIGNAL \GPIO~78_combout\ : std_logic;
SIGNAL squareTop : std_logic_vector(10 DOWNTO 0);
SIGNAL squareLeft : std_logic_vector(10 DOWNTO 0);
SIGNAL Vcount : std_logic_vector(9 DOWNTO 0);
SIGNAL Prescaler : std_logic_vector(23 DOWNTO 0);
SIGNAL Hcount : std_logic_vector(10 DOWNTO 0);
SIGNAL \pll_clock|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll_clock|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\pll_clock|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll_clock|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll_clock|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll_clock|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll_clock|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll_clock|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll_clock|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll_clock|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll_clock|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll_clock|altpll_component|auto_generated|pll1_CLK_bus\(4);

\pll_clock|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll_clock|altpll_component|auto_generated|wire_pll1_clk\(1));

\pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll_clock|altpll_component|auto_generated|wire_pll1_clk\(0));

\Tick~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Tick~q\);
\pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;

-- Location: FF_X83_Y27_N9
\Hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Hcount[1]~13_combout\,
	sclr => \LessThan10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(1));

-- Location: LCCOMB_X82_Y25_N12
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (squareTop(1) & (squareTop(0) $ (VCC))) # (!squareTop(1) & (squareTop(0) & VCC))
-- \Add1~1\ = CARRY((squareTop(1) & squareTop(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(1),
	datab => squareTop(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X82_Y25_N14
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (squareTop(2) & (\Add1~1\ & VCC)) # (!squareTop(2) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!squareTop(2) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(2),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X82_Y25_N16
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (squareTop(3) & ((GND) # (!\Add1~3\))) # (!squareTop(3) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((squareTop(3)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => squareTop(3),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X82_Y25_N18
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (squareTop(4) & (!\Add1~5\)) # (!squareTop(4) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!squareTop(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => squareTop(4),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X82_Y25_N20
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (squareTop(5) & ((GND) # (!\Add1~7\))) # (!squareTop(5) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((squareTop(5)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => squareTop(5),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X82_Y25_N22
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (squareTop(6) & (!\Add1~9\)) # (!squareTop(6) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!squareTop(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(6),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X82_Y25_N24
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (squareTop(7) & (\Add1~11\ $ (GND))) # (!squareTop(7) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((squareTop(7) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => squareTop(7),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X82_Y25_N26
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (squareTop(8) & (!\Add1~13\)) # (!squareTop(8) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!squareTop(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(8),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X82_Y25_N28
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (squareTop(9) & (\Add1~15\ $ (GND))) # (!squareTop(9) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((squareTop(9) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => squareTop(9),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X82_Y25_N30
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = squareTop(10) $ (\Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(10),
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X81_Y25_N6
\LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~1_cout\ = CARRY((Vcount(0) & squareTop(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(0),
	datab => squareTop(0),
	datad => VCC,
	cout => \LessThan7~1_cout\);

-- Location: LCCOMB_X81_Y25_N8
\LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~3_cout\ = CARRY((Vcount(1) & (\Add1~0_combout\ & !\LessThan7~1_cout\)) # (!Vcount(1) & ((\Add1~0_combout\) # (!\LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(1),
	datab => \Add1~0_combout\,
	datad => VCC,
	cin => \LessThan7~1_cout\,
	cout => \LessThan7~3_cout\);

-- Location: LCCOMB_X81_Y25_N10
\LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~5_cout\ = CARRY((Vcount(2) & ((!\LessThan7~3_cout\) # (!\Add1~2_combout\))) # (!Vcount(2) & (!\Add1~2_combout\ & !\LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(2),
	datab => \Add1~2_combout\,
	datad => VCC,
	cin => \LessThan7~3_cout\,
	cout => \LessThan7~5_cout\);

-- Location: LCCOMB_X81_Y25_N12
\LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~7_cout\ = CARRY((Vcount(3) & (\Add1~4_combout\ & !\LessThan7~5_cout\)) # (!Vcount(3) & ((\Add1~4_combout\) # (!\LessThan7~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(3),
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \LessThan7~5_cout\,
	cout => \LessThan7~7_cout\);

-- Location: LCCOMB_X81_Y25_N14
\LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~9_cout\ = CARRY((Vcount(4) & ((!\LessThan7~7_cout\) # (!\Add1~6_combout\))) # (!Vcount(4) & (!\Add1~6_combout\ & !\LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(4),
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \LessThan7~7_cout\,
	cout => \LessThan7~9_cout\);

-- Location: LCCOMB_X81_Y25_N16
\LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~11_cout\ = CARRY((\Add1~8_combout\ & ((!\LessThan7~9_cout\) # (!Vcount(5)))) # (!\Add1~8_combout\ & (!Vcount(5) & !\LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => Vcount(5),
	datad => VCC,
	cin => \LessThan7~9_cout\,
	cout => \LessThan7~11_cout\);

-- Location: LCCOMB_X81_Y25_N18
\LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~13_cout\ = CARRY((Vcount(6) & ((!\LessThan7~11_cout\) # (!\Add1~10_combout\))) # (!Vcount(6) & (!\Add1~10_combout\ & !\LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(6),
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \LessThan7~11_cout\,
	cout => \LessThan7~13_cout\);

-- Location: LCCOMB_X81_Y25_N20
\LessThan7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~15_cout\ = CARRY((\Add1~12_combout\ & ((!\LessThan7~13_cout\) # (!Vcount(7)))) # (!\Add1~12_combout\ & (!Vcount(7) & !\LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => Vcount(7),
	datad => VCC,
	cin => \LessThan7~13_cout\,
	cout => \LessThan7~15_cout\);

-- Location: LCCOMB_X81_Y25_N22
\LessThan7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~17_cout\ = CARRY((Vcount(8) & ((!\LessThan7~15_cout\) # (!\Add1~14_combout\))) # (!Vcount(8) & (!\Add1~14_combout\ & !\LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(8),
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \LessThan7~15_cout\,
	cout => \LessThan7~17_cout\);

-- Location: LCCOMB_X81_Y25_N24
\LessThan7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~18_combout\ = (Vcount(9) & ((\LessThan7~17_cout\) # (!\Add1~16_combout\))) # (!Vcount(9) & (\LessThan7~17_cout\ & !\Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(9),
	datad => \Add1~16_combout\,
	cin => \LessThan7~17_cout\,
	combout => \LessThan7~18_combout\);

-- Location: LCCOMB_X82_Y27_N8
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY((squareLeft(0) & !Hcount(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(0),
	datab => Hcount(0),
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X82_Y27_N10
\LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((Hcount(1) & ((!\LessThan4~1_cout\) # (!squareLeft(1)))) # (!Hcount(1) & (!squareLeft(1) & !\LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(1),
	datab => squareLeft(1),
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X82_Y27_N12
\LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((squareLeft(2) & ((!\LessThan4~3_cout\) # (!Hcount(2)))) # (!squareLeft(2) & (!Hcount(2) & !\LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(2),
	datab => Hcount(2),
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X82_Y27_N14
\LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((Hcount(3) & ((!\LessThan4~5_cout\) # (!squareLeft(3)))) # (!Hcount(3) & (!squareLeft(3) & !\LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(3),
	datab => squareLeft(3),
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X82_Y27_N16
\LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((Hcount(4) & (squareLeft(4) & !\LessThan4~7_cout\)) # (!Hcount(4) & ((squareLeft(4)) # (!\LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(4),
	datab => squareLeft(4),
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X82_Y27_N18
\LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((Hcount(5) & ((!\LessThan4~9_cout\) # (!squareLeft(5)))) # (!Hcount(5) & (!squareLeft(5) & !\LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(5),
	datab => squareLeft(5),
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X82_Y27_N20
\LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((squareLeft(6) & ((!\LessThan4~11_cout\) # (!Hcount(6)))) # (!squareLeft(6) & (!Hcount(6) & !\LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(6),
	datab => Hcount(6),
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X82_Y27_N22
\LessThan4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~15_cout\ = CARRY((squareLeft(7) & (Hcount(7) & !\LessThan4~13_cout\)) # (!squareLeft(7) & ((Hcount(7)) # (!\LessThan4~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(7),
	datab => Hcount(7),
	datad => VCC,
	cin => \LessThan4~13_cout\,
	cout => \LessThan4~15_cout\);

-- Location: LCCOMB_X82_Y27_N24
\LessThan4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~17_cout\ = CARRY((Hcount(8) & (squareLeft(8) & !\LessThan4~15_cout\)) # (!Hcount(8) & ((squareLeft(8)) # (!\LessThan4~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(8),
	datab => squareLeft(8),
	datad => VCC,
	cin => \LessThan4~15_cout\,
	cout => \LessThan4~17_cout\);

-- Location: LCCOMB_X82_Y27_N26
\LessThan4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~19_cout\ = CARRY((squareLeft(9) & (Hcount(9) & !\LessThan4~17_cout\)) # (!squareLeft(9) & ((Hcount(9)) # (!\LessThan4~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(9),
	datab => Hcount(9),
	datad => VCC,
	cin => \LessThan4~17_cout\,
	cout => \LessThan4~19_cout\);

-- Location: LCCOMB_X82_Y27_N28
\LessThan4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~20_combout\ = (Hcount(10) & (!\LessThan4~19_cout\ & squareLeft(10))) # (!Hcount(10) & ((squareLeft(10)) # (!\LessThan4~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Hcount(10),
	datad => squareLeft(10),
	cin => \LessThan4~19_cout\,
	combout => \LessThan4~20_combout\);

-- Location: LCCOMB_X82_Y28_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (squareLeft(0) & (squareLeft(1) $ (VCC))) # (!squareLeft(0) & (squareLeft(1) & VCC))
-- \Add0~1\ = CARRY((squareLeft(0) & squareLeft(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(0),
	datab => squareLeft(1),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X82_Y28_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (squareLeft(2) & (\Add0~1\ & VCC)) # (!squareLeft(2) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!squareLeft(2) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => squareLeft(2),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X82_Y28_N16
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (squareLeft(3) & ((GND) # (!\Add0~3\))) # (!squareLeft(3) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((squareLeft(3)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(3),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X82_Y28_N18
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (squareLeft(4) & (!\Add0~5\)) # (!squareLeft(4) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!squareLeft(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(4),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X82_Y28_N20
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (squareLeft(5) & ((GND) # (!\Add0~7\))) # (!squareLeft(5) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((squareLeft(5)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(5),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X82_Y28_N22
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (squareLeft(6) & (!\Add0~9\)) # (!squareLeft(6) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!squareLeft(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => squareLeft(6),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X82_Y28_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (squareLeft(7) & (\Add0~11\ $ (GND))) # (!squareLeft(7) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((squareLeft(7) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(7),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X82_Y28_N26
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (squareLeft(8) & (!\Add0~13\)) # (!squareLeft(8) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!squareLeft(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => squareLeft(8),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X82_Y28_N28
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (squareLeft(9) & (\Add0~15\ $ (GND))) # (!squareLeft(9) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((squareLeft(9) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => squareLeft(9),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X82_Y28_N30
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = squareLeft(10) $ (\Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(10),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X81_Y28_N0
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_cout\ = CARRY((Hcount(0) & squareLeft(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(0),
	datab => squareLeft(0),
	datad => VCC,
	cout => \LessThan5~1_cout\);

-- Location: LCCOMB_X81_Y28_N2
\LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~3_cout\ = CARRY((Hcount(1) & (\Add0~0_combout\ & !\LessThan5~1_cout\)) # (!Hcount(1) & ((\Add0~0_combout\) # (!\LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(1),
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \LessThan5~1_cout\,
	cout => \LessThan5~3_cout\);

-- Location: LCCOMB_X81_Y28_N4
\LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~5_cout\ = CARRY((\Add0~2_combout\ & (Hcount(2) & !\LessThan5~3_cout\)) # (!\Add0~2_combout\ & ((Hcount(2)) # (!\LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => Hcount(2),
	datad => VCC,
	cin => \LessThan5~3_cout\,
	cout => \LessThan5~5_cout\);

-- Location: LCCOMB_X81_Y28_N6
\LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~7_cout\ = CARRY((Hcount(3) & (\Add0~4_combout\ & !\LessThan5~5_cout\)) # (!Hcount(3) & ((\Add0~4_combout\) # (!\LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(3),
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \LessThan5~5_cout\,
	cout => \LessThan5~7_cout\);

-- Location: LCCOMB_X81_Y28_N8
\LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~9_cout\ = CARRY((\Add0~6_combout\ & (Hcount(4) & !\LessThan5~7_cout\)) # (!\Add0~6_combout\ & ((Hcount(4)) # (!\LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => Hcount(4),
	datad => VCC,
	cin => \LessThan5~7_cout\,
	cout => \LessThan5~9_cout\);

-- Location: LCCOMB_X81_Y28_N10
\LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~11_cout\ = CARRY((\Add0~8_combout\ & ((!\LessThan5~9_cout\) # (!Hcount(5)))) # (!\Add0~8_combout\ & (!Hcount(5) & !\LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => Hcount(5),
	datad => VCC,
	cin => \LessThan5~9_cout\,
	cout => \LessThan5~11_cout\);

-- Location: LCCOMB_X81_Y28_N12
\LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~13_cout\ = CARRY((Hcount(6) & ((!\LessThan5~11_cout\) # (!\Add0~10_combout\))) # (!Hcount(6) & (!\Add0~10_combout\ & !\LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(6),
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \LessThan5~11_cout\,
	cout => \LessThan5~13_cout\);

-- Location: LCCOMB_X81_Y28_N14
\LessThan5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~15_cout\ = CARRY((Hcount(7) & (\Add0~12_combout\ & !\LessThan5~13_cout\)) # (!Hcount(7) & ((\Add0~12_combout\) # (!\LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(7),
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \LessThan5~13_cout\,
	cout => \LessThan5~15_cout\);

-- Location: LCCOMB_X81_Y28_N16
\LessThan5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~17_cout\ = CARRY((Hcount(8) & ((!\LessThan5~15_cout\) # (!\Add0~14_combout\))) # (!Hcount(8) & (!\Add0~14_combout\ & !\LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(8),
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \LessThan5~15_cout\,
	cout => \LessThan5~17_cout\);

-- Location: LCCOMB_X81_Y28_N18
\LessThan5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~19_cout\ = CARRY((\Add0~16_combout\ & ((!\LessThan5~17_cout\) # (!Hcount(9)))) # (!\Add0~16_combout\ & (!Hcount(9) & !\LessThan5~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => Hcount(9),
	datad => VCC,
	cin => \LessThan5~17_cout\,
	cout => \LessThan5~19_cout\);

-- Location: LCCOMB_X81_Y28_N20
\LessThan5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~20_combout\ = (\Add0~18_combout\ & (!\LessThan5~19_cout\ & Hcount(10))) # (!\Add0~18_combout\ & ((Hcount(10)) # (!\LessThan5~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datad => Hcount(10),
	cin => \LessThan5~19_cout\,
	combout => \LessThan5~20_combout\);

-- Location: LCCOMB_X84_Y27_N12
\Hcount[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[1]~13_combout\ = (Hcount(1) & (!\Hcount[0]~12\)) # (!Hcount(1) & ((\Hcount[0]~12\) # (GND)))
-- \Hcount[1]~14\ = CARRY((!\Hcount[0]~12\) # (!Hcount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(1),
	datad => VCC,
	cin => \Hcount[0]~12\,
	combout => \Hcount[1]~13_combout\,
	cout => \Hcount[1]~14\);

-- Location: FF_X56_Y71_N11
\Prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[17]~58_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(17));

-- Location: FF_X56_Y71_N13
\Prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[18]~60_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(18));

-- Location: FF_X56_Y71_N15
\Prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[19]~62_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(19));

-- Location: FF_X56_Y71_N17
\Prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[20]~64_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(20));

-- Location: FF_X56_Y71_N19
\Prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[21]~66_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(21));

-- Location: FF_X56_Y71_N21
\Prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[22]~68_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(22));

-- Location: FF_X56_Y71_N23
\Prescaler[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[23]~70_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(23));

-- Location: FF_X56_Y71_N1
\Prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[12]~48_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(12));

-- Location: FF_X56_Y72_N31
\Prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[11]~46_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(11));

-- Location: FF_X56_Y72_N21
\Prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[6]~36_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(6));

-- Location: FF_X56_Y72_N15
\Prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[3]~30_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(3));

-- Location: FF_X56_Y72_N9
\Prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[0]~24_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(0));

-- Location: FF_X56_Y72_N11
\Prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[1]~26_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(1));

-- Location: FF_X56_Y72_N13
\Prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[2]~28_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(2));

-- Location: FF_X56_Y72_N17
\Prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[4]~32_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(4));

-- Location: FF_X56_Y72_N19
\Prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[5]~34_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(5));

-- Location: FF_X56_Y72_N23
\Prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[7]~38_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(7));

-- Location: FF_X56_Y72_N25
\Prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[8]~40_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(8));

-- Location: FF_X56_Y72_N27
\Prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[9]~42_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(9));

-- Location: FF_X56_Y72_N29
\Prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[10]~44_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(10));

-- Location: FF_X56_Y71_N3
\Prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[13]~50_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(13));

-- Location: FF_X56_Y71_N5
\Prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[14]~52_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(14));

-- Location: FF_X56_Y71_N7
\Prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[15]~54_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(15));

-- Location: FF_X56_Y71_N9
\Prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Prescaler[16]~56_combout\,
	sclr => \LessThan15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Prescaler(16));

-- Location: LCCOMB_X56_Y72_N8
\Prescaler[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[0]~24_combout\ = Prescaler(0) $ (VCC)
-- \Prescaler[0]~25\ = CARRY(Prescaler(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(0),
	datad => VCC,
	combout => \Prescaler[0]~24_combout\,
	cout => \Prescaler[0]~25\);

-- Location: LCCOMB_X56_Y72_N10
\Prescaler[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[1]~26_combout\ = (Prescaler(1) & (!\Prescaler[0]~25\)) # (!Prescaler(1) & ((\Prescaler[0]~25\) # (GND)))
-- \Prescaler[1]~27\ = CARRY((!\Prescaler[0]~25\) # (!Prescaler(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(1),
	datad => VCC,
	cin => \Prescaler[0]~25\,
	combout => \Prescaler[1]~26_combout\,
	cout => \Prescaler[1]~27\);

-- Location: LCCOMB_X56_Y72_N12
\Prescaler[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[2]~28_combout\ = (Prescaler(2) & (\Prescaler[1]~27\ $ (GND))) # (!Prescaler(2) & (!\Prescaler[1]~27\ & VCC))
-- \Prescaler[2]~29\ = CARRY((Prescaler(2) & !\Prescaler[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(2),
	datad => VCC,
	cin => \Prescaler[1]~27\,
	combout => \Prescaler[2]~28_combout\,
	cout => \Prescaler[2]~29\);

-- Location: LCCOMB_X56_Y72_N14
\Prescaler[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[3]~30_combout\ = (Prescaler(3) & (!\Prescaler[2]~29\)) # (!Prescaler(3) & ((\Prescaler[2]~29\) # (GND)))
-- \Prescaler[3]~31\ = CARRY((!\Prescaler[2]~29\) # (!Prescaler(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(3),
	datad => VCC,
	cin => \Prescaler[2]~29\,
	combout => \Prescaler[3]~30_combout\,
	cout => \Prescaler[3]~31\);

-- Location: LCCOMB_X56_Y72_N16
\Prescaler[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[4]~32_combout\ = (Prescaler(4) & (\Prescaler[3]~31\ $ (GND))) # (!Prescaler(4) & (!\Prescaler[3]~31\ & VCC))
-- \Prescaler[4]~33\ = CARRY((Prescaler(4) & !\Prescaler[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(4),
	datad => VCC,
	cin => \Prescaler[3]~31\,
	combout => \Prescaler[4]~32_combout\,
	cout => \Prescaler[4]~33\);

-- Location: LCCOMB_X56_Y72_N18
\Prescaler[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[5]~34_combout\ = (Prescaler(5) & (!\Prescaler[4]~33\)) # (!Prescaler(5) & ((\Prescaler[4]~33\) # (GND)))
-- \Prescaler[5]~35\ = CARRY((!\Prescaler[4]~33\) # (!Prescaler(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(5),
	datad => VCC,
	cin => \Prescaler[4]~33\,
	combout => \Prescaler[5]~34_combout\,
	cout => \Prescaler[5]~35\);

-- Location: LCCOMB_X56_Y72_N20
\Prescaler[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[6]~36_combout\ = (Prescaler(6) & (\Prescaler[5]~35\ $ (GND))) # (!Prescaler(6) & (!\Prescaler[5]~35\ & VCC))
-- \Prescaler[6]~37\ = CARRY((Prescaler(6) & !\Prescaler[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(6),
	datad => VCC,
	cin => \Prescaler[5]~35\,
	combout => \Prescaler[6]~36_combout\,
	cout => \Prescaler[6]~37\);

-- Location: LCCOMB_X56_Y72_N22
\Prescaler[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[7]~38_combout\ = (Prescaler(7) & (!\Prescaler[6]~37\)) # (!Prescaler(7) & ((\Prescaler[6]~37\) # (GND)))
-- \Prescaler[7]~39\ = CARRY((!\Prescaler[6]~37\) # (!Prescaler(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(7),
	datad => VCC,
	cin => \Prescaler[6]~37\,
	combout => \Prescaler[7]~38_combout\,
	cout => \Prescaler[7]~39\);

-- Location: LCCOMB_X56_Y72_N24
\Prescaler[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[8]~40_combout\ = (Prescaler(8) & (\Prescaler[7]~39\ $ (GND))) # (!Prescaler(8) & (!\Prescaler[7]~39\ & VCC))
-- \Prescaler[8]~41\ = CARRY((Prescaler(8) & !\Prescaler[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(8),
	datad => VCC,
	cin => \Prescaler[7]~39\,
	combout => \Prescaler[8]~40_combout\,
	cout => \Prescaler[8]~41\);

-- Location: LCCOMB_X56_Y72_N26
\Prescaler[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[9]~42_combout\ = (Prescaler(9) & (!\Prescaler[8]~41\)) # (!Prescaler(9) & ((\Prescaler[8]~41\) # (GND)))
-- \Prescaler[9]~43\ = CARRY((!\Prescaler[8]~41\) # (!Prescaler(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(9),
	datad => VCC,
	cin => \Prescaler[8]~41\,
	combout => \Prescaler[9]~42_combout\,
	cout => \Prescaler[9]~43\);

-- Location: LCCOMB_X56_Y72_N28
\Prescaler[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[10]~44_combout\ = (Prescaler(10) & (\Prescaler[9]~43\ $ (GND))) # (!Prescaler(10) & (!\Prescaler[9]~43\ & VCC))
-- \Prescaler[10]~45\ = CARRY((Prescaler(10) & !\Prescaler[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(10),
	datad => VCC,
	cin => \Prescaler[9]~43\,
	combout => \Prescaler[10]~44_combout\,
	cout => \Prescaler[10]~45\);

-- Location: LCCOMB_X56_Y72_N30
\Prescaler[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[11]~46_combout\ = (Prescaler(11) & (!\Prescaler[10]~45\)) # (!Prescaler(11) & ((\Prescaler[10]~45\) # (GND)))
-- \Prescaler[11]~47\ = CARRY((!\Prescaler[10]~45\) # (!Prescaler(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(11),
	datad => VCC,
	cin => \Prescaler[10]~45\,
	combout => \Prescaler[11]~46_combout\,
	cout => \Prescaler[11]~47\);

-- Location: LCCOMB_X56_Y71_N0
\Prescaler[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[12]~48_combout\ = (Prescaler(12) & (\Prescaler[11]~47\ $ (GND))) # (!Prescaler(12) & (!\Prescaler[11]~47\ & VCC))
-- \Prescaler[12]~49\ = CARRY((Prescaler(12) & !\Prescaler[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(12),
	datad => VCC,
	cin => \Prescaler[11]~47\,
	combout => \Prescaler[12]~48_combout\,
	cout => \Prescaler[12]~49\);

-- Location: LCCOMB_X56_Y71_N2
\Prescaler[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[13]~50_combout\ = (Prescaler(13) & (!\Prescaler[12]~49\)) # (!Prescaler(13) & ((\Prescaler[12]~49\) # (GND)))
-- \Prescaler[13]~51\ = CARRY((!\Prescaler[12]~49\) # (!Prescaler(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(13),
	datad => VCC,
	cin => \Prescaler[12]~49\,
	combout => \Prescaler[13]~50_combout\,
	cout => \Prescaler[13]~51\);

-- Location: LCCOMB_X56_Y71_N4
\Prescaler[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[14]~52_combout\ = (Prescaler(14) & (\Prescaler[13]~51\ $ (GND))) # (!Prescaler(14) & (!\Prescaler[13]~51\ & VCC))
-- \Prescaler[14]~53\ = CARRY((Prescaler(14) & !\Prescaler[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(14),
	datad => VCC,
	cin => \Prescaler[13]~51\,
	combout => \Prescaler[14]~52_combout\,
	cout => \Prescaler[14]~53\);

-- Location: LCCOMB_X56_Y71_N6
\Prescaler[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[15]~54_combout\ = (Prescaler(15) & (!\Prescaler[14]~53\)) # (!Prescaler(15) & ((\Prescaler[14]~53\) # (GND)))
-- \Prescaler[15]~55\ = CARRY((!\Prescaler[14]~53\) # (!Prescaler(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(15),
	datad => VCC,
	cin => \Prescaler[14]~53\,
	combout => \Prescaler[15]~54_combout\,
	cout => \Prescaler[15]~55\);

-- Location: LCCOMB_X56_Y71_N8
\Prescaler[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[16]~56_combout\ = (Prescaler(16) & (\Prescaler[15]~55\ $ (GND))) # (!Prescaler(16) & (!\Prescaler[15]~55\ & VCC))
-- \Prescaler[16]~57\ = CARRY((Prescaler(16) & !\Prescaler[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(16),
	datad => VCC,
	cin => \Prescaler[15]~55\,
	combout => \Prescaler[16]~56_combout\,
	cout => \Prescaler[16]~57\);

-- Location: LCCOMB_X56_Y71_N10
\Prescaler[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[17]~58_combout\ = (Prescaler(17) & (!\Prescaler[16]~57\)) # (!Prescaler(17) & ((\Prescaler[16]~57\) # (GND)))
-- \Prescaler[17]~59\ = CARRY((!\Prescaler[16]~57\) # (!Prescaler(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(17),
	datad => VCC,
	cin => \Prescaler[16]~57\,
	combout => \Prescaler[17]~58_combout\,
	cout => \Prescaler[17]~59\);

-- Location: LCCOMB_X56_Y71_N12
\Prescaler[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[18]~60_combout\ = (Prescaler(18) & (\Prescaler[17]~59\ $ (GND))) # (!Prescaler(18) & (!\Prescaler[17]~59\ & VCC))
-- \Prescaler[18]~61\ = CARRY((Prescaler(18) & !\Prescaler[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(18),
	datad => VCC,
	cin => \Prescaler[17]~59\,
	combout => \Prescaler[18]~60_combout\,
	cout => \Prescaler[18]~61\);

-- Location: LCCOMB_X56_Y71_N14
\Prescaler[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[19]~62_combout\ = (Prescaler(19) & (!\Prescaler[18]~61\)) # (!Prescaler(19) & ((\Prescaler[18]~61\) # (GND)))
-- \Prescaler[19]~63\ = CARRY((!\Prescaler[18]~61\) # (!Prescaler(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(19),
	datad => VCC,
	cin => \Prescaler[18]~61\,
	combout => \Prescaler[19]~62_combout\,
	cout => \Prescaler[19]~63\);

-- Location: LCCOMB_X56_Y71_N16
\Prescaler[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[20]~64_combout\ = (Prescaler(20) & (\Prescaler[19]~63\ $ (GND))) # (!Prescaler(20) & (!\Prescaler[19]~63\ & VCC))
-- \Prescaler[20]~65\ = CARRY((Prescaler(20) & !\Prescaler[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(20),
	datad => VCC,
	cin => \Prescaler[19]~63\,
	combout => \Prescaler[20]~64_combout\,
	cout => \Prescaler[20]~65\);

-- Location: LCCOMB_X56_Y71_N18
\Prescaler[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[21]~66_combout\ = (Prescaler(21) & (!\Prescaler[20]~65\)) # (!Prescaler(21) & ((\Prescaler[20]~65\) # (GND)))
-- \Prescaler[21]~67\ = CARRY((!\Prescaler[20]~65\) # (!Prescaler(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(21),
	datad => VCC,
	cin => \Prescaler[20]~65\,
	combout => \Prescaler[21]~66_combout\,
	cout => \Prescaler[21]~67\);

-- Location: LCCOMB_X56_Y71_N20
\Prescaler[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[22]~68_combout\ = (Prescaler(22) & (\Prescaler[21]~67\ $ (GND))) # (!Prescaler(22) & (!\Prescaler[21]~67\ & VCC))
-- \Prescaler[22]~69\ = CARRY((Prescaler(22) & !\Prescaler[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(22),
	datad => VCC,
	cin => \Prescaler[21]~67\,
	combout => \Prescaler[22]~68_combout\,
	cout => \Prescaler[22]~69\);

-- Location: LCCOMB_X56_Y71_N22
\Prescaler[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Prescaler[23]~70_combout\ = Prescaler(23) $ (\Prescaler[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(23),
	cin => \Prescaler[22]~69\,
	combout => \Prescaler[23]~70_combout\);

-- Location: LCCOMB_X81_Y27_N14
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!Hcount(3) & (!Hcount(2) & (!Hcount(0) & !Hcount(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(3),
	datab => Hcount(2),
	datac => Hcount(0),
	datad => Hcount(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X81_Y27_N10
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!Hcount(4) & (((!Hcount(2) & !Hcount(1))) # (!Hcount(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(3),
	datab => Hcount(2),
	datac => Hcount(4),
	datad => Hcount(1),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X81_Y26_N12
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Add3~4_combout\ & ((\Add3~2_combout\) # ((\Add3~10_combout\) # (\Add3~0_combout\)))) # (!\Add3~4_combout\ & (\Add3~10_combout\ & ((\Add3~2_combout\) # (\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~10_combout\,
	datad => \Add3~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X81_Y26_N10
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Add3~8_combout\) # ((\Add3~6_combout\ & ((!\Mux9~0_combout\) # (!\Add3~10_combout\))) # (!\Add3~6_combout\ & ((\Add3~10_combout\) # (\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~10_combout\,
	datac => \Add3~8_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X81_Y26_N16
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Add3~2_combout\ & (\Add3~4_combout\ & ((\Add3~0_combout\) # (!\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~10_combout\,
	datad => \Add3~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X81_Y26_N22
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Add3~8_combout\) # (\Add3~10_combout\ $ (((\Add3~6_combout\) # (\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~10_combout\,
	datac => \Add3~8_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X81_Y26_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Add2~2_combout\ & (((\Mux7~1_combout\) # (!\Add2~0_combout\)))) # (!\Add2~2_combout\ & (\Mux9~1_combout\ & ((\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Add2~2_combout\,
	datac => \Mux7~1_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X82_Y26_N16
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Add3~8_combout\ & (!\Add3~6_combout\)) # (!\Add3~8_combout\ & ((\Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datac => \Add3~8_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X82_Y26_N10
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\Add3~2_combout\ & ((\Mux0~1_combout\ & (\Add3~6_combout\ & !\Add3~4_combout\)) # (!\Mux0~1_combout\ & (!\Add3~6_combout\ & \Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Mux0~1_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~4_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X82_Y26_N12
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~1_combout\ & (((!\Add3~6_combout\)))) # (!\Mux0~1_combout\ & ((\Add3~6_combout\) # ((\Add3~2_combout\ & \Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Mux0~1_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~4_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X82_Y26_N14
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\Add2~0_combout\ & (((\Mux0~0_combout\)))) # (!\Add2~0_combout\ & ((\Mux0~3_combout\ & ((!\Mux0~2_combout\))) # (!\Mux0~3_combout\ & (!\Mux0~0_combout\ & \Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux0~0_combout\,
	datac => \Add2~0_combout\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X84_Y26_N28
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = \Add3~4_combout\ $ (((!\Add3~10_combout\ & (\Add3~2_combout\ & \Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~2_combout\,
	datad => \Add3~0_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X84_Y26_N2
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Add3~6_combout\ & (!\Mux13~0_combout\ & (\Add3~8_combout\ $ (\Add3~10_combout\)))) # (!\Add3~6_combout\ & ((\Add3~8_combout\ $ (\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Mux13~0_combout\,
	datac => \Add3~8_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X84_Y26_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\Add3~6_combout\ & (!\Add3~4_combout\ & !\Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~2_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X84_Y26_N6
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux13~1_combout\) # ((!\Add3~10_combout\ & (!\Mux2~0_combout\ & !\Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Mux2~0_combout\,
	datac => \Add3~8_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X84_Y26_N16
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Add3~6_combout\ & (((\Add3~2_combout\) # (\Add3~10_combout\)) # (!\Add3~4_combout\))) # (!\Add3~6_combout\ & (!\Add3~4_combout\ & (\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~2_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X84_Y26_N22
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (!\Add3~8_combout\ & ((\Add3~4_combout\ & ((!\Mux14~0_combout\))) # (!\Add3~4_combout\ & ((\Add3~0_combout\) # (\Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Add3~0_combout\,
	datac => \Add3~4_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X84_Y26_N8
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Add3~6_combout\ & (!\Add3~4_combout\ & ((!\Add3~0_combout\) # (!\Add3~2_combout\)))) # (!\Add3~6_combout\ & ((\Add3~4_combout\) # ((\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~2_combout\,
	datad => \Add3~0_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X84_Y26_N26
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~1_combout\) # ((\Add3~8_combout\ & (\Mux14~2_combout\ & !\Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Mux14~2_combout\,
	datac => \Mux14~1_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X83_Y25_N24
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Add3~4_combout\ & (!\Add3~10_combout\ & ((\Add3~2_combout\) # (\Add3~0_combout\)))) # (!\Add3~4_combout\ & (!\Add3~2_combout\ & (!\Add3~0_combout\ & \Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~0_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X83_Y25_N22
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Add3~8_combout\) # ((\Mux2~1_combout\ & (\Add3~4_combout\ $ (!\Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~6_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X84_Y26_N14
\Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~17_combout\ = (\Add3~6_combout\ & (((!\Add3~2_combout\)) # (!\Add3~4_combout\))) # (!\Add3~6_combout\ & (\Add3~4_combout\ & ((\Add3~2_combout\) # (\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~2_combout\,
	datad => \Add3~0_combout\,
	combout => \Mux0~17_combout\);

-- Location: LCCOMB_X84_Y26_N12
\Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~18_combout\ = (\Add3~8_combout\ & (((\Mux14~2_combout\ & !\Add3~10_combout\)))) # (!\Add3~8_combout\ & (\Mux0~17_combout\ & ((\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Mux0~17_combout\,
	datac => \Mux14~2_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux0~18_combout\);

-- Location: LCCOMB_X83_Y26_N10
\Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~19_combout\ = (\Mux0~18_combout\ & (\Add2~6_combout\ $ (!\Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datac => \Mux0~18_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux0~19_combout\);

-- Location: LCCOMB_X84_Y26_N20
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Add3~10_combout\ & (\Add3~4_combout\ & (\Add3~2_combout\))) # (!\Add3~10_combout\ & ((\Add3~4_combout\) # ((\Add3~2_combout\ & \Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~2_combout\,
	datad => \Add3~0_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X84_Y26_N30
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Add3~8_combout\ & (!\Add3~10_combout\ & ((!\Mux20~0_combout\) # (!\Add3~6_combout\)))) # (!\Add3~8_combout\ & ((\Add3~6_combout\ $ (\Mux20~0_combout\)) # (!\Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Mux20~0_combout\,
	datac => \Add3~8_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X83_Y26_N30
\Mux0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~22_combout\ = (\Mux20~1_combout\ & ((\Mux0~21_combout\) # (\Add2~4_combout\ $ (\Add2~6_combout\)))) # (!\Mux20~1_combout\ & (\Mux0~21_combout\ & (\Add2~4_combout\ $ (!\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~6_combout\,
	datad => \Mux0~21_combout\,
	combout => \Mux0~22_combout\);

-- Location: LCCOMB_X81_Y26_N0
\Mux0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~26_combout\ = (\Add3~4_combout\ & ((\Add3~2_combout\ & ((\Add3~0_combout\) # (!\Add2~0_combout\))) # (!\Add3~2_combout\ & (\Add3~0_combout\ & !\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~0_combout\,
	datac => \Add3~4_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux0~26_combout\);

-- Location: LCCOMB_X81_Y26_N14
\Mux0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~27_combout\ = (\Add3~6_combout\ & (((!\Add3~10_combout\)))) # (!\Add3~6_combout\ & ((\Mux0~26_combout\ & (!\Add3~10_combout\ & \Add2~0_combout\)) # (!\Mux0~26_combout\ & (\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Mux0~26_combout\,
	datac => \Add3~10_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux0~27_combout\);

-- Location: LCCOMB_X81_Y26_N8
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Add3~10_combout\ & (((!\Add3~6_combout\)))) # (!\Add3~10_combout\ & ((\Add3~6_combout\) # ((\Add3~2_combout\ & \Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~10_combout\,
	datac => \Add3~4_combout\,
	datad => \Add3~6_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X82_Y26_N26
\Mux0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~28_combout\ = (\Add3~8_combout\) # ((\Mux10~0_combout\ & (\Add2~2_combout\ $ (\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Mux10~0_combout\,
	datac => \Add2~0_combout\,
	datad => \Add3~8_combout\,
	combout => \Mux0~28_combout\);

-- Location: LCCOMB_X82_Y26_N20
\Mux0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~29_combout\ = (\Add3~2_combout\) # (\Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~2_combout\,
	datad => \Add3~0_combout\,
	combout => \Mux0~29_combout\);

-- Location: LCCOMB_X82_Y26_N2
\Mux0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~30_combout\ = (\Add3~6_combout\ & (((!\Add3~4_combout\ & !\Mux0~29_combout\)) # (!\Add3~10_combout\))) # (!\Add3~6_combout\ & ((\Add3~10_combout\) # ((\Add3~4_combout\ & \Mux0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Mux0~29_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux0~30_combout\);

-- Location: LCCOMB_X82_Y26_N0
\Mux0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~31_combout\ = (\Add3~10_combout\ & ((!\Mux12~0_combout\) # (!\Add3~6_combout\))) # (!\Add3~10_combout\ & ((\Add3~6_combout\) # (\Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datac => \Add3~6_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux0~31_combout\);

-- Location: LCCOMB_X83_Y25_N30
\Mux0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~32_combout\ = (\Add2~0_combout\ & ((\Mux2~2_combout\) # ((\Add2~2_combout\)))) # (!\Add2~0_combout\ & (((!\Add2~2_combout\ & \Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Add2~0_combout\,
	datac => \Add2~2_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux0~32_combout\);

-- Location: LCCOMB_X83_Y25_N4
\Mux0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~33_combout\ = (\Add3~4_combout\ & (\Add3~6_combout\ & !\Add3~10_combout\)) # (!\Add3~4_combout\ & (!\Add3~6_combout\ & \Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~4_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux0~33_combout\);

-- Location: LCCOMB_X83_Y25_N14
\Mux0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~34_combout\ = (!\Add3~4_combout\ & (\Add3~6_combout\ $ (\Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~4_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux0~34_combout\);

-- Location: LCCOMB_X83_Y25_N28
\Mux0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~35_combout\ = (\Add2~2_combout\ & ((\Add3~8_combout\) # ((!\Add3~2_combout\) # (!\Mux0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Mux0~34_combout\,
	datac => \Add2~2_combout\,
	datad => \Add3~2_combout\,
	combout => \Mux0~35_combout\);

-- Location: LCCOMB_X83_Y25_N18
\Mux0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~36_combout\ = (\Mux0~35_combout\ & ((\Add3~8_combout\) # ((\Mux0~33_combout\)))) # (!\Mux0~35_combout\ & (((\Mux0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Mux0~33_combout\,
	datac => \Mux0~32_combout\,
	datad => \Mux0~35_combout\,
	combout => \Mux0~36_combout\);

-- Location: LCCOMB_X83_Y26_N6
\Mux0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~37_combout\ = (\Add2~6_combout\ & (((\Add2~4_combout\) # (\Mux0~43_combout\)))) # (!\Add2~6_combout\ & (\Mux0~36_combout\ & (!\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux0~36_combout\,
	datac => \Add2~4_combout\,
	datad => \Mux0~43_combout\,
	combout => \Mux0~37_combout\);

-- Location: LCCOMB_X83_Y26_N4
\Mux0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~38_combout\ = (\Add2~2_combout\ & (((\Mux15~2_combout\)))) # (!\Add2~2_combout\ & (\Mux14~3_combout\ & (\Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datab => \Add2~0_combout\,
	datac => \Mux15~2_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux0~38_combout\);

-- Location: LCCOMB_X83_Y26_N14
\Mux0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~39_combout\ = (\Mux0~38_combout\) # ((\Mux13~2_combout\ & (!\Add2~2_combout\ & !\Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Add2~2_combout\,
	datac => \Mux0~38_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux0~39_combout\);

-- Location: LCCOMB_X83_Y26_N12
\Mux0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~40_combout\ = (\Mux0~37_combout\ & ((\Mux0~39_combout\) # ((!\Add2~4_combout\)))) # (!\Mux0~37_combout\ & (((\Add2~4_combout\ & \Mux0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~37_combout\,
	datab => \Mux0~39_combout\,
	datac => \Add2~4_combout\,
	datad => \Mux0~45_combout\,
	combout => \Mux0~40_combout\);

-- Location: LCCOMB_X82_Y27_N6
\GPIO~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~73_combout\ = (!\LessThan5~20_combout\ & (!\LessThan4~20_combout\ & ((\Add1~18_combout\) # (!\LessThan7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~20_combout\,
	datab => \LessThan7~18_combout\,
	datac => \Add1~18_combout\,
	datad => \LessThan4~20_combout\,
	combout => \GPIO~73_combout\);

-- Location: LCCOMB_X81_Y27_N6
\LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (((!Vcount(1) & !Vcount(0))) # (!Vcount(3))) # (!Vcount(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(2),
	datab => Vcount(1),
	datac => Vcount(0),
	datad => Vcount(3),
	combout => \LessThan11~0_combout\);

-- Location: FF_X56_Y72_N3
Tick : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tick~q\);

-- Location: LCCOMB_X82_Y28_N6
\squareLeft[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[10]~13_combout\ = (\moveRight~q\ & (!squareLeft(2) & (!squareLeft(3) & !squareLeft(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moveRight~q\,
	datab => squareLeft(2),
	datac => squareLeft(3),
	datad => squareLeft(1),
	combout => \squareLeft[10]~13_combout\);

-- Location: LCCOMB_X81_Y27_N4
\DE_Generator~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE_Generator~0_combout\ = (Hcount(9)) # ((!Hcount(8) & ((Hcount(7)) # (Hcount(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(9),
	datab => Hcount(8),
	datac => Hcount(7),
	datad => Hcount(5),
	combout => \DE_Generator~0_combout\);

-- Location: LCCOMB_X81_Y27_N30
\DE_Generator~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE_Generator~1_combout\ = (\DE_Generator~0_combout\ & (((Hcount(8) & !\LessThan9~0_combout\)))) # (!\DE_Generator~0_combout\ & (\Equal0~1_combout\ & (!Hcount(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE_Generator~0_combout\,
	datab => \Equal0~1_combout\,
	datac => Hcount(8),
	datad => \LessThan9~0_combout\,
	combout => \DE_Generator~1_combout\);

-- Location: LCCOMB_X81_Y27_N22
\DE_Generator~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE_Generator~3_combout\ = (Vcount(2)) # ((Vcount(8)) # ((Vcount(1)) # (Vcount(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(2),
	datab => Vcount(8),
	datac => Vcount(1),
	datad => Vcount(3),
	combout => \DE_Generator~3_combout\);

-- Location: LCCOMB_X56_Y71_N24
\LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = (Prescaler(18)) # ((Prescaler(20)) # ((Prescaler(19)) # (Prescaler(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(18),
	datab => Prescaler(20),
	datac => Prescaler(19),
	datad => Prescaler(17),
	combout => \LessThan15~0_combout\);

-- Location: LCCOMB_X56_Y71_N30
\LessThan15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~1_combout\ = (Prescaler(22)) # ((Prescaler(23)) # (Prescaler(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Prescaler(22),
	datac => Prescaler(23),
	datad => Prescaler(21),
	combout => \LessThan15~1_combout\);

-- Location: LCCOMB_X55_Y72_N16
\LessThan15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~2_combout\ = (Prescaler(3) & ((Prescaler(1)) # ((Prescaler(2)) # (Prescaler(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(1),
	datab => Prescaler(2),
	datac => Prescaler(0),
	datad => Prescaler(3),
	combout => \LessThan15~2_combout\);

-- Location: LCCOMB_X56_Y72_N0
\LessThan15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~3_combout\ = (Prescaler(6) & ((Prescaler(4)) # ((\LessThan15~2_combout\) # (Prescaler(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(6),
	datab => Prescaler(4),
	datac => \LessThan15~2_combout\,
	datad => Prescaler(5),
	combout => \LessThan15~3_combout\);

-- Location: LCCOMB_X56_Y72_N6
\LessThan15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~4_combout\ = (Prescaler(9)) # ((Prescaler(8)) # ((Prescaler(7)) # (Prescaler(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(9),
	datab => Prescaler(8),
	datac => Prescaler(7),
	datad => Prescaler(10),
	combout => \LessThan15~4_combout\);

-- Location: LCCOMB_X56_Y72_N4
\LessThan15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~5_combout\ = (Prescaler(12)) # ((Prescaler(11) & ((\LessThan15~4_combout\) # (\LessThan15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~4_combout\,
	datab => Prescaler(12),
	datac => Prescaler(11),
	datad => \LessThan15~3_combout\,
	combout => \LessThan15~5_combout\);

-- Location: LCCOMB_X56_Y71_N28
\LessThan15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~6_combout\ = (Prescaler(15) & (Prescaler(14) & (Prescaler(16) & Prescaler(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Prescaler(15),
	datab => Prescaler(14),
	datac => Prescaler(16),
	datad => Prescaler(13),
	combout => \LessThan15~6_combout\);

-- Location: LCCOMB_X56_Y71_N26
\LessThan15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~7_combout\ = (\LessThan15~1_combout\) # ((\LessThan15~0_combout\) # ((\LessThan15~6_combout\ & \LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~1_combout\,
	datab => \LessThan15~6_combout\,
	datac => \LessThan15~5_combout\,
	datad => \LessThan15~0_combout\,
	combout => \LessThan15~7_combout\);

-- Location: LCCOMB_X56_Y72_N2
\Tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Tick~0_combout\ = \LessThan15~7_combout\ $ (\Tick~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~7_combout\,
	datac => \Tick~q\,
	combout => \Tick~0_combout\);

-- Location: LCCOMB_X82_Y26_N30
\Mux0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~42_combout\ = (\Add2~2_combout\ & ((\Mux0~31_combout\ & ((\Add2~0_combout\))) # (!\Mux0~31_combout\ & (!\Mux0~30_combout\)))) # (!\Add2~2_combout\ & ((\Mux0~30_combout\ & (!\Add2~0_combout\)) # (!\Mux0~30_combout\ & ((!\Mux0~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Mux0~30_combout\,
	datac => \Add2~0_combout\,
	datad => \Mux0~31_combout\,
	combout => \Mux0~42_combout\);

-- Location: LCCOMB_X82_Y26_N8
\Mux0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~43_combout\ = (\Mux0~42_combout\ & ((\Mux0~30_combout\) # ((\Mux0~28_combout\) # (\Mux0~31_combout\)))) # (!\Mux0~42_combout\ & (\Mux0~28_combout\ & ((\Mux0~30_combout\) # (\Mux0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~42_combout\,
	datab => \Mux0~30_combout\,
	datac => \Mux0~28_combout\,
	datad => \Mux0~31_combout\,
	combout => \Mux0~43_combout\);

-- Location: LCCOMB_X81_Y26_N20
\Mux0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~44_combout\ = (\Add2~0_combout\ & ((\Add3~8_combout\) # ((\Mux8~0_combout\)))) # (!\Add2~0_combout\ & (((\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Mux8~0_combout\,
	datac => \Mux7~1_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux0~44_combout\);

-- Location: LCCOMB_X82_Y26_N18
\Mux0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~45_combout\ = (\Add2~2_combout\ & (\Mux0~44_combout\)) # (!\Add2~2_combout\ & (((\Add3~8_combout\) # (\Mux0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Mux0~44_combout\,
	datac => \Add3~8_combout\,
	datad => \Mux0~27_combout\,
	combout => \Mux0~45_combout\);

-- Location: CLKCTRL_G12
\Tick~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Tick~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Tick~clkctrl_outclk\);

-- Location: IOOBUF_X60_Y0_N16
\GPIO[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(8));

-- Location: IOOBUF_X94_Y0_N9
\GPIO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(10));

-- Location: IOOBUF_X65_Y0_N16
\GPIO[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(11));

-- Location: IOOBUF_X94_Y0_N2
\GPIO[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(12));

-- Location: IOOBUF_X60_Y0_N2
\GPIO[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(13));

-- Location: IOOBUF_X83_Y0_N9
\GPIO[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(14));

-- Location: IOOBUF_X85_Y0_N2
\GPIO[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(15));

-- Location: IOOBUF_X83_Y0_N2
\GPIO[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(16));

-- Location: IOOBUF_X109_Y0_N2
\GPIO[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(17));

-- Location: IOOBUF_X96_Y0_N9
\GPIO[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(18));

-- Location: IOOBUF_X87_Y0_N23
\GPIO[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(19));

-- Location: IOOBUF_X96_Y0_N2
\GPIO[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(20));

-- Location: IOOBUF_X111_Y0_N9
\GPIO[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(21));

-- Location: IOOBUF_X91_Y0_N23
\GPIO[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(22));

-- Location: IOOBUF_X100_Y0_N23
\GPIO[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(23));

-- Location: IOOBUF_X91_Y0_N16
\GPIO[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(24));

-- Location: IOOBUF_X89_Y0_N9
\GPIO[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO(25));

-- Location: IOOBUF_X107_Y0_N2
\GPIO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(0));

-- Location: IOOBUF_X60_Y0_N23
\GPIO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(1));

-- Location: IOOBUF_X109_Y0_N9
\GPIO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO~75_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(2));

-- Location: IOOBUF_X96_Y0_N23
\GPIO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO~75_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(3));

-- Location: IOOBUF_X102_Y0_N23
\GPIO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO~75_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(4));

-- Location: IOOBUF_X96_Y0_N16
\GPIO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO~75_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(5));

-- Location: IOOBUF_X102_Y0_N16
\GPIO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => GPIO(6));

-- Location: IOOBUF_X65_Y0_N23
\GPIO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(7));

-- Location: IOOBUF_X60_Y0_N9
\GPIO[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(9));

-- Location: IOOBUF_X79_Y0_N9
\GPIO[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO[26]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(26));

-- Location: IOOBUF_X100_Y0_N16
\GPIO[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(27));

-- Location: IOOBUF_X79_Y0_N2
\GPIO[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO~77_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(28));

-- Location: IOOBUF_X89_Y0_N2
\GPIO[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO~77_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(29));

-- Location: IOOBUF_X85_Y0_N23
\GPIO[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO~77_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(30));

-- Location: IOOBUF_X81_Y0_N23
\GPIO[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO~77_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(31));

-- Location: IOOBUF_X85_Y0_N16
\GPIO[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO~78_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(32));

-- Location: IOOBUF_X113_Y0_N2
\GPIO[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO~78_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(33));

-- Location: IOOBUF_X81_Y0_N16
\GPIO[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO~78_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(34));

-- Location: IOOBUF_X113_Y0_N9
\GPIO[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO~78_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO(35));

-- Location: LCCOMB_X80_Y27_N6
\Vcount[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcount[0]~10_combout\ = Vcount(0) $ (VCC)
-- \Vcount[0]~11\ = CARRY(Vcount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(0),
	datad => VCC,
	combout => \Vcount[0]~10_combout\,
	cout => \Vcount[0]~11\);

-- Location: LCCOMB_X80_Y27_N8
\Vcount[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcount[1]~12_combout\ = (Vcount(1) & (!\Vcount[0]~11\)) # (!Vcount(1) & ((\Vcount[0]~11\) # (GND)))
-- \Vcount[1]~13\ = CARRY((!\Vcount[0]~11\) # (!Vcount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Vcount(1),
	datad => VCC,
	cin => \Vcount[0]~11\,
	combout => \Vcount[1]~12_combout\,
	cout => \Vcount[1]~13\);

-- Location: LCCOMB_X80_Y27_N22
\Vcount[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcount[8]~26_combout\ = (Vcount(8) & (\Vcount[7]~25\ $ (GND))) # (!Vcount(8) & (!\Vcount[7]~25\ & VCC))
-- \Vcount[8]~27\ = CARRY((Vcount(8) & !\Vcount[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(8),
	datad => VCC,
	cin => \Vcount[7]~25\,
	combout => \Vcount[8]~26_combout\,
	cout => \Vcount[8]~27\);

-- Location: LCCOMB_X84_Y27_N10
\Hcount[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[0]~11_combout\ = Hcount(0) $ (VCC)
-- \Hcount[0]~12\ = CARRY(Hcount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Hcount(0),
	datad => VCC,
	combout => \Hcount[0]~11_combout\,
	cout => \Hcount[0]~12\);

-- Location: FF_X83_Y27_N7
\Hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Hcount[0]~11_combout\,
	sclr => \LessThan10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(0));

-- Location: LCCOMB_X84_Y27_N14
\Hcount[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[2]~15_combout\ = (Hcount(2) & (\Hcount[1]~14\ $ (GND))) # (!Hcount(2) & (!\Hcount[1]~14\ & VCC))
-- \Hcount[2]~16\ = CARRY((Hcount(2) & !\Hcount[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(2),
	datad => VCC,
	cin => \Hcount[1]~14\,
	combout => \Hcount[2]~15_combout\,
	cout => \Hcount[2]~16\);

-- Location: LCCOMB_X84_Y27_N16
\Hcount[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[3]~17_combout\ = (Hcount(3) & (!\Hcount[2]~16\)) # (!Hcount(3) & ((\Hcount[2]~16\) # (GND)))
-- \Hcount[3]~18\ = CARRY((!\Hcount[2]~16\) # (!Hcount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Hcount(3),
	datad => VCC,
	cin => \Hcount[2]~16\,
	combout => \Hcount[3]~17_combout\,
	cout => \Hcount[3]~18\);

-- Location: FF_X83_Y27_N19
\Hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Hcount[3]~17_combout\,
	sclr => \LessThan10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(3));

-- Location: LCCOMB_X84_Y27_N18
\Hcount[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[4]~19_combout\ = (Hcount(4) & (\Hcount[3]~18\ $ (GND))) # (!Hcount(4) & (!\Hcount[3]~18\ & VCC))
-- \Hcount[4]~20\ = CARRY((Hcount(4) & !\Hcount[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(4),
	datad => VCC,
	cin => \Hcount[3]~18\,
	combout => \Hcount[4]~19_combout\,
	cout => \Hcount[4]~20\);

-- Location: LCCOMB_X84_Y27_N20
\Hcount[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[5]~21_combout\ = (Hcount(5) & (!\Hcount[4]~20\)) # (!Hcount(5) & ((\Hcount[4]~20\) # (GND)))
-- \Hcount[5]~22\ = CARRY((!\Hcount[4]~20\) # (!Hcount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Hcount(5),
	datad => VCC,
	cin => \Hcount[4]~20\,
	combout => \Hcount[5]~21_combout\,
	cout => \Hcount[5]~22\);

-- Location: FF_X83_Y27_N23
\Hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Hcount[5]~21_combout\,
	sclr => \LessThan10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(5));

-- Location: LCCOMB_X84_Y27_N22
\Hcount[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[6]~23_combout\ = (Hcount(6) & (\Hcount[5]~22\ $ (GND))) # (!Hcount(6) & (!\Hcount[5]~22\ & VCC))
-- \Hcount[6]~24\ = CARRY((Hcount(6) & !\Hcount[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Hcount(6),
	datad => VCC,
	cin => \Hcount[5]~22\,
	combout => \Hcount[6]~23_combout\,
	cout => \Hcount[6]~24\);

-- Location: FF_X83_Y27_N29
\Hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Hcount[6]~23_combout\,
	sclr => \LessThan10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(6));

-- Location: LCCOMB_X84_Y27_N24
\Hcount[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[7]~25_combout\ = (Hcount(7) & (!\Hcount[6]~24\)) # (!Hcount(7) & ((\Hcount[6]~24\) # (GND)))
-- \Hcount[7]~26\ = CARRY((!\Hcount[6]~24\) # (!Hcount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Hcount(7),
	datad => VCC,
	cin => \Hcount[6]~24\,
	combout => \Hcount[7]~25_combout\,
	cout => \Hcount[7]~26\);

-- Location: FF_X83_Y27_N31
\Hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Hcount[7]~25_combout\,
	sclr => \LessThan10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(7));

-- Location: LCCOMB_X84_Y27_N26
\Hcount[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[8]~27_combout\ = (Hcount(8) & (\Hcount[7]~26\ $ (GND))) # (!Hcount(8) & (!\Hcount[7]~26\ & VCC))
-- \Hcount[8]~28\ = CARRY((Hcount(8) & !\Hcount[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Hcount(8),
	datad => VCC,
	cin => \Hcount[7]~26\,
	combout => \Hcount[8]~27_combout\,
	cout => \Hcount[8]~28\);

-- Location: FF_X83_Y27_N5
\Hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Hcount[8]~27_combout\,
	sclr => \LessThan10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(8));

-- Location: LCCOMB_X84_Y27_N28
\Hcount[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[9]~29_combout\ = (Hcount(9) & (!\Hcount[8]~28\)) # (!Hcount(9) & ((\Hcount[8]~28\) # (GND)))
-- \Hcount[9]~30\ = CARRY((!\Hcount[8]~28\) # (!Hcount(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(9),
	datad => VCC,
	cin => \Hcount[8]~28\,
	combout => \Hcount[9]~29_combout\,
	cout => \Hcount[9]~30\);

-- Location: LCCOMB_X84_Y27_N30
\Hcount[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[10]~31_combout\ = Hcount(10) $ (!\Hcount[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(10),
	cin => \Hcount[9]~30\,
	combout => \Hcount[10]~31_combout\);

-- Location: FF_X83_Y27_N1
\Hcount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Hcount[10]~31_combout\,
	sclr => \LessThan10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(10));

-- Location: FF_X83_Y27_N27
\Hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Hcount[9]~29_combout\,
	sclr => \LessThan10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(9));

-- Location: LCCOMB_X81_Y27_N8
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (Hcount(8) & (Hcount(7) & Hcount(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Hcount(8),
	datac => Hcount(7),
	datad => Hcount(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X81_Y27_N2
\LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (Hcount(10)) # ((\Equal0~2_combout\ & ((Hcount(6)) # (Hcount(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(6),
	datab => Hcount(10),
	datac => \Equal0~2_combout\,
	datad => Hcount(5),
	combout => \LessThan10~0_combout\);

-- Location: FF_X80_Y27_N23
\Vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[8]~26_combout\,
	sclr => \LessThan11~1_combout\,
	ena => \LessThan10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(8));

-- Location: LCCOMB_X81_Y27_N0
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!Vcount(4) & (!Vcount(7) & (!Vcount(5) & !Vcount(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(4),
	datab => Vcount(7),
	datac => Vcount(5),
	datad => Vcount(6),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X81_Y27_N24
\LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = (Vcount(9) & (((Vcount(8)) # (!\Equal1~0_combout\)) # (!\LessThan11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~0_combout\,
	datab => Vcount(8),
	datac => Vcount(9),
	datad => \Equal1~0_combout\,
	combout => \LessThan11~1_combout\);

-- Location: FF_X80_Y27_N9
\Vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[1]~12_combout\,
	sclr => \LessThan11~1_combout\,
	ena => \LessThan10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(1));

-- Location: LCCOMB_X80_Y27_N10
\Vcount[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcount[2]~14_combout\ = (Vcount(2) & (\Vcount[1]~13\ $ (GND))) # (!Vcount(2) & (!\Vcount[1]~13\ & VCC))
-- \Vcount[2]~15\ = CARRY((Vcount(2) & !\Vcount[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(2),
	datad => VCC,
	cin => \Vcount[1]~13\,
	combout => \Vcount[2]~14_combout\,
	cout => \Vcount[2]~15\);

-- Location: LCCOMB_X80_Y27_N12
\Vcount[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcount[3]~16_combout\ = (Vcount(3) & (!\Vcount[2]~15\)) # (!Vcount(3) & ((\Vcount[2]~15\) # (GND)))
-- \Vcount[3]~17\ = CARRY((!\Vcount[2]~15\) # (!Vcount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(3),
	datad => VCC,
	cin => \Vcount[2]~15\,
	combout => \Vcount[3]~16_combout\,
	cout => \Vcount[3]~17\);

-- Location: LCCOMB_X80_Y27_N14
\Vcount[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcount[4]~18_combout\ = (Vcount(4) & (\Vcount[3]~17\ $ (GND))) # (!Vcount(4) & (!\Vcount[3]~17\ & VCC))
-- \Vcount[4]~19\ = CARRY((Vcount(4) & !\Vcount[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Vcount(4),
	datad => VCC,
	cin => \Vcount[3]~17\,
	combout => \Vcount[4]~18_combout\,
	cout => \Vcount[4]~19\);

-- Location: FF_X80_Y27_N15
\Vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[4]~18_combout\,
	sclr => \LessThan11~1_combout\,
	ena => \LessThan10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(4));

-- Location: LCCOMB_X80_Y27_N16
\Vcount[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcount[5]~20_combout\ = (Vcount(5) & (!\Vcount[4]~19\)) # (!Vcount(5) & ((\Vcount[4]~19\) # (GND)))
-- \Vcount[5]~21\ = CARRY((!\Vcount[4]~19\) # (!Vcount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Vcount(5),
	datad => VCC,
	cin => \Vcount[4]~19\,
	combout => \Vcount[5]~20_combout\,
	cout => \Vcount[5]~21\);

-- Location: FF_X80_Y27_N17
\Vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[5]~20_combout\,
	sclr => \LessThan11~1_combout\,
	ena => \LessThan10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(5));

-- Location: LCCOMB_X80_Y27_N18
\Vcount[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcount[6]~22_combout\ = (Vcount(6) & (\Vcount[5]~21\ $ (GND))) # (!Vcount(6) & (!\Vcount[5]~21\ & VCC))
-- \Vcount[6]~23\ = CARRY((Vcount(6) & !\Vcount[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Vcount(6),
	datad => VCC,
	cin => \Vcount[5]~21\,
	combout => \Vcount[6]~22_combout\,
	cout => \Vcount[6]~23\);

-- Location: FF_X80_Y27_N19
\Vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[6]~22_combout\,
	sclr => \LessThan11~1_combout\,
	ena => \LessThan10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(6));

-- Location: LCCOMB_X80_Y27_N20
\Vcount[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcount[7]~24_combout\ = (Vcount(7) & (!\Vcount[6]~23\)) # (!Vcount(7) & ((\Vcount[6]~23\) # (GND)))
-- \Vcount[7]~25\ = CARRY((!\Vcount[6]~23\) # (!Vcount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Vcount(7),
	datad => VCC,
	cin => \Vcount[6]~23\,
	combout => \Vcount[7]~24_combout\,
	cout => \Vcount[7]~25\);

-- Location: FF_X80_Y27_N21
\Vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[7]~24_combout\,
	sclr => \LessThan11~1_combout\,
	ena => \LessThan10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(7));

-- Location: LCCOMB_X80_Y27_N24
\Vcount[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcount[9]~28_combout\ = \Vcount[8]~27\ $ (Vcount(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Vcount(9),
	cin => \Vcount[8]~27\,
	combout => \Vcount[9]~28_combout\);

-- Location: FF_X80_Y27_N25
\Vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[9]~28_combout\,
	sclr => \LessThan11~1_combout\,
	ena => \LessThan10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(9));

-- Location: FF_X80_Y27_N7
\Vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[0]~10_combout\,
	sclr => \LessThan11~1_combout\,
	ena => \LessThan10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(0));

-- Location: FF_X80_Y27_N13
\Vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[3]~16_combout\,
	sclr => \LessThan11~1_combout\,
	ena => \LessThan10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(3));

-- Location: LCCOMB_X81_Y27_N26
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (Vcount(2) & (Vcount(9) & (Vcount(0) & Vcount(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(2),
	datab => Vcount(9),
	datac => Vcount(0),
	datad => Vcount(3),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X81_Y27_N16
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ((Vcount(8)) # ((Vcount(1)) # (!\Equal1~0_combout\))) # (!\Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => Vcount(8),
	datac => Vcount(1),
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: FF_X83_Y27_N21
\Hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Hcount[4]~19_combout\,
	sclr => \LessThan10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(4));

-- Location: LCCOMB_X82_Y27_N0
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (!Hcount(4) & !Hcount(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => Hcount(4),
	datad => Hcount(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X81_Y27_N18
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (((Hcount(10)) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)) # (!Hcount(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(5),
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => Hcount(10),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X82_Y27_N30
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\LessThan1~2_combout\ & (!Hcount(6) & (!Hcount(5) & !Hcount(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => Hcount(6),
	datac => Hcount(5),
	datad => Hcount(7),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X79_Y25_N10
\squareTop[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[0]~11_combout\ = squareTop(0) $ (VCC)
-- \squareTop[0]~12\ = CARRY(squareTop(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(0),
	datad => VCC,
	combout => \squareTop[0]~11_combout\,
	cout => \squareTop[0]~12\);

-- Location: LCCOMB_X79_Y25_N12
\squareTop[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[1]~13_combout\ = (squareTop(1) & ((\moveDown~q\ & (\squareTop[0]~12\ & VCC)) # (!\moveDown~q\ & (!\squareTop[0]~12\)))) # (!squareTop(1) & ((\moveDown~q\ & (!\squareTop[0]~12\)) # (!\moveDown~q\ & ((\squareTop[0]~12\) # (GND)))))
-- \squareTop[1]~14\ = CARRY((squareTop(1) & (!\moveDown~q\ & !\squareTop[0]~12\)) # (!squareTop(1) & ((!\squareTop[0]~12\) # (!\moveDown~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(1),
	datab => \moveDown~q\,
	datad => VCC,
	cin => \squareTop[0]~12\,
	combout => \squareTop[1]~13_combout\,
	cout => \squareTop[1]~14\);

-- Location: LCCOMB_X79_Y25_N14
\squareTop[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[2]~15_combout\ = ((squareTop(2) $ (\moveDown~q\ $ (!\squareTop[1]~14\)))) # (GND)
-- \squareTop[2]~16\ = CARRY((squareTop(2) & ((\moveDown~q\) # (!\squareTop[1]~14\))) # (!squareTop(2) & (\moveDown~q\ & !\squareTop[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(2),
	datab => \moveDown~q\,
	datad => VCC,
	cin => \squareTop[1]~14\,
	combout => \squareTop[2]~15_combout\,
	cout => \squareTop[2]~16\);

-- Location: LCCOMB_X79_Y25_N16
\squareTop[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[3]~17_combout\ = (squareTop(3) & ((\moveDown~q\ & (\squareTop[2]~16\ & VCC)) # (!\moveDown~q\ & (!\squareTop[2]~16\)))) # (!squareTop(3) & ((\moveDown~q\ & (!\squareTop[2]~16\)) # (!\moveDown~q\ & ((\squareTop[2]~16\) # (GND)))))
-- \squareTop[3]~18\ = CARRY((squareTop(3) & (!\moveDown~q\ & !\squareTop[2]~16\)) # (!squareTop(3) & ((!\squareTop[2]~16\) # (!\moveDown~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(3),
	datab => \moveDown~q\,
	datad => VCC,
	cin => \squareTop[2]~16\,
	combout => \squareTop[3]~17_combout\,
	cout => \squareTop[3]~18\);

-- Location: LCCOMB_X79_Y25_N18
\squareTop[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[4]~19_combout\ = ((squareTop(4) $ (\moveDown~q\ $ (!\squareTop[3]~18\)))) # (GND)
-- \squareTop[4]~20\ = CARRY((squareTop(4) & ((\moveDown~q\) # (!\squareTop[3]~18\))) # (!squareTop(4) & (\moveDown~q\ & !\squareTop[3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(4),
	datab => \moveDown~q\,
	datad => VCC,
	cin => \squareTop[3]~18\,
	combout => \squareTop[4]~19_combout\,
	cout => \squareTop[4]~20\);

-- Location: LCCOMB_X79_Y25_N20
\squareTop[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[5]~21_combout\ = (squareTop(5) & ((\moveDown~q\ & (\squareTop[4]~20\ & VCC)) # (!\moveDown~q\ & (!\squareTop[4]~20\)))) # (!squareTop(5) & ((\moveDown~q\ & (!\squareTop[4]~20\)) # (!\moveDown~q\ & ((\squareTop[4]~20\) # (GND)))))
-- \squareTop[5]~22\ = CARRY((squareTop(5) & (!\moveDown~q\ & !\squareTop[4]~20\)) # (!squareTop(5) & ((!\squareTop[4]~20\) # (!\moveDown~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(5),
	datab => \moveDown~q\,
	datad => VCC,
	cin => \squareTop[4]~20\,
	combout => \squareTop[5]~21_combout\,
	cout => \squareTop[5]~22\);

-- Location: LCCOMB_X79_Y25_N22
\squareTop[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[6]~23_combout\ = ((squareTop(6) $ (\moveDown~q\ $ (!\squareTop[5]~22\)))) # (GND)
-- \squareTop[6]~24\ = CARRY((squareTop(6) & ((\moveDown~q\) # (!\squareTop[5]~22\))) # (!squareTop(6) & (\moveDown~q\ & !\squareTop[5]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(6),
	datab => \moveDown~q\,
	datad => VCC,
	cin => \squareTop[5]~22\,
	combout => \squareTop[6]~23_combout\,
	cout => \squareTop[6]~24\);

-- Location: LCCOMB_X79_Y25_N24
\squareTop[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[7]~25_combout\ = (squareTop(7) & ((\moveDown~q\ & (\squareTop[6]~24\ & VCC)) # (!\moveDown~q\ & (!\squareTop[6]~24\)))) # (!squareTop(7) & ((\moveDown~q\ & (!\squareTop[6]~24\)) # (!\moveDown~q\ & ((\squareTop[6]~24\) # (GND)))))
-- \squareTop[7]~26\ = CARRY((squareTop(7) & (!\moveDown~q\ & !\squareTop[6]~24\)) # (!squareTop(7) & ((!\squareTop[6]~24\) # (!\moveDown~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(7),
	datab => \moveDown~q\,
	datad => VCC,
	cin => \squareTop[6]~24\,
	combout => \squareTop[7]~25_combout\,
	cout => \squareTop[7]~26\);

-- Location: LCCOMB_X79_Y25_N26
\squareTop[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[8]~27_combout\ = ((squareTop(8) $ (\moveDown~q\ $ (!\squareTop[7]~26\)))) # (GND)
-- \squareTop[8]~28\ = CARRY((squareTop(8) & ((\moveDown~q\) # (!\squareTop[7]~26\))) # (!squareTop(8) & (\moveDown~q\ & !\squareTop[7]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(8),
	datab => \moveDown~q\,
	datad => VCC,
	cin => \squareTop[7]~26\,
	combout => \squareTop[8]~27_combout\,
	cout => \squareTop[8]~28\);

-- Location: LCCOMB_X79_Y25_N28
\squareTop[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[9]~29_combout\ = (squareTop(9) & ((\moveDown~q\ & (\squareTop[8]~28\ & VCC)) # (!\moveDown~q\ & (!\squareTop[8]~28\)))) # (!squareTop(9) & ((\moveDown~q\ & (!\squareTop[8]~28\)) # (!\moveDown~q\ & ((\squareTop[8]~28\) # (GND)))))
-- \squareTop[9]~30\ = CARRY((squareTop(9) & (!\moveDown~q\ & !\squareTop[8]~28\)) # (!squareTop(9) & ((!\squareTop[8]~28\) # (!\moveDown~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(9),
	datab => \moveDown~q\,
	datad => VCC,
	cin => \squareTop[8]~28\,
	combout => \squareTop[9]~29_combout\,
	cout => \squareTop[9]~30\);

-- Location: FF_X79_Y25_N29
\squareTop[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareTop[9]~29_combout\,
	ena => \squareTop[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareTop(9));

-- Location: LCCOMB_X79_Y25_N8
\squareTop[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[9]~34_combout\ = (!squareTop(10) & !squareTop(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => squareTop(10),
	datad => squareTop(9),
	combout => \squareTop[9]~34_combout\);

-- Location: FF_X79_Y25_N17
\squareTop[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareTop[3]~17_combout\,
	ena => \squareTop[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareTop(3));

-- Location: FF_X79_Y25_N13
\squareTop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareTop[1]~13_combout\,
	ena => \squareTop[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareTop(1));

-- Location: LCCOMB_X80_Y25_N30
\squareTop[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[9]~31_combout\ = (!squareTop(2) & (\moveDown~q\ & (!squareTop(3) & !squareTop(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(2),
	datab => \moveDown~q\,
	datac => squareTop(3),
	datad => squareTop(1),
	combout => \squareTop[9]~31_combout\);

-- Location: FF_X79_Y25_N23
\squareTop[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareTop[6]~23_combout\,
	ena => \squareTop[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareTop(6));

-- Location: FF_X79_Y25_N19
\squareTop[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareTop[4]~19_combout\,
	ena => \squareTop[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareTop(4));

-- Location: FF_X79_Y25_N21
\squareTop[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareTop[5]~21_combout\,
	ena => \squareTop[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareTop(5));

-- Location: LCCOMB_X80_Y25_N24
\squareTop[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[9]~32_combout\ = (!squareTop(0) & (!squareTop(6) & (!squareTop(4) & !squareTop(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(0),
	datab => squareTop(6),
	datac => squareTop(4),
	datad => squareTop(5),
	combout => \squareTop[9]~32_combout\);

-- Location: LCCOMB_X80_Y25_N26
\squareTop[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[9]~33_combout\ = (!squareTop(8) & (!squareTop(7) & (\squareTop[9]~31_combout\ & \squareTop[9]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(8),
	datab => squareTop(7),
	datac => \squareTop[9]~31_combout\,
	datad => \squareTop[9]~32_combout\,
	combout => \squareTop[9]~33_combout\);

-- Location: LCCOMB_X79_Y25_N4
\squareTop[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[9]~35_combout\ = (\squareTop[9]~34_combout\ & (!\squareTop[9]~33_combout\ & ((\LessThan18~2_combout\) # (\moveDown~q\)))) # (!\squareTop[9]~34_combout\ & (((\moveDown~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan18~2_combout\,
	datab => \moveDown~q\,
	datac => \squareTop[9]~34_combout\,
	datad => \squareTop[9]~33_combout\,
	combout => \squareTop[9]~35_combout\);

-- Location: FF_X79_Y25_N25
\squareTop[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareTop[7]~25_combout\,
	ena => \squareTop[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareTop(7));

-- Location: FF_X79_Y25_N27
\squareTop[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareTop[8]~27_combout\,
	ena => \squareTop[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareTop(8));

-- Location: FF_X79_Y25_N15
\squareTop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareTop[2]~15_combout\,
	ena => \squareTop[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareTop(2));

-- Location: FF_X79_Y25_N11
\squareTop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareTop[0]~11_combout\,
	ena => \squareTop[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareTop(0));

-- Location: LCCOMB_X79_Y25_N2
\LessThan18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan18~0_combout\ = (!squareTop(3) & (!squareTop(2) & ((!squareTop(0)) # (!squareTop(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(1),
	datab => squareTop(3),
	datac => squareTop(2),
	datad => squareTop(0),
	combout => \LessThan18~0_combout\);

-- Location: LCCOMB_X79_Y25_N0
\LessThan18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan18~1_combout\ = (squareTop(4) & (squareTop(5) & !\LessThan18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => squareTop(4),
	datac => squareTop(5),
	datad => \LessThan18~0_combout\,
	combout => \LessThan18~1_combout\);

-- Location: LCCOMB_X79_Y25_N6
\LessThan18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan18~2_combout\ = (((!squareTop(6) & !\LessThan18~1_combout\)) # (!squareTop(8))) # (!squareTop(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(6),
	datab => squareTop(7),
	datac => squareTop(8),
	datad => \LessThan18~1_combout\,
	combout => \LessThan18~2_combout\);

-- Location: LCCOMB_X80_Y25_N28
\moveDown~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \moveDown~0_combout\ = ((!\squareTop[9]~33_combout\ & ((\moveDown~q\) # (!\LessThan18~2_combout\)))) # (!\squareTop[9]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \squareTop[9]~33_combout\,
	datab => \LessThan18~2_combout\,
	datac => \moveDown~q\,
	datad => \squareTop[9]~34_combout\,
	combout => \moveDown~0_combout\);

-- Location: FF_X80_Y25_N29
moveDown : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \moveDown~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moveDown~q\);

-- Location: LCCOMB_X79_Y25_N30
\squareTop[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareTop[10]~36_combout\ = \moveDown~q\ $ (\squareTop[9]~30\ $ (!squareTop(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \moveDown~q\,
	datad => squareTop(10),
	cin => \squareTop[9]~30\,
	combout => \squareTop[10]~36_combout\);

-- Location: FF_X79_Y25_N31
\squareTop[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareTop[10]~36_combout\,
	ena => \squareTop[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareTop(10));

-- Location: FF_X80_Y27_N11
\Vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[2]~14_combout\,
	sclr => \LessThan11~1_combout\,
	ena => \LessThan10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(2));

-- Location: LCCOMB_X80_Y25_N2
\LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~1_cout\ = CARRY((squareTop(0) & !Vcount(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(0),
	datab => Vcount(0),
	datad => VCC,
	cout => \LessThan6~1_cout\);

-- Location: LCCOMB_X80_Y25_N4
\LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~3_cout\ = CARRY((squareTop(1) & (Vcount(1) & !\LessThan6~1_cout\)) # (!squareTop(1) & ((Vcount(1)) # (!\LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(1),
	datab => Vcount(1),
	datad => VCC,
	cin => \LessThan6~1_cout\,
	cout => \LessThan6~3_cout\);

-- Location: LCCOMB_X80_Y25_N6
\LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~5_cout\ = CARRY((squareTop(2) & ((!\LessThan6~3_cout\) # (!Vcount(2)))) # (!squareTop(2) & (!Vcount(2) & !\LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(2),
	datab => Vcount(2),
	datad => VCC,
	cin => \LessThan6~3_cout\,
	cout => \LessThan6~5_cout\);

-- Location: LCCOMB_X80_Y25_N8
\LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~7_cout\ = CARRY((squareTop(3) & (Vcount(3) & !\LessThan6~5_cout\)) # (!squareTop(3) & ((Vcount(3)) # (!\LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(3),
	datab => Vcount(3),
	datad => VCC,
	cin => \LessThan6~5_cout\,
	cout => \LessThan6~7_cout\);

-- Location: LCCOMB_X80_Y25_N10
\LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~9_cout\ = CARRY((Vcount(4) & (squareTop(4) & !\LessThan6~7_cout\)) # (!Vcount(4) & ((squareTop(4)) # (!\LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(4),
	datab => squareTop(4),
	datad => VCC,
	cin => \LessThan6~7_cout\,
	cout => \LessThan6~9_cout\);

-- Location: LCCOMB_X80_Y25_N12
\LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~11_cout\ = CARRY((Vcount(5) & ((!\LessThan6~9_cout\) # (!squareTop(5)))) # (!Vcount(5) & (!squareTop(5) & !\LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(5),
	datab => squareTop(5),
	datad => VCC,
	cin => \LessThan6~9_cout\,
	cout => \LessThan6~11_cout\);

-- Location: LCCOMB_X80_Y25_N14
\LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~13_cout\ = CARRY((Vcount(6) & (squareTop(6) & !\LessThan6~11_cout\)) # (!Vcount(6) & ((squareTop(6)) # (!\LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(6),
	datab => squareTop(6),
	datad => VCC,
	cin => \LessThan6~11_cout\,
	cout => \LessThan6~13_cout\);

-- Location: LCCOMB_X80_Y25_N16
\LessThan6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~15_cout\ = CARRY((Vcount(7) & ((!\LessThan6~13_cout\) # (!squareTop(7)))) # (!Vcount(7) & (!squareTop(7) & !\LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(7),
	datab => squareTop(7),
	datad => VCC,
	cin => \LessThan6~13_cout\,
	cout => \LessThan6~15_cout\);

-- Location: LCCOMB_X80_Y25_N18
\LessThan6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~17_cout\ = CARRY((squareTop(8) & ((!\LessThan6~15_cout\) # (!Vcount(8)))) # (!squareTop(8) & (!Vcount(8) & !\LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(8),
	datab => Vcount(8),
	datad => VCC,
	cin => \LessThan6~15_cout\,
	cout => \LessThan6~17_cout\);

-- Location: LCCOMB_X80_Y25_N20
\LessThan6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~18_combout\ = (Vcount(9) & (\LessThan6~17_cout\ & squareTop(9))) # (!Vcount(9) & ((\LessThan6~17_cout\) # (squareTop(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Vcount(9),
	datad => squareTop(9),
	cin => \LessThan6~17_cout\,
	combout => \LessThan6~18_combout\);

-- Location: LCCOMB_X81_Y25_N28
\GPIO~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~72_combout\ = (!squareTop(10) & !\LessThan6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => squareTop(10),
	datad => \LessThan6~18_combout\,
	combout => \GPIO~72_combout\);

-- Location: FF_X83_Y27_N17
\Hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \Hcount[2]~15_combout\,
	sclr => \LessThan10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(2));

-- Location: LCCOMB_X83_Y28_N6
\squareLeft[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[0]~11_combout\ = squareLeft(0) $ (VCC)
-- \squareLeft[0]~12\ = CARRY(squareLeft(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => squareLeft(0),
	datad => VCC,
	combout => \squareLeft[0]~11_combout\,
	cout => \squareLeft[0]~12\);

-- Location: LCCOMB_X83_Y28_N24
\squareLeft[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[9]~34_combout\ = (\moveRight~q\ & ((squareLeft(9) & (\squareLeft[8]~33\ & VCC)) # (!squareLeft(9) & (!\squareLeft[8]~33\)))) # (!\moveRight~q\ & ((squareLeft(9) & (!\squareLeft[8]~33\)) # (!squareLeft(9) & ((\squareLeft[8]~33\) # (GND)))))
-- \squareLeft[9]~35\ = CARRY((\moveRight~q\ & (!squareLeft(9) & !\squareLeft[8]~33\)) # (!\moveRight~q\ & ((!\squareLeft[8]~33\) # (!squareLeft(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moveRight~q\,
	datab => squareLeft(9),
	datad => VCC,
	cin => \squareLeft[8]~33\,
	combout => \squareLeft[9]~34_combout\,
	cout => \squareLeft[9]~35\);

-- Location: LCCOMB_X83_Y28_N26
\squareLeft[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[10]~36_combout\ = squareLeft(10) $ (\moveRight~q\ $ (!\squareLeft[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(10),
	datab => \moveRight~q\,
	cin => \squareLeft[9]~35\,
	combout => \squareLeft[10]~36_combout\);

-- Location: FF_X83_Y28_N27
\squareLeft[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareLeft[10]~36_combout\,
	ena => \squareLeft[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareLeft(10));

-- Location: LCCOMB_X82_Y28_N0
\moveRight~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \moveRight~0_combout\ = (squareLeft(10)) # ((!\squareLeft[10]~16_combout\ & ((\moveRight~q\) # (!\LessThan16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \squareLeft[10]~16_combout\,
	datab => squareLeft(10),
	datac => \moveRight~q\,
	datad => \LessThan16~2_combout\,
	combout => \moveRight~0_combout\);

-- Location: FF_X82_Y28_N1
moveRight : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \moveRight~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moveRight~q\);

-- Location: LCCOMB_X83_Y28_N8
\squareLeft[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[1]~18_combout\ = (\moveRight~q\ & ((squareLeft(1) & (\squareLeft[0]~12\ & VCC)) # (!squareLeft(1) & (!\squareLeft[0]~12\)))) # (!\moveRight~q\ & ((squareLeft(1) & (!\squareLeft[0]~12\)) # (!squareLeft(1) & ((\squareLeft[0]~12\) # (GND)))))
-- \squareLeft[1]~19\ = CARRY((\moveRight~q\ & (!squareLeft(1) & !\squareLeft[0]~12\)) # (!\moveRight~q\ & ((!\squareLeft[0]~12\) # (!squareLeft(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moveRight~q\,
	datab => squareLeft(1),
	datad => VCC,
	cin => \squareLeft[0]~12\,
	combout => \squareLeft[1]~18_combout\,
	cout => \squareLeft[1]~19\);

-- Location: LCCOMB_X83_Y28_N10
\squareLeft[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[2]~20_combout\ = ((squareLeft(2) $ (\moveRight~q\ $ (!\squareLeft[1]~19\)))) # (GND)
-- \squareLeft[2]~21\ = CARRY((squareLeft(2) & ((\moveRight~q\) # (!\squareLeft[1]~19\))) # (!squareLeft(2) & (\moveRight~q\ & !\squareLeft[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(2),
	datab => \moveRight~q\,
	datad => VCC,
	cin => \squareLeft[1]~19\,
	combout => \squareLeft[2]~20_combout\,
	cout => \squareLeft[2]~21\);

-- Location: LCCOMB_X83_Y28_N12
\squareLeft[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[3]~22_combout\ = (\moveRight~q\ & ((squareLeft(3) & (\squareLeft[2]~21\ & VCC)) # (!squareLeft(3) & (!\squareLeft[2]~21\)))) # (!\moveRight~q\ & ((squareLeft(3) & (!\squareLeft[2]~21\)) # (!squareLeft(3) & ((\squareLeft[2]~21\) # (GND)))))
-- \squareLeft[3]~23\ = CARRY((\moveRight~q\ & (!squareLeft(3) & !\squareLeft[2]~21\)) # (!\moveRight~q\ & ((!\squareLeft[2]~21\) # (!squareLeft(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moveRight~q\,
	datab => squareLeft(3),
	datad => VCC,
	cin => \squareLeft[2]~21\,
	combout => \squareLeft[3]~22_combout\,
	cout => \squareLeft[3]~23\);

-- Location: FF_X83_Y28_N13
\squareLeft[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareLeft[3]~22_combout\,
	ena => \squareLeft[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareLeft(3));

-- Location: LCCOMB_X83_Y28_N14
\squareLeft[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[4]~24_combout\ = ((\moveRight~q\ $ (squareLeft(4) $ (!\squareLeft[3]~23\)))) # (GND)
-- \squareLeft[4]~25\ = CARRY((\moveRight~q\ & ((squareLeft(4)) # (!\squareLeft[3]~23\))) # (!\moveRight~q\ & (squareLeft(4) & !\squareLeft[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moveRight~q\,
	datab => squareLeft(4),
	datad => VCC,
	cin => \squareLeft[3]~23\,
	combout => \squareLeft[4]~24_combout\,
	cout => \squareLeft[4]~25\);

-- Location: FF_X83_Y28_N15
\squareLeft[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareLeft[4]~24_combout\,
	ena => \squareLeft[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareLeft(4));

-- Location: LCCOMB_X83_Y28_N16
\squareLeft[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[5]~26_combout\ = (\moveRight~q\ & ((squareLeft(5) & (\squareLeft[4]~25\ & VCC)) # (!squareLeft(5) & (!\squareLeft[4]~25\)))) # (!\moveRight~q\ & ((squareLeft(5) & (!\squareLeft[4]~25\)) # (!squareLeft(5) & ((\squareLeft[4]~25\) # (GND)))))
-- \squareLeft[5]~27\ = CARRY((\moveRight~q\ & (!squareLeft(5) & !\squareLeft[4]~25\)) # (!\moveRight~q\ & ((!\squareLeft[4]~25\) # (!squareLeft(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moveRight~q\,
	datab => squareLeft(5),
	datad => VCC,
	cin => \squareLeft[4]~25\,
	combout => \squareLeft[5]~26_combout\,
	cout => \squareLeft[5]~27\);

-- Location: FF_X83_Y28_N17
\squareLeft[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareLeft[5]~26_combout\,
	ena => \squareLeft[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareLeft(5));

-- Location: LCCOMB_X83_Y28_N18
\squareLeft[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[6]~28_combout\ = ((squareLeft(6) $ (\moveRight~q\ $ (!\squareLeft[5]~27\)))) # (GND)
-- \squareLeft[6]~29\ = CARRY((squareLeft(6) & ((\moveRight~q\) # (!\squareLeft[5]~27\))) # (!squareLeft(6) & (\moveRight~q\ & !\squareLeft[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(6),
	datab => \moveRight~q\,
	datad => VCC,
	cin => \squareLeft[5]~27\,
	combout => \squareLeft[6]~28_combout\,
	cout => \squareLeft[6]~29\);

-- Location: LCCOMB_X83_Y28_N20
\squareLeft[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[7]~30_combout\ = (\moveRight~q\ & ((squareLeft(7) & (\squareLeft[6]~29\ & VCC)) # (!squareLeft(7) & (!\squareLeft[6]~29\)))) # (!\moveRight~q\ & ((squareLeft(7) & (!\squareLeft[6]~29\)) # (!squareLeft(7) & ((\squareLeft[6]~29\) # (GND)))))
-- \squareLeft[7]~31\ = CARRY((\moveRight~q\ & (!squareLeft(7) & !\squareLeft[6]~29\)) # (!\moveRight~q\ & ((!\squareLeft[6]~29\) # (!squareLeft(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \moveRight~q\,
	datab => squareLeft(7),
	datad => VCC,
	cin => \squareLeft[6]~29\,
	combout => \squareLeft[7]~30_combout\,
	cout => \squareLeft[7]~31\);

-- Location: FF_X83_Y28_N21
\squareLeft[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareLeft[7]~30_combout\,
	ena => \squareLeft[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareLeft(7));

-- Location: LCCOMB_X83_Y28_N22
\squareLeft[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[8]~32_combout\ = ((squareLeft(8) $ (\moveRight~q\ $ (!\squareLeft[7]~31\)))) # (GND)
-- \squareLeft[8]~33\ = CARRY((squareLeft(8) & ((\moveRight~q\) # (!\squareLeft[7]~31\))) # (!squareLeft(8) & (\moveRight~q\ & !\squareLeft[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(8),
	datab => \moveRight~q\,
	datad => VCC,
	cin => \squareLeft[7]~31\,
	combout => \squareLeft[8]~32_combout\,
	cout => \squareLeft[8]~33\);

-- Location: FF_X83_Y28_N25
\squareLeft[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareLeft[9]~34_combout\,
	ena => \squareLeft[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareLeft(9));

-- Location: FF_X83_Y28_N11
\squareLeft[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareLeft[2]~20_combout\,
	ena => \squareLeft[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareLeft(2));

-- Location: LCCOMB_X83_Y28_N30
\LessThan16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~0_combout\ = (!squareLeft(3) & (!squareLeft(2) & ((!squareLeft(0)) # (!squareLeft(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(3),
	datab => squareLeft(1),
	datac => squareLeft(0),
	datad => squareLeft(2),
	combout => \LessThan16~0_combout\);

-- Location: FF_X83_Y28_N19
\squareLeft[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareLeft[6]~28_combout\,
	ena => \squareLeft[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareLeft(6));

-- Location: LCCOMB_X83_Y28_N0
\LessThan16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~1_combout\ = (((!squareLeft(6)) # (!squareLeft(4))) # (!squareLeft(5))) # (!squareLeft(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(7),
	datab => squareLeft(5),
	datac => squareLeft(4),
	datad => squareLeft(6),
	combout => \LessThan16~1_combout\);

-- Location: LCCOMB_X83_Y28_N28
\LessThan16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~2_combout\ = ((!squareLeft(8) & ((\LessThan16~0_combout\) # (\LessThan16~1_combout\)))) # (!squareLeft(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(8),
	datab => squareLeft(9),
	datac => \LessThan16~0_combout\,
	datad => \LessThan16~1_combout\,
	combout => \LessThan16~2_combout\);

-- Location: FF_X83_Y28_N23
\squareLeft[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareLeft[8]~32_combout\,
	ena => \squareLeft[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareLeft(8));

-- Location: LCCOMB_X82_Y28_N8
\squareLeft[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[10]~15_combout\ = (!squareLeft(9) & (!squareLeft(7) & !squareLeft(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => squareLeft(9),
	datac => squareLeft(7),
	datad => squareLeft(8),
	combout => \squareLeft[10]~15_combout\);

-- Location: LCCOMB_X83_Y28_N4
\squareLeft[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[10]~14_combout\ = (!squareLeft(0) & (!squareLeft(5) & (!squareLeft(4) & !squareLeft(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(0),
	datab => squareLeft(5),
	datac => squareLeft(4),
	datad => squareLeft(6),
	combout => \squareLeft[10]~14_combout\);

-- Location: LCCOMB_X82_Y28_N10
\squareLeft[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[10]~16_combout\ = (\squareLeft[10]~13_combout\ & (\squareLeft[10]~15_combout\ & \squareLeft[10]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \squareLeft[10]~13_combout\,
	datac => \squareLeft[10]~15_combout\,
	datad => \squareLeft[10]~14_combout\,
	combout => \squareLeft[10]~16_combout\);

-- Location: LCCOMB_X83_Y28_N2
\squareLeft[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \squareLeft[10]~17_combout\ = (squareLeft(10) & (((\moveRight~q\)))) # (!squareLeft(10) & (!\squareLeft[10]~16_combout\ & ((\LessThan16~2_combout\) # (\moveRight~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(10),
	datab => \LessThan16~2_combout\,
	datac => \moveRight~q\,
	datad => \squareLeft[10]~16_combout\,
	combout => \squareLeft[10]~17_combout\);

-- Location: FF_X83_Y28_N7
\squareLeft[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareLeft[0]~11_combout\,
	ena => \squareLeft[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareLeft(0));

-- Location: FF_X83_Y28_N9
\squareLeft[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Tick~clkctrl_outclk\,
	d => \squareLeft[1]~18_combout\,
	ena => \squareLeft[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => squareLeft(1));

-- Location: LCCOMB_X83_Y27_N12
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (Hcount(0) & ((GND) # (!squareLeft(0)))) # (!Hcount(0) & (squareLeft(0) $ (GND)))
-- \Add2~1\ = CARRY((Hcount(0)) # (!squareLeft(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(0),
	datab => squareLeft(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X83_Y27_N14
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (Hcount(1) & ((squareLeft(1) & (!\Add2~1\)) # (!squareLeft(1) & (\Add2~1\ & VCC)))) # (!Hcount(1) & ((squareLeft(1) & ((\Add2~1\) # (GND))) # (!squareLeft(1) & (!\Add2~1\))))
-- \Add2~3\ = CARRY((Hcount(1) & (squareLeft(1) & !\Add2~1\)) # (!Hcount(1) & ((squareLeft(1)) # (!\Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(1),
	datab => squareLeft(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X83_Y27_N16
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((squareLeft(2) $ (Hcount(2) $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((squareLeft(2) & (Hcount(2) & !\Add2~3\)) # (!squareLeft(2) & ((Hcount(2)) # (!\Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(2),
	datab => Hcount(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X83_Y27_N18
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (squareLeft(3) & ((Hcount(3) & (!\Add2~5\)) # (!Hcount(3) & ((\Add2~5\) # (GND))))) # (!squareLeft(3) & ((Hcount(3) & (\Add2~5\ & VCC)) # (!Hcount(3) & (!\Add2~5\))))
-- \Add2~7\ = CARRY((squareLeft(3) & ((!\Add2~5\) # (!Hcount(3)))) # (!squareLeft(3) & (!Hcount(3) & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(3),
	datab => Hcount(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X82_Y25_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (Vcount(0) & ((GND) # (!squareTop(0)))) # (!Vcount(0) & (squareTop(0) $ (GND)))
-- \Add3~1\ = CARRY((Vcount(0)) # (!squareTop(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(0),
	datab => squareTop(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X82_Y25_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (Vcount(1) & ((squareTop(1) & (!\Add3~1\)) # (!squareTop(1) & (\Add3~1\ & VCC)))) # (!Vcount(1) & ((squareTop(1) & ((\Add3~1\) # (GND))) # (!squareTop(1) & (!\Add3~1\))))
-- \Add3~3\ = CARRY((Vcount(1) & (squareTop(1) & !\Add3~1\)) # (!Vcount(1) & ((squareTop(1)) # (!\Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(1),
	datab => squareTop(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X82_Y25_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((squareTop(2) $ (Vcount(2) $ (\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((squareTop(2) & (Vcount(2) & !\Add3~3\)) # (!squareTop(2) & ((Vcount(2)) # (!\Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareTop(2),
	datab => Vcount(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X82_Y25_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (Vcount(3) & ((squareTop(3) & (!\Add3~5\)) # (!squareTop(3) & (\Add3~5\ & VCC)))) # (!Vcount(3) & ((squareTop(3) & ((\Add3~5\) # (GND))) # (!squareTop(3) & (!\Add3~5\))))
-- \Add3~7\ = CARRY((Vcount(3) & (squareTop(3) & !\Add3~5\)) # (!Vcount(3) & ((squareTop(3)) # (!\Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(3),
	datab => squareTop(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X82_Y25_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((Vcount(4) $ (squareTop(4) $ (\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((Vcount(4) & ((!\Add3~7\) # (!squareTop(4)))) # (!Vcount(4) & (!squareTop(4) & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(4),
	datab => squareTop(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X82_Y25_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = squareTop(5) $ (\Add3~9\ $ (!Vcount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => squareTop(5),
	datad => Vcount(5),
	cin => \Add3~9\,
	combout => \Add3~10_combout\);

-- Location: LCCOMB_X81_Y26_N2
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Add3~8_combout\ & (\Add3~0_combout\ & \Add3~2_combout\)) # (!\Add3~8_combout\ & ((\Add3~0_combout\) # (\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Add3~0_combout\,
	datac => \Add3~2_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X81_Y26_N6
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Add3~6_combout\ & (!\Mux17~0_combout\ & ((\Add3~4_combout\) # (!\Add3~10_combout\)))) # (!\Add3~6_combout\ & (!\Add3~10_combout\ & ((\Add3~4_combout\) # (\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~10_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X81_Y26_N28
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Add3~8_combout\ & (\Mux17~1_combout\ & ((!\Add3~4_combout\) # (!\Add3~6_combout\)))) # (!\Add3~8_combout\ & ((\Mux17~1_combout\) # (\Add3~6_combout\ $ (\Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~8_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X82_Y26_N24
\Mux0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~21_combout\ = (\Add2~2_combout\ & (\Add2~0_combout\)) # (!\Add2~2_combout\ & ((\Mux17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datac => \Add2~0_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux0~21_combout\);

-- Location: LCCOMB_X83_Y26_N28
\Mux0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~23_combout\ = (\Add2~4_combout\ & ((\Add2~6_combout\ & ((\Mux0~21_combout\))) # (!\Add2~6_combout\ & (!\Mux20~1_combout\)))) # (!\Add2~4_combout\ & (\Mux0~21_combout\ & (\Mux20~1_combout\ $ (!\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~6_combout\,
	datad => \Mux0~21_combout\,
	combout => \Mux0~23_combout\);

-- Location: LCCOMB_X84_Y26_N18
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Add3~6_combout\ & ((\Add3~4_combout\ & (!\Add3~2_combout\ & !\Add3~0_combout\)) # (!\Add3~4_combout\ & (\Add3~2_combout\ & \Add3~0_combout\)))) # (!\Add3~6_combout\ & (!\Add3~4_combout\ & (\Add3~2_combout\ $ (\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~2_combout\,
	datad => \Add3~0_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X84_Y26_N24
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Add3~6_combout\ & (((!\Add3~2_combout\ & !\Add3~0_combout\)) # (!\Add3~4_combout\))) # (!\Add3~6_combout\ & ((\Add3~4_combout\) # ((\Add3~2_combout\ & \Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~2_combout\,
	datad => \Add3~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X84_Y26_N10
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Add3~10_combout\ & (((!\Add3~8_combout\ & \Mux15~1_combout\)))) # (!\Add3~10_combout\ & ((\Mux15~0_combout\ & (!\Add3~8_combout\)) # (!\Mux15~0_combout\ & ((\Mux15~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Mux15~0_combout\,
	datac => \Add3~8_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X84_Y26_N4
\Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~15_combout\ = (\Add3~10_combout\) # ((\Add3~6_combout\ & (\Add3~4_combout\ & \Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~2_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux0~15_combout\);

-- Location: LCCOMB_X83_Y26_N0
\Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~16_combout\ = (!\Add3~8_combout\ & (!\Mux0~15_combout\ & (\Add2~0_combout\ $ (!\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Add2~0_combout\,
	datac => \Add2~6_combout\,
	datad => \Mux0~15_combout\,
	combout => \Mux0~16_combout\);

-- Location: LCCOMB_X83_Y26_N20
\Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~20_combout\ = (\Add2~4_combout\ & (((\Mux15~2_combout\)))) # (!\Add2~4_combout\ & ((\Mux0~19_combout\) # ((\Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~19_combout\,
	datab => \Add2~4_combout\,
	datac => \Mux15~2_combout\,
	datad => \Mux0~16_combout\,
	combout => \Mux0~20_combout\);

-- Location: LCCOMB_X83_Y26_N18
\Mux0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~24_combout\ = (\Mux0~22_combout\ & (((\Mux0~20_combout\) # (!\Add2~2_combout\)) # (!\Mux0~23_combout\))) # (!\Mux0~22_combout\ & (!\Mux0~23_combout\ & (\Mux0~20_combout\ & \Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~22_combout\,
	datab => \Mux0~23_combout\,
	datac => \Mux0~20_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux0~24_combout\);

-- Location: LCCOMB_X83_Y25_N6
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Add3~8_combout\ & ((\Add3~4_combout\ & ((!\Add3~6_combout\))) # (!\Add3~4_combout\ & ((\Add3~2_combout\) # (\Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~8_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X83_Y25_N0
\Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (!\Add2~2_combout\ & ((\Add2~0_combout\ & ((\Mux1~0_combout\))) # (!\Add2~0_combout\ & (\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Add2~0_combout\,
	datac => \Add2~2_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux0~13_combout\);

-- Location: LCCOMB_X83_Y25_N16
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Add3~2_combout\ & ((\Add3~6_combout\) # ((!\Add3~0_combout\ & \Add3~4_combout\)))) # (!\Add3~2_combout\ & (((\Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~2_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X83_Y25_N10
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\Add3~6_combout\) # ((\Add3~0_combout\ & (\Add3~4_combout\ & \Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~2_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X83_Y25_N20
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Add3~10_combout\ & (!\Mux0~6_combout\ & ((!\Add2~2_combout\) # (!\Mux0~5_combout\)))) # (!\Add3~10_combout\ & (\Mux0~6_combout\ & ((\Mux0~5_combout\) # (!\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Mux0~5_combout\,
	datac => \Add2~2_combout\,
	datad => \Mux0~6_combout\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X83_Y25_N2
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\Add3~6_combout\ & (((!\Add3~4_combout\ & !\Add3~10_combout\)))) # (!\Add3~6_combout\ & (\Add3~10_combout\ & (\Add3~2_combout\ $ (\Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X83_Y25_N12
\Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\Add3~6_combout\ & (((\Add3~4_combout\ & !\Add3~10_combout\)))) # (!\Add3~6_combout\ & (!\Add3~2_combout\ & ((\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X83_Y25_N8
\Mux0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~46_combout\ = (\Mux0~8_combout\ & (!\Add2~2_combout\ & ((!\Mux0~9_combout\) # (!\Add3~0_combout\)))) # (!\Mux0~8_combout\ & (((\Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \Mux0~8_combout\,
	datac => \Add2~2_combout\,
	datad => \Mux0~9_combout\,
	combout => \Mux0~46_combout\);

-- Location: LCCOMB_X83_Y25_N26
\Mux0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~47_combout\ = (\Add3~8_combout\) # ((\Add2~0_combout\ & ((\Mux0~46_combout\))) # (!\Add2~0_combout\ & (\Mux0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Mux0~7_combout\,
	datac => \Mux0~46_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux0~47_combout\);

-- Location: LCCOMB_X82_Y26_N4
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Add3~6_combout\ & (((!\Add3~4_combout\ & !\Add3~2_combout\)) # (!\Add3~10_combout\))) # (!\Add3~6_combout\ & ((\Add3~4_combout\) # ((\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add3~6_combout\,
	datac => \Add3~2_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X82_Y26_N22
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\) # (\Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~0_combout\,
	datac => \Add3~8_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X82_Y26_N28
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Add3~4_combout\) # ((\Add3~2_combout\ & \Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datac => \Add3~2_combout\,
	datad => \Add3~0_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X82_Y26_N6
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Add3~8_combout\) # ((\Add3~6_combout\ & ((!\Add3~10_combout\) # (!\Mux12~0_combout\))) # (!\Add3~6_combout\ & ((\Mux12~0_combout\) # (\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Mux12~0_combout\,
	datac => \Add3~8_combout\,
	datad => \Add3~10_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X83_Y26_N8
\Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\Add2~0_combout\ & (((\Add2~2_combout\)))) # (!\Add2~0_combout\ & ((\Add2~2_combout\ & ((\Mux12~1_combout\))) # (!\Add2~2_combout\ & (\Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datab => \Add2~0_combout\,
	datac => \Mux12~1_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X83_Y26_N2
\Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (\Mux0~10_combout\ & (((\Mux10~1_combout\) # (!\Add2~0_combout\)))) # (!\Mux0~10_combout\ & (\Mux13~2_combout\ & ((\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Mux10~1_combout\,
	datac => \Mux0~10_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux0~11_combout\);

-- Location: LCCOMB_X83_Y26_N16
\Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (\Add2~6_combout\ & ((\Mux0~47_combout\) # ((\Add2~4_combout\)))) # (!\Add2~6_combout\ & (((!\Add2~4_combout\ & \Mux0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mux0~47_combout\,
	datac => \Add2~4_combout\,
	datad => \Mux0~11_combout\,
	combout => \Mux0~12_combout\);

-- Location: LCCOMB_X83_Y26_N22
\Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~14_combout\ = (\Add2~4_combout\ & ((\Mux0~12_combout\ & ((\Mux0~13_combout\))) # (!\Mux0~12_combout\ & (\Mux0~4_combout\)))) # (!\Add2~4_combout\ & (((\Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~4_combout\,
	datab => \Mux0~13_combout\,
	datac => \Add2~4_combout\,
	datad => \Mux0~12_combout\,
	combout => \Mux0~14_combout\);

-- Location: LCCOMB_X83_Y27_N20
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((squareLeft(4) $ (Hcount(4) $ (\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((squareLeft(4) & (Hcount(4) & !\Add2~7\)) # (!squareLeft(4) & ((Hcount(4)) # (!\Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(4),
	datab => Hcount(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X83_Y26_N24
\Mux0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~25_combout\ = (\Add2~10_combout\ & (((\Mux0~14_combout\ & !\Add2~8_combout\)))) # (!\Add2~10_combout\ & (\Mux0~24_combout\ & ((\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Mux0~24_combout\,
	datac => \Mux0~14_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux0~25_combout\);

-- Location: LCCOMB_X83_Y27_N22
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = squareLeft(5) $ (\Add2~9\ $ (!Hcount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => squareLeft(5),
	datad => Hcount(5),
	cin => \Add2~9\,
	combout => \Add2~10_combout\);

-- Location: LCCOMB_X83_Y26_N26
\Mux0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~41_combout\ = (\Mux0~25_combout\) # ((\Mux0~40_combout\ & (!\Add2~10_combout\ & !\Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~40_combout\,
	datab => \Mux0~25_combout\,
	datac => \Add2~10_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux0~41_combout\);

-- Location: LCCOMB_X82_Y27_N4
\GPIO~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~74_combout\ = (!Hcount(10) & (((!\Mux0~41_combout\) # (!\GPIO~72_combout\)) # (!\GPIO~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO~73_combout\,
	datab => \GPIO~72_combout\,
	datac => \Mux0~41_combout\,
	datad => Hcount(10),
	combout => \GPIO~74_combout\);

-- Location: LCCOMB_X83_Y27_N10
\GPIO~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~75_combout\ = (!Hcount(9) & (\GPIO~74_combout\ & ((\LessThan1~3_combout\) # (!Hcount(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(9),
	datab => \LessThan1~3_combout\,
	datac => \GPIO~74_combout\,
	datad => Hcount(8),
	combout => \GPIO~75_combout\);

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

-- Location: PLL_1
\pll_clock|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 5,
	c0_initial => 1,
	c0_low => 4,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 204,
	c1_initial => 1,
	c1_low => 36,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 4,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 100,
	clk1_duty_cycle => 85,
	clk1_multiply_by => 3,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 36,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 7173,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 347,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \pll_clock|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll_clock|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pll_clock|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll_clock|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\pll_clock|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: CLKCTRL_G3
\pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X81_Y26_N26
\LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = (((!Vcount(7)) # (!Vcount(6))) # (!Vcount(8))) # (!Vcount(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(5),
	datab => Vcount(8),
	datac => Vcount(6),
	datad => Vcount(7),
	combout => \LessThan14~0_combout\);

-- Location: LCCOMB_X81_Y27_N28
\DE_Generator~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE_Generator~2_combout\ = (!\DE_Generator~1_combout\ & (!Vcount(9) & (\LessThan14~0_combout\ & !Hcount(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE_Generator~1_combout\,
	datab => Vcount(9),
	datac => \LessThan14~0_combout\,
	datad => Hcount(10),
	combout => \DE_Generator~2_combout\);

-- Location: LCCOMB_X81_Y27_N12
\DE_Generator~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE_Generator~4_combout\ = (\DE_Generator~2_combout\ & ((\DE_Generator~3_combout\) # ((Vcount(0)) # (!\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE_Generator~3_combout\,
	datab => \DE_Generator~2_combout\,
	datac => Vcount(0),
	datad => \Equal1~0_combout\,
	combout => \DE_Generator~4_combout\);

-- Location: FF_X81_Y27_N13
\GPIO[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DE_Generator~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GPIO[26]~reg0_q\);

-- Location: LCCOMB_X81_Y27_N20
\LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (!Hcount(6) & (!Hcount(7) & !Hcount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(6),
	datac => Hcount(7),
	datad => Hcount(5),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X82_Y27_N2
\GPIO~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~76_combout\ = ((\LessThan9~0_combout\ & (\LessThan1~2_combout\ & !Hcount(8))) # (!\LessThan9~0_combout\ & ((Hcount(8))))) # (!Hcount(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \LessThan9~0_combout\,
	datac => Hcount(8),
	datad => Hcount(9),
	combout => \GPIO~76_combout\);

-- Location: LCCOMB_X83_Y27_N28
\GPIO~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~77_combout\ = (!\GPIO~76_combout\ & \GPIO~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO~76_combout\,
	datab => \GPIO~74_combout\,
	combout => \GPIO~77_combout\);

-- Location: LCCOMB_X83_Y27_N24
\GPIO~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~78_combout\ = (\GPIO~74_combout\ & ((Hcount(9) & (\LessThan1~3_combout\ & !Hcount(8))) # (!Hcount(9) & (!\LessThan1~3_combout\ & Hcount(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(9),
	datab => \LessThan1~3_combout\,
	datac => \GPIO~74_combout\,
	datad => Hcount(8),
	combout => \GPIO~78_combout\);

-- Location: IOIBUF_X60_Y0_N15
\GPIO[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(8),
	o => \GPIO[8]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\GPIO[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(10),
	o => \GPIO[10]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\GPIO[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(11),
	o => \GPIO[11]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\GPIO[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(12),
	o => \GPIO[12]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\GPIO[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(13),
	o => \GPIO[13]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\GPIO[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(14),
	o => \GPIO[14]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\GPIO[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(15),
	o => \GPIO[15]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\GPIO[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(16),
	o => \GPIO[16]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\GPIO[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(17),
	o => \GPIO[17]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\GPIO[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(18),
	o => \GPIO[18]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\GPIO[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(19),
	o => \GPIO[19]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\GPIO[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(20),
	o => \GPIO[20]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\GPIO[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(21),
	o => \GPIO[21]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\GPIO[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(22),
	o => \GPIO[22]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\GPIO[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(23),
	o => \GPIO[23]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\GPIO[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(24),
	o => \GPIO[24]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\GPIO[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(25),
	o => \GPIO[25]~input_o\);

-- Location: IOIBUF_X107_Y0_N1
\GPIO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(0),
	o => \GPIO[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\GPIO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(1),
	o => \GPIO[1]~input_o\);

-- Location: IOIBUF_X109_Y0_N8
\GPIO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(2),
	o => \GPIO[2]~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\GPIO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(3),
	o => \GPIO[3]~input_o\);

-- Location: IOIBUF_X102_Y0_N22
\GPIO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(4),
	o => \GPIO[4]~input_o\);

-- Location: IOIBUF_X96_Y0_N15
\GPIO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(5),
	o => \GPIO[5]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\GPIO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(6),
	o => \GPIO[6]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\GPIO[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(7),
	o => \GPIO[7]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\GPIO[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(9),
	o => \GPIO[9]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\GPIO[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(26),
	o => \GPIO[26]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\GPIO[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(27),
	o => \GPIO[27]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\GPIO[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(28),
	o => \GPIO[28]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\GPIO[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(29),
	o => \GPIO[29]~input_o\);

-- Location: IOIBUF_X85_Y0_N22
\GPIO[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(30),
	o => \GPIO[30]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\GPIO[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(31),
	o => \GPIO[31]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\GPIO[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(32),
	o => \GPIO[32]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\GPIO[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(33),
	o => \GPIO[33]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\GPIO[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(34),
	o => \GPIO[34]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\GPIO[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(35),
	o => \GPIO[35]~input_o\);
END structure;


