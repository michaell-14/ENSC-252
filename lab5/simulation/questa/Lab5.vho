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

-- DATE "11/02/2024 15:30:50"

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

ENTITY 	incr IS
    PORT (
	clk : IN std_logic;
	f : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END incr;

-- Design Ports Information
-- f[0]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[3]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[4]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF incr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_f : std_logic_vector(5 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \accumulator[0]~5_combout\ : std_logic;
SIGNAL \accumulator[0]~DUPLICATE_q\ : std_logic;
SIGNAL \accumulator[1]~0_combout\ : std_logic;
SIGNAL \accumulator[2]~1_combout\ : std_logic;
SIGNAL \accumulator[1]~DUPLICATE_q\ : std_logic;
SIGNAL \accumulator[3]~2_combout\ : std_logic;
SIGNAL \accumulator[4]~3_combout\ : std_logic;
SIGNAL \accumulator[5]~4_combout\ : std_logic;
SIGNAL accumulator : std_logic_vector(5 DOWNTO 0);
SIGNAL ALT_INV_accumulator : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_accumulator[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_accumulator[1]~DUPLICATE_q\ : std_logic;

BEGIN

ww_clk <= clk;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_accumulator(5) <= NOT accumulator(5);
ALT_INV_accumulator(4) <= NOT accumulator(4);
ALT_INV_accumulator(3) <= NOT accumulator(3);
ALT_INV_accumulator(2) <= NOT accumulator(2);
ALT_INV_accumulator(1) <= NOT accumulator(1);
ALT_INV_accumulator(0) <= NOT accumulator(0);
\ALT_INV_accumulator[0]~DUPLICATE_q\ <= NOT \accumulator[0]~DUPLICATE_q\;
\ALT_INV_accumulator[1]~DUPLICATE_q\ <= NOT \accumulator[1]~DUPLICATE_q\;

-- Location: IOOBUF_X74_Y0_N76
\f[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => accumulator(0),
	devoe => ww_devoe,
	o => ww_f(0));

-- Location: IOOBUF_X72_Y0_N19
\f[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => accumulator(1),
	devoe => ww_devoe,
	o => ww_f(1));

-- Location: IOOBUF_X72_Y0_N53
\f[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => accumulator(2),
	devoe => ww_devoe,
	o => ww_f(2));

-- Location: IOOBUF_X72_Y0_N2
\f[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => accumulator(3),
	devoe => ww_devoe,
	o => ww_f(3));

-- Location: IOOBUF_X72_Y0_N36
\f[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => accumulator(4),
	devoe => ww_devoe,
	o => ww_f(4));

-- Location: IOOBUF_X74_Y0_N42
\f[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => accumulator(5),
	devoe => ww_devoe,
	o => ww_f(5));

-- Location: IOIBUF_X89_Y23_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: MLABCELL_X72_Y1_N12
\accumulator[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulator[0]~5_combout\ = ( !accumulator(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_accumulator(0),
	combout => \accumulator[0]~5_combout\);

-- Location: FF_X72_Y1_N14
\accumulator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulator[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(0));

-- Location: FF_X72_Y1_N13
\accumulator[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulator[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator[0]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y1_N21
\accumulator[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulator[1]~0_combout\ = ( !accumulator(1) & ( \accumulator[0]~DUPLICATE_q\ ) ) # ( accumulator(1) & ( !\accumulator[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_accumulator(1),
	dataf => \ALT_INV_accumulator[0]~DUPLICATE_q\,
	combout => \accumulator[1]~0_combout\);

-- Location: FF_X72_Y1_N23
\accumulator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(1));

-- Location: MLABCELL_X72_Y1_N42
\accumulator[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulator[2]~1_combout\ = ( accumulator(2) & ( \accumulator[0]~DUPLICATE_q\ & ( !accumulator(1) ) ) ) # ( !accumulator(2) & ( \accumulator[0]~DUPLICATE_q\ & ( accumulator(1) ) ) ) # ( accumulator(2) & ( !\accumulator[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_accumulator(1),
	datae => ALT_INV_accumulator(2),
	dataf => \ALT_INV_accumulator[0]~DUPLICATE_q\,
	combout => \accumulator[2]~1_combout\);

-- Location: FF_X72_Y1_N44
\accumulator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulator[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(2));

-- Location: FF_X72_Y1_N22
\accumulator[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \accumulator[1]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y1_N51
\accumulator[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulator[3]~2_combout\ = ( accumulator(3) & ( \accumulator[1]~DUPLICATE_q\ & ( (!accumulator(2)) # (!accumulator(0)) ) ) ) # ( !accumulator(3) & ( \accumulator[1]~DUPLICATE_q\ & ( (accumulator(2) & accumulator(0)) ) ) ) # ( accumulator(3) & ( 
-- !\accumulator[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_accumulator(2),
	datac => ALT_INV_accumulator(0),
	datae => ALT_INV_accumulator(3),
	dataf => \ALT_INV_accumulator[1]~DUPLICATE_q\,
	combout => \accumulator[3]~2_combout\);

-- Location: FF_X72_Y1_N53
\accumulator[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulator[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(3));

-- Location: MLABCELL_X72_Y1_N30
\accumulator[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulator[4]~3_combout\ = ( accumulator(4) & ( \accumulator[1]~DUPLICATE_q\ & ( (!accumulator(2)) # ((!accumulator(3)) # (!accumulator(0))) ) ) ) # ( !accumulator(4) & ( \accumulator[1]~DUPLICATE_q\ & ( (accumulator(2) & (accumulator(3) & 
-- accumulator(0))) ) ) ) # ( accumulator(4) & ( !\accumulator[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_accumulator(2),
	datac => ALT_INV_accumulator(3),
	datad => ALT_INV_accumulator(0),
	datae => ALT_INV_accumulator(4),
	dataf => \ALT_INV_accumulator[1]~DUPLICATE_q\,
	combout => \accumulator[4]~3_combout\);

-- Location: FF_X72_Y1_N32
\accumulator[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulator[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(4));

-- Location: MLABCELL_X72_Y1_N54
\accumulator[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \accumulator[5]~4_combout\ = ( accumulator(5) & ( \accumulator[0]~DUPLICATE_q\ & ( (!accumulator(3)) # ((!accumulator(4)) # ((!accumulator(1)) # (!accumulator(2)))) ) ) ) # ( !accumulator(5) & ( \accumulator[0]~DUPLICATE_q\ & ( (accumulator(3) & 
-- (accumulator(4) & (accumulator(1) & accumulator(2)))) ) ) ) # ( accumulator(5) & ( !\accumulator[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_accumulator(3),
	datab => ALT_INV_accumulator(4),
	datac => ALT_INV_accumulator(1),
	datad => ALT_INV_accumulator(2),
	datae => ALT_INV_accumulator(5),
	dataf => \ALT_INV_accumulator[0]~DUPLICATE_q\,
	combout => \accumulator[5]~4_combout\);

-- Location: FF_X72_Y1_N55
\accumulator[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \accumulator[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accumulator(5));

-- Location: LABCELL_X40_Y37_N0
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


