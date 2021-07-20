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

-- DATE "07/20/2021 02:57:24"

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

ENTITY 	top_seg_595 IS
    PORT (
	sys_clk : IN std_logic;
	sys_rst_n : IN std_logic;
	stcp : BUFFER std_logic;
	shcp : BUFFER std_logic;
	ds : BUFFER std_logic;
	oe : BUFFER std_logic
	);
END top_seg_595;

-- Design Ports Information
-- stcp	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shcp	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ds	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oe	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_rst_n	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_seg_595 IS
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
SIGNAL ww_sys_rst_n : std_logic;
SIGNAL ww_stcp : std_logic;
SIGNAL ww_shcp : std_logic;
SIGNAL ww_ds : std_logic;
SIGNAL ww_oe : std_logic;
SIGNAL \sys_rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stcp~output_o\ : std_logic;
SIGNAL \shcp~output_o\ : std_logic;
SIGNAL \ds~output_o\ : std_logic;
SIGNAL \oe~output_o\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \sys_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4[0]~0_combout\ : std_logic;
SIGNAL \sys_rst_n~input_o\ : std_logic;
SIGNAL \sys_rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[0]~11_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[1]~9_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|always1~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[3]~8_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[2]~10_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|always2~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|stcp~q\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|shcp~q\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|Equal3~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|ds~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel[0]~2_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~1\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~2_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~3\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~4_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~5\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~6_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~5_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~7\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~8_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~9\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~10_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~4_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~3_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~11\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~12_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~13\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~14_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~3_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~15\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~16_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~2_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~17\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~18_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~19\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~20_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~21\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~22_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~23\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~24_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~25\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~26_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~1_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~27\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Add0~28_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~2_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~1_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Equal1~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel~1_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift[3]~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ : std_logic;
SIGNAL \data_gen_inst|Add1~11\ : std_logic;
SIGNAL \data_gen_inst|Add1~12_combout\ : std_logic;
SIGNAL \data_gen_inst|Add1~13\ : std_logic;
SIGNAL \data_gen_inst|Add1~14_combout\ : std_logic;
SIGNAL \data_gen_inst|Add1~15\ : std_logic;
SIGNAL \data_gen_inst|Add1~16_combout\ : std_logic;
SIGNAL \data_gen_inst|data~3_combout\ : std_logic;
SIGNAL \data_gen_inst|Add1~17\ : std_logic;
SIGNAL \data_gen_inst|Add1~18_combout\ : std_logic;
SIGNAL \data_gen_inst|data~2_combout\ : std_logic;
SIGNAL \data_gen_inst|Add1~19\ : std_logic;
SIGNAL \data_gen_inst|Add1~20_combout\ : std_logic;
SIGNAL \data_gen_inst|data~1_combout\ : std_logic;
SIGNAL \data_gen_inst|always2~1_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~1_cout\ : std_logic;
SIGNAL \data_gen_inst|Add0~3_cout\ : std_logic;
SIGNAL \data_gen_inst|Add0~5_cout\ : std_logic;
SIGNAL \data_gen_inst|Add0~7_cout\ : std_logic;
SIGNAL \data_gen_inst|Add0~8_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~9\ : std_logic;
SIGNAL \data_gen_inst|Add0~10_combout\ : std_logic;
SIGNAL \data_gen_inst|Equal0~5_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~15\ : std_logic;
SIGNAL \data_gen_inst|Add0~16_combout\ : std_logic;
SIGNAL \data_gen_inst|cnt_100ms~5_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~17\ : std_logic;
SIGNAL \data_gen_inst|Add0~18_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~19\ : std_logic;
SIGNAL \data_gen_inst|Add0~20_combout\ : std_logic;
SIGNAL \data_gen_inst|cnt_100ms~4_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~21\ : std_logic;
SIGNAL \data_gen_inst|Add0~22_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~23\ : std_logic;
SIGNAL \data_gen_inst|Add0~24_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~25\ : std_logic;
SIGNAL \data_gen_inst|Add0~26_combout\ : std_logic;
SIGNAL \data_gen_inst|cnt_100ms~3_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~27\ : std_logic;
SIGNAL \data_gen_inst|Add0~28_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~29\ : std_logic;
SIGNAL \data_gen_inst|Add0~30_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~31\ : std_logic;
SIGNAL \data_gen_inst|Add0~32_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~33\ : std_logic;
SIGNAL \data_gen_inst|Add0~34_combout\ : std_logic;
SIGNAL \data_gen_inst|cnt_100ms~2_combout\ : std_logic;
SIGNAL \data_gen_inst|Equal0~1_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~35\ : std_logic;
SIGNAL \data_gen_inst|Add0~36_combout\ : std_logic;
SIGNAL \data_gen_inst|cnt_100ms~1_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~37\ : std_logic;
SIGNAL \data_gen_inst|Add0~38_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~39\ : std_logic;
SIGNAL \data_gen_inst|Add0~40_combout\ : std_logic;
SIGNAL \data_gen_inst|Equal0~6_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~41\ : std_logic;
SIGNAL \data_gen_inst|Add0~42_combout\ : std_logic;
SIGNAL \data_gen_inst|cnt_100ms~0_combout\ : std_logic;
SIGNAL \data_gen_inst|Equal0~0_combout\ : std_logic;
SIGNAL \data_gen_inst|Equal0~2_combout\ : std_logic;
SIGNAL \data_gen_inst|Equal0~3_combout\ : std_logic;
SIGNAL \data_gen_inst|Equal0~7_combout\ : std_logic;
SIGNAL \data_gen_inst|cnt_100ms~7_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~11\ : std_logic;
SIGNAL \data_gen_inst|Add0~12_combout\ : std_logic;
SIGNAL \data_gen_inst|Add0~13\ : std_logic;
SIGNAL \data_gen_inst|Add0~14_combout\ : std_logic;
SIGNAL \data_gen_inst|cnt_100ms~6_combout\ : std_logic;
SIGNAL \data_gen_inst|Equal0~4_combout\ : std_logic;
SIGNAL \data_gen_inst|Equal1~0_combout\ : std_logic;
SIGNAL \data_gen_inst|cnt_flag~q\ : std_logic;
SIGNAL \data_gen_inst|Add1~0_combout\ : std_logic;
SIGNAL \data_gen_inst|Add1~1\ : std_logic;
SIGNAL \data_gen_inst|Add1~2_combout\ : std_logic;
SIGNAL \data_gen_inst|Add1~3\ : std_logic;
SIGNAL \data_gen_inst|Add1~4_combout\ : std_logic;
SIGNAL \data_gen_inst|Add1~5\ : std_logic;
SIGNAL \data_gen_inst|Add1~6_combout\ : std_logic;
SIGNAL \data_gen_inst|always2~2_combout\ : std_logic;
SIGNAL \data_gen_inst|Add1~21\ : std_logic;
SIGNAL \data_gen_inst|Add1~22_combout\ : std_logic;
SIGNAL \data_gen_inst|Add1~23\ : std_logic;
SIGNAL \data_gen_inst|Add1~24_combout\ : std_logic;
SIGNAL \data_gen_inst|Add1~25\ : std_logic;
SIGNAL \data_gen_inst|Add1~26_combout\ : std_logic;
SIGNAL \data_gen_inst|data~0_combout\ : std_logic;
SIGNAL \data_gen_inst|always2~0_combout\ : std_logic;
SIGNAL \data_gen_inst|always2~3_combout\ : std_logic;
SIGNAL \data_gen_inst|always2~4_combout\ : std_logic;
SIGNAL \data_gen_inst|Add1~7\ : std_logic;
SIGNAL \data_gen_inst|Add1~8_combout\ : std_logic;
SIGNAL \data_gen_inst|data~4_combout\ : std_logic;
SIGNAL \data_gen_inst|Add1~9\ : std_logic;
SIGNAL \data_gen_inst|Add1~10_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~46_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~47_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~45_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~44_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~43_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~42_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~41_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~40_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~39_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~38_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~37_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~36_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~35_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~34_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~32_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~24_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~27_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[16]~28_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[16]~29_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~25_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~26_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add1~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[17]~30_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[17]~31_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~16_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~23_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~19_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~20_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~17_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~18_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add2~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[21]~21_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[21]~22_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~15_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[24]~11_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[24]~12_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~1_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~2_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add3~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[25]~13_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[25]~14_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[3]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[1]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~3_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~10_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add4~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[29]~6_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[29]~7_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~4_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~5_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[28]~8_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[28]~9_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[2]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[3]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[0]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[2]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[1]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~1_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~2_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~5_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[3]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[0]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~3_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[2]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|WideOr1~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~4_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[0]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Mux3~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Mux3~1_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Mux3~2_combout\ : std_logic;
SIGNAL \data_gen_inst|seg_en~feeder_combout\ : std_logic;
SIGNAL \data_gen_inst|seg_en~q\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|always5~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[2]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Mux1~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Mux1~1_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Mux1~2_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~8_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~7_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[1]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Mux2~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~6_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Mux2~1_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Mux2~2_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~11_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~9_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~10_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[3]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Mux0~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Mux0~1_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|Mux0~2_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|WideOr6~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|WideOr5~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|WideOr7~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|ds~1_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|ds~2_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|WideOr9~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|WideOr11~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|WideOr10~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|WideOr8~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~2_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~3_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|always4~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~2_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~1_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|sel[2]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~3_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|sel[1]~feeder_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~0_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~1_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|ds~4_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|ds~5_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|ds~3_combout\ : std_logic;
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|ds~q\ : std_logic;
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|seg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|sel\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \data_gen_inst|data\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \data_gen_inst|cnt_100ms\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \ALT_INV_sys_rst_n~input_o\ : std_logic;

BEGIN

ww_sys_clk <= sys_clk;
ww_sys_rst_n <= sys_rst_n;
stcp <= ww_stcp;
shcp <= ww_shcp;
ds <= ww_ds;
oe <= ww_oe;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sys_rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_rst_n~input_o\);

\sys_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_clk~input_o\);
\ALT_INV_sys_rst_n~input_o\ <= NOT \sys_rst_n~input_o\;

-- Location: IOOBUF_X0_Y23_N16
\stcp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_595_dynamic_inst|hc595_ctrl_inst|stcp~q\,
	devoe => ww_devoe,
	o => \stcp~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\shcp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_595_dynamic_inst|hc595_ctrl_inst|shcp~q\,
	devoe => ww_devoe,
	o => \shcp~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\ds~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~q\,
	devoe => ww_devoe,
	o => \ds~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\oe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sys_rst_n~input_o\,
	devoe => ww_devoe,
	o => \oe~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\sys_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_clk,
	o => \sys_clk~input_o\);

-- Location: CLKCTRL_G2
\sys_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X22_Y13_N30
\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4[0]~0_combout\ = !\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4[0]~0_combout\);

-- Location: IOIBUF_X0_Y11_N22
\sys_rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_rst_n,
	o => \sys_rst_n~input_o\);

-- Location: CLKCTRL_G3
\sys_rst_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_rst_n~inputclkctrl_outclk\);

-- Location: FF_X21_Y13_N31
\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4[0]~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0));

-- Location: LCCOMB_X25_Y13_N0
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~0_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1) $ (VCC))) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & 
-- (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1) & VCC))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~1\ = CARRY((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1),
	datad => VCC,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~0_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~1\);

