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

-- DATE "04/05/2022 12:32:00"

-- 
-- Device: Altera EPM570T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	decodificadorDisplay7Segmentos IS
    PORT (
	pontos : IN std_logic_vector(6 DOWNTO 0);
	timeBasquete : IN std_logic;
	display1Time0 : OUT std_logic_vector(10 DOWNTO 0);
	display2Time0 : OUT std_logic_vector(10 DOWNTO 0);
	display1Time1 : OUT std_logic_vector(10 DOWNTO 0);
	display2Time1 : OUT std_logic_vector(10 DOWNTO 0)
	);
END decodificadorDisplay7Segmentos;

-- Design Ports Information


ARCHITECTURE structure OF decodificadorDisplay7Segmentos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pontos : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_timeBasquete : std_logic;
SIGNAL ww_display1Time0 : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_display2Time0 : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_display1Time1 : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_display2Time1 : std_logic_vector(10 DOWNTO 0);
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \timeBasquete~combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux6~19_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux13~12_combout\ : std_logic;
SIGNAL \Mux6~12_combout\ : std_logic;
SIGNAL \Mux13~13_combout\ : std_logic;
SIGNAL \Mux13~14_combout\ : std_logic;
SIGNAL \Mux13~15_combout\ : std_logic;
SIGNAL \Mux13~16_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~19_combout\ : std_logic;
SIGNAL \Mux13~17_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Mux13~23_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~21_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \Mux13~10_combout\ : std_logic;
SIGNAL \Mux13~11_combout\ : std_logic;
SIGNAL \Mux13~18_combout\ : std_logic;
SIGNAL \Mux13~22_combout\ : std_logic;
SIGNAL \Mux26~12_combout\ : std_logic;
SIGNAL \Mux13~20_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux26~11_combout\ : std_logic;
SIGNAL \Mux12~11_combout\ : std_logic;
SIGNAL \Mux12~14_combout\ : std_logic;
SIGNAL \Mux12~15_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~13_combout\ : std_logic;
SIGNAL \Mux12~12_combout\ : std_logic;
SIGNAL \Mux25~14_combout\ : std_logic;
SIGNAL \Mux25~13_combout\ : std_logic;
SIGNAL \Mux25~15_combout\ : std_logic;
SIGNAL \Mux25~16_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~16_combout\ : std_logic;
SIGNAL \Mux11~17_combout\ : std_logic;
SIGNAL \Mux11~15_combout\ : std_logic;
SIGNAL \Mux11~14_combout\ : std_logic;
SIGNAL \Mux11~13_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~12_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~14_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux10~11_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux4~14_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \Mux7~12_combout\ : std_logic;
SIGNAL \Mux7~13_combout\ : std_logic;
SIGNAL \Mux4~12_combout\ : std_logic;
SIGNAL \Mux4~13_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux6~14_combout\ : std_logic;
SIGNAL \Mux6~13_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux6~20_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux6~15_combout\ : std_logic;
SIGNAL \Mux6~16_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Mux18~7_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux6~17_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \Mux15~10_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux26~16_combout\ : std_logic;
SIGNAL \Mux26~17_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~15_combout\ : std_logic;
SIGNAL \Mux26~13_combout\ : std_logic;
SIGNAL \Mux26~14_combout\ : std_logic;
SIGNAL \Mux25~20_combout\ : std_logic;
SIGNAL \Mux25~21_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~19_combout\ : std_logic;
SIGNAL \Mux25~18_combout\ : std_logic;
SIGNAL \Mux25~17_combout\ : std_logic;
SIGNAL \Mux24~12_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux24~11_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux6~21_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux6~18_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \pontos~combout\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~4_combout\ : std_logic;

BEGIN

ww_pontos <= pontos;
ww_timeBasquete <= timeBasquete;
display1Time0 <= ww_display1Time0;
display2Time0 <= ww_display2Time0;
display1Time1 <= ww_display1Time1;
display2Time1 <= ww_display2Time1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux7~13_combout\ <= NOT \Mux7~13_combout\;
\ALT_INV_Mux9~4_combout\ <= NOT \Mux9~4_combout\;

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(3),
	combout => \pontos~combout\(3));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(2),
	combout => \pontos~combout\(2));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(6),
	combout => \pontos~combout\(6));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(4),
	combout => \pontos~combout\(4));

-- Location: LC_X5_Y5_N8
\Mux6~7\ : maxii_lcell
-- Equation(s):
-- \Mux6~7_combout\ = (\pontos~combout\(4) & ((\pontos~combout\(2) & ((!\pontos~combout\(6)))) # (!\pontos~combout\(2) & (\pontos~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2e00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~7_combout\);

-- Location: LC_X5_Y5_N9
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = ((!\pontos~combout\(3) & (\pontos~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(3),
	datac => \pontos~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(0),
	combout => \pontos~combout\(0));

-- Location: LC_X5_Y5_N4
\Mux7~2\ : maxii_lcell
-- Equation(s):
-- \Mux7~2_combout\ = (((\pontos~combout\(0) & \pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pontos~combout\(0),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~2_combout\);

-- Location: LC_X5_Y5_N1
\Mux6~8\ : maxii_lcell
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~7_combout\) # ((\Mux6~0_combout\ & ((\Mux7~2_combout\) # (!\pontos~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~7_combout\,
	datab => \Mux6~0_combout\,
	datac => \Mux7~2_combout\,
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~8_combout\);

-- Location: LC_X5_Y5_N3
\Mux6~1\ : maxii_lcell
-- Equation(s):
-- \Mux6~1_combout\ = ((\pontos~combout\(4) & (\pontos~combout\(0))) # (!\pontos~combout\(4) & ((!\Mux6~0_combout\)))) # (!\pontos~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3f7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(0),
	datad => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~1_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\timeBasquete~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_timeBasquete,
	combout => \timeBasquete~combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(1),
	combout => \pontos~combout\(1));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(5),
	combout => \pontos~combout\(5));

-- Location: LC_X4_Y5_N2
\Mux6~4\ : maxii_lcell
-- Equation(s):
-- \Mux6~4_combout\ = ((\timeBasquete~combout\) # ((\pontos~combout\(1) & !\pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeBasquete~combout\,
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~4_combout\);

-- Location: LC_X4_Y5_N0
\Mux6~2\ : maxii_lcell
-- Equation(s):
-- \Mux6~2_combout\ = (\timeBasquete~combout\) # ((\pontos~combout\(3) & (\pontos~combout\(1) & \pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \timeBasquete~combout\,
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~2_combout\);

-- Location: LC_X6_Y5_N7
\Mux6~3\ : maxii_lcell
-- Equation(s):
-- \Mux6~3_combout\ = ((\pontos~combout\(2) & (\pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~3_combout\);

-- Location: LC_X4_Y5_N5
\Mux6~5\ : maxii_lcell
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~1_combout\ & (((\Mux6~3_combout\)))) # (!\Mux6~1_combout\ & ((\Mux6~3_combout\ & ((\Mux6~2_combout\))) # (!\Mux6~3_combout\ & (\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux6~4_combout\,
	datac => \Mux6~2_combout\,
	datad => \Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~5_combout\);

-- Location: LC_X4_Y5_N4
\Mux6~6\ : maxii_lcell
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux6~1_combout\ & ((\timeBasquete~combout\) # (\Mux6~5_combout\ $ (!\pontos~combout\(5))))) # (!\Mux6~1_combout\ & (((\Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8da",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \timeBasquete~combout\,
	datac => \Mux6~5_combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~6_combout\);

-- Location: LC_X4_Y5_N3
\Mux6~9\ : maxii_lcell
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux6~8_combout\ & (((\timeBasquete~combout\)))) # (!\Mux6~8_combout\ & (((\Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datac => \Mux6~6_combout\,
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~9_combout\);

-- Location: LC_X8_Y6_N3
\Mux19~0\ : maxii_lcell
-- Equation(s):
-- \Mux19~0_combout\ = (\pontos~combout\(6)) # ((\pontos~combout\(2) & (!\pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cece",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux19~0_combout\);

-- Location: LC_X8_Y5_N2
\Mux4~1\ : maxii_lcell
-- Equation(s):
-- \Mux4~1_combout\ = (\timeBasquete~combout\) # ((\pontos~combout\(3) & ((\pontos~combout\(5)) # (!\pontos~combout\(1)))) # (!\pontos~combout\(3) & (!\pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff9b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(5),
	datac => \pontos~combout\(1),
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~1_combout\);

