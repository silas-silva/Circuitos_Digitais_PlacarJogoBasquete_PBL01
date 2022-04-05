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
-- Generated on "04/05/2022 01:14:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          comparador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY comparador_vhd_vec_tst IS
END comparador_vhd_vec_tst;
ARCHITECTURE comparador_arch OF comparador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL N1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL N2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL R : STD_LOGIC;
COMPONENT comparador
	PORT (
	N1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	N2 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	R : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : comparador
	PORT MAP (
-- list connections between master ports and signals
	N1 => N1,
	N2 => N2,
	R => R
	);
-- N1[1]
t_prcs_N1_1: PROCESS
BEGIN
LOOP
	N1(1) <= '0';
	WAIT FOR 2560000 ps;
	N1(1) <= '1';
	WAIT FOR 2560000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N1_1;
-- N1[0]
t_prcs_N1_0: PROCESS
BEGIN
LOOP
	N1(0) <= '0';
	WAIT FOR 1280000 ps;
	N1(0) <= '1';
	WAIT FOR 1280000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N1_0;
-- N2[6]
t_prcs_N2_6: PROCESS
BEGIN
LOOP
	N2(6) <= '0';
	WAIT FOR 640000 ps;
	N2(6) <= '1';
	WAIT FOR 640000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N2_6;
-- N2[5]
t_prcs_N2_5: PROCESS
BEGIN
LOOP
	N2(5) <= '0';
	WAIT FOR 320000 ps;
	N2(5) <= '1';
	WAIT FOR 320000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N2_5;
-- N2[4]
t_prcs_N2_4: PROCESS
BEGIN
LOOP
	N2(4) <= '0';
	WAIT FOR 160000 ps;
	N2(4) <= '1';
	WAIT FOR 160000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N2_4;
-- N2[3]
t_prcs_N2_3: PROCESS
BEGIN
LOOP
	N2(3) <= '0';
	WAIT FOR 80000 ps;
	N2(3) <= '1';
	WAIT FOR 80000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N2_3;
-- N2[2]
t_prcs_N2_2: PROCESS
BEGIN
LOOP
	N2(2) <= '0';
	WAIT FOR 40000 ps;
	N2(2) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N2_2;
-- N2[1]
t_prcs_N2_1: PROCESS
BEGIN
	N2(1) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 127
	LOOP
		N2(1) <= '0';
		WAIT FOR 20000 ps;
		N2(1) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	N2(1) <= '0';
WAIT;
END PROCESS t_prcs_N2_1;
-- N2[0]
t_prcs_N2_0: PROCESS
BEGIN
LOOP
	N2(0) <= '0';
	WAIT FOR 10000 ps;
	N2(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 5120000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_N2_0;
END comparador_arch;
