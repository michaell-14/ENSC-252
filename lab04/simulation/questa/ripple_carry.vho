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

-- DATE "10/27/2024 10:30:19"

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

ENTITY 	ripple_top IS
    PORT (
	SW : IN std_logic_vector(8 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(4 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END ripple_top;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ripple_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \UUT|FA_0|sum~combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \UUT|FA_1|sum~combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \UUT|FA_1|carry~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \UUT|FA_2|sum~combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \UUT|FA_3|sum~combout\ : std_logic;
SIGNAL \UUT|FA_3|carry~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \UUT|FA_3|ALT_INV_sum~combout\ : std_logic;
SIGNAL \UUT|FA_2|ALT_INV_sum~combout\ : std_logic;
SIGNAL \UUT|FA_1|ALT_INV_carry~0_combout\ : std_logic;
SIGNAL \UUT|FA_1|ALT_INV_sum~combout\ : std_logic;
SIGNAL \UUT|FA_0|ALT_INV_sum~combout\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\UUT|FA_3|ALT_INV_sum~combout\ <= NOT \UUT|FA_3|sum~combout\;
\UUT|FA_2|ALT_INV_sum~combout\ <= NOT \UUT|FA_2|sum~combout\;
\UUT|FA_1|ALT_INV_carry~0_combout\ <= NOT \UUT|FA_1|carry~0_combout\;
\UUT|FA_1|ALT_INV_sum~combout\ <= NOT \UUT|FA_1|sum~combout\;
\UUT|FA_0|ALT_INV_sum~combout\ <= NOT \UUT|FA_0|sum~combout\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;

-- Location: IOOBUF_X89_Y11_N45
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|FA_0|sum~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X89_Y9_N22
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|FA_1|sum~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X86_Y0_N19
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|FA_2|sum~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X88_Y0_N37
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|FA_3|sum~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X78_Y0_N36
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|FA_3|carry~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X60_Y0_N19
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
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
	i => \Mux5~0_combout\,
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
	i => \Mux4~0_combout\,
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
	i => \Mux3~0_combout\,
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
	i => \Mux2~0_combout\,
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
	i => \Mux1~0_combout\,
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
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOIBUF_X89_Y20_N44
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

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

-- Location: LABCELL_X88_Y20_N30
\UUT|FA_0|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|FA_0|sum~combout\ = ( \SW[8]~input_o\ & ( \SW[0]~input_o\ & ( \SW[4]~input_o\ ) ) ) # ( !\SW[8]~input_o\ & ( \SW[0]~input_o\ & ( !\SW[4]~input_o\ ) ) ) # ( \SW[8]~input_o\ & ( !\SW[0]~input_o\ & ( !\SW[4]~input_o\ ) ) ) # ( !\SW[8]~input_o\ & ( 
-- !\SW[0]~input_o\ & ( \SW[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \UUT|FA_0|sum~combout\);

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

-- Location: IOIBUF_X89_Y20_N61
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X88_Y20_N39
\UUT|FA_1|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|FA_1|sum~combout\ = ( \SW[8]~input_o\ & ( \SW[0]~input_o\ & ( !\SW[1]~input_o\ $ (\SW[5]~input_o\) ) ) ) # ( !\SW[8]~input_o\ & ( \SW[0]~input_o\ & ( !\SW[4]~input_o\ $ (!\SW[1]~input_o\ $ (\SW[5]~input_o\)) ) ) ) # ( \SW[8]~input_o\ & ( 
-- !\SW[0]~input_o\ & ( !\SW[4]~input_o\ $ (!\SW[1]~input_o\ $ (\SW[5]~input_o\)) ) ) ) # ( !\SW[8]~input_o\ & ( !\SW[0]~input_o\ & ( !\SW[1]~input_o\ $ (!\SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000010110101010010101011010101001011111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \UUT|FA_1|sum~combout\);

-- Location: IOIBUF_X89_Y20_N78
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X88_Y20_N42
\UUT|FA_1|carry~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|FA_1|carry~0_combout\ = ( \SW[8]~input_o\ & ( \SW[0]~input_o\ & ( (\SW[1]~input_o\) # (\SW[5]~input_o\) ) ) ) # ( !\SW[8]~input_o\ & ( \SW[0]~input_o\ & ( (!\SW[5]~input_o\ & (\SW[1]~input_o\ & \SW[4]~input_o\)) # (\SW[5]~input_o\ & 
-- ((\SW[4]~input_o\) # (\SW[1]~input_o\))) ) ) ) # ( \SW[8]~input_o\ & ( !\SW[0]~input_o\ & ( (!\SW[5]~input_o\ & (\SW[1]~input_o\ & \SW[4]~input_o\)) # (\SW[5]~input_o\ & ((\SW[4]~input_o\) # (\SW[1]~input_o\))) ) ) ) # ( !\SW[8]~input_o\ & ( 
-- !\SW[0]~input_o\ & ( (\SW[5]~input_o\ & \SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101110001011100010111000101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \UUT|FA_1|carry~0_combout\);

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

-- Location: LABCELL_X88_Y20_N21
\UUT|FA_2|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|FA_2|sum~combout\ = ( \SW[2]~input_o\ & ( !\SW[6]~input_o\ $ (\UUT|FA_1|carry~0_combout\) ) ) # ( !\SW[2]~input_o\ & ( !\SW[6]~input_o\ $ (!\UUT|FA_1|carry~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \UUT|FA_1|ALT_INV_carry~0_combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \UUT|FA_2|sum~combout\);

-- Location: IOIBUF_X89_Y25_N38
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

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

-- Location: LABCELL_X88_Y20_N24
\UUT|FA_3|sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|FA_3|sum~combout\ = ( \SW[7]~input_o\ & ( \SW[3]~input_o\ & ( (!\UUT|FA_1|carry~0_combout\ & (\SW[2]~input_o\ & \SW[6]~input_o\)) # (\UUT|FA_1|carry~0_combout\ & ((\SW[6]~input_o\) # (\SW[2]~input_o\))) ) ) ) # ( !\SW[7]~input_o\ & ( \SW[3]~input_o\ 
-- & ( (!\UUT|FA_1|carry~0_combout\ & ((!\SW[2]~input_o\) # (!\SW[6]~input_o\))) # (\UUT|FA_1|carry~0_combout\ & (!\SW[2]~input_o\ & !\SW[6]~input_o\)) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[3]~input_o\ & ( (!\UUT|FA_1|carry~0_combout\ & ((!\SW[2]~input_o\) # 
-- (!\SW[6]~input_o\))) # (\UUT|FA_1|carry~0_combout\ & (!\SW[2]~input_o\ & !\SW[6]~input_o\)) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[3]~input_o\ & ( (!\UUT|FA_1|carry~0_combout\ & (\SW[2]~input_o\ & \SW[6]~input_o\)) # (\UUT|FA_1|carry~0_combout\ & 
-- ((\SW[6]~input_o\) # (\SW[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111111111001100000011111100110000000000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|FA_1|ALT_INV_carry~0_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \UUT|FA_3|sum~combout\);

-- Location: LABCELL_X88_Y20_N3
\UUT|FA_3|carry~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|FA_3|carry~0_combout\ = ( \SW[7]~input_o\ & ( \SW[3]~input_o\ ) ) # ( !\SW[7]~input_o\ & ( \SW[3]~input_o\ & ( (!\SW[2]~input_o\ & (\SW[6]~input_o\ & \UUT|FA_1|carry~0_combout\)) # (\SW[2]~input_o\ & ((\UUT|FA_1|carry~0_combout\) # 
-- (\SW[6]~input_o\))) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[3]~input_o\ & ( (!\SW[2]~input_o\ & (\SW[6]~input_o\ & \UUT|FA_1|carry~0_combout\)) # (\SW[2]~input_o\ & ((\UUT|FA_1|carry~0_combout\) # (\SW[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100010111000101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \UUT|FA_1|ALT_INV_carry~0_combout\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \UUT|FA_3|carry~0_combout\);

-- Location: MLABCELL_X65_Y4_N3
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \UUT|FA_2|sum~combout\ & ( (!\UUT|FA_1|sum~combout\ & (!\UUT|FA_0|sum~combout\ $ (\UUT|FA_3|sum~combout\))) ) ) # ( !\UUT|FA_2|sum~combout\ & ( (\UUT|FA_0|sum~combout\ & (!\UUT|FA_1|sum~combout\ $ (\UUT|FA_3|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001100001001000010001000001010000011000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|FA_0|ALT_INV_sum~combout\,
	datab => \UUT|FA_1|ALT_INV_sum~combout\,
	datac => \UUT|FA_3|ALT_INV_sum~combout\,
	datae => \UUT|FA_2|ALT_INV_sum~combout\,
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X65_Y4_N6
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \UUT|FA_2|sum~combout\ & ( (!\UUT|FA_3|sum~combout\ & (!\UUT|FA_0|sum~combout\ $ (!\UUT|FA_1|sum~combout\))) # (\UUT|FA_3|sum~combout\ & ((!\UUT|FA_0|sum~combout\) # (\UUT|FA_1|sum~combout\))) ) ) # ( !\UUT|FA_2|sum~combout\ & ( 
-- (\UUT|FA_3|sum~combout\ & (\UUT|FA_0|sum~combout\ & \UUT|FA_1|sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001111001111001100000000000000110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|FA_3|ALT_INV_sum~combout\,
	datac => \UUT|FA_0|ALT_INV_sum~combout\,
	datad => \UUT|FA_1|ALT_INV_sum~combout\,
	datae => \UUT|FA_2|ALT_INV_sum~combout\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X65_Y4_N12
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \UUT|FA_2|sum~combout\ & ( (\UUT|FA_3|sum~combout\ & ((!\UUT|FA_0|sum~combout\) # (\UUT|FA_1|sum~combout\))) ) ) # ( !\UUT|FA_2|sum~combout\ & ( (!\UUT|FA_3|sum~combout\ & (!\UUT|FA_0|sum~combout\ & \UUT|FA_1|sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000001100000011001100000000110000000011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|FA_3|ALT_INV_sum~combout\,
	datac => \UUT|FA_0|ALT_INV_sum~combout\,
	datad => \UUT|FA_1|ALT_INV_sum~combout\,
	datae => \UUT|FA_2|ALT_INV_sum~combout\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X65_Y4_N51
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \UUT|FA_2|sum~combout\ & ( (!\UUT|FA_0|sum~combout\ & (!\UUT|FA_1|sum~combout\ & !\UUT|FA_3|sum~combout\)) # (\UUT|FA_0|sum~combout\ & (\UUT|FA_1|sum~combout\)) ) ) # ( !\UUT|FA_2|sum~combout\ & ( (!\UUT|FA_0|sum~combout\ & 
-- (\UUT|FA_1|sum~combout\ & \UUT|FA_3|sum~combout\)) # (\UUT|FA_0|sum~combout\ & (!\UUT|FA_1|sum~combout\ & !\UUT|FA_3|sum~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010100100011001000101000010010000101001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|FA_0|ALT_INV_sum~combout\,
	datab => \UUT|FA_1|ALT_INV_sum~combout\,
	datac => \UUT|FA_3|ALT_INV_sum~combout\,
	datae => \UUT|FA_2|ALT_INV_sum~combout\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X65_Y4_N24
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \UUT|FA_2|sum~combout\ & ( (!\UUT|FA_3|sum~combout\ & ((!\UUT|FA_1|sum~combout\) # (\UUT|FA_0|sum~combout\))) ) ) # ( !\UUT|FA_2|sum~combout\ & ( (\UUT|FA_0|sum~combout\ & ((!\UUT|FA_3|sum~combout\) # (!\UUT|FA_1|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100110011000000110000001111000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|FA_3|ALT_INV_sum~combout\,
	datac => \UUT|FA_0|ALT_INV_sum~combout\,
	datad => \UUT|FA_1|ALT_INV_sum~combout\,
	datae => \UUT|FA_2|ALT_INV_sum~combout\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X65_Y4_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \UUT|FA_2|sum~combout\ & ( (\UUT|FA_0|sum~combout\ & (!\UUT|FA_1|sum~combout\ $ (!\UUT|FA_3|sum~combout\))) ) ) # ( !\UUT|FA_2|sum~combout\ & ( (!\UUT|FA_3|sum~combout\ & ((\UUT|FA_1|sum~combout\) # (\UUT|FA_0|sum~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000000101000001010001110000011100000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|FA_0|ALT_INV_sum~combout\,
	datab => \UUT|FA_1|ALT_INV_sum~combout\,
	datac => \UUT|FA_3|ALT_INV_sum~combout\,
	datae => \UUT|FA_2|ALT_INV_sum~combout\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X65_Y4_N36
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \UUT|FA_2|sum~combout\ & ( (!\UUT|FA_3|sum~combout\ & ((!\UUT|FA_0|sum~combout\) # (!\UUT|FA_1|sum~combout\))) # (\UUT|FA_3|sum~combout\ & ((\UUT|FA_1|sum~combout\) # (\UUT|FA_0|sum~combout\))) ) ) # ( !\UUT|FA_2|sum~combout\ & ( 
-- (\UUT|FA_1|sum~combout\) # (\UUT|FA_3|sum~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111110011111111001100110011111111111100111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|FA_3|ALT_INV_sum~combout\,
	datac => \UUT|FA_0|ALT_INV_sum~combout\,
	datad => \UUT|FA_1|ALT_INV_sum~combout\,
	datae => \UUT|FA_2|ALT_INV_sum~combout\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X34_Y70_N0
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