-- Location: LC_X8_Y6_N1
\Mux6~19\ : maxii_lcell
-- Equation(s):
-- \Mux6~19_combout\ = ((!\timeBasquete~combout\ & (!\pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeBasquete~combout\,
	datac => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~19_combout\);

-- Location: LC_X8_Y6_N0
\Mux19~1\ : maxii_lcell
-- Equation(s):
-- \Mux19~1_combout\ = ((\pontos~combout\(6)) # ((\pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux19~1_combout\);

-- Location: LC_X8_Y6_N9
\Mux5~2\ : maxii_lcell
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux19~1_combout\ & (((\Mux6~19_combout\) # (\Mux19~0_combout\)))) # (!\Mux19~1_combout\ & (!\Mux4~1_combout\ & ((!\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux6~19_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~2_combout\);

-- Location: LC_X8_Y5_N5
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = ((\timeBasquete~combout\) # (\pontos~combout\(3) $ (!\pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff99",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(5),
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X5_Y6_N8
\Mux19~2\ : maxii_lcell
-- Equation(s):
-- \Mux19~2_combout\ = (!\pontos~combout\(4) & ((\pontos~combout\(3)) # ((\pontos~combout\(1) & \pontos~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(2),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux19~2_combout\);

-- Location: LC_X8_Y6_N2
\Mux5~4\ : maxii_lcell
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux19~2_combout\ & (!\timeBasquete~combout\ & (!\pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \timeBasquete~combout\,
	datac => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~4_combout\);

-- Location: LC_X8_Y6_N7
\Mux5~3\ : maxii_lcell
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux19~0_combout\ & ((\Mux5~2_combout\ & ((\Mux5~4_combout\))) # (!\Mux5~2_combout\ & (!\Mux4~0_combout\)))) # (!\Mux19~0_combout\ & (\Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce46",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Mux5~2_combout\,
	datac => \Mux4~0_combout\,
	datad => \Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~3_combout\);

-- Location: LC_X7_Y6_N7
\Mux4~6\ : maxii_lcell
-- Equation(s):
-- \Mux4~6_combout\ = (\pontos~combout\(3) & (!\pontos~combout\(4) & ((\pontos~combout\(2)) # (\pontos~combout\(6))))) # (!\pontos~combout\(3) & (!\pontos~combout\(2) & (\pontos~combout\(4) & !\pontos~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a18",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~6_combout\);

-- Location: LC_X7_Y6_N4
\Mux18~3\ : maxii_lcell
-- Equation(s):
-- \Mux18~3_combout\ = (\pontos~combout\(6) & (((!\pontos~combout\(0) & \pontos~combout\(4))) # (!\pontos~combout\(2)))) # (!\pontos~combout\(6) & (((!\pontos~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "25af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(0),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux18~3_combout\);

-- Location: LC_X7_Y6_N5
\Mux15~4\ : maxii_lcell
-- Equation(s):
-- \Mux15~4_combout\ = (!\pontos~combout\(6) & (((\pontos~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datac => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~4_combout\);

-- Location: LC_X7_Y6_N6
\Mux18~4\ : maxii_lcell
-- Equation(s):
-- \Mux18~4_combout\ = (\pontos~combout\(3) & (((!\pontos~combout\(2) & \Mux15~4_combout\)))) # (!\pontos~combout\(3) & (\Mux18~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(3),
	datad => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux18~4_combout\);

-- Location: LC_X7_Y6_N2
\Mux4~7\ : maxii_lcell
-- Equation(s):
-- \Mux4~7_combout\ = ((\Mux4~6_combout\) # ((\Mux18~4_combout\ & \pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~6_combout\,
	datac => \Mux18~4_combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~7_combout\);

-- Location: LC_X7_Y6_N3
\Mux18~0\ : maxii_lcell
-- Equation(s):
-- \Mux18~0_combout\ = (\pontos~combout\(4) & (((\pontos~combout\(2)) # (!\pontos~combout\(6))))) # (!\pontos~combout\(4) & (\pontos~combout\(3) & ((\pontos~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux18~0_combout\);

-- Location: LC_X7_Y6_N0
\Mux18~1\ : maxii_lcell
-- Equation(s):
-- \Mux18~1_combout\ = (((\pontos~combout\(6) & \pontos~combout\(0))) # (!\Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(0),
	datad => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux18~1_combout\);

-- Location: LC_X8_Y5_N7
\Mux4~2\ : maxii_lcell
-- Equation(s):
-- \Mux4~2_combout\ = (\timeBasquete~combout\) # (((!\pontos~combout\(1) & !\pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~2_combout\);

-- Location: LC_X6_Y6_N1
\Mux4~3\ : maxii_lcell
-- Equation(s):
-- \Mux4~3_combout\ = ((\timeBasquete~combout\) # ((\pontos~combout\(1) & \pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(1),
	datac => \timeBasquete~combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~3_combout\);

-- Location: LC_X7_Y5_N4
\Mux18~2\ : maxii_lcell
-- Equation(s):
-- \Mux18~2_combout\ = (\pontos~combout\(6) & ((\pontos~combout\(4) & ((\pontos~combout\(2)))) # (!\pontos~combout\(4) & (\pontos~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux18~2_combout\);

-- Location: LC_X8_Y5_N9
\Mux4~4\ : maxii_lcell
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux18~1_combout\ & (((\Mux18~2_combout\)))) # (!\Mux18~1_combout\ & ((\Mux18~2_combout\ & ((!\Mux4~3_combout\))) # (!\Mux18~2_combout\ & (!\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf11",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux18~1_combout\,
	datac => \Mux4~3_combout\,
	datad => \Mux18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~4_combout\);

-- Location: LC_X8_Y5_N4
\Mux4~5\ : maxii_lcell
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux18~1_combout\ & ((\Mux4~4_combout\ & (!\Mux4~0_combout\)) # (!\Mux4~4_combout\ & ((!\Mux4~2_combout\))))) # (!\Mux18~1_combout\ & (((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "770c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux18~1_combout\,
	datac => \Mux4~2_combout\,
	datad => \Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~5_combout\);

-- Location: LC_X7_Y6_N9
\Mux4~8\ : maxii_lcell
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux4~7_combout\ & (!\timeBasquete~combout\)) # (!\Mux4~7_combout\ & (((!\Mux18~4_combout\ & \Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4744",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \Mux4~7_combout\,
	datac => \Mux18~4_combout\,
	datad => \Mux4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~8_combout\);

-- Location: LC_X5_Y6_N2
\Mux0~3\ : maxii_lcell
-- Equation(s):
-- \Mux0~3_combout\ = (((!\pontos~combout\(2) & \pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pontos~combout\(2),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~3_combout\);

-- Location: LC_X5_Y6_N3
\Mux4~9\ : maxii_lcell
-- Equation(s):
-- \Mux4~9_combout\ = ((!\pontos~combout\(1) & ((!\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~9_combout\);

-- Location: LC_X5_Y6_N6
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\pontos~combout\(3) & (!\pontos~combout\(4) & ((\pontos~combout\(2)) # (!\Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \Mux4~9_combout\,
	datac => \pontos~combout\(2),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X5_Y6_N4
\Mux6~10\ : maxii_lcell
-- Equation(s):
-- \Mux6~10_combout\ = ((\pontos~combout\(1) & ((\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~10_combout\);

-- Location: LC_X5_Y6_N5
\Mux0~1\ : maxii_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (!\Mux0~0_combout\ & ((\pontos~combout\(3)) # ((\Mux6~10_combout\) # (!\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \Mux0~3_combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X9_Y7_N3
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\pontos~combout\(6) & (((\Mux5~4_combout\)))) # (!\pontos~combout\(6) & (!\timeBasquete~combout\ & (!\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cd01",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \pontos~combout\(6),
	datac => \Mux0~1_combout\,
	datad => \Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X9_Y7_N2
\Mux2~2\ : maxii_lcell
-- Equation(s):
-- \Mux2~2_combout\ = (!\pontos~combout\(5) & ((\pontos~combout\(3) & ((!\pontos~combout\(1)) # (!\pontos~combout\(2)))) # (!\pontos~combout\(3) & (\pontos~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "060e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(5),
	datad => \pontos~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~2_combout\);

-- Location: LC_X9_Y7_N6
\Mux2~3\ : maxii_lcell
-- Equation(s):
-- \Mux2~3_combout\ = (\timeBasquete~combout\) # ((\pontos~combout\(6)) # ((!\Mux2~2_combout\) # (!\pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(4),
	datad => \Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~3_combout\);

-- Location: LC_X7_Y5_N2
\Mux4~10\ : maxii_lcell
-- Equation(s):
-- \Mux4~10_combout\ = (!\pontos~combout\(1) & (((!\timeBasquete~combout\ & !\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datac => \timeBasquete~combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~10_combout\);

-- Location: LC_X7_Y5_N3
\Mux1~6\ : maxii_lcell
-- Equation(s):
-- \Mux1~6_combout\ = (((\pontos~combout\(3)) # (!\Mux4~10_combout\)) # (!\pontos~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(3),
	datad => \Mux4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~6_combout\);

-- Location: LC_X7_Y4_N1
\Mux1~4\ : maxii_lcell
-- Equation(s):
-- \Mux1~4_combout\ = (\timeBasquete~combout\) # (((\pontos~combout\(3)) # (\pontos~combout\(5))) # (!\pontos~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~4_combout\);

-- Location: LC_X7_Y6_N1
\Mux15~5\ : maxii_lcell
-- Equation(s):
-- \Mux15~5_combout\ = (\pontos~combout\(4) & (!\pontos~combout\(6) & ((\pontos~combout\(3)) # (\pontos~combout\(2))))) # (!\pontos~combout\(4) & (((\pontos~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~5_combout\);

-- Location: LC_X7_Y4_N4
\Mux1~5\ : maxii_lcell
-- Equation(s):
-- \Mux1~5_combout\ = (\pontos~combout\(4) & (((\Mux15~5_combout\)))) # (!\pontos~combout\(4) & ((\Mux15~5_combout\ & (!\Mux1~6_combout\)) # (!\Mux15~5_combout\ & ((!\Mux1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f503",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~6_combout\,
	datab => \Mux1~4_combout\,
	datac => \pontos~combout\(4),
	datad => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~5_combout\);

-- Location: LC_X7_Y4_N7
\Mux1~7\ : maxii_lcell
-- Equation(s):
-- \Mux1~7_combout\ = (!\timeBasquete~combout\ & (\pontos~combout\(5) & ((\pontos~combout\(1)) # (\Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datab => \timeBasquete~combout\,
	datac => \Mux1~5_combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~7_combout\);

-- Location: LC_X7_Y4_N8
\Mux1~8\ : maxii_lcell
-- Equation(s):
-- \Mux1~8_combout\ = (\Mux15~4_combout\ & (\Mux1~7_combout\ & ((\pontos~combout\(1)) # (\Mux1~5_combout\)))) # (!\Mux15~4_combout\ & (((\Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datab => \Mux1~7_combout\,
	datac => \Mux1~5_combout\,
	datad => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~8_combout\);

-- Location: LC_X9_Y7_N5
\Mux0~2\ : maxii_lcell
-- Equation(s):
-- \Mux0~2_combout\ = (!\timeBasquete~combout\ & (!\Mux0~1_combout\ & ((!\pontos~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \Mux0~1_combout\,
	datad => \pontos~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2_combout\);

-- Location: LC_X6_Y5_N0
\Mux13~12\ : maxii_lcell
-- Equation(s):
-- \Mux13~12_combout\ = (!\pontos~combout\(3) & ((\pontos~combout\(6)) # (\pontos~combout\(4) $ (\pontos~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3132",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datab => \pontos~combout\(3),
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~12_combout\);

-- Location: LC_X6_Y5_N2
\Mux6~12\ : maxii_lcell
-- Equation(s):
-- \Mux6~12_combout\ = (((\pontos~combout\(6) & \pontos~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~12_combout\);

-- Location: LC_X6_Y5_N6
\Mux13~13\ : maxii_lcell
-- Equation(s):
-- \Mux13~13_combout\ = (!\pontos~combout\(4) & (\pontos~combout\(0) & (\Mux13~12_combout\ & !\Mux6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datab => \pontos~combout\(0),
	datac => \Mux13~12_combout\,
	datad => \Mux6~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~13_combout\);

-- Location: LC_X6_Y5_N4
\Mux13~14\ : maxii_lcell
-- Equation(s):
-- \Mux13~14_combout\ = (!\pontos~combout\(6) & (\pontos~combout\(0) & (\pontos~combout\(4) & !\pontos~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(0),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~14_combout\);

-- Location: LC_X6_Y5_N8
\Mux13~15\ : maxii_lcell
-- Equation(s):
-- \Mux13~15_combout\ = (\pontos~combout\(6)) # (\pontos~combout\(4) $ ((\pontos~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f6f6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~15_combout\);

-- Location: LC_X6_Y5_N1
\Mux13~16\ : maxii_lcell
-- Equation(s):
-- \Mux13~16_combout\ = (\Mux13~13_combout\) # ((\pontos~combout\(3) & ((\Mux13~14_combout\) # (!\Mux13~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~13_combout\,
	datab => \pontos~combout\(3),
	datac => \Mux13~14_combout\,
	datad => \Mux13~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~16_combout\);

-- Location: LC_X6_Y7_N6
\Mux13~5\ : maxii_lcell
-- Equation(s):
-- \Mux13~5_combout\ = ((\pontos~combout\(3) & ((\pontos~combout\(4)) # (!\pontos~combout\(0)))) # (!\pontos~combout\(3) & ((!\pontos~combout\(4))))) # (!\pontos~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(3),
	datac => \pontos~combout\(0),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~5_combout\);

-- Location: LC_X6_Y7_N9
\Mux13~6\ : maxii_lcell
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux13~5_combout\ & ((\pontos~combout\(6)) # (\pontos~combout\(2) $ (\pontos~combout\(4))))) # (!\Mux13~5_combout\ & (\pontos~combout\(6) & (\pontos~combout\(2) $ (!\pontos~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~5_combout\,
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~6_combout\);

-- Location: LC_X6_Y5_N5
\Mux13~19\ : maxii_lcell
-- Equation(s):
-- \Mux13~19_combout\ = (\pontos~combout\(1) & (\Mux13~16_combout\)) # (!\pontos~combout\(1) & (!\Mux13~16_combout\ & ((\Mux13~14_combout\) # (!\Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9899",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datab => \Mux13~16_combout\,
	datac => \Mux13~14_combout\,
	datad => \Mux13~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~19_combout\);

-- Location: LC_X5_Y5_N5
\Mux13~17\ : maxii_lcell
-- Equation(s):
-- \Mux13~17_combout\ = (\Mux7~2_combout\ & ((\pontos~combout\(6) & (\pontos~combout\(3) & \pontos~combout\(2))) # (!\pontos~combout\(6) & ((!\pontos~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(3),
	datac => \Mux7~2_combout\,
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~17_combout\);

-- Location: LC_X6_Y6_N3
\Mux6~11\ : maxii_lcell
-- Equation(s):
-- \Mux6~11_combout\ = ((\pontos~combout\(1) & ((!\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~11_combout\);

-- Location: LC_X6_Y7_N8
\Mux13~23\ : maxii_lcell
-- Equation(s):
-- \Mux13~23_combout\ = ((\pontos~combout\(2)) # ((\pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(2),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~23_combout\);

-- Location: LC_X6_Y7_N7
\Mux13~7\ : maxii_lcell
-- Equation(s):
-- \Mux13~7_combout\ = (\pontos~combout\(2) & (!\pontos~combout\(4) & ((\pontos~combout\(3)) # (!\pontos~combout\(6))))) # (!\pontos~combout\(2) & (\pontos~combout\(3) & (!\pontos~combout\(6) & \pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "028c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~7_combout\);

-- Location: LC_X6_Y7_N4
\Mux13~8\ : maxii_lcell
-- Equation(s):
-- \Mux13~8_combout\ = (\Mux13~23_combout\ & (\Mux13~6_combout\ & ((\pontos~combout\(0)) # (!\Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~23_combout\,
	datab => \Mux13~7_combout\,
	datac => \pontos~combout\(0),
	datad => \Mux13~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~8_combout\);

-- Location: LC_X6_Y7_N2
\Mux13~4\ : maxii_lcell
-- Equation(s):
-- \Mux13~4_combout\ = (\pontos~combout\(4) & ((\pontos~combout\(2) & ((\pontos~combout\(0)))) # (!\pontos~combout\(2) & (\pontos~combout\(6))))) # (!\pontos~combout\(4) & ((\pontos~combout\(6)) # ((!\pontos~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(0),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~4_combout\);

-- Location: LC_X6_Y7_N3
\Mux13~21\ : maxii_lcell
-- Equation(s):
-- \Mux13~21_combout\ = ((!\Mux13~4_combout\ & ((!\pontos~combout\(4)) # (!\pontos~combout\(2))))) # (!\Mux13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(4),
	datac => \Mux13~8_combout\,
	datad => \Mux13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~21_combout\);

-- Location: LC_X6_Y7_N5
\Mux13~9\ : maxii_lcell
-- Equation(s):
-- \Mux13~9_combout\ = (((\Mux13~4_combout\) # (!\Mux13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mux13~8_combout\,
	datad => \Mux13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~9_combout\);

-- Location: LC_X6_Y6_N4
\Mux13~10\ : maxii_lcell
-- Equation(s):
-- \Mux13~10_combout\ = (\Mux13~21_combout\ & (((\Mux4~3_combout\) # (\Mux13~9_combout\)))) # (!\Mux13~21_combout\ & (\Mux6~2_combout\ & ((!\Mux13~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux4~3_combout\,
	datac => \Mux13~21_combout\,
	datad => \Mux13~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~10_combout\);

-- Location: LC_X6_Y6_N2
\Mux13~11\ : maxii_lcell
-- Equation(s):
-- \Mux13~11_combout\ = (\Mux13~9_combout\ & ((\timeBasquete~combout\) # ((\Mux6~11_combout\ & !\Mux13~10_combout\)))) # (!\Mux13~9_combout\ & (((\Mux13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cef0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~11_combout\,
	datab => \timeBasquete~combout\,
	datac => \Mux13~10_combout\,
	datad => \Mux13~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~11_combout\);

-- Location: LC_X6_Y6_N0
\Mux13~18\ : maxii_lcell
-- Equation(s):
-- \Mux13~18_combout\ = (\Mux13~16_combout\ & (((!\Mux6~19_combout\)))) # (!\Mux13~16_combout\ & ((\Mux13~17_combout\ & (!\Mux6~19_combout\)) # (!\Mux13~17_combout\ & ((\Mux13~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f0e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~16_combout\,
	datab => \Mux13~17_combout\,
	datac => \Mux6~19_combout\,
	datad => \Mux13~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~18_combout\);

-- Location: LC_X6_Y6_N5
\Mux13~22\ : maxii_lcell
-- Equation(s):
-- \Mux13~22_combout\ = (\Mux13~19_combout\ & ((\timeBasquete~combout\) # ((!\pontos~combout\(5))))) # (!\Mux13~19_combout\ & (((\Mux13~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \Mux13~19_combout\,
	datac => \Mux13~18_combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~22_combout\);

-- Location: LC_X8_Y4_N3
\Mux26~12\ : maxii_lcell
-- Equation(s):
-- \Mux26~12_combout\ = (\pontos~combout\(0) & (!\pontos~combout\(6) & (\pontos~combout\(2) $ (!\pontos~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0804",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(0),
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux26~12_combout\);

-- Location: LC_X7_Y7_N4
\Mux13~20\ : maxii_lcell
-- Equation(s):
-- \Mux13~20_combout\ = (\pontos~combout\(2) $ (((\pontos~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(2),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~20_combout\);

-- Location: LC_X7_Y7_N8
\Mux7~3\ : maxii_lcell
-- Equation(s):
-- \Mux7~3_combout\ = (\pontos~combout\(3) & ((\pontos~combout\(6) & (!\pontos~combout\(1) & !\pontos~combout\(5))) # (!\pontos~combout\(6) & (\pontos~combout\(1) & \pontos~combout\(5))))) # (!\pontos~combout\(3) & (!\pontos~combout\(6) & 
-- (\pontos~combout\(1) $ (\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2118",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~3_combout\);

-- Location: LC_X7_Y7_N7
\Mux9~0\ : maxii_lcell
-- Equation(s):
-- \Mux9~0_combout\ = (!\pontos~combout\(3) & (\pontos~combout\(6) & (\pontos~combout\(1) & !\pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~0_combout\);

-- Location: LC_X7_Y7_N6
\Mux9~1\ : maxii_lcell
-- Equation(s):
-- \Mux9~1_combout\ = (\pontos~combout\(3) & (!\pontos~combout\(4) & (!\pontos~combout\(1) & !\pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~1_combout\);

-- Location: LC_X7_Y7_N2
\Mux9~2\ : maxii_lcell
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux9~0_combout\ & ((\pontos~combout\(4)) # ((\Mux9~1_combout\ & !\pontos~combout\(6))))) # (!\Mux9~0_combout\ & (((\Mux9~1_combout\ & !\pontos~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \pontos~combout\(4),
	datac => \Mux9~1_combout\,
	datad => \pontos~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~2_combout\);

-- Location: LC_X7_Y7_N0
\Mux9~3\ : maxii_lcell
-- Equation(s):
-- \Mux9~3_combout\ = (!\timeBasquete~combout\ & ((\Mux13~20_combout\ & ((\Mux9~2_combout\))) # (!\Mux13~20_combout\ & (\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~20_combout\,
	datab => \Mux7~3_combout\,
	datac => \timeBasquete~combout\,
	datad => \Mux9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~3_combout\);

-- Location: LC_X8_Y4_N1
\Mux26~11\ : maxii_lcell
-- Equation(s):
-- \Mux26~11_combout\ = (\pontos~combout\(0) & ((\Mux13~15_combout\) # ((\pontos~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~15_combout\,
	datab => \pontos~combout\(0),
	datac => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux26~11_combout\);

-- Location: LC_X8_Y4_N0
\Mux12~11\ : maxii_lcell
-- Equation(s):
-- \Mux12~11_combout\ = (\Mux26~12_combout\ & (((\Mux26~11_combout\) # (!\Mux4~3_combout\)))) # (!\Mux26~12_combout\ & (\Mux9~3_combout\ & ((!\Mux26~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa4e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~12_combout\,
	datab => \Mux9~3_combout\,
	datac => \Mux4~3_combout\,
	datad => \Mux26~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~11_combout\);

-- Location: LC_X9_Y4_N1
\Mux12~14\ : maxii_lcell
-- Equation(s):
-- \Mux12~14_combout\ = (\pontos~combout\(5) & (!\pontos~combout\(4) & (\pontos~combout\(3) $ (!\pontos~combout\(1))))) # (!\pontos~combout\(5) & (\pontos~combout\(3) $ (((\pontos~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "215a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~14_combout\);

-- Location: LC_X8_Y4_N9
\Mux12~15\ : maxii_lcell
-- Equation(s):
-- \Mux12~15_combout\ = (\Mux12~14_combout\ & (((!\pontos~combout\(4) & !\pontos~combout\(6))) # (!\pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~14_combout\,
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~15_combout\);

-- Location: LC_X9_Y4_N8
\Mux12~5\ : maxii_lcell
-- Equation(s):
-- \Mux12~5_combout\ = (\pontos~combout\(3) & (!\pontos~combout\(5) & (\pontos~combout\(4) $ (!\pontos~combout\(1))))) # (!\pontos~combout\(3) & (\pontos~combout\(5) $ (((\pontos~combout\(4)) # (\pontos~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "01d6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~5_combout\);

-- Location: LC_X9_Y4_N9
\Mux12~4\ : maxii_lcell
-- Equation(s):
-- \Mux12~4_combout\ = (\pontos~combout\(3) & ((\pontos~combout\(4) & (\pontos~combout\(1) $ (\pontos~combout\(5)))) # (!\pontos~combout\(4) & (!\pontos~combout\(1) & !\pontos~combout\(5))))) # (!\pontos~combout\(3) & (\pontos~combout\(4) $ 
-- (\pontos~combout\(1) $ (\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~4_combout\);

-- Location: LC_X9_Y4_N4
\Mux12~3\ : maxii_lcell
-- Equation(s):
-- \Mux12~3_combout\ = (\pontos~combout\(6) & (\Mux12~5_combout\)) # (!\pontos~combout\(6) & (((\Mux12~4_combout\))))

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
	dataa => \Mux12~5_combout\,
	datab => \pontos~combout\(6),
	datad => \Mux12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~3_combout\);

-- Location: LC_X8_Y4_N4
\Mux12~13\ : maxii_lcell
-- Equation(s):
-- \Mux12~13_combout\ = (!\timeBasquete~combout\ & ((\pontos~combout\(2) & (\Mux12~15_combout\)) # (!\pontos~combout\(2) & ((\Mux12~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \Mux12~15_combout\,
	datac => \pontos~combout\(2),
	datad => \Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~13_combout\);

-- Location: LC_X8_Y4_N2
\Mux12~12\ : maxii_lcell
-- Equation(s):
-- \Mux12~12_combout\ = (\Mux12~11_combout\ & (((!\Mux26~11_combout\)) # (!\Mux4~2_combout\))) # (!\Mux12~11_combout\ & (((\Mux12~13_combout\ & \Mux26~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \Mux12~11_combout\,
	datac => \Mux12~13_combout\,
	datad => \Mux26~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~12_combout\);

-- Location: LC_X6_Y5_N9
\Mux25~14\ : maxii_lcell
-- Equation(s):
-- \Mux25~14_combout\ = (\pontos~combout\(0) & (((!\Mux6~12_combout\) # (!\pontos~combout\(3))) # (!\pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datab => \pontos~combout\(3),
	datac => \pontos~combout\(0),
	datad => \Mux6~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~14_combout\);

-- Location: LC_X7_Y7_N3
\Mux25~13\ : maxii_lcell
-- Equation(s):
-- \Mux25~13_combout\ = (((\pontos~combout\(3)) # (!\pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~13_combout\);

-- Location: LC_X7_Y7_N9
\Mux25~15\ : maxii_lcell
-- Equation(s):
-- \Mux25~15_combout\ = (\Mux13~20_combout\ & (((!\pontos~combout\(6))))) # (!\Mux13~20_combout\ & ((\Mux25~13_combout\) # ((!\pontos~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~13_combout\,
	datab => \pontos~combout\(6),
	datac => \Mux13~20_combout\,
	datad => \pontos~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~15_combout\);

-- Location: LC_X6_Y5_N3
\Mux25~16\ : maxii_lcell
-- Equation(s):
-- \Mux25~16_combout\ = (\Mux25~14_combout\) # ((\Mux6~3_combout\ & (\Mux13~12_combout\ & \Mux25~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux25~14_combout\,
	datac => \Mux13~12_combout\,
	datad => \Mux25~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~16_combout\);

-- Location: LC_X6_Y4_N4
\Mux11~6\ : maxii_lcell
-- Equation(s):
-- \Mux11~6_combout\ = (\pontos~combout\(3) & (\pontos~combout\(2) & (\pontos~combout\(1) $ (\pontos~combout\(5))))) # (!\pontos~combout\(3) & ((\pontos~combout\(2) & (!\pontos~combout\(1) & !\pontos~combout\(5))) # (!\pontos~combout\(2) & 
-- (\pontos~combout\(1) & \pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1884",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~6_combout\);

-- Location: LC_X6_Y4_N1
\Mux11~7\ : maxii_lcell
-- Equation(s):
-- \Mux11~7_combout\ = (\pontos~combout\(3) & (!\pontos~combout\(2) & (!\pontos~combout\(1) & !\pontos~combout\(5)))) # (!\pontos~combout\(3) & (\pontos~combout\(2) & (\pontos~combout\(1) & \pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~7_combout\);

-- Location: LC_X6_Y4_N2
\Mux11~5\ : maxii_lcell
-- Equation(s):
-- \Mux11~5_combout\ = (\pontos~combout\(4) & (((\Mux11~7_combout\)))) # (!\pontos~combout\(4) & (((\Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datac => \Mux11~6_combout\,
	datad => \Mux11~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~5_combout\);

-- Location: LC_X6_Y4_N6
\Mux11~16\ : maxii_lcell
-- Equation(s):
-- \Mux11~16_combout\ = (\pontos~combout\(2) & (\pontos~combout\(5) $ (((\pontos~combout\(3) & \pontos~combout\(1)))))) # (!\pontos~combout\(2) & (\pontos~combout\(3) $ (((!\pontos~combout\(1) & !\pontos~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ea1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~16_combout\);

-- Location: LC_X6_Y4_N9
\Mux11~17\ : maxii_lcell
-- Equation(s):
-- \Mux11~17_combout\ = (\pontos~combout\(4) & ((\pontos~combout\(2) & (\Mux11~16_combout\)) # (!\pontos~combout\(2) & ((\pontos~combout\(5)))))) # (!\pontos~combout\(4) & ((\pontos~combout\(2) & ((\pontos~combout\(5)))) # (!\pontos~combout\(2) & 
-- (\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f690",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datab => \pontos~combout\(2),
	datac => \Mux11~16_combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~17_combout\);

-- Location: LC_X6_Y4_N3
\Mux11~15\ : maxii_lcell
-- Equation(s):
-- \Mux11~15_combout\ = (!\timeBasquete~combout\ & ((\pontos~combout\(6) & ((\Mux11~17_combout\))) # (!\pontos~combout\(6) & (\Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \Mux11~5_combout\,
	datac => \pontos~combout\(6),
	datad => \Mux11~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~15_combout\);

-- Location: LC_X6_Y4_N7
\Mux11~14\ : maxii_lcell
-- Equation(s):
-- \Mux11~14_combout\ = (\pontos~combout\(0) & (((!\timeBasquete~combout\ & !\pontos~combout\(5))))) # (!\pontos~combout\(0) & (\Mux11~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "222e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~15_combout\,
	datab => \pontos~combout\(0),
	datac => \timeBasquete~combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~14_combout\);

-- Location: LC_X6_Y4_N5
\Mux11~13\ : maxii_lcell
-- Equation(s):
-- \Mux11~13_combout\ = (\Mux25~16_combout\ & (((!\timeBasquete~combout\)))) # (!\Mux25~16_combout\ & (\Mux11~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e4e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~16_combout\,
	datab => \Mux11~14_combout\,
	datac => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~13_combout\);

-- Location: LC_X5_Y6_N9
\Mux10~7\ : maxii_lcell
-- Equation(s):
-- \Mux10~7_combout\ = (\pontos~combout\(2) & (!\pontos~combout\(5) & (\pontos~combout\(3) $ (\pontos~combout\(1))))) # (!\pontos~combout\(2) & (!\pontos~combout\(3) & (\pontos~combout\(1) $ (\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0164",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(2),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~7_combout\);

-- Location: LC_X5_Y6_N7
\Mux10~8\ : maxii_lcell
-- Equation(s):
-- \Mux10~8_combout\ = (!\pontos~combout\(5) & ((\pontos~combout\(3) & (\pontos~combout\(1) & !\pontos~combout\(2))) # (!\pontos~combout\(3) & (\pontos~combout\(1) $ (!\pontos~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0049",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(2),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~8_combout\);

-- Location: LC_X5_Y6_N1
\Mux10~6\ : maxii_lcell
-- Equation(s):
-- \Mux10~6_combout\ = ((\pontos~combout\(4) & ((\Mux10~8_combout\))) # (!\pontos~combout\(4) & (\Mux10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~7_combout\,
	datac => \Mux10~8_combout\,
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~6_combout\);

-- Location: LC_X4_Y4_N5
\Mux10~4\ : maxii_lcell
-- Equation(s):
-- \Mux10~4_combout\ = (\pontos~combout\(2) & ((\pontos~combout\(1) & (\pontos~combout\(3) $ (!\pontos~combout\(5)))) # (!\pontos~combout\(1) & (!\pontos~combout\(3) & \pontos~combout\(5))))) # (!\pontos~combout\(2) & ((\pontos~combout\(1) & 
-- (\pontos~combout\(3) & !\pontos~combout\(5))) # (!\pontos~combout\(1) & (\pontos~combout\(3) $ (!\pontos~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9249",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~4_combout\);

-- Location: LC_X4_Y4_N2
\Mux10~5\ : maxii_lcell
-- Equation(s):
-- \Mux10~5_combout\ = (\pontos~combout\(1) & ((\pontos~combout\(3) & ((!\pontos~combout\(5)))) # (!\pontos~combout\(3) & (!\pontos~combout\(2) & \pontos~combout\(5))))) # (!\pontos~combout\(1) & ((\pontos~combout\(3) $ (!\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "34c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~5_combout\);

-- Location: LC_X4_Y4_N0
\Mux10~3\ : maxii_lcell
-- Equation(s):
-- \Mux10~3_combout\ = ((\pontos~combout\(4) & ((\Mux10~5_combout\))) # (!\pontos~combout\(4) & (\Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datac => \pontos~combout\(4),
	datad => \Mux10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~3_combout\);

-- Location: LC_X4_Y6_N7
\Mux10~12\ : maxii_lcell
-- Equation(s):
-- \Mux10~12_combout\ = (!\timeBasquete~combout\ & ((\pontos~combout\(6) & (\Mux10~6_combout\)) # (!\pontos~combout\(6) & ((\Mux10~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux10~3_combout\,
	datac => \pontos~combout\(6),
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~12_combout\);

-- Location: LC_X5_Y5_N2
\Mux7~5\ : maxii_lcell
-- Equation(s):
-- \Mux7~5_combout\ = (\pontos~combout\(6) & (!\pontos~combout\(5) & (\pontos~combout\(1) $ (!\pontos~combout\(3))))) # (!\pontos~combout\(6) & (\pontos~combout\(1) & (!\pontos~combout\(3) & \pontos~combout\(5))))

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
	dataa => \pontos~combout\(1),
	datab => \pontos~combout\(3),
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~5_combout\);

-- Location: LC_X5_Y5_N7
\Mux7~4\ : maxii_lcell
-- Equation(s):
-- \Mux7~4_combout\ = (!\pontos~combout\(6) & (((\pontos~combout\(3) & \Mux4~9_combout\)) # (!\pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(3),
	datac => \Mux4~9_combout\,
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~4_combout\);

-- Location: LC_X5_Y5_N6
\Mux7~14\ : maxii_lcell
-- Equation(s):
-- \Mux7~14_combout\ = (\Mux7~5_combout\ & ((\Mux7~4_combout\) # (\pontos~combout\(2) $ (!\pontos~combout\(4))))) # (!\Mux7~5_combout\ & (\Mux7~4_combout\ & (\pontos~combout\(2) $ (\pontos~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~5_combout\,
	datab => \pontos~combout\(2),
	datac => \Mux7~4_combout\,
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~14_combout\);

-- Location: LC_X5_Y7_N6
\Mux19~3\ : maxii_lcell
-- Equation(s):
-- \Mux19~3_combout\ = ((\pontos~combout\(2) & (!\pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux19~3_combout\);

-- Location: LC_X7_Y7_N1
\Mux4~11\ : maxii_lcell
-- Equation(s):
-- \Mux4~11_combout\ = (\pontos~combout\(3) & ((\pontos~combout\(1) $ (!\pontos~combout\(5))))) # (!\pontos~combout\(3) & (((\pontos~combout\(1)) # (\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~11_combout\);

-- Location: LC_X5_Y7_N9
\Mux7~6\ : maxii_lcell
-- Equation(s):
-- \Mux7~6_combout\ = ((\timeBasquete~combout\) # ((\Mux19~3_combout\ & \Mux4~11_combout\))) # (!\Mux7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fddd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~14_combout\,
	datab => \timeBasquete~combout\,
	datac => \Mux19~3_combout\,
	datad => \Mux4~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~6_combout\);

-- Location: LC_X4_Y6_N9
\Mux10~11\ : maxii_lcell
-- Equation(s):
-- \Mux10~11_combout\ = ((\pontos~combout\(0) & (\Mux10~12_combout\)) # (!\pontos~combout\(0) & ((!\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~12_combout\,
	datac => \pontos~combout\(0),
	datad => \Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~11_combout\);

-- Location: LC_X8_Y4_N8
\Mux9~4\ : maxii_lcell
-- Equation(s):
-- \Mux9~4_combout\ = ((\pontos~combout\(0)) # ((!\Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(0),
	datad => \Mux9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~4_combout\);

-- Location: LC_X6_Y4_N0
\Mux22~0\ : maxii_lcell
-- Equation(s):
-- \Mux22~0_combout\ = (!\pontos~combout\(0) & (!\pontos~combout\(4) & ((\pontos~combout\(6)) # (\pontos~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(0),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux22~0_combout\);

-- Location: LC_X5_Y7_N3
\Mux7~8\ : maxii_lcell
-- Equation(s):
-- \Mux7~8_combout\ = (\pontos~combout\(2) & (((\Mux9~0_combout\)))) # (!\pontos~combout\(2) & (!\Mux4~11_combout\ & (!\pontos~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cd01",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~11_combout\,
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(6),
	datad => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~8_combout\);

-- Location: LC_X4_Y6_N8
\Mux7~9\ : maxii_lcell
-- Equation(s):
-- \Mux7~9_combout\ = (((\timeBasquete~combout\) # (!\Mux7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mux7~8_combout\,
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~9_combout\);

-- Location: LC_X4_Y6_N2
\Mux22~1\ : maxii_lcell
-- Equation(s):
-- \Mux22~1_combout\ = ((\pontos~combout\(4)) # ((\pontos~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux22~1_combout\);

-- Location: LC_X4_Y6_N4
\Mux21~0\ : maxii_lcell
-- Equation(s):
-- \Mux21~0_combout\ = (!\pontos~combout\(0) & (((\pontos~combout\(4))) # (!\pontos~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5151",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(0),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux21~0_combout\);

-- Location: LC_X4_Y6_N3
\Mux8~0\ : maxii_lcell
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux22~1_combout\ & ((\Mux21~0_combout\ & (!\Mux7~9_combout\)) # (!\Mux21~0_combout\ & ((!\Mux7~6_combout\))))) # (!\Mux22~1_combout\ & (((!\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "434f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~9_combout\,
	datab => \Mux22~1_combout\,
	datac => \Mux21~0_combout\,
	datad => \Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~0_combout\);

-- Location: LC_X7_Y5_N7
\Mux4~14\ : maxii_lcell
-- Equation(s):
-- \Mux4~14_combout\ = (\pontos~combout\(3)) # ((\timeBasquete~combout\) # (\pontos~combout\(1) $ (!\pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(1),
	datac => \timeBasquete~combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~14_combout\);

-- Location: LC_X7_Y5_N1
\Mux7~7\ : maxii_lcell
-- Equation(s):
-- \Mux7~7_combout\ = (((\timeBasquete~combout\) # (!\Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \timeBasquete~combout\,
	datad => \Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~7_combout\);

-- Location: LC_X7_Y5_N0
\Mux8~1\ : maxii_lcell
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux22~0_combout\ & ((\Mux8~0_combout\ & ((!\Mux7~7_combout\))) # (!\Mux8~0_combout\ & (!\Mux4~14_combout\)))) # (!\Mux22~0_combout\ & (\Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "46ce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \Mux8~0_combout\,
	datac => \Mux4~14_combout\,
	datad => \Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~1_combout\);

-- Location: LC_X5_Y7_N0
\Mux7~10\ : maxii_lcell
-- Equation(s):
-- \Mux7~10_combout\ = (\Mux4~11_combout\ & ((\pontos~combout\(4) & (\pontos~combout\(2) & \pontos~combout\(0))) # (!\pontos~combout\(4) & (\pontos~combout\(2) $ (\pontos~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(0),
	datad => \Mux4~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~10_combout\);

-- Location: LC_X5_Y7_N4
\Mux7~11\ : maxii_lcell
-- Equation(s):
-- \Mux7~11_combout\ = (\pontos~combout\(4) & (!\pontos~combout\(2) & (\Mux7~5_combout\))) # (!\pontos~combout\(4) & (\pontos~combout\(2) & ((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6420",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datab => \pontos~combout\(2),
	datac => \Mux7~5_combout\,
	datad => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~11_combout\);

-- Location: LC_X5_Y7_N5
\Mux7~12\ : maxii_lcell
-- Equation(s):
-- \Mux7~12_combout\ = (\pontos~combout\(0) & (((\Mux7~11_combout\) # (!\Mux13~15_combout\)))) # (!\pontos~combout\(0) & (\Mux7~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~14_combout\,
	datab => \pontos~combout\(0),
	datac => \Mux7~11_combout\,
	datad => \Mux13~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~12_combout\);

-- Location: LC_X5_Y7_N1
\Mux7~13\ : maxii_lcell
-- Equation(s):
-- \Mux7~13_combout\ = ((\Mux7~10_combout\) # ((\timeBasquete~combout\) # (!\Mux7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~10_combout\,
	datac => \Mux7~12_combout\,
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~13_combout\);

-- Location: LC_X4_Y5_N1
\Mux4~12\ : maxii_lcell
-- Equation(s):
-- \Mux4~12_combout\ = ((\pontos~combout\(3) & (\pontos~combout\(1) & \pontos~combout\(5)))) # (!\timeBasquete~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \timeBasquete~combout\,
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~12_combout\);

-- Location: LC_X4_Y5_N9
\Mux4~13\ : maxii_lcell
-- Equation(s):
-- \Mux4~13_combout\ = (((\pontos~combout\(1) & !\pontos~combout\(5))) # (!\timeBasquete~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeBasquete~combout\,
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~13_combout\);

-- Location: LC_X4_Y5_N6
\Mux20~0\ : maxii_lcell
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux6~1_combout\ & (((\Mux6~3_combout\)))) # (!\Mux6~1_combout\ & ((\Mux6~3_combout\ & (\Mux4~12_combout\)) # (!\Mux6~3_combout\ & ((\Mux4~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux4~12_combout\,
	datac => \Mux4~13_combout\,
	datad => \Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux20~0_combout\);

-- Location: LC_X4_Y5_N7
\Mux20~1\ : maxii_lcell
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux6~1_combout\ & ((\Mux20~0_combout\ $ (!\pontos~combout\(5))) # (!\timeBasquete~combout\))) # (!\Mux6~1_combout\ & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f27a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \timeBasquete~combout\,
	datac => \Mux20~0_combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux20~1_combout\);

-- Location: LC_X4_Y5_N8
\Mux20~2\ : maxii_lcell
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux6~8_combout\ & (((!\timeBasquete~combout\)))) # (!\Mux6~8_combout\ & (((\Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datac => \Mux20~1_combout\,
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux20~2_combout\);

-- Location: LC_X7_Y5_N6
\Mux6~14\ : maxii_lcell
-- Equation(s):
-- \Mux6~14_combout\ = (\timeBasquete~combout\ & ((\pontos~combout\(3) & (\pontos~combout\(1) & !\pontos~combout\(5))) # (!\pontos~combout\(3) & ((\pontos~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(1),
	datac => \timeBasquete~combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~14_combout\);

-- Location: LC_X8_Y5_N1
\Mux6~13\ : maxii_lcell
-- Equation(s):
-- \Mux6~13_combout\ = ((\timeBasquete~combout\ & (\pontos~combout\(3) $ (\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(5),
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~13_combout\);

-- Location: LC_X8_Y6_N4
\Mux19~4\ : maxii_lcell
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux19~1_combout\ & (((\Mux19~0_combout\)))) # (!\Mux19~1_combout\ & ((\Mux19~0_combout\ & ((\Mux6~13_combout\))) # (!\Mux19~0_combout\ & (\Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~14_combout\,
	datab => \Mux6~13_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux19~4_combout\);

-- Location: LC_X8_Y6_N8
\Mux6~20\ : maxii_lcell
-- Equation(s):
-- \Mux6~20_combout\ = ((\timeBasquete~combout\ & (!\pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \timeBasquete~combout\,
	datac => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~20_combout\);

-- Location: LC_X8_Y6_N5
\Mux19~5\ : maxii_lcell
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux19~1_combout\ & (\Mux6~20_combout\ & ((\Mux19~2_combout\) # (!\Mux19~4_combout\)))) # (!\Mux19~1_combout\ & (((\Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux19~1_combout\,
	datac => \Mux19~4_combout\,
	datad => \Mux6~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux19~5_combout\);

-- Location: LC_X8_Y5_N6
\Mux6~15\ : maxii_lcell
-- Equation(s):
-- \Mux6~15_combout\ = (\timeBasquete~combout\ & (((!\pontos~combout\(5)) # (!\pontos~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~15_combout\);

-- Location: LC_X8_Y5_N3
\Mux6~16\ : maxii_lcell
-- Equation(s):
-- \Mux6~16_combout\ = (\timeBasquete~combout\ & (((\pontos~combout\(1)) # (\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~16_combout\);

-- Location: LC_X8_Y5_N0
\Mux18~5\ : maxii_lcell
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux18~2_combout\ & (((\Mux18~1_combout\)))) # (!\Mux18~2_combout\ & ((\Mux18~1_combout\ & (\Mux6~16_combout\)) # (!\Mux18~1_combout\ & ((\Mux6~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~16_combout\,
	datab => \Mux18~2_combout\,
	datac => \Mux6~14_combout\,
	datad => \Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux18~5_combout\);

-- Location: LC_X8_Y5_N8
\Mux18~6\ : maxii_lcell
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux18~2_combout\ & ((\Mux18~5_combout\ & ((\Mux6~13_combout\))) # (!\Mux18~5_combout\ & (\Mux6~15_combout\)))) # (!\Mux18~2_combout\ & (((\Mux18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~15_combout\,
	datab => \Mux18~2_combout\,
	datac => \Mux18~5_combout\,
	datad => \Mux6~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux18~6_combout\);

-- Location: LC_X7_Y6_N8
\Mux18~7\ : maxii_lcell
-- Equation(s):
-- \Mux18~7_combout\ = (\Mux4~7_combout\ & (\timeBasquete~combout\)) # (!\Mux4~7_combout\ & (((!\Mux18~4_combout\ & \Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8b88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \Mux4~7_combout\,
	datac => \Mux18~4_combout\,
	datad => \Mux18~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux18~7_combout\);

-- Location: LC_X9_Y7_N9
\Mux14~0\ : maxii_lcell
-- Equation(s):
-- \Mux14~0_combout\ = (\timeBasquete~combout\ & (!\Mux0~1_combout\ & ((!\pontos~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \Mux0~1_combout\,
	datad => \pontos~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~0_combout\);

-- Location: LC_X8_Y6_N6
\Mux17~0\ : maxii_lcell
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux14~0_combout\) # ((\Mux19~2_combout\ & (\pontos~combout\(6) & \Mux6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \pontos~combout\(6),
	datac => \Mux6~20_combout\,
	datad => \Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux17~0_combout\);

-- Location: LC_X9_Y7_N8
\Mux16~2\ : maxii_lcell
-- Equation(s):
-- \Mux16~2_combout\ = (\timeBasquete~combout\ & (!\pontos~combout\(6) & (\pontos~combout\(4) & \Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(4),
	datad => \Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux16~2_combout\);

-- Location: LC_X7_Y4_N0
\Mux15~6\ : maxii_lcell
-- Equation(s):
-- \Mux15~6_combout\ = (\timeBasquete~combout\ & (\pontos~combout\(6) & (!\pontos~combout\(3) & !\pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~6_combout\);

-- Location: LC_X7_Y4_N9
\Mux6~17\ : maxii_lcell
-- Equation(s):
-- \Mux6~17_combout\ = (!\pontos~combout\(1) & (((\timeBasquete~combout\ & !\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datac => \timeBasquete~combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~17_combout\);

-- Location: LC_X7_Y4_N2
\Mux15~8\ : maxii_lcell
-- Equation(s):
-- \Mux15~8_combout\ = ((\pontos~combout\(6) & (!\pontos~combout\(3) & \Mux6~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(3),
	datad => \Mux6~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~8_combout\);

-- Location: LC_X7_Y4_N6
\Mux15~7\ : maxii_lcell
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux15~5_combout\ & (((\pontos~combout\(4)) # (\Mux15~8_combout\)))) # (!\Mux15~5_combout\ & (\Mux15~6_combout\ & (!\pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datab => \Mux15~6_combout\,
	datac => \pontos~combout\(4),
	datad => \Mux15~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~7_combout\);

-- Location: LC_X7_Y4_N3
\Mux15~9\ : maxii_lcell
-- Equation(s):
-- \Mux15~9_combout\ = (\timeBasquete~combout\ & (\pontos~combout\(5) & ((\pontos~combout\(1)) # (\Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datab => \timeBasquete~combout\,
	datac => \Mux15~7_combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~9_combout\);

-- Location: LC_X7_Y4_N5
\Mux15~10\ : maxii_lcell
-- Equation(s):
-- \Mux15~10_combout\ = (\Mux15~4_combout\ & (\Mux15~9_combout\ & ((\pontos~combout\(1)) # (\Mux15~7_combout\)))) # (!\Mux15~4_combout\ & (((\Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datab => \Mux15~4_combout\,
	datac => \Mux15~7_combout\,
	datad => \Mux15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~10_combout\);

-- Location: LC_X6_Y6_N9
\Mux27~2\ : maxii_lcell
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux13~21_combout\ & (((\Mux13~9_combout\)))) # (!\Mux13~21_combout\ & ((\Mux13~9_combout\ & ((\Mux4~13_combout\))) # (!\Mux13~9_combout\ & (\Mux4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~21_combout\,
	datab => \Mux4~12_combout\,
	datac => \Mux4~13_combout\,
	datad => \Mux13~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux27~2_combout\);

-- Location: LC_X6_Y6_N7
\Mux27~3\ : maxii_lcell
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux13~21_combout\ & (((!\Mux27~2_combout\ & \Mux6~10_combout\)) # (!\timeBasquete~combout\))) # (!\Mux13~21_combout\ & (\Mux27~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e4e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~21_combout\,
	datab => \Mux27~2_combout\,
	datac => \timeBasquete~combout\,
	datad => \Mux6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux27~3_combout\);

-- Location: LC_X6_Y6_N6
\Mux27~4\ : maxii_lcell
-- Equation(s):
-- \Mux27~4_combout\ = (\Mux13~16_combout\ & (((!\Mux6~20_combout\)))) # (!\Mux13~16_combout\ & ((\Mux13~17_combout\ & ((!\Mux6~20_combout\))) # (!\Mux13~17_combout\ & (\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~16_combout\,
	datab => \Mux13~17_combout\,
	datac => \Mux27~3_combout\,
	datad => \Mux6~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux27~4_combout\);

-- Location: LC_X6_Y6_N8
\Mux27~5\ : maxii_lcell
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux13~19_combout\ & (((!\pontos~combout\(5))) # (!\timeBasquete~combout\))) # (!\Mux13~19_combout\ & (((\Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \Mux13~19_combout\,
	datac => \Mux27~4_combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux27~5_combout\);

-- Location: LC_X7_Y7_N5
\Mux23~0\ : maxii_lcell
-- Equation(s):
-- \Mux23~0_combout\ = (\timeBasquete~combout\ & ((\Mux13~20_combout\ & ((\Mux9~2_combout\))) # (!\Mux13~20_combout\ & (\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Mux9~2_combout\,
	datac => \timeBasquete~combout\,
	datad => \Mux13~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux23~0_combout\);

-- Location: LC_X9_Y4_N7
\Mux26~16\ : maxii_lcell
-- Equation(s):
-- \Mux26~16_combout\ = (\pontos~combout\(5) & (!\pontos~combout\(4) & (\pontos~combout\(3) $ (!\pontos~combout\(1))))) # (!\pontos~combout\(5) & (\pontos~combout\(3) $ (((\pontos~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "215a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux26~16_combout\);

-- Location: LC_X9_Y4_N6
\Mux26~17\ : maxii_lcell
-- Equation(s):
-- \Mux26~17_combout\ = (\Mux26~16_combout\ & (((!\pontos~combout\(4) & !\pontos~combout\(6))) # (!\pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(5),
	datab => \pontos~combout\(4),
	datac => \Mux26~16_combout\,
	datad => \pontos~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux26~17_combout\);

-- Location: LC_X9_Y4_N0
\Mux26~5\ : maxii_lcell
-- Equation(s):
-- \Mux26~5_combout\ = (\pontos~combout\(3) & (!\pontos~combout\(5) & (\pontos~combout\(4) $ (!\pontos~combout\(1))))) # (!\pontos~combout\(3) & (\pontos~combout\(5) $ (((\pontos~combout\(4)) # (\pontos~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "01d6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux26~5_combout\);

-- Location: LC_X9_Y4_N3
\Mux26~4\ : maxii_lcell
-- Equation(s):
-- \Mux26~4_combout\ = (\pontos~combout\(3) & ((\pontos~combout\(4) & (\pontos~combout\(1) $ (\pontos~combout\(5)))) # (!\pontos~combout\(4) & (!\pontos~combout\(1) & !\pontos~combout\(5))))) # (!\pontos~combout\(3) & (\pontos~combout\(4) $ 
-- (\pontos~combout\(1) $ (\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux26~4_combout\);

-- Location: LC_X9_Y4_N2
\Mux26~3\ : maxii_lcell
-- Equation(s):
-- \Mux26~3_combout\ = ((\pontos~combout\(6) & (\Mux26~5_combout\)) # (!\pontos~combout\(6) & ((\Mux26~4_combout\))))

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
	datab => \pontos~combout\(6),
	datac => \Mux26~5_combout\,
	datad => \Mux26~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux26~3_combout\);

-- Location: LC_X9_Y4_N5
\Mux26~15\ : maxii_lcell
-- Equation(s):
-- \Mux26~15_combout\ = (\timeBasquete~combout\ & ((\pontos~combout\(2) & (\Mux26~17_combout\)) # (!\pontos~combout\(2) & ((\Mux26~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a280",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \pontos~combout\(2),
	datac => \Mux26~17_combout\,
	datad => \Mux26~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux26~15_combout\);

-- Location: LC_X8_Y4_N5
\Mux26~13\ : maxii_lcell
-- Equation(s):
-- \Mux26~13_combout\ = (\Mux26~12_combout\ & (\Mux26~11_combout\)) # (!\Mux26~12_combout\ & ((\Mux26~11_combout\ & ((\Mux26~15_combout\))) # (!\Mux26~11_combout\ & (\Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~12_combout\,
	datab => \Mux26~11_combout\,
	datac => \Mux23~0_combout\,
	datad => \Mux26~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux26~13_combout\);

-- Location: LC_X8_Y4_N6
\Mux26~14\ : maxii_lcell
-- Equation(s):
-- \Mux26~14_combout\ = (\Mux26~12_combout\ & ((\Mux26~13_combout\ & (\Mux6~16_combout\)) # (!\Mux26~13_combout\ & ((\Mux6~15_combout\))))) # (!\Mux26~12_combout\ & (((\Mux26~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~12_combout\,
	datab => \Mux6~16_combout\,
	datac => \Mux26~13_combout\,
	datad => \Mux6~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux26~14_combout\);

-- Location: LC_X4_Y4_N7
\Mux25~20\ : maxii_lcell
-- Equation(s):
-- \Mux25~20_combout\ = (\pontos~combout\(2) & (\pontos~combout\(5) $ (((\pontos~combout\(4) & \pontos~combout\(3)))))) # (!\pontos~combout\(2) & ((\pontos~combout\(4) & ((\pontos~combout\(5)))) # (!\pontos~combout\(4) & ((\pontos~combout\(3)) # 
-- (!\pontos~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7e91",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~20_combout\);

-- Location: LC_X4_Y4_N8
\Mux25~21\ : maxii_lcell
-- Equation(s):
-- \Mux25~21_combout\ = (\Mux25~20_combout\ & ((\pontos~combout\(5)) # (\pontos~combout\(1) $ (!\pontos~combout\(3))))) # (!\Mux25~20_combout\ & (!\pontos~combout\(1) & (\pontos~combout\(3) & \pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba82",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~20_combout\,
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~21_combout\);

-- Location: LC_X4_Y4_N3
\Mux25~6\ : maxii_lcell
-- Equation(s):
-- \Mux25~6_combout\ = (\pontos~combout\(3) & (!\pontos~combout\(1) & (\pontos~combout\(4) & !\pontos~combout\(5)))) # (!\pontos~combout\(3) & (\pontos~combout\(1) & (!\pontos~combout\(4) & \pontos~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0420",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~6_combout\);

-- Location: LC_X4_Y4_N6
\Mux25~7\ : maxii_lcell
-- Equation(s):
-- \Mux25~7_combout\ = (\pontos~combout\(3) & (!\pontos~combout\(4) & (\pontos~combout\(1) $ (\pontos~combout\(5))))) # (!\pontos~combout\(3) & ((\pontos~combout\(1) & (\pontos~combout\(4) & \pontos~combout\(5))) # (!\pontos~combout\(1) & 
-- (!\pontos~combout\(4) & !\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4209",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~7_combout\);

-- Location: LC_X4_Y4_N9
\Mux25~5\ : maxii_lcell
-- Equation(s):
-- \Mux25~5_combout\ = ((\pontos~combout\(2) & ((\Mux25~7_combout\))) # (!\pontos~combout\(2) & (\Mux25~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~6_combout\,
	datac => \Mux25~7_combout\,
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~5_combout\);

-- Location: LC_X4_Y4_N4
\Mux25~19\ : maxii_lcell
-- Equation(s):
-- \Mux25~19_combout\ = (\timeBasquete~combout\ & ((\pontos~combout\(6) & (\Mux25~21_combout\)) # (!\pontos~combout\(6) & ((\Mux25~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~21_combout\,
	datab => \Mux25~5_combout\,
	datac => \pontos~combout\(6),
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~19_combout\);

-- Location: LC_X4_Y4_N1
\Mux25~18\ : maxii_lcell
-- Equation(s):
-- \Mux25~18_combout\ = (\pontos~combout\(0) & (\timeBasquete~combout\ & ((!\pontos~combout\(5))))) # (!\pontos~combout\(0) & (((\Mux25~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(0),
	datab => \timeBasquete~combout\,
	datac => \Mux25~19_combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~18_combout\);

-- Location: LC_X6_Y4_N8
\Mux25~17\ : maxii_lcell
-- Equation(s):
-- \Mux25~17_combout\ = (\Mux25~16_combout\ & (\timeBasquete~combout\)) # (!\Mux25~16_combout\ & (((\Mux25~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \Mux25~18_combout\,
	datac => \Mux25~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux25~17_combout\);

-- Location: LC_X4_Y6_N0
\Mux24~12\ : maxii_lcell
-- Equation(s):
-- \Mux24~12_combout\ = (\timeBasquete~combout\ & ((\pontos~combout\(6) & (\Mux10~6_combout\)) # (!\pontos~combout\(6) & ((\Mux10~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux10~3_combout\,
	datac => \pontos~combout\(6),
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux24~12_combout\);

-- Location: LC_X5_Y7_N8
\Mux21~1\ : maxii_lcell
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux7~14_combout\ & (\timeBasquete~combout\ & ((!\Mux4~11_combout\) # (!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~14_combout\,
	datab => \timeBasquete~combout\,
	datac => \Mux19~3_combout\,
	datad => \Mux4~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux21~1_combout\);

-- Location: LC_X4_Y6_N1
\Mux24~11\ : maxii_lcell
-- Equation(s):
-- \Mux24~11_combout\ = ((\pontos~combout\(0) & (\Mux24~12_combout\)) # (!\pontos~combout\(0) & ((\Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux24~12_combout\,
	datac => \pontos~combout\(0),
	datad => \Mux21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux24~11_combout\);

-- Location: LC_X8_Y4_N7
\Mux23~1\ : maxii_lcell
-- Equation(s):
-- \Mux23~1_combout\ = ((!\pontos~combout\(0) & (\Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(0),
	datac => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux23~1_combout\);

-- Location: LC_X7_Y5_N9
\Mux6~21\ : maxii_lcell
-- Equation(s):
-- \Mux6~21_combout\ = (!\pontos~combout\(3) & (\timeBasquete~combout\ & (\pontos~combout\(1) $ (\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \pontos~combout\(1),
	datac => \timeBasquete~combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~21_combout\);

-- Location: LC_X4_Y6_N6
\Mux21~2\ : maxii_lcell
-- Equation(s):
-- \Mux21~2_combout\ = (((\Mux7~8_combout\ & \timeBasquete~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mux7~8_combout\,
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux21~2_combout\);

-- Location: LC_X4_Y6_N5
\Mux22~2\ : maxii_lcell
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux22~1_combout\ & ((\Mux21~0_combout\ & (\Mux21~2_combout\)) # (!\Mux21~0_combout\ & ((\Mux21~1_combout\))))) # (!\Mux22~1_combout\ & (((!\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f83",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~2_combout\,
	datab => \Mux22~1_combout\,
	datac => \Mux21~0_combout\,
	datad => \Mux21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux22~2_combout\);

-- Location: LC_X7_Y5_N8
\Mux6~18\ : maxii_lcell
-- Equation(s):
-- \Mux6~18_combout\ = (((\timeBasquete~combout\ & \Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \timeBasquete~combout\,
	datad => \Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~18_combout\);

-- Location: LC_X7_Y5_N5
\Mux22~3\ : maxii_lcell
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux22~0_combout\ & ((\Mux22~2_combout\ & ((\Mux6~18_combout\))) # (!\Mux22~2_combout\ & (\Mux6~21_combout\)))) # (!\Mux22~0_combout\ & (((\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \Mux6~21_combout\,
	datac => \Mux22~2_combout\,
	datad => \Mux6~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux22~3_combout\);

-- Location: LC_X5_Y7_N7
\Mux21~3\ : maxii_lcell
-- Equation(s):
-- \Mux21~3_combout\ = (\pontos~combout\(4) & (((!\pontos~combout\(0))) # (!\pontos~combout\(2)))) # (!\pontos~combout\(4) & (\pontos~combout\(2) $ ((!\pontos~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6b6b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux21~3_combout\);

-- Location: LC_X5_Y7_N2
\Mux21~4\ : maxii_lcell
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux7~12_combout\ & (\timeBasquete~combout\ & ((\Mux21~3_combout\) # (!\Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~11_combout\,
	datab => \Mux21~3_combout\,
	datac => \Mux7~12_combout\,
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux21~4_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~9_combout\,
	oe => VCC,
	padio => ww_display1Time0(0));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~3_combout\,
	oe => VCC,
	padio => ww_display1Time0(1));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~8_combout\,
	oe => VCC,
	padio => ww_display1Time0(2));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~0_combout\,
	oe => VCC,
	padio => ww_display1Time0(3));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux2~3_combout\,
	oe => VCC,
	padio => ww_display1Time0(4));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~8_combout\,
	oe => VCC,
	padio => ww_display1Time0(5));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~2_combout\,
	oe => VCC,
	padio => ww_display1Time0(6));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time0(7));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time0(8));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time0(9));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_display1Time0(10));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux13~22_combout\,
	oe => VCC,
	padio => ww_display2Time0(0));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux12~12_combout\,
	oe => VCC,
	padio => ww_display2Time0(1));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux11~13_combout\,
	oe => VCC,
	padio => ww_display2Time0(2));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux10~11_combout\,
	oe => VCC,
	padio => ww_display2Time0(3));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux9~4_combout\,
	oe => VCC,
	padio => ww_display2Time0(4));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~1_combout\,
	oe => VCC,
	padio => ww_display2Time0(5));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux7~13_combout\,
	oe => VCC,
	padio => ww_display2Time0(6));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display2Time0(7));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display2Time0(8));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_display2Time0(9));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display2Time0(10));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux20~2_combout\,
	oe => VCC,
	padio => ww_display1Time1(0));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux19~5_combout\,
	oe => VCC,
	padio => ww_display1Time1(1));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux18~7_combout\,
	oe => VCC,
	padio => ww_display1Time1(2));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux17~0_combout\,
	oe => VCC,
	padio => ww_display1Time1(3));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux16~2_combout\,
	oe => VCC,
	padio => ww_display1Time1(4));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux15~10_combout\,
	oe => VCC,
	padio => ww_display1Time1(5));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux14~0_combout\,
	oe => VCC,
	padio => ww_display1Time1(6));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time1(7));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_display1Time1(8));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time1(9));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time1(10));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux27~5_combout\,
	oe => VCC,
	padio => ww_display2Time1(0));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux26~14_combout\,
	oe => VCC,
	padio => ww_display2Time1(1));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux25~17_combout\,
	oe => VCC,
	padio => ww_display2Time1(2));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux24~11_combout\,
	oe => VCC,
	padio => ww_display2Time1(3));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux23~1_combout\,
	oe => VCC,
	padio => ww_display2Time1(4));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux22~3_combout\,
	oe => VCC,
	padio => ww_display2Time1(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux21~4_combout\,
	oe => VCC,
	padio => ww_display2Time1(6));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_display2Time1(7));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display2Time1(8));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display2Time1(9));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display2Time1(10));
END structure;


