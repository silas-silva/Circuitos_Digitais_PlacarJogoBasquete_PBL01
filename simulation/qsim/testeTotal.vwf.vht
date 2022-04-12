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
-- Generated on "04/12/2022 20:06:39"
                                                             
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
	S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
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
END mux8pra4_arch;
