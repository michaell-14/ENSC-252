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

-- DATE "11/02/2024 22:25:49"

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

ENTITY 	top_incr IS
    PORT (
	SW : IN std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top_incr;

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
-- KEY[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_incr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Fcount_0|Add0~1_sumout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Fcount_0|Add0~2\ : std_logic;
SIGNAL \Fcount_0|Add0~5_sumout\ : std_logic;
SIGNAL \Fcount_0|Add0~6\ : std_logic;
SIGNAL \Fcount_0|Add0~9_sumout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Fcount_0|Add0~10\ : std_logic;
SIGNAL \Fcount_0|Add0~13_sumout\ : std_logic;
SIGNAL \DispHEX_0|SegDecoder0|Mux6~0_combout\ : std_logic;
SIGNAL \DispHEX_0|SegDecoder0|Mux5~0_combout\ : std_logic;
SIGNAL \DispHEX_0|SegDecoder0|Mux4~0_combout\ : std_logic;
SIGNAL \DispHEX_0|SegDecoder0|Mux3~0_combout\ : std_logic;
SIGNAL \DispHEX_0|SegDecoder0|Mux2~0_combout\ : std_logic;
SIGNAL \DispHEX_0|SegDecoder0|Mux1~0_combout\ : std_logic;
SIGNAL \DispHEX_0|SegDecoder0|Mux0~0_combout\ : std_logic;
SIGNAL \Fcount_0|Add0~14\ : std_logic;
SIGNAL \Fcount_0|Add0~21_sumout\ : std_logic;
SIGNAL \Fcount_0|Add0~22\ : std_logic;
SIGNAL \Fcount_0|Add0~17_sumout\ : std_logic;
SIGNAL \DispHEX_0|SegDecoder1|Mux1~0_combout\ : std_logic;
SIGNAL \DispHEX_0|SegDecoder1|Mux1~1_combout\ : std_logic;
SIGNAL \DispHEX_0|SegDecoder1|Mux1~2_combout\ : std_logic;
SIGNAL \Fcount_0|acc\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \Fcount_0|ALT_INV_acc\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DispHEX_0|SegDecoder0|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\Fcount_0|ALT_INV_acc\(4) <= NOT \Fcount_0|acc\(4);
\Fcount_0|ALT_INV_acc\(5) <= NOT \Fcount_0|acc\(5);
\DispHEX_0|SegDecoder0|ALT_INV_Mux0~0_combout\ <= NOT \DispHEX_0|SegDecoder0|Mux0~0_combout\;
\Fcount_0|ALT_INV_acc\(3) <= NOT \Fcount_0|acc\(3);
\Fcount_0|ALT_INV_acc\(2) <= NOT \Fcount_0|acc\(2);
\Fcount_0|ALT_INV_acc\(1) <= NOT \Fcount_0|acc\(1);
\Fcount_0|ALT_INV_acc\(0) <= NOT \Fcount_0|acc\(0);

-- Location: IOOBUF_X60_Y0_N19
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DispHEX_0|SegDecoder0|Mux6~0_combout\,
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
	i => \DispHEX_0|SegDecoder0|Mux5~0_combout\,
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
	i => \DispHEX_0|SegDecoder0|Mux4~0_combout\,
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
	i => \DispHEX_0|SegDecoder0|Mux3~0_combout\,
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
	i => \DispHEX_0|SegDecoder0|Mux2~0_combout\,
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
	i => \DispHEX_0|SegDecoder0|Mux1~0_combout\,
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
	i => \DispHEX_0|SegDecoder0|ALT_INV_Mux0~0_combout\,
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
	i => \DispHEX_0|SegDecoder1|Mux1~0_combout\,
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
	i => GND,
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
	i => \DispHEX_0|SegDecoder1|Mux1~1_combout\,
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
	i => \DispHEX_0|SegDecoder1|Mux1~0_combout\,
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
	i => \Fcount_0|acc\(4),
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
	i => \DispHEX_0|SegDecoder1|Mux1~2_combout\,
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
	i => \Fcount_0|ALT_INV_acc\(5),
	devoe => ww_devoe,
	o => ww_HEX1(6));

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

-- Location: CLKCTRL_G4
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y21_N38
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

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

-- Location: LABCELL_X57_Y1_N0
\Fcount_0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fcount_0|Add0~1_sumout\ = SUM(( \Fcount_0|acc\(0) ) + ( \SW[0]~input_o\ ) + ( !VCC ))
-- \Fcount_0|Add0~2\ = CARRY(( \Fcount_0|acc\(0) ) + ( \SW[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \Fcount_0|ALT_INV_acc\(0),
	cin => GND,
	sumout => \Fcount_0|Add0~1_sumout\,
	cout => \Fcount_0|Add0~2\);

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

-- Location: FF_X57_Y1_N2
\Fcount_0|acc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Fcount_0|Add0~1_sumout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fcount_0|acc\(0));

-- Location: LABCELL_X57_Y1_N3
\Fcount_0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fcount_0|Add0~5_sumout\ = SUM(( \Fcount_0|acc\(1) ) + ( \SW[1]~input_o\ ) + ( \Fcount_0|Add0~2\ ))
-- \Fcount_0|Add0~6\ = CARRY(( \Fcount_0|acc\(1) ) + ( \SW[1]~input_o\ ) + ( \Fcount_0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datad => \Fcount_0|ALT_INV_acc\(1),
	cin => \Fcount_0|Add0~2\,
	sumout => \Fcount_0|Add0~5_sumout\,
	cout => \Fcount_0|Add0~6\);

-- Location: FF_X57_Y1_N5
\Fcount_0|acc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Fcount_0|Add0~5_sumout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fcount_0|acc\(1));

-- Location: LABCELL_X57_Y1_N6
\Fcount_0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fcount_0|Add0~9_sumout\ = SUM(( \Fcount_0|acc\(2) ) + ( \SW[2]~input_o\ ) + ( \Fcount_0|Add0~6\ ))
-- \Fcount_0|Add0~10\ = CARRY(( \Fcount_0|acc\(2) ) + ( \SW[2]~input_o\ ) + ( \Fcount_0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \Fcount_0|ALT_INV_acc\(2),
	cin => \Fcount_0|Add0~6\,
	sumout => \Fcount_0|Add0~9_sumout\,
	cout => \Fcount_0|Add0~10\);

-- Location: FF_X57_Y1_N8
\Fcount_0|acc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Fcount_0|Add0~9_sumout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fcount_0|acc\(2));

-- Location: IOIBUF_X89_Y25_N55
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X57_Y1_N9
\Fcount_0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fcount_0|Add0~13_sumout\ = SUM(( \Fcount_0|acc\(3) ) + ( \SW[3]~input_o\ ) + ( \Fcount_0|Add0~10\ ))
-- \Fcount_0|Add0~14\ = CARRY(( \Fcount_0|acc\(3) ) + ( \SW[3]~input_o\ ) + ( \Fcount_0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \Fcount_0|ALT_INV_acc\(3),
	cin => \Fcount_0|Add0~10\,
	sumout => \Fcount_0|Add0~13_sumout\,
	cout => \Fcount_0|Add0~14\);

-- Location: FF_X57_Y1_N11
\Fcount_0|acc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Fcount_0|Add0~13_sumout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fcount_0|acc\(3));

-- Location: LABCELL_X57_Y1_N30
\DispHEX_0|SegDecoder0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DispHEX_0|SegDecoder0|Mux6~0_combout\ = ( \Fcount_0|acc\(1) & ( \Fcount_0|acc\(3) & ( (!\Fcount_0|acc\(2) & \Fcount_0|acc\(0)) ) ) ) # ( !\Fcount_0|acc\(1) & ( \Fcount_0|acc\(3) & ( \Fcount_0|acc\(2) ) ) ) # ( !\Fcount_0|acc\(1) & ( !\Fcount_0|acc\(3) & 
-- ( !\Fcount_0|acc\(2) $ (!\Fcount_0|acc\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000000110011001100110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Fcount_0|ALT_INV_acc\(2),
	datac => \Fcount_0|ALT_INV_acc\(0),
	datae => \Fcount_0|ALT_INV_acc\(1),
	dataf => \Fcount_0|ALT_INV_acc\(3),
	combout => \DispHEX_0|SegDecoder0|Mux6~0_combout\);

-- Location: LABCELL_X57_Y1_N51
\DispHEX_0|SegDecoder0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DispHEX_0|SegDecoder0|Mux5~0_combout\ = ( \Fcount_0|acc\(1) & ( \Fcount_0|acc\(3) & ( (\Fcount_0|acc\(2)) # (\Fcount_0|acc\(0)) ) ) ) # ( !\Fcount_0|acc\(1) & ( \Fcount_0|acc\(3) & ( (!\Fcount_0|acc\(0) & \Fcount_0|acc\(2)) ) ) ) # ( \Fcount_0|acc\(1) & 
-- ( !\Fcount_0|acc\(3) & ( (!\Fcount_0|acc\(0) & \Fcount_0|acc\(2)) ) ) ) # ( !\Fcount_0|acc\(1) & ( !\Fcount_0|acc\(3) & ( (\Fcount_0|acc\(0) & \Fcount_0|acc\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Fcount_0|ALT_INV_acc\(0),
	datac => \Fcount_0|ALT_INV_acc\(2),
	datae => \Fcount_0|ALT_INV_acc\(1),
	dataf => \Fcount_0|ALT_INV_acc\(3),
	combout => \DispHEX_0|SegDecoder0|Mux5~0_combout\);

-- Location: LABCELL_X57_Y1_N18
\DispHEX_0|SegDecoder0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DispHEX_0|SegDecoder0|Mux4~0_combout\ = ( \Fcount_0|acc\(1) & ( \Fcount_0|acc\(3) & ( \Fcount_0|acc\(2) ) ) ) # ( !\Fcount_0|acc\(1) & ( \Fcount_0|acc\(3) & ( (\Fcount_0|acc\(2) & !\Fcount_0|acc\(0)) ) ) ) # ( \Fcount_0|acc\(1) & ( !\Fcount_0|acc\(3) & ( 
-- (!\Fcount_0|acc\(2) & !\Fcount_0|acc\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000110000001100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Fcount_0|ALT_INV_acc\(2),
	datac => \Fcount_0|ALT_INV_acc\(0),
	datae => \Fcount_0|ALT_INV_acc\(1),
	dataf => \Fcount_0|ALT_INV_acc\(3),
	combout => \DispHEX_0|SegDecoder0|Mux4~0_combout\);

-- Location: LABCELL_X57_Y1_N39
\DispHEX_0|SegDecoder0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DispHEX_0|SegDecoder0|Mux3~0_combout\ = ( \Fcount_0|acc\(1) & ( \Fcount_0|acc\(3) & ( !\Fcount_0|acc\(0) $ (\Fcount_0|acc\(2)) ) ) ) # ( !\Fcount_0|acc\(1) & ( \Fcount_0|acc\(3) & ( (\Fcount_0|acc\(0) & !\Fcount_0|acc\(2)) ) ) ) # ( \Fcount_0|acc\(1) & ( 
-- !\Fcount_0|acc\(3) & ( (\Fcount_0|acc\(0) & \Fcount_0|acc\(2)) ) ) ) # ( !\Fcount_0|acc\(1) & ( !\Fcount_0|acc\(3) & ( !\Fcount_0|acc\(0) $ (!\Fcount_0|acc\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000001010000010101010000010100001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Fcount_0|ALT_INV_acc\(0),
	datac => \Fcount_0|ALT_INV_acc\(2),
	datae => \Fcount_0|ALT_INV_acc\(1),
	dataf => \Fcount_0|ALT_INV_acc\(3),
	combout => \DispHEX_0|SegDecoder0|Mux3~0_combout\);

-- Location: LABCELL_X57_Y1_N54
\DispHEX_0|SegDecoder0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DispHEX_0|SegDecoder0|Mux2~0_combout\ = ( \Fcount_0|acc\(2) & ( (!\Fcount_0|acc\(3) & ((!\Fcount_0|acc\(1)) # (\Fcount_0|acc\(0)))) ) ) # ( !\Fcount_0|acc\(2) & ( (\Fcount_0|acc\(0) & ((!\Fcount_0|acc\(1)) # (!\Fcount_0|acc\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Fcount_0|ALT_INV_acc\(1),
	datab => \Fcount_0|ALT_INV_acc\(3),
	datac => \Fcount_0|ALT_INV_acc\(0),
	dataf => \Fcount_0|ALT_INV_acc\(2),
	combout => \DispHEX_0|SegDecoder0|Mux2~0_combout\);

-- Location: LABCELL_X57_Y1_N57
\DispHEX_0|SegDecoder0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DispHEX_0|SegDecoder0|Mux1~0_combout\ = ( \Fcount_0|acc\(2) & ( (!\Fcount_0|acc\(1) & (\Fcount_0|acc\(3))) # (\Fcount_0|acc\(1) & (!\Fcount_0|acc\(3) & \Fcount_0|acc\(0))) ) ) # ( !\Fcount_0|acc\(2) & ( (!\Fcount_0|acc\(3) & ((\Fcount_0|acc\(0)) # 
-- (\Fcount_0|acc\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001001100110000100010011001100010001001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Fcount_0|ALT_INV_acc\(1),
	datab => \Fcount_0|ALT_INV_acc\(3),
	datad => \Fcount_0|ALT_INV_acc\(0),
	dataf => \Fcount_0|ALT_INV_acc\(2),
	combout => \DispHEX_0|SegDecoder0|Mux1~0_combout\);

-- Location: LABCELL_X57_Y1_N24
\DispHEX_0|SegDecoder0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DispHEX_0|SegDecoder0|Mux0~0_combout\ = ( \Fcount_0|acc\(3) ) # ( !\Fcount_0|acc\(3) & ( (!\Fcount_0|acc\(1) & (\Fcount_0|acc\(2))) # (\Fcount_0|acc\(1) & ((!\Fcount_0|acc\(2)) # (!\Fcount_0|acc\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011001110110011101100111011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Fcount_0|ALT_INV_acc\(1),
	datab => \Fcount_0|ALT_INV_acc\(2),
	datac => \Fcount_0|ALT_INV_acc\(0),
	dataf => \Fcount_0|ALT_INV_acc\(3),
	combout => \DispHEX_0|SegDecoder0|Mux0~0_combout\);

-- Location: LABCELL_X57_Y1_N12
\Fcount_0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fcount_0|Add0~21_sumout\ = SUM(( \Fcount_0|acc\(4) ) + ( GND ) + ( \Fcount_0|Add0~14\ ))
-- \Fcount_0|Add0~22\ = CARRY(( \Fcount_0|acc\(4) ) + ( GND ) + ( \Fcount_0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Fcount_0|ALT_INV_acc\(4),
	cin => \Fcount_0|Add0~14\,
	sumout => \Fcount_0|Add0~21_sumout\,
	cout => \Fcount_0|Add0~22\);

-- Location: FF_X57_Y1_N14
\Fcount_0|acc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Fcount_0|Add0~21_sumout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fcount_0|acc\(4));

-- Location: LABCELL_X57_Y1_N15
\Fcount_0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Fcount_0|Add0~17_sumout\ = SUM(( \Fcount_0|acc\(5) ) + ( GND ) + ( \Fcount_0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Fcount_0|ALT_INV_acc\(5),
	cin => \Fcount_0|Add0~22\,
	sumout => \Fcount_0|Add0~17_sumout\);

-- Location: FF_X57_Y1_N17
\Fcount_0|acc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Fcount_0|Add0~17_sumout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Fcount_0|acc\(5));

-- Location: LABCELL_X57_Y1_N27
\DispHEX_0|SegDecoder1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DispHEX_0|SegDecoder1|Mux1~0_combout\ = ( \Fcount_0|acc\(4) & ( !\Fcount_0|acc\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Fcount_0|ALT_INV_acc\(5),
	dataf => \Fcount_0|ALT_INV_acc\(4),
	combout => \DispHEX_0|SegDecoder1|Mux1~0_combout\);

-- Location: LABCELL_X57_Y1_N42
\DispHEX_0|SegDecoder1|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DispHEX_0|SegDecoder1|Mux1~1_combout\ = ( \Fcount_0|acc\(5) & ( !\Fcount_0|acc\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Fcount_0|ALT_INV_acc\(4),
	dataf => \Fcount_0|ALT_INV_acc\(5),
	combout => \DispHEX_0|SegDecoder1|Mux1~1_combout\);

-- Location: LABCELL_X57_Y1_N45
\DispHEX_0|SegDecoder1|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DispHEX_0|SegDecoder1|Mux1~2_combout\ = ( \Fcount_0|acc\(5) ) # ( !\Fcount_0|acc\(5) & ( \Fcount_0|acc\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Fcount_0|ALT_INV_acc\(4),
	dataf => \Fcount_0|ALT_INV_acc\(5),
	combout => \DispHEX_0|SegDecoder1|Mux1~2_combout\);

-- Location: LABCELL_X83_Y8_N3
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