-- Location: FF_X25_Y13_N1
\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1));

-- Location: LCCOMB_X25_Y15_N6
\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[0]~11_combout\ = \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0) $ (((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1) & \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1),
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[0]~11_combout\);

-- Location: FF_X25_Y15_N7
\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[0]~11_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0));

-- Location: LCCOMB_X25_Y15_N8
\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[1]~9_combout\ = \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1) $ (((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0) & (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1) & 
-- \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0),
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1),
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[1]~9_combout\);

-- Location: FF_X25_Y15_N9
\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[1]~9_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1));

-- Location: LCCOMB_X24_Y15_N28
\seg_595_dynamic_inst|hc595_ctrl_inst|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|always1~0_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1) & \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0),
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|always1~0_combout\);

-- Location: LCCOMB_X24_Y13_N4
\seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1),
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0_combout\);

-- Location: LCCOMB_X24_Y13_N18
\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[3]~8_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|always1~0_combout\ & ((\seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0_combout\ & (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3) & 
-- \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(2))) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0_combout\ & (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3))))) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|always1~0_combout\ & 
-- (((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|always1~0_combout\,
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0_combout\,
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(2),
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[3]~8_combout\);

-- Location: FF_X24_Y13_N19
\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[3]~8_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3));

-- Location: LCCOMB_X24_Y13_N20
\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[2]~10_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|always1~0_combout\ & ((\seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0_combout\ & (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(2) & 
-- !\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3))) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0_combout\ & (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(2))))) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|always1~0_combout\ & 
-- (((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|always1~0_combout\,
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0_combout\,
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(2),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3),
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[2]~10_combout\);

-- Location: FF_X24_Y13_N21
\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit[2]~10_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(2));

-- Location: LCCOMB_X24_Y13_N28
\seg_595_dynamic_inst|hc595_ctrl_inst|always2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|always2~0_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|always1~0_combout\ & (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(2) & (\seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0_combout\ & 
-- !\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|always1~0_combout\,
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(2),
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0_combout\,
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3),
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|always2~0_combout\);

-- Location: FF_X24_Y13_N29
\seg_595_dynamic_inst|hc595_ctrl_inst|stcp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|hc595_ctrl_inst|always2~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|hc595_ctrl_inst|stcp~q\);

-- Location: FF_X21_Y13_N15
\seg_595_dynamic_inst|hc595_ctrl_inst|shcp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1),
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|hc595_ctrl_inst|shcp~q\);

-- Location: LCCOMB_X24_Y13_N10
\seg_595_dynamic_inst|hc595_ctrl_inst|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|Equal3~0_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0)) # (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1),
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|Equal3~0_combout\);

-- Location: LCCOMB_X24_Y13_N26
\seg_595_dynamic_inst|hc595_ctrl_inst|ds~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|ds~0_combout\ = (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3) & (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1) & 
-- \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3),
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(2),
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~0_combout\);

-- Location: LCCOMB_X25_Y15_N22
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel[0]~2_combout\ = !\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel[0]~2_combout\);

-- Location: LCCOMB_X25_Y13_N2
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~2_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2) & (!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~1\)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2) & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|Add0~1\) # (GND)))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~3\ = CARRY((!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~1\) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2),
	datad => VCC,
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~1\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~2_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~3\);

-- Location: FF_X25_Y13_N3
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2));

-- Location: LCCOMB_X25_Y13_N4
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~4_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3) & (\seg_595_dynamic_inst|seg_dynamic_inst|Add0~3\ $ (GND))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3) & 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~3\ & VCC))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~5\ = CARRY((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3) & !\seg_595_dynamic_inst|seg_dynamic_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3),
	datad => VCC,
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~3\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~4_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~5\);

-- Location: FF_X25_Y13_N5
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~4_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3));

-- Location: LCCOMB_X25_Y13_N6
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~6_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(4) & (!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~5\)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(4) & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|Add0~5\) # (GND)))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~7\ = CARRY((!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~5\) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(4),
	datad => VCC,
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~5\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~6_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~7\);

-- Location: LCCOMB_X26_Y13_N8
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~5_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|Add0~6_combout\ & ((!\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~6_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~5_combout\);

-- Location: FF_X26_Y13_N9
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~5_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(4));

-- Location: LCCOMB_X25_Y13_N8
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~8_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(5) & (\seg_595_dynamic_inst|seg_dynamic_inst|Add0~7\ $ (GND))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(5) & 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~7\ & VCC))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~9\ = CARRY((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(5) & !\seg_595_dynamic_inst|seg_dynamic_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(5),
	datad => VCC,
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~7\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~8_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~9\);

-- Location: FF_X25_Y13_N9
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~8_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(5));

-- Location: LCCOMB_X25_Y13_N10
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~10_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(6) & (!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~9\)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(6) & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|Add0~9\) # (GND)))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~11\ = CARRY((!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~9\) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(6),
	datad => VCC,
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~9\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~10_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~11\);

-- Location: LCCOMB_X26_Y13_N30
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~4_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|Add0~10_combout\ & ((!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\,
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~10_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~4_combout\);

-- Location: FF_X26_Y13_N31
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~4_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(6));

-- Location: LCCOMB_X26_Y13_N10
\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~3_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(5) & (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(4) & \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(5),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(4),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(6),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y13_N12
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~12_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(7) & (\seg_595_dynamic_inst|seg_dynamic_inst|Add0~11\ $ (GND))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(7) & 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~11\ & VCC))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~13\ = CARRY((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(7) & !\seg_595_dynamic_inst|seg_dynamic_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(7),
	datad => VCC,
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~11\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~12_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~13\);

-- Location: FF_X25_Y13_N13
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~12_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(7));

-- Location: LCCOMB_X25_Y13_N14
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~14_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(8) & (!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~13\)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(8) & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|Add0~13\) # (GND)))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~15\ = CARRY((!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~13\) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(8),
	datad => VCC,
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~13\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~14_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~15\);

-- Location: LCCOMB_X26_Y13_N22
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~3_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|Add0~14_combout\ & ((!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\,
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~14_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~3_combout\);

-- Location: FF_X26_Y13_N23
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(8));

-- Location: LCCOMB_X25_Y13_N16
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~16_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(9) & (\seg_595_dynamic_inst|seg_dynamic_inst|Add0~15\ $ (GND))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(9) & 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~15\ & VCC))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~17\ = CARRY((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(9) & !\seg_595_dynamic_inst|seg_dynamic_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(9),
	datad => VCC,
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~15\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~16_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~17\);

-- Location: LCCOMB_X26_Y13_N12
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~2_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|Add0~16_combout\ & ((!\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~16_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~2_combout\);

-- Location: FF_X26_Y13_N13
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(9));

-- Location: LCCOMB_X25_Y13_N18
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~18_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(10) & (!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~17\)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(10) & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|Add0~17\) # (GND)))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~19\ = CARRY((!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~17\) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(10),
	datad => VCC,
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~17\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~18_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~19\);

-- Location: FF_X25_Y13_N19
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~18_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(10));

-- Location: LCCOMB_X25_Y13_N20
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~20_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(11) & (\seg_595_dynamic_inst|seg_dynamic_inst|Add0~19\ $ (GND))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(11) & 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~19\ & VCC))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~21\ = CARRY((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(11) & !\seg_595_dynamic_inst|seg_dynamic_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(11),
	datad => VCC,
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~19\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~20_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~21\);

-- Location: FF_X25_Y13_N21
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~20_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(11));

-- Location: LCCOMB_X25_Y13_N22
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~22_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(12) & (!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~21\)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(12) & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|Add0~21\) # (GND)))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~23\ = CARRY((!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~21\) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(12),
	datad => VCC,
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~21\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~22_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~23\);

-- Location: FF_X25_Y13_N23
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~22_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(12));

-- Location: LCCOMB_X25_Y13_N24
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~24_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(13) & (\seg_595_dynamic_inst|seg_dynamic_inst|Add0~23\ $ (GND))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(13) & 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~23\ & VCC))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~25\ = CARRY((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(13) & !\seg_595_dynamic_inst|seg_dynamic_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(13),
	datad => VCC,
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~23\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~24_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~25\);

-- Location: FF_X25_Y13_N25
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~24_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(13));

-- Location: LCCOMB_X25_Y13_N26
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~26_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(14) & (!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~25\)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(14) & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|Add0~25\) # (GND)))
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~27\ = CARRY((!\seg_595_dynamic_inst|seg_dynamic_inst|Add0~25\) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(14),
	datad => VCC,
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~25\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~26_combout\,
	cout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~27\);

-- Location: LCCOMB_X25_Y13_N30
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~1_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|Add0~26_combout\ & ((!\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~26_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~1_combout\);

-- Location: FF_X25_Y13_N31
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~1_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(14));

-- Location: LCCOMB_X25_Y13_N28
\seg_595_dynamic_inst|seg_dynamic_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Add0~28_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|Add0~27\ $ (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(15),
	cin => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~27\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~28_combout\);

-- Location: LCCOMB_X26_Y13_N18
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|Add0~28_combout\ & ((!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\,
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Add0~28_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~0_combout\);

-- Location: FF_X26_Y13_N19
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(15));

