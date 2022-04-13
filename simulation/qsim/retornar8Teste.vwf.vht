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
-- Generated on "04/12/2022 23:37:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          retornar8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY retornar8_vhd_vec_tst IS
END retornar8_vhd_vec_tst;
ARCHITECTURE retornar8_arch OF retornar8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL n1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL n2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL saida : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT retornar8
	PORT (
	n1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	n2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	saida : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : retornar8
	PORT MAP (
-- list connections between master ports and signals
	n1 => n1,
	n2 => n2,
	saida => saida
	);

-- n1[0]
t_prcs_n1_0: PROCESS
BEGIN
	n1(0) <= '0';
	WAIT FOR 10000 ps;
	n1(0) <= '1';
WAIT;
END PROCESS t_prcs_n1_0;

-- n1[1]
t_prcs_n1_1: PROCESS
BEGIN
	n1(1) <= '1';
WAIT;
END PROCESS t_prcs_n1_1;

-- n1[2]
t_prcs_n1_2: PROCESS
BEGIN
	n1(2) <= '1';
	WAIT FOR 10000 ps;
	n1(2) <= '0';
WAIT;
END PROCESS t_prcs_n1_2;

-- n1[3]
t_prcs_n1_3: PROCESS
BEGIN
	n1(3) <= '1';
WAIT;
END PROCESS t_prcs_n1_3;

-- n2[0]
t_prcs_n2_0: PROCESS
BEGIN
	n2(0) <= '1';
WAIT;
END PROCESS t_prcs_n2_0;

-- n2[1]
t_prcs_n2_1: PROCESS
BEGIN
	n2(1) <= '0';
	WAIT FOR 10000 ps;
	n2(1) <= '1';
WAIT;
END PROCESS t_prcs_n2_1;

-- n2[2]
t_prcs_n2_2: PROCESS
BEGIN
	n2(2) <= '1';
WAIT;
END PROCESS t_prcs_n2_2;

-- n2[3]
t_prcs_n2_3: PROCESS
BEGIN
	n2(3) <= '1';
	WAIT FOR 10000 ps;
	n2(3) <= '0';
WAIT;
END PROCESS t_prcs_n2_3;
END retornar8_arch;
