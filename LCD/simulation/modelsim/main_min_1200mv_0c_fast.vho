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

-- DATE "11/07/2014 11:54:53"

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
SIGNAL \DE_Generator~0_combout\ : std_logic;
SIGNAL \DE_Generator~1_combout\ : std_logic;
SIGNAL \DE_Generator~2_combout\ : std_logic;
SIGNAL \DE_Generator~3_combout\ : std_logic;
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
SIGNAL \Vcount[0]~10_combout\ : std_logic;
SIGNAL \Vcount[6]~23\ : std_logic;
SIGNAL \Vcount[7]~24_combout\ : std_logic;
SIGNAL \Hcount[0]~11_combout\ : std_logic;
SIGNAL \Hcount[0]~12\ : std_logic;
SIGNAL \Hcount[1]~14\ : std_logic;
SIGNAL \Hcount[2]~15_combout\ : std_logic;
SIGNAL \Hcount[2]~16\ : std_logic;
SIGNAL \Hcount[3]~18\ : std_logic;
SIGNAL \Hcount[4]~20\ : std_logic;
SIGNAL \Hcount[5]~21_combout\ : std_logic;
SIGNAL \Hcount[5]~22\ : std_logic;
SIGNAL \Hcount[6]~23_combout\ : std_logic;
SIGNAL \Hcount[6]~24\ : std_logic;
SIGNAL \Hcount[7]~26\ : std_logic;
SIGNAL \Hcount[8]~27_combout\ : std_logic;
SIGNAL \Hcount[8]~28\ : std_logic;
SIGNAL \Hcount[9]~30\ : std_logic;
SIGNAL \Hcount[10]~31_combout\ : std_logic;
SIGNAL \Hcount[9]~29_combout\ : std_logic;
SIGNAL \GPIO~79_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Vcount[3]~16_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \Vcount[7]~25\ : std_logic;
SIGNAL \Vcount[8]~27\ : std_logic;
SIGNAL \Vcount[9]~28_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \Vcount[0]~11\ : std_logic;
SIGNAL \Vcount[1]~12_combout\ : std_logic;
SIGNAL \Vcount[1]~13\ : std_logic;
SIGNAL \Vcount[2]~15\ : std_logic;
SIGNAL \Vcount[3]~17\ : std_logic;
SIGNAL \Vcount[4]~18_combout\ : std_logic;
SIGNAL \Vcount[4]~19\ : std_logic;
SIGNAL \Vcount[5]~21\ : std_logic;
SIGNAL \Vcount[6]~22_combout\ : std_logic;
SIGNAL \Vcount[8]~26_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Vcount[5]~20_combout\ : std_logic;
SIGNAL \GPIO~72_combout\ : std_logic;
SIGNAL \Vcount[2]~14_combout\ : std_logic;
SIGNAL \GPIO~73_combout\ : std_logic;
SIGNAL \GPIO~74_combout\ : std_logic;
SIGNAL \Hcount[1]~13_combout\ : std_logic;
SIGNAL \GPIO~76_combout\ : std_logic;
SIGNAL \Hcount[3]~17_combout\ : std_logic;
SIGNAL \GPIO~75_combout\ : std_logic;
SIGNAL \Hcount[4]~19_combout\ : std_logic;
SIGNAL \GPIO~77_combout\ : std_logic;
SIGNAL \GPIO~78_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \pll_clock|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll_clock|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \DE_Generator~4_combout\ : std_logic;
SIGNAL \Hcount[7]~25_combout\ : std_logic;
SIGNAL \DE_Generator~5_combout\ : std_logic;
SIGNAL \DE_Generator~6_combout\ : std_logic;
SIGNAL \GPIO[26]~reg0_q\ : std_logic;
SIGNAL Vcount : std_logic_vector(9 DOWNTO 0);
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
\pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \pll_clock|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;

-- Location: LCCOMB_X62_Y1_N10
\DE_Generator~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE_Generator~0_combout\ = (Vcount(1)) # ((Vcount(2)) # (Vcount(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Vcount(1),
	datac => Vcount(2),
	datad => Vcount(4),
	combout => \DE_Generator~0_combout\);

