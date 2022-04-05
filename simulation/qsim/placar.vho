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

-- DATE "04/04/2022 23:30:25"

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
	display1Time0 : BUFFER std_logic_vector(10 DOWNTO 0);
	display2Time0 : BUFFER std_logic_vector(10 DOWNTO 0);
	display1Time1 : BUFFER std_logic_vector(10 DOWNTO 0);
	display2Time1 : BUFFER std_logic_vector(10 DOWNTO 0)
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
SIGNAL \Ram0~0_combout\ : std_logic;
SIGNAL \Ram0~1_combout\ : std_logic;
SIGNAL \Mux13~10_combout\ : std_logic;
SIGNAL \Mux13~11_combout\ : std_logic;
SIGNAL \Mux13~13_combout\ : std_logic;
SIGNAL \Mux13~12_combout\ : std_logic;
SIGNAL \Mux13~14_combout\ : std_logic;
SIGNAL \timeBasquete~combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~18_combout\ : std_logic;
SIGNAL \Mux13~19_combout\ : std_logic;
SIGNAL \Mux13~20_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~17_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~15_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~17_combout\ : std_logic;
SIGNAL \Mux5~26_combout\ : std_logic;
SIGNAL \Mux5~16_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux5~18_combout\ : std_logic;
SIGNAL \Mux5~11_combout\ : std_logic;
SIGNAL \Mux5~12_combout\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \Mux5~13_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~14_combout\ : std_logic;
SIGNAL \Mux5~19_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux5~20_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux5~21_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux5~22_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux5~23_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux5~25_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux13~15_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux5~24_combout\ : std_logic;
SIGNAL \Mux8~11_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux13~16_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux11~10_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Mux11~11_combout\ : std_logic;
SIGNAL \Mux10~10_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux10~11_combout\ : std_logic;
SIGNAL \Mux10~12_combout\ : std_logic;
SIGNAL \Mux10~13_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux11~12_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux11~13_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Mux8~10_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \pontos~combout\ : std_logic_vector(6 DOWNTO 0);

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

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(6),
	combout => \pontos~combout\(6));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(5),
	combout => \pontos~combout\(5));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(4),
	combout => \pontos~combout\(4));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(3),
	combout => \pontos~combout\(3));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(2),
	combout => \pontos~combout\(2));

