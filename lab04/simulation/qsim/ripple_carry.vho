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

-- DATE "10/26/2024 21:47:12"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ripple_carry IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	Cin : IN std_logic;
	s : BUFFER std_logic_vector(3 DOWNTO 0);
	Cout : BUFFER std_logic
	);
END ripple_carry;

-- Design Ports Information
-- s[0]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ripple_carry IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \FA_0|sum~combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \FA_1|sum~combout\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \FA_1|carry~0_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \FA_2|sum~combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \FA_3|sum~combout\ : std_logic;
SIGNAL \FA_3|carry~0_combout\ : std_logic;
SIGNAL \FA_1|ALT_INV_carry~0_combout\ : std_logic;
SIGNAL \ALT_INV_x[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;
SIGNAL \ALT_INV_x[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[3]~input_o\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_Cin <= Cin;
s <= ww_s;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FA_1|ALT_INV_carry~0_combout\ <= NOT \FA_1|carry~0_combout\;
\ALT_INV_x[0]~input_o\ <= NOT \x[0]~input_o\;
\ALT_INV_y[0]~input_o\ <= NOT \y[0]~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;
\ALT_INV_x[1]~input_o\ <= NOT \x[1]~input_o\;
\ALT_INV_y[1]~input_o\ <= NOT \y[1]~input_o\;
\ALT_INV_x[2]~input_o\ <= NOT \x[2]~input_o\;
\ALT_INV_y[2]~input_o\ <= NOT \y[2]~input_o\;
\ALT_INV_x[3]~input_o\ <= NOT \x[3]~input_o\;
\ALT_INV_y[3]~input_o\ <= NOT \y[3]~input_o\;

-- Location: IOOBUF_X89_Y16_N22
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_0|sum~combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X89_Y20_N62
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_1|sum~combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X89_Y16_N56
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_2|sum~combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X89_Y20_N79
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_3|sum~combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOOBUF_X89_Y16_N39
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA_3|carry~0_combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOIBUF_X89_Y13_N21
\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X89_Y13_N55
\y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X89_Y15_N4
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LABCELL_X88_Y16_N0
\FA_0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA_0|sum~combout\ = ( \y[0]~input_o\ & ( \Cin~input_o\ & ( \x[0]~input_o\ ) ) ) # ( !\y[0]~input_o\ & ( \Cin~input_o\ & ( !\x[0]~input_o\ ) ) ) # ( \y[0]~input_o\ & ( !\Cin~input_o\ & ( !\x[0]~input_o\ ) ) ) # ( !\y[0]~input_o\ & ( !\Cin~input_o\ & ( 
-- \x[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x[0]~input_o\,
	datae => \ALT_INV_y[0]~input_o\,
	dataf => \ALT_INV_Cin~input_o\,
	combout => \FA_0|sum~combout\);

-- Location: IOIBUF_X89_Y13_N38
\y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X89_Y15_N38
\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: LABCELL_X88_Y16_N9
\FA_1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA_1|sum~combout\ = ( \y[1]~input_o\ & ( \x[1]~input_o\ & ( (!\x[0]~input_o\ & (\Cin~input_o\ & \y[0]~input_o\)) # (\x[0]~input_o\ & ((\y[0]~input_o\) # (\Cin~input_o\))) ) ) ) # ( !\y[1]~input_o\ & ( \x[1]~input_o\ & ( (!\x[0]~input_o\ & 
-- ((!\Cin~input_o\) # (!\y[0]~input_o\))) # (\x[0]~input_o\ & (!\Cin~input_o\ & !\y[0]~input_o\)) ) ) ) # ( \y[1]~input_o\ & ( !\x[1]~input_o\ & ( (!\x[0]~input_o\ & ((!\Cin~input_o\) # (!\y[0]~input_o\))) # (\x[0]~input_o\ & (!\Cin~input_o\ & 
-- !\y[0]~input_o\)) ) ) ) # ( !\y[1]~input_o\ & ( !\x[1]~input_o\ & ( (!\x[0]~input_o\ & (\Cin~input_o\ & \y[0]~input_o\)) # (\x[0]~input_o\ & ((\y[0]~input_o\) # (\Cin~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111111110101010000011111010101000000000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[0]~input_o\,
	datac => \ALT_INV_Cin~input_o\,
	datad => \ALT_INV_y[0]~input_o\,
	datae => \ALT_INV_y[1]~input_o\,
	dataf => \ALT_INV_x[1]~input_o\,
	combout => \FA_1|sum~combout\);

