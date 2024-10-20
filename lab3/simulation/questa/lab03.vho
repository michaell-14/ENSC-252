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

-- DATE "10/20/2024 13:47:08"

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
	KEY : IN std_logic_vector(0 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
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
-- HEX4[0]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \hex0_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \hex1_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
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
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;

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
	i => \hex0_decoder|Mux5~0_combout\,
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
	i => \hex0_decoder|Mux4~0_combout\,
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
	i => \hex0_decoder|Mux3~0_combout\,
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
	i => \hex0_decoder|Mux2~0_combout\,
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
	i => \hex0_decoder|Mux1~0_combout\,
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
	i => \hex0_decoder|Mux0~0_combout\,
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
	i => \hex1_decoder|Mux5~0_combout\,
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
	i => \hex1_decoder|Mux4~0_combout\,
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
	i => \hex1_decoder|Mux3~0_combout\,
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
	i => \hex1_decoder|Mux2~0_combout\,
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
	i => \hex1_decoder|Mux1~0_combout\,
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
	i => \hex1_decoder|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X82_Y0_N59
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X66_Y0_N76
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X78_Y0_N2
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X64_Y0_N36
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X74_Y0_N42
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X66_Y0_N93
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4_decoder|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X70_Y0_N19
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X54_Y0_N2
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X70_Y0_N2
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X62_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X66_Y0_N59
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X62_Y0_N2
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X88_Y0_N20
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5_decoder|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

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

-- Location: LABCELL_X74_Y1_N36
\hex0_decoder|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux6~0_combout\ = ( \SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # ((!\SW[1]~input_o\ & (\SW[2]~input_o\)) # (\SW[1]~input_o\ & (!\SW[2]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # ((!\SW[1]~input_o\ & 
-- (!\SW[2]~input_o\ $ (!\SW[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100101000111111110010100011111111001001101111111100100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux6~0_combout\);

-- Location: LABCELL_X74_Y1_N27
\hex0_decoder|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux5~0_combout\ = ( \SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # ((!\SW[0]~input_o\ & (\SW[2]~input_o\)) # (\SW[0]~input_o\ & ((\SW[1]~input_o\)))) ) ) # ( !\SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # ((\SW[2]~input_o\ & (!\SW[0]~input_o\ $ 
-- (!\SW[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110111010101010111011101010111010101111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux5~0_combout\);

-- Location: LABCELL_X74_Y1_N24
\hex0_decoder|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux4~0_combout\ = ( \SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # ((\SW[2]~input_o\ & ((!\SW[0]~input_o\) # (\SW[1]~input_o\)))) ) ) # ( !\SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # ((!\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101010101011101010101010111011101010111011101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux4~0_combout\);

-- Location: LABCELL_X74_Y1_N21
\hex0_decoder|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux3~0_combout\ = ( \SW[1]~input_o\ & ( \SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # (!\SW[0]~input_o\ $ (\SW[2]~input_o\)) ) ) ) # ( !\SW[1]~input_o\ & ( \SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # ((\SW[0]~input_o\ & !\SW[2]~input_o\)) ) ) ) # 
-- ( \SW[1]~input_o\ & ( !\SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # ((\SW[0]~input_o\ & \SW[2]~input_o\)) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # (!\SW[0]~input_o\ $ (!\SW[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011011110110111100011111000111110100111101001111100111111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux3~0_combout\);

-- Location: LABCELL_X74_Y1_N45
\hex0_decoder|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux2~0_combout\ = ( \SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # ((!\SW[1]~input_o\ & (!\SW[2]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # (((!\SW[1]~input_o\ & \SW[2]~input_o\)) # (\SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011111111111100101111111111110000111110001111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux2~0_combout\);

-- Location: LABCELL_X74_Y1_N42
\hex0_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux1~0_combout\ = ( \SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # ((!\SW[1]~input_o\ & \SW[2]~input_o\)) ) ) # ( !\SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # ((!\SW[1]~input_o\ & (!\SW[2]~input_o\ & \SW[0]~input_o\)) # (\SW[1]~input_o\ & 
-- ((!\SW[2]~input_o\) # (\SW[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010011111101111101001111110111110010111100101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux1~0_combout\);

-- Location: LABCELL_X74_Y1_N3
\hex0_decoder|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux0~0_combout\ = ( \SW[3]~input_o\ & ( !\KEY[0]~input_o\ ) ) # ( !\SW[3]~input_o\ & ( (!\KEY[0]~input_o\) # ((!\SW[1]~input_o\ & (!\SW[2]~input_o\)) # (\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111001111110001111100111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_decoder|Mux0~0_combout\);

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

-- Location: LABCELL_X61_Y1_N27
\hex1_decoder|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux6~0_combout\ = ( \SW[5]~input_o\ & ( (!\KEY[0]~input_o\) # ((\SW[4]~input_o\ & (!\SW[6]~input_o\ & \SW[7]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( (!\KEY[0]~input_o\) # (!\SW[6]~input_o\ $ (((!\SW[4]~input_o\) # (\SW[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011011110011111101101111001111110000111101001111000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex1_decoder|Mux6~0_combout\);

-- Location: LABCELL_X61_Y1_N51
\hex1_decoder|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux5~0_combout\ = ( \SW[5]~input_o\ & ( (!\KEY[0]~input_o\) # ((!\SW[4]~input_o\ & (\SW[6]~input_o\)) # (\SW[4]~input_o\ & ((\SW[7]~input_o\)))) ) ) # ( !\SW[5]~input_o\ & ( (!\KEY[0]~input_o\) # ((\SW[6]~input_o\ & (!\SW[4]~input_o\ $ 
-- (!\SW[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110010111100011111001011110010111101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex1_decoder|Mux5~0_combout\);

-- Location: LABCELL_X61_Y1_N24
\hex1_decoder|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux4~0_combout\ = ( \SW[7]~input_o\ & ( (!\KEY[0]~input_o\) # ((\SW[6]~input_o\ & ((!\SW[4]~input_o\) # (\SW[5]~input_o\)))) ) ) # ( !\SW[7]~input_o\ & ( (!\KEY[0]~input_o\) # ((!\SW[4]~input_o\ & (!\SW[6]~input_o\ & \SW[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001000111111110000100011111111001000111111111100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \hex1_decoder|Mux4~0_combout\);

-- Location: LABCELL_X61_Y1_N48
\hex1_decoder|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux3~0_combout\ = ( \SW[7]~input_o\ & ( (!\KEY[0]~input_o\) # ((!\SW[4]~input_o\ & (!\SW[6]~input_o\ & \SW[5]~input_o\)) # (\SW[4]~input_o\ & (!\SW[6]~input_o\ $ (\SW[5]~input_o\)))) ) ) # ( !\SW[7]~input_o\ & ( (!\KEY[0]~input_o\) # 
-- ((!\SW[4]~input_o\ & (\SW[6]~input_o\ & !\SW[5]~input_o\)) # (\SW[4]~input_o\ & (!\SW[6]~input_o\ $ (\SW[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101100001111111110110000111111111010010011111111101001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \hex1_decoder|Mux3~0_combout\);

-- Location: LABCELL_X61_Y1_N30
\hex1_decoder|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux2~0_combout\ = ( \SW[7]~input_o\ & ( (!\KEY[0]~input_o\) # ((\SW[4]~input_o\ & (!\SW[6]~input_o\ & !\SW[5]~input_o\))) ) ) # ( !\SW[7]~input_o\ & ( ((!\KEY[0]~input_o\) # ((\SW[6]~input_o\ & !\SW[5]~input_o\))) # (\SW[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110101111111110111010111111111010000001111111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \hex1_decoder|Mux2~0_combout\);

-- Location: LABCELL_X61_Y1_N21
\hex1_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux1~0_combout\ = ( \SW[4]~input_o\ & ( (!\KEY[0]~input_o\) # (!\SW[7]~input_o\ $ (((!\SW[5]~input_o\ & \SW[6]~input_o\)))) ) ) # ( !\SW[4]~input_o\ & ( (!\KEY[0]~input_o\) # ((!\SW[5]~input_o\ & (\SW[7]~input_o\ & \SW[6]~input_o\)) # 
-- (\SW[5]~input_o\ & (!\SW[7]~input_o\ & !\SW[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101000010111111110100001011111111110001101111111111000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \hex1_decoder|Mux1~0_combout\);

-- Location: LABCELL_X61_Y1_N15
\hex1_decoder|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux0~0_combout\ = ( \SW[6]~input_o\ & ( \SW[7]~input_o\ & ( !\KEY[0]~input_o\ ) ) ) # ( !\SW[6]~input_o\ & ( \SW[7]~input_o\ & ( !\KEY[0]~input_o\ ) ) ) # ( \SW[6]~input_o\ & ( !\SW[7]~input_o\ & ( (!\KEY[0]~input_o\) # ((\SW[4]~input_o\ & 
-- \SW[5]~input_o\)) ) ) ) # ( !\SW[6]~input_o\ & ( !\SW[7]~input_o\ & ( (!\KEY[0]~input_o\) # (!\SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111100001111010111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \hex1_decoder|Mux0~0_combout\);

-- Location: LABCELL_X74_Y1_N39
\hex4_decoder|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux6~0_combout\ = ( \SW[3]~input_o\ & ( ((!\SW[1]~input_o\ & (\SW[2]~input_o\)) # (\SW[1]~input_o\ & (!\SW[2]~input_o\ & \SW[0]~input_o\))) # (\KEY[0]~input_o\) ) ) # ( !\SW[3]~input_o\ & ( ((!\SW[1]~input_o\ & (!\SW[2]~input_o\ $ 
-- (!\SW[0]~input_o\)))) # (\KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111110001111001011111000111100101111011011110010111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex4_decoder|Mux6~0_combout\);

-- Location: LABCELL_X74_Y1_N0
\hex4_decoder|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux5~0_combout\ = ( \SW[3]~input_o\ & ( ((!\SW[0]~input_o\ & ((\SW[2]~input_o\))) # (\SW[0]~input_o\ & (\SW[1]~input_o\))) # (\KEY[0]~input_o\) ) ) # ( !\SW[3]~input_o\ & ( ((\SW[2]~input_o\ & (!\SW[1]~input_o\ $ (!\SW[0]~input_o\)))) # 
-- (\KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100101111000111110010111100111111010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex4_decoder|Mux5~0_combout\);

-- Location: LABCELL_X74_Y1_N54
\hex4_decoder|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux4~0_combout\ = ( \SW[1]~input_o\ & ( \SW[3]~input_o\ & ( (\SW[2]~input_o\) # (\KEY[0]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( \SW[3]~input_o\ & ( ((!\SW[0]~input_o\ & \SW[2]~input_o\)) # (\KEY[0]~input_o\) ) ) ) # ( \SW[1]~input_o\ & ( 
-- !\SW[3]~input_o\ & ( ((!\SW[0]~input_o\ & !\SW[2]~input_o\)) # (\KEY[0]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[3]~input_o\ & ( \KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111100110011001100110011111100110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex4_decoder|Mux4~0_combout\);

-- Location: LABCELL_X74_Y1_N51
\hex4_decoder|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux3~0_combout\ = ( \SW[1]~input_o\ & ( \SW[3]~input_o\ & ( (!\SW[0]~input_o\ $ (\SW[2]~input_o\)) # (\KEY[0]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( \SW[3]~input_o\ & ( ((\SW[0]~input_o\ & !\SW[2]~input_o\)) # (\KEY[0]~input_o\) ) ) ) # ( 
-- \SW[1]~input_o\ & ( !\SW[3]~input_o\ & ( ((\SW[0]~input_o\ & \SW[2]~input_o\)) # (\KEY[0]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[3]~input_o\ & ( (!\SW[0]~input_o\ $ (!\SW[2]~input_o\)) # (\KEY[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111101101111000111110001111101001111010011111001111110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex4_decoder|Mux3~0_combout\);

-- Location: LABCELL_X74_Y1_N15
\hex4_decoder|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux2~0_combout\ = ( \SW[1]~input_o\ & ( \SW[3]~input_o\ & ( \KEY[0]~input_o\ ) ) ) # ( !\SW[1]~input_o\ & ( \SW[3]~input_o\ & ( ((\SW[0]~input_o\ & !\SW[2]~input_o\)) # (\KEY[0]~input_o\) ) ) ) # ( \SW[1]~input_o\ & ( !\SW[3]~input_o\ & ( 
-- (\KEY[0]~input_o\) # (\SW[0]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[3]~input_o\ & ( ((\KEY[0]~input_o\) # (\SW[2]~input_o\)) # (\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111010111110101111101001111010011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex4_decoder|Mux2~0_combout\);

-- Location: LABCELL_X74_Y1_N6
\hex4_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux1~0_combout\ = ( \SW[1]~input_o\ & ( \SW[3]~input_o\ & ( \KEY[0]~input_o\ ) ) ) # ( !\SW[1]~input_o\ & ( \SW[3]~input_o\ & ( (\SW[2]~input_o\) # (\KEY[0]~input_o\) ) ) ) # ( \SW[1]~input_o\ & ( !\SW[3]~input_o\ & ( ((!\SW[2]~input_o\) # 
-- (\SW[0]~input_o\)) # (\KEY[0]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[3]~input_o\ & ( ((\SW[0]~input_o\ & !\SW[2]~input_o\)) # (\KEY[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011111111110011111100110011111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex4_decoder|Mux1~0_combout\);

-- Location: LABCELL_X74_Y1_N30
\hex4_decoder|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux0~0_combout\ = ( \SW[1]~input_o\ & ( \SW[3]~input_o\ & ( \KEY[0]~input_o\ ) ) ) # ( !\SW[1]~input_o\ & ( \SW[3]~input_o\ & ( \KEY[0]~input_o\ ) ) ) # ( \SW[1]~input_o\ & ( !\SW[3]~input_o\ & ( ((\SW[0]~input_o\ & \SW[2]~input_o\)) # 
-- (\KEY[0]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[3]~input_o\ & ( (!\SW[2]~input_o\) # (\KEY[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011001100110011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex4_decoder|Mux0~0_combout\);

-- Location: LABCELL_X61_Y1_N36
\hex5_decoder|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux6~0_combout\ = ( \SW[6]~input_o\ & ( \SW[7]~input_o\ & ( (!\SW[5]~input_o\) # (\KEY[0]~input_o\) ) ) ) # ( !\SW[6]~input_o\ & ( \SW[7]~input_o\ & ( ((\SW[5]~input_o\ & \SW[4]~input_o\)) # (\KEY[0]~input_o\) ) ) ) # ( \SW[6]~input_o\ & ( 
-- !\SW[7]~input_o\ & ( ((!\SW[5]~input_o\ & !\SW[4]~input_o\)) # (\KEY[0]~input_o\) ) ) ) # ( !\SW[6]~input_o\ & ( !\SW[7]~input_o\ & ( ((!\SW[5]~input_o\ & \SW[4]~input_o\)) # (\KEY[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011101100111011001100110111001101111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \hex5_decoder|Mux6~0_combout\);

-- Location: LABCELL_X61_Y1_N33
\hex5_decoder|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux5~0_combout\ = ( \SW[5]~input_o\ & ( ((!\SW[4]~input_o\ & (\SW[6]~input_o\)) # (\SW[4]~input_o\ & ((\SW[7]~input_o\)))) # (\KEY[0]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( ((\SW[6]~input_o\ & (!\SW[4]~input_o\ $ (!\SW[7]~input_o\)))) # 
-- (\KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100101111000111110010111100101111011111110010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex5_decoder|Mux5~0_combout\);

-- Location: LABCELL_X61_Y1_N57
\hex5_decoder|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux4~0_combout\ = ( \SW[6]~input_o\ & ( \SW[7]~input_o\ & ( (!\SW[4]~input_o\) # ((\SW[5]~input_o\) # (\KEY[0]~input_o\)) ) ) ) # ( !\SW[6]~input_o\ & ( \SW[7]~input_o\ & ( \KEY[0]~input_o\ ) ) ) # ( \SW[6]~input_o\ & ( !\SW[7]~input_o\ & ( 
-- \KEY[0]~input_o\ ) ) ) # ( !\SW[6]~input_o\ & ( !\SW[7]~input_o\ & ( ((!\SW[4]~input_o\ & \SW[5]~input_o\)) # (\KEY[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011110000111100001111000011111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \hex5_decoder|Mux4~0_combout\);

-- Location: LABCELL_X61_Y1_N18
\hex5_decoder|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux3~0_combout\ = ( \SW[4]~input_o\ & ( (!\SW[5]~input_o\ $ (\SW[6]~input_o\)) # (\KEY[0]~input_o\) ) ) # ( !\SW[4]~input_o\ & ( ((!\SW[5]~input_o\ & (!\SW[7]~input_o\ & \SW[6]~input_o\)) # (\SW[5]~input_o\ & (\SW[7]~input_o\ & 
-- !\SW[6]~input_o\))) # (\KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111110001111000111111000111110101111010111111010111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \hex5_decoder|Mux3~0_combout\);

-- Location: LABCELL_X61_Y1_N45
\hex5_decoder|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux2~0_combout\ = ( \SW[6]~input_o\ & ( \SW[7]~input_o\ & ( \KEY[0]~input_o\ ) ) ) # ( !\SW[6]~input_o\ & ( \SW[7]~input_o\ & ( ((\SW[4]~input_o\ & !\SW[5]~input_o\)) # (\KEY[0]~input_o\) ) ) ) # ( \SW[6]~input_o\ & ( !\SW[7]~input_o\ & ( 
-- ((!\SW[5]~input_o\) # (\KEY[0]~input_o\)) # (\SW[4]~input_o\) ) ) ) # ( !\SW[6]~input_o\ & ( !\SW[7]~input_o\ & ( (\KEY[0]~input_o\) # (\SW[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111110101111101011111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \hex5_decoder|Mux2~0_combout\);

-- Location: LABCELL_X61_Y1_N6
\hex5_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux1~0_combout\ = ( \SW[6]~input_o\ & ( \SW[7]~input_o\ & ( (!\SW[5]~input_o\) # (\KEY[0]~input_o\) ) ) ) # ( !\SW[6]~input_o\ & ( \SW[7]~input_o\ & ( \KEY[0]~input_o\ ) ) ) # ( \SW[6]~input_o\ & ( !\SW[7]~input_o\ & ( ((\SW[5]~input_o\ & 
-- \SW[4]~input_o\)) # (\KEY[0]~input_o\) ) ) ) # ( !\SW[6]~input_o\ & ( !\SW[7]~input_o\ & ( ((\SW[4]~input_o\) # (\KEY[0]~input_o\)) # (\SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111001101110011011100110011001100111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \hex5_decoder|Mux1~0_combout\);

-- Location: LABCELL_X61_Y1_N0
\hex5_decoder|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux0~0_combout\ = ( \SW[6]~input_o\ & ( \SW[7]~input_o\ & ( \KEY[0]~input_o\ ) ) ) # ( !\SW[6]~input_o\ & ( \SW[7]~input_o\ & ( \KEY[0]~input_o\ ) ) ) # ( \SW[6]~input_o\ & ( !\SW[7]~input_o\ & ( ((\SW[5]~input_o\ & \SW[4]~input_o\)) # 
-- (\KEY[0]~input_o\) ) ) ) # ( !\SW[6]~input_o\ & ( !\SW[7]~input_o\ & ( (!\SW[5]~input_o\) # (\KEY[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011001101110011011100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \hex5_decoder|Mux0~0_combout\);

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

-- Location: LABCELL_X45_Y26_N3
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


