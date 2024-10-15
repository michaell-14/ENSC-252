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

-- DATE "10/14/2024 16:04:33"

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

ENTITY 	Part3 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Part3;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Part3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \hex0_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \hex1_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \hex1_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hex1_decoder|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \hex1_decoder|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \hex1_decoder|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \hex1_decoder|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \hex1_decoder|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \hex0_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \hex0_decoder|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \hex0_decoder|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \hex0_decoder|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \hex0_decoder|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \hex0_decoder|ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\hex1_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hex1_decoder|Mux0~0_combout\;
\hex1_decoder|ALT_INV_Mux1~0_combout\ <= NOT \hex1_decoder|Mux1~0_combout\;
\hex1_decoder|ALT_INV_Mux2~0_combout\ <= NOT \hex1_decoder|Mux2~0_combout\;
\hex1_decoder|ALT_INV_Mux3~0_combout\ <= NOT \hex1_decoder|Mux3~0_combout\;
\hex1_decoder|ALT_INV_Mux4~0_combout\ <= NOT \hex1_decoder|Mux4~0_combout\;
\hex1_decoder|ALT_INV_Mux5~0_combout\ <= NOT \hex1_decoder|Mux5~0_combout\;
\hex0_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hex0_decoder|Mux0~0_combout\;
\hex0_decoder|ALT_INV_Mux1~0_combout\ <= NOT \hex0_decoder|Mux1~0_combout\;
\hex0_decoder|ALT_INV_Mux2~0_combout\ <= NOT \hex0_decoder|Mux2~0_combout\;
\hex0_decoder|ALT_INV_Mux3~0_combout\ <= NOT \hex0_decoder|Mux3~0_combout\;
\hex0_decoder|ALT_INV_Mux4~0_combout\ <= NOT \hex0_decoder|Mux4~0_combout\;
\hex0_decoder|ALT_INV_Mux5~0_combout\ <= NOT \hex0_decoder|Mux5~0_combout\;

-- Location: IOOBUF_X60_Y0_N19
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0_decoder|Mux6~0_combout\,
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
	i => \hex0_decoder|ALT_INV_Mux5~0_combout\,
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
	i => \hex0_decoder|ALT_INV_Mux4~0_combout\,
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
	i => \hex0_decoder|ALT_INV_Mux3~0_combout\,
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
	i => \hex0_decoder|ALT_INV_Mux2~0_combout\,
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
	i => \hex0_decoder|ALT_INV_Mux1~0_combout\,
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
	i => \hex0_decoder|ALT_INV_Mux0~0_combout\,
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
	i => \hex1_decoder|Mux6~0_combout\,
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
	i => \hex1_decoder|ALT_INV_Mux5~0_combout\,
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
	i => \hex1_decoder|ALT_INV_Mux4~0_combout\,
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
	i => \hex1_decoder|ALT_INV_Mux3~0_combout\,
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
	i => \hex1_decoder|ALT_INV_Mux2~0_combout\,
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
	i => \hex1_decoder|ALT_INV_Mux1~0_combout\,
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
	i => \hex1_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

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

-- Location: LABCELL_X61_Y2_N30
\hex0_decoder|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux6~0_combout\ = ( \SW[2]~input_o\ & ( \SW[3]~input_o\ ) ) # ( !\SW[2]~input_o\ & ( \SW[3]~input_o\ ) ) # ( \SW[2]~input_o\ & ( !\SW[3]~input_o\ & ( (!\SW[1]~input_o\) # (!\SW[0]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[3]~input_o\ & ( 
-- \SW[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111001111110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux6~0_combout\);

-- Location: LABCELL_X61_Y2_N39
\hex0_decoder|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux5~0_combout\ = ( \SW[2]~input_o\ & ( \SW[3]~input_o\ & ( !\SW[1]~input_o\ ) ) ) # ( \SW[2]~input_o\ & ( !\SW[3]~input_o\ & ( (\SW[0]~input_o\ & \SW[1]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[3]~input_o\ & ( (\SW[1]~input_o\) # 
-- (\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000001010000010100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux5~0_combout\);

