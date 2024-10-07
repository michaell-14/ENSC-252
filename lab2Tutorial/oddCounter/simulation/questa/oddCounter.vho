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

-- DATE "10/07/2024 09:45:48"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	oddCounter IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	E : INOUT std_logic;
	F : INOUT std_logic;
	G : OUT std_logic
	);
END oddCounter;

-- Design Ports Information
-- G	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF oddCounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \F~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \E~2_combout\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \F~2_combout\ : std_logic;
SIGNAL \G~0_combout\ : std_logic;
SIGNAL \ALT_INV_d~input_o\ : std_logic;
SIGNAL \ALT_INV_c~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
G <= ww_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_d~input_o\ <= NOT \d~input_o\;
\ALT_INV_c~input_o\ <= NOT \c~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;

-- Location: IOOBUF_X89_Y23_N56
\G~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \G~0_combout\,
	devoe => ww_devoe,
	o => ww_G);

-- Location: IOOBUF_X89_Y23_N5
\E~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \E~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => E);

-- Location: IOOBUF_X89_Y20_N96
\F~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \F~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => F);

-- Location: IOIBUF_X89_Y21_N4
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LABCELL_X88_Y21_N36
\E~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \E~2_combout\ = ( \a~input_o\ & ( !\b~input_o\ ) ) # ( !\a~input_o\ & ( \b~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_b~input_o\,
	datae => \ALT_INV_a~input_o\,
	combout => \E~2_combout\);

-- Location: IOIBUF_X89_Y21_N21
\d~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\c~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: LABCELL_X88_Y21_N42
\F~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \F~2_combout\ = ( !\d~input_o\ & ( \c~input_o\ ) ) # ( \d~input_o\ & ( !\c~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_d~input_o\,
	dataf => \ALT_INV_c~input_o\,
	combout => \F~2_combout\);

-- Location: LABCELL_X88_Y21_N3
\G~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G~0_combout\ = ( \d~input_o\ & ( !\b~input_o\ $ (!\c~input_o\ $ (!\a~input_o\)) ) ) # ( !\d~input_o\ & ( !\b~input_o\ $ (!\c~input_o\ $ (\a~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101101001010101101001011010101001011010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b~input_o\,
	datac => \ALT_INV_c~input_o\,
	datad => \ALT_INV_a~input_o\,
	datae => \ALT_INV_d~input_o\,
	combout => \G~0_combout\);

-- Location: IOIBUF_X89_Y23_N4
\E~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => E,
	o => \E~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\F~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => F,
	o => \F~input_o\);

-- Location: LABCELL_X11_Y47_N3
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


