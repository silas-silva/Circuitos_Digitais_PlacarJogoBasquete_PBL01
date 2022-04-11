-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/11/2022 19:01:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          somador1bt
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY somador1bt_vhd_vec_tst IS
END somador1bt_vhd_vec_tst;
ARCHITECTURE somador1bt_arch OF somador1bt_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT somador1bt
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Cin : IN STD_LOGIC;
	Cout : BUFFER STD_LOGIC;
	S : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : somador1bt
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Cin => Cin,
	Cout => Cout,
	S => S
	);

-- A
t_prcs_A: PROCESS
BEGIN
LOOP
	A <= '0';
	WAIT FOR 5000 ps;
	A <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 80000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
LOOP
	B <= '0';
	WAIT FOR 10000 ps;
	B <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 80000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
LOOP
	Cin <= '0';
	WAIT FOR 20000 ps;
	Cin <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 80000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Cin;
END somador1bt_arch;
