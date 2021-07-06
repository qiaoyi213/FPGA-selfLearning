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

-- DATE "07/06/2021 11:37:18"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	flip_flop IS
    PORT (
	sys_clk : IN std_logic;
	sys_rest_n : IN std_logic;
	key_in : IN std_logic;
	led_out : BUFFER std_logic
	);
END flip_flop;

-- Design Ports Information
-- led_out	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_rest_n	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_in	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_clk	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF flip_flop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sys_clk : std_logic;
SIGNAL ww_sys_rest_n : std_logic;
SIGNAL ww_key_in : std_logic;
SIGNAL ww_led_out : std_logic;
SIGNAL \led_out~output_o\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \sys_rest_n~input_o\ : std_logic;
SIGNAL \key_in~input_o\ : std_logic;
SIGNAL \led_out~0_combout\ : std_logic;
SIGNAL \led_out~reg0_q\ : std_logic;

BEGIN

ww_sys_clk <= sys_clk;
ww_sys_rest_n <= sys_rest_n;
ww_key_in <= key_in;
led_out <= ww_led_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y6_N16
\led_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_out~reg0_q\,
	devoe => ww_devoe,
	o => \led_out~output_o\);

-- Location: IOIBUF_X0_Y7_N1
\sys_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_clk,
	o => \sys_clk~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\sys_rest_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_rest_n,
	o => \sys_rest_n~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\key_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_in,
	o => \key_in~input_o\);

-- Location: LCCOMB_X1_Y7_N24
\led_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_out~0_combout\ = (\sys_rest_n~input_o\ & \key_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_rest_n~input_o\,
	datad => \key_in~input_o\,
	combout => \led_out~0_combout\);

-- Location: FF_X1_Y7_N25
\led_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~input_o\,
	d => \led_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_out~reg0_q\);

ww_led_out <= \led_out~output_o\;
END structure;