-- Location: LCCOMB_X26_Y13_N24
\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~0_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1) & (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3) & (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(15) & 
-- \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(15),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y13_N4
\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~2_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(8) & (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(10) & (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(9) & 
-- !\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(8),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(10),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(9),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(7),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y13_N26
\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~1_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(11) & (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(12) & (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(14) & 
-- !\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(11),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(12),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(14),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(13),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y13_N28
\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~3_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|Equal0~2_combout\ & 
-- \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~3_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~0_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~2_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~1_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y13_N20
\seg_595_dynamic_inst|seg_dynamic_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Equal1~0_combout\ = (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Equal0~4_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Equal1~0_combout\);

-- Location: FF_X26_Y13_N21
\seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Equal1~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\);

-- Location: FF_X25_Y15_N23
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel[0]~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0));

-- Location: LCCOMB_X25_Y15_N28
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0) & ((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & ((!\seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2) & \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0) & 
-- (((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel~0_combout\);

-- Location: FF_X25_Y15_N29
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1));

-- Location: LCCOMB_X25_Y15_N20
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel~1_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0) & ((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2) & ((!\seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2) & (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0) & 
-- (((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel~1_combout\);

-- Location: FF_X25_Y15_N21
\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel~1_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2));

-- Location: LCCOMB_X24_Y13_N8
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift[3]~0_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift\(3) $ (((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3) & 
-- (\seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0_combout\ & \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3),
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|Equal2~0_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift\(3),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift[3]~0_combout\);

-- Location: FF_X24_Y13_N9
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift[3]~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift\(3));

-- Location: LCCOMB_X23_Y13_N18
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ = (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1) & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift\(3) & (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3) & 
-- !\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift\(3),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y13_N30
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3) & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift\(3) & (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1) & 
-- \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift\(3),
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y13_N28
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\) # (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\);

-- Location: LCCOMB_X25_Y12_N14
\data_gen_inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~10_combout\ = (\data_gen_inst|data\(5) & (!\data_gen_inst|Add1~9\)) # (!\data_gen_inst|data\(5) & ((\data_gen_inst|Add1~9\) # (GND)))
-- \data_gen_inst|Add1~11\ = CARRY((!\data_gen_inst|Add1~9\) # (!\data_gen_inst|data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|data\(5),
	datad => VCC,
	cin => \data_gen_inst|Add1~9\,
	combout => \data_gen_inst|Add1~10_combout\,
	cout => \data_gen_inst|Add1~11\);

-- Location: LCCOMB_X25_Y12_N16
\data_gen_inst|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~12_combout\ = (\data_gen_inst|data\(6) & (\data_gen_inst|Add1~11\ $ (GND))) # (!\data_gen_inst|data\(6) & (!\data_gen_inst|Add1~11\ & VCC))
-- \data_gen_inst|Add1~13\ = CARRY((\data_gen_inst|data\(6) & !\data_gen_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|data\(6),
	datad => VCC,
	cin => \data_gen_inst|Add1~11\,
	combout => \data_gen_inst|Add1~12_combout\,
	cout => \data_gen_inst|Add1~13\);

-- Location: FF_X25_Y12_N17
\data_gen_inst|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add1~12_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(6));

-- Location: LCCOMB_X25_Y12_N18
\data_gen_inst|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~14_combout\ = (\data_gen_inst|data\(7) & (!\data_gen_inst|Add1~13\)) # (!\data_gen_inst|data\(7) & ((\data_gen_inst|Add1~13\) # (GND)))
-- \data_gen_inst|Add1~15\ = CARRY((!\data_gen_inst|Add1~13\) # (!\data_gen_inst|data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|data\(7),
	datad => VCC,
	cin => \data_gen_inst|Add1~13\,
	combout => \data_gen_inst|Add1~14_combout\,
	cout => \data_gen_inst|Add1~15\);

-- Location: FF_X25_Y12_N19
\data_gen_inst|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add1~14_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(7));

-- Location: LCCOMB_X25_Y12_N20
\data_gen_inst|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~16_combout\ = (\data_gen_inst|data\(8) & (\data_gen_inst|Add1~15\ $ (GND))) # (!\data_gen_inst|data\(8) & (!\data_gen_inst|Add1~15\ & VCC))
-- \data_gen_inst|Add1~17\ = CARRY((\data_gen_inst|data\(8) & !\data_gen_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|data\(8),
	datad => VCC,
	cin => \data_gen_inst|Add1~15\,
	combout => \data_gen_inst|Add1~16_combout\,
	cout => \data_gen_inst|Add1~17\);

-- Location: LCCOMB_X24_Y12_N6
\data_gen_inst|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|data~3_combout\ = (!\data_gen_inst|always2~4_combout\ & \data_gen_inst|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|always2~4_combout\,
	datac => \data_gen_inst|Add1~16_combout\,
	combout => \data_gen_inst|data~3_combout\);

-- Location: FF_X24_Y12_N7
\data_gen_inst|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|data~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(8));

-- Location: LCCOMB_X25_Y12_N22
\data_gen_inst|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~18_combout\ = (\data_gen_inst|data\(9) & (!\data_gen_inst|Add1~17\)) # (!\data_gen_inst|data\(9) & ((\data_gen_inst|Add1~17\) # (GND)))
-- \data_gen_inst|Add1~19\ = CARRY((!\data_gen_inst|Add1~17\) # (!\data_gen_inst|data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|data\(9),
	datad => VCC,
	cin => \data_gen_inst|Add1~17\,
	combout => \data_gen_inst|Add1~18_combout\,
	cout => \data_gen_inst|Add1~19\);

-- Location: LCCOMB_X24_Y12_N24
\data_gen_inst|data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|data~2_combout\ = (!\data_gen_inst|always2~4_combout\ & \data_gen_inst|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_gen_inst|always2~4_combout\,
	datad => \data_gen_inst|Add1~18_combout\,
	combout => \data_gen_inst|data~2_combout\);

-- Location: FF_X24_Y12_N25
\data_gen_inst|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|data~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(9));

-- Location: LCCOMB_X25_Y12_N24
\data_gen_inst|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~20_combout\ = (\data_gen_inst|data\(10) & (\data_gen_inst|Add1~19\ $ (GND))) # (!\data_gen_inst|data\(10) & (!\data_gen_inst|Add1~19\ & VCC))
-- \data_gen_inst|Add1~21\ = CARRY((\data_gen_inst|data\(10) & !\data_gen_inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|data\(10),
	datad => VCC,
	cin => \data_gen_inst|Add1~19\,
	combout => \data_gen_inst|Add1~20_combout\,
	cout => \data_gen_inst|Add1~21\);

-- Location: LCCOMB_X25_Y12_N2
\data_gen_inst|data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|data~1_combout\ = (!\data_gen_inst|always2~4_combout\ & \data_gen_inst|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|always2~4_combout\,
	datad => \data_gen_inst|Add1~20_combout\,
	combout => \data_gen_inst|data~1_combout\);

-- Location: FF_X25_Y12_N3
\data_gen_inst|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|data~1_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(10));

-- Location: LCCOMB_X24_Y12_N22
\data_gen_inst|always2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|always2~1_combout\ = (\data_gen_inst|data\(10) & (!\data_gen_inst|data\(7) & (\data_gen_inst|data\(9) & \data_gen_inst|data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|data\(10),
	datab => \data_gen_inst|data\(7),
	datac => \data_gen_inst|data\(9),
	datad => \data_gen_inst|data\(8),
	combout => \data_gen_inst|always2~1_combout\);

-- Location: LCCOMB_X21_Y13_N10
\data_gen_inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~1_cout\ = CARRY((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1),
	datad => VCC,
	cout => \data_gen_inst|Add0~1_cout\);

-- Location: LCCOMB_X21_Y13_N12
\data_gen_inst|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~3_cout\ = CARRY((!\data_gen_inst|Add0~1_cout\) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(2),
	datad => VCC,
	cin => \data_gen_inst|Add0~1_cout\,
	cout => \data_gen_inst|Add0~3_cout\);

-- Location: LCCOMB_X21_Y13_N14
\data_gen_inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~5_cout\ = CARRY((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3) & !\data_gen_inst|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_1ms\(3),
	datad => VCC,
	cin => \data_gen_inst|Add0~3_cout\,
	cout => \data_gen_inst|Add0~5_cout\);

-- Location: LCCOMB_X21_Y13_N16
\data_gen_inst|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~7_cout\ = CARRY((!\data_gen_inst|Add0~5_cout\) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|cnt_shift\(3),
	datad => VCC,
	cin => \data_gen_inst|Add0~5_cout\,
	cout => \data_gen_inst|Add0~7_cout\);

-- Location: LCCOMB_X21_Y13_N18
\data_gen_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~8_combout\ = (\data_gen_inst|cnt_100ms\(5) & (\data_gen_inst|Add0~7_cout\ $ (GND))) # (!\data_gen_inst|cnt_100ms\(5) & (!\data_gen_inst|Add0~7_cout\ & VCC))
-- \data_gen_inst|Add0~9\ = CARRY((\data_gen_inst|cnt_100ms\(5) & !\data_gen_inst|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|cnt_100ms\(5),
	datad => VCC,
	cin => \data_gen_inst|Add0~7_cout\,
	combout => \data_gen_inst|Add0~8_combout\,
	cout => \data_gen_inst|Add0~9\);

-- Location: FF_X21_Y13_N19
\data_gen_inst|cnt_100ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add0~8_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(5));

-- Location: LCCOMB_X21_Y13_N20
\data_gen_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~10_combout\ = (\data_gen_inst|cnt_100ms\(6) & (!\data_gen_inst|Add0~9\)) # (!\data_gen_inst|cnt_100ms\(6) & ((\data_gen_inst|Add0~9\) # (GND)))
-- \data_gen_inst|Add0~11\ = CARRY((!\data_gen_inst|Add0~9\) # (!\data_gen_inst|cnt_100ms\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|cnt_100ms\(6),
	datad => VCC,
	cin => \data_gen_inst|Add0~9\,
	combout => \data_gen_inst|Add0~10_combout\,
	cout => \data_gen_inst|Add0~11\);

-- Location: LCCOMB_X22_Y12_N30
\data_gen_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Equal0~5_combout\ = (\data_gen_inst|cnt_100ms\(5) & !\data_gen_inst|cnt_100ms\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_gen_inst|cnt_100ms\(5),
	datad => \data_gen_inst|cnt_100ms\(6),
	combout => \data_gen_inst|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y13_N24
\data_gen_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~14_combout\ = (\data_gen_inst|cnt_100ms\(8) & (!\data_gen_inst|Add0~13\)) # (!\data_gen_inst|cnt_100ms\(8) & ((\data_gen_inst|Add0~13\) # (GND)))
-- \data_gen_inst|Add0~15\ = CARRY((!\data_gen_inst|Add0~13\) # (!\data_gen_inst|cnt_100ms\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|cnt_100ms\(8),
	datad => VCC,
	cin => \data_gen_inst|Add0~13\,
	combout => \data_gen_inst|Add0~14_combout\,
	cout => \data_gen_inst|Add0~15\);

-- Location: LCCOMB_X21_Y13_N26
\data_gen_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~16_combout\ = (\data_gen_inst|cnt_100ms\(9) & (\data_gen_inst|Add0~15\ $ (GND))) # (!\data_gen_inst|cnt_100ms\(9) & (!\data_gen_inst|Add0~15\ & VCC))
-- \data_gen_inst|Add0~17\ = CARRY((\data_gen_inst|cnt_100ms\(9) & !\data_gen_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|cnt_100ms\(9),
	datad => VCC,
	cin => \data_gen_inst|Add0~15\,
	combout => \data_gen_inst|Add0~16_combout\,
	cout => \data_gen_inst|Add0~17\);

-- Location: LCCOMB_X21_Y13_N2
\data_gen_inst|cnt_100ms~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|cnt_100ms~5_combout\ = (\data_gen_inst|Add0~16_combout\ & !\data_gen_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_gen_inst|Add0~16_combout\,
	datad => \data_gen_inst|Equal0~7_combout\,
	combout => \data_gen_inst|cnt_100ms~5_combout\);

-- Location: FF_X21_Y13_N3
\data_gen_inst|cnt_100ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|cnt_100ms~5_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(9));

-- Location: LCCOMB_X21_Y13_N28
\data_gen_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~18_combout\ = (\data_gen_inst|cnt_100ms\(10) & (!\data_gen_inst|Add0~17\)) # (!\data_gen_inst|cnt_100ms\(10) & ((\data_gen_inst|Add0~17\) # (GND)))
-- \data_gen_inst|Add0~19\ = CARRY((!\data_gen_inst|Add0~17\) # (!\data_gen_inst|cnt_100ms\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|cnt_100ms\(10),
	datad => VCC,
	cin => \data_gen_inst|Add0~17\,
	combout => \data_gen_inst|Add0~18_combout\,
	cout => \data_gen_inst|Add0~19\);

-- Location: FF_X21_Y13_N29
\data_gen_inst|cnt_100ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add0~18_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(10));

-- Location: LCCOMB_X21_Y13_N30
\data_gen_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~20_combout\ = (\data_gen_inst|cnt_100ms\(11) & (\data_gen_inst|Add0~19\ $ (GND))) # (!\data_gen_inst|cnt_100ms\(11) & (!\data_gen_inst|Add0~19\ & VCC))
-- \data_gen_inst|Add0~21\ = CARRY((\data_gen_inst|cnt_100ms\(11) & !\data_gen_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|cnt_100ms\(11),
	datad => VCC,
	cin => \data_gen_inst|Add0~19\,
	combout => \data_gen_inst|Add0~20_combout\,
	cout => \data_gen_inst|Add0~21\);

-- Location: LCCOMB_X21_Y13_N8
\data_gen_inst|cnt_100ms~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|cnt_100ms~4_combout\ = (\data_gen_inst|Add0~20_combout\ & !\data_gen_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|Add0~20_combout\,
	datad => \data_gen_inst|Equal0~7_combout\,
	combout => \data_gen_inst|cnt_100ms~4_combout\);

-- Location: FF_X21_Y13_N9
\data_gen_inst|cnt_100ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|cnt_100ms~4_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(11));

-- Location: LCCOMB_X21_Y12_N0
\data_gen_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~22_combout\ = (\data_gen_inst|cnt_100ms\(12) & (!\data_gen_inst|Add0~21\)) # (!\data_gen_inst|cnt_100ms\(12) & ((\data_gen_inst|Add0~21\) # (GND)))
-- \data_gen_inst|Add0~23\ = CARRY((!\data_gen_inst|Add0~21\) # (!\data_gen_inst|cnt_100ms\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|cnt_100ms\(12),
	datad => VCC,
	cin => \data_gen_inst|Add0~21\,
	combout => \data_gen_inst|Add0~22_combout\,
	cout => \data_gen_inst|Add0~23\);

-- Location: FF_X21_Y12_N1
\data_gen_inst|cnt_100ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add0~22_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(12));

-- Location: LCCOMB_X21_Y12_N2
\data_gen_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~24_combout\ = (\data_gen_inst|cnt_100ms\(13) & (\data_gen_inst|Add0~23\ $ (GND))) # (!\data_gen_inst|cnt_100ms\(13) & (!\data_gen_inst|Add0~23\ & VCC))
-- \data_gen_inst|Add0~25\ = CARRY((\data_gen_inst|cnt_100ms\(13) & !\data_gen_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|cnt_100ms\(13),
	datad => VCC,
	cin => \data_gen_inst|Add0~23\,
	combout => \data_gen_inst|Add0~24_combout\,
	cout => \data_gen_inst|Add0~25\);

-- Location: FF_X21_Y12_N3
\data_gen_inst|cnt_100ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add0~24_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(13));

-- Location: LCCOMB_X21_Y12_N4
\data_gen_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~26_combout\ = (\data_gen_inst|cnt_100ms\(14) & (!\data_gen_inst|Add0~25\)) # (!\data_gen_inst|cnt_100ms\(14) & ((\data_gen_inst|Add0~25\) # (GND)))
-- \data_gen_inst|Add0~27\ = CARRY((!\data_gen_inst|Add0~25\) # (!\data_gen_inst|cnt_100ms\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|cnt_100ms\(14),
	datad => VCC,
	cin => \data_gen_inst|Add0~25\,
	combout => \data_gen_inst|Add0~26_combout\,
	cout => \data_gen_inst|Add0~27\);

-- Location: LCCOMB_X21_Y12_N24
\data_gen_inst|cnt_100ms~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|cnt_100ms~3_combout\ = (\data_gen_inst|Add0~26_combout\ & !\data_gen_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_gen_inst|Add0~26_combout\,
	datad => \data_gen_inst|Equal0~7_combout\,
	combout => \data_gen_inst|cnt_100ms~3_combout\);

-- Location: FF_X21_Y12_N25
\data_gen_inst|cnt_100ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|cnt_100ms~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(14));

