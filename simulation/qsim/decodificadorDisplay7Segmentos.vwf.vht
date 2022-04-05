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
-- Generated on "04/05/2022 12:31:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          decodificadorDisplay7Segmentos
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY decodificadorDisplay7Segmentos_vhd_vec_tst IS
END decodificadorDisplay7Segmentos_vhd_vec_tst;
ARCHITECTURE decodificadorDisplay7Segmentos_arch OF decodificadorDisplay7Segmentos_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL display1Time0 : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL display1Time1 : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL display2Time0 : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL display2Time1 : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL pontos : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL timeBasquete : STD_LOGIC;
COMPONENT decodificadorDisplay7Segmentos
	PORT (
	display1Time0 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	display1Time1 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	display2Time0 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	display2Time1 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	pontos : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	timeBasquete : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : decodificadorDisplay7Segmentos
	PORT MAP (
-- list connections between master ports and signals
	display1Time0 => display1Time0,
	display1Time1 => display1Time1,
	display2Time0 => display2Time0,
	display2Time1 => display2Time1,
	pontos => pontos,
	timeBasquete => timeBasquete
	);
-- pontos[6]
t_prcs_pontos_6: PROCESS
BEGIN
LOOP
	pontos(6) <= '0';
	WAIT FOR 320000 ps;
	pontos(6) <= '1';
	WAIT FOR 320000 ps;
	IF (NOW >= 1280000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pontos_6;
-- pontos[5]
t_prcs_pontos_5: PROCESS
BEGIN
LOOP
	pontos(5) <= '0';
	WAIT FOR 160000 ps;
	pontos(5) <= '1';
	WAIT FOR 160000 ps;
	IF (NOW >= 1280000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pontos_5;
-- pontos[4]
t_prcs_pontos_4: PROCESS
BEGIN
LOOP
	pontos(4) <= '0';
	WAIT FOR 80000 ps;
	pontos(4) <= '1';
	WAIT FOR 80000 ps;
	IF (NOW >= 1280000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pontos_4;
-- pontos[3]
t_prcs_pontos_3: PROCESS
BEGIN
LOOP
	pontos(3) <= '0';
	WAIT FOR 40000 ps;
	pontos(3) <= '1';
	WAIT FOR 40000 ps;
	IF (NOW >= 1280000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pontos_3;
-- pontos[2]
t_prcs_pontos_2: PROCESS
BEGIN
LOOP
	pontos(2) <= '0';
	WAIT FOR 20000 ps;
	pontos(2) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1280000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pontos_2;
-- pontos[1]
t_prcs_pontos_1: PROCESS
BEGIN
LOOP
	pontos(1) <= '0';
	WAIT FOR 10000 ps;
	pontos(1) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1280000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pontos_1;
-- pontos[0]
t_prcs_pontos_0: PROCESS
BEGIN
LOOP
	pontos(0) <= '0';
	WAIT FOR 5000 ps;
	pontos(0) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1280000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pontos_0;

-- timeBasquete
t_prcs_timeBasquete: PROCESS
BEGIN
LOOP
	timeBasquete <= '0';
	WAIT FOR 640000 ps;
	timeBasquete <= '1';
	WAIT FOR 640000 ps;
	IF (NOW >= 1280000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_timeBasquete;
END decodificadorDisplay7Segmentos_arch;