-- Location: IOIBUF_X89_Y13_N4
\y[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LABCELL_X88_Y16_N42
\FA_1|carry~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA_1|carry~0_combout\ = ( \y[1]~input_o\ & ( \x[1]~input_o\ ) ) # ( !\y[1]~input_o\ & ( \x[1]~input_o\ & ( (!\y[0]~input_o\ & (\Cin~input_o\ & \x[0]~input_o\)) # (\y[0]~input_o\ & ((\x[0]~input_o\) # (\Cin~input_o\))) ) ) ) # ( \y[1]~input_o\ & ( 
-- !\x[1]~input_o\ & ( (!\y[0]~input_o\ & (\Cin~input_o\ & \x[0]~input_o\)) # (\y[0]~input_o\ & ((\x[0]~input_o\) # (\Cin~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100010111000101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[0]~input_o\,
	datab => \ALT_INV_Cin~input_o\,
	datac => \ALT_INV_x[0]~input_o\,
	datae => \ALT_INV_y[1]~input_o\,
	dataf => \ALT_INV_x[1]~input_o\,
	combout => \FA_1|carry~0_combout\);

-- Location: IOIBUF_X89_Y15_N21
\x[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: LABCELL_X88_Y16_N51
\FA_2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA_2|sum~combout\ = ( \x[2]~input_o\ & ( !\y[2]~input_o\ $ (\FA_1|carry~0_combout\) ) ) # ( !\x[2]~input_o\ & ( !\y[2]~input_o\ $ (!\FA_1|carry~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_y[2]~input_o\,
	datac => \FA_1|ALT_INV_carry~0_combout\,
	dataf => \ALT_INV_x[2]~input_o\,
	combout => \FA_2|sum~combout\);

-- Location: IOIBUF_X89_Y15_N55
\x[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X89_Y16_N4
\y[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LABCELL_X88_Y16_N54
\FA_3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA_3|sum~combout\ = ( \x[3]~input_o\ & ( \y[3]~input_o\ & ( (!\FA_1|carry~0_combout\ & (\x[2]~input_o\ & \y[2]~input_o\)) # (\FA_1|carry~0_combout\ & ((\y[2]~input_o\) # (\x[2]~input_o\))) ) ) ) # ( !\x[3]~input_o\ & ( \y[3]~input_o\ & ( 
-- (!\FA_1|carry~0_combout\ & ((!\x[2]~input_o\) # (!\y[2]~input_o\))) # (\FA_1|carry~0_combout\ & (!\x[2]~input_o\ & !\y[2]~input_o\)) ) ) ) # ( \x[3]~input_o\ & ( !\y[3]~input_o\ & ( (!\FA_1|carry~0_combout\ & ((!\x[2]~input_o\) # (!\y[2]~input_o\))) # 
-- (\FA_1|carry~0_combout\ & (!\x[2]~input_o\ & !\y[2]~input_o\)) ) ) ) # ( !\x[3]~input_o\ & ( !\y[3]~input_o\ & ( (!\FA_1|carry~0_combout\ & (\x[2]~input_o\ & \y[2]~input_o\)) # (\FA_1|carry~0_combout\ & ((\y[2]~input_o\) # (\x[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111111111001100000011111100110000000000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FA_1|ALT_INV_carry~0_combout\,
	datac => \ALT_INV_x[2]~input_o\,
	datad => \ALT_INV_y[2]~input_o\,
	datae => \ALT_INV_x[3]~input_o\,
	dataf => \ALT_INV_y[3]~input_o\,
	combout => \FA_3|sum~combout\);

-- Location: LABCELL_X88_Y16_N33
\FA_3|carry~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA_3|carry~0_combout\ = ( \x[3]~input_o\ & ( \y[3]~input_o\ ) ) # ( !\x[3]~input_o\ & ( \y[3]~input_o\ & ( (!\x[2]~input_o\ & (\y[2]~input_o\ & \FA_1|carry~0_combout\)) # (\x[2]~input_o\ & ((\FA_1|carry~0_combout\) # (\y[2]~input_o\))) ) ) ) # ( 
-- \x[3]~input_o\ & ( !\y[3]~input_o\ & ( (!\x[2]~input_o\ & (\y[2]~input_o\ & \FA_1|carry~0_combout\)) # (\x[2]~input_o\ & ((\FA_1|carry~0_combout\) # (\y[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100010111000101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x[2]~input_o\,
	datab => \ALT_INV_y[2]~input_o\,
	datac => \FA_1|ALT_INV_carry~0_combout\,
	datae => \ALT_INV_x[3]~input_o\,
	dataf => \ALT_INV_y[3]~input_o\,
	combout => \FA_3|carry~0_combout\);

-- Location: LABCELL_X36_Y70_N0
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


