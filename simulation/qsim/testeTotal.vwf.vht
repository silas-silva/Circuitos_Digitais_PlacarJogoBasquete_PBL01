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
-- Generated on "04/13/2022 01:07:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          main
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY main_vhd_vec_tst IS
END main_vhd_vec_tst;
ARCHITECTURE main_arch OF main_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL buzzer : STD_LOGIC;
SIGNAL cBotoes : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL chaveNP : STD_LOGIC;
SIGNAL chaveTime : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL display : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL escolhaDisplay : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL led : STD_LOGIC;
SIGNAL nSimulacao : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT main
	PORT (
	buzzer : OUT STD_LOGIC;
	cBotoes : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	chaveNP : IN STD_LOGIC;
	chaveTime : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	display : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	escolhaDisplay : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	led : OUT STD_LOGIC;
	nSimulacao : IN STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
-- list connections between master ports and signals
	buzzer => buzzer,
	cBotoes => cBotoes,
	chaveNP => chaveNP,
	chaveTime => chaveTime,
	clock => clock,
	display => display,
	escolhaDisplay => escolhaDisplay,
	led => led,
	nSimulacao => nSimulacao
	);
-- cBotoes[2]
t_prcs_cBotoes_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		cBotoes(2) <= '0';
		WAIT FOR 40000 ps;
		cBotoes(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	cBotoes(2) <= '0';
WAIT;
END PROCESS t_prcs_cBotoes_2;
-- cBotoes[1]
t_prcs_cBotoes_1: PROCESS
BEGIN
LOOP
	cBotoes(1) <= '0';
	WAIT FOR 20000 ps;
	cBotoes(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_cBotoes_1;
-- cBotoes[0]
t_prcs_cBotoes_0: PROCESS
BEGIN
LOOP
	cBotoes(0) <= '0';
	WAIT FOR 10000 ps;
	cBotoes(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_cBotoes_0;

-- chaveNP
t_prcs_chaveNP: PROCESS
BEGIN
LOOP
	chaveNP <= '0';
	WAIT FOR 10000 ps;
	chaveNP <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_chaveNP;

-- chaveTime
t_prcs_chaveTime: PROCESS
BEGIN
LOOP
	chaveTime <= '0';
	WAIT FOR 10000 ps;
	chaveTime <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_chaveTime;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- nSimulacao[6]
t_prcs_nSimulacao_6: PROCESS
BEGIN
	nSimulacao(6) <= '0';
	WAIT FOR 640000 ps;
	nSimulacao(6) <= '1';
WAIT;
END PROCESS t_prcs_nSimulacao_6;
-- nSimulacao[5]
t_prcs_nSimulacao_5: PROCESS
BEGIN
	nSimulacao(5) <= '0';
	WAIT FOR 320000 ps;
	nSimulacao(5) <= '1';
	WAIT FOR 320000 ps;
	nSimulacao(5) <= '0';
	WAIT FOR 320000 ps;
	nSimulacao(5) <= '1';
WAIT;
END PROCESS t_prcs_nSimulacao_5;
-- nSimulacao[4]
t_prcs_nSimulacao_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		nSimulacao(4) <= '0';
		WAIT FOR 160000 ps;
		nSimulacao(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	nSimulacao(4) <= '0';
WAIT;
END PROCESS t_prcs_nSimulacao_4;
-- nSimulacao[3]
t_prcs_nSimulacao_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		nSimulacao(3) <= '0';
		WAIT FOR 80000 ps;
		nSimulacao(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	nSimulacao(3) <= '0';
WAIT;
END PROCESS t_prcs_nSimulacao_3;
-- nSimulacao[2]
t_prcs_nSimulacao_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		nSimulacao(2) <= '0';
		WAIT FOR 40000 ps;
		nSimulacao(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	nSimulacao(2) <= '0';
WAIT;
END PROCESS t_prcs_nSimulacao_2;
-- nSimulacao[1]
t_prcs_nSimulacao_1: PROCESS
BEGIN
LOOP
	nSimulacao(1) <= '0';
	WAIT FOR 20000 ps;
	nSimulacao(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_nSimulacao_1;
-- nSimulacao[0]
t_prcs_nSimulacao_0: PROCESS
BEGIN
LOOP
	nSimulacao(0) <= '0';
	WAIT FOR 10000 ps;
	nSimulacao(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_nSimulacao_0;
END main_arch;