-- Location: LC_X7_Y6_N0
\Ram0~0\ : maxii_lcell
-- Equation(s):
-- \Ram0~0_combout\ = (\pontos~combout\(5) & ((\pontos~combout\(4)) # ((\pontos~combout\(3)) # (\pontos~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(5),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~0_combout\);

-- Location: LC_X7_Y6_N5
\Ram0~1\ : maxii_lcell
-- Equation(s):
-- \Ram0~1_combout\ = ((\pontos~combout\(6) & (\Ram0~0_combout\)))

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
	datab => \pontos~combout\(6),
	datac => \Ram0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Ram0~1_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(1),
	combout => \pontos~combout\(1));

-- Location: LC_X7_Y6_N6
\Mux13~10\ : maxii_lcell
-- Equation(s):
-- \Mux13~10_combout\ = (\pontos~combout\(5) & ((\pontos~combout\(2)) # (\pontos~combout\(6) $ (!\pontos~combout\(3))))) # (!\pontos~combout\(5) & (\pontos~combout\(2) & ((!\pontos~combout\(3)) # (!\pontos~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bf82",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(5),
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~10_combout\);

-- Location: LC_X7_Y6_N4
\Mux13~11\ : maxii_lcell
-- Equation(s):
-- \Mux13~11_combout\ = (\pontos~combout\(5) & (\pontos~combout\(6) $ (((!\pontos~combout\(3) & !\pontos~combout\(2)))))) # (!\pontos~combout\(5) & (\pontos~combout\(3) & ((!\pontos~combout\(2)) # (!\pontos~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "98d2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(5),
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~11_combout\);

-- Location: LC_X7_Y6_N2
\Mux13~13\ : maxii_lcell
-- Equation(s):
-- \Mux13~13_combout\ = (\Mux13~10_combout\ & ((\pontos~combout\(4) & (\Mux13~11_combout\ & !\pontos~combout\(6))) # (!\pontos~combout\(4) & (!\Mux13~11_combout\ & \pontos~combout\(6))))) # (!\Mux13~10_combout\ & (\Mux13~11_combout\ & (\pontos~combout\(4) $ 
-- (!\pontos~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4290",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~10_combout\,
	datab => \pontos~combout\(4),
	datac => \Mux13~11_combout\,
	datad => \pontos~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~13_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pontos[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pontos(0),
	combout => \pontos~combout\(0));

-- Location: LC_X7_Y6_N9
\Mux13~12\ : maxii_lcell
-- Equation(s):
-- \Mux13~12_combout\ = (\Mux13~11_combout\ & (!\Mux13~10_combout\ & (\pontos~combout\(4) & !\pontos~combout\(6)))) # (!\Mux13~11_combout\ & (\Mux13~10_combout\ $ (\pontos~combout\(4) $ (\pontos~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0946",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~10_combout\,
	datab => \pontos~combout\(4),
	datac => \Mux13~11_combout\,
	datad => \pontos~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~12_combout\);

-- Location: LC_X7_Y6_N3
\Mux13~14\ : maxii_lcell
-- Equation(s):
-- \Mux13~14_combout\ = (\Mux13~13_combout\ & (((\Mux13~12_combout\)) # (!\pontos~combout\(1)))) # (!\Mux13~13_combout\ & (((!\Mux13~12_combout\) # (!\pontos~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf77",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datab => \Mux13~13_combout\,
	datac => \pontos~combout\(0),
	datad => \Mux13~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~14_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\timeBasquete~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_timeBasquete,
	combout => \timeBasquete~combout\);

-- Location: LC_X6_Y6_N7
\Mux13~2\ : maxii_lcell
-- Equation(s):
-- \Mux13~2_combout\ = (\pontos~combout\(2) & (!\pontos~combout\(4) & (\pontos~combout\(1) $ (\pontos~combout\(5))))) # (!\pontos~combout\(2) & (\pontos~combout\(4) & ((\pontos~combout\(5)) # (!\pontos~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5218",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~2_combout\);

-- Location: LC_X6_Y6_N6
\Mux13~3\ : maxii_lcell
-- Equation(s):
-- \Mux13~3_combout\ = (\pontos~combout\(2) & ((\pontos~combout\(4) & ((!\pontos~combout\(5)))) # (!\pontos~combout\(4) & (\pontos~combout\(1) & \pontos~combout\(5))))) # (!\pontos~combout\(2) & (\pontos~combout\(5) $ (((\pontos~combout\(1)) # 
-- (!\pontos~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "18e5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~3_combout\);

-- Location: LC_X6_Y6_N0
\Mux13~18\ : maxii_lcell
-- Equation(s):
-- \Mux13~18_combout\ = ((\pontos~combout\(3) & ((\Mux13~3_combout\))) # (!\pontos~combout\(3) & (\Mux13~2_combout\)))

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
	datab => \Mux13~2_combout\,
	datac => \Mux13~3_combout\,
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~18_combout\);

-- Location: LC_X6_Y6_N4
\Mux13~19\ : maxii_lcell
-- Equation(s):
-- \Mux13~19_combout\ = (\pontos~combout\(2) & ((\pontos~combout\(1) & ((!\pontos~combout\(3)))) # (!\pontos~combout\(1) & (!\pontos~combout\(4))))) # (!\pontos~combout\(2) & ((\pontos~combout\(4) & ((\pontos~combout\(3)))) # (!\pontos~combout\(4) & 
-- (\pontos~combout\(1) & !\pontos~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "528e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~19_combout\);

-- Location: LC_X6_Y6_N2
\Mux13~20\ : maxii_lcell
-- Equation(s):
-- \Mux13~20_combout\ = (\Mux13~19_combout\ & (!\pontos~combout\(5))) # (!\Mux13~19_combout\ & (\pontos~combout\(5) & (!\pontos~combout\(4) & !\pontos~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2226",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~19_combout\,
	datab => \pontos~combout\(5),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~20_combout\);

-- Location: LC_X6_Y6_N5
\Mux13~5\ : maxii_lcell
-- Equation(s):
-- \Mux13~5_combout\ = ((\pontos~combout\(6) & ((\Mux13~20_combout\))) # (!\pontos~combout\(6) & (\Mux13~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~18_combout\,
	datac => \pontos~combout\(6),
	datad => \Mux13~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~5_combout\);

-- Location: LC_X5_Y7_N6
\Mux13~7\ : maxii_lcell
-- Equation(s):
-- \Mux13~7_combout\ = (\pontos~combout\(2)) # (((\pontos~combout\(3)) # (\pontos~combout\(5))) # (!\pontos~combout\(4)))

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
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~7_combout\);

-- Location: LC_X5_Y7_N9
\Mux13~17\ : maxii_lcell
-- Equation(s):
-- \Mux13~17_combout\ = (\pontos~combout\(5) $ ((\pontos~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(5),
	datac => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~17_combout\);

-- Location: LC_X7_Y4_N7
\Mux13~4\ : maxii_lcell
-- Equation(s):
-- \Mux13~4_combout\ = (\pontos~combout\(2) $ (((\pontos~combout\(4)))))

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
	combout => \Mux13~4_combout\);

-- Location: LC_X5_Y7_N3
\Mux13~8\ : maxii_lcell
-- Equation(s):
-- \Mux13~8_combout\ = (\pontos~combout\(6) & (\Mux13~7_combout\)) # (!\pontos~combout\(6) & (((\Mux13~17_combout\) # (\Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~7_combout\,
	datab => \Mux13~17_combout\,
	datac => \pontos~combout\(6),
	datad => \Mux13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~8_combout\);

-- Location: LC_X7_Y7_N7
\Mux5~2\ : maxii_lcell
-- Equation(s):
-- \Mux5~2_combout\ = (((\pontos~combout\(5) & \pontos~combout\(6))))

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
	datac => \pontos~combout\(5),
	datad => \pontos~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~2_combout\);

-- Location: LC_X6_Y4_N2
\Mux13~6\ : maxii_lcell
-- Equation(s):
-- \Mux13~6_combout\ = ((!\pontos~combout\(4) & (!\pontos~combout\(2) & !\pontos~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(2),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~6_combout\);

-- Location: LC_X7_Y7_N9
\Mux13~9\ : maxii_lcell
-- Equation(s):
-- \Mux13~9_combout\ = (\Mux13~8_combout\ & (((\Mux13~6_combout\) # (!\Mux5~2_combout\)))) # (!\Mux13~8_combout\ & (\pontos~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee2e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datab => \Mux13~8_combout\,
	datac => \Mux5~2_combout\,
	datad => \Mux13~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~9_combout\);

-- Location: LC_X7_Y7_N2
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (\timeBasquete~combout\) # ((\Mux13~5_combout\ & (!\Mux13~14_combout\)) # (!\Mux13~5_combout\ & ((!\Mux13~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dcdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~14_combout\,
	datab => \timeBasquete~combout\,
	datac => \Mux13~5_combout\,
	datad => \Mux13~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X7_Y4_N5
\Mux5~15\ : maxii_lcell
-- Equation(s):
-- \Mux5~15_combout\ = ((\pontos~combout\(6) & ((\pontos~combout\(2)) # (!\pontos~combout\(4)))) # (!\pontos~combout\(6) & (\pontos~combout\(2) $ (\pontos~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(2),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~15_combout\);

-- Location: LC_X7_Y4_N3
\Mux5~6\ : maxii_lcell
-- Equation(s):
-- \Mux5~6_combout\ = ((\pontos~combout\(6) & ((\pontos~combout\(4)) # (!\pontos~combout\(2)))) # (!\pontos~combout\(6) & ((!\pontos~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(2),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~6_combout\);

-- Location: LC_X7_Y4_N1
\Mux5~5\ : maxii_lcell
-- Equation(s):
-- \Mux5~5_combout\ = (!\Mux13~4_combout\ & (!\pontos~combout\(6) & (\pontos~combout\(5) & !\pontos~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(5),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~5_combout\);

-- Location: LC_X7_Y4_N0
\Mux5~7\ : maxii_lcell
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux5~5_combout\) # ((\Mux5~6_combout\ & (!\pontos~combout\(5) & \pontos~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~6_combout\,
	datab => \Mux5~5_combout\,
	datac => \pontos~combout\(5),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~7_combout\);

-- Location: LC_X7_Y4_N6
\Mux5~17\ : maxii_lcell
-- Equation(s):
-- \Mux5~17_combout\ = (!\pontos~combout\(5) & (((!\Mux5~7_combout\ & \Mux5~6_combout\)) # (!\Mux5~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0705",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~15_combout\,
	datab => \Mux5~7_combout\,
	datac => \pontos~combout\(5),
	datad => \Mux5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~17_combout\);

-- Location: LC_X7_Y4_N9
\Mux5~26\ : maxii_lcell
-- Equation(s):
-- \Mux5~26_combout\ = (\pontos~combout\(6)) # ((\Mux5~7_combout\) # (\pontos~combout\(2) $ (\pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbfe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(2),
	datac => \Mux5~7_combout\,
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~26_combout\);

-- Location: LC_X7_Y4_N4
\Mux5~16\ : maxii_lcell
-- Equation(s):
-- \Mux5~16_combout\ = (\pontos~combout\(5) & (((\Mux5~26_combout\)))) # (!\pontos~combout\(5) & ((\Mux5~15_combout\) # ((\pontos~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~15_combout\,
	datab => \Mux5~26_combout\,
	datac => \pontos~combout\(5),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~16_combout\);

-- Location: LC_X9_Y5_N4
\Mux12~4\ : maxii_lcell
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux5~16_combout\ & (\Mux5~17_combout\ & (\pontos~combout\(1) & \pontos~combout\(0)))) # (!\Mux5~16_combout\ & (((\pontos~combout\(1)) # (\pontos~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~17_combout\,
	datab => \Mux5~16_combout\,
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~4_combout\);

-- Location: LC_X9_Y5_N9
\Mux5~18\ : maxii_lcell
-- Equation(s):
-- \Mux5~18_combout\ = (((\Mux5~16_combout\ & !\Mux5~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mux5~16_combout\,
	datad => \Mux5~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~18_combout\);

-- Location: LC_X7_Y7_N4
\Mux5~11\ : maxii_lcell
-- Equation(s):
-- \Mux5~11_combout\ = (\pontos~combout\(6) & (((\pontos~combout\(5))))) # (!\pontos~combout\(6) & (((!\pontos~combout\(5))) # (!\pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d3d3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~11_combout\);

-- Location: LC_X7_Y7_N8
\Mux5~12\ : maxii_lcell
-- Equation(s):
-- \Mux5~12_combout\ = (\Mux5~7_combout\ & (!\pontos~combout\(1))) # (!\Mux5~7_combout\ & (!\Mux5~11_combout\ & ((!\Mux5~2_combout\) # (!\pontos~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4547",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datab => \Mux5~7_combout\,
	datac => \Mux5~11_combout\,
	datad => \Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~12_combout\);

-- Location: LC_X7_Y7_N0
\Mux5~10\ : maxii_lcell
-- Equation(s):
-- \Mux5~10_combout\ = ((\Mux5~7_combout\) # ((\pontos~combout\(6) & \pontos~combout\(5))))

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
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(5),
	datad => \Mux5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~10_combout\);

-- Location: LC_X7_Y6_N8
\Mux5~9\ : maxii_lcell
-- Equation(s):
-- \Mux5~9_combout\ = (\pontos~combout\(0) & (\pontos~combout\(1) $ ((\pontos~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4848",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datab => \pontos~combout\(0),
	datac => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~9_combout\);

-- Location: LC_X7_Y7_N5
\Mux5~13\ : maxii_lcell
-- Equation(s):
-- \Mux5~13_combout\ = (\Mux5~12_combout\ & (!\timeBasquete~combout\ & ((\Mux5~10_combout\) # (\Mux5~9_combout\)))) # (!\Mux5~12_combout\ & (((!\Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2725",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~12_combout\,
	datab => \timeBasquete~combout\,
	datac => \Mux5~10_combout\,
	datad => \Mux5~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~13_combout\);

-- Location: LC_X7_Y7_N6
\Mux5~8\ : maxii_lcell
-- Equation(s):
-- \Mux5~8_combout\ = (!\Mux5~7_combout\ & ((\pontos~combout\(6) & ((\pontos~combout\(5)))) # (!\pontos~combout\(6) & ((!\pontos~combout\(5)) # (!\pontos~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00d3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(5),
	datad => \Mux5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~8_combout\);

-- Location: LC_X9_Y5_N7
\Mux5~4\ : maxii_lcell
-- Equation(s):
-- \Mux5~4_combout\ = (\timeBasquete~combout\) # ((\pontos~combout\(3) $ (\pontos~combout\(1))) # (!\pontos~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "deff",
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
	datad => \pontos~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~4_combout\);

-- Location: LC_X5_Y5_N6
\Mux5~3\ : maxii_lcell
-- Equation(s):
-- \Mux5~3_combout\ = ((!\timeBasquete~combout\ & (!\pontos~combout\(1) & \pontos~combout\(0)))) # (!\Mux13~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3733",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \Mux13~6_combout\,
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~3_combout\);

-- Location: LC_X9_Y5_N5
\Mux5~14\ : maxii_lcell
-- Equation(s):
-- \Mux5~14_combout\ = (\Mux5~13_combout\ & (((!\Mux5~4_combout\)) # (!\Mux5~8_combout\))) # (!\Mux5~13_combout\ & (\Mux5~8_combout\ & ((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~13_combout\,
	datab => \Mux5~8_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~14_combout\);

-- Location: LC_X9_Y5_N6
\Mux5~19\ : maxii_lcell
-- Equation(s):
-- \Mux5~19_combout\ = (\Mux12~4_combout\ & (((\Mux5~18_combout\ & \Mux5~14_combout\)) # (!\timeBasquete~combout\))) # (!\Mux12~4_combout\ & (\Mux5~18_combout\ & ((\Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \Mux5~18_combout\,
	datac => \timeBasquete~combout\,
	datad => \Mux5~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~19_combout\);

-- Location: LC_X7_Y4_N2
\Mux11~4\ : maxii_lcell
-- Equation(s):
-- \Mux11~4_combout\ = ((\pontos~combout\(3) & ((!\pontos~combout\(2)))) # (!\pontos~combout\(3) & (\pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(2),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~4_combout\);

-- Location: LC_X7_Y4_N8
\Mux11~5\ : maxii_lcell
-- Equation(s):
-- \Mux11~5_combout\ = (\pontos~combout\(5) & ((\Mux11~4_combout\ & ((\pontos~combout\(2)) # (\pontos~combout\(6)))) # (!\Mux11~4_combout\ & (\pontos~combout\(2) $ (!\pontos~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e090",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~4_combout\,
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(5),
	datad => \pontos~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~5_combout\);

-- Location: LC_X5_Y7_N2
\Mux10~0\ : maxii_lcell
-- Equation(s):
-- \Mux10~0_combout\ = (\pontos~combout\(2) & (((!\pontos~combout\(6) & !\pontos~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

-- Location: LC_X5_Y7_N0
\Mux11~0\ : maxii_lcell
-- Equation(s):
-- \Mux11~0_combout\ = (\pontos~combout\(2) & (!\pontos~combout\(3) & (\pontos~combout\(6) $ (!\pontos~combout\(4))))) # (!\pontos~combout\(2) & ((\pontos~combout\(6) & (!\pontos~combout\(3) & !\pontos~combout\(4))) # (!\pontos~combout\(6) & 
-- (\pontos~combout\(3) & \pontos~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1806",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~0_combout\);

-- Location: LC_X5_Y7_N4
\Mux11~1\ : maxii_lcell
-- Equation(s):
-- \Mux11~1_combout\ = (\pontos~combout\(5) & (\pontos~combout\(3) & (\Mux10~0_combout\))) # (!\pontos~combout\(5) & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \Mux10~0_combout\,
	datac => \Mux11~0_combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~1_combout\);

-- Location: LC_X7_Y6_N7
\Mux11~3\ : maxii_lcell
-- Equation(s):
-- \Mux11~3_combout\ = (\pontos~combout\(5)) # ((\pontos~combout\(6) & (\pontos~combout\(2) $ (\pontos~combout\(4)))) # (!\pontos~combout\(6) & ((\pontos~combout\(4)) # (!\pontos~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfeb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(5),
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(2),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~3_combout\);

-- Location: LC_X6_Y7_N5
\Mux11~6\ : maxii_lcell
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux11~1_combout\ & (((\pontos~combout\(1))))) # (!\Mux11~1_combout\ & (!\Mux11~5_combout\ & ((\Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d1c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Mux11~1_combout\,
	datac => \pontos~combout\(1),
	datad => \Mux11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~6_combout\);

-- Location: LC_X6_Y7_N9
\Mux11~7\ : maxii_lcell
-- Equation(s):
-- \Mux11~7_combout\ = (\pontos~combout\(0)) # ((!\Mux11~6_combout\ & ((\Mux11~1_combout\) # (\pontos~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff54",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~6_combout\,
	datab => \Mux11~1_combout\,
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~7_combout\);

-- Location: LC_X6_Y6_N1
\Mux11~2\ : maxii_lcell
-- Equation(s):
-- \Mux11~2_combout\ = ((!\pontos~combout\(5) & (\pontos~combout\(4) $ (!\pontos~combout\(2))))) # (!\pontos~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7557",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(5),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~2_combout\);

-- Location: LC_X6_Y7_N8
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (!\Mux11~6_combout\ & (!\Mux11~1_combout\ & (!\Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~6_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X6_Y7_N0
\Mux4~1\ : maxii_lcell
-- Equation(s):
-- \Mux4~1_combout\ = ((\Mux4~0_combout\) # ((\Mux11~7_combout\ & !\timeBasquete~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~7_combout\,
	datac => \timeBasquete~combout\,
	datad => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~1_combout\);

-- Location: LC_X5_Y7_N7
\Mux10~1\ : maxii_lcell
-- Equation(s):
-- \Mux10~1_combout\ = (\pontos~combout\(6) & (!\pontos~combout\(3) & (\pontos~combout\(2) $ (!\pontos~combout\(4))))) # (!\pontos~combout\(6) & (!\pontos~combout\(2) & (\pontos~combout\(3) & \pontos~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1804",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~1_combout\);

-- Location: LC_X5_Y7_N8
\Mux10~2\ : maxii_lcell
-- Equation(s):
-- \Mux10~2_combout\ = (\pontos~combout\(5) & (\pontos~combout\(3) & (\Mux10~0_combout\))) # (!\pontos~combout\(5) & ((\Mux10~1_combout\) # ((!\pontos~combout\(3) & \Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(3),
	datab => \Mux10~0_combout\,
	datac => \Mux10~1_combout\,
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~2_combout\);

-- Location: LC_X9_Y5_N0
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\pontos~combout\(1) & (((!\timeBasquete~combout\ & \pontos~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datac => \timeBasquete~combout\,
	datad => \pontos~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X7_Y6_N1
\Mux10~3\ : maxii_lcell
-- Equation(s):
-- \Mux10~3_combout\ = (!\pontos~combout\(5) & ((\pontos~combout\(6) & ((\pontos~combout\(4)))) # (!\pontos~combout\(6) & ((\pontos~combout\(2)) # (!\pontos~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5411",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(5),
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(2),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~3_combout\);

-- Location: LC_X8_Y5_N5
\Mux10~4\ : maxii_lcell
-- Equation(s):
-- \Mux10~4_combout\ = ((\Mux10~2_combout\) # ((\Mux10~3_combout\ & \Mux11~3_combout\)))

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
	datab => \Mux10~2_combout\,
	datac => \Mux10~3_combout\,
	datad => \Mux11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~4_combout\);

-- Location: LC_X8_Y5_N8
\Mux10~7\ : maxii_lcell
-- Equation(s):
-- \Mux10~7_combout\ = ((!\Mux10~2_combout\ & ((\Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~2_combout\,
	datad => \Mux11~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~7_combout\);

-- Location: LC_X6_Y6_N9
\Mux10~6\ : maxii_lcell
-- Equation(s):
-- \Mux10~6_combout\ = (\pontos~combout\(6)) # ((\pontos~combout\(5) & (\pontos~combout\(4) & !\pontos~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(5),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~6_combout\);

-- Location: LC_X6_Y5_N8
\Mux3~1\ : maxii_lcell
-- Equation(s):
-- \Mux3~1_combout\ = (\pontos~combout\(0) & (\pontos~combout\(1) $ (((\pontos~combout\(3)) # (!\Mux10~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(0),
	datab => \Mux10~6_combout\,
	datac => \pontos~combout\(3),
	datad => \pontos~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~1_combout\);

-- Location: LC_X5_Y5_N4
\Mux5~20\ : maxii_lcell
-- Equation(s):
-- \Mux5~20_combout\ = (\timeBasquete~combout\) # ((\pontos~combout\(0) & ((\pontos~combout\(1)) # (!\pontos~combout\(3)))) # (!\pontos~combout\(0) & ((\pontos~combout\(3)) # (!\pontos~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \pontos~combout\(0),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~20_combout\);

-- Location: LC_X5_Y5_N2
\Mux3~2\ : maxii_lcell
-- Equation(s):
-- \Mux3~2_combout\ = ((\Mux10~6_combout\ & (!\Mux5~3_combout\)) # (!\Mux10~6_combout\ & ((\Mux5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datac => \Mux5~20_combout\,
	datad => \Mux10~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~2_combout\);

-- Location: LC_X6_Y6_N3
\Mux10~5\ : maxii_lcell
-- Equation(s):
-- \Mux10~5_combout\ = (\pontos~combout\(6) & (\pontos~combout\(5))) # (!\pontos~combout\(6) & ((\pontos~combout\(4) & ((\pontos~combout\(2)))) # (!\pontos~combout\(4) & ((!\pontos~combout\(2)) # (!\pontos~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d98d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(5),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~5_combout\);

-- Location: LC_X6_Y5_N5
\Mux3~3\ : maxii_lcell
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux10~5_combout\ & (((!\Mux3~2_combout\)))) # (!\Mux10~5_combout\ & (\Mux3~1_combout\ & ((!\timeBasquete~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "330a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~2_combout\,
	datac => \timeBasquete~combout\,
	datad => \Mux10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~3_combout\);

-- Location: LC_X9_Y5_N1
\Mux5~21\ : maxii_lcell
-- Equation(s):
-- \Mux5~21_combout\ = (((\timeBasquete~combout\) # (\pontos~combout\(0)))) # (!\pontos~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datac => \timeBasquete~combout\,
	datad => \pontos~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~21_combout\);

-- Location: LC_X8_Y5_N1
\Mux3~4\ : maxii_lcell
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux10~7_combout\ & ((\Mux3~3_combout\) # ((\Mux10~4_combout\)))) # (!\Mux10~7_combout\ & (((!\Mux10~4_combout\ & !\Mux5~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8ad",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~7_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux10~4_combout\,
	datad => \Mux5~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~4_combout\);

-- Location: LC_X8_Y5_N6
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = ((!\timeBasquete~combout\ & (!\pontos~combout\(0))))

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
	datac => \pontos~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X8_Y5_N2
\Mux3~5\ : maxii_lcell
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux10~4_combout\ & ((\Mux3~4_combout\ & ((!\Mux5~4_combout\))) # (!\Mux3~4_combout\ & (\Mux0~0_combout\)))) # (!\Mux10~4_combout\ & (\Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "64ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \Mux3~4_combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~5_combout\);

-- Location: LC_X8_Y5_N4
\Mux3~6\ : maxii_lcell
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux10~2_combout\ & ((\Mux3~0_combout\) # ((!\pontos~combout\(1) & \Mux3~5_combout\)))) # (!\Mux10~2_combout\ & (((\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datab => \Mux10~2_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~6_combout\);

-- Location: LC_X7_Y5_N1
\Mux5~22\ : maxii_lcell
-- Equation(s):
-- \Mux5~22_combout\ = (\pontos~combout\(1) $ ((\pontos~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~22_combout\);

-- Location: LC_X7_Y5_N8
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux13~4_combout\) # (((\Mux5~22_combout\) # (!\Mux0~0_combout\)) # (!\pontos~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => \pontos~combout\(5),
	datac => \Mux0~0_combout\,
	datad => \Mux5~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X6_Y4_N4
\Mux2~1\ : maxii_lcell
-- Equation(s):
-- \Mux2~1_combout\ = (\pontos~combout\(5)) # ((!\pontos~combout\(2) & (\pontos~combout\(4) & !\pontos~combout\(6))))

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
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1_combout\);

-- Location: LC_X6_Y4_N3
\Mux2~3\ : maxii_lcell
-- Equation(s):
-- \Mux2~3_combout\ = (\pontos~combout\(5)) # ((\pontos~combout\(2) & (!\pontos~combout\(4) & \pontos~combout\(6))) # (!\pontos~combout\(2) & (\pontos~combout\(4) & !\pontos~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff24",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~3_combout\);

-- Location: LC_X5_Y5_N7
\Mux5~23\ : maxii_lcell
-- Equation(s):
-- \Mux5~23_combout\ = (\timeBasquete~combout\) # ((\pontos~combout\(0)) # ((\pontos~combout\(1)) # (!\pontos~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \pontos~combout\(0),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~23_combout\);

-- Location: LC_X6_Y4_N0
\Mux2~4\ : maxii_lcell
-- Equation(s):
-- \Mux2~4_combout\ = \pontos~combout\(6) $ (((!\pontos~combout\(5) & (\pontos~combout\(2) $ (!\pontos~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f069",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~4_combout\);

-- Location: LC_X6_Y4_N1
\Mux2~2\ : maxii_lcell
-- Equation(s):
-- \Mux2~2_combout\ = ((\timeBasquete~combout\) # ((\pontos~combout\(0)) # (\pontos~combout\(3)))) # (!\pontos~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datab => \timeBasquete~combout\,
	datac => \pontos~combout\(0),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~2_combout\);

-- Location: LC_X6_Y4_N5
\Mux2~5\ : maxii_lcell
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~3_combout\ & (((!\Mux2~4_combout\)))) # (!\Mux2~3_combout\ & ((\Mux2~4_combout\ & ((!\Mux2~2_combout\))) # (!\Mux2~4_combout\ & (!\Mux5~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b5b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux5~23_combout\,
	datac => \Mux2~4_combout\,
	datad => \Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~5_combout\);

-- Location: LC_X6_Y4_N6
\Mux2~6\ : maxii_lcell
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux2~1_combout\ & ((\Mux2~5_combout\ & (!\Mux2~0_combout\)) # (!\Mux2~5_combout\ & ((!\Mux13~6_combout\))))) # (!\Mux2~1_combout\ & (((\Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux13~6_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~6_combout\);

-- Location: LC_X5_Y6_N2
\Mux5~25\ : maxii_lcell
-- Equation(s):
-- \Mux5~25_combout\ = (\timeBasquete~combout\) # ((\pontos~combout\(0)) # ((\pontos~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \pontos~combout\(0),
	datac => \pontos~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~25_combout\);

-- Location: LC_X6_Y6_N8
\Mux8~4\ : maxii_lcell
-- Equation(s):
-- \Mux8~4_combout\ = (\pontos~combout\(4) & ((\pontos~combout\(6)) # ((\pontos~combout\(2))))) # (!\pontos~combout\(4) & (\pontos~combout\(2) & (\pontos~combout\(6) $ (!\pontos~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f9a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(5),
	datac => \pontos~combout\(4),
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~4_combout\);

-- Location: LC_X5_Y6_N0
\Mux13~15\ : maxii_lcell
-- Equation(s):
-- \Mux13~15_combout\ = (!\pontos~combout\(4) & (((!\pontos~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~15_combout\);

-- Location: LC_X5_Y6_N6
\Mux8~5\ : maxii_lcell
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~4_combout\) # ((\Mux13~15_combout\ & ((\pontos~combout\(3)) # (!\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux8~4_combout\,
	datac => \Mux13~15_combout\,
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~5_combout\);

-- Location: LC_X5_Y7_N5
\Mux8~6\ : maxii_lcell
-- Equation(s):
-- \Mux8~6_combout\ = \pontos~combout\(5) $ (((!\pontos~combout\(2) & (\pontos~combout\(4) & !\pontos~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~6_combout\);

-- Location: LC_X5_Y6_N8
\Mux1~1\ : maxii_lcell
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux8~5_combout\ & (((\Mux8~6_combout\)))) # (!\Mux8~5_combout\ & ((\Mux8~6_combout\ & ((!\Mux5~25_combout\))) # (!\Mux8~6_combout\ & (!\Mux5~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f305",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~23_combout\,
	datab => \Mux5~25_combout\,
	datac => \Mux8~5_combout\,
	datad => \Mux8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: LC_X5_Y5_N5
\Mux5~24\ : maxii_lcell
-- Equation(s):
-- \Mux5~24_combout\ = (\timeBasquete~combout\) # (((\pontos~combout\(3)) # (!\pontos~combout\(1))) # (!\pontos~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \pontos~combout\(0),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~24_combout\);

-- Location: LC_X5_Y6_N4
\Mux8~11\ : maxii_lcell
-- Equation(s):
-- \Mux8~11_combout\ = (!\Mux5~2_combout\ & ((\Mux8~4_combout\) # ((!\pontos~combout\(4) & !\pontos~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(4),
	datab => \Mux8~4_combout\,
	datac => \Mux5~2_combout\,
	datad => \pontos~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~11_combout\);

-- Location: LC_X7_Y5_N4
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = ((\pontos~combout\(6) & (\pontos~combout\(2) $ (\pontos~combout\(4)))) # (!\pontos~combout\(6) & ((\pontos~combout\(4)) # (!\pontos~combout\(2))))) # (!\Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fd7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \pontos~combout\(6),
	datac => \pontos~combout\(2),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X5_Y6_N5
\Mux1~2\ : maxii_lcell
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & (((!\Mux8~11_combout\)) # (!\Mux5~24_combout\))) # (!\Mux1~1_combout\ & (((\Mux8~11_combout\ & !\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a7a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux5~24_combout\,
	datac => \Mux8~11_combout\,
	datad => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2_combout\);

-- Location: LC_X6_Y7_N3
\Mux1~3\ : maxii_lcell
-- Equation(s):
-- \Mux1~3_combout\ = ((\pontos~combout\(1) $ (\pontos~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~3_combout\);

-- Location: LC_X6_Y7_N1
\Mux1~4\ : maxii_lcell
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux11~1_combout\ & (((!\timeBasquete~combout\ & \Mux1~3_combout\)))) # (!\Mux11~1_combout\ & (\Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2e22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux11~1_combout\,
	datac => \timeBasquete~combout\,
	datad => \Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~4_combout\);

-- Location: LC_X7_Y5_N7
\Mux0~5\ : maxii_lcell
-- Equation(s):
-- \Mux0~5_combout\ = (!\pontos~combout\(5) & ((\pontos~combout\(6) & (!\pontos~combout\(2) & \pontos~combout\(4))) # (!\pontos~combout\(6) & (\pontos~combout\(2) $ (!\pontos~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0601",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(5),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~5_combout\);

-- Location: LC_X7_Y5_N9
\Mux2~7\ : maxii_lcell
-- Equation(s):
-- \Mux2~7_combout\ = (\pontos~combout\(5)) # ((\pontos~combout\(6) & (\pontos~combout\(2) & !\pontos~combout\(4))) # (!\pontos~combout\(6) & ((\pontos~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(6),
	datab => \pontos~combout\(2),
	datac => \pontos~combout\(5),
	datad => \pontos~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~7_combout\);

-- Location: LC_X5_Y7_N1
\Mux0~1\ : maxii_lcell
-- Equation(s):
-- \Mux0~1_combout\ = ((!\pontos~combout\(6) & (\pontos~combout\(2) $ (\pontos~combout\(4))))) # (!\pontos~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "06ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(2),
	datab => \pontos~combout\(4),
	datac => \pontos~combout\(6),
	datad => \pontos~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X5_Y5_N9
\Mux0~2\ : maxii_lcell
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & (((\Mux10~6_combout\)))) # (!\Mux0~1_combout\ & ((\Mux10~6_combout\ & (!\Mux13~6_combout\)) # (!\Mux10~6_combout\ & ((!\Mux5~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~6_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux5~20_combout\,
	datad => \Mux10~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2_combout\);

-- Location: LC_X5_Y5_N3
\Mux0~3\ : maxii_lcell
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\ & (((!\Mux0~1_combout\)) # (!\Mux5~24_combout\))) # (!\Mux0~2_combout\ & (((!\Mux5~23_combout\ & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "47cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~24_combout\,
	datab => \Mux0~2_combout\,
	datac => \Mux5~23_combout\,
	datad => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~3_combout\);

-- Location: LC_X7_Y5_N5
\Mux0~4\ : maxii_lcell
-- Equation(s):
-- \Mux0~4_combout\ = (\Mux2~7_combout\ & (((\Mux0~3_combout\)))) # (!\Mux2~7_combout\ & (\Mux0~0_combout\ & ((!\Mux5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux2~7_combout\,
	datac => \Mux0~3_combout\,
	datad => \Mux5~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~4_combout\);

-- Location: LC_X7_Y5_N0
\Mux0~6\ : maxii_lcell
-- Equation(s):
-- \Mux0~6_combout\ = ((\Mux0~5_combout\ & ((!\Mux5~4_combout\))) # (!\Mux0~5_combout\ & (\Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~5_combout\,
	datac => \Mux0~4_combout\,
	datad => \Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~6_combout\);

-- Location: LC_X7_Y7_N3
\Mux13~16\ : maxii_lcell
-- Equation(s):
-- \Mux13~16_combout\ = ((\Mux13~5_combout\ & (!\Mux13~14_combout\)) # (!\Mux13~5_combout\ & ((!\Mux13~9_combout\)))) # (!\timeBasquete~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "737f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~14_combout\,
	datab => \timeBasquete~combout\,
	datac => \Mux13~5_combout\,
	datad => \Mux13~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~16_combout\);

-- Location: LC_X9_Y5_N3
\Mux11~8\ : maxii_lcell
-- Equation(s):
-- \Mux11~8_combout\ = (\timeBasquete~combout\ & (\pontos~combout\(0) & (\pontos~combout\(3) $ (!\pontos~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8400",
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
	datad => \pontos~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~8_combout\);

-- Location: LC_X6_Y5_N1
\Mux12~8\ : maxii_lcell
-- Equation(s):
-- \Mux12~8_combout\ = ((!\pontos~combout\(1) & (\pontos~combout\(0) & \timeBasquete~combout\))) # (!\Mux13~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~6_combout\,
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(0),
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~8_combout\);

-- Location: LC_X7_Y7_N1
\Mux12~5\ : maxii_lcell
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux5~12_combout\ & (\timeBasquete~combout\ & ((\Mux5~9_combout\) # (\Mux5~10_combout\)))) # (!\Mux5~12_combout\ & (((!\Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88d5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~12_combout\,
	datab => \timeBasquete~combout\,
	datac => \Mux5~9_combout\,
	datad => \Mux5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~5_combout\);

-- Location: LC_X9_Y5_N2
\Mux12~6\ : maxii_lcell
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux12~5_combout\ & ((\Mux11~8_combout\) # ((!\Mux5~8_combout\)))) # (!\Mux12~5_combout\ & (((\Mux12~8_combout\ & \Mux5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~8_combout\,
	datab => \Mux12~8_combout\,
	datac => \Mux12~5_combout\,
	datad => \Mux5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~6_combout\);

-- Location: LC_X9_Y5_N8
\Mux12~7\ : maxii_lcell
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux12~4_combout\ & ((\timeBasquete~combout\) # ((\Mux12~6_combout\ & \Mux5~18_combout\)))) # (!\Mux12~4_combout\ & (\Mux12~6_combout\ & ((\Mux5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \Mux12~6_combout\,
	datac => \timeBasquete~combout\,
	datad => \Mux5~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~7_combout\);

-- Location: LC_X6_Y7_N7
\Mux11~9\ : maxii_lcell
-- Equation(s):
-- \Mux11~9_combout\ = ((\Mux4~0_combout\) # ((\Mux11~7_combout\ & \timeBasquete~combout\)))

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
	datab => \Mux11~7_combout\,
	datac => \timeBasquete~combout\,
	datad => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~9_combout\);

-- Location: LC_X6_Y5_N9
\Mux10~8\ : maxii_lcell
-- Equation(s):
-- \Mux10~8_combout\ = (\pontos~combout\(0) & (\pontos~combout\(1) & (\timeBasquete~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(0),
	datab => \pontos~combout\(1),
	datac => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~8_combout\);

-- Location: LC_X6_Y5_N7
\Mux11~10\ : maxii_lcell
-- Equation(s):
-- \Mux11~10_combout\ = (\timeBasquete~combout\ & ((\pontos~combout\(0) & (!\pontos~combout\(1) & \pontos~combout\(3))) # (!\pontos~combout\(0) & (\pontos~combout\(1) & !\pontos~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(0),
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(3),
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~10_combout\);

-- Location: LC_X6_Y5_N0
\Mux6~1\ : maxii_lcell
-- Equation(s):
-- \Mux6~1_combout\ = (\pontos~combout\(0) & (!\pontos~combout\(1) & (\timeBasquete~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(0),
	datab => \pontos~combout\(1),
	datac => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~1_combout\);

-- Location: LC_X6_Y5_N2
\Mux10~9\ : maxii_lcell
-- Equation(s):
-- \Mux10~9_combout\ = (\Mux10~6_combout\ & (((!\Mux10~5_combout\)))) # (!\Mux10~6_combout\ & ((\Mux10~5_combout\ & (\Mux11~10_combout\)) # (!\Mux10~5_combout\ & ((\Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux11~10_combout\,
	datac => \Mux6~1_combout\,
	datad => \Mux10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~9_combout\);

-- Location: LC_X6_Y5_N6
\Mux11~11\ : maxii_lcell
-- Equation(s):
-- \Mux11~11_combout\ = (\pontos~combout\(0) & (\timeBasquete~combout\ & (\pontos~combout\(1) $ (\pontos~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(0),
	datab => \pontos~combout\(1),
	datac => \pontos~combout\(3),
	datad => \timeBasquete~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~11_combout\);

-- Location: LC_X6_Y5_N3
\Mux10~10\ : maxii_lcell
-- Equation(s):
-- \Mux10~10_combout\ = (\Mux10~6_combout\ & ((\Mux10~9_combout\ & (\Mux11~11_combout\)) # (!\Mux10~9_combout\ & ((\Mux12~8_combout\))))) # (!\Mux10~6_combout\ & (\Mux10~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux10~9_combout\,
	datac => \Mux11~11_combout\,
	datad => \Mux12~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~10_combout\);

-- Location: LC_X8_Y5_N7
\Mux6~2\ : maxii_lcell
-- Equation(s):
-- \Mux6~2_combout\ = ((\timeBasquete~combout\ & (!\pontos~combout\(0))))

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
	datac => \pontos~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~2_combout\);

-- Location: LC_X8_Y5_N3
\Mux10~11\ : maxii_lcell
-- Equation(s):
-- \Mux10~11_combout\ = (\Mux10~7_combout\ & (\Mux10~4_combout\)) # (!\Mux10~7_combout\ & (\Mux6~2_combout\ & ((\Mux10~4_combout\) # (\pontos~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \pontos~combout\(1),
	datac => \Mux6~2_combout\,
	datad => \Mux10~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~11_combout\);

-- Location: LC_X8_Y5_N9
\Mux10~12\ : maxii_lcell
-- Equation(s):
-- \Mux10~12_combout\ = (\Mux10~7_combout\ & ((\Mux10~11_combout\ & ((\Mux11~8_combout\))) # (!\Mux10~11_combout\ & (\Mux10~10_combout\)))) # (!\Mux10~7_combout\ & (((\Mux10~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~7_combout\,
	datab => \Mux10~10_combout\,
	datac => \Mux11~8_combout\,
	datad => \Mux10~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~12_combout\);

-- Location: LC_X8_Y5_N0
\Mux10~13\ : maxii_lcell
-- Equation(s):
-- \Mux10~13_combout\ = (\Mux10~2_combout\ & ((\Mux10~8_combout\) # ((!\pontos~combout\(1) & \Mux10~12_combout\)))) # (!\Mux10~2_combout\ & (((\Mux10~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pontos~combout\(1),
	datab => \Mux10~2_combout\,
	datac => \Mux10~8_combout\,
	datad => \Mux10~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~13_combout\);

-- Location: LC_X7_Y5_N2
\Mux9~0\ : maxii_lcell
-- Equation(s):
-- \Mux9~0_combout\ = (!\Mux13~4_combout\ & (!\Mux5~22_combout\ & (\pontos~combout\(5) & \Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => \Mux5~22_combout\,
	datac => \pontos~combout\(5),
	datad => \Mux6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~0_combout\);

-- Location: LC_X6_Y4_N8
\Mux9~1\ : maxii_lcell
-- Equation(s):
-- \Mux9~1_combout\ = (\pontos~combout\(1) & (\timeBasquete~combout\ & (!\pontos~combout\(0) & !\pontos~combout\(3))))

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
	dataa => \pontos~combout\(1),
	datab => \timeBasquete~combout\,
	datac => \pontos~combout\(0),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~1_combout\);

-- Location: LC_X5_Y5_N0
\Mux11~12\ : maxii_lcell
-- Equation(s):
-- \Mux11~12_combout\ = (\timeBasquete~combout\ & (!\pontos~combout\(0) & (!\pontos~combout\(1) & \pontos~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \pontos~combout\(0),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~12_combout\);

-- Location: LC_X6_Y4_N9
\Mux9~2\ : maxii_lcell
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux2~4_combout\ & (\Mux9~1_combout\ & ((!\Mux2~3_combout\)))) # (!\Mux2~4_combout\ & (((\Mux11~12_combout\) # (\Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux11~12_combout\,
	datac => \Mux2~4_combout\,
	datad => \Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~2_combout\);

-- Location: LC_X6_Y4_N7
\Mux9~3\ : maxii_lcell
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & ((\Mux9~0_combout\) # ((!\Mux2~1_combout\)))) # (!\Mux9~2_combout\ & (((\Mux2~1_combout\ & !\Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8cbc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \Mux9~2_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux13~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~3_combout\);

-- Location: LC_X5_Y6_N3
\Mux11~13\ : maxii_lcell
-- Equation(s):
-- \Mux11~13_combout\ = (\timeBasquete~combout\ & (\pontos~combout\(0) & (\pontos~combout\(1) & !\pontos~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \timeBasquete~combout\,
	datab => \pontos~combout\(0),
	datac => \pontos~combout\(1),
	datad => \pontos~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~13_combout\);

-- Location: LC_X5_Y6_N9
\Mux6~3\ : maxii_lcell
-- Equation(s):
-- \Mux6~3_combout\ = (\timeBasquete~combout\ & (!\pontos~combout\(0) & (!\pontos~combout\(1))))

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
	dataa => \timeBasquete~combout\,
	datab => \pontos~combout\(0),
	datac => \pontos~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~3_combout\);

-- Location: LC_X5_Y6_N7
\Mux8~8\ : maxii_lcell
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~5_combout\ & (((\Mux8~6_combout\)))) # (!\Mux8~5_combout\ & ((\Mux8~6_combout\ & (\Mux6~3_combout\)) # (!\Mux8~6_combout\ & ((\Mux11~12_combout\)))))

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
	dataa => \Mux8~5_combout\,
	datab => \Mux6~3_combout\,
	datac => \Mux11~12_combout\,
	datad => \Mux8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~8_combout\);

-- Location: LC_X6_Y5_N4
\Mux8~7\ : maxii_lcell
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux10~8_combout\ & ((\pontos~combout\(2) & (\pontos~combout\(6) $ (!\pontos~combout\(4)))) # (!\pontos~combout\(2) & (\pontos~combout\(6) & !\pontos~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8600",
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
	datad => \Mux10~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~7_combout\);

-- Location: LC_X5_Y6_N1
\Mux8~9\ : maxii_lcell
-- Equation(s):
-- \Mux8~9_combout\ = (\Mux8~8_combout\ & ((\Mux11~13_combout\) # ((!\Mux8~11_combout\)))) # (!\Mux8~8_combout\ & (((\Mux8~11_combout\ & \Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~13_combout\,
	datab => \Mux8~8_combout\,
	datac => \Mux8~11_combout\,
	datad => \Mux8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~9_combout\);

-- Location: LC_X6_Y7_N4
\Mux8~10\ : maxii_lcell
-- Equation(s):
-- \Mux8~10_combout\ = (\Mux11~1_combout\ & (((\timeBasquete~combout\ & \Mux1~3_combout\)))) # (!\Mux11~1_combout\ & (\Mux8~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~9_combout\,
	datab => \Mux11~1_combout\,
	datac => \timeBasquete~combout\,
	datad => \Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~10_combout\);

-- Location: LC_X5_Y5_N1
\Mux7~0\ : maxii_lcell
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux0~1_combout\ & (((\Mux11~12_combout\) # (\Mux10~6_combout\)))) # (!\Mux0~1_combout\ & (\Mux11~10_combout\ & ((!\Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~10_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux11~12_combout\,
	datad => \Mux10~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0_combout\);

-- Location: LC_X5_Y5_N8
\Mux7~1\ : maxii_lcell
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((\Mux11~13_combout\) # ((!\Mux10~6_combout\)))) # (!\Mux7~0_combout\ & (((!\Mux13~6_combout\ & \Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a3f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~13_combout\,
	datab => \Mux13~6_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux10~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~1_combout\);

-- Location: LC_X7_Y5_N6
\Mux7~2\ : maxii_lcell
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux2~7_combout\ & (((\Mux7~1_combout\)))) # (!\Mux2~7_combout\ & (\Mux6~2_combout\ & ((!\Mux5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux2~7_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux5~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~2_combout\);

-- Location: LC_X7_Y5_N3
\Mux7~3\ : maxii_lcell
-- Equation(s):
-- \Mux7~3_combout\ = ((\Mux0~5_combout\ & ((\Mux11~8_combout\))) # (!\Mux0~5_combout\ & (\Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~5_combout\,
	datac => \Mux7~2_combout\,
	datad => \Mux11~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~3_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time0(0));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_display1Time0(1));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_display1Time0(2));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_display1Time0(3));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_display1Time0(4));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_display1Time0(5));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_display1Time0(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time0(7));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time0(8));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time0(9));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time0[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_display1Time0(10));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~0_combout\,
	oe => VCC,
	padio => ww_display2Time0(0));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~19_combout\,
	oe => VCC,
	padio => ww_display2Time0(1));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~1_combout\,
	oe => VCC,
	padio => ww_display2Time0(2));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~6_combout\,
	oe => VCC,
	padio => ww_display2Time0(3));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~6_combout\,
	oe => VCC,
	padio => ww_display2Time0(4));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~4_combout\,
	oe => VCC,
	padio => ww_display2Time0(5));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~6_combout\,
	oe => VCC,
	padio => ww_display2Time0(6));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display2Time0(7));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display2Time0(8));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_display2Time0(9));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time0[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display2Time0(10));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time1(0));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_display1Time1(1));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_display1Time1(2));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_display1Time1(3));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_display1Time1(4));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_display1Time1(5));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_display1Time1(6));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time1(7));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_display1Time1(8));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time1(9));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display1Time1[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display1Time1(10));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux13~16_combout\,
	oe => VCC,
	padio => ww_display2Time1(0));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux12~7_combout\,
	oe => VCC,
	padio => ww_display2Time1(1));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux11~9_combout\,
	oe => VCC,
	padio => ww_display2Time1(2));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux10~13_combout\,
	oe => VCC,
	padio => ww_display2Time1(3));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux9~3_combout\,
	oe => VCC,
	padio => ww_display2Time1(4));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~10_combout\,
	oe => VCC,
	padio => ww_display2Time1(5));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~3_combout\,
	oe => VCC,
	padio => ww_display2Time1(6));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ram0~1_combout\,
	oe => VCC,
	padio => ww_display2Time1(7));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display2Time1(8));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\display2Time1[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_display2Time1(9));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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