-- Location: LCCOMB_X21_Y12_N6
\data_gen_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~28_combout\ = (\data_gen_inst|cnt_100ms\(15) & (\data_gen_inst|Add0~27\ $ (GND))) # (!\data_gen_inst|cnt_100ms\(15) & (!\data_gen_inst|Add0~27\ & VCC))
-- \data_gen_inst|Add0~29\ = CARRY((\data_gen_inst|cnt_100ms\(15) & !\data_gen_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|cnt_100ms\(15),
	datad => VCC,
	cin => \data_gen_inst|Add0~27\,
	combout => \data_gen_inst|Add0~28_combout\,
	cout => \data_gen_inst|Add0~29\);

-- Location: FF_X21_Y12_N7
\data_gen_inst|cnt_100ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add0~28_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(15));

-- Location: LCCOMB_X21_Y12_N8
\data_gen_inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~30_combout\ = (\data_gen_inst|cnt_100ms\(16) & (!\data_gen_inst|Add0~29\)) # (!\data_gen_inst|cnt_100ms\(16) & ((\data_gen_inst|Add0~29\) # (GND)))
-- \data_gen_inst|Add0~31\ = CARRY((!\data_gen_inst|Add0~29\) # (!\data_gen_inst|cnt_100ms\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|cnt_100ms\(16),
	datad => VCC,
	cin => \data_gen_inst|Add0~29\,
	combout => \data_gen_inst|Add0~30_combout\,
	cout => \data_gen_inst|Add0~31\);

-- Location: FF_X21_Y12_N9
\data_gen_inst|cnt_100ms[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add0~30_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(16));

