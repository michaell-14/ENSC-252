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

-- DATE "11/10/2024 17:34:38"

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

ENTITY 	q5 IS
    PORT (
	Clk : IN std_logic;
	Load1 : IN std_logic;
	Load2 : IN std_logic;
	Data1 : IN std_logic_vector(3 DOWNTO 0);
	Data2 : IN std_logic_vector(3 DOWNTO 0);
	Q : OUT std_logic_vector(3 DOWNTO 0)
	);
END q5;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load1	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load2	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data1[0]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data2[0]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data1[1]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data2[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data1[2]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data2[2]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data1[3]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data2[3]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF q5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Load1 : std_logic;
SIGNAL ww_Load2 : std_logic;
SIGNAL ww_Data1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Data2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Load2~input_o\ : std_logic;
SIGNAL \Data2[0]~input_o\ : std_logic;
SIGNAL \Data1[0]~input_o\ : std_logic;
SIGNAL \Load1~input_o\ : std_logic;
SIGNAL \MUX_out[0]~0_combout\ : std_logic;
SIGNAL \Reg[0]~0_combout\ : std_logic;
SIGNAL \Data2[1]~input_o\ : std_logic;
SIGNAL \Data1[1]~input_o\ : std_logic;
SIGNAL \MUX_out[1]~1_combout\ : std_logic;
SIGNAL \Data1[2]~input_o\ : std_logic;
SIGNAL \Data2[2]~input_o\ : std_logic;
SIGNAL \MUX_out[2]~2_combout\ : std_logic;
SIGNAL \Data2[3]~input_o\ : std_logic;
SIGNAL \Data1[3]~input_o\ : std_logic;
SIGNAL \MUX_out[3]~3_combout\ : std_logic;
SIGNAL Reg : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Load1~input_o\ : std_logic;
SIGNAL \ALT_INV_Load2~input_o\ : std_logic;
SIGNAL \ALT_INV_Data1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Clk~inputCLKENA0_outclk\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_Load1 <= Load1;
ww_Load2 <= Load2;
ww_Data1 <= Data1;
ww_Data2 <= Data2;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Load1~input_o\ <= NOT \Load1~input_o\;
\ALT_INV_Load2~input_o\ <= NOT \Load2~input_o\;
\ALT_INV_Data1[0]~input_o\ <= NOT \Data1[0]~input_o\;
\ALT_INV_Data2[0]~input_o\ <= NOT \Data2[0]~input_o\;
\ALT_INV_Data1[1]~input_o\ <= NOT \Data1[1]~input_o\;
\ALT_INV_Data2[1]~input_o\ <= NOT \Data2[1]~input_o\;
\ALT_INV_Data1[2]~input_o\ <= NOT \Data1[2]~input_o\;
\ALT_INV_Data2[2]~input_o\ <= NOT \Data2[2]~input_o\;
\ALT_INV_Data1[3]~input_o\ <= NOT \Data1[3]~input_o\;
\ALT_INV_Data2[3]~input_o\ <= NOT \Data2[3]~input_o\;
\ALT_INV_Clk~inputCLKENA0_outclk\ <= NOT \Clk~inputCLKENA0_outclk\;

-- Location: IOOBUF_X89_Y15_N39
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Reg(0),
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X89_Y9_N22
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Reg(1),
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X89_Y9_N39
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Reg(2),
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X89_Y11_N45
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Reg(3),
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOIBUF_X89_Y23_N21
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y13_N21
\Load2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Load2,
	o => \Load2~input_o\);

-- Location: IOIBUF_X89_Y13_N38
\Data2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data2(0),
	o => \Data2[0]~input_o\);

-- Location: IOIBUF_X89_Y13_N4
\Data1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data1(0),
	o => \Data1[0]~input_o\);

-- Location: IOIBUF_X89_Y15_N4
\Load1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Load1,
	o => \Load1~input_o\);

