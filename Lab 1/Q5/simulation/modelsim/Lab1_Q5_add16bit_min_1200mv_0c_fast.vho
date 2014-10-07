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

-- DATE "09/12/2014 10:52:51"

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

ENTITY 	Lab1_Q5_add16bit IS
    PORT (
	clock : IN std_logic;
	dataa : IN std_logic_vector(15 DOWNTO 0);
	datab : IN std_logic_vector(15 DOWNTO 0);
	result : OUT std_logic_vector(15 DOWNTO 0)
	);
END Lab1_Q5_add16bit;

-- Design Ports Information
-- result[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[4]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[5]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[6]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[6]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[7]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[8]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[8]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[9]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[9]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[10]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[10]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[11]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[11]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[12]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[12]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[13]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[13]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[14]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[14]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[15]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[15]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab1_Q5_add16bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_dataa : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_datab : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataa[0]~input_o\ : std_logic;
SIGNAL \datab[1]~input_o\ : std_logic;
SIGNAL \dataa[2]~input_o\ : std_logic;
SIGNAL \datab[3]~input_o\ : std_logic;
SIGNAL \datab[4]~input_o\ : std_logic;
SIGNAL \datab[5]~input_o\ : std_logic;
SIGNAL \dataa[6]~input_o\ : std_logic;
SIGNAL \dataa[7]~input_o\ : std_logic;
SIGNAL \dataa[8]~input_o\ : std_logic;
SIGNAL \datab[9]~input_o\ : std_logic;
SIGNAL \dataa[10]~input_o\ : std_logic;
SIGNAL \datab[11]~input_o\ : std_logic;
SIGNAL \datab[12]~input_o\ : std_logic;
SIGNAL \datab[13]~input_o\ : std_logic;
SIGNAL \dataa[14]~input_o\ : std_logic;
SIGNAL \datab[15]~input_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \datab[0]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~16_combout\ : std_logic;
SIGNAL \dataa[1]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~17\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~18_combout\ : std_logic;
SIGNAL \datab[2]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~19\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~20_combout\ : std_logic;
SIGNAL \dataa[3]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~21\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~22_combout\ : std_logic;
SIGNAL \dataa[4]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~23\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~24_combout\ : std_logic;
SIGNAL \dataa[5]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~25\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~26_combout\ : std_logic;
SIGNAL \datab[6]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~27\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~28_combout\ : std_logic;
SIGNAL \datab[7]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~29\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~30_combout\ : std_logic;
SIGNAL \datab[8]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~31\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~32_combout\ : std_logic;
SIGNAL \dataa[9]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~33\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~34_combout\ : std_logic;
SIGNAL \datab[10]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~35\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~36_combout\ : std_logic;
SIGNAL \dataa[11]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~37\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~38_combout\ : std_logic;
SIGNAL \dataa[12]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~39\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~40_combout\ : std_logic;
SIGNAL \dataa[13]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~41\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~42_combout\ : std_logic;
SIGNAL \datab[14]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~43\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~44_combout\ : std_logic;
SIGNAL \dataa[15]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~45\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~46_combout\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_dataa <= dataa;
ww_datab <= datab;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\dataa[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(0),
	o => \dataa[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\datab[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(1),
	o => \datab[1]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\dataa[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(2),
	o => \dataa[2]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\datab[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(3),
	o => \datab[3]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\datab[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(4),
	o => \datab[4]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\datab[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(5),
	o => \datab[5]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\dataa[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(6),
	o => \dataa[6]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\dataa[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(7),
	o => \dataa[7]~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\dataa[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(8),
	o => \dataa[8]~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\datab[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(9),
	o => \datab[9]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\dataa[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(10),
	o => \dataa[10]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\datab[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(11),
	o => \datab[11]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\datab[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(12),
	o => \datab[12]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\datab[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(13),
	o => \datab[13]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\dataa[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(14),
	o => \dataa[14]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\datab[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(15),
	o => \datab[15]~input_o\);

-- Location: IOOBUF_X0_Y43_N16
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(0),
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(1),
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(2),
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(3),
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(4),
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(5),
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(6),
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(7),
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(8),
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(9),
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(10),
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(11),
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(12),
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(13),
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(14),
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(15),
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y33_N22
\datab[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(0),
	o => \datab[0]~input_o\);

-- Location: LCCOMB_X1_Y43_N0
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~16_combout\ = (\dataa[0]~input_o\ & (\datab[0]~input_o\ $ (VCC))) # (!\dataa[0]~input_o\ & (\datab[0]~input_o\ & VCC))
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~17\ = CARRY((\dataa[0]~input_o\ & \datab[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[0]~input_o\,
	datab => \datab[0]~input_o\,
	datad => VCC,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~16_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~17\);

-- Location: FF_X1_Y43_N1
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(0));

-- Location: IOIBUF_X0_Y42_N8
\dataa[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(1),
	o => \dataa[1]~input_o\);

-- Location: LCCOMB_X1_Y43_N2
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~18_combout\ = (\datab[1]~input_o\ & ((\dataa[1]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~17\ & VCC)) # (!\dataa[1]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~17\)))) # (!\datab[1]~input_o\ & ((\dataa[1]~input_o\ & (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~17\)) # (!\dataa[1]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~17\) # (GND)))))
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~19\ = CARRY((\datab[1]~input_o\ & (!\dataa[1]~input_o\ & !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~17\)) # (!\datab[1]~input_o\ & 
-- ((!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~17\) # (!\dataa[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datab[1]~input_o\,
	datab => \dataa[1]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~17\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~18_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~19\);

-- Location: FF_X1_Y43_N3
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(1));

-- Location: IOIBUF_X0_Y44_N8
\datab[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(2),
	o => \datab[2]~input_o\);

-- Location: LCCOMB_X1_Y43_N4
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~20_combout\ = ((\dataa[2]~input_o\ $ (\datab[2]~input_o\ $ (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~19\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~21\ = CARRY((\dataa[2]~input_o\ & ((\datab[2]~input_o\) # (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~19\))) # (!\dataa[2]~input_o\ & (\datab[2]~input_o\ & 
-- !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[2]~input_o\,
	datab => \datab[2]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~19\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~20_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~21\);

-- Location: FF_X1_Y43_N5
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(2));

-- Location: IOIBUF_X0_Y55_N15
\dataa[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(3),
	o => \dataa[3]~input_o\);

-- Location: LCCOMB_X1_Y43_N6
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~22_combout\ = (\datab[3]~input_o\ & ((\dataa[3]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~21\ & VCC)) # (!\dataa[3]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~21\)))) # (!\datab[3]~input_o\ & ((\dataa[3]~input_o\ & (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~21\)) # (!\dataa[3]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~21\) # (GND)))))
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~23\ = CARRY((\datab[3]~input_o\ & (!\dataa[3]~input_o\ & !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~21\)) # (!\datab[3]~input_o\ & 
-- ((!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~21\) # (!\dataa[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datab[3]~input_o\,
	datab => \dataa[3]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~21\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~22_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~23\);

-- Location: FF_X1_Y43_N7
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(3));

-- Location: IOIBUF_X0_Y44_N1
\dataa[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(4),
	o => \dataa[4]~input_o\);

-- Location: LCCOMB_X1_Y43_N8
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~24_combout\ = ((\datab[4]~input_o\ $ (\dataa[4]~input_o\ $ (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~23\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~25\ = CARRY((\datab[4]~input_o\ & ((\dataa[4]~input_o\) # (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~23\))) # (!\datab[4]~input_o\ & (\dataa[4]~input_o\ & 
-- !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datab[4]~input_o\,
	datab => \dataa[4]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~23\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~24_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~25\);

-- Location: FF_X1_Y43_N9
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(4));

-- Location: IOIBUF_X0_Y35_N15
\dataa[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(5),
	o => \dataa[5]~input_o\);

-- Location: LCCOMB_X1_Y43_N10
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~26_combout\ = (\datab[5]~input_o\ & ((\dataa[5]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~25\ & VCC)) # (!\dataa[5]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~25\)))) # (!\datab[5]~input_o\ & ((\dataa[5]~input_o\ & (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~25\)) # (!\dataa[5]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~25\) # (GND)))))
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~27\ = CARRY((\datab[5]~input_o\ & (!\dataa[5]~input_o\ & !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~25\)) # (!\datab[5]~input_o\ & 
-- ((!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~25\) # (!\dataa[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datab[5]~input_o\,
	datab => \dataa[5]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~25\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~26_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~27\);

-- Location: FF_X1_Y43_N11
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(5));

-- Location: IOIBUF_X0_Y49_N1
\datab[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(6),
	o => \datab[6]~input_o\);

-- Location: LCCOMB_X1_Y43_N12
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~28_combout\ = ((\dataa[6]~input_o\ $ (\datab[6]~input_o\ $ (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~27\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~29\ = CARRY((\dataa[6]~input_o\ & ((\datab[6]~input_o\) # (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~27\))) # (!\dataa[6]~input_o\ & (\datab[6]~input_o\ & 
-- !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[6]~input_o\,
	datab => \datab[6]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~27\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~28_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~29\);

-- Location: FF_X1_Y43_N13
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(6));

-- Location: IOIBUF_X0_Y24_N1
\datab[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(7),
	o => \datab[7]~input_o\);

-- Location: LCCOMB_X1_Y43_N14
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~30_combout\ = (\dataa[7]~input_o\ & ((\datab[7]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~29\ & VCC)) # (!\datab[7]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~29\)))) # (!\dataa[7]~input_o\ & ((\datab[7]~input_o\ & (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~29\)) # (!\datab[7]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~29\) # (GND)))))
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~31\ = CARRY((\dataa[7]~input_o\ & (!\datab[7]~input_o\ & !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~29\)) # (!\dataa[7]~input_o\ & 
-- ((!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~29\) # (!\datab[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[7]~input_o\,
	datab => \datab[7]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~29\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~30_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~31\);

-- Location: FF_X1_Y43_N15
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(7));

-- Location: IOIBUF_X0_Y31_N15
\datab[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(8),
	o => \datab[8]~input_o\);

-- Location: LCCOMB_X1_Y43_N16
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~32_combout\ = ((\dataa[8]~input_o\ $ (\datab[8]~input_o\ $ (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~31\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~33\ = CARRY((\dataa[8]~input_o\ & ((\datab[8]~input_o\) # (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~31\))) # (!\dataa[8]~input_o\ & (\datab[8]~input_o\ & 
-- !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[8]~input_o\,
	datab => \datab[8]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~31\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~32_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~33\);

-- Location: FF_X1_Y43_N17
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(8));

-- Location: IOIBUF_X0_Y34_N15
\dataa[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(9),
	o => \dataa[9]~input_o\);

-- Location: LCCOMB_X1_Y43_N18
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~34_combout\ = (\datab[9]~input_o\ & ((\dataa[9]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~33\ & VCC)) # (!\dataa[9]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~33\)))) # (!\datab[9]~input_o\ & ((\dataa[9]~input_o\ & (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~33\)) # (!\dataa[9]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~33\) # (GND)))))
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~35\ = CARRY((\datab[9]~input_o\ & (!\dataa[9]~input_o\ & !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~33\)) # (!\datab[9]~input_o\ & 
-- ((!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~33\) # (!\dataa[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datab[9]~input_o\,
	datab => \dataa[9]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~33\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~34_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~35\);

-- Location: FF_X1_Y43_N19
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(9));

-- Location: IOIBUF_X0_Y29_N15
\datab[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(10),
	o => \datab[10]~input_o\);

-- Location: LCCOMB_X1_Y43_N20
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~36_combout\ = ((\dataa[10]~input_o\ $ (\datab[10]~input_o\ $ (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~35\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~37\ = CARRY((\dataa[10]~input_o\ & ((\datab[10]~input_o\) # (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~35\))) # (!\dataa[10]~input_o\ & (\datab[10]~input_o\ & 
-- !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[10]~input_o\,
	datab => \datab[10]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~35\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~36_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~37\);

-- Location: FF_X1_Y43_N21
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(10));

-- Location: IOIBUF_X0_Y52_N1
\dataa[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(11),
	o => \dataa[11]~input_o\);

-- Location: LCCOMB_X1_Y43_N22
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~38_combout\ = (\datab[11]~input_o\ & ((\dataa[11]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~37\ & VCC)) # (!\dataa[11]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~37\)))) # (!\datab[11]~input_o\ & ((\dataa[11]~input_o\ & (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~37\)) # (!\dataa[11]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~37\) # (GND)))))
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~39\ = CARRY((\datab[11]~input_o\ & (!\dataa[11]~input_o\ & !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~37\)) # (!\datab[11]~input_o\ & 
-- ((!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~37\) # (!\dataa[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datab[11]~input_o\,
	datab => \dataa[11]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~37\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~38_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~39\);

-- Location: FF_X1_Y43_N23
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(11));

-- Location: IOIBUF_X0_Y55_N8
\dataa[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(12),
	o => \dataa[12]~input_o\);

-- Location: LCCOMB_X1_Y43_N24
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~40_combout\ = ((\datab[12]~input_o\ $ (\dataa[12]~input_o\ $ (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~39\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~41\ = CARRY((\datab[12]~input_o\ & ((\dataa[12]~input_o\) # (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~39\))) # (!\datab[12]~input_o\ & (\dataa[12]~input_o\ & 
-- !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datab[12]~input_o\,
	datab => \dataa[12]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~39\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~40_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~41\);

-- Location: FF_X1_Y43_N25
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(12));

-- Location: IOIBUF_X0_Y47_N22
\dataa[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(13),
	o => \dataa[13]~input_o\);

-- Location: LCCOMB_X1_Y43_N26
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~42_combout\ = (\datab[13]~input_o\ & ((\dataa[13]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~41\ & VCC)) # (!\dataa[13]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~41\)))) # (!\datab[13]~input_o\ & ((\dataa[13]~input_o\ & (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~41\)) # (!\dataa[13]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~41\) # (GND)))))
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~43\ = CARRY((\datab[13]~input_o\ & (!\dataa[13]~input_o\ & !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~41\)) # (!\datab[13]~input_o\ & 
-- ((!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~41\) # (!\dataa[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datab[13]~input_o\,
	datab => \dataa[13]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~41\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~42_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~43\);

-- Location: FF_X1_Y43_N27
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(13));

-- Location: IOIBUF_X0_Y34_N22
\datab[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(14),
	o => \datab[14]~input_o\);

-- Location: LCCOMB_X1_Y43_N28
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~44_combout\ = ((\dataa[14]~input_o\ $ (\datab[14]~input_o\ $ (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~43\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~45\ = CARRY((\dataa[14]~input_o\ & ((\datab[14]~input_o\) # (!\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~43\))) # (!\dataa[14]~input_o\ & (\datab[14]~input_o\ & 
-- !\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[14]~input_o\,
	datab => \datab[14]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~43\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~44_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~45\);

-- Location: FF_X1_Y43_N29
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(14));

-- Location: IOIBUF_X0_Y60_N15
\dataa[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(15),
	o => \dataa[15]~input_o\);

-- Location: LCCOMB_X1_Y43_N30
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~46_combout\ = \datab[15]~input_o\ $ (\dataa[15]~input_o\ $ (\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datab[15]~input_o\,
	datab => \dataa[15]~input_o\,
	cin => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~45\,
	combout => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~46_combout\);

-- Location: FF_X1_Y43_N31
\LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(15));

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;
END structure;