-- Location: LCCOMB_X21_Y12_N10
\data_gen_inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~32_combout\ = (\data_gen_inst|cnt_100ms\(17) & (\data_gen_inst|Add0~31\ $ (GND))) # (!\data_gen_inst|cnt_100ms\(17) & (!\data_gen_inst|Add0~31\ & VCC))
-- \data_gen_inst|Add0~33\ = CARRY((\data_gen_inst|cnt_100ms\(17) & !\data_gen_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|cnt_100ms\(17),
	datad => VCC,
	cin => \data_gen_inst|Add0~31\,
	combout => \data_gen_inst|Add0~32_combout\,
	cout => \data_gen_inst|Add0~33\);

-- Location: FF_X21_Y12_N11
\data_gen_inst|cnt_100ms[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add0~32_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(17));

-- Location: LCCOMB_X21_Y12_N12
\data_gen_inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~34_combout\ = (\data_gen_inst|cnt_100ms\(18) & (!\data_gen_inst|Add0~33\)) # (!\data_gen_inst|cnt_100ms\(18) & ((\data_gen_inst|Add0~33\) # (GND)))
-- \data_gen_inst|Add0~35\ = CARRY((!\data_gen_inst|Add0~33\) # (!\data_gen_inst|cnt_100ms\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|cnt_100ms\(18),
	datad => VCC,
	cin => \data_gen_inst|Add0~33\,
	combout => \data_gen_inst|Add0~34_combout\,
	cout => \data_gen_inst|Add0~35\);

-- Location: LCCOMB_X22_Y12_N4
\data_gen_inst|cnt_100ms~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|cnt_100ms~2_combout\ = (!\data_gen_inst|Equal0~7_combout\ & \data_gen_inst|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|Equal0~7_combout\,
	datad => \data_gen_inst|Add0~34_combout\,
	combout => \data_gen_inst|cnt_100ms~2_combout\);

-- Location: FF_X22_Y12_N5
\data_gen_inst|cnt_100ms[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|cnt_100ms~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(18));

-- Location: LCCOMB_X22_Y12_N10
\data_gen_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Equal0~1_combout\ = (!\data_gen_inst|cnt_100ms\(17) & (!\data_gen_inst|cnt_100ms\(15) & (\data_gen_inst|cnt_100ms\(18) & !\data_gen_inst|cnt_100ms\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|cnt_100ms\(17),
	datab => \data_gen_inst|cnt_100ms\(15),
	datac => \data_gen_inst|cnt_100ms\(18),
	datad => \data_gen_inst|cnt_100ms\(16),
	combout => \data_gen_inst|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y12_N14
\data_gen_inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~36_combout\ = (\data_gen_inst|cnt_100ms\(19) & (\data_gen_inst|Add0~35\ $ (GND))) # (!\data_gen_inst|cnt_100ms\(19) & (!\data_gen_inst|Add0~35\ & VCC))
-- \data_gen_inst|Add0~37\ = CARRY((\data_gen_inst|cnt_100ms\(19) & !\data_gen_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|cnt_100ms\(19),
	datad => VCC,
	cin => \data_gen_inst|Add0~35\,
	combout => \data_gen_inst|Add0~36_combout\,
	cout => \data_gen_inst|Add0~37\);

-- Location: LCCOMB_X21_Y12_N28
\data_gen_inst|cnt_100ms~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|cnt_100ms~1_combout\ = (\data_gen_inst|Add0~36_combout\ & !\data_gen_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_gen_inst|Add0~36_combout\,
	datad => \data_gen_inst|Equal0~7_combout\,
	combout => \data_gen_inst|cnt_100ms~1_combout\);

-- Location: FF_X21_Y12_N29
\data_gen_inst|cnt_100ms[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|cnt_100ms~1_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(19));

-- Location: LCCOMB_X21_Y12_N16
\data_gen_inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~38_combout\ = (\data_gen_inst|cnt_100ms\(20) & (!\data_gen_inst|Add0~37\)) # (!\data_gen_inst|cnt_100ms\(20) & ((\data_gen_inst|Add0~37\) # (GND)))
-- \data_gen_inst|Add0~39\ = CARRY((!\data_gen_inst|Add0~37\) # (!\data_gen_inst|cnt_100ms\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|cnt_100ms\(20),
	datad => VCC,
	cin => \data_gen_inst|Add0~37\,
	combout => \data_gen_inst|Add0~38_combout\,
	cout => \data_gen_inst|Add0~39\);

-- Location: FF_X21_Y12_N17
\data_gen_inst|cnt_100ms[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add0~38_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(20));

-- Location: LCCOMB_X21_Y12_N18
\data_gen_inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~40_combout\ = (\data_gen_inst|cnt_100ms\(21) & (\data_gen_inst|Add0~39\ $ (GND))) # (!\data_gen_inst|cnt_100ms\(21) & (!\data_gen_inst|Add0~39\ & VCC))
-- \data_gen_inst|Add0~41\ = CARRY((\data_gen_inst|cnt_100ms\(21) & !\data_gen_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|cnt_100ms\(21),
	datad => VCC,
	cin => \data_gen_inst|Add0~39\,
	combout => \data_gen_inst|Add0~40_combout\,
	cout => \data_gen_inst|Add0~41\);

-- Location: FF_X21_Y12_N19
\data_gen_inst|cnt_100ms[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add0~40_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(21));

-- Location: LCCOMB_X22_Y12_N0
\data_gen_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Equal0~6_combout\ = (\data_gen_inst|Equal0~3_combout\ & (!\data_gen_inst|cnt_100ms\(6) & (\data_gen_inst|cnt_100ms\(5) & \data_gen_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|Equal0~3_combout\,
	datab => \data_gen_inst|cnt_100ms\(6),
	datac => \data_gen_inst|cnt_100ms\(5),
	datad => \data_gen_inst|Equal0~4_combout\,
	combout => \data_gen_inst|Equal0~6_combout\);

-- Location: LCCOMB_X21_Y12_N20
\data_gen_inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~42_combout\ = \data_gen_inst|cnt_100ms\(22) $ (\data_gen_inst|Add0~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|cnt_100ms\(22),
	cin => \data_gen_inst|Add0~41\,
	combout => \data_gen_inst|Add0~42_combout\);

-- Location: LCCOMB_X21_Y12_N30
\data_gen_inst|cnt_100ms~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|cnt_100ms~0_combout\ = (\data_gen_inst|Add0~42_combout\ & ((!\data_gen_inst|Equal0~6_combout\) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datac => \data_gen_inst|Equal0~6_combout\,
	datad => \data_gen_inst|Add0~42_combout\,
	combout => \data_gen_inst|cnt_100ms~0_combout\);

-- Location: FF_X21_Y12_N31
\data_gen_inst|cnt_100ms[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|cnt_100ms~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(22));

-- Location: LCCOMB_X21_Y12_N26
\data_gen_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Equal0~0_combout\ = (!\data_gen_inst|cnt_100ms\(21) & (\data_gen_inst|cnt_100ms\(19) & (\data_gen_inst|cnt_100ms\(22) & !\data_gen_inst|cnt_100ms\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|cnt_100ms\(21),
	datab => \data_gen_inst|cnt_100ms\(19),
	datac => \data_gen_inst|cnt_100ms\(22),
	datad => \data_gen_inst|cnt_100ms\(20),
	combout => \data_gen_inst|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y12_N22
\data_gen_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Equal0~2_combout\ = (\data_gen_inst|cnt_100ms\(14) & (!\data_gen_inst|cnt_100ms\(13) & (\data_gen_inst|cnt_100ms\(11) & !\data_gen_inst|cnt_100ms\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|cnt_100ms\(14),
	datab => \data_gen_inst|cnt_100ms\(13),
	datac => \data_gen_inst|cnt_100ms\(11),
	datad => \data_gen_inst|cnt_100ms\(12),
	combout => \data_gen_inst|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y12_N12
\data_gen_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Equal0~3_combout\ = (\data_gen_inst|Equal0~1_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ & (\data_gen_inst|Equal0~0_combout\ & \data_gen_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|Equal0~1_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	datac => \data_gen_inst|Equal0~0_combout\,
	datad => \data_gen_inst|Equal0~2_combout\,
	combout => \data_gen_inst|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y12_N18
\data_gen_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Equal0~7_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & (\data_gen_inst|Equal0~4_combout\ & (\data_gen_inst|Equal0~5_combout\ & \data_gen_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datab => \data_gen_inst|Equal0~4_combout\,
	datac => \data_gen_inst|Equal0~5_combout\,
	datad => \data_gen_inst|Equal0~3_combout\,
	combout => \data_gen_inst|Equal0~7_combout\);

-- Location: LCCOMB_X21_Y13_N4
\data_gen_inst|cnt_100ms~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|cnt_100ms~7_combout\ = (\data_gen_inst|Add0~10_combout\ & !\data_gen_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|Add0~10_combout\,
	datad => \data_gen_inst|Equal0~7_combout\,
	combout => \data_gen_inst|cnt_100ms~7_combout\);

-- Location: FF_X21_Y13_N5
\data_gen_inst|cnt_100ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|cnt_100ms~7_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(6));

-- Location: LCCOMB_X21_Y13_N22
\data_gen_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add0~12_combout\ = (\data_gen_inst|cnt_100ms\(7) & (\data_gen_inst|Add0~11\ $ (GND))) # (!\data_gen_inst|cnt_100ms\(7) & (!\data_gen_inst|Add0~11\ & VCC))
-- \data_gen_inst|Add0~13\ = CARRY((\data_gen_inst|cnt_100ms\(7) & !\data_gen_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|cnt_100ms\(7),
	datad => VCC,
	cin => \data_gen_inst|Add0~11\,
	combout => \data_gen_inst|Add0~12_combout\,
	cout => \data_gen_inst|Add0~13\);

-- Location: FF_X21_Y13_N23
\data_gen_inst|cnt_100ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add0~12_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(7));

-- Location: LCCOMB_X21_Y13_N0
\data_gen_inst|cnt_100ms~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|cnt_100ms~6_combout\ = (\data_gen_inst|Add0~14_combout\ & !\data_gen_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|Add0~14_combout\,
	datad => \data_gen_inst|Equal0~7_combout\,
	combout => \data_gen_inst|cnt_100ms~6_combout\);

-- Location: FF_X21_Y13_N1
\data_gen_inst|cnt_100ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|cnt_100ms~6_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_100ms\(8));

-- Location: LCCOMB_X21_Y13_N6
\data_gen_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Equal0~4_combout\ = (\data_gen_inst|cnt_100ms\(8) & (\data_gen_inst|cnt_100ms\(9) & (!\data_gen_inst|cnt_100ms\(7) & !\data_gen_inst|cnt_100ms\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|cnt_100ms\(8),
	datab => \data_gen_inst|cnt_100ms\(9),
	datac => \data_gen_inst|cnt_100ms\(7),
	datad => \data_gen_inst|cnt_100ms\(10),
	combout => \data_gen_inst|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y12_N26
\data_gen_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Equal1~0_combout\ = (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & (\data_gen_inst|Equal0~4_combout\ & (\data_gen_inst|Equal0~5_combout\ & \data_gen_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datab => \data_gen_inst|Equal0~4_combout\,
	datac => \data_gen_inst|Equal0~5_combout\,
	datad => \data_gen_inst|Equal0~3_combout\,
	combout => \data_gen_inst|Equal1~0_combout\);

-- Location: FF_X22_Y12_N27
\data_gen_inst|cnt_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Equal1~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|cnt_flag~q\);

-- Location: LCCOMB_X25_Y12_N4
\data_gen_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~0_combout\ = (\data_gen_inst|cnt_flag~q\ & (\data_gen_inst|data\(0) $ (VCC))) # (!\data_gen_inst|cnt_flag~q\ & (\data_gen_inst|data\(0) & VCC))
-- \data_gen_inst|Add1~1\ = CARRY((\data_gen_inst|cnt_flag~q\ & \data_gen_inst|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|cnt_flag~q\,
	datab => \data_gen_inst|data\(0),
	datad => VCC,
	combout => \data_gen_inst|Add1~0_combout\,
	cout => \data_gen_inst|Add1~1\);

-- Location: FF_X25_Y12_N5
\data_gen_inst|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add1~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(0));

-- Location: LCCOMB_X25_Y12_N6
\data_gen_inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~2_combout\ = (\data_gen_inst|data\(1) & (!\data_gen_inst|Add1~1\)) # (!\data_gen_inst|data\(1) & ((\data_gen_inst|Add1~1\) # (GND)))
-- \data_gen_inst|Add1~3\ = CARRY((!\data_gen_inst|Add1~1\) # (!\data_gen_inst|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|data\(1),
	datad => VCC,
	cin => \data_gen_inst|Add1~1\,
	combout => \data_gen_inst|Add1~2_combout\,
	cout => \data_gen_inst|Add1~3\);

-- Location: FF_X25_Y12_N7
\data_gen_inst|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add1~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(1));

-- Location: LCCOMB_X25_Y12_N8
\data_gen_inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~4_combout\ = (\data_gen_inst|data\(2) & (\data_gen_inst|Add1~3\ $ (GND))) # (!\data_gen_inst|data\(2) & (!\data_gen_inst|Add1~3\ & VCC))
-- \data_gen_inst|Add1~5\ = CARRY((\data_gen_inst|data\(2) & !\data_gen_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|data\(2),
	datad => VCC,
	cin => \data_gen_inst|Add1~3\,
	combout => \data_gen_inst|Add1~4_combout\,
	cout => \data_gen_inst|Add1~5\);

-- Location: FF_X25_Y12_N9
\data_gen_inst|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add1~4_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(2));

-- Location: LCCOMB_X25_Y12_N10
\data_gen_inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~6_combout\ = (\data_gen_inst|data\(3) & (!\data_gen_inst|Add1~5\)) # (!\data_gen_inst|data\(3) & ((\data_gen_inst|Add1~5\) # (GND)))
-- \data_gen_inst|Add1~7\ = CARRY((!\data_gen_inst|Add1~5\) # (!\data_gen_inst|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|data\(3),
	datad => VCC,
	cin => \data_gen_inst|Add1~5\,
	combout => \data_gen_inst|Add1~6_combout\,
	cout => \data_gen_inst|Add1~7\);

-- Location: FF_X25_Y12_N11
\data_gen_inst|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add1~6_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(3));

-- Location: LCCOMB_X24_Y12_N28
\data_gen_inst|always2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|always2~2_combout\ = (!\data_gen_inst|data\(4) & (!\data_gen_inst|data\(5) & (\data_gen_inst|data\(3) & !\data_gen_inst|data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|data\(4),
	datab => \data_gen_inst|data\(5),
	datac => \data_gen_inst|data\(3),
	datad => \data_gen_inst|data\(6),
	combout => \data_gen_inst|always2~2_combout\);

-- Location: LCCOMB_X25_Y12_N26
\data_gen_inst|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~22_combout\ = (\data_gen_inst|data\(11) & (!\data_gen_inst|Add1~21\)) # (!\data_gen_inst|data\(11) & ((\data_gen_inst|Add1~21\) # (GND)))
-- \data_gen_inst|Add1~23\ = CARRY((!\data_gen_inst|Add1~21\) # (!\data_gen_inst|data\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|data\(11),
	datad => VCC,
	cin => \data_gen_inst|Add1~21\,
	combout => \data_gen_inst|Add1~22_combout\,
	cout => \data_gen_inst|Add1~23\);

-- Location: FF_X25_Y12_N27
\data_gen_inst|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add1~22_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(11));

-- Location: LCCOMB_X25_Y12_N28
\data_gen_inst|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~24_combout\ = (\data_gen_inst|data\(12) & (\data_gen_inst|Add1~23\ $ (GND))) # (!\data_gen_inst|data\(12) & (!\data_gen_inst|Add1~23\ & VCC))
-- \data_gen_inst|Add1~25\ = CARRY((\data_gen_inst|data\(12) & !\data_gen_inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|data\(12),
	datad => VCC,
	cin => \data_gen_inst|Add1~23\,
	combout => \data_gen_inst|Add1~24_combout\,
	cout => \data_gen_inst|Add1~25\);

-- Location: FF_X25_Y12_N29
\data_gen_inst|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add1~24_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(12));

-- Location: LCCOMB_X25_Y12_N30
\data_gen_inst|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~26_combout\ = \data_gen_inst|Add1~25\ $ (\data_gen_inst|data\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \data_gen_inst|data\(13),
	cin => \data_gen_inst|Add1~25\,
	combout => \data_gen_inst|Add1~26_combout\);

-- Location: LCCOMB_X25_Y12_N0
\data_gen_inst|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|data~0_combout\ = (\data_gen_inst|Add1~26_combout\ & !\data_gen_inst|always2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_gen_inst|Add1~26_combout\,
	datad => \data_gen_inst|always2~4_combout\,
	combout => \data_gen_inst|data~0_combout\);

-- Location: FF_X25_Y12_N1
\data_gen_inst|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|data~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(13));

-- Location: LCCOMB_X23_Y12_N16
\data_gen_inst|always2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|always2~0_combout\ = (\data_gen_inst|cnt_flag~q\ & (!\data_gen_inst|data\(12) & (\data_gen_inst|data\(13) & !\data_gen_inst|data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|cnt_flag~q\,
	datab => \data_gen_inst|data\(12),
	datac => \data_gen_inst|data\(13),
	datad => \data_gen_inst|data\(11),
	combout => \data_gen_inst|always2~0_combout\);

-- Location: LCCOMB_X24_Y12_N18
\data_gen_inst|always2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|always2~3_combout\ = (\data_gen_inst|data\(1) & (\data_gen_inst|data\(2) & \data_gen_inst|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|data\(1),
	datac => \data_gen_inst|data\(2),
	datad => \data_gen_inst|data\(0),
	combout => \data_gen_inst|always2~3_combout\);

-- Location: LCCOMB_X24_Y12_N8
\data_gen_inst|always2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|always2~4_combout\ = (\data_gen_inst|always2~1_combout\ & (\data_gen_inst|always2~2_combout\ & (\data_gen_inst|always2~0_combout\ & \data_gen_inst|always2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|always2~1_combout\,
	datab => \data_gen_inst|always2~2_combout\,
	datac => \data_gen_inst|always2~0_combout\,
	datad => \data_gen_inst|always2~3_combout\,
	combout => \data_gen_inst|always2~4_combout\);

-- Location: LCCOMB_X25_Y12_N12
\data_gen_inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|Add1~8_combout\ = (\data_gen_inst|data\(4) & (\data_gen_inst|Add1~7\ $ (GND))) # (!\data_gen_inst|data\(4) & (!\data_gen_inst|Add1~7\ & VCC))
-- \data_gen_inst|Add1~9\ = CARRY((\data_gen_inst|data\(4) & !\data_gen_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_gen_inst|data\(4),
	datad => VCC,
	cin => \data_gen_inst|Add1~7\,
	combout => \data_gen_inst|Add1~8_combout\,
	cout => \data_gen_inst|Add1~9\);

-- Location: LCCOMB_X24_Y12_N16
\data_gen_inst|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|data~4_combout\ = (!\data_gen_inst|always2~4_combout\ & \data_gen_inst|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|always2~4_combout\,
	datac => \data_gen_inst|Add1~8_combout\,
	combout => \data_gen_inst|data~4_combout\);

-- Location: FF_X24_Y12_N17
\data_gen_inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|data~4_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(4));

-- Location: FF_X25_Y12_N15
\data_gen_inst|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|Add1~10_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|data\(5));

-- Location: LCCOMB_X23_Y13_N22
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~46_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(0) & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(0),
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~46_combout\);

-- Location: LCCOMB_X23_Y13_N16
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~47_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~46_combout\) # ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & 
-- \data_gen_inst|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~46_combout\,
	datad => \data_gen_inst|data\(0),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~47_combout\);

-- Location: FF_X23_Y13_N17
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~47_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(0));

-- Location: LCCOMB_X23_Y12_N12
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~45_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\data_gen_inst|data\(1)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ 
-- & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datad => \data_gen_inst|data\(1),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~45_combout\);

-- Location: LCCOMB_X23_Y13_N10
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\) # ((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & 
-- !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\);

-- Location: FF_X23_Y12_N13
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~45_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(1));

-- Location: LCCOMB_X24_Y12_N10
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~44_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\data_gen_inst|data\(2)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ 
-- & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(1),
	datab => \data_gen_inst|data\(2),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~44_combout\);

-- Location: FF_X24_Y12_N11
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~44_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(2));

-- Location: LCCOMB_X24_Y12_N12
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~43_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & (\data_gen_inst|data\(3))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|data\(3),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(2),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~43_combout\);

-- Location: FF_X24_Y12_N13
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~43_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(3));

-- Location: LCCOMB_X24_Y12_N2
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~42_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\data_gen_inst|data\(4)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ 
-- & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(3),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datad => \data_gen_inst|data\(4),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~42_combout\);

-- Location: FF_X24_Y12_N3
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~42_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(4));

-- Location: LCCOMB_X24_Y12_N0
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~41_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & (\data_gen_inst|data\(5))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_gen_inst|data\(5),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(4),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~41_combout\);

-- Location: FF_X24_Y12_N1
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~41_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(5));

-- Location: LCCOMB_X24_Y12_N30
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~40_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\data_gen_inst|data\(6)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ 
-- & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(5),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datad => \data_gen_inst|data\(6),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~40_combout\);

-- Location: FF_X24_Y12_N31
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~40_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(6));

-- Location: LCCOMB_X24_Y12_N20
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~39_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\data_gen_inst|data\(7)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ 
-- & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(6),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datad => \data_gen_inst|data\(7),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~39_combout\);

-- Location: FF_X24_Y12_N21
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~39_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(7));

-- Location: LCCOMB_X24_Y12_N14
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~38_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\data_gen_inst|data\(8)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ 
-- & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(7),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datad => \data_gen_inst|data\(8),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~38_combout\);

-- Location: FF_X24_Y12_N15
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~38_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(8));

