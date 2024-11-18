-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "11/17/2024 19:52:06"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TestReaction IS
    PORT (
	SW : IN std_logic_vector(0 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END TestReaction;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TestReaction IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clk_pre|Add0~77_sumout\ : std_logic;
SIGNAL \clk_pre|Equal0~2_combout\ : std_logic;
SIGNAL \clk_pre|Equal0~1_combout\ : std_logic;
SIGNAL \clk_pre|Equal0~0_combout\ : std_logic;
SIGNAL \clk_pre|Equal0~3_combout\ : std_logic;
SIGNAL \clk_pre|Add0~78\ : std_logic;
SIGNAL \clk_pre|Add0~17_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~18\ : std_logic;
SIGNAL \clk_pre|Add0~61_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~62\ : std_logic;
SIGNAL \clk_pre|Add0~57_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~58\ : std_logic;
SIGNAL \clk_pre|Add0~53_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~54\ : std_logic;
SIGNAL \clk_pre|Add0~73_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~74\ : std_logic;
SIGNAL \clk_pre|Add0~49_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~50\ : std_logic;
SIGNAL \clk_pre|Add0~45_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~46\ : std_logic;
SIGNAL \clk_pre|Add0~41_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~42\ : std_logic;
SIGNAL \clk_pre|Add0~37_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~38\ : std_logic;
SIGNAL \clk_pre|Add0~33_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~34\ : std_logic;
SIGNAL \clk_pre|Add0~29_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~30\ : std_logic;
SIGNAL \clk_pre|Add0~25_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~26\ : std_logic;
SIGNAL \clk_pre|Add0~21_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~22\ : std_logic;
SIGNAL \clk_pre|Add0~13_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~14\ : std_logic;
SIGNAL \clk_pre|Add0~9_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~10\ : std_logic;
SIGNAL \clk_pre|Add0~69_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~70\ : std_logic;
SIGNAL \clk_pre|Add0~65_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~66\ : std_logic;
SIGNAL \clk_pre|Add0~5_sumout\ : std_logic;
SIGNAL \clk_pre|Add0~6\ : std_logic;
SIGNAL \clk_pre|Add0~1_sumout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \mux_out~q\ : std_logic;
SIGNAL \BCDC|Count4_1|Q_internal~2_combout\ : std_logic;
SIGNAL \BCDC|Count4_1|Q_internal~3_combout\ : std_logic;
SIGNAL \BCDC|Count4_1|Q_internal~0_combout\ : std_logic;
SIGNAL \BCDC|Count4_1|Q_internal~1_combout\ : std_logic;
SIGNAL \HEX_DEC0|Mux6~0_combout\ : std_logic;
SIGNAL \HEX_DEC0|Mux5~0_combout\ : std_logic;
SIGNAL \HEX_DEC0|Mux4~0_combout\ : std_logic;
SIGNAL \HEX_DEC0|Mux3~0_combout\ : std_logic;
SIGNAL \HEX_DEC0|Mux2~0_combout\ : std_logic;
SIGNAL \HEX_DEC0|Mux1~0_combout\ : std_logic;
SIGNAL \HEX_DEC0|Mux0~0_combout\ : std_logic;
SIGNAL \BCDC|Count4_2|Q_internal~1_combout\ : std_logic;
SIGNAL \BCDC|Count4_2|Q_internal~2_combout\ : std_logic;
SIGNAL \BCDC|Count4_2|Q_internal~3_combout\ : std_logic;
SIGNAL \BCDC|Count4_2|Q_internal~0_combout\ : std_logic;
SIGNAL \HEX_DEC1|Mux6~0_combout\ : std_logic;
SIGNAL \HEX_DEC1|Mux5~0_combout\ : std_logic;
SIGNAL \HEX_DEC1|Mux4~0_combout\ : std_logic;
SIGNAL \HEX_DEC1|Mux3~0_combout\ : std_logic;
SIGNAL \HEX_DEC1|Mux2~0_combout\ : std_logic;
SIGNAL \HEX_DEC1|Mux1~0_combout\ : std_logic;
SIGNAL \HEX_DEC1|Mux0~0_combout\ : std_logic;
SIGNAL \BCDC|Count4_2|Q_internal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_pre|counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \BCDC|Count4_1|Q_internal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BCDC|and_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk_pre|ALT_INV_counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \clk_pre|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \clk_pre|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \clk_pre|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \BCDC|ALT_INV_and_out\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_mux_out~q\ : std_logic;
SIGNAL \BCDC|Count4_2|ALT_INV_Q_internal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BCDC|Count4_1|ALT_INV_Q_internal\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\clk_pre|ALT_INV_counter\(13) <= NOT \clk_pre|counter\(13);
\clk_pre|ALT_INV_counter\(12) <= NOT \clk_pre|counter\(12);
\clk_pre|ALT_INV_counter\(19) <= NOT \clk_pre|counter\(19);
\clk_pre|ALT_INV_counter\(15) <= NOT \clk_pre|counter\(15);
\clk_pre|ALT_INV_counter\(11) <= NOT \clk_pre|counter\(11);
\clk_pre|ALT_INV_counter\(10) <= NOT \clk_pre|counter\(10);
\clk_pre|ALT_INV_counter\(14) <= NOT \clk_pre|counter\(14);
\clk_pre|ALT_INV_counter\(9) <= NOT \clk_pre|counter\(9);
\clk_pre|ALT_INV_counter\(1) <= NOT \clk_pre|counter\(1);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\clk_pre|ALT_INV_Equal0~2_combout\ <= NOT \clk_pre|Equal0~2_combout\;
\clk_pre|ALT_INV_Equal0~1_combout\ <= NOT \clk_pre|Equal0~1_combout\;
\clk_pre|ALT_INV_Equal0~0_combout\ <= NOT \clk_pre|Equal0~0_combout\;
\BCDC|ALT_INV_and_out\(0) <= NOT \BCDC|and_out\(0);
\ALT_INV_mux_out~q\ <= NOT \mux_out~q\;
\BCDC|Count4_2|ALT_INV_Q_internal\(3) <= NOT \BCDC|Count4_2|Q_internal\(3);
\BCDC|Count4_2|ALT_INV_Q_internal\(2) <= NOT \BCDC|Count4_2|Q_internal\(2);
\BCDC|Count4_2|ALT_INV_Q_internal\(1) <= NOT \BCDC|Count4_2|Q_internal\(1);
\BCDC|Count4_2|ALT_INV_Q_internal\(0) <= NOT \BCDC|Count4_2|Q_internal\(0);
\BCDC|Count4_1|ALT_INV_Q_internal\(3) <= NOT \BCDC|Count4_1|Q_internal\(3);
\BCDC|Count4_1|ALT_INV_Q_internal\(2) <= NOT \BCDC|Count4_1|Q_internal\(2);
\BCDC|Count4_1|ALT_INV_Q_internal\(1) <= NOT \BCDC|Count4_1|Q_internal\(1);
\BCDC|Count4_1|ALT_INV_Q_internal\(0) <= NOT \BCDC|Count4_1|Q_internal\(0);
\clk_pre|ALT_INV_counter\(0) <= NOT \clk_pre|counter\(0);
\clk_pre|ALT_INV_counter\(5) <= NOT \clk_pre|counter\(5);
\clk_pre|ALT_INV_counter\(16) <= NOT \clk_pre|counter\(16);
\clk_pre|ALT_INV_counter\(17) <= NOT \clk_pre|counter\(17);
\clk_pre|ALT_INV_counter\(18) <= NOT \clk_pre|counter\(18);
\clk_pre|ALT_INV_counter\(2) <= NOT \clk_pre|counter\(2);
\clk_pre|ALT_INV_counter\(3) <= NOT \clk_pre|counter\(3);
\clk_pre|ALT_INV_counter\(4) <= NOT \clk_pre|counter\(4);
\clk_pre|ALT_INV_counter\(6) <= NOT \clk_pre|counter\(6);
\clk_pre|ALT_INV_counter\(7) <= NOT \clk_pre|counter\(7);
\clk_pre|ALT_INV_counter\(8) <= NOT \clk_pre|counter\(8);

-- Location: IOOBUF_X60_Y0_N19
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X80_Y0_N2
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X50_Y0_N93
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N76
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X56_Y0_N36
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X58_Y0_N76
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X56_Y0_N53
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X52_Y0_N53
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X52_Y0_N2
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X52_Y0_N36
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X64_Y0_N19
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X66_Y0_N42
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X50_Y0_N42
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X60_Y0_N2
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX_DEC1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: MLABCELL_X59_Y1_N0
\clk_pre|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~77_sumout\ = SUM(( \clk_pre|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \clk_pre|Add0~78\ = CARRY(( \clk_pre|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_pre|ALT_INV_counter\(0),
	cin => GND,
	sumout => \clk_pre|Add0~77_sumout\,
	cout => \clk_pre|Add0~78\);

-- Location: LABCELL_X60_Y1_N54
\clk_pre|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Equal0~2_combout\ = ( \clk_pre|counter\(0) & ( \clk_pre|counter\(19) & ( (\clk_pre|counter\(16) & (\clk_pre|counter\(17) & (\clk_pre|counter\(5) & \clk_pre|counter\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_pre|ALT_INV_counter\(16),
	datab => \clk_pre|ALT_INV_counter\(17),
	datac => \clk_pre|ALT_INV_counter\(5),
	datad => \clk_pre|ALT_INV_counter\(18),
	datae => \clk_pre|ALT_INV_counter\(0),
	dataf => \clk_pre|ALT_INV_counter\(19),
	combout => \clk_pre|Equal0~2_combout\);

-- Location: LABCELL_X60_Y1_N3
\clk_pre|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Equal0~1_combout\ = ( \clk_pre|counter\(2) & ( (\clk_pre|counter\(4) & (\clk_pre|counter\(3) & (\clk_pre|counter\(6) & \clk_pre|counter\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_pre|ALT_INV_counter\(4),
	datab => \clk_pre|ALT_INV_counter\(3),
	datac => \clk_pre|ALT_INV_counter\(6),
	datad => \clk_pre|ALT_INV_counter\(7),
	dataf => \clk_pre|ALT_INV_counter\(2),
	combout => \clk_pre|Equal0~1_combout\);

-- Location: LABCELL_X60_Y1_N18
\clk_pre|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Equal0~0_combout\ = ( \clk_pre|counter\(9) & ( \clk_pre|counter\(10) & ( (\clk_pre|counter\(12) & (\clk_pre|counter\(8) & (\clk_pre|counter\(13) & \clk_pre|counter\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_pre|ALT_INV_counter\(12),
	datab => \clk_pre|ALT_INV_counter\(8),
	datac => \clk_pre|ALT_INV_counter\(13),
	datad => \clk_pre|ALT_INV_counter\(11),
	datae => \clk_pre|ALT_INV_counter\(9),
	dataf => \clk_pre|ALT_INV_counter\(10),
	combout => \clk_pre|Equal0~0_combout\);

-- Location: LABCELL_X60_Y1_N33
\clk_pre|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Equal0~3_combout\ = ( \clk_pre|Equal0~1_combout\ & ( \clk_pre|Equal0~0_combout\ & ( (\clk_pre|counter\(14) & (\clk_pre|Equal0~2_combout\ & (\clk_pre|counter\(1) & \clk_pre|counter\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_pre|ALT_INV_counter\(14),
	datab => \clk_pre|ALT_INV_Equal0~2_combout\,
	datac => \clk_pre|ALT_INV_counter\(1),
	datad => \clk_pre|ALT_INV_counter\(15),
	datae => \clk_pre|ALT_INV_Equal0~1_combout\,
	dataf => \clk_pre|ALT_INV_Equal0~0_combout\,
	combout => \clk_pre|Equal0~3_combout\);

-- Location: FF_X59_Y1_N2
\clk_pre|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~77_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(0));

-- Location: MLABCELL_X59_Y1_N3
\clk_pre|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~17_sumout\ = SUM(( \clk_pre|counter\(1) ) + ( GND ) + ( \clk_pre|Add0~78\ ))
-- \clk_pre|Add0~18\ = CARRY(( \clk_pre|counter\(1) ) + ( GND ) + ( \clk_pre|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_pre|ALT_INV_counter\(1),
	cin => \clk_pre|Add0~78\,
	sumout => \clk_pre|Add0~17_sumout\,
	cout => \clk_pre|Add0~18\);

-- Location: FF_X59_Y1_N5
\clk_pre|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~17_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(1));

-- Location: MLABCELL_X59_Y1_N6
\clk_pre|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~61_sumout\ = SUM(( \clk_pre|counter\(2) ) + ( GND ) + ( \clk_pre|Add0~18\ ))
-- \clk_pre|Add0~62\ = CARRY(( \clk_pre|counter\(2) ) + ( GND ) + ( \clk_pre|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_pre|ALT_INV_counter\(2),
	cin => \clk_pre|Add0~18\,
	sumout => \clk_pre|Add0~61_sumout\,
	cout => \clk_pre|Add0~62\);

-- Location: FF_X59_Y1_N8
\clk_pre|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~61_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(2));

-- Location: MLABCELL_X59_Y1_N9
\clk_pre|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~57_sumout\ = SUM(( \clk_pre|counter\(3) ) + ( GND ) + ( \clk_pre|Add0~62\ ))
-- \clk_pre|Add0~58\ = CARRY(( \clk_pre|counter\(3) ) + ( GND ) + ( \clk_pre|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_pre|ALT_INV_counter\(3),
	cin => \clk_pre|Add0~62\,
	sumout => \clk_pre|Add0~57_sumout\,
	cout => \clk_pre|Add0~58\);

-- Location: FF_X59_Y1_N11
\clk_pre|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~57_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(3));

-- Location: MLABCELL_X59_Y1_N12
\clk_pre|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~53_sumout\ = SUM(( \clk_pre|counter\(4) ) + ( GND ) + ( \clk_pre|Add0~58\ ))
-- \clk_pre|Add0~54\ = CARRY(( \clk_pre|counter\(4) ) + ( GND ) + ( \clk_pre|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_pre|ALT_INV_counter\(4),
	cin => \clk_pre|Add0~58\,
	sumout => \clk_pre|Add0~53_sumout\,
	cout => \clk_pre|Add0~54\);

-- Location: FF_X59_Y1_N14
\clk_pre|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~53_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(4));

-- Location: MLABCELL_X59_Y1_N15
\clk_pre|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~73_sumout\ = SUM(( \clk_pre|counter\(5) ) + ( GND ) + ( \clk_pre|Add0~54\ ))
-- \clk_pre|Add0~74\ = CARRY(( \clk_pre|counter\(5) ) + ( GND ) + ( \clk_pre|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_pre|ALT_INV_counter\(5),
	cin => \clk_pre|Add0~54\,
	sumout => \clk_pre|Add0~73_sumout\,
	cout => \clk_pre|Add0~74\);

-- Location: FF_X59_Y1_N17
\clk_pre|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~73_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(5));

-- Location: MLABCELL_X59_Y1_N18
\clk_pre|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~49_sumout\ = SUM(( \clk_pre|counter\(6) ) + ( GND ) + ( \clk_pre|Add0~74\ ))
-- \clk_pre|Add0~50\ = CARRY(( \clk_pre|counter\(6) ) + ( GND ) + ( \clk_pre|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_pre|ALT_INV_counter\(6),
	cin => \clk_pre|Add0~74\,
	sumout => \clk_pre|Add0~49_sumout\,
	cout => \clk_pre|Add0~50\);

-- Location: FF_X59_Y1_N20
\clk_pre|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~49_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(6));

-- Location: MLABCELL_X59_Y1_N21
\clk_pre|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~45_sumout\ = SUM(( \clk_pre|counter\(7) ) + ( GND ) + ( \clk_pre|Add0~50\ ))
-- \clk_pre|Add0~46\ = CARRY(( \clk_pre|counter\(7) ) + ( GND ) + ( \clk_pre|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_pre|ALT_INV_counter\(7),
	cin => \clk_pre|Add0~50\,
	sumout => \clk_pre|Add0~45_sumout\,
	cout => \clk_pre|Add0~46\);

-- Location: FF_X59_Y1_N23
\clk_pre|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~45_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(7));

-- Location: MLABCELL_X59_Y1_N24
\clk_pre|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~41_sumout\ = SUM(( \clk_pre|counter\(8) ) + ( GND ) + ( \clk_pre|Add0~46\ ))
-- \clk_pre|Add0~42\ = CARRY(( \clk_pre|counter\(8) ) + ( GND ) + ( \clk_pre|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_pre|ALT_INV_counter\(8),
	cin => \clk_pre|Add0~46\,
	sumout => \clk_pre|Add0~41_sumout\,
	cout => \clk_pre|Add0~42\);

-- Location: FF_X59_Y1_N26
\clk_pre|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~41_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(8));

-- Location: MLABCELL_X59_Y1_N27
\clk_pre|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~37_sumout\ = SUM(( \clk_pre|counter\(9) ) + ( GND ) + ( \clk_pre|Add0~42\ ))
-- \clk_pre|Add0~38\ = CARRY(( \clk_pre|counter\(9) ) + ( GND ) + ( \clk_pre|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_pre|ALT_INV_counter\(9),
	cin => \clk_pre|Add0~42\,
	sumout => \clk_pre|Add0~37_sumout\,
	cout => \clk_pre|Add0~38\);

-- Location: FF_X59_Y1_N29
\clk_pre|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~37_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(9));

-- Location: MLABCELL_X59_Y1_N30
\clk_pre|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~33_sumout\ = SUM(( \clk_pre|counter\(10) ) + ( GND ) + ( \clk_pre|Add0~38\ ))
-- \clk_pre|Add0~34\ = CARRY(( \clk_pre|counter\(10) ) + ( GND ) + ( \clk_pre|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_pre|ALT_INV_counter\(10),
	cin => \clk_pre|Add0~38\,
	sumout => \clk_pre|Add0~33_sumout\,
	cout => \clk_pre|Add0~34\);

-- Location: FF_X59_Y1_N32
\clk_pre|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~33_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(10));

-- Location: MLABCELL_X59_Y1_N33
\clk_pre|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~29_sumout\ = SUM(( \clk_pre|counter\(11) ) + ( GND ) + ( \clk_pre|Add0~34\ ))
-- \clk_pre|Add0~30\ = CARRY(( \clk_pre|counter\(11) ) + ( GND ) + ( \clk_pre|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_pre|ALT_INV_counter\(11),
	cin => \clk_pre|Add0~34\,
	sumout => \clk_pre|Add0~29_sumout\,
	cout => \clk_pre|Add0~30\);

-- Location: FF_X59_Y1_N35
\clk_pre|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~29_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(11));

-- Location: MLABCELL_X59_Y1_N36
\clk_pre|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~25_sumout\ = SUM(( \clk_pre|counter\(12) ) + ( GND ) + ( \clk_pre|Add0~30\ ))
-- \clk_pre|Add0~26\ = CARRY(( \clk_pre|counter\(12) ) + ( GND ) + ( \clk_pre|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_pre|ALT_INV_counter\(12),
	cin => \clk_pre|Add0~30\,
	sumout => \clk_pre|Add0~25_sumout\,
	cout => \clk_pre|Add0~26\);

-- Location: FF_X59_Y1_N38
\clk_pre|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~25_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(12));

-- Location: MLABCELL_X59_Y1_N39
\clk_pre|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~21_sumout\ = SUM(( \clk_pre|counter\(13) ) + ( GND ) + ( \clk_pre|Add0~26\ ))
-- \clk_pre|Add0~22\ = CARRY(( \clk_pre|counter\(13) ) + ( GND ) + ( \clk_pre|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_pre|ALT_INV_counter\(13),
	cin => \clk_pre|Add0~26\,
	sumout => \clk_pre|Add0~21_sumout\,
	cout => \clk_pre|Add0~22\);

-- Location: FF_X59_Y1_N41
\clk_pre|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~21_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(13));

-- Location: MLABCELL_X59_Y1_N42
\clk_pre|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~13_sumout\ = SUM(( \clk_pre|counter\(14) ) + ( GND ) + ( \clk_pre|Add0~22\ ))
-- \clk_pre|Add0~14\ = CARRY(( \clk_pre|counter\(14) ) + ( GND ) + ( \clk_pre|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_pre|ALT_INV_counter\(14),
	cin => \clk_pre|Add0~22\,
	sumout => \clk_pre|Add0~13_sumout\,
	cout => \clk_pre|Add0~14\);

-- Location: FF_X59_Y1_N44
\clk_pre|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~13_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(14));

-- Location: MLABCELL_X59_Y1_N45
\clk_pre|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~9_sumout\ = SUM(( \clk_pre|counter\(15) ) + ( GND ) + ( \clk_pre|Add0~14\ ))
-- \clk_pre|Add0~10\ = CARRY(( \clk_pre|counter\(15) ) + ( GND ) + ( \clk_pre|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_pre|ALT_INV_counter\(15),
	cin => \clk_pre|Add0~14\,
	sumout => \clk_pre|Add0~9_sumout\,
	cout => \clk_pre|Add0~10\);

-- Location: FF_X59_Y1_N47
\clk_pre|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~9_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(15));

-- Location: MLABCELL_X59_Y1_N48
\clk_pre|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~69_sumout\ = SUM(( \clk_pre|counter\(16) ) + ( GND ) + ( \clk_pre|Add0~10\ ))
-- \clk_pre|Add0~70\ = CARRY(( \clk_pre|counter\(16) ) + ( GND ) + ( \clk_pre|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_pre|ALT_INV_counter\(16),
	cin => \clk_pre|Add0~10\,
	sumout => \clk_pre|Add0~69_sumout\,
	cout => \clk_pre|Add0~70\);

-- Location: FF_X59_Y1_N50
\clk_pre|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~69_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(16));

-- Location: MLABCELL_X59_Y1_N51
\clk_pre|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~65_sumout\ = SUM(( \clk_pre|counter\(17) ) + ( GND ) + ( \clk_pre|Add0~70\ ))
-- \clk_pre|Add0~66\ = CARRY(( \clk_pre|counter\(17) ) + ( GND ) + ( \clk_pre|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_pre|ALT_INV_counter\(17),
	cin => \clk_pre|Add0~70\,
	sumout => \clk_pre|Add0~65_sumout\,
	cout => \clk_pre|Add0~66\);

-- Location: FF_X59_Y1_N53
\clk_pre|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~65_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(17));

-- Location: MLABCELL_X59_Y1_N54
\clk_pre|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~5_sumout\ = SUM(( \clk_pre|counter\(18) ) + ( GND ) + ( \clk_pre|Add0~66\ ))
-- \clk_pre|Add0~6\ = CARRY(( \clk_pre|counter\(18) ) + ( GND ) + ( \clk_pre|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clk_pre|ALT_INV_counter\(18),
	cin => \clk_pre|Add0~66\,
	sumout => \clk_pre|Add0~5_sumout\,
	cout => \clk_pre|Add0~6\);

-- Location: FF_X59_Y1_N56
\clk_pre|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_pre|Add0~5_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(18));

-- Location: MLABCELL_X59_Y1_N57
\clk_pre|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_pre|Add0~1_sumout\ = SUM(( \clk_pre|counter\(19) ) + ( GND ) + ( \clk_pre|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clk_pre|ALT_INV_counter\(19),
	cin => \clk_pre|Add0~6\,
	sumout => \clk_pre|Add0~1_sumout\);

-- Location: FF_X60_Y1_N26
\clk_pre|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \clk_pre|Add0~1_sumout\,
	sclr => \clk_pre|Equal0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_pre|counter\(19));

-- Location: IOIBUF_X22_Y0_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X60_Y1_N6
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (!\SW[0]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	combout => \process_1~0_combout\);

-- Location: FF_X60_Y1_N8
mux_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pre|counter\(19),
	d => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux_out~q\);

-- Location: LABCELL_X60_Y1_N0
\BCDC|and_out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCDC|and_out\(0) = (\BCDC|Count4_1|Q_internal\(3) & \BCDC|Count4_1|Q_internal\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BCDC|Count4_1|ALT_INV_Q_internal\(3),
	datad => \BCDC|Count4_1|ALT_INV_Q_internal\(0),
	combout => \BCDC|and_out\(0));

-- Location: LABCELL_X60_Y1_N36
\BCDC|Count4_1|Q_internal~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCDC|Count4_1|Q_internal~2_combout\ = ( !\BCDC|and_out\(0) & ( \mux_out~q\ & ( (!\KEY[1]~input_o\ & (!\SW[0]~input_o\ & (!\BCDC|Count4_1|Q_internal\(2) $ (!\BCDC|Count4_1|Q_internal\(1))))) # (\KEY[1]~input_o\ & ((!\BCDC|Count4_1|Q_internal\(2) $ 
-- (!\BCDC|Count4_1|Q_internal\(1))))) ) ) ) # ( !\BCDC|and_out\(0) & ( !\mux_out~q\ & ( (\BCDC|Count4_1|Q_internal\(2) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000000000000000000001101110100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \BCDC|Count4_1|ALT_INV_Q_internal\(2),
	datad => \BCDC|Count4_1|ALT_INV_Q_internal\(1),
	datae => \BCDC|ALT_INV_and_out\(0),
	dataf => \ALT_INV_mux_out~q\,
	combout => \BCDC|Count4_1|Q_internal~2_combout\);

-- Location: FF_X60_Y1_N5
\BCDC|Count4_1|Q_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pre|counter\(19),
	asdata => \BCDC|Count4_1|Q_internal~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCDC|Count4_1|Q_internal\(2));

-- Location: LABCELL_X60_Y1_N27
\BCDC|Count4_1|Q_internal~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCDC|Count4_1|Q_internal~3_combout\ = ( \BCDC|Count4_1|Q_internal\(2) & ( \BCDC|Count4_1|Q_internal\(0) & ( (\mux_out~q\ & (!\BCDC|Count4_1|Q_internal\(3) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\)))) ) ) ) # ( \BCDC|Count4_1|Q_internal\(2) & ( 
-- !\BCDC|Count4_1|Q_internal\(0) & ( (!\KEY[1]~input_o\ & (!\SW[0]~input_o\ & (!\mux_out~q\ $ (!\BCDC|Count4_1|Q_internal\(3))))) # (\KEY[1]~input_o\ & ((!\mux_out~q\ $ (!\BCDC|Count4_1|Q_internal\(3))))) ) ) ) # ( !\BCDC|Count4_1|Q_internal\(2) & ( 
-- !\BCDC|Count4_1|Q_internal\(0) & ( (\BCDC|Count4_1|Q_internal\(3) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011101000011011101000000000000000000000000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_mux_out~q\,
	datad => \BCDC|Count4_1|ALT_INV_Q_internal\(3),
	datae => \BCDC|Count4_1|ALT_INV_Q_internal\(2),
	dataf => \BCDC|Count4_1|ALT_INV_Q_internal\(0),
	combout => \BCDC|Count4_1|Q_internal~3_combout\);

-- Location: FF_X60_Y1_N11
\BCDC|Count4_1|Q_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pre|counter\(19),
	asdata => \BCDC|Count4_1|Q_internal~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCDC|Count4_1|Q_internal\(3));

-- Location: LABCELL_X60_Y1_N9
\BCDC|Count4_1|Q_internal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCDC|Count4_1|Q_internal~0_combout\ = ( \BCDC|Count4_1|Q_internal\(0) & ( (!\mux_out~q\ & (!\BCDC|Count4_1|Q_internal\(3) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\)))) ) ) # ( !\BCDC|Count4_1|Q_internal\(0) & ( (\mux_out~q\ & ((!\SW[0]~input_o\) # 
-- (\KEY[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110111010000000000001101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_mux_out~q\,
	datad => \BCDC|Count4_1|ALT_INV_Q_internal\(3),
	dataf => \BCDC|Count4_1|ALT_INV_Q_internal\(0),
	combout => \BCDC|Count4_1|Q_internal~0_combout\);

-- Location: FF_X60_Y1_N41
\BCDC|Count4_1|Q_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pre|counter\(19),
	asdata => \BCDC|Count4_1|Q_internal~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCDC|Count4_1|Q_internal\(0));

-- Location: LABCELL_X61_Y1_N0
\BCDC|Count4_1|Q_internal~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCDC|Count4_1|Q_internal~1_combout\ = ( \BCDC|Count4_1|Q_internal\(3) & ( \mux_out~q\ & ( (\BCDC|Count4_1|Q_internal\(1) & (!\BCDC|Count4_1|Q_internal\(0) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\)))) ) ) ) # ( !\BCDC|Count4_1|Q_internal\(3) & ( 
-- \mux_out~q\ & ( (!\KEY[1]~input_o\ & (!\SW[0]~input_o\ & (!\BCDC|Count4_1|Q_internal\(1) $ (!\BCDC|Count4_1|Q_internal\(0))))) # (\KEY[1]~input_o\ & (!\BCDC|Count4_1|Q_internal\(1) $ ((!\BCDC|Count4_1|Q_internal\(0))))) ) ) ) # ( 
-- \BCDC|Count4_1|Q_internal\(3) & ( !\mux_out~q\ & ( (\BCDC|Count4_1|Q_internal\(1) & (!\BCDC|Count4_1|Q_internal\(0) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\)))) ) ) ) # ( !\BCDC|Count4_1|Q_internal\(3) & ( !\mux_out~q\ & ( (\BCDC|Count4_1|Q_internal\(1) 
-- & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010001010100000001000001011010000100100101000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_1|ALT_INV_Q_internal\(1),
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \BCDC|Count4_1|ALT_INV_Q_internal\(0),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \BCDC|Count4_1|ALT_INV_Q_internal\(3),
	dataf => \ALT_INV_mux_out~q\,
	combout => \BCDC|Count4_1|Q_internal~1_combout\);

-- Location: FF_X60_Y1_N32
\BCDC|Count4_1|Q_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pre|counter\(19),
	asdata => \BCDC|Count4_1|Q_internal~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCDC|Count4_1|Q_internal\(1));

-- Location: LABCELL_X61_Y1_N33
\HEX_DEC0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC0|Mux6~0_combout\ = ( \BCDC|Count4_1|Q_internal\(0) & ( (\SW[0]~input_o\ & ((!\BCDC|Count4_1|Q_internal\(1) & (!\BCDC|Count4_1|Q_internal\(3) $ (\BCDC|Count4_1|Q_internal\(2)))) # (\BCDC|Count4_1|Q_internal\(1) & (\BCDC|Count4_1|Q_internal\(3) & 
-- !\BCDC|Count4_1|Q_internal\(2))))) ) ) # ( !\BCDC|Count4_1|Q_internal\(0) & ( (!\BCDC|Count4_1|Q_internal\(1) & (\SW[0]~input_o\ & \BCDC|Count4_1|Q_internal\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000001001000000100000100100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_1|ALT_INV_Q_internal\(1),
	datab => \BCDC|Count4_1|ALT_INV_Q_internal\(3),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \BCDC|Count4_1|ALT_INV_Q_internal\(2),
	dataf => \BCDC|Count4_1|ALT_INV_Q_internal\(0),
	combout => \HEX_DEC0|Mux6~0_combout\);

-- Location: LABCELL_X61_Y1_N15
\HEX_DEC0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC0|Mux5~0_combout\ = ( \BCDC|Count4_1|Q_internal\(0) & ( (\SW[0]~input_o\ & ((!\BCDC|Count4_1|Q_internal\(1) & (\BCDC|Count4_1|Q_internal\(2) & !\BCDC|Count4_1|Q_internal\(3))) # (\BCDC|Count4_1|Q_internal\(1) & ((\BCDC|Count4_1|Q_internal\(3)))))) 
-- ) ) # ( !\BCDC|Count4_1|Q_internal\(0) & ( (\BCDC|Count4_1|Q_internal\(2) & (\SW[0]~input_o\ & ((\BCDC|Count4_1|Q_internal\(3)) # (\BCDC|Count4_1|Q_internal\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000010000001100000010000001010000001000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_1|ALT_INV_Q_internal\(1),
	datab => \BCDC|Count4_1|ALT_INV_Q_internal\(2),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \BCDC|Count4_1|ALT_INV_Q_internal\(3),
	dataf => \BCDC|Count4_1|ALT_INV_Q_internal\(0),
	combout => \HEX_DEC0|Mux5~0_combout\);

-- Location: LABCELL_X61_Y1_N6
\HEX_DEC0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC0|Mux4~0_combout\ = ( \BCDC|Count4_1|Q_internal\(2) & ( \SW[0]~input_o\ & ( (\BCDC|Count4_1|Q_internal\(3) & ((!\BCDC|Count4_1|Q_internal\(0)) # (\BCDC|Count4_1|Q_internal\(1)))) ) ) ) # ( !\BCDC|Count4_1|Q_internal\(2) & ( \SW[0]~input_o\ & ( 
-- (\BCDC|Count4_1|Q_internal\(1) & (!\BCDC|Count4_1|Q_internal\(3) & !\BCDC|Count4_1|Q_internal\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_1|ALT_INV_Q_internal\(1),
	datab => \BCDC|Count4_1|ALT_INV_Q_internal\(3),
	datac => \BCDC|Count4_1|ALT_INV_Q_internal\(0),
	datae => \BCDC|Count4_1|ALT_INV_Q_internal\(2),
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \HEX_DEC0|Mux4~0_combout\);

-- Location: LABCELL_X61_Y1_N51
\HEX_DEC0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC0|Mux3~0_combout\ = ( \SW[0]~input_o\ & ( (!\BCDC|Count4_1|Q_internal\(0) & ((!\BCDC|Count4_1|Q_internal\(1) & (!\BCDC|Count4_1|Q_internal\(3) & \BCDC|Count4_1|Q_internal\(2))) # (\BCDC|Count4_1|Q_internal\(1) & (\BCDC|Count4_1|Q_internal\(3) & 
-- !\BCDC|Count4_1|Q_internal\(2))))) # (\BCDC|Count4_1|Q_internal\(0) & (!\BCDC|Count4_1|Q_internal\(1) $ (((\BCDC|Count4_1|Q_internal\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011000101001010001100010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_1|ALT_INV_Q_internal\(1),
	datab => \BCDC|Count4_1|ALT_INV_Q_internal\(3),
	datac => \BCDC|Count4_1|ALT_INV_Q_internal\(2),
	datad => \BCDC|Count4_1|ALT_INV_Q_internal\(0),
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \HEX_DEC0|Mux3~0_combout\);

-- Location: LABCELL_X61_Y1_N30
\HEX_DEC0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC0|Mux2~0_combout\ = ( \BCDC|Count4_1|Q_internal\(0) & ( (\SW[0]~input_o\ & ((!\BCDC|Count4_1|Q_internal\(3)) # ((!\BCDC|Count4_1|Q_internal\(1) & !\BCDC|Count4_1|Q_internal\(2))))) ) ) # ( !\BCDC|Count4_1|Q_internal\(0) & ( 
-- (!\BCDC|Count4_1|Q_internal\(1) & (!\BCDC|Count4_1|Q_internal\(3) & (\SW[0]~input_o\ & \BCDC|Count4_1|Q_internal\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000001110000011000000111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_1|ALT_INV_Q_internal\(1),
	datab => \BCDC|Count4_1|ALT_INV_Q_internal\(3),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \BCDC|Count4_1|ALT_INV_Q_internal\(2),
	dataf => \BCDC|Count4_1|ALT_INV_Q_internal\(0),
	combout => \HEX_DEC0|Mux2~0_combout\);

-- Location: LABCELL_X61_Y1_N12
\HEX_DEC0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC0|Mux1~0_combout\ = ( \BCDC|Count4_1|Q_internal\(0) & ( (\SW[0]~input_o\ & (!\BCDC|Count4_1|Q_internal\(3) $ (((!\BCDC|Count4_1|Q_internal\(1) & \BCDC|Count4_1|Q_internal\(2)))))) ) ) # ( !\BCDC|Count4_1|Q_internal\(0) & ( (\SW[0]~input_o\ & 
-- ((!\BCDC|Count4_1|Q_internal\(1) & (\BCDC|Count4_1|Q_internal\(2) & \BCDC|Count4_1|Q_internal\(3))) # (\BCDC|Count4_1|Q_internal\(1) & (!\BCDC|Count4_1|Q_internal\(2) & !\BCDC|Count4_1|Q_internal\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000010000000000100001000000000110100100000000011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_1|ALT_INV_Q_internal\(1),
	datab => \BCDC|Count4_1|ALT_INV_Q_internal\(2),
	datac => \BCDC|Count4_1|ALT_INV_Q_internal\(3),
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \BCDC|Count4_1|ALT_INV_Q_internal\(0),
	combout => \HEX_DEC0|Mux1~0_combout\);

-- Location: LABCELL_X61_Y1_N45
\HEX_DEC0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC0|Mux0~0_combout\ = ( \SW[0]~input_o\ & ( (!\BCDC|Count4_1|Q_internal\(3) & ((!\BCDC|Count4_1|Q_internal\(1) & (!\BCDC|Count4_1|Q_internal\(2))) # (\BCDC|Count4_1|Q_internal\(1) & (\BCDC|Count4_1|Q_internal\(2) & \BCDC|Count4_1|Q_internal\(0))))) 
-- ) ) # ( !\SW[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110000000100100001000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_1|ALT_INV_Q_internal\(1),
	datab => \BCDC|Count4_1|ALT_INV_Q_internal\(2),
	datac => \BCDC|Count4_1|ALT_INV_Q_internal\(3),
	datad => \BCDC|Count4_1|ALT_INV_Q_internal\(0),
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \HEX_DEC0|Mux0~0_combout\);

-- Location: LABCELL_X60_Y1_N51
\BCDC|Count4_2|Q_internal~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCDC|Count4_2|Q_internal~1_combout\ = ( \BCDC|Count4_2|Q_internal\(0) & ( \BCDC|Count4_2|Q_internal\(1) & ( (!\BCDC|and_out\(0) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\))) ) ) ) # ( !\BCDC|Count4_2|Q_internal\(0) & ( \BCDC|Count4_2|Q_internal\(1) & ( 
-- (!\BCDC|Count4_2|Q_internal\(3) & ((!\SW[0]~input_o\) # ((\KEY[1]~input_o\)))) # (\BCDC|Count4_2|Q_internal\(3) & (!\BCDC|and_out\(0) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\)))) ) ) ) # ( \BCDC|Count4_2|Q_internal\(0) & ( !\BCDC|Count4_2|Q_internal\(1) 
-- & ( (!\BCDC|Count4_2|Q_internal\(3) & (\BCDC|and_out\(0) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000101011001111100010101100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_2|ALT_INV_Q_internal\(3),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \BCDC|ALT_INV_and_out\(0),
	datae => \BCDC|Count4_2|ALT_INV_Q_internal\(0),
	dataf => \BCDC|Count4_2|ALT_INV_Q_internal\(1),
	combout => \BCDC|Count4_2|Q_internal~1_combout\);

-- Location: FF_X60_Y1_N50
\BCDC|Count4_2|Q_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pre|counter\(19),
	asdata => \BCDC|Count4_2|Q_internal~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCDC|Count4_2|Q_internal\(1));

-- Location: LABCELL_X60_Y1_N48
\BCDC|Count4_2|Q_internal~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCDC|Count4_2|Q_internal~2_combout\ = ( \BCDC|Count4_2|Q_internal\(1) & ( \BCDC|Count4_2|Q_internal\(2) & ( (!\BCDC|and_out\(0) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\))) ) ) ) # ( !\BCDC|Count4_2|Q_internal\(1) & ( \BCDC|Count4_2|Q_internal\(2) & ( 
-- (!\BCDC|Count4_2|Q_internal\(3) & ((!\SW[0]~input_o\) # ((\KEY[1]~input_o\)))) # (\BCDC|Count4_2|Q_internal\(3) & (!\BCDC|and_out\(0) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\)))) ) ) ) # ( \BCDC|Count4_2|Q_internal\(1) & ( !\BCDC|Count4_2|Q_internal\(2) 
-- & ( (!\BCDC|Count4_2|Q_internal\(3) & (\BCDC|and_out\(0) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000101011001000111110101100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_2|ALT_INV_Q_internal\(3),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \BCDC|ALT_INV_and_out\(0),
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \BCDC|Count4_2|ALT_INV_Q_internal\(1),
	dataf => \BCDC|Count4_2|ALT_INV_Q_internal\(2),
	combout => \BCDC|Count4_2|Q_internal~2_combout\);

-- Location: FF_X60_Y1_N44
\BCDC|Count4_2|Q_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pre|counter\(19),
	asdata => \BCDC|Count4_2|Q_internal~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCDC|Count4_2|Q_internal\(2));

-- Location: LABCELL_X61_Y1_N24
\BCDC|Count4_2|Q_internal~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCDC|Count4_2|Q_internal~3_combout\ = ( \BCDC|Count4_2|Q_internal\(2) & ( \BCDC|Count4_1|Q_internal\(0) & ( (!\SW[0]~input_o\ & ((!\BCDC|Count4_2|Q_internal\(3) $ (!\BCDC|Count4_1|Q_internal\(3))))) # (\SW[0]~input_o\ & (\KEY[1]~input_o\ & 
-- (!\BCDC|Count4_2|Q_internal\(3) $ (!\BCDC|Count4_1|Q_internal\(3))))) ) ) ) # ( !\BCDC|Count4_2|Q_internal\(2) & ( \BCDC|Count4_1|Q_internal\(0) & ( (\BCDC|Count4_2|Q_internal\(3) & (!\BCDC|Count4_1|Q_internal\(3) & ((!\SW[0]~input_o\) # 
-- (\KEY[1]~input_o\)))) ) ) ) # ( \BCDC|Count4_2|Q_internal\(2) & ( !\BCDC|Count4_1|Q_internal\(0) & ( (\BCDC|Count4_2|Q_internal\(3) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\))) ) ) ) # ( !\BCDC|Count4_2|Q_internal\(2) & ( !\BCDC|Count4_1|Q_internal\(0) & 
-- ( (\BCDC|Count4_2|Q_internal\(3) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000010110000101100001011000000000000101110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \BCDC|Count4_2|ALT_INV_Q_internal\(3),
	datad => \BCDC|Count4_1|ALT_INV_Q_internal\(3),
	datae => \BCDC|Count4_2|ALT_INV_Q_internal\(2),
	dataf => \BCDC|Count4_1|ALT_INV_Q_internal\(0),
	combout => \BCDC|Count4_2|Q_internal~3_combout\);

-- Location: FF_X60_Y1_N23
\BCDC|Count4_2|Q_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pre|counter\(19),
	asdata => \BCDC|Count4_2|Q_internal~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCDC|Count4_2|Q_internal\(3));

-- Location: LABCELL_X61_Y1_N54
\BCDC|Count4_2|Q_internal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCDC|Count4_2|Q_internal~0_combout\ = ( \BCDC|Count4_2|Q_internal\(3) & ( \BCDC|Count4_1|Q_internal\(0) & ( (!\BCDC|Count4_1|Q_internal\(3) & (\BCDC|Count4_2|Q_internal\(0) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\)))) ) ) ) # ( 
-- !\BCDC|Count4_2|Q_internal\(3) & ( \BCDC|Count4_1|Q_internal\(0) & ( (!\SW[0]~input_o\ & ((!\BCDC|Count4_1|Q_internal\(3) $ (!\BCDC|Count4_2|Q_internal\(0))))) # (\SW[0]~input_o\ & (\KEY[1]~input_o\ & (!\BCDC|Count4_1|Q_internal\(3) $ 
-- (!\BCDC|Count4_2|Q_internal\(0))))) ) ) ) # ( \BCDC|Count4_2|Q_internal\(3) & ( !\BCDC|Count4_1|Q_internal\(0) & ( (\BCDC|Count4_2|Q_internal\(0) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\))) ) ) ) # ( !\BCDC|Count4_2|Q_internal\(3) & ( 
-- !\BCDC|Count4_1|Q_internal\(0) & ( (\BCDC|Count4_2|Q_internal\(0) & ((!\SW[0]~input_o\) # (\KEY[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101100001011101100000000000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \BCDC|Count4_1|ALT_INV_Q_internal\(3),
	datad => \BCDC|Count4_2|ALT_INV_Q_internal\(0),
	datae => \BCDC|Count4_2|ALT_INV_Q_internal\(3),
	dataf => \BCDC|Count4_1|ALT_INV_Q_internal\(0),
	combout => \BCDC|Count4_2|Q_internal~0_combout\);

-- Location: FF_X60_Y1_N14
\BCDC|Count4_2|Q_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pre|counter\(19),
	asdata => \BCDC|Count4_2|Q_internal~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCDC|Count4_2|Q_internal\(0));

-- Location: LABCELL_X61_Y1_N39
\HEX_DEC1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC1|Mux6~0_combout\ = ( \BCDC|Count4_2|Q_internal\(1) & ( (\BCDC|Count4_2|Q_internal\(0) & (!\BCDC|Count4_2|Q_internal\(2) & (\SW[0]~input_o\ & \BCDC|Count4_2|Q_internal\(3)))) ) ) # ( !\BCDC|Count4_2|Q_internal\(1) & ( (\SW[0]~input_o\ & 
-- (!\BCDC|Count4_2|Q_internal\(2) $ (((!\BCDC|Count4_2|Q_internal\(0)) # (\BCDC|Count4_2|Q_internal\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000011000001100000001100000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_2|ALT_INV_Q_internal\(0),
	datab => \BCDC|Count4_2|ALT_INV_Q_internal\(2),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \BCDC|Count4_2|ALT_INV_Q_internal\(3),
	dataf => \BCDC|Count4_2|ALT_INV_Q_internal\(1),
	combout => \HEX_DEC1|Mux6~0_combout\);

-- Location: LABCELL_X60_Y1_N15
\HEX_DEC1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC1|Mux5~0_combout\ = ( \BCDC|Count4_2|Q_internal\(1) & ( (\SW[0]~input_o\ & ((!\BCDC|Count4_2|Q_internal\(0) & ((\BCDC|Count4_2|Q_internal\(2)))) # (\BCDC|Count4_2|Q_internal\(0) & (\BCDC|Count4_2|Q_internal\(3))))) ) ) # ( 
-- !\BCDC|Count4_2|Q_internal\(1) & ( (\BCDC|Count4_2|Q_internal\(2) & (\SW[0]~input_o\ & (!\BCDC|Count4_2|Q_internal\(3) $ (!\BCDC|Count4_2|Q_internal\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000000000001001000000000001101010000000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_2|ALT_INV_Q_internal\(3),
	datab => \BCDC|Count4_2|ALT_INV_Q_internal\(2),
	datac => \BCDC|Count4_2|ALT_INV_Q_internal\(0),
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \BCDC|Count4_2|ALT_INV_Q_internal\(1),
	combout => \HEX_DEC1|Mux5~0_combout\);

-- Location: LABCELL_X60_Y1_N42
\HEX_DEC1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC1|Mux4~0_combout\ = ( \BCDC|Count4_2|Q_internal\(0) & ( (\BCDC|Count4_2|Q_internal\(1) & (\SW[0]~input_o\ & (\BCDC|Count4_2|Q_internal\(3) & \BCDC|Count4_2|Q_internal\(2)))) ) ) # ( !\BCDC|Count4_2|Q_internal\(0) & ( (\SW[0]~input_o\ & 
-- ((!\BCDC|Count4_2|Q_internal\(3) & (\BCDC|Count4_2|Q_internal\(1) & !\BCDC|Count4_2|Q_internal\(2))) # (\BCDC|Count4_2|Q_internal\(3) & ((\BCDC|Count4_2|Q_internal\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000011000100000000001100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_2|ALT_INV_Q_internal\(1),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \BCDC|Count4_2|ALT_INV_Q_internal\(3),
	datad => \BCDC|Count4_2|ALT_INV_Q_internal\(2),
	dataf => \BCDC|Count4_2|ALT_INV_Q_internal\(0),
	combout => \HEX_DEC1|Mux4~0_combout\);

-- Location: LABCELL_X61_Y1_N36
\HEX_DEC1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC1|Mux3~0_combout\ = ( \SW[0]~input_o\ & ( (!\BCDC|Count4_2|Q_internal\(0) & ((!\BCDC|Count4_2|Q_internal\(2) & (\BCDC|Count4_2|Q_internal\(1) & \BCDC|Count4_2|Q_internal\(3))) # (\BCDC|Count4_2|Q_internal\(2) & (!\BCDC|Count4_2|Q_internal\(1) & 
-- !\BCDC|Count4_2|Q_internal\(3))))) # (\BCDC|Count4_2|Q_internal\(0) & (!\BCDC|Count4_2|Q_internal\(2) $ ((\BCDC|Count4_2|Q_internal\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100001010010010110000101001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_2|ALT_INV_Q_internal\(0),
	datab => \BCDC|Count4_2|ALT_INV_Q_internal\(2),
	datac => \BCDC|Count4_2|ALT_INV_Q_internal\(1),
	datad => \BCDC|Count4_2|ALT_INV_Q_internal\(3),
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \HEX_DEC1|Mux3~0_combout\);

-- Location: LABCELL_X61_Y1_N18
\HEX_DEC1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC1|Mux2~0_combout\ = ( !\BCDC|Count4_2|Q_internal\(3) & ( \BCDC|Count4_2|Q_internal\(1) & ( (\SW[0]~input_o\ & \BCDC|Count4_2|Q_internal\(0)) ) ) ) # ( \BCDC|Count4_2|Q_internal\(3) & ( !\BCDC|Count4_2|Q_internal\(1) & ( (\SW[0]~input_o\ & 
-- (!\BCDC|Count4_2|Q_internal\(2) & \BCDC|Count4_2|Q_internal\(0))) ) ) ) # ( !\BCDC|Count4_2|Q_internal\(3) & ( !\BCDC|Count4_2|Q_internal\(1) & ( (\SW[0]~input_o\ & ((\BCDC|Count4_2|Q_internal\(0)) # (\BCDC|Count4_2|Q_internal\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000000000100010000000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \BCDC|Count4_2|ALT_INV_Q_internal\(2),
	datad => \BCDC|Count4_2|ALT_INV_Q_internal\(0),
	datae => \BCDC|Count4_2|ALT_INV_Q_internal\(3),
	dataf => \BCDC|Count4_2|ALT_INV_Q_internal\(1),
	combout => \HEX_DEC1|Mux2~0_combout\);

-- Location: LABCELL_X60_Y1_N12
\HEX_DEC1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC1|Mux1~0_combout\ = ( \SW[0]~input_o\ & ( (!\BCDC|Count4_2|Q_internal\(3) & ((!\BCDC|Count4_2|Q_internal\(2) & ((\BCDC|Count4_2|Q_internal\(0)) # (\BCDC|Count4_2|Q_internal\(1)))) # (\BCDC|Count4_2|Q_internal\(2) & (\BCDC|Count4_2|Q_internal\(1) & 
-- \BCDC|Count4_2|Q_internal\(0))))) # (\BCDC|Count4_2|Q_internal\(3) & (\BCDC|Count4_2|Q_internal\(2) & (!\BCDC|Count4_2|Q_internal\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011000100110100001100010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_2|ALT_INV_Q_internal\(3),
	datab => \BCDC|Count4_2|ALT_INV_Q_internal\(2),
	datac => \BCDC|Count4_2|ALT_INV_Q_internal\(1),
	datad => \BCDC|Count4_2|ALT_INV_Q_internal\(0),
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \HEX_DEC1|Mux1~0_combout\);

-- Location: LABCELL_X60_Y1_N45
\HEX_DEC1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX_DEC1|Mux0~0_combout\ = ( \BCDC|Count4_2|Q_internal\(0) & ( (!\SW[0]~input_o\) # ((!\BCDC|Count4_2|Q_internal\(3) & (!\BCDC|Count4_2|Q_internal\(1) $ (\BCDC|Count4_2|Q_internal\(2))))) ) ) # ( !\BCDC|Count4_2|Q_internal\(0) & ( (!\SW[0]~input_o\) # 
-- ((!\BCDC|Count4_2|Q_internal\(1) & (!\BCDC|Count4_2|Q_internal\(2) & !\BCDC|Count4_2|Q_internal\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011001100111011001100110011101101110011001110110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCDC|Count4_2|ALT_INV_Q_internal\(1),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \BCDC|Count4_2|ALT_INV_Q_internal\(2),
	datad => \BCDC|Count4_2|ALT_INV_Q_internal\(3),
	dataf => \BCDC|Count4_2|ALT_INV_Q_internal\(0),
	combout => \HEX_DEC1|Mux0~0_combout\);

-- Location: LABCELL_X16_Y38_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


