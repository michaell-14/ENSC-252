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

-- DATE "10/07/2024 13:57:22"

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
	x1 : IN std_logic;
	x2 : IN std_logic;
	x3 : IN std_logic;
	x4 : IN std_logic;
	f : OUT std_logic
	);
END oddCounter;

-- Design Ports Information
-- f	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x3	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x4	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_x3 : std_logic;
SIGNAL ww_x4 : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \x4~input_o\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \x3~input_o\ : std_logic;
SIGNAL \x1~input_o\ : std_logic;
SIGNAL \stage3|f~0_combout\ : std_logic;
SIGNAL \ALT_INV_x4~input_o\ : std_logic;
SIGNAL \ALT_INV_x3~input_o\ : std_logic;
SIGNAL \ALT_INV_x2~input_o\ : std_logic;
SIGNAL \ALT_INV_x1~input_o\ : std_logic;

BEGIN

ww_x1 <= x1;
ww_x2 <= x2;
ww_x3 <= x3;
ww_x4 <= x4;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_x4~input_o\ <= NOT \x4~input_o\;
\ALT_INV_x3~input_o\ <= NOT \x3~input_o\;
\ALT_INV_x2~input_o\ <= NOT \x2~input_o\;
\ALT_INV_x1~input_o\ <= NOT \x1~input_o\;

-- Location: IOOBUF_X4_Y0_N36
\f~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|f~0_combout\,
	devoe => ww_devoe,
	o => ww_f);

-- Location: IOIBUF_X6_Y0_N18
\x4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x4,
	o => \x4~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\x2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2,
	o => \x2~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\x3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x3,
	o => \x3~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\x1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1,
	o => \x1~input_o\);

-- Location: MLABCELL_X6_Y1_N30
\stage3|f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|f~0_combout\ = ( \x1~input_o\ & ( !\x4~input_o\ $ (!\x2~input_o\ $ (!\x3~input_o\)) ) ) # ( !\x1~input_o\ & ( !\x4~input_o\ $ (!\x2~input_o\ $ (\x3~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x4~input_o\,
	datab => \ALT_INV_x2~input_o\,
	datac => \ALT_INV_x3~input_o\,
	dataf => \ALT_INV_x1~input_o\,
	combout => \stage3|f~0_combout\);

-- Location: LABCELL_X4_Y45_N0
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


