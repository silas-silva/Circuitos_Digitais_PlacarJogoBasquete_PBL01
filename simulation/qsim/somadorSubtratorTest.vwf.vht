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
-- Generated on "04/11/2022 19:38:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          somadorSubtrator7bts
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY somadorSubtrator7bts_vhd_vec_tst IS
END somadorSubtrator7bts_vhd_vec_tst;
ARCHITECTURE somadorSubtrator7bts_arch OF somadorSubtrator7bts_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT somadorSubtrator7bts
	PORT (
	A : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Cin : IN STD_LOGIC;
	Cout : BUFFER STD_LOGIC;
	S : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : somadorSubtrator7bts
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Cin => Cin,
	Cout => Cout,
	S => S
	);
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
LOOP
	A(6) <= '0';
	WAIT FOR 64000 ps;
	A(6) <= '1';
	WAIT FOR 64000 ps;
	IF (NOW >= 1024000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
LOOP
	A(5) <= '0';
	WAIT FOR 32000 ps;
	A(5) <= '1';
	WAIT FOR 32000 ps;
	IF (NOW >= 1024000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
LOOP
	A(4) <= '0';
	WAIT FOR 16000 ps;
	A(4) <= '1';
	WAIT FOR 16000 ps;
	IF (NOW >= 1024000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
LOOP
	A(3) <= '0';
	WAIT FOR 8000 ps;
	A(3) <= '1';
	WAIT FOR 8000 ps;
	IF (NOW >= 1024000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
LOOP
	A(2) <= '0';
	WAIT FOR 4000 ps;
	A(2) <= '1';
	WAIT FOR 4000 ps;
	IF (NOW >= 1024000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
LOOP
	A(1) <= '0';
	WAIT FOR 2000 ps;
	A(1) <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1024000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
LOOP
	A(0) <= '0';
	WAIT FOR 1000 ps;
	A(0) <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1024000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_0;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
LOOP
	B(1) <= '0';
	WAIT FOR 256000 ps;
	B(1) <= '1';
	WAIT FOR 256000 ps;
	IF (NOW >= 1024000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
LOOP
	B(0) <= '0';
	WAIT FOR 128000 ps;
	B(0) <= '1';
	WAIT FOR 128000 ps;
	IF (NOW >= 1024000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B_0;

-- Cin
t_prcs_Cin: PROCESS
BEGIN
LOOP
	Cin <= '0';
	WAIT FOR 512000 ps;
	Cin <= '1';
	WAIT FOR 512000 ps;
	IF (NOW >= 1024000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Cin;
END somadorSubtrator7bts_arch;
