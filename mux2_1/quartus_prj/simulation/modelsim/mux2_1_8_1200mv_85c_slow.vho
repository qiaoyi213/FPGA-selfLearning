-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "07/05/2021 02:30:26"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux2_1 IS
    PORT (
	in1 : IN std_logic;
	in2 : IN std_logic;
	sel : IN std_logic;
	\out\ : OUT std_logic
	);
END mux2_1;

-- Design Ports Information
-- out	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux2_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in1 : std_logic;
SIGNAL ww_in2 : std_logic;
SIGNAL ww_sel : std_logic;
SIGNAL \ww_out\ : std_logic;
SIGNAL \out~output_o\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \in2~input_o\ : std_logic;
SIGNAL \in1~input_o\ : std_logic;
SIGNAL \out~0_combout\ : std_logic;

BEGIN

ww_in1 <= in1;
ww_in2 <= in2;
ww_sel <= sel;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X34_Y10_N9
\out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out~0_combout\,
	devoe => ww_devoe,
	o => \out~output_o\);

-- Location: IOIBUF_X34_Y12_N8
\sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\in2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2,
	o => \in2~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\in1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1,
	o => \in1~input_o\);

-- Location: LCCOMB_X33_Y12_N8
\out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out~0_combout\ = (\sel~input_o\ & (\in2~input_o\)) # (!\sel~input_o\ & ((\in1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \in2~input_o\,
	datad => \in1~input_o\,
	combout => \out~0_combout\);

\ww_out\ <= \out~output_o\;
END structure;


