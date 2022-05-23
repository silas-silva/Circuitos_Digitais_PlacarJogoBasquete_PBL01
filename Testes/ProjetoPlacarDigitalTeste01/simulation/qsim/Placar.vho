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

-- DATE "05/01/2022 11:39:16"

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

ENTITY 	conversorBinarioBcd IS
    PORT (
	A : IN std_logic_vector(6 DOWNTO 0);
	B : OUT std_logic_vector(7 DOWNTO 0);
	Passou99 : OUT std_logic
	);
END conversorBinarioBcd;

-- Design Ports Information


ARCHITECTURE structure OF conversorBinarioBcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Passou99 : std_logic;
SIGNAL \Ram0~0_combout\ : std_logic;
SIGNAL \Ram0~1_combout\ : std_logic;
SIGNAL \Ram0~3_combout\ : std_logic;
SIGNAL \Ram0~4_combout\ : std_logic;
SIGNAL \Ram0~5_combout\ : std_logic;
SIGNAL \Ram0~2_combout\ : std_logic;
SIGNAL \Ram0~6_combout\ : std_logic;
SIGNAL \Ram0~9_combout\ : std_logic;
SIGNAL \Ram0~8_combout\ : std_logic;
SIGNAL \Ram0~10_combout\ : std_logic;
SIGNAL \Ram0~7_combout\ : std_logic;
SIGNAL \Ram0~11_combout\ : std_logic;
SIGNAL \Ram0~12_combout\ : std_logic;
SIGNAL \Ram0~14_combout\ : std_logic;
SIGNAL \Ram0~13_combout\ : std_logic;
SIGNAL \Ram0~15_combout\ : std_logic;
SIGNAL \Ram0~16_combout\ : std_logic;
SIGNAL \Ram0~20_combout\ : std_logic;
SIGNAL \Ram0~18_combout\ : std_logic;
SIGNAL \Ram0~17_combout\ : std_logic;
SIGNAL \Ram0~19_combout\ : std_logic;
SIGNAL \Ram0~21_combout\ : std_logic;
SIGNAL \Ram0~24_combout\ : std_logic;
SIGNAL \Ram0~25_combout\ : std_logic;
SIGNAL \Ram0~22_combout\ : std_logic;
SIGNAL \Ram0~23_combout\ : std_logic;
SIGNAL \A~combout\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_Ram0~23_combout\ : std_logic;

BEGIN

