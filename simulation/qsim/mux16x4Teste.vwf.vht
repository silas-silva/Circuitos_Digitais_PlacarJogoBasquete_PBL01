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
-- Generated on "04/13/2022 01:06:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux16pra4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux16pra4_vhd_vec_tst IS
END mux16pra4_vhd_vec_tst;
ARCHITECTURE mux16pra4_arch OF mux16pra4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL saida : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seletor1 : STD_LOGIC;
SIGNAL seletorTime : STD_LOGIC;
COMPONENT mux16pra4
	PORT (
	saida : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	seletor1 : IN STD_LOGIC;
	seletorTime : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux16pra4
	PORT MAP (
-- list connections between master ports and signals
	saida => saida,
	seletor1 => seletor1,
	seletorTime => seletorTime
	);

-- seletor1
t_prcs_seletor1: PROCESS
BEGIN
LOOP
	seletor1 <= '0';
	WAIT FOR 5000 ps;
	seletor1 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 20000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_seletor1;

-- seletorTime
t_prcs_seletorTime: PROCESS
BEGIN
LOOP
	seletorTime <= '0';
	WAIT FOR 10000 ps;
	seletorTime <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 20000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_seletorTime;
END mux16pra4_arch;