-- Location: LCCOMB_X62_Y1_N20
\DE_Generator~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE_Generator~1_combout\ = (Vcount(5) & ((\DE_Generator~0_combout\) # ((Vcount(3)) # (Vcount(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE_Generator~0_combout\,
	datab => Vcount(5),
	datac => Vcount(3),
	datad => Vcount(0),
	combout => \DE_Generator~1_combout\);

-- Location: LCCOMB_X62_Y1_N6
\DE_Generator~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE_Generator~2_combout\ = (!Vcount(9) & (!Hcount(10) & ((\DE_Generator~1_combout\) # (!\LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(9),
	datab => \DE_Generator~1_combout\,
	datac => \LessThan6~0_combout\,
	datad => Hcount(10),
	combout => \DE_Generator~2_combout\);

-- Location: LCCOMB_X61_Y1_N28
\DE_Generator~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE_Generator~3_combout\ = (Hcount(3) & Hcount(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(3),
	datad => Hcount(4),
	combout => \DE_Generator~3_combout\);

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
	i => \GPIO~74_combout\,
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
	i => \GPIO~78_combout\,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => GPIO(28));

-- Location: IOOBUF_X89_Y0_N2
\GPIO[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => GPIO(29));

-- Location: IOOBUF_X85_Y0_N23
\GPIO[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => GPIO(30));

-- Location: IOOBUF_X81_Y0_N23
\GPIO[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => GPIO(31));

-- Location: IOOBUF_X85_Y0_N16
\GPIO[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => GPIO(32));

-- Location: IOOBUF_X113_Y0_N2
\GPIO[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => GPIO(33));

-- Location: IOOBUF_X81_Y0_N16
\GPIO[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => GPIO(34));

-- Location: IOOBUF_X113_Y0_N9
\GPIO[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => GPIO(35));

-- Location: LCCOMB_X63_Y1_N6
\Vcount[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcount[0]~10_combout\ = Vcount(0) $ (VCC)
-- \Vcount[0]~11\ = CARRY(Vcount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Vcount(0),
	datad => VCC,
	combout => \Vcount[0]~10_combout\,
	cout => \Vcount[0]~11\);

-- Location: LCCOMB_X63_Y1_N18
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

-- Location: LCCOMB_X63_Y1_N20
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

-- Location: LCCOMB_X61_Y1_N4
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

-- Location: FF_X61_Y1_N5
\Hcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount[0]~11_combout\,
	sclr => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(0));

-- Location: LCCOMB_X61_Y1_N6
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

-- Location: LCCOMB_X61_Y1_N8
\Hcount[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[2]~15_combout\ = (Hcount(2) & (\Hcount[1]~14\ $ (GND))) # (!Hcount(2) & (!\Hcount[1]~14\ & VCC))
-- \Hcount[2]~16\ = CARRY((Hcount(2) & !\Hcount[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Hcount(2),
	datad => VCC,
	cin => \Hcount[1]~14\,
	combout => \Hcount[2]~15_combout\,
	cout => \Hcount[2]~16\);

-- Location: FF_X61_Y1_N9
\Hcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount[2]~15_combout\,
	sclr => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(2));

-- Location: LCCOMB_X61_Y1_N10
\Hcount[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[3]~17_combout\ = (Hcount(3) & (!\Hcount[2]~16\)) # (!Hcount(3) & ((\Hcount[2]~16\) # (GND)))
-- \Hcount[3]~18\ = CARRY((!\Hcount[2]~16\) # (!Hcount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(3),
	datad => VCC,
	cin => \Hcount[2]~16\,
	combout => \Hcount[3]~17_combout\,
	cout => \Hcount[3]~18\);

-- Location: LCCOMB_X61_Y1_N12
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

-- Location: LCCOMB_X61_Y1_N14
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

-- Location: FF_X61_Y1_N15
\Hcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount[5]~21_combout\,
	sclr => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(5));

-- Location: LCCOMB_X61_Y1_N16
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

-- Location: FF_X61_Y1_N17
\Hcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount[6]~23_combout\,
	sclr => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(6));

-- Location: LCCOMB_X61_Y1_N18
\Hcount[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[7]~25_combout\ = (Hcount(7) & (!\Hcount[6]~24\)) # (!Hcount(7) & ((\Hcount[6]~24\) # (GND)))
-- \Hcount[7]~26\ = CARRY((!\Hcount[6]~24\) # (!Hcount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(7),
	datad => VCC,
	cin => \Hcount[6]~24\,
	combout => \Hcount[7]~25_combout\,
	cout => \Hcount[7]~26\);

-- Location: LCCOMB_X61_Y1_N20
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

-- Location: FF_X61_Y1_N21
\Hcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount[8]~27_combout\,
	sclr => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(8));

-- Location: LCCOMB_X61_Y1_N22
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

-- Location: LCCOMB_X61_Y1_N24
\Hcount[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hcount[10]~31_combout\ = \Hcount[9]~30\ $ (!Hcount(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Hcount(10),
	cin => \Hcount[9]~30\,
	combout => \Hcount[10]~31_combout\);

-- Location: FF_X61_Y1_N25
\Hcount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount[10]~31_combout\,
	sclr => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(10));

-- Location: FF_X61_Y1_N23
\Hcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount[9]~29_combout\,
	sclr => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(9));

-- Location: LCCOMB_X61_Y1_N26
\GPIO~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~79_combout\ = (Hcount(7) & (Hcount(8) & Hcount(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(7),
	datab => Hcount(8),
	datac => Hcount(9),
	combout => \GPIO~79_combout\);

-- Location: LCCOMB_X63_Y1_N30
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (Hcount(10)) # ((\GPIO~79_combout\ & ((Hcount(5)) # (Hcount(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(5),
	datab => Hcount(10),
	datac => \GPIO~79_combout\,
	datad => Hcount(6),
	combout => \LessThan2~0_combout\);

-- Location: FF_X63_Y1_N21
\Vcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[7]~24_combout\,
	sclr => \LessThan3~2_combout\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(7));

-- Location: LCCOMB_X63_Y1_N28
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!Vcount(8) & (!Vcount(6) & (!Vcount(4) & !Vcount(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(8),
	datab => Vcount(6),
	datac => Vcount(4),
	datad => Vcount(7),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X63_Y1_N12
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

-- Location: FF_X63_Y1_N13
\Vcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[3]~16_combout\,
	sclr => \LessThan3~2_combout\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(3));

-- Location: LCCOMB_X63_Y1_N26
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (((!Vcount(0) & !Vcount(1))) # (!Vcount(3))) # (!Vcount(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(2),
	datab => Vcount(0),
	datac => Vcount(1),
	datad => Vcount(3),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X63_Y1_N22
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

-- Location: LCCOMB_X63_Y1_N24
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

-- Location: FF_X63_Y1_N25
\Vcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[9]~28_combout\,
	sclr => \LessThan3~2_combout\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(9));

-- Location: LCCOMB_X63_Y1_N4
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (Vcount(9) & ((Vcount(5)) # ((!\LessThan3~1_combout\) # (!\LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(5),
	datab => \LessThan3~0_combout\,
	datac => \LessThan3~1_combout\,
	datad => Vcount(9),
	combout => \LessThan3~2_combout\);

-- Location: FF_X63_Y1_N7
\Vcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[0]~10_combout\,
	sclr => \LessThan3~2_combout\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(0));

-- Location: LCCOMB_X63_Y1_N8
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

-- Location: FF_X63_Y1_N9
\Vcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[1]~12_combout\,
	sclr => \LessThan3~2_combout\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(1));

-- Location: LCCOMB_X63_Y1_N10
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

-- Location: LCCOMB_X63_Y1_N14
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

-- Location: FF_X63_Y1_N15
\Vcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[4]~18_combout\,
	sclr => \LessThan3~2_combout\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(4));

-- Location: LCCOMB_X63_Y1_N16
\Vcount[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Vcount[5]~20_combout\ = (Vcount(5) & (!\Vcount[4]~19\)) # (!Vcount(5) & ((\Vcount[4]~19\) # (GND)))
-- \Vcount[5]~21\ = CARRY((!\Vcount[4]~19\) # (!Vcount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(5),
	datad => VCC,
	cin => \Vcount[4]~19\,
	combout => \Vcount[5]~20_combout\,
	cout => \Vcount[5]~21\);

-- Location: FF_X63_Y1_N19
\Vcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[6]~22_combout\,
	sclr => \LessThan3~2_combout\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(6));

-- Location: FF_X63_Y1_N23
\Vcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[8]~26_combout\,
	sclr => \LessThan3~2_combout\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(8));

-- Location: LCCOMB_X63_Y1_N0
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!Vcount(6) & (!Vcount(8) & !Vcount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Vcount(6),
	datac => Vcount(8),
	datad => Vcount(7),
	combout => \LessThan6~0_combout\);

-- Location: FF_X63_Y1_N17
\Vcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[5]~20_combout\,
	sclr => \LessThan3~2_combout\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(5));

-- Location: LCCOMB_X62_Y1_N24
\GPIO~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~72_combout\ = (\LessThan6~0_combout\ & (!Vcount(4) & !Vcount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan6~0_combout\,
	datac => Vcount(4),
	datad => Vcount(5),
	combout => \GPIO~72_combout\);

-- Location: FF_X63_Y1_N11
\Vcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Vcount[2]~14_combout\,
	sclr => \LessThan3~2_combout\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcount(2));

-- Location: LCCOMB_X63_Y1_N2
\GPIO~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~73_combout\ = (Vcount(0) & ((Vcount(1) & (!Vcount(3))) # (!Vcount(1) & ((Vcount(9)))))) # (!Vcount(0) & (!Vcount(3) & ((Vcount(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Vcount(3),
	datab => Vcount(0),
	datac => Vcount(1),
	datad => Vcount(9),
	combout => \GPIO~73_combout\);

-- Location: LCCOMB_X62_Y1_N26
\GPIO~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~74_combout\ = ((Vcount(2) & ((!\GPIO~73_combout\) # (!Vcount(3)))) # (!Vcount(2) & ((Vcount(3)) # (\GPIO~73_combout\)))) # (!\GPIO~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO~72_combout\,
	datab => Vcount(2),
	datac => Vcount(3),
	datad => \GPIO~73_combout\,
	combout => \GPIO~74_combout\);

-- Location: FF_X61_Y1_N7
\Hcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount[1]~13_combout\,
	sclr => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(1));

-- Location: LCCOMB_X61_Y1_N2
\GPIO~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~76_combout\ = (!Hcount(2) & (!Hcount(0) & !Hcount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Hcount(2),
	datac => Hcount(0),
	datad => Hcount(1),
	combout => \GPIO~76_combout\);

-- Location: FF_X61_Y1_N11
\Hcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount[3]~17_combout\,
	sclr => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(3));

-- Location: LCCOMB_X61_Y1_N0
\GPIO~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~75_combout\ = (Hcount(7) & (Hcount(5) & (Hcount(9) & Hcount(8)))) # (!Hcount(7) & (!Hcount(5) & (!Hcount(9) & !Hcount(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Hcount(7),
	datab => Hcount(5),
	datac => Hcount(9),
	datad => Hcount(8),
	combout => \GPIO~75_combout\);

-- Location: FF_X61_Y1_N13
\Hcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount[4]~19_combout\,
	sclr => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(4));

-- Location: LCCOMB_X62_Y1_N12
\GPIO~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~77_combout\ = (!Hcount(10) & (!Hcount(6) & !Hcount(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Hcount(10),
	datac => Hcount(6),
	datad => Hcount(4),
	combout => \GPIO~77_combout\);

-- Location: LCCOMB_X62_Y1_N22
\GPIO~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \GPIO~78_combout\ = ((Hcount(3)) # ((!\GPIO~77_combout\) # (!\GPIO~75_combout\))) # (!\GPIO~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO~76_combout\,
	datab => Hcount(3),
	datac => \GPIO~75_combout\,
	datad => \GPIO~77_combout\,
	combout => \GPIO~78_combout\);

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
	c1_high => 192,
	c1_initial => 1,
	c1_low => 48,
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
	clk1_duty_cycle => 80,
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
	pll_compensation_delay => 3825,
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

-- Location: LCCOMB_X61_Y1_N30
\DE_Generator~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE_Generator~4_combout\ = (\DE_Generator~3_combout\ & ((Hcount(5)) # ((!\GPIO~76_combout\ & !Hcount(8))))) # (!\DE_Generator~3_combout\ & (((Hcount(5) & !Hcount(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE_Generator~3_combout\,
	datab => \GPIO~76_combout\,
	datac => Hcount(5),
	datad => Hcount(8),
	combout => \DE_Generator~4_combout\);

-- Location: FF_X61_Y1_N19
\Hcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Hcount[7]~25_combout\,
	sclr => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcount(7));

-- Location: LCCOMB_X62_Y1_N8
\DE_Generator~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE_Generator~5_combout\ = (Hcount(7)) # ((\DE_Generator~4_combout\ & Hcount(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DE_Generator~4_combout\,
	datac => Hcount(6),
	datad => Hcount(7),
	combout => \DE_Generator~5_combout\);

-- Location: LCCOMB_X62_Y1_N0
\DE_Generator~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DE_Generator~6_combout\ = (\DE_Generator~2_combout\ & ((Hcount(8) & ((!Hcount(9)) # (!\DE_Generator~5_combout\))) # (!Hcount(8) & ((\DE_Generator~5_combout\) # (Hcount(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE_Generator~2_combout\,
	datab => Hcount(8),
	datac => \DE_Generator~5_combout\,
	datad => Hcount(9),
	combout => \DE_Generator~6_combout\);

-- Location: FF_X62_Y1_N1
\GPIO[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_clock|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DE_Generator~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GPIO[26]~reg0_q\);

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