-- Location: LCCOMB_X24_Y12_N4
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~37_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\data_gen_inst|data\(9)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ 
-- & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(8),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datad => \data_gen_inst|data\(9),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~37_combout\);

-- Location: FF_X24_Y12_N5
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~37_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(9));

-- Location: LCCOMB_X24_Y12_N26
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~36_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\data_gen_inst|data\(10)))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(9),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datad => \data_gen_inst|data\(10),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~36_combout\);

-- Location: FF_X24_Y12_N27
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~36_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(10));

-- Location: LCCOMB_X23_Y12_N10
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~35_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\data_gen_inst|data\(11)))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(10),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datad => \data_gen_inst|data\(11),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~35_combout\);

-- Location: FF_X23_Y12_N11
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~35_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(11));

-- Location: LCCOMB_X23_Y12_N18
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~34_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\data_gen_inst|data\(12)))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(11),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datad => \data_gen_inst|data\(12),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~34_combout\);

-- Location: FF_X23_Y12_N19
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~34_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(12));

-- Location: LCCOMB_X23_Y12_N0
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~32_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\data_gen_inst|data\(13)))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(12),
	datac => \data_gen_inst|data\(13),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~32_combout\);

-- Location: FF_X23_Y12_N1
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~32_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[12]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(13));

-- Location: LCCOMB_X23_Y13_N20
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~24_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & 
-- (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(13))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(13),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(14),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~24_combout\);

-- Location: FF_X23_Y13_N21
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~24_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(14));

-- Location: LCCOMB_X23_Y13_N26
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~27_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(14) $ 
-- (((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(15) & !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(14),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(15),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~27_combout\);

-- Location: FF_X23_Y13_N27
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~27_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(15));

-- Location: LCCOMB_X23_Y13_N12
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[16]~28_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(15))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16) $ (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(15)) # 
-- (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(15),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(14),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[16]~28_combout\);

-- Location: LCCOMB_X23_Y13_N8
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[16]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[16]~29_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~26_combout\ & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[16]~28_combout\)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~26_combout\ & (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~26_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[16]~28_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[16]~29_combout\);

-- Location: FF_X23_Y13_N9
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[16]~29_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16));

-- Location: LCCOMB_X23_Y13_N4
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~25_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(17) & (((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(15) & 
-- !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(14))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(15),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(14),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(17),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~25_combout\);

-- Location: LCCOMB_X23_Y13_N30
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~26_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ & 
-- ((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~25_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~26_combout\);

-- Location: LCCOMB_X23_Y13_N14
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add1~0_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(17) $ (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16) & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(15)) # (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(15),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(14),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(17),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add1~0_combout\);

-- Location: LCCOMB_X23_Y13_N24
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[17]~30_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ & (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16))))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ & ((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16)))) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & 
-- (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add1~0_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[17]~30_combout\);

-- Location: LCCOMB_X23_Y13_N6
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[17]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[17]~31_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~26_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[17]~30_combout\ & 
-- ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~26_combout\ & (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[14]~26_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[17]~30_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(17),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[17]~31_combout\);

-- Location: FF_X23_Y13_N7
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[17]~31_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(17));

-- Location: LCCOMB_X22_Y13_N12
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~16_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & 
-- (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(17))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(17),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(18),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~16_combout\);

-- Location: FF_X22_Y13_N13
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~16_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(18));

-- Location: LCCOMB_X22_Y13_N10
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~23_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(18) $ 
-- (((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(19) & !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(18),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(19),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~23_combout\);

-- Location: FF_X22_Y13_N11
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~23_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(19));

-- Location: LCCOMB_X22_Y13_N24
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~19_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(19))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20) $ (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(19)) # 
-- (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(19),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(18),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~19_combout\);

-- Location: LCCOMB_X22_Y13_N18
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~20_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~18_combout\ & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~19_combout\)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~18_combout\ & (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~18_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~19_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~20_combout\);

-- Location: FF_X22_Y13_N19
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~20_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20));

-- Location: LCCOMB_X22_Y13_N4
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~17_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(21) & (((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(18) & 
-- !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(19))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(18),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(21),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(19),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~17_combout\);

-- Location: LCCOMB_X22_Y13_N22
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~18_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ & 
-- ((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~17_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~18_combout\);

-- Location: LCCOMB_X22_Y13_N26
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add2~0_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(21) $ (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20) & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(18)) # (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(18),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(21),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(19),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add2~0_combout\);

-- Location: LCCOMB_X22_Y13_N28
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[21]~21_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20))))) # 
-- (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ & ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20)))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add2~0_combout\,
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[21]~21_combout\);

-- Location: LCCOMB_X22_Y13_N0
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[21]~22_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~18_combout\ & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[21]~21_combout\)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~18_combout\ & (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[20]~18_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(21),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[21]~21_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[21]~22_combout\);

-- Location: FF_X22_Y13_N1
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[21]~22_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(21));

-- Location: LCCOMB_X22_Y14_N0
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~0_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & 
-- (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(21))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(21),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(22),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~0_combout\);

-- Location: FF_X22_Y14_N1
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(22));

-- Location: LCCOMB_X22_Y14_N30
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~15_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(22) $ 
-- (((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(23),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(22),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~15_combout\);

-- Location: FF_X22_Y14_N31
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~15_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(23));

-- Location: LCCOMB_X22_Y14_N16
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[24]~11_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(23))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24) $ (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(23)) # 
-- (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(23),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(22),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[24]~11_combout\);

-- Location: LCCOMB_X22_Y14_N18
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[24]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[24]~12_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~2_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[24]~11_combout\ & 
-- ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~2_combout\ & (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~2_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[24]~11_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[24]~12_combout\);

-- Location: FF_X22_Y14_N19
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[24]~12_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24));

-- Location: LCCOMB_X22_Y14_N12
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~1_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(25) & (((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(23) & 
-- !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(22))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(23),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(25),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(22),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~1_combout\);

-- Location: LCCOMB_X22_Y14_N22
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~2_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ & 
-- ((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~1_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~2_combout\);

-- Location: LCCOMB_X22_Y14_N10
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add3~0_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(25) $ (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24) & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(23)) # (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(23),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(25),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(22),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add3~0_combout\);

-- Location: LCCOMB_X22_Y14_N28
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[25]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[25]~13_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24))))) # 
-- (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ & ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24)))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add3~0_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24),
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[25]~13_combout\);