-- Location: LABCELL_X88_Y13_N30
\MUX_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_out[0]~0_combout\ = ( \Load1~input_o\ & ( (!\Load2~input_o\ & ((\Data1[0]~input_o\))) # (\Load2~input_o\ & (\Data2[0]~input_o\)) ) ) # ( !\Load1~input_o\ & ( \Data2[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Load2~input_o\,
	datab => \ALT_INV_Data2[0]~input_o\,
	datac => \ALT_INV_Data1[0]~input_o\,
	dataf => \ALT_INV_Load1~input_o\,
	combout => \MUX_out[0]~0_combout\);

-- Location: LABCELL_X88_Y13_N27
\Reg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Reg[0]~0_combout\ = ( \Load1~input_o\ & ( !\Load2~input_o\ ) ) # ( !\Load1~input_o\ & ( \Load2~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Load2~input_o\,
	dataf => \ALT_INV_Load1~input_o\,
	combout => \Reg[0]~0_combout\);

-- Location: FF_X88_Y13_N31
\Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputCLKENA0_outclk\,
	d => \MUX_out[0]~0_combout\,
	ena => \Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(0));

-- Location: IOIBUF_X89_Y11_N61
\Data2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data2(1),
	o => \Data2[1]~input_o\);

-- Location: IOIBUF_X89_Y11_N95
\Data1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data1(1),
	o => \Data1[1]~input_o\);

-- Location: LABCELL_X88_Y13_N9
\MUX_out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_out[1]~1_combout\ = ( \Load1~input_o\ & ( (!\Load2~input_o\ & ((\Data1[1]~input_o\))) # (\Load2~input_o\ & (\Data2[1]~input_o\)) ) ) # ( !\Load1~input_o\ & ( \Data2[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data2[1]~input_o\,
	datac => \ALT_INV_Data1[1]~input_o\,
	datad => \ALT_INV_Load2~input_o\,
	dataf => \ALT_INV_Load1~input_o\,
	combout => \MUX_out[1]~1_combout\);

-- Location: FF_X88_Y13_N10
\Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputCLKENA0_outclk\,
	d => \MUX_out[1]~1_combout\,
	ena => \Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(1));

-- Location: IOIBUF_X89_Y13_N55
\Data1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data1(2),
	o => \Data1[2]~input_o\);

-- Location: IOIBUF_X89_Y15_N21
\Data2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data2(2),
	o => \Data2[2]~input_o\);

-- Location: LABCELL_X88_Y13_N42
\MUX_out[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_out[2]~2_combout\ = ( \Data1[2]~input_o\ & ( \Data2[2]~input_o\ ) ) # ( !\Data1[2]~input_o\ & ( \Data2[2]~input_o\ & ( (!\Load1~input_o\) # (\Load2~input_o\) ) ) ) # ( \Data1[2]~input_o\ & ( !\Data2[2]~input_o\ & ( (\Load1~input_o\ & 
-- !\Load2~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Load1~input_o\,
	datac => \ALT_INV_Load2~input_o\,
	datae => \ALT_INV_Data1[2]~input_o\,
	dataf => \ALT_INV_Data2[2]~input_o\,
	combout => \MUX_out[2]~2_combout\);

-- Location: FF_X88_Y13_N43
\Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputCLKENA0_outclk\,
	d => \MUX_out[2]~2_combout\,
	ena => \Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(2));

-- Location: IOIBUF_X89_Y15_N55
\Data2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data2(3),
	o => \Data2[3]~input_o\);

-- Location: IOIBUF_X89_Y11_N78
\Data1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data1(3),
	o => \Data1[3]~input_o\);

-- Location: LABCELL_X88_Y13_N18
\MUX_out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_out[3]~3_combout\ = ( \Data1[3]~input_o\ & ( ((\Load1~input_o\ & !\Load2~input_o\)) # (\Data2[3]~input_o\) ) ) # ( !\Data1[3]~input_o\ & ( (\Data2[3]~input_o\ & ((!\Load1~input_o\) # (\Load2~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101011101010111010101000101010001010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data2[3]~input_o\,
	datab => \ALT_INV_Load1~input_o\,
	datac => \ALT_INV_Load2~input_o\,
	datae => \ALT_INV_Data1[3]~input_o\,
	combout => \MUX_out[3]~3_combout\);

-- Location: FF_X88_Y13_N19
\Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clk~inputCLKENA0_outclk\,
	d => \MUX_out[3]~3_combout\,
	ena => \Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Reg(3));

-- Location: LABCELL_X42_Y42_N3
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


