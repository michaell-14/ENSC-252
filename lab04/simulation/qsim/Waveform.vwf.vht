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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/26/2024 21:47:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ripple_carry
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ripple_carry_vhd_vec_tst IS
END ripple_carry_vhd_vec_tst;
ARCHITECTURE ripple_carry_arch OF ripple_carry_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT ripple_carry
	PORT (
	Cin : IN STD_LOGIC;
	Cout : BUFFER STD_LOGIC;
	s : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	y : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ripple_carry
	PORT MAP (
-- list connections between master ports and signals
	Cin => Cin,
	Cout => Cout,
	s => s,
	x => x,
	y => y
	);
-- x[3]
t_prcs_x_3: PROCESS
BEGIN
	x(3) <= '0';
	WAIT FOR 100000 ps;
	x(3) <= '1';
WAIT;
END PROCESS t_prcs_x_3;
-- x[2]
t_prcs_x_2: PROCESS
BEGIN
	x(2) <= '0';
	WAIT FOR 100000 ps;
	x(2) <= '1';
	WAIT FOR 100000 ps;
	x(2) <= '0';
WAIT;
END PROCESS t_prcs_x_2;
-- x[1]
t_prcs_x_1: PROCESS
BEGIN
	x(1) <= '0';
	WAIT FOR 100000 ps;
	x(1) <= '1';
WAIT;
END PROCESS t_prcs_x_1;
-- x[0]
t_prcs_x_0: PROCESS
BEGIN
	x(0) <= '0';
	WAIT FOR 100000 ps;
	x(0) <= '1';
	WAIT FOR 100000 ps;
	x(0) <= '0';
WAIT;
END PROCESS t_prcs_x_0;
-- y[3]
t_prcs_y_3: PROCESS
BEGIN
	y(3) <= '0';
	WAIT FOR 100000 ps;
	y(3) <= '1';
	WAIT FOR 100000 ps;
	y(3) <= '0';
WAIT;
END PROCESS t_prcs_y_3;
-- y[2]
t_prcs_y_2: PROCESS
BEGIN
	y(2) <= '0';
	WAIT FOR 100000 ps;
	y(2) <= '1';
WAIT;
END PROCESS t_prcs_y_2;
-- y[1]
t_prcs_y_1: PROCESS
BEGIN
	y(1) <= '0';
	WAIT FOR 100000 ps;
	y(1) <= '1';
	WAIT FOR 100000 ps;
	y(1) <= '0';
WAIT;
END PROCESS t_prcs_y_1;
-- y[0]
t_prcs_y_0: PROCESS
BEGIN
	y(0) <= '0';
	WAIT FOR 100000 ps;
	y(0) <= '1';
WAIT;
END PROCESS t_prcs_y_0;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
	Cin <= '0';
	WAIT FOR 200000 ps;
	Cin <= '1';
WAIT;
END PROCESS t_prcs_Cin;
END ripple_carry_arch;