-- Location: LCCOMB_X22_Y14_N4
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[25]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[25]~14_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~2_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[25]~13_combout\ & 
-- ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~2_combout\ & (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[22]~2_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[25]~13_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(25),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[25]~14_combout\);

-- Location: FF_X22_Y14_N5
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[25]~14_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(25));

-- Location: LCCOMB_X22_Y15_N10
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[3]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(25),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[3]~feeder_combout\);

-- Location: FF_X22_Y15_N11
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[3]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(3));

-- Location: LCCOMB_X22_Y15_N8
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[1]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(23),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[1]~feeder_combout\);

-- Location: FF_X22_Y15_N9
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[1]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(1));

-- Location: LCCOMB_X22_Y12_N24
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~3_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & 
-- (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(25))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(25),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(26),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~3_combout\);

-- Location: FF_X22_Y12_N25
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(26));

-- Location: LCCOMB_X22_Y12_N22
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~10_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(26) $ 
-- (((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(27) & !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(26),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(27),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~10_combout\);

-- Location: FF_X22_Y12_N23
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift~10_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(27));

-- Location: LCCOMB_X22_Y12_N20
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add4~0_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(29) $ (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28) & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(27)) # (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(29),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(27),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(26),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add4~0_combout\);

-- Location: LCCOMB_X22_Y12_N6
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[29]~6_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28))) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) 
-- & ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Add4~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[29]~6_combout\);

-- Location: LCCOMB_X22_Y12_N2
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[29]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[29]~7_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~5_combout\ & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[29]~6_combout\)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~5_combout\ & (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~5_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(29),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[29]~6_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[29]~7_combout\);

-- Location: FF_X22_Y12_N3
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[29]~7_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(29));

-- Location: LCCOMB_X22_Y12_N8
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~4_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(29) & (((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(27) & 
-- !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(26))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(29),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(27),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(26),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~4_combout\);

-- Location: LCCOMB_X22_Y12_N14
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~5_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\ & 
-- ((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~4_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~5_combout\);

-- Location: LCCOMB_X22_Y12_N28
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[28]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[28]~8_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(27))))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28) $ (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(26)) # 
-- (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(26),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(27),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|always1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[28]~8_combout\);

-- Location: LCCOMB_X22_Y12_N16
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[28]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[28]~9_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~5_combout\ & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\ & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[28]~8_combout\)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~5_combout\ & (((\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal0~0_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[27]~5_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[28]~8_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[28]~9_combout\);

-- Location: FF_X22_Y12_N17
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift[28]~9_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28));

-- Location: LCCOMB_X22_Y15_N14
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[2]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(28),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[2]~feeder_combout\);

-- Location: FF_X22_Y15_N15
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[2]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(2));

-- Location: LCCOMB_X22_Y15_N20
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[3]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(29),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[3]~feeder_combout\);

-- Location: FF_X22_Y15_N21
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[3]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(3));

-- Location: LCCOMB_X23_Y15_N28
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[0]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(26),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[0]~feeder_combout\);

-- Location: FF_X23_Y15_N29
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[0]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(0));

-- Location: LCCOMB_X22_Y15_N26
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~0_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(2) & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(3) & !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(2),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(3),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(0),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~0_combout\);

-- Location: LCCOMB_X22_Y15_N4
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[2]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(24),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[2]~feeder_combout\);

-- Location: FF_X22_Y15_N5
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[2]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(2));

-- Location: LCCOMB_X22_Y15_N12
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[1]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(27),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[1]~feeder_combout\);

-- Location: FF_X22_Y15_N13
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho[1]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(1));

-- Location: LCCOMB_X22_Y15_N30
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~1_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~0_combout\ & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(2) & !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~0_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(2),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(1),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~1_combout\);

-- Location: FF_X22_Y15_N31
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(22),
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(0));

-- Location: LCCOMB_X22_Y15_N24
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~2_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(0)) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(3) & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(1) 
-- & \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(3),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(1),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~1_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(0),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~2_combout\);

-- Location: FF_X22_Y15_N25
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(8));

-- Location: LCCOMB_X23_Y15_N4
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~5_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(0)) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(1) & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(3) 
-- & !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(1),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(3),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(2),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(0),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~5_combout\);

-- Location: FF_X23_Y15_N5
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~5_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(12));

-- Location: LCCOMB_X21_Y15_N16
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[3]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(21),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[3]~feeder_combout\);

-- Location: FF_X21_Y15_N17
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[3]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(3));

-- Location: LCCOMB_X21_Y15_N24
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[0]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(18),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[0]~feeder_combout\);

-- Location: FF_X21_Y15_N25
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[0]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(0));

-- Location: FF_X22_Y15_N27
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(19),
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(1));

-- Location: LCCOMB_X22_Y15_N0
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~3_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~0_combout\ & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(0) & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(2) & 
-- !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~0_combout\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(2),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(1),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~3_combout\);

-- Location: LCCOMB_X21_Y15_N26
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[2]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(20),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[2]~feeder_combout\);

-- Location: FF_X21_Y15_N27
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten[2]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(2));

-- Location: LCCOMB_X22_Y15_N28
\seg_595_dynamic_inst|seg_dynamic_inst|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|WideOr1~0_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(3) & (\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~3_combout\ & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(2) & 
-- !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(3),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~3_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(2),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(1),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr1~0_combout\);

-- Location: LCCOMB_X22_Y15_N2
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~4_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(0)) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(3) & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(1) 
-- & \seg_595_dynamic_inst|seg_dynamic_inst|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(3),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(1),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~4_combout\);

-- Location: FF_X22_Y15_N3
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~4_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(4));

-- Location: LCCOMB_X23_Y15_N26
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[0]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(14),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[0]~feeder_combout\);

-- Location: FF_X23_Y15_N27
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[0]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit\(0));

-- Location: FF_X23_Y15_N17
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit\(0),
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(0));

-- Location: LCCOMB_X23_Y15_N16
\seg_595_dynamic_inst|seg_dynamic_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Mux3~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & (((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0))))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0) & (\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(4))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0) & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(4),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(0),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y15_N18
\seg_595_dynamic_inst|seg_dynamic_inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Mux3~1_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & ((\seg_595_dynamic_inst|seg_dynamic_inst|Mux3~0_combout\ & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(12)))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|Mux3~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(8))))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & (((\seg_595_dynamic_inst|seg_dynamic_inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(8),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(12),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Mux3~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Mux3~1_combout\);

-- Location: LCCOMB_X24_Y15_N30
\seg_595_dynamic_inst|seg_dynamic_inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Mux3~2_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2) & \seg_595_dynamic_inst|seg_dynamic_inst|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Mux3~1_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Mux3~2_combout\);

-- Location: LCCOMB_X24_Y15_N6
\data_gen_inst|seg_en~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_gen_inst|seg_en~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \data_gen_inst|seg_en~feeder_combout\);

-- Location: FF_X24_Y15_N7
\data_gen_inst|seg_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \data_gen_inst|seg_en~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_gen_inst|seg_en~q\);

-- Location: LCCOMB_X25_Y15_N18
\seg_595_dynamic_inst|seg_dynamic_inst|always5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|always5~0_combout\ = (\data_gen_inst|seg_en~q\ & \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_gen_inst|seg_en~q\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|always5~0_combout\);

-- Location: FF_X24_Y15_N31
\seg_595_dynamic_inst|seg_dynamic_inst|data_disp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Mux3~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0));

-- Location: FF_X22_Y15_N1
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(2),
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(10));

-- Location: FF_X23_Y15_N11
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(2),
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(14));

-- Location: LCCOMB_X23_Y15_N8
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[2]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(16),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[2]~feeder_combout\);

-- Location: FF_X23_Y15_N9
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[2]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit\(2));

-- Location: FF_X23_Y15_N1
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit\(2),
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(2));

-- Location: FF_X22_Y15_N29
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(2),
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(6));

-- Location: LCCOMB_X23_Y15_N0
\seg_595_dynamic_inst|seg_dynamic_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Mux1~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0) & ((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1)) # ((\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(6))))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0) & (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & (\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(2),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(6),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y15_N10
\seg_595_dynamic_inst|seg_dynamic_inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Mux1~1_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & ((\seg_595_dynamic_inst|seg_dynamic_inst|Mux1~0_combout\ & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(14)))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|Mux1~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(10))))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & (((\seg_595_dynamic_inst|seg_dynamic_inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(10),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(14),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Mux1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y15_N14
\seg_595_dynamic_inst|seg_dynamic_inst|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Mux1~2_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2) & \seg_595_dynamic_inst|seg_dynamic_inst|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Mux1~1_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Mux1~2_combout\);

-- Location: FF_X24_Y15_N15
\seg_595_dynamic_inst|seg_dynamic_inst|data_disp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Mux1~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2));

-- Location: LCCOMB_X23_Y15_N6
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~8_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(1)) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(3) & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(2) 
-- & !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(1),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(3),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(2),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(0),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~8_combout\);

-- Location: FF_X23_Y15_N7
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~8_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(13));

-- Location: LCCOMB_X22_Y15_N22
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~7_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(1)) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(3) & \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(3),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~3_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(1),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~7_combout\);

-- Location: FF_X22_Y15_N23
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~7_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(9));

-- Location: LCCOMB_X23_Y15_N30
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[1]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(15),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[1]~feeder_combout\);

-- Location: FF_X23_Y15_N31
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[1]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit\(1));

-- Location: FF_X23_Y15_N3
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit\(1),
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(1));

-- Location: LCCOMB_X23_Y15_N2
\seg_595_dynamic_inst|seg_dynamic_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Mux2~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0) & (((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1))))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0) & 
-- ((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & (\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(9))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(9),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(1),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y15_N6
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~6_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(1)) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(3) & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(0) 
-- & \seg_595_dynamic_inst|seg_dynamic_inst|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(3),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(1),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~6_combout\);

-- Location: FF_X22_Y15_N7
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~6_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(5));

-- Location: LCCOMB_X23_Y15_N24
\seg_595_dynamic_inst|seg_dynamic_inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Mux2~1_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|Mux2~0_combout\ & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(13)) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0))))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|Mux2~0_combout\ & (((\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(5) & \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(13),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|Mux2~0_combout\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(5),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y15_N4
\seg_595_dynamic_inst|seg_dynamic_inst|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Mux2~2_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2) & \seg_595_dynamic_inst|seg_dynamic_inst|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Mux2~1_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Mux2~2_combout\);

-- Location: FF_X24_Y15_N5
\seg_595_dynamic_inst|seg_dynamic_inst|data_disp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Mux2~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1));

-- Location: LCCOMB_X23_Y15_N12
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~11_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(3)) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(1) & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(2) 
-- & !\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(1),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(3),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(2),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|tho\(0),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~11_combout\);

-- Location: FF_X23_Y15_N13
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~11_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(15));

-- Location: LCCOMB_X22_Y15_N18
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~9_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(3)) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(0) & (!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(1) 
-- & \seg_595_dynamic_inst|seg_dynamic_inst|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(3),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|ten\(1),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr1~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~9_combout\);

-- Location: FF_X22_Y15_N19
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~9_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(7));

-- Location: LCCOMB_X22_Y15_N16
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~10_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(3)) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(1) & \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(3),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|hun\(1),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~3_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~10_combout\);

