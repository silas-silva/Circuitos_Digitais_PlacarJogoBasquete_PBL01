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
-- Generated on "04/12/2022 23:29:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux8pra4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux8pra4_vhd_vec_tst IS
END mux8pra4_vhd_vec_tst;
ARCHITECTURE mux8pra4_arch OF mux8pra4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL N : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL escolha : STD_LOGIC;
COMPONENT mux8pra4
	PORT (
	N : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	S : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	escolha : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux8pra4
	PORT MAP (
-- list connections between master ports and signals
	N => N,
	S => S,
	escolha => escolha
	);
-- N[7]
t_prcs_N_7: PROCESS
BEGIN
LOOP
	N(7) <= '0';
	WAIT FOR 2560000 ps;
	N(7) <= '1';
	WAIT FOR 2560000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N_7;
-- N[6]
t_prcs_N_6: PROCESS
BEGIN
LOOP
	N(6) <= '0';
	WAIT FOR 1280000 ps;
	N(6) <= '1';
	WAIT FOR 1280000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N_6;
-- N[5]
t_prcs_N_5: PROCESS
BEGIN
LOOP
	N(5) <= '0';
	WAIT FOR 640000 ps;
	N(5) <= '1';
	WAIT FOR 640000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N_5;
-- N[4]
t_prcs_N_4: PROCESS
BEGIN
LOOP
	N(4) <= '0';
	WAIT FOR 320000 ps;
	N(4) <= '1';
	WAIT FOR 320000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N_4;
-- N[3]
t_prcs_N_3: PROCESS
BEGIN
LOOP
	N(3) <= '0';
	WAIT FOR 160000 ps;
	N(3) <= '1';
	WAIT FOR 160000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N_3;
-- N[2]
t_prcs_N_2: PROCESS
BEGIN
LOOP
	N(2) <= '0';
	WAIT FOR 80000 ps;
	N(2) <= '1';
	WAIT FOR 80000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N_2;
-- N[1]
t_prcs_N_1: PROCESS
BEGIN
LOOP
	N(1) <= '0';
	WAIT FOR 40000 ps;
	N(1) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N_1;
-- N[0]
t_prcs_N_0: PROCESS
BEGIN
LOOP
	N(0) <= '0';
	WAIT FOR 20000 ps;
	N(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N_0;

-- escolha
t_prcs_escolha: PROCESS
BEGIN
LOOP
	escolha <= '0';
	WAIT FOR 10000 ps;
	escolha <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_escolha;
END mux8pra4_arch;
