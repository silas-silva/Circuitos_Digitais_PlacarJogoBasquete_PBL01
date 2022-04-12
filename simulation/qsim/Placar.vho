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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/12/2022 20:06:41"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	mux8pra4 IS
    PORT (
	N : IN std_logic_vector(7 DOWNTO 0);
	escolha : IN std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0)
	);
END mux8pra4;

-- Design Ports Information


ARCHITECTURE structure OF mux8pra4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_N : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_escolha : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL \escolha~combout\ : std_logic;
SIGNAL \ors00~0_combout\ : std_logic;
SIGNAL \ors10~0_combout\ : std_logic;
SIGNAL \ors20~0_combout\ : std_logic;
SIGNAL \ors30~0_combout\ : std_logic;
SIGNAL \N~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_N <= N;
ww_escolha <= escolha;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\N[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_N(4),
	combout => \N~combout\(4));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\N[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_N(0),
	combout => \N~combout\(0));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\escolha~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_escolha,
	combout => \escolha~combout\);

-- Location: LC_X4_Y1_N2
\ors00~0\ : maxii_lcell
-- Equation(s):
-- \ors00~0_combout\ = ((\escolha~combout\ & (\N~combout\(4))) # (!\escolha~combout\ & ((\N~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \N~combout\(4),
	datac => \N~combout\(0),
	datad => \escolha~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ors00~0_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\N[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_N(5),
	combout => \N~combout\(5));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\N[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_N(1),
	combout => \N~combout\(1));

-- Location: LC_X4_Y1_N4
\ors10~0\ : maxii_lcell
-- Equation(s):
-- \ors10~0_combout\ = ((\escolha~combout\ & (\N~combout\(5))) # (!\escolha~combout\ & ((\N~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \N~combout\(5),
	datac => \N~combout\(1),
	datad => \escolha~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ors10~0_combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\N[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_N(6),
	combout => \N~combout\(6));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\N[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_N(2),
	combout => \N~combout\(2));

-- Location: LC_X4_Y1_N5
\ors20~0\ : maxii_lcell
-- Equation(s):
-- \ors20~0_combout\ = ((\escolha~combout\ & (\N~combout\(6))) # (!\escolha~combout\ & ((\N~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \escolha~combout\,
	datac => \N~combout\(6),
	datad => \N~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ors20~0_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\N[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_N(3),
	combout => \N~combout\(3));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\N[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_N(7),
	combout => \N~combout\(7));

-- Location: LC_X4_Y1_N6
\ors30~0\ : maxii_lcell
-- Equation(s):
-- \ors30~0_combout\ = (\escolha~combout\ & (((\N~combout\(7))))) # (!\escolha~combout\ & (\N~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \N~combout\(3),
	datab => \escolha~combout\,
	datad => \N~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ors30~0_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ors00~0_combout\,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ors10~0_combout\,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ors20~0_combout\,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ors30~0_combout\,
	oe => VCC,
	padio => ww_S(3));
END structure;


