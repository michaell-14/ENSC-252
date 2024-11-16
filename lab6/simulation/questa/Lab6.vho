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

-- DATE "11/15/2024 00:00:01"

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

ENTITY 	Count4 IS
    PORT (
	clk : IN std_logic;
	load : IN std_logic;
	enable : IN std_logic;
	D : IN std_logic_vector(3 DOWNTO 0);
	Q : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Count4;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_AK29,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Count4 IS
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
SIGNAL ww_load : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \U1|next_value~0_combout\ : std_logic;
SIGNAL \U1|accumulator[0]~0_combout\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \U1|next_value~1_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \U1|next_value~2_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \U1|next_value~3_combout\ : std_logic;
SIGNAL \U1|accumulator\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALT_INV_accumulator\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_load~input_o\ : std_logic;
SIGNAL \ALT_INV_D[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_D[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[3]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_load <= load;
ww_enable <= enable;
ww_D <= D;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U1|ALT_INV_accumulator\(1) <= NOT \U1|accumulator\(1);
\U1|ALT_INV_accumulator\(2) <= NOT \U1|accumulator\(2);
\U1|ALT_INV_accumulator\(3) <= NOT \U1|accumulator\(3);
\ALT_INV_load~input_o\ <= NOT \load~input_o\;
\ALT_INV_D[0]~input_o\ <= NOT \D[0]~input_o\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_D[1]~input_o\ <= NOT \D[1]~input_o\;
\ALT_INV_D[2]~input_o\ <= NOT \D[2]~input_o\;
\ALT_INV_D[3]~input_o\ <= NOT \D[3]~input_o\;
\U1|ALT_INV_accumulator\(0) <= NOT \U1|accumulator\(0);

-- Location: IOOBUF_X80_Y0_N2
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|accumulator\(0),
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X80_Y0_N36
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|accumulator\(1),
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X80_Y0_N19
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|accumulator\(2),
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X80_Y0_N53
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|accumulator\(3),
	devoe => ww_devoe,
	o => ww_Q(3));

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

-- Location: IOIBUF_X82_Y0_N75
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X84_Y0_N18
\load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: IOIBUF_X82_Y0_N41
\D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: MLABCELL_X82_Y2_N48
\U1|next_value~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|next_value~0_combout\ = ( \U1|accumulator\(0) & ( \D[0]~input_o\ & ( (!\enable~input_o\) # (\load~input_o\) ) ) ) # ( !\U1|accumulator\(0) & ( \D[0]~input_o\ & ( (\load~input_o\) # (\enable~input_o\) ) ) ) # ( \U1|accumulator\(0) & ( !\D[0]~input_o\ & 
-- ( (!\enable~input_o\ & !\load~input_o\) ) ) ) # ( !\U1|accumulator\(0) & ( !\D[0]~input_o\ & ( (\enable~input_o\ & !\load~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100100010001000100001110111011101111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \ALT_INV_load~input_o\,
	datae => \U1|ALT_INV_accumulator\(0),
	dataf => \ALT_INV_D[0]~input_o\,
	combout => \U1|next_value~0_combout\);

-- Location: MLABCELL_X82_Y2_N54
\U1|accumulator[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|accumulator[0]~0_combout\ = (\load~input_o\) # (\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \ALT_INV_load~input_o\,
	combout => \U1|accumulator[0]~0_combout\);

-- Location: FF_X82_Y2_N50
\U1|accumulator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|next_value~0_combout\,
	ena => \U1|accumulator[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|accumulator\(0));

-- Location: IOIBUF_X82_Y0_N58
\D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: MLABCELL_X82_Y2_N57
\U1|next_value~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|next_value~1_combout\ = ( \U1|accumulator\(0) & ( (!\load~input_o\ & (!\enable~input_o\ $ (((!\U1|accumulator\(1)))))) # (\load~input_o\ & (((\D[1]~input_o\)))) ) ) # ( !\U1|accumulator\(0) & ( (!\load~input_o\ & ((\U1|accumulator\(1)))) # 
-- (\load~input_o\ & (\D[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000111100010110100011110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \ALT_INV_load~input_o\,
	datac => \ALT_INV_D[1]~input_o\,
	datad => \U1|ALT_INV_accumulator\(1),
	dataf => \U1|ALT_INV_accumulator\(0),
	combout => \U1|next_value~1_combout\);

-- Location: FF_X82_Y2_N59
\U1|accumulator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|next_value~1_combout\,
	ena => \U1|accumulator[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|accumulator\(1));

-- Location: IOIBUF_X84_Y0_N35
\D[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: MLABCELL_X82_Y2_N42
\U1|next_value~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|next_value~2_combout\ = ( \U1|accumulator\(2) & ( \U1|accumulator\(0) & ( (!\load~input_o\ & (((!\enable~input_o\) # (!\U1|accumulator\(1))))) # (\load~input_o\ & (\D[2]~input_o\)) ) ) ) # ( !\U1|accumulator\(2) & ( \U1|accumulator\(0) & ( 
-- (!\load~input_o\ & (((\enable~input_o\ & \U1|accumulator\(1))))) # (\load~input_o\ & (\D[2]~input_o\)) ) ) ) # ( \U1|accumulator\(2) & ( !\U1|accumulator\(0) & ( (!\load~input_o\) # (\D[2]~input_o\) ) ) ) # ( !\U1|accumulator\(2) & ( !\U1|accumulator\(0) 
-- & ( (\D[2]~input_o\ & \load~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100010001000111011101110111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D[2]~input_o\,
	datab => \ALT_INV_load~input_o\,
	datac => \ALT_INV_enable~input_o\,
	datad => \U1|ALT_INV_accumulator\(1),
	datae => \U1|ALT_INV_accumulator\(2),
	dataf => \U1|ALT_INV_accumulator\(0),
	combout => \U1|next_value~2_combout\);

-- Location: FF_X82_Y2_N44
\U1|accumulator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|next_value~2_combout\,
	ena => \U1|accumulator[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|accumulator\(2));

-- Location: IOIBUF_X82_Y0_N92
\D[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: MLABCELL_X82_Y2_N36
\U1|next_value~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|next_value~3_combout\ = ( !\load~input_o\ & ( !\U1|accumulator\(3) $ (((!\enable~input_o\) # ((!\U1|accumulator\(2)) # ((!\U1|accumulator\(1)) # (!\U1|accumulator\(0)))))) ) ) # ( \load~input_o\ & ( (((\D[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110000111100001111000111100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable~input_o\,
	datab => \U1|ALT_INV_accumulator\(2),
	datac => \ALT_INV_D[3]~input_o\,
	datad => \U1|ALT_INV_accumulator\(1),
	datae => \ALT_INV_load~input_o\,
	dataf => \U1|ALT_INV_accumulator\(0),
	datag => \U1|ALT_INV_accumulator\(3),
	combout => \U1|next_value~3_combout\);

-- Location: FF_X82_Y2_N38
\U1|accumulator[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \U1|next_value~3_combout\,
	ena => \U1|accumulator[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|accumulator\(3));

-- Location: MLABCELL_X3_Y51_N3
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


