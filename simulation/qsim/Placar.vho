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

-- DATE "04/13/2022 01:44:03"

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

ENTITY 	decod7segs IS
    PORT (
	BCD : IN std_logic_vector(3 DOWNTO 0);
	n7Segs : OUT std_logic_vector(6 DOWNTO 0)
	);
END decod7segs;

-- Design Ports Information


ARCHITECTURE structure OF decod7segs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BCD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n7Segs : std_logic_vector(6 DOWNTO 0);
SIGNAL \ors00~0_combout\ : std_logic;
SIGNAL \ors01~0_combout\ : std_logic;
SIGNAL \ors02~0_combout\ : std_logic;
SIGNAL \ors03~0_combout\ : std_logic;
SIGNAL \ors04~combout\ : std_logic;
SIGNAL \ors05~0_combout\ : std_logic;
SIGNAL \ors06~0_combout\ : std_logic;
SIGNAL \BCD~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_ors01~0_combout\ : std_logic;
SIGNAL \ALT_INV_ors00~0_combout\ : std_logic;
SIGNAL \ALT_INV_ors03~0_combout\ : std_logic;
SIGNAL \ALT_INV_ors02~0_combout\ : std_logic;
SIGNAL \ALT_INV_ors05~0_combout\ : std_logic;
SIGNAL \ALT_INV_ors04~combout\ : std_logic;
SIGNAL \ALT_INV_ors06~0_combout\ : std_logic;

BEGIN

ww_BCD <= BCD;
n7Segs <= ww_n7Segs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ors01~0_combout\ <= NOT \ors01~0_combout\;
\ALT_INV_ors00~0_combout\ <= NOT \ors00~0_combout\;
\ALT_INV_ors03~0_combout\ <= NOT \ors03~0_combout\;
\ALT_INV_ors02~0_combout\ <= NOT \ors02~0_combout\;
\ALT_INV_ors05~0_combout\ <= NOT \ors05~0_combout\;
\ALT_INV_ors04~combout\ <= NOT \ors04~combout\;
\ALT_INV_ors06~0_combout\ <= NOT \ors06~0_combout\;

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BCD(0),
	combout => \BCD~combout\(0));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BCD(2),
	combout => \BCD~combout\(2));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BCD(1),
	combout => \BCD~combout\(1));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BCD[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BCD(3),
	combout => \BCD~combout\(3));

-- Location: LC_X4_Y1_N4
\ors00~0\ : maxii_lcell
-- Equation(s):
-- \ors00~0_combout\ = (\BCD~combout\(2) & (!\BCD~combout\(3) & ((\BCD~combout\(0)) # (\BCD~combout\(1))))) # (!\BCD~combout\(2) & ((\BCD~combout\(1) $ (\BCD~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(0),
	datab => \BCD~combout\(2),
	datac => \BCD~combout\(1),
	datad => \BCD~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ors00~0_combout\);

-- Location: LC_X4_Y1_N7
\ors01~0\ : maxii_lcell
-- Equation(s):
-- \ors01~0_combout\ = (\BCD~combout\(1) & (!\BCD~combout\(3) & ((\BCD~combout\(0)) # (!\BCD~combout\(2))))) # (!\BCD~combout\(1) & (\BCD~combout\(2) $ (((\BCD~combout\(0)) # (\BCD~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03b6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(0),
	datab => \BCD~combout\(2),
	datac => \BCD~combout\(1),
	datad => \BCD~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ors01~0_combout\);

-- Location: LC_X4_Y1_N6
\ors02~0\ : maxii_lcell
-- Equation(s):
-- \ors02~0_combout\ = (\BCD~combout\(2) & (((!\BCD~combout\(3))))) # (!\BCD~combout\(2) & ((\BCD~combout\(3) & ((!\BCD~combout\(1)))) # (!\BCD~combout\(3) & (\BCD~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(0),
	datab => \BCD~combout\(2),
	datac => \BCD~combout\(1),
	datad => \BCD~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ors02~0_combout\);

-- Location: LC_X4_Y1_N8
\ors03~0\ : maxii_lcell
-- Equation(s):
-- \ors03~0_combout\ = (\BCD~combout\(2) & (!\BCD~combout\(3) & (\BCD~combout\(0) $ (\BCD~combout\(1))))) # (!\BCD~combout\(2) & ((\BCD~combout\(1) $ (\BCD~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0378",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(0),
	datab => \BCD~combout\(2),
	datac => \BCD~combout\(1),
	datad => \BCD~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ors03~0_combout\);

-- Location: LC_X4_Y1_N2
ors04 : maxii_lcell
-- Equation(s):
-- \ors04~combout\ = (\BCD~combout\(2) & (!\BCD~combout\(3) & (\BCD~combout\(0) $ (\BCD~combout\(1))))) # (!\BCD~combout\(2) & (!\BCD~combout\(0) & (\BCD~combout\(1) $ (\BCD~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0158",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(0),
	datab => \BCD~combout\(2),
	datac => \BCD~combout\(1),
	datad => \BCD~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ors04~combout\);

-- Location: LC_X4_Y1_N9
\ors05~0\ : maxii_lcell
-- Equation(s):
-- \ors05~0_combout\ = (\BCD~combout\(2) & (!\BCD~combout\(0) & ((!\BCD~combout\(3))))) # (!\BCD~combout\(2) & (((!\BCD~combout\(1) & \BCD~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0344",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(0),
	datab => \BCD~combout\(2),
	datac => \BCD~combout\(1),
	datad => \BCD~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ors05~0_combout\);

-- Location: LC_X4_Y1_N5
\ors06~0\ : maxii_lcell
-- Equation(s):
-- \ors06~0_combout\ = (\BCD~combout\(3) & (((!\BCD~combout\(2) & !\BCD~combout\(1))))) # (!\BCD~combout\(3) & ((\BCD~combout\(2) $ (\BCD~combout\(1))) # (!\BCD~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "037d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~combout\(0),
	datab => \BCD~combout\(2),
	datac => \BCD~combout\(1),
	datad => \BCD~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ors06~0_combout\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n7Segs[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_ors00~0_combout\,
	oe => VCC,
	padio => ww_n7Segs(0));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n7Segs[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_ors01~0_combout\,
	oe => VCC,
	padio => ww_n7Segs(1));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n7Segs[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_ors02~0_combout\,
	oe => VCC,
	padio => ww_n7Segs(2));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n7Segs[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_ors03~0_combout\,
	oe => VCC,
	padio => ww_n7Segs(3));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n7Segs[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_ors04~combout\,
	oe => VCC,
	padio => ww_n7Segs(4));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n7Segs[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_ors05~0_combout\,
	oe => VCC,
	padio => ww_n7Segs(5));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\n7Segs[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_ors06~0_combout\,
	oe => VCC,
	padio => ww_n7Segs(6));
END structure;


