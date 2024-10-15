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

-- DATE "10/15/2024 13:40:17"

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
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \toggle_state~DUPLICATE_q\ : std_logic;
SIGNAL \toggle_state~0_combout\ : std_logic;
SIGNAL \toggle_state~feeder_combout\ : std_logic;
SIGNAL \toggle_state~q\ : std_logic;
SIGNAL \hex0_but[2]~2_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \hex0_but[0]~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \hex0_but[3]~3_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \hex0_but[1]~1_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex0_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \hex1_but[1]~1_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \hex1_but[0]~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \hex1_but[2]~2_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \hex1_but[3]~3_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex1_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \hex4_but[1]~1_combout\ : std_logic;
SIGNAL \hex4_but[2]~2_combout\ : std_logic;
SIGNAL \hex4_but[3]~3_combout\ : std_logic;
SIGNAL \hex4_but[0]~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex4_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \hex5_but[0]~0_combout\ : std_logic;
SIGNAL \hex5_but[1]~1_combout\ : std_logic;
SIGNAL \hex5_but[3]~3_combout\ : std_logic;
SIGNAL \hex5_but[2]~2_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \hex5_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_toggle_state~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_toggle_state~0_combout\ : std_logic;
SIGNAL \hex5_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_hex5_but[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_hex5_but[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_hex5_but[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_hex5_but[0]~0_combout\ : std_logic;
SIGNAL \hex4_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_hex4_but[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_hex4_but[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_hex4_but[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_hex4_but[0]~0_combout\ : std_logic;
SIGNAL \hex1_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_hex1_but[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_hex1_but[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_hex1_but[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_hex1_but[0]~0_combout\ : std_logic;
SIGNAL \hex0_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_hex0_but[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_hex0_but[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_hex0_but[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_hex0_but[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_toggle_state~q\ : std_logic;

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
\ALT_INV_toggle_state~DUPLICATE_q\ <= NOT \toggle_state~DUPLICATE_q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_toggle_state~0_combout\ <= NOT \toggle_state~0_combout\;
\hex5_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hex5_decoder|Mux0~0_combout\;
\ALT_INV_hex5_but[3]~3_combout\ <= NOT \hex5_but[3]~3_combout\;
\ALT_INV_hex5_but[2]~2_combout\ <= NOT \hex5_but[2]~2_combout\;
\ALT_INV_hex5_but[1]~1_combout\ <= NOT \hex5_but[1]~1_combout\;
\ALT_INV_hex5_but[0]~0_combout\ <= NOT \hex5_but[0]~0_combout\;
\hex4_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hex4_decoder|Mux0~0_combout\;
\ALT_INV_hex4_but[3]~3_combout\ <= NOT \hex4_but[3]~3_combout\;
\ALT_INV_hex4_but[2]~2_combout\ <= NOT \hex4_but[2]~2_combout\;
\ALT_INV_hex4_but[1]~1_combout\ <= NOT \hex4_but[1]~1_combout\;
\ALT_INV_hex4_but[0]~0_combout\ <= NOT \hex4_but[0]~0_combout\;
\hex1_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hex1_decoder|Mux0~0_combout\;
\ALT_INV_hex1_but[3]~3_combout\ <= NOT \hex1_but[3]~3_combout\;
\ALT_INV_hex1_but[2]~2_combout\ <= NOT \hex1_but[2]~2_combout\;
\ALT_INV_hex1_but[1]~1_combout\ <= NOT \hex1_but[1]~1_combout\;
\ALT_INV_hex1_but[0]~0_combout\ <= NOT \hex1_but[0]~0_combout\;
\hex0_decoder|ALT_INV_Mux0~0_combout\ <= NOT \hex0_decoder|Mux0~0_combout\;
\ALT_INV_hex0_but[3]~3_combout\ <= NOT \hex0_but[3]~3_combout\;
\ALT_INV_hex0_but[2]~2_combout\ <= NOT \hex0_but[2]~2_combout\;
\ALT_INV_hex0_but[1]~1_combout\ <= NOT \hex0_but[1]~1_combout\;
\ALT_INV_hex0_but[0]~0_combout\ <= NOT \hex0_but[0]~0_combout\;
\ALT_INV_toggle_state~q\ <= NOT \toggle_state~q\;

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
	i => \hex1_decoder|ALT_INV_Mux0~0_combout\,
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
	i => \hex4_decoder|ALT_INV_Mux0~0_combout\,
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
	i => \hex5_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

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

-- Location: FF_X23_Y1_N8
\toggle_state~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \toggle_state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toggle_state~DUPLICATE_q\);

-- Location: LABCELL_X23_Y1_N51
\toggle_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \toggle_state~0_combout\ = ( !\toggle_state~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_toggle_state~DUPLICATE_q\,
	combout => \toggle_state~0_combout\);

-- Location: LABCELL_X23_Y1_N6
\toggle_state~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \toggle_state~feeder_combout\ = ( \toggle_state~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_toggle_state~0_combout\,
	combout => \toggle_state~feeder_combout\);

-- Location: FF_X23_Y1_N7
toggle_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \toggle_state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toggle_state~q\);

-- Location: LABCELL_X67_Y1_N36
\hex0_but[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_but[2]~2_combout\ = (\SW[2]~input_o\ & !\toggle_state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_toggle_state~q\,
	combout => \hex0_but[2]~2_combout\);

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

-- Location: LABCELL_X67_Y1_N12
\hex0_but[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_but[0]~0_combout\ = ( \SW[0]~input_o\ & ( !\toggle_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_toggle_state~q\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \hex0_but[0]~0_combout\);

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

-- Location: LABCELL_X63_Y1_N15
\hex0_but[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_but[3]~3_combout\ = ( !\toggle_state~q\ & ( \SW[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_toggle_state~q\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex0_but[3]~3_combout\);

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

-- Location: LABCELL_X67_Y1_N30
\hex0_but[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_but[1]~1_combout\ = (\SW[1]~input_o\ & !\toggle_state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_toggle_state~q\,
	combout => \hex0_but[1]~1_combout\);

-- Location: LABCELL_X67_Y1_N42
\hex0_decoder|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux6~0_combout\ = ( \hex0_but[1]~1_combout\ & ( (!\hex0_but[2]~2_combout\ & (\hex0_but[0]~0_combout\ & \hex0_but[3]~3_combout\)) ) ) # ( !\hex0_but[1]~1_combout\ & ( !\hex0_but[2]~2_combout\ $ (((!\hex0_but[0]~0_combout\) # 
-- (\hex0_but[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001010110010100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex0_but[2]~2_combout\,
	datab => \ALT_INV_hex0_but[0]~0_combout\,
	datac => \ALT_INV_hex0_but[3]~3_combout\,
	dataf => \ALT_INV_hex0_but[1]~1_combout\,
	combout => \hex0_decoder|Mux6~0_combout\);

-- Location: LABCELL_X67_Y1_N45
\hex0_decoder|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux5~0_combout\ = ( \hex0_but[3]~3_combout\ & ( (!\hex0_but[0]~0_combout\ & (\hex0_but[2]~2_combout\)) # (\hex0_but[0]~0_combout\ & ((\hex0_but[1]~1_combout\))) ) ) # ( !\hex0_but[3]~3_combout\ & ( (\hex0_but[2]~2_combout\ & 
-- (!\hex0_but[0]~0_combout\ $ (!\hex0_but[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex0_but[2]~2_combout\,
	datab => \ALT_INV_hex0_but[0]~0_combout\,
	datac => \ALT_INV_hex0_but[1]~1_combout\,
	dataf => \ALT_INV_hex0_but[3]~3_combout\,
	combout => \hex0_decoder|Mux5~0_combout\);

-- Location: LABCELL_X67_Y1_N48
\hex0_decoder|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux4~0_combout\ = ( \hex0_but[1]~1_combout\ & ( (!\hex0_but[2]~2_combout\ & (!\hex0_but[0]~0_combout\ & !\hex0_but[3]~3_combout\)) # (\hex0_but[2]~2_combout\ & ((\hex0_but[3]~3_combout\))) ) ) # ( !\hex0_but[1]~1_combout\ & ( 
-- (!\hex0_but[0]~0_combout\ & (\hex0_but[2]~2_combout\ & \hex0_but[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex0_but[0]~0_combout\,
	datac => \ALT_INV_hex0_but[2]~2_combout\,
	datad => \ALT_INV_hex0_but[3]~3_combout\,
	dataf => \ALT_INV_hex0_but[1]~1_combout\,
	combout => \hex0_decoder|Mux4~0_combout\);

-- Location: LABCELL_X67_Y1_N51
\hex0_decoder|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux3~0_combout\ = ( \hex0_but[1]~1_combout\ & ( (!\hex0_but[2]~2_combout\ & (!\hex0_but[0]~0_combout\ & \hex0_but[3]~3_combout\)) # (\hex0_but[2]~2_combout\ & (\hex0_but[0]~0_combout\)) ) ) # ( !\hex0_but[1]~1_combout\ & ( 
-- (!\hex0_but[2]~2_combout\ & (\hex0_but[0]~0_combout\)) # (\hex0_but[2]~2_combout\ & (!\hex0_but[0]~0_combout\ & !\hex0_but[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001100010011000100110001000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex0_but[2]~2_combout\,
	datab => \ALT_INV_hex0_but[0]~0_combout\,
	datac => \ALT_INV_hex0_but[3]~3_combout\,
	dataf => \ALT_INV_hex0_but[1]~1_combout\,
	combout => \hex0_decoder|Mux3~0_combout\);

-- Location: LABCELL_X67_Y1_N6
\hex0_decoder|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux2~0_combout\ = ( \hex0_but[1]~1_combout\ & ( (\hex0_but[0]~0_combout\ & !\hex0_but[3]~3_combout\) ) ) # ( !\hex0_but[1]~1_combout\ & ( (!\hex0_but[2]~2_combout\ & (\hex0_but[0]~0_combout\)) # (\hex0_but[2]~2_combout\ & 
-- ((!\hex0_but[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110000001111110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex0_but[0]~0_combout\,
	datac => \ALT_INV_hex0_but[2]~2_combout\,
	datad => \ALT_INV_hex0_but[3]~3_combout\,
	dataf => \ALT_INV_hex0_but[1]~1_combout\,
	combout => \hex0_decoder|Mux2~0_combout\);

-- Location: LABCELL_X67_Y1_N9
\hex0_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux1~0_combout\ = ( \hex0_but[1]~1_combout\ & ( (!\hex0_but[3]~3_combout\ & ((!\hex0_but[2]~2_combout\) # (\hex0_but[0]~0_combout\))) ) ) # ( !\hex0_but[1]~1_combout\ & ( (!\hex0_but[2]~2_combout\ & (\hex0_but[0]~0_combout\ & 
-- !\hex0_but[3]~3_combout\)) # (\hex0_but[2]~2_combout\ & ((\hex0_but[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010110110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex0_but[2]~2_combout\,
	datab => \ALT_INV_hex0_but[0]~0_combout\,
	datac => \ALT_INV_hex0_but[3]~3_combout\,
	dataf => \ALT_INV_hex0_but[1]~1_combout\,
	combout => \hex0_decoder|Mux1~0_combout\);

-- Location: LABCELL_X67_Y1_N24
\hex0_decoder|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0_decoder|Mux0~0_combout\ = ( \hex0_but[1]~1_combout\ & ( (!\hex0_but[0]~0_combout\) # ((!\hex0_but[2]~2_combout\) # (\hex0_but[3]~3_combout\)) ) ) # ( !\hex0_but[1]~1_combout\ & ( (\hex0_but[2]~2_combout\) # (\hex0_but[3]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex0_but[0]~0_combout\,
	datac => \ALT_INV_hex0_but[3]~3_combout\,
	datad => \ALT_INV_hex0_but[2]~2_combout\,
	dataf => \ALT_INV_hex0_but[1]~1_combout\,
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

-- Location: LABCELL_X55_Y1_N33
\hex1_but[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_but[1]~1_combout\ = (\SW[5]~input_o\ & !\toggle_state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_toggle_state~q\,
	combout => \hex1_but[1]~1_combout\);

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

-- Location: LABCELL_X55_Y1_N15
\hex1_but[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_but[0]~0_combout\ = (\SW[4]~input_o\ & !\toggle_state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_toggle_state~q\,
	combout => \hex1_but[0]~0_combout\);

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

-- Location: LABCELL_X55_Y1_N27
\hex1_but[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_but[2]~2_combout\ = ( \SW[6]~input_o\ & ( !\toggle_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_toggle_state~q\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \hex1_but[2]~2_combout\);

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

-- Location: LABCELL_X55_Y1_N42
\hex1_but[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_but[3]~3_combout\ = ( \SW[7]~input_o\ & ( !\toggle_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_toggle_state~q\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \hex1_but[3]~3_combout\);

-- Location: LABCELL_X55_Y1_N3
\hex1_decoder|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux6~0_combout\ = ( \hex1_but[2]~2_combout\ & ( \hex1_but[3]~3_combout\ & ( !\hex1_but[1]~1_combout\ ) ) ) # ( !\hex1_but[2]~2_combout\ & ( \hex1_but[3]~3_combout\ & ( (\hex1_but[1]~1_combout\ & \hex1_but[0]~0_combout\) ) ) ) # ( 
-- \hex1_but[2]~2_combout\ & ( !\hex1_but[3]~3_combout\ & ( (!\hex1_but[1]~1_combout\ & !\hex1_but[0]~0_combout\) ) ) ) # ( !\hex1_but[2]~2_combout\ & ( !\hex1_but[3]~3_combout\ & ( (!\hex1_but[1]~1_combout\ & \hex1_but[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101000001010000000000101000001011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex1_but[1]~1_combout\,
	datac => \ALT_INV_hex1_but[0]~0_combout\,
	datae => \ALT_INV_hex1_but[2]~2_combout\,
	dataf => \ALT_INV_hex1_but[3]~3_combout\,
	combout => \hex1_decoder|Mux6~0_combout\);

-- Location: LABCELL_X55_Y1_N9
\hex1_decoder|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux5~0_combout\ = ( \hex1_but[3]~3_combout\ & ( (!\hex1_but[0]~0_combout\ & ((\hex1_but[2]~2_combout\))) # (\hex1_but[0]~0_combout\ & (\hex1_but[1]~1_combout\)) ) ) # ( !\hex1_but[3]~3_combout\ & ( (\hex1_but[2]~2_combout\ & 
-- (!\hex1_but[1]~1_combout\ $ (!\hex1_but[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex1_but[1]~1_combout\,
	datac => \ALT_INV_hex1_but[0]~0_combout\,
	datad => \ALT_INV_hex1_but[2]~2_combout\,
	dataf => \ALT_INV_hex1_but[3]~3_combout\,
	combout => \hex1_decoder|Mux5~0_combout\);

-- Location: LABCELL_X55_Y1_N48
\hex1_decoder|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux4~0_combout\ = ( \hex1_but[0]~0_combout\ & ( (\hex1_but[2]~2_combout\ & (\hex1_but[3]~3_combout\ & \hex1_but[1]~1_combout\)) ) ) # ( !\hex1_but[0]~0_combout\ & ( (!\hex1_but[2]~2_combout\ & (!\hex1_but[3]~3_combout\ & 
-- \hex1_but[1]~1_combout\)) # (\hex1_but[2]~2_combout\ & (\hex1_but[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex1_but[2]~2_combout\,
	datab => \ALT_INV_hex1_but[3]~3_combout\,
	datac => \ALT_INV_hex1_but[1]~1_combout\,
	dataf => \ALT_INV_hex1_but[0]~0_combout\,
	combout => \hex1_decoder|Mux4~0_combout\);

-- Location: LABCELL_X55_Y1_N18
\hex1_decoder|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux3~0_combout\ = ( \hex1_but[3]~3_combout\ & ( (!\hex1_but[0]~0_combout\ & (\hex1_but[1]~1_combout\ & !\hex1_but[2]~2_combout\)) # (\hex1_but[0]~0_combout\ & (!\hex1_but[1]~1_combout\ $ (\hex1_but[2]~2_combout\))) ) ) # ( 
-- !\hex1_but[3]~3_combout\ & ( (!\hex1_but[0]~0_combout\ & (!\hex1_but[1]~1_combout\ & \hex1_but[2]~2_combout\)) # (\hex1_but[0]~0_combout\ & (!\hex1_but[1]~1_combout\ $ (\hex1_but[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011001100001100001100111100000000110011110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex1_but[0]~0_combout\,
	datac => \ALT_INV_hex1_but[1]~1_combout\,
	datad => \ALT_INV_hex1_but[2]~2_combout\,
	dataf => \ALT_INV_hex1_but[3]~3_combout\,
	combout => \hex1_decoder|Mux3~0_combout\);

-- Location: LABCELL_X55_Y1_N36
\hex1_decoder|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux2~0_combout\ = ( \hex1_but[3]~3_combout\ & ( (!\hex1_but[2]~2_combout\ & (\hex1_but[0]~0_combout\ & !\hex1_but[1]~1_combout\)) ) ) # ( !\hex1_but[3]~3_combout\ & ( ((\hex1_but[2]~2_combout\ & !\hex1_but[1]~1_combout\)) # 
-- (\hex1_but[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011100110111001100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex1_but[2]~2_combout\,
	datab => \ALT_INV_hex1_but[0]~0_combout\,
	datac => \ALT_INV_hex1_but[1]~1_combout\,
	dataf => \ALT_INV_hex1_but[3]~3_combout\,
	combout => \hex1_decoder|Mux2~0_combout\);

-- Location: LABCELL_X55_Y1_N51
\hex1_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux1~0_combout\ = ( \hex1_but[1]~1_combout\ & ( (!\hex1_but[3]~3_combout\ & ((!\hex1_but[2]~2_combout\) # (\hex1_but[0]~0_combout\))) ) ) # ( !\hex1_but[1]~1_combout\ & ( (!\hex1_but[2]~2_combout\ & (!\hex1_but[3]~3_combout\ & 
-- \hex1_but[0]~0_combout\)) # (\hex1_but[2]~2_combout\ & (\hex1_but[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100110001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex1_but[2]~2_combout\,
	datab => \ALT_INV_hex1_but[3]~3_combout\,
	datac => \ALT_INV_hex1_but[0]~0_combout\,
	dataf => \ALT_INV_hex1_but[1]~1_combout\,
	combout => \hex1_decoder|Mux1~0_combout\);

-- Location: LABCELL_X55_Y1_N54
\hex1_decoder|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex1_decoder|Mux0~0_combout\ = ( \hex1_but[3]~3_combout\ ) # ( !\hex1_but[3]~3_combout\ & ( (!\hex1_but[2]~2_combout\ & ((\hex1_but[1]~1_combout\))) # (\hex1_but[2]~2_combout\ & ((!\hex1_but[0]~0_combout\) # (!\hex1_but[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111001011110010111100101111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex1_but[2]~2_combout\,
	datab => \ALT_INV_hex1_but[0]~0_combout\,
	datac => \ALT_INV_hex1_but[1]~1_combout\,
	dataf => \ALT_INV_hex1_but[3]~3_combout\,
	combout => \hex1_decoder|Mux0~0_combout\);

-- Location: LABCELL_X67_Y1_N33
\hex4_but[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_but[1]~1_combout\ = (\SW[1]~input_o\ & \toggle_state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_toggle_state~q\,
	combout => \hex4_but[1]~1_combout\);

-- Location: LABCELL_X67_Y1_N39
\hex4_but[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_but[2]~2_combout\ = (\SW[2]~input_o\ & \toggle_state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_toggle_state~q\,
	combout => \hex4_but[2]~2_combout\);

-- Location: LABCELL_X63_Y1_N9
\hex4_but[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_but[3]~3_combout\ = ( \toggle_state~q\ & ( \SW[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_toggle_state~q\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex4_but[3]~3_combout\);

-- Location: LABCELL_X67_Y1_N18
\hex4_but[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_but[0]~0_combout\ = ( \SW[0]~input_o\ & ( \toggle_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_toggle_state~q\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \hex4_but[0]~0_combout\);

-- Location: LABCELL_X67_Y1_N0
\hex4_decoder|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux6~0_combout\ = ( \hex4_but[0]~0_combout\ & ( (!\hex4_but[1]~1_combout\ & (!\hex4_but[2]~2_combout\ $ (\hex4_but[3]~3_combout\))) # (\hex4_but[1]~1_combout\ & (!\hex4_but[2]~2_combout\ & \hex4_but[3]~3_combout\)) ) ) # ( 
-- !\hex4_but[0]~0_combout\ & ( (!\hex4_but[1]~1_combout\ & \hex4_but[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010000110100001101000011010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex4_but[1]~1_combout\,
	datab => \ALT_INV_hex4_but[2]~2_combout\,
	datac => \ALT_INV_hex4_but[3]~3_combout\,
	dataf => \ALT_INV_hex4_but[0]~0_combout\,
	combout => \hex4_decoder|Mux6~0_combout\);

-- Location: LABCELL_X67_Y1_N54
\hex4_decoder|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux5~0_combout\ = ( \hex4_but[0]~0_combout\ & ( (!\hex4_but[1]~1_combout\ & (\hex4_but[2]~2_combout\ & !\hex4_but[3]~3_combout\)) # (\hex4_but[1]~1_combout\ & ((\hex4_but[3]~3_combout\))) ) ) # ( !\hex4_but[0]~0_combout\ & ( 
-- (\hex4_but[2]~2_combout\ & ((\hex4_but[3]~3_combout\) # (\hex4_but[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex4_but[1]~1_combout\,
	datab => \ALT_INV_hex4_but[2]~2_combout\,
	datac => \ALT_INV_hex4_but[3]~3_combout\,
	dataf => \ALT_INV_hex4_but[0]~0_combout\,
	combout => \hex4_decoder|Mux5~0_combout\);

-- Location: LABCELL_X67_Y1_N3
\hex4_decoder|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux4~0_combout\ = ( \hex4_but[0]~0_combout\ & ( (\hex4_but[1]~1_combout\ & (\hex4_but[2]~2_combout\ & \hex4_but[3]~3_combout\)) ) ) # ( !\hex4_but[0]~0_combout\ & ( (!\hex4_but[2]~2_combout\ & (\hex4_but[1]~1_combout\ & 
-- !\hex4_but[3]~3_combout\)) # (\hex4_but[2]~2_combout\ & ((\hex4_but[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000110011010001000011001100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex4_but[1]~1_combout\,
	datab => \ALT_INV_hex4_but[2]~2_combout\,
	datad => \ALT_INV_hex4_but[3]~3_combout\,
	dataf => \ALT_INV_hex4_but[0]~0_combout\,
	combout => \hex4_decoder|Mux4~0_combout\);

-- Location: LABCELL_X67_Y1_N21
\hex4_decoder|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux3~0_combout\ = ( \hex4_but[0]~0_combout\ & ( !\hex4_but[1]~1_combout\ $ (\hex4_but[2]~2_combout\) ) ) # ( !\hex4_but[0]~0_combout\ & ( (!\hex4_but[1]~1_combout\ & (\hex4_but[2]~2_combout\ & !\hex4_but[3]~3_combout\)) # 
-- (\hex4_but[1]~1_combout\ & (!\hex4_but[2]~2_combout\ & \hex4_but[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex4_but[1]~1_combout\,
	datac => \ALT_INV_hex4_but[2]~2_combout\,
	datad => \ALT_INV_hex4_but[3]~3_combout\,
	dataf => \ALT_INV_hex4_but[0]~0_combout\,
	combout => \hex4_decoder|Mux3~0_combout\);

-- Location: LABCELL_X67_Y1_N27
\hex4_decoder|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux2~0_combout\ = ( \hex4_but[0]~0_combout\ & ( (!\hex4_but[3]~3_combout\) # ((!\hex4_but[1]~1_combout\ & !\hex4_but[2]~2_combout\)) ) ) # ( !\hex4_but[0]~0_combout\ & ( (!\hex4_but[1]~1_combout\ & (\hex4_but[2]~2_combout\ & 
-- !\hex4_but[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111111101000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex4_but[1]~1_combout\,
	datac => \ALT_INV_hex4_but[2]~2_combout\,
	datad => \ALT_INV_hex4_but[3]~3_combout\,
	dataf => \ALT_INV_hex4_but[0]~0_combout\,
	combout => \hex4_decoder|Mux2~0_combout\);

-- Location: LABCELL_X67_Y1_N15
\hex4_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux1~0_combout\ = ( \hex4_but[0]~0_combout\ & ( !\hex4_but[3]~3_combout\ $ (((!\hex4_but[1]~1_combout\ & \hex4_but[2]~2_combout\))) ) ) # ( !\hex4_but[0]~0_combout\ & ( (!\hex4_but[1]~1_combout\ & (\hex4_but[2]~2_combout\ & 
-- \hex4_but[3]~3_combout\)) # (\hex4_but[1]~1_combout\ & (!\hex4_but[2]~2_combout\ & !\hex4_but[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101011110101000010101111010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex4_but[1]~1_combout\,
	datac => \ALT_INV_hex4_but[2]~2_combout\,
	datad => \ALT_INV_hex4_but[3]~3_combout\,
	dataf => \ALT_INV_hex4_but[0]~0_combout\,
	combout => \hex4_decoder|Mux1~0_combout\);

-- Location: LABCELL_X67_Y1_N57
\hex4_decoder|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4_decoder|Mux0~0_combout\ = ( \hex4_but[0]~0_combout\ & ( (!\hex4_but[1]~1_combout\ $ (!\hex4_but[2]~2_combout\)) # (\hex4_but[3]~3_combout\) ) ) # ( !\hex4_but[0]~0_combout\ & ( ((\hex4_but[3]~3_combout\) # (\hex4_but[2]~2_combout\)) # 
-- (\hex4_but[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111101100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex4_but[1]~1_combout\,
	datab => \ALT_INV_hex4_but[2]~2_combout\,
	datad => \ALT_INV_hex4_but[3]~3_combout\,
	dataf => \ALT_INV_hex4_but[0]~0_combout\,
	combout => \hex4_decoder|Mux0~0_combout\);

-- Location: LABCELL_X55_Y1_N45
\hex5_but[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_but[0]~0_combout\ = (\toggle_state~q\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_toggle_state~q\,
	datad => \ALT_INV_SW[4]~input_o\,
	combout => \hex5_but[0]~0_combout\);

-- Location: LABCELL_X55_Y1_N30
\hex5_but[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_but[1]~1_combout\ = (\SW[5]~input_o\ & \toggle_state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_toggle_state~q\,
	combout => \hex5_but[1]~1_combout\);

-- Location: LABCELL_X55_Y1_N57
\hex5_but[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_but[3]~3_combout\ = ( \SW[7]~input_o\ & ( \toggle_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_toggle_state~q\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \hex5_but[3]~3_combout\);

-- Location: LABCELL_X55_Y1_N39
\hex5_but[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_but[2]~2_combout\ = ( \SW[6]~input_o\ & ( \toggle_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_toggle_state~q\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \hex5_but[2]~2_combout\);

-- Location: LABCELL_X55_Y1_N12
\hex5_decoder|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux6~0_combout\ = ( \hex5_but[2]~2_combout\ & ( (!\hex5_but[1]~1_combout\ & ((!\hex5_but[0]~0_combout\) # (\hex5_but[3]~3_combout\))) ) ) # ( !\hex5_but[2]~2_combout\ & ( (\hex5_but[0]~0_combout\ & (!\hex5_but[1]~1_combout\ $ 
-- (\hex5_but[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex5_but[0]~0_combout\,
	datac => \ALT_INV_hex5_but[1]~1_combout\,
	datad => \ALT_INV_hex5_but[3]~3_combout\,
	dataf => \ALT_INV_hex5_but[2]~2_combout\,
	combout => \hex5_decoder|Mux6~0_combout\);

-- Location: LABCELL_X50_Y1_N51
\hex5_decoder|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux5~0_combout\ = ( \hex5_but[1]~1_combout\ & ( \hex5_but[3]~3_combout\ & ( (\hex5_but[0]~0_combout\) # (\hex5_but[2]~2_combout\) ) ) ) # ( !\hex5_but[1]~1_combout\ & ( \hex5_but[3]~3_combout\ & ( (\hex5_but[2]~2_combout\ & 
-- !\hex5_but[0]~0_combout\) ) ) ) # ( \hex5_but[1]~1_combout\ & ( !\hex5_but[3]~3_combout\ & ( (\hex5_but[2]~2_combout\ & !\hex5_but[0]~0_combout\) ) ) ) # ( !\hex5_but[1]~1_combout\ & ( !\hex5_but[3]~3_combout\ & ( (\hex5_but[2]~2_combout\ & 
-- \hex5_but[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000001010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex5_but[2]~2_combout\,
	datac => \ALT_INV_hex5_but[0]~0_combout\,
	datae => \ALT_INV_hex5_but[1]~1_combout\,
	dataf => \ALT_INV_hex5_but[3]~3_combout\,
	combout => \hex5_decoder|Mux5~0_combout\);

-- Location: LABCELL_X50_Y1_N57
\hex5_decoder|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux4~0_combout\ = ( \hex5_but[1]~1_combout\ & ( \hex5_but[3]~3_combout\ & ( \hex5_but[2]~2_combout\ ) ) ) # ( !\hex5_but[1]~1_combout\ & ( \hex5_but[3]~3_combout\ & ( (\hex5_but[2]~2_combout\ & !\hex5_but[0]~0_combout\) ) ) ) # ( 
-- \hex5_but[1]~1_combout\ & ( !\hex5_but[3]~3_combout\ & ( (!\hex5_but[2]~2_combout\ & !\hex5_but[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000001010000010100000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex5_but[2]~2_combout\,
	datac => \ALT_INV_hex5_but[0]~0_combout\,
	datae => \ALT_INV_hex5_but[1]~1_combout\,
	dataf => \ALT_INV_hex5_but[3]~3_combout\,
	combout => \hex5_decoder|Mux4~0_combout\);

-- Location: LABCELL_X50_Y1_N36
\hex5_decoder|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux3~0_combout\ = ( \hex5_but[1]~1_combout\ & ( \hex5_but[0]~0_combout\ & ( \hex5_but[2]~2_combout\ ) ) ) # ( !\hex5_but[1]~1_combout\ & ( \hex5_but[0]~0_combout\ & ( !\hex5_but[2]~2_combout\ ) ) ) # ( \hex5_but[1]~1_combout\ & ( 
-- !\hex5_but[0]~0_combout\ & ( (\hex5_but[3]~3_combout\ & !\hex5_but[2]~2_combout\) ) ) ) # ( !\hex5_but[1]~1_combout\ & ( !\hex5_but[0]~0_combout\ & ( (!\hex5_but[3]~3_combout\ & \hex5_but[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001100000011000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex5_but[3]~3_combout\,
	datac => \ALT_INV_hex5_but[2]~2_combout\,
	datae => \ALT_INV_hex5_but[1]~1_combout\,
	dataf => \ALT_INV_hex5_but[0]~0_combout\,
	combout => \hex5_decoder|Mux3~0_combout\);

-- Location: LABCELL_X55_Y1_N21
\hex5_decoder|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux2~0_combout\ = ( \hex5_but[2]~2_combout\ & ( (!\hex5_but[3]~3_combout\ & ((!\hex5_but[1]~1_combout\) # (\hex5_but[0]~0_combout\))) ) ) # ( !\hex5_but[2]~2_combout\ & ( (\hex5_but[0]~0_combout\ & ((!\hex5_but[1]~1_combout\) # 
-- (!\hex5_but[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hex5_but[1]~1_combout\,
	datac => \ALT_INV_hex5_but[3]~3_combout\,
	datad => \ALT_INV_hex5_but[0]~0_combout\,
	dataf => \ALT_INV_hex5_but[2]~2_combout\,
	combout => \hex5_decoder|Mux2~0_combout\);

-- Location: LABCELL_X50_Y1_N18
\hex5_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux1~0_combout\ = ( \hex5_but[1]~1_combout\ & ( \hex5_but[0]~0_combout\ & ( !\hex5_but[3]~3_combout\ ) ) ) # ( !\hex5_but[1]~1_combout\ & ( \hex5_but[0]~0_combout\ & ( !\hex5_but[3]~3_combout\ $ (\hex5_but[2]~2_combout\) ) ) ) # ( 
-- \hex5_but[1]~1_combout\ & ( !\hex5_but[0]~0_combout\ & ( (!\hex5_but[3]~3_combout\ & !\hex5_but[2]~2_combout\) ) ) ) # ( !\hex5_but[1]~1_combout\ & ( !\hex5_but[0]~0_combout\ & ( (\hex5_but[3]~3_combout\ & \hex5_but[2]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000001100000011000011110000111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex5_but[3]~3_combout\,
	datac => \ALT_INV_hex5_but[2]~2_combout\,
	datae => \ALT_INV_hex5_but[1]~1_combout\,
	dataf => \ALT_INV_hex5_but[0]~0_combout\,
	combout => \hex5_decoder|Mux1~0_combout\);

-- Location: LABCELL_X55_Y1_N6
\hex5_decoder|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5_decoder|Mux0~0_combout\ = ( \hex5_but[2]~2_combout\ & ( (!\hex5_but[0]~0_combout\) # ((!\hex5_but[1]~1_combout\) # (\hex5_but[3]~3_combout\)) ) ) # ( !\hex5_but[2]~2_combout\ & ( (\hex5_but[3]~3_combout\) # (\hex5_but[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hex5_but[0]~0_combout\,
	datac => \ALT_INV_hex5_but[1]~1_combout\,
	datad => \ALT_INV_hex5_but[3]~3_combout\,
	dataf => \ALT_INV_hex5_but[2]~2_combout\,
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

-- Location: LABCELL_X29_Y17_N0
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