ww_A <= A;
B <= ww_B;
Passou99 <= ww_Passou99;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Ram0~23_combout\ <= NOT \Ram0~23_combout\;

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LC_X7_Y1_N4
\Ram0~0\ : maxii_lcell
-- Equation(s):
-- \Ram0~0_combout\ = (\A~combout\(5) & ((\A~combout\(3)) # ((\A~combout\(2)) # (\A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \A~combout\(2),
	datac => \A~combout\(5),
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~0_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LC_X7_Y1_N5
\Ram0~1\ : maxii_lcell
-- Equation(s):
-- \Ram0~1_combout\ = ((\A~combout\(0)) # ((\A~combout\(6) & \Ram0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(6),
	datac => \Ram0~0_combout\,
	datad => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~1_combout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LC_X7_Y3_N5
\Ram0~3\ : maxii_lcell
-- Equation(s):
-- \Ram0~3_combout\ = (!\A~combout\(1) & (!\A~combout\(2) & (!\A~combout\(3) & !\A~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~3_combout\);

-- Location: LC_X7_Y3_N6
\Ram0~4\ : maxii_lcell
-- Equation(s):
-- \Ram0~4_combout\ = (\A~combout\(2) & ((\A~combout\(1) & (!\A~combout\(3) & !\A~combout\(4))) # (!\A~combout\(1) & (\A~combout\(3) & \A~combout\(4))))) # (!\A~combout\(2) & (\A~combout\(4) $ (((!\A~combout\(1) & \A~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6318",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~4_combout\);

-- Location: LC_X7_Y3_N7
\Ram0~5\ : maxii_lcell
-- Equation(s):
-- \Ram0~5_combout\ = (\A~combout\(6) & (\Ram0~3_combout\)) # (!\A~combout\(6) & (((\Ram0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ram0~3_combout\,
	datab => \A~combout\(6),
	datad => \Ram0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~5_combout\);

-- Location: LC_X7_Y3_N1
\Ram0~2\ : maxii_lcell
-- Equation(s):
-- \Ram0~2_combout\ = (\A~combout\(1) & (!\A~combout\(3) & ((\A~combout\(4)) # (!\A~combout\(2))))) # (!\A~combout\(1) & (\A~combout\(3) & ((\A~combout\(2)) # (!\A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4a52",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~2_combout\);

-- Location: LC_X7_Y3_N4
\Ram0~6\ : maxii_lcell
-- Equation(s):
-- \Ram0~6_combout\ = (\Ram0~5_combout\ & (\A~combout\(6) $ (((!\A~combout\(5) & !\Ram0~2_combout\))))) # (!\Ram0~5_combout\ & ((\A~combout\(5) & (!\A~combout\(6) & !\Ram0~2_combout\)) # (!\A~combout\(5) & ((\Ram0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8b94",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \Ram0~5_combout\,
	datac => \A~combout\(5),
	datad => \Ram0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~6_combout\);

-- Location: LC_X7_Y2_N0
\Ram0~9\ : maxii_lcell
-- Equation(s):
-- \Ram0~9_combout\ = (\A~combout\(4) & (!\A~combout\(2) & ((\A~combout\(3)) # (!\A~combout\(1))))) # (!\A~combout\(4) & (\A~combout\(2) & ((\A~combout\(1)) # (!\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6426",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~9_combout\);

-- Location: LC_X7_Y2_N4
\Ram0~8\ : maxii_lcell
-- Equation(s):
-- \Ram0~8_combout\ = (\A~combout\(4) & (((\A~combout\(3) & !\A~combout\(1))) # (!\A~combout\(2)))) # (!\A~combout\(4) & (\A~combout\(2) $ (((\A~combout\(3) & !\A~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66b6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~8_combout\);

-- Location: LC_X7_Y2_N5
\Ram0~10\ : maxii_lcell
-- Equation(s):
-- \Ram0~10_combout\ = (\A~combout\(6) & (((\A~combout\(5)) # (!\Ram0~8_combout\)))) # (!\A~combout\(6) & (\Ram0~9_combout\ & (!\A~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \Ram0~9_combout\,
	datac => \A~combout\(5),
	datad => \Ram0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~10_combout\);

-- Location: LC_X7_Y2_N9
\Ram0~7\ : maxii_lcell
-- Equation(s):
-- \Ram0~7_combout\ = (\A~combout\(4) & ((\A~combout\(2) & (!\A~combout\(3) & \A~combout\(1))) # (!\A~combout\(2) & (\A~combout\(3) & !\A~combout\(1))))) # (!\A~combout\(4) & (\A~combout\(2) $ (((!\A~combout\(3) & \A~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4964",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~7_combout\);

-- Location: LC_X7_Y2_N7
\Ram0~11\ : maxii_lcell
-- Equation(s):
-- \Ram0~11_combout\ = (\Ram0~10_combout\ & (((\Ram0~3_combout\) # (!\A~combout\(5))))) # (!\Ram0~10_combout\ & (\Ram0~7_combout\ & (\A~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ram0~10_combout\,
	datab => \Ram0~7_combout\,
	datac => \A~combout\(5),
	datad => \Ram0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~11_combout\);

-- Location: LC_X7_Y2_N6
\Ram0~12\ : maxii_lcell
-- Equation(s):
-- \Ram0~12_combout\ = (\A~combout\(4) & (!\A~combout\(2) & (\A~combout\(3) & !\A~combout\(1)))) # (!\A~combout\(4) & (\A~combout\(2) & (\A~combout\(3) $ (!\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4024",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~12_combout\);

-- Location: LC_X7_Y2_N2
\Ram0~14\ : maxii_lcell
-- Equation(s):
-- \Ram0~14_combout\ = (\A~combout\(3) & (!\A~combout\(1) & (\A~combout\(4) $ (!\A~combout\(2))))) # (!\A~combout\(3) & (\A~combout\(4) & (!\A~combout\(2) & \A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0290",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~14_combout\);

-- Location: LC_X7_Y2_N8
\Ram0~13\ : maxii_lcell
-- Equation(s):
-- \Ram0~13_combout\ = (\A~combout\(4) & (!\A~combout\(2) & (\A~combout\(3) $ (!\A~combout\(1))))) # (!\A~combout\(4) & (\A~combout\(2) & (!\A~combout\(3) & \A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2402",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~13_combout\);

-- Location: LC_X7_Y2_N1
\Ram0~15\ : maxii_lcell
-- Equation(s):
-- \Ram0~15_combout\ = (\A~combout\(6) & (((\A~combout\(5))))) # (!\A~combout\(6) & ((\A~combout\(5) & ((\Ram0~13_combout\))) # (!\A~combout\(5) & (\Ram0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \Ram0~14_combout\,
	datac => \A~combout\(5),
	datad => \Ram0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~15_combout\);

-- Location: LC_X7_Y2_N3
\Ram0~16\ : maxii_lcell
-- Equation(s):
-- \Ram0~16_combout\ = (\Ram0~15_combout\ & (((!\Ram0~3_combout\) # (!\A~combout\(6))))) # (!\Ram0~15_combout\ & (\Ram0~12_combout\ & (\A~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2cec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ram0~12_combout\,
	datab => \Ram0~15_combout\,
	datac => \A~combout\(6),
	datad => \Ram0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~16_combout\);

-- Location: LC_X7_Y3_N0
\Ram0~20\ : maxii_lcell
-- Equation(s):
-- \Ram0~20_combout\ = (\A~combout\(2) & (\A~combout\(3) & ((\A~combout\(1)) # (!\A~combout\(4))))) # (!\A~combout\(2) & ((\A~combout\(3) & (\A~combout\(1) & !\A~combout\(4))) # (!\A~combout\(3) & ((\A~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "83e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~20_combout\);

-- Location: LC_X7_Y3_N9
\Ram0~18\ : maxii_lcell
-- Equation(s):
-- \Ram0~18_combout\ = (\A~combout\(2) & (((\A~combout\(3))))) # (!\A~combout\(2) & ((\A~combout\(3) & ((!\A~combout\(4)))) # (!\A~combout\(3) & (!\A~combout\(1) & \A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c1f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~18_combout\);

-- Location: LC_X7_Y3_N8
\Ram0~17\ : maxii_lcell
-- Equation(s):
-- \Ram0~17_combout\ = (\A~combout\(1) & ((\A~combout\(3)) # ((\A~combout\(2) & !\A~combout\(4))))) # (!\A~combout\(1) & (\A~combout\(3) & ((\A~combout\(2)) # (!\A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~17_combout\);

-- Location: LC_X7_Y3_N3
\Ram0~19\ : maxii_lcell
-- Equation(s):
-- \Ram0~19_combout\ = (\A~combout\(6) & (((\A~combout\(5)) # (\Ram0~17_combout\)))) # (!\A~combout\(6) & (!\Ram0~18_combout\ & (\A~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bab0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \Ram0~18_combout\,
	datac => \A~combout\(5),
	datad => \Ram0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~19_combout\);

-- Location: LC_X7_Y3_N2
\Ram0~21\ : maxii_lcell
-- Equation(s):
-- \Ram0~21_combout\ = (\Ram0~19_combout\) # ((!\A~combout\(6) & (\Ram0~20_combout\ & !\A~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \Ram0~20_combout\,
	datac => \A~combout\(5),
	datad => \Ram0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~21_combout\);

-- Location: LC_X7_Y1_N7
\Ram0~24\ : maxii_lcell
-- Equation(s):
-- \Ram0~24_combout\ = (\A~combout\(3) & (((\A~combout\(2) & \A~combout\(4))) # (!\A~combout\(5)))) # (!\A~combout\(3) & ((\A~combout\(5) & ((!\A~combout\(4)))) # (!\A~combout\(5) & (\A~combout\(2) & \A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8e5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \A~combout\(2),
	datac => \A~combout\(5),
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~24_combout\);

-- Location: LC_X7_Y1_N6
\Ram0~25\ : maxii_lcell
-- Equation(s):
-- \Ram0~25_combout\ = (\A~combout\(6) & (!\A~combout\(4) & (\A~combout\(3) $ (!\Ram0~24_combout\)))) # (!\A~combout\(6) & (\Ram0~24_combout\ & ((\A~combout\(4)) # (!\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3094",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \A~combout\(6),
	datac => \Ram0~24_combout\,
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~25_combout\);

-- Location: LC_X7_Y1_N9
\Ram0~22\ : maxii_lcell
-- Equation(s):
-- \Ram0~22_combout\ = (\A~combout\(6) & (((!\A~combout\(5) & !\A~combout\(4))))) # (!\A~combout\(6) & (\A~combout\(5) & ((\A~combout\(3)) # (\A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "302c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \A~combout\(6),
	datac => \A~combout\(5),
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~22_combout\);

-- Location: LC_X7_Y1_N2
\Ram0~23\ : maxii_lcell
-- Equation(s):
-- \Ram0~23_combout\ = (((!\A~combout\(5) & !\A~combout\(4))) # (!\A~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "333f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(6),
	datac => \A~combout\(5),
	datad => \A~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~23_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_B(0));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~6_combout\,
	oe => VCC,
	padio => ww_B(1));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~11_combout\,
	oe => VCC,
	padio => ww_B(2));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~16_combout\,
	oe => VCC,
	padio => ww_B(3));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~21_combout\,
	oe => VCC,
	padio => ww_B(4));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~25_combout\,
	oe => VCC,
	padio => ww_B(5));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~22_combout\,
	oe => VCC,
	padio => ww_B(6));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Ram0~23_combout\,
	oe => VCC,
	padio => ww_B(7));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Passou99~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Passou99);
END structure;