-- Location: FF_X22_Y15_N17
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg~10_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(11));

-- Location: LCCOMB_X23_Y15_N22
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[3]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|data_shift\(17),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[3]~feeder_combout\);

-- Location: FF_X23_Y15_N23
\seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit[3]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit\(3));

-- Location: FF_X23_Y15_N15
\seg_595_dynamic_inst|seg_dynamic_inst|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \seg_595_dynamic_inst|seg_dynamic_inst|bcd_8421_inst|unit\(3),
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(3));

-- Location: LCCOMB_X23_Y15_N14
\seg_595_dynamic_inst|seg_dynamic_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Mux0~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(11)) # ((\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0))))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & (((\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(3) & !\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(11),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(3),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y15_N20
\seg_595_dynamic_inst|seg_dynamic_inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Mux0~1_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|Mux0~0_combout\ & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(15)) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0))))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|Mux0~0_combout\ & (((\seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(7) & \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(15),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|data_reg\(7),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|Mux0~0_combout\,
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y15_N16
\seg_595_dynamic_inst|seg_dynamic_inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|Mux0~2_combout\ = (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2) & \seg_595_dynamic_inst|seg_dynamic_inst|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|Mux0~1_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|Mux0~2_combout\);

-- Location: FF_X24_Y15_N17
\seg_595_dynamic_inst|seg_dynamic_inst|data_disp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|Mux0~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3));

-- Location: LCCOMB_X24_Y15_N20
\seg_595_dynamic_inst|seg_dynamic_inst|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|WideOr6~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2) & (((\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2) & (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1) & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3)) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr6~0_combout\);

-- Location: FF_X24_Y15_N21
\seg_595_dynamic_inst|seg_dynamic_inst|seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr6~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(5));

-- Location: LCCOMB_X24_Y15_N26
\seg_595_dynamic_inst|seg_dynamic_inst|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|WideOr5~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2) & (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3) & ((!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1)) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0))))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2) & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3) & ((!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1)) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0)))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3) & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr5~0_combout\);

-- Location: FF_X24_Y15_N27
\seg_595_dynamic_inst|seg_dynamic_inst|seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr5~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(6));

-- Location: LCCOMB_X24_Y15_N8
\seg_595_dynamic_inst|seg_dynamic_inst|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|WideOr7~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2) & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3)) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0) & 
-- \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1))))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2) & (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0) & ((!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1)) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr7~0_combout\);

-- Location: FF_X24_Y15_N9
\seg_595_dynamic_inst|seg_dynamic_inst|seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr7~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(4));

-- Location: LCCOMB_X24_Y15_N10
\seg_595_dynamic_inst|hc595_ctrl_inst|ds~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|ds~1_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1) & (((!\seg_595_dynamic_inst|seg_dynamic_inst|seg\(4) & \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0))))) # 
-- (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1) & (((!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|seg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(6),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(4),
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0),
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~1_combout\);

-- Location: LCCOMB_X24_Y13_N24
\seg_595_dynamic_inst|hc595_ctrl_inst|ds~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|ds~2_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|ds~0_combout\ & ((\seg_595_dynamic_inst|hc595_ctrl_inst|ds~1_combout\) # ((!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0) & 
-- !\seg_595_dynamic_inst|seg_dynamic_inst|seg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~0_combout\,
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(5),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~1_combout\,
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~2_combout\);

-- Location: LCCOMB_X24_Y15_N2
\seg_595_dynamic_inst|seg_dynamic_inst|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|WideOr9~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2)) # (((\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0) & !\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr9~0_combout\);

-- Location: FF_X24_Y15_N3
\seg_595_dynamic_inst|seg_dynamic_inst|seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr9~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(2));

-- Location: LCCOMB_X24_Y15_N22
\seg_595_dynamic_inst|seg_dynamic_inst|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|WideOr11~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1) & (((\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3))))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1) & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3)) # (\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0) $ (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr11~0_combout\);

-- Location: FF_X24_Y15_N23
\seg_595_dynamic_inst|seg_dynamic_inst|seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr11~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(0));

-- Location: LCCOMB_X24_Y15_N12
\seg_595_dynamic_inst|seg_dynamic_inst|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|WideOr10~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2) & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3)) # (\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0) $ 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1))))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2) & (((!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr10~0_combout\);

-- Location: FF_X24_Y15_N13
\seg_595_dynamic_inst|seg_dynamic_inst|seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr10~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(1));

-- Location: LCCOMB_X24_Y15_N18
\seg_595_dynamic_inst|seg_dynamic_inst|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|WideOr8~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2) & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3)) # (\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0) $ 
-- (\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1))))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2) & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1) & ((!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3)))) # 
-- (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1) & ((\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3)) # (!\seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(0),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(2),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(1),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|data_disp\(3),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr8~0_combout\);

-- Location: FF_X24_Y15_N19
\seg_595_dynamic_inst|seg_dynamic_inst|seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|WideOr8~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(3));

-- Location: LCCOMB_X24_Y15_N0
\seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~2_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1) & (((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0))) # (!\seg_595_dynamic_inst|seg_dynamic_inst|seg\(1)))) # 
-- (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1) & (((!\seg_595_dynamic_inst|seg_dynamic_inst|seg\(3) & !\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(1),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(3),
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0),
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y15_N24
\seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~3_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0) & ((\seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~2_combout\ & ((!\seg_595_dynamic_inst|seg_dynamic_inst|seg\(0)))) # 
-- (!\seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~2_combout\ & (!\seg_595_dynamic_inst|seg_dynamic_inst|seg\(2))))) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0) & (((\seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0),
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(2),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|seg\(0),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~2_combout\,
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~3_combout\);

-- Location: LCCOMB_X25_Y15_N16
\seg_595_dynamic_inst|seg_dynamic_inst|always4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|always4~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\ & (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1) & (!\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0) & 
-- !\seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\,
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(1),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(0),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|cnt_sel\(2),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|always4~0_combout\);

-- Location: LCCOMB_X25_Y15_N4
\seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~2_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|always4~0_combout\) # ((!\seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\ & \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\,
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(0),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|always4~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~2_combout\);

-- Location: FF_X25_Y15_N5
\seg_595_dynamic_inst|seg_dynamic_inst|sel_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(0));

-- Location: LCCOMB_X25_Y15_N30
\seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~1_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(0) & !\seg_595_dynamic_inst|seg_dynamic_inst|always4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(0),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|always4~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~1_combout\);

-- Location: FF_X25_Y15_N31
\seg_595_dynamic_inst|seg_dynamic_inst|sel_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~1_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(1));

-- Location: LCCOMB_X25_Y15_N24
\seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~0_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(1) & !\seg_595_dynamic_inst|seg_dynamic_inst|always4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(1),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|always4~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~0_combout\);

-- Location: FF_X25_Y15_N25
\seg_595_dynamic_inst|seg_dynamic_inst|sel_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(2));

-- Location: LCCOMB_X25_Y15_N12
\seg_595_dynamic_inst|seg_dynamic_inst|sel[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|sel[2]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(2),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|sel[2]~feeder_combout\);

-- Location: FF_X25_Y15_N13
\seg_595_dynamic_inst|seg_dynamic_inst|sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|sel[2]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|sel\(2));

-- Location: LCCOMB_X25_Y15_N14
\seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~3_combout\ = (\seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(2) & !\seg_595_dynamic_inst|seg_dynamic_inst|always4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(2),
	datad => \seg_595_dynamic_inst|seg_dynamic_inst|always4~0_combout\,
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~3_combout\);

-- Location: FF_X25_Y15_N15
\seg_595_dynamic_inst|seg_dynamic_inst|sel_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \seg_595_dynamic_inst|seg_dynamic_inst|flag_1ms~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(3));

-- Location: FF_X25_Y15_N3
\seg_595_dynamic_inst|seg_dynamic_inst|sel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(3),
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|sel\(3));

-- Location: LCCOMB_X25_Y15_N10
\seg_595_dynamic_inst|seg_dynamic_inst|sel[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|seg_dynamic_inst|sel[1]~feeder_combout\ = \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(1),
	combout => \seg_595_dynamic_inst|seg_dynamic_inst|sel[1]~feeder_combout\);

-- Location: FF_X25_Y15_N11
\seg_595_dynamic_inst|seg_dynamic_inst|sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|seg_dynamic_inst|sel[1]~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|sel\(1));

-- Location: FF_X25_Y15_N1
\seg_595_dynamic_inst|seg_dynamic_inst|sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \seg_595_dynamic_inst|seg_dynamic_inst|sel_reg\(0),
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|seg_dynamic_inst|sel\(0));

-- Location: LCCOMB_X25_Y15_N0
\seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~0_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1) & (((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0))))) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1) & 
-- ((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0) & (\seg_595_dynamic_inst|seg_dynamic_inst|sel\(1))) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0) & ((\seg_595_dynamic_inst|seg_dynamic_inst|sel\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|sel\(1),
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|sel\(0),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(0),
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y15_N2
\seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~1_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1) & ((\seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~0_combout\ & ((\seg_595_dynamic_inst|seg_dynamic_inst|sel\(3)))) # 
-- (!\seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~0_combout\ & (\seg_595_dynamic_inst|seg_dynamic_inst|sel\(2))))) # (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1) & (((\seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|seg_dynamic_inst|sel\(2),
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(1),
	datac => \seg_595_dynamic_inst|seg_dynamic_inst|sel\(3),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~0_combout\,
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y13_N12
\seg_595_dynamic_inst|hc595_ctrl_inst|ds~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|ds~4_combout\ = (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & ((\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3) & (\seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~3_combout\)) # 
-- (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3) & ((\seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(3),
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~3_combout\,
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|Mux0~1_combout\,
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~4_combout\);

-- Location: LCCOMB_X24_Y13_N6
\seg_595_dynamic_inst|hc595_ctrl_inst|ds~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|ds~5_combout\ = (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0) & (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(2) & (!\seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1) & 
-- \seg_595_dynamic_inst|hc595_ctrl_inst|ds~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(0),
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_bit\(2),
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|cnt_4\(1),
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~4_combout\,
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~5_combout\);

-- Location: LCCOMB_X24_Y13_N22
\seg_595_dynamic_inst|hc595_ctrl_inst|ds~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg_595_dynamic_inst|hc595_ctrl_inst|ds~3_combout\ = (\seg_595_dynamic_inst|hc595_ctrl_inst|ds~2_combout\) # ((\seg_595_dynamic_inst|hc595_ctrl_inst|ds~5_combout\) # ((\seg_595_dynamic_inst|hc595_ctrl_inst|Equal3~0_combout\ & 
-- \seg_595_dynamic_inst|hc595_ctrl_inst|ds~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_595_dynamic_inst|hc595_ctrl_inst|Equal3~0_combout\,
	datab => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~2_combout\,
	datac => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~q\,
	datad => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~5_combout\,
	combout => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~3_combout\);

-- Location: FF_X24_Y13_N23
\seg_595_dynamic_inst|hc595_ctrl_inst|ds\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_595_dynamic_inst|hc595_ctrl_inst|ds~q\);

ww_stcp <= \stcp~output_o\;

ww_shcp <= \shcp~output_o\;

ww_ds <= \ds~output_o\;

ww_oe <= \oe~output_o\;
END structure;