-- Location: LABCELL_X61_Y2_N42
\hex0_decoder|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux4~0_combout\ = ( !\SW[2]~input_o\ & ( \SW[3]~input_o\ & ( (!\SW[1]~input_o\ & \SW[0]~input_o\) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[3]~input_o\ & ( (!\SW[1]~input_o\) # (\SW[0]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[3]~input_o\ & ( 
-- \SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011111100111100001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux4~0_combout\);

-- Location: LABCELL_X61_Y2_N51
\hex0_decoder|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux3~0_combout\ = ( \SW[2]~input_o\ & ( \SW[3]~input_o\ & ( (\SW[0]~input_o\ & \SW[1]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[3]~input_o\ & ( !\SW[0]~input_o\ $ (!\SW[1]~input_o\) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[3]~input_o\ & ( 
-- !\SW[0]~input_o\ $ (\SW[1]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[3]~input_o\ & ( (\SW[0]~input_o\ & !\SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101001011010010101011010010110100000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux3~0_combout\);

-- Location: LABCELL_X61_Y2_N24
\hex0_decoder|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux2~0_combout\ = ( \SW[2]~input_o\ & ( \SW[3]~input_o\ & ( (!\SW[0]~input_o\) # (\SW[1]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[3]~input_o\ & ( (\SW[1]~input_o\ & !\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux2~0_combout\);

-- Location: LABCELL_X61_Y2_N3
\hex0_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux1~0_combout\ = ( \SW[2]~input_o\ & ( \SW[3]~input_o\ & ( (!\SW[0]~input_o\) # (\SW[1]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[3]~input_o\ & ( (\SW[0]~input_o\ & \SW[1]~input_o\) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[3]~input_o\ & ( 
-- !\SW[0]~input_o\ $ (!\SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux1~0_combout\);

-- Location: LABCELL_X61_Y2_N6
\hex0_decoder|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux0~0_combout\ = ( \SW[3]~input_o\ & ( (!\SW[1]~input_o\ & ((\SW[2]~input_o\))) # (\SW[1]~input_o\ & (\SW[0]~input_o\ & !\SW[2]~input_o\)) ) ) # ( !\SW[3]~input_o\ & ( (!\SW[1]~input_o\ & (!\SW[0]~input_o\ $ (!\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000011110011000000001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux0~0_combout\);

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

-- Location: LABCELL_X61_Y2_N9
\hex1_decoder|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux6~0_combout\ = ( \SW[7]~input_o\ ) # ( !\SW[7]~input_o\ & ( (!\SW[5]~input_o\ & ((\SW[6]~input_o\))) # (\SW[5]~input_o\ & ((!\SW[4]~input_o\) # (!\SW[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111010010101011111101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \hex1_decoder|Mux6~0_combout\);

-- Location: LABCELL_X61_Y2_N12
\hex1_decoder|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux5~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[7]~input_o\ & ((!\SW[6]~input_o\) # (\SW[4]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (!\SW[7]~input_o\ & \SW[4]~input_o\)) # (\SW[6]~input_o\ & (\SW[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001000100011001100110001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex1_decoder|Mux5~0_combout\);

-- Location: LABCELL_X61_Y2_N15
\hex1_decoder|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux4~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[7]~input_o\ & \SW[4]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\ & ((\SW[4]~input_o\))) # (\SW[6]~input_o\ & (!\SW[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111010010100001111101000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex1_decoder|Mux4~0_combout\);

-- Location: LABCELL_X61_Y2_N18
\hex1_decoder|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux3~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (\SW[7]~input_o\ & !\SW[4]~input_o\)) # (\SW[6]~input_o\ & ((\SW[4]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\ & ((\SW[4]~input_o\))) # (\SW[6]~input_o\ & 
-- (!\SW[7]~input_o\ & !\SW[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010101010010001001010101000100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex1_decoder|Mux3~0_combout\);

-- Location: LABCELL_X61_Y2_N21
\hex1_decoder|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux2~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (!\SW[7]~input_o\ & !\SW[4]~input_o\)) # (\SW[6]~input_o\ & (\SW[7]~input_o\)) ) ) # ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & (\SW[7]~input_o\ & !\SW[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex1_decoder|Mux2~0_combout\);

-- Location: LABCELL_X61_Y2_N57
\hex1_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux1~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[4]~input_o\ & (\SW[6]~input_o\)) # (\SW[4]~input_o\ & ((\SW[7]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & (!\SW[7]~input_o\ $ (!\SW[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex1_decoder|Mux1~0_combout\);

-- Location: LABCELL_X61_Y2_N54
\hex1_decoder|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux0~0_combout\ = ( \SW[5]~input_o\ & ( (\SW[7]~input_o\ & (!\SW[6]~input_o\ & \SW[4]~input_o\)) ) ) # ( !\SW[5]~input_o\ & ( !\SW[6]~input_o\ $ (((!\SW[4]~input_o\) # (\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011000011111100001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex1_decoder|Mux0~0_combout\);

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

-- Location: IOIBUF_X89_Y21_N21
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

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


