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

-- DATE "11/24/2024 21:15:47"

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

ENTITY 	AlarmSystem IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END AlarmSystem;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AlarmSystem IS
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Blinky|scale|Add0~13_sumout\ : std_logic;
SIGNAL \Blinky|scale|Equal0~1_combout\ : std_logic;
SIGNAL \Blinky|scale|Equal0~3_combout\ : std_logic;
SIGNAL \Blinky|scale|Equal0~2_combout\ : std_logic;
SIGNAL \Blinky|scale|Equal0~0_combout\ : std_logic;
SIGNAL \Blinky|scale|Equal0~4_combout\ : std_logic;
SIGNAL \Blinky|scale|Add0~14\ : std_logic;
SIGNAL \Blinky|scale|Add0~97_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~98\ : std_logic;
SIGNAL \Blinky|scale|Add0~93_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~94\ : std_logic;
SIGNAL \Blinky|scale|Add0~89_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~90\ : std_logic;
SIGNAL \Blinky|scale|Add0~85_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~86\ : std_logic;
SIGNAL \Blinky|scale|Add0~81_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~82\ : std_logic;
SIGNAL \Blinky|scale|Add0~77_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~78\ : std_logic;
SIGNAL \Blinky|scale|Add0~73_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~74\ : std_logic;
SIGNAL \Blinky|scale|Add0~69_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~70\ : std_logic;
SIGNAL \Blinky|scale|Add0~65_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~66\ : std_logic;
SIGNAL \Blinky|scale|Add0~61_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~62\ : std_logic;
SIGNAL \Blinky|scale|Add0~57_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~58\ : std_logic;
SIGNAL \Blinky|scale|Add0~53_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~54\ : std_logic;
SIGNAL \Blinky|scale|Add0~9_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~10\ : std_logic;
SIGNAL \Blinky|scale|Add0~49_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~50\ : std_logic;
SIGNAL \Blinky|scale|Add0~45_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~46\ : std_logic;
SIGNAL \Blinky|scale|Add0~41_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~42\ : std_logic;
SIGNAL \Blinky|scale|Add0~37_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~38\ : std_logic;
SIGNAL \Blinky|scale|Add0~33_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~34\ : std_logic;
SIGNAL \Blinky|scale|Add0~29_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~30\ : std_logic;
SIGNAL \Blinky|scale|Add0~25_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~26\ : std_logic;
SIGNAL \Blinky|scale|Add0~21_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~22\ : std_logic;
SIGNAL \Blinky|scale|Add0~17_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~18\ : std_logic;
SIGNAL \Blinky|scale|Add0~5_sumout\ : std_logic;
SIGNAL \Blinky|scale|Add0~6\ : std_logic;
SIGNAL \Blinky|scale|Add0~1_sumout\ : std_logic;
SIGNAL \Blinky|blink~0_combout\ : std_logic;
SIGNAL \Blinky|blink~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \DSystem|Selector0~0_combout\ : std_logic;
SIGNAL \DSystem|current_state.A~q\ : std_logic;
SIGNAL \DSystem|Selector0~1_combout\ : std_logic;
SIGNAL \DSystem|current_state.B~q\ : std_logic;
SIGNAL \DSystem|Selector0~3_combout\ : std_logic;
SIGNAL \DSystem|current_state.C~q\ : std_logic;
SIGNAL \DSystem|Selector0~2_combout\ : std_logic;
SIGNAL \DSystem|current_state.D~q\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \trigger~0_combout\ : std_logic;
SIGNAL \Blinky|red_LEDs[0]~0_combout\ : std_logic;
SIGNAL \DSystem|SSeg1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Blinky|scale|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \Blinky|scale|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \Blinky|scale|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \Blinky|scale|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \Blinky|scale|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \DSystem|ALT_INV_current_state.C~q\ : std_logic;
SIGNAL \ALT_INV_trigger~0_combout\ : std_logic;
SIGNAL \DSystem|ALT_INV_current_state.D~q\ : std_logic;
SIGNAL \DSystem|ALT_INV_current_state.B~q\ : std_logic;
SIGNAL \DSystem|ALT_INV_current_state.A~q\ : std_logic;
SIGNAL \Blinky|ALT_INV_red_LEDs[0]~0_combout\ : std_logic;
SIGNAL \Blinky|ALT_INV_blink~q\ : std_logic;
SIGNAL \Blinky|scale|ALT_INV_counter\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\Blinky|scale|ALT_INV_Equal0~3_combout\ <= NOT \Blinky|scale|Equal0~3_combout\;
\Blinky|scale|ALT_INV_Equal0~2_combout\ <= NOT \Blinky|scale|Equal0~2_combout\;
\Blinky|scale|ALT_INV_Equal0~1_combout\ <= NOT \Blinky|scale|Equal0~1_combout\;
\Blinky|scale|ALT_INV_Equal0~0_combout\ <= NOT \Blinky|scale|Equal0~0_combout\;
\DSystem|ALT_INV_current_state.C~q\ <= NOT \DSystem|current_state.C~q\;
\ALT_INV_trigger~0_combout\ <= NOT \trigger~0_combout\;
\DSystem|ALT_INV_current_state.D~q\ <= NOT \DSystem|current_state.D~q\;
\DSystem|ALT_INV_current_state.B~q\ <= NOT \DSystem|current_state.B~q\;
\DSystem|ALT_INV_current_state.A~q\ <= NOT \DSystem|current_state.A~q\;
\Blinky|ALT_INV_red_LEDs[0]~0_combout\ <= NOT \Blinky|red_LEDs[0]~0_combout\;
\Blinky|ALT_INV_blink~q\ <= NOT \Blinky|blink~q\;
\Blinky|scale|ALT_INV_counter\(1) <= NOT \Blinky|scale|counter\(1);
\Blinky|scale|ALT_INV_counter\(2) <= NOT \Blinky|scale|counter\(2);
\Blinky|scale|ALT_INV_counter\(3) <= NOT \Blinky|scale|counter\(3);
\Blinky|scale|ALT_INV_counter\(4) <= NOT \Blinky|scale|counter\(4);
\Blinky|scale|ALT_INV_counter\(5) <= NOT \Blinky|scale|counter\(5);
\Blinky|scale|ALT_INV_counter\(6) <= NOT \Blinky|scale|counter\(6);
\Blinky|scale|ALT_INV_counter\(7) <= NOT \Blinky|scale|counter\(7);
\Blinky|scale|ALT_INV_counter\(8) <= NOT \Blinky|scale|counter\(8);
\Blinky|scale|ALT_INV_counter\(9) <= NOT \Blinky|scale|counter\(9);
\Blinky|scale|ALT_INV_counter\(10) <= NOT \Blinky|scale|counter\(10);
\Blinky|scale|ALT_INV_counter\(11) <= NOT \Blinky|scale|counter\(11);
\Blinky|scale|ALT_INV_counter\(12) <= NOT \Blinky|scale|counter\(12);
\Blinky|scale|ALT_INV_counter\(14) <= NOT \Blinky|scale|counter\(14);
\Blinky|scale|ALT_INV_counter\(15) <= NOT \Blinky|scale|counter\(15);
\Blinky|scale|ALT_INV_counter\(16) <= NOT \Blinky|scale|counter\(16);
\Blinky|scale|ALT_INV_counter\(17) <= NOT \Blinky|scale|counter\(17);
\Blinky|scale|ALT_INV_counter\(18) <= NOT \Blinky|scale|counter\(18);
\Blinky|scale|ALT_INV_counter\(19) <= NOT \Blinky|scale|counter\(19);
\Blinky|scale|ALT_INV_counter\(20) <= NOT \Blinky|scale|counter\(20);
\Blinky|scale|ALT_INV_counter\(21) <= NOT \Blinky|scale|counter\(21);
\Blinky|scale|ALT_INV_counter\(22) <= NOT \Blinky|scale|counter\(22);
\Blinky|scale|ALT_INV_counter\(23) <= NOT \Blinky|scale|counter\(23);
\Blinky|scale|ALT_INV_counter\(0) <= NOT \Blinky|scale|counter\(0);
\Blinky|scale|ALT_INV_counter\(13) <= NOT \Blinky|scale|counter\(13);
\Blinky|scale|ALT_INV_counter\(24) <= NOT \Blinky|scale|counter\(24);

-- Location: IOOBUF_X89_Y11_N45
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
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
	i => \Blinky|red_LEDs[0]~0_combout\,
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
	i => \Blinky|red_LEDs[0]~0_combout\,
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
	i => \Blinky|red_LEDs[0]~0_combout\,
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
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X86_Y0_N36
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X88_Y0_N54
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X74_Y0_N59
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y9_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X86_Y0_N2
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(10));

-- Location: IOOBUF_X89_Y8_N39
\LEDR[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(11));

-- Location: IOOBUF_X40_Y0_N2
\LEDR[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(12));

-- Location: IOOBUF_X89_Y11_N79
\LEDR[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(13));

-- Location: IOOBUF_X89_Y8_N56
\LEDR[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(14));

-- Location: IOOBUF_X40_Y0_N19
\LEDR[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(15));

-- Location: IOOBUF_X40_Y0_N36
\LEDR[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(16));

-- Location: IOOBUF_X89_Y9_N39
\LEDR[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(17));

-- Location: IOOBUF_X70_Y0_N19
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
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
	i => VCC,
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
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
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
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
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
	i => VCC,
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
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
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
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X82_Y0_N59
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
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
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
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
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
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
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
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
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
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
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
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
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X84_Y0_N2
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X80_Y0_N19
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X76_Y0_N19
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X84_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X76_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X72_Y0_N19
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X82_Y0_N42
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Blinky|ALT_INV_red_LEDs[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X88_Y0_N3
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DSystem|ALT_INV_current_state.A~q\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X56_Y0_N19
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DSystem|ALT_INV_current_state.A~q\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X68_Y0_N19
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DSystem|ALT_INV_current_state.A~q\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X68_Y0_N2
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DSystem|ALT_INV_current_state.A~q\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X72_Y0_N2
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X50_Y0_N59
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X52_Y0_N19
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DSystem|ALT_INV_current_state.A~q\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X52_Y0_N53
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => \DSystem|SSeg1\(1),
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
	i => \DSystem|SSeg1\(1),
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X60_Y0_N19
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DSystem|ALT_INV_current_state.D~q\,
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
	i => \DSystem|ALT_INV_current_state.D~q\,
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
	i => VCC,
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
	i => \DSystem|ALT_INV_current_state.D~q\,
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
	i => \DSystem|ALT_INV_current_state.D~q\,
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
	i => VCC,
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
	i => \DSystem|ALT_INV_current_state.D~q\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

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

-- Location: LABCELL_X31_Y3_N30
\Blinky|scale|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~13_sumout\ = SUM(( \Blinky|scale|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \Blinky|scale|Add0~14\ = CARRY(( \Blinky|scale|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Blinky|scale|ALT_INV_counter\(0),
	cin => GND,
	sumout => \Blinky|scale|Add0~13_sumout\,
	cout => \Blinky|scale|Add0~14\);

-- Location: LABCELL_X30_Y2_N12
\Blinky|scale|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Equal0~1_combout\ = ( !\Blinky|scale|counter\(17) & ( \Blinky|scale|counter\(18) & ( (\Blinky|scale|counter\(14) & (!\Blinky|scale|counter\(15) & \Blinky|scale|counter\(16))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Blinky|scale|ALT_INV_counter\(14),
	datac => \Blinky|scale|ALT_INV_counter\(15),
	datad => \Blinky|scale|ALT_INV_counter\(16),
	datae => \Blinky|scale|ALT_INV_counter\(17),
	dataf => \Blinky|scale|ALT_INV_counter\(18),
	combout => \Blinky|scale|Equal0~1_combout\);

-- Location: LABCELL_X31_Y3_N6
\Blinky|scale|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Equal0~3_combout\ = ( \Blinky|scale|counter\(5) & ( !\Blinky|scale|counter\(6) & ( (\Blinky|scale|counter\(2) & (\Blinky|scale|counter\(4) & (\Blinky|scale|counter\(1) & \Blinky|scale|counter\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Blinky|scale|ALT_INV_counter\(2),
	datab => \Blinky|scale|ALT_INV_counter\(4),
	datac => \Blinky|scale|ALT_INV_counter\(1),
	datad => \Blinky|scale|ALT_INV_counter\(3),
	datae => \Blinky|scale|ALT_INV_counter\(5),
	dataf => \Blinky|scale|ALT_INV_counter\(6),
	combout => \Blinky|scale|Equal0~3_combout\);

-- Location: LABCELL_X31_Y3_N12
\Blinky|scale|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Equal0~2_combout\ = ( \Blinky|scale|counter\(11) & ( \Blinky|scale|counter\(12) & ( (!\Blinky|scale|counter\(7) & (!\Blinky|scale|counter\(9) & (!\Blinky|scale|counter\(8) & !\Blinky|scale|counter\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Blinky|scale|ALT_INV_counter\(7),
	datab => \Blinky|scale|ALT_INV_counter\(9),
	datac => \Blinky|scale|ALT_INV_counter\(8),
	datad => \Blinky|scale|ALT_INV_counter\(10),
	datae => \Blinky|scale|ALT_INV_counter\(11),
	dataf => \Blinky|scale|ALT_INV_counter\(12),
	combout => \Blinky|scale|Equal0~2_combout\);

-- Location: LABCELL_X31_Y2_N48
\Blinky|scale|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Equal0~0_combout\ = ( \Blinky|scale|counter\(22) & ( \Blinky|scale|counter\(24) & ( (\Blinky|scale|counter\(19) & (\Blinky|scale|counter\(20) & (\Blinky|scale|counter\(21) & !\Blinky|scale|counter\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Blinky|scale|ALT_INV_counter\(19),
	datab => \Blinky|scale|ALT_INV_counter\(20),
	datac => \Blinky|scale|ALT_INV_counter\(21),
	datad => \Blinky|scale|ALT_INV_counter\(23),
	datae => \Blinky|scale|ALT_INV_counter\(22),
	dataf => \Blinky|scale|ALT_INV_counter\(24),
	combout => \Blinky|scale|Equal0~0_combout\);

-- Location: LABCELL_X31_Y2_N54
\Blinky|scale|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Equal0~4_combout\ = ( \Blinky|scale|counter\(0) & ( \Blinky|scale|Equal0~0_combout\ & ( (\Blinky|scale|Equal0~1_combout\ & (\Blinky|scale|counter\(13) & (\Blinky|scale|Equal0~3_combout\ & \Blinky|scale|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Blinky|scale|ALT_INV_Equal0~1_combout\,
	datab => \Blinky|scale|ALT_INV_counter\(13),
	datac => \Blinky|scale|ALT_INV_Equal0~3_combout\,
	datad => \Blinky|scale|ALT_INV_Equal0~2_combout\,
	datae => \Blinky|scale|ALT_INV_counter\(0),
	dataf => \Blinky|scale|ALT_INV_Equal0~0_combout\,
	combout => \Blinky|scale|Equal0~4_combout\);

-- Location: FF_X31_Y3_N32
\Blinky|scale|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~13_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(0));

-- Location: LABCELL_X31_Y3_N33
\Blinky|scale|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~97_sumout\ = SUM(( \Blinky|scale|counter\(1) ) + ( GND ) + ( \Blinky|scale|Add0~14\ ))
-- \Blinky|scale|Add0~98\ = CARRY(( \Blinky|scale|counter\(1) ) + ( GND ) + ( \Blinky|scale|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Blinky|scale|ALT_INV_counter\(1),
	cin => \Blinky|scale|Add0~14\,
	sumout => \Blinky|scale|Add0~97_sumout\,
	cout => \Blinky|scale|Add0~98\);

-- Location: FF_X31_Y3_N35
\Blinky|scale|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~97_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(1));

-- Location: LABCELL_X31_Y3_N36
\Blinky|scale|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~93_sumout\ = SUM(( \Blinky|scale|counter\(2) ) + ( GND ) + ( \Blinky|scale|Add0~98\ ))
-- \Blinky|scale|Add0~94\ = CARRY(( \Blinky|scale|counter\(2) ) + ( GND ) + ( \Blinky|scale|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Blinky|scale|ALT_INV_counter\(2),
	cin => \Blinky|scale|Add0~98\,
	sumout => \Blinky|scale|Add0~93_sumout\,
	cout => \Blinky|scale|Add0~94\);

-- Location: FF_X31_Y3_N38
\Blinky|scale|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~93_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(2));

-- Location: LABCELL_X31_Y3_N39
\Blinky|scale|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~89_sumout\ = SUM(( \Blinky|scale|counter\(3) ) + ( GND ) + ( \Blinky|scale|Add0~94\ ))
-- \Blinky|scale|Add0~90\ = CARRY(( \Blinky|scale|counter\(3) ) + ( GND ) + ( \Blinky|scale|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Blinky|scale|ALT_INV_counter\(3),
	cin => \Blinky|scale|Add0~94\,
	sumout => \Blinky|scale|Add0~89_sumout\,
	cout => \Blinky|scale|Add0~90\);

-- Location: FF_X31_Y3_N41
\Blinky|scale|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~89_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(3));

-- Location: LABCELL_X31_Y3_N42
\Blinky|scale|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~85_sumout\ = SUM(( \Blinky|scale|counter\(4) ) + ( GND ) + ( \Blinky|scale|Add0~90\ ))
-- \Blinky|scale|Add0~86\ = CARRY(( \Blinky|scale|counter\(4) ) + ( GND ) + ( \Blinky|scale|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Blinky|scale|ALT_INV_counter\(4),
	cin => \Blinky|scale|Add0~90\,
	sumout => \Blinky|scale|Add0~85_sumout\,
	cout => \Blinky|scale|Add0~86\);

-- Location: FF_X31_Y3_N44
\Blinky|scale|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~85_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(4));

-- Location: LABCELL_X31_Y3_N45
\Blinky|scale|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~81_sumout\ = SUM(( \Blinky|scale|counter\(5) ) + ( GND ) + ( \Blinky|scale|Add0~86\ ))
-- \Blinky|scale|Add0~82\ = CARRY(( \Blinky|scale|counter\(5) ) + ( GND ) + ( \Blinky|scale|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Blinky|scale|ALT_INV_counter\(5),
	cin => \Blinky|scale|Add0~86\,
	sumout => \Blinky|scale|Add0~81_sumout\,
	cout => \Blinky|scale|Add0~82\);

-- Location: FF_X31_Y3_N47
\Blinky|scale|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~81_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(5));

-- Location: LABCELL_X31_Y3_N48
\Blinky|scale|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~77_sumout\ = SUM(( \Blinky|scale|counter\(6) ) + ( GND ) + ( \Blinky|scale|Add0~82\ ))
-- \Blinky|scale|Add0~78\ = CARRY(( \Blinky|scale|counter\(6) ) + ( GND ) + ( \Blinky|scale|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Blinky|scale|ALT_INV_counter\(6),
	cin => \Blinky|scale|Add0~82\,
	sumout => \Blinky|scale|Add0~77_sumout\,
	cout => \Blinky|scale|Add0~78\);

-- Location: FF_X31_Y3_N50
\Blinky|scale|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~77_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(6));

-- Location: LABCELL_X31_Y3_N51
\Blinky|scale|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~73_sumout\ = SUM(( \Blinky|scale|counter\(7) ) + ( GND ) + ( \Blinky|scale|Add0~78\ ))
-- \Blinky|scale|Add0~74\ = CARRY(( \Blinky|scale|counter\(7) ) + ( GND ) + ( \Blinky|scale|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Blinky|scale|ALT_INV_counter\(7),
	cin => \Blinky|scale|Add0~78\,
	sumout => \Blinky|scale|Add0~73_sumout\,
	cout => \Blinky|scale|Add0~74\);

-- Location: FF_X31_Y3_N53
\Blinky|scale|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~73_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(7));

-- Location: LABCELL_X31_Y3_N54
\Blinky|scale|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~69_sumout\ = SUM(( \Blinky|scale|counter\(8) ) + ( GND ) + ( \Blinky|scale|Add0~74\ ))
-- \Blinky|scale|Add0~70\ = CARRY(( \Blinky|scale|counter\(8) ) + ( GND ) + ( \Blinky|scale|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Blinky|scale|ALT_INV_counter\(8),
	cin => \Blinky|scale|Add0~74\,
	sumout => \Blinky|scale|Add0~69_sumout\,
	cout => \Blinky|scale|Add0~70\);

-- Location: FF_X31_Y3_N56
\Blinky|scale|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~69_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(8));

-- Location: LABCELL_X31_Y3_N57
\Blinky|scale|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~65_sumout\ = SUM(( \Blinky|scale|counter\(9) ) + ( GND ) + ( \Blinky|scale|Add0~70\ ))
-- \Blinky|scale|Add0~66\ = CARRY(( \Blinky|scale|counter\(9) ) + ( GND ) + ( \Blinky|scale|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Blinky|scale|ALT_INV_counter\(9),
	cin => \Blinky|scale|Add0~70\,
	sumout => \Blinky|scale|Add0~65_sumout\,
	cout => \Blinky|scale|Add0~66\);

-- Location: FF_X31_Y3_N59
\Blinky|scale|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~65_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(9));

-- Location: LABCELL_X31_Y2_N0
\Blinky|scale|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~61_sumout\ = SUM(( \Blinky|scale|counter\(10) ) + ( GND ) + ( \Blinky|scale|Add0~66\ ))
-- \Blinky|scale|Add0~62\ = CARRY(( \Blinky|scale|counter\(10) ) + ( GND ) + ( \Blinky|scale|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Blinky|scale|ALT_INV_counter\(10),
	cin => \Blinky|scale|Add0~66\,
	sumout => \Blinky|scale|Add0~61_sumout\,
	cout => \Blinky|scale|Add0~62\);

-- Location: FF_X31_Y2_N2
\Blinky|scale|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~61_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(10));

-- Location: LABCELL_X31_Y2_N3
\Blinky|scale|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~57_sumout\ = SUM(( \Blinky|scale|counter\(11) ) + ( GND ) + ( \Blinky|scale|Add0~62\ ))
-- \Blinky|scale|Add0~58\ = CARRY(( \Blinky|scale|counter\(11) ) + ( GND ) + ( \Blinky|scale|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Blinky|scale|ALT_INV_counter\(11),
	cin => \Blinky|scale|Add0~62\,
	sumout => \Blinky|scale|Add0~57_sumout\,
	cout => \Blinky|scale|Add0~58\);

-- Location: FF_X31_Y2_N5
\Blinky|scale|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~57_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(11));

-- Location: LABCELL_X31_Y2_N6
\Blinky|scale|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~53_sumout\ = SUM(( \Blinky|scale|counter\(12) ) + ( GND ) + ( \Blinky|scale|Add0~58\ ))
-- \Blinky|scale|Add0~54\ = CARRY(( \Blinky|scale|counter\(12) ) + ( GND ) + ( \Blinky|scale|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Blinky|scale|ALT_INV_counter\(12),
	cin => \Blinky|scale|Add0~58\,
	sumout => \Blinky|scale|Add0~53_sumout\,
	cout => \Blinky|scale|Add0~54\);

-- Location: FF_X31_Y2_N8
\Blinky|scale|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~53_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(12));

-- Location: LABCELL_X31_Y2_N9
\Blinky|scale|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~9_sumout\ = SUM(( \Blinky|scale|counter\(13) ) + ( GND ) + ( \Blinky|scale|Add0~54\ ))
-- \Blinky|scale|Add0~10\ = CARRY(( \Blinky|scale|counter\(13) ) + ( GND ) + ( \Blinky|scale|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Blinky|scale|ALT_INV_counter\(13),
	cin => \Blinky|scale|Add0~54\,
	sumout => \Blinky|scale|Add0~9_sumout\,
	cout => \Blinky|scale|Add0~10\);

-- Location: FF_X31_Y2_N11
\Blinky|scale|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~9_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(13));

-- Location: LABCELL_X31_Y2_N12
\Blinky|scale|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~49_sumout\ = SUM(( \Blinky|scale|counter\(14) ) + ( GND ) + ( \Blinky|scale|Add0~10\ ))
-- \Blinky|scale|Add0~50\ = CARRY(( \Blinky|scale|counter\(14) ) + ( GND ) + ( \Blinky|scale|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Blinky|scale|ALT_INV_counter\(14),
	cin => \Blinky|scale|Add0~10\,
	sumout => \Blinky|scale|Add0~49_sumout\,
	cout => \Blinky|scale|Add0~50\);

-- Location: FF_X31_Y2_N14
\Blinky|scale|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~49_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(14));

-- Location: LABCELL_X31_Y2_N15
\Blinky|scale|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~45_sumout\ = SUM(( \Blinky|scale|counter\(15) ) + ( GND ) + ( \Blinky|scale|Add0~50\ ))
-- \Blinky|scale|Add0~46\ = CARRY(( \Blinky|scale|counter\(15) ) + ( GND ) + ( \Blinky|scale|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Blinky|scale|ALT_INV_counter\(15),
	cin => \Blinky|scale|Add0~50\,
	sumout => \Blinky|scale|Add0~45_sumout\,
	cout => \Blinky|scale|Add0~46\);

-- Location: FF_X31_Y2_N17
\Blinky|scale|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~45_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(15));

-- Location: LABCELL_X31_Y2_N18
\Blinky|scale|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~41_sumout\ = SUM(( \Blinky|scale|counter\(16) ) + ( GND ) + ( \Blinky|scale|Add0~46\ ))
-- \Blinky|scale|Add0~42\ = CARRY(( \Blinky|scale|counter\(16) ) + ( GND ) + ( \Blinky|scale|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Blinky|scale|ALT_INV_counter\(16),
	cin => \Blinky|scale|Add0~46\,
	sumout => \Blinky|scale|Add0~41_sumout\,
	cout => \Blinky|scale|Add0~42\);

-- Location: FF_X31_Y2_N20
\Blinky|scale|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~41_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(16));

-- Location: LABCELL_X31_Y2_N21
\Blinky|scale|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~37_sumout\ = SUM(( \Blinky|scale|counter\(17) ) + ( GND ) + ( \Blinky|scale|Add0~42\ ))
-- \Blinky|scale|Add0~38\ = CARRY(( \Blinky|scale|counter\(17) ) + ( GND ) + ( \Blinky|scale|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Blinky|scale|ALT_INV_counter\(17),
	cin => \Blinky|scale|Add0~42\,
	sumout => \Blinky|scale|Add0~37_sumout\,
	cout => \Blinky|scale|Add0~38\);

-- Location: FF_X31_Y2_N23
\Blinky|scale|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~37_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(17));

-- Location: LABCELL_X31_Y2_N24
\Blinky|scale|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~33_sumout\ = SUM(( \Blinky|scale|counter\(18) ) + ( GND ) + ( \Blinky|scale|Add0~38\ ))
-- \Blinky|scale|Add0~34\ = CARRY(( \Blinky|scale|counter\(18) ) + ( GND ) + ( \Blinky|scale|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Blinky|scale|ALT_INV_counter\(18),
	cin => \Blinky|scale|Add0~38\,
	sumout => \Blinky|scale|Add0~33_sumout\,
	cout => \Blinky|scale|Add0~34\);

-- Location: FF_X31_Y2_N26
\Blinky|scale|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~33_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(18));

-- Location: LABCELL_X31_Y2_N27
\Blinky|scale|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~29_sumout\ = SUM(( \Blinky|scale|counter\(19) ) + ( GND ) + ( \Blinky|scale|Add0~34\ ))
-- \Blinky|scale|Add0~30\ = CARRY(( \Blinky|scale|counter\(19) ) + ( GND ) + ( \Blinky|scale|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Blinky|scale|ALT_INV_counter\(19),
	cin => \Blinky|scale|Add0~34\,
	sumout => \Blinky|scale|Add0~29_sumout\,
	cout => \Blinky|scale|Add0~30\);

-- Location: FF_X31_Y2_N29
\Blinky|scale|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~29_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(19));

-- Location: LABCELL_X31_Y2_N30
\Blinky|scale|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~25_sumout\ = SUM(( \Blinky|scale|counter\(20) ) + ( GND ) + ( \Blinky|scale|Add0~30\ ))
-- \Blinky|scale|Add0~26\ = CARRY(( \Blinky|scale|counter\(20) ) + ( GND ) + ( \Blinky|scale|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Blinky|scale|ALT_INV_counter\(20),
	cin => \Blinky|scale|Add0~30\,
	sumout => \Blinky|scale|Add0~25_sumout\,
	cout => \Blinky|scale|Add0~26\);

-- Location: FF_X31_Y2_N32
\Blinky|scale|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~25_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(20));

-- Location: LABCELL_X31_Y2_N33
\Blinky|scale|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~21_sumout\ = SUM(( \Blinky|scale|counter\(21) ) + ( GND ) + ( \Blinky|scale|Add0~26\ ))
-- \Blinky|scale|Add0~22\ = CARRY(( \Blinky|scale|counter\(21) ) + ( GND ) + ( \Blinky|scale|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Blinky|scale|ALT_INV_counter\(21),
	cin => \Blinky|scale|Add0~26\,
	sumout => \Blinky|scale|Add0~21_sumout\,
	cout => \Blinky|scale|Add0~22\);

-- Location: FF_X31_Y2_N35
\Blinky|scale|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~21_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(21));

-- Location: LABCELL_X31_Y2_N36
\Blinky|scale|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~17_sumout\ = SUM(( \Blinky|scale|counter\(22) ) + ( GND ) + ( \Blinky|scale|Add0~22\ ))
-- \Blinky|scale|Add0~18\ = CARRY(( \Blinky|scale|counter\(22) ) + ( GND ) + ( \Blinky|scale|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Blinky|scale|ALT_INV_counter\(22),
	cin => \Blinky|scale|Add0~22\,
	sumout => \Blinky|scale|Add0~17_sumout\,
	cout => \Blinky|scale|Add0~18\);

-- Location: FF_X31_Y2_N38
\Blinky|scale|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~17_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(22));

-- Location: LABCELL_X31_Y2_N39
\Blinky|scale|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~5_sumout\ = SUM(( \Blinky|scale|counter\(23) ) + ( GND ) + ( \Blinky|scale|Add0~18\ ))
-- \Blinky|scale|Add0~6\ = CARRY(( \Blinky|scale|counter\(23) ) + ( GND ) + ( \Blinky|scale|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Blinky|scale|ALT_INV_counter\(23),
	cin => \Blinky|scale|Add0~18\,
	sumout => \Blinky|scale|Add0~5_sumout\,
	cout => \Blinky|scale|Add0~6\);

-- Location: FF_X31_Y2_N41
\Blinky|scale|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Blinky|scale|Add0~5_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(23));

-- Location: LABCELL_X31_Y2_N42
\Blinky|scale|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|scale|Add0~1_sumout\ = SUM(( \Blinky|scale|counter\(24) ) + ( GND ) + ( \Blinky|scale|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Blinky|scale|ALT_INV_counter\(24),
	cin => \Blinky|scale|Add0~6\,
	sumout => \Blinky|scale|Add0~1_sumout\);

-- Location: FF_X31_Y2_N44
\Blinky|scale|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Blinky|scale|Add0~1_sumout\,
	sclr => \Blinky|scale|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|scale|counter\(24));

-- Location: LABCELL_X30_Y2_N54
\Blinky|blink~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|blink~0_combout\ = ( !\Blinky|blink~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Blinky|ALT_INV_blink~q\,
	combout => \Blinky|blink~0_combout\);

-- Location: FF_X30_Y2_N53
\Blinky|blink\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Blinky|scale|counter\(24),
	asdata => \Blinky|blink~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blinky|blink~q\);

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

-- Location: CLKCTRL_G5
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

-- Location: LABCELL_X61_Y1_N0
\DSystem|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DSystem|Selector0~0_combout\ = ( \DSystem|current_state.B~q\ & ( (!\SW[2]~input_o\ & (((\SW[1]~input_o\)))) # (\SW[2]~input_o\ & ((!\SW[1]~input_o\ & (\DSystem|current_state.C~q\)) # (\SW[1]~input_o\ & ((!\DSystem|current_state.A~q\))))) ) ) # ( 
-- !\DSystem|current_state.B~q\ & ( (\SW[2]~input_o\ & ((!\SW[1]~input_o\ & (\DSystem|current_state.C~q\)) # (\SW[1]~input_o\ & ((!\DSystem|current_state.A~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010000000101010001000000011111000110100001111100011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \DSystem|ALT_INV_current_state.C~q\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \DSystem|ALT_INV_current_state.A~q\,
	dataf => \DSystem|ALT_INV_current_state.B~q\,
	combout => \DSystem|Selector0~0_combout\);

-- Location: FF_X61_Y1_N2
\DSystem|current_state.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \DSystem|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSystem|current_state.A~q\);

-- Location: LABCELL_X61_Y1_N6
\DSystem|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DSystem|Selector0~1_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & !\DSystem|current_state.A~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datad => \DSystem|ALT_INV_current_state.A~q\,
	combout => \DSystem|Selector0~1_combout\);

-- Location: FF_X61_Y1_N8
\DSystem|current_state.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \DSystem|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSystem|current_state.B~q\);

-- Location: LABCELL_X61_Y1_N9
\DSystem|Selector0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DSystem|Selector0~3_combout\ = ( \DSystem|current_state.B~q\ & ( (!\SW[2]~input_o\ & \SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	dataf => \DSystem|ALT_INV_current_state.B~q\,
	combout => \DSystem|Selector0~3_combout\);

-- Location: FF_X61_Y1_N11
\DSystem|current_state.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \DSystem|Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSystem|current_state.C~q\);

-- Location: LABCELL_X61_Y1_N3
\DSystem|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DSystem|Selector0~2_combout\ = ( \DSystem|current_state.C~q\ & ( (\SW[2]~input_o\ & !\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	dataf => \DSystem|ALT_INV_current_state.C~q\,
	combout => \DSystem|Selector0~2_combout\);

-- Location: FF_X61_Y1_N5
\DSystem|current_state.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \DSystem|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DSystem|current_state.D~q\);

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

-- Location: LABCELL_X88_Y21_N51
\trigger~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \trigger~0_combout\ = ( \SW[0]~input_o\ & ( \trigger~0_combout\ & ( (!\DSystem|current_state.D~q\ & (((\SW[8]~input_o\) # (\SW[7]~input_o\)) # (\SW[9]~input_o\))) ) ) ) # ( !\SW[0]~input_o\ & ( \trigger~0_combout\ & ( (!\DSystem|current_state.D~q\ & 
-- (((\SW[8]~input_o\) # (\SW[7]~input_o\)) # (\SW[9]~input_o\))) ) ) ) # ( \SW[0]~input_o\ & ( !\trigger~0_combout\ & ( (!\DSystem|current_state.D~q\ & (((\SW[8]~input_o\) # (\SW[7]~input_o\)) # (\SW[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010101010101000101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DSystem|ALT_INV_current_state.D~q\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_trigger~0_combout\,
	combout => \trigger~0_combout\);

-- Location: LABCELL_X30_Y2_N51
\Blinky|red_LEDs[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Blinky|red_LEDs[0]~0_combout\ = ( \Blinky|blink~q\ & ( \trigger~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Blinky|ALT_INV_blink~q\,
	dataf => \ALT_INV_trigger~0_combout\,
	combout => \Blinky|red_LEDs[0]~0_combout\);

-- Location: LABCELL_X61_Y1_N54
\DSystem|SSeg1[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DSystem|SSeg1\(1) = ( \DSystem|current_state.A~q\ & ( \DSystem|current_state.B~q\ ) ) # ( !\DSystem|current_state.A~q\ & ( \DSystem|current_state.B~q\ ) ) # ( !\DSystem|current_state.A~q\ & ( !\DSystem|current_state.B~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \DSystem|ALT_INV_current_state.A~q\,
	dataf => \DSystem|ALT_INV_current_state.B~q\,
	combout => \DSystem|SSeg1\(1));

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

-- Location: LABCELL_X35_Y40_N0
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


