-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Full Version"

-- DATE "04/23/2014 11:51:05"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SN_PROGRAM_V02 IS
    PORT (
	R_DATA : OUT std_logic;
	Buffer_in : IN std_logic;
	Reset_comm : IN std_logic;
	DIN : IN std_logic;
	DOUT : IN std_logic;
	Reset_ADC_comm : IN std_logic;
	In_switches : IN std_logic_vector(15 DOWNTO 0);
	S_CLK : OUT std_logic;
	CS : OUT std_logic;
	SHDN : OUT std_logic;
	Buffer_out : OUT std_logic;
	S_CLK_debug : OUT std_logic;
	CS_debug : OUT std_logic;
	DOUT_debug : OUT std_logic;
	BCD01s : OUT std_logic_vector(6 DOWNTO 0);
	BCD10s : OUT std_logic_vector(6 DOWNTO 0);
	BCD1s : OUT std_logic_vector(6 DOWNTO 0);
	LEDS : OUT std_logic_vector(11 DOWNTO 0)
	);
END SN_PROGRAM_V02;

-- Design Ports Information
-- R_DATA	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Buffer_in	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S_CLK	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CS	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SHDN	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Buffer_out	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S_CLK_debug	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CS_debug	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DOUT_debug	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD01s[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD01s[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD01s[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD01s[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD01s[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD01s[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD01s[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD10s[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD10s[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD10s[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD10s[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD10s[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD10s[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD10s[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1s[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1s[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1s[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1s[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1s[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1s[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1s[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDS[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DOUT	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_ADC_comm	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_comm	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- In_switches[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIN	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF SN_PROGRAM_V02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R_DATA : std_logic;
SIGNAL ww_Buffer_in : std_logic;
SIGNAL ww_Reset_comm : std_logic;
SIGNAL ww_DIN : std_logic;
SIGNAL ww_DOUT : std_logic;
SIGNAL ww_Reset_ADC_comm : std_logic;
SIGNAL ww_In_switches : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_S_CLK : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_SHDN : std_logic;
SIGNAL ww_Buffer_out : std_logic;
SIGNAL ww_S_CLK_debug : std_logic;
SIGNAL ww_CS_debug : std_logic;
SIGNAL ww_DOUT_debug : std_logic;
SIGNAL ww_BCD01s : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCD10s : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCD1s : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDS : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst7|Selector30~2_combout\ : std_logic;
SIGNAL \inst1|first_clock~regout\ : std_logic;
SIGNAL \inst1|done_flag~0_combout\ : std_logic;
SIGNAL \inst1|done_flag~1_combout\ : std_logic;
SIGNAL \inst7|m_a_bit4~regout\ : std_logic;
SIGNAL \inst7|start_bit3~regout\ : std_logic;
SIGNAL \inst7|start_bit8~regout\ : std_logic;
SIGNAL \inst1|data_counter~3_combout\ : std_logic;
SIGNAL \inst1|data_counter~4_combout\ : std_logic;
SIGNAL \inst1|first_clock~0_combout\ : std_logic;
SIGNAL \inst1|first_clock~1_combout\ : std_logic;
SIGNAL \inst1|wait_counter~2_combout\ : std_logic;
SIGNAL \inst1|wait_counter~5_combout\ : std_logic;
SIGNAL \inst7|m1~regout\ : std_logic;
SIGNAL \inst7|manchester_bit~regout\ : std_logic;
SIGNAL \inst7|manchester_bit~0_combout\ : std_logic;
SIGNAL \inst7|Selector22~1_combout\ : std_logic;
SIGNAL \inst7|Add1~0_combout\ : std_logic;
SIGNAL \inst7|Selector11~0_combout\ : std_logic;
SIGNAL \inst7|Selector6~0_combout\ : std_logic;
SIGNAL \inst7|m1~0_combout\ : std_logic;
SIGNAL \inst7|manchester_bit~1_combout\ : std_logic;
SIGNAL \inst7|Respond_Data[8]~feeder_combout\ : std_logic;
SIGNAL \Buffer_in~combout\ : std_logic;
SIGNAL \inst7|respond_counter[0]~2_combout\ : std_logic;
SIGNAL \inst7|Selector16~0_combout\ : std_logic;
SIGNAL \inst7|Selector17~0_combout\ : std_logic;
SIGNAL \inst7|Selector17~1_combout\ : std_logic;
SIGNAL \inst7|Selector16~1_combout\ : std_logic;
SIGNAL \inst7|Selector21~0_combout\ : std_logic;
SIGNAL \inst7|Selector21~1_combout\ : std_logic;
SIGNAL \inst7|Selector20~0_combout\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Selector19~0_combout\ : std_logic;
SIGNAL \inst7|Selector1~4_combout\ : std_logic;
SIGNAL \Reset_comm~combout\ : std_logic;
SIGNAL \inst7|Selector7~0_combout\ : std_logic;
SIGNAL \inst7|start_bit7~regout\ : std_logic;
SIGNAL \DIN~combout\ : std_logic;
SIGNAL \inst7|Selector13~0_combout\ : std_logic;
SIGNAL \inst7|start_bit1~regout\ : std_logic;
SIGNAL \inst7|Selector12~0_combout\ : std_logic;
SIGNAL \inst7|start_bit2~regout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|Selector1~3_combout\ : std_logic;
SIGNAL \inst7|Selector0~1_combout\ : std_logic;
SIGNAL \inst7|Selector0~2_combout\ : std_logic;
SIGNAL \inst7|r_state.idle~regout\ : std_logic;
SIGNAL \inst7|Selector1~2_combout\ : std_logic;
SIGNAL \inst7|Selector1~5_combout\ : std_logic;
SIGNAL \inst7|r_state.check_address~regout\ : std_logic;
SIGNAL \inst7|Selector23~0_combout\ : std_logic;
SIGNAL \inst7|Selector22~0_combout\ : std_logic;
SIGNAL \inst7|Selector25~0_combout\ : std_logic;
SIGNAL \inst7|m_a_bit1~regout\ : std_logic;
SIGNAL \inst7|Selector24~0_combout\ : std_logic;
SIGNAL \inst7|m_a_bit2~regout\ : std_logic;
SIGNAL \inst7|Selector23~1_combout\ : std_logic;
SIGNAL \inst7|m_a_bit3~regout\ : std_logic;
SIGNAL \inst7|Equal2~0_combout\ : std_logic;
SIGNAL \inst7|Selector2~0_combout\ : std_logic;
SIGNAL \inst7|Selector2~1_combout\ : std_logic;
SIGNAL \inst7|r_state.check_functioncode~regout\ : std_logic;
SIGNAL \inst7|Selector18~0_combout\ : std_logic;
SIGNAL \inst7|Selector18~1_combout\ : std_logic;
SIGNAL \inst7|Selector3~2_combout\ : std_logic;
SIGNAL \inst7|Selector26~0_combout\ : std_logic;
SIGNAL \inst7|m_f_bit4~regout\ : std_logic;
SIGNAL \inst7|Selector28~0_combout\ : std_logic;
SIGNAL \inst7|m_f_bit2~regout\ : std_logic;
SIGNAL \inst7|Selector29~0_combout\ : std_logic;
SIGNAL \inst7|m_f_bit1~regout\ : std_logic;
SIGNAL \inst7|Respond_Data[17]~0_combout\ : std_logic;
SIGNAL \inst7|Selector0~0_combout\ : std_logic;
SIGNAL \inst7|Selector3~5_combout\ : std_logic;
SIGNAL \inst7|Add3~1_combout\ : std_logic;
SIGNAL \inst7|Equal8~0_combout\ : std_logic;
SIGNAL \inst7|respond_counter~0_combout\ : std_logic;
SIGNAL \inst7|Equal8~1_combout\ : std_logic;
SIGNAL \inst7|Selector15~0_combout\ : std_logic;
SIGNAL \inst7|respond_flag~regout\ : std_logic;
SIGNAL \inst7|Selector3~4_combout\ : std_logic;
SIGNAL \inst7|Selector3~6_combout\ : std_logic;
SIGNAL \inst7|Selector3~7_combout\ : std_logic;
SIGNAL \inst7|f_state.idle~regout\ : std_logic;
SIGNAL \inst7|Selector8~0_combout\ : std_logic;
SIGNAL \inst7|start_bit6~regout\ : std_logic;
SIGNAL \inst7|Selector10~0_combout\ : std_logic;
SIGNAL \inst7|start_bit4~regout\ : std_logic;
SIGNAL \inst7|Selector9~0_combout\ : std_logic;
SIGNAL \inst7|start_bit5~regout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Selector4~4_combout\ : std_logic;
SIGNAL \inst7|Selector4~0_combout\ : std_logic;
SIGNAL \inst7|Selector4~1_combout\ : std_logic;
SIGNAL \inst7|Selector4~2_combout\ : std_logic;
SIGNAL \inst7|Selector4~3_combout\ : std_logic;
SIGNAL \inst7|Selector4~5_combout\ : std_logic;
SIGNAL \inst7|f_state.manchester_converting~regout\ : std_logic;
SIGNAL \inst7|manchester_counter~0_combout\ : std_logic;
SIGNAL \inst7|manchester_counter~regout\ : std_logic;
SIGNAL \inst7|Selector14~0_combout\ : std_logic;
SIGNAL \inst7|Selector14~1_combout\ : std_logic;
SIGNAL \inst7|fault~regout\ : std_logic;
SIGNAL \inst7|Selector3~3_combout\ : std_logic;
SIGNAL \inst7|Selector5~0_combout\ : std_logic;
SIGNAL \inst7|Respond_Data[17]~1_combout\ : std_logic;
SIGNAL \inst7|Selector5~1_combout\ : std_logic;
SIGNAL \inst7|f_state.respond~regout\ : std_logic;
SIGNAL \inst7|Add3~0_combout\ : std_logic;
SIGNAL \inst7|Add3~2_combout\ : std_logic;
SIGNAL \inst7|respond_counter~1_combout\ : std_logic;
SIGNAL \inst7|Selector27~0_combout\ : std_logic;
SIGNAL \inst7|m_f_bit3~regout\ : std_logic;
SIGNAL \inst7|Equal4~0_combout\ : std_logic;
SIGNAL \inst7|Selector30~0_combout\ : std_logic;
SIGNAL \inst7|Selector30~1_combout\ : std_logic;
SIGNAL \inst7|Respond_Data[3]~feeder_combout\ : std_logic;
SIGNAL \inst7|Respond_Data[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|Mux0~4_combout\ : std_logic;
SIGNAL \inst7|Mux0~5_combout\ : std_logic;
SIGNAL \inst7|Respond_Data[2]~feeder_combout\ : std_logic;
SIGNAL \inst7|Respond_Data[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|Mux0~2_combout\ : std_logic;
SIGNAL \inst7|Mux0~3_combout\ : std_logic;
SIGNAL \inst7|Selector30~6_combout\ : std_logic;
SIGNAL \inst7|Respond_Data[11]~feeder_combout\ : std_logic;
SIGNAL \inst7|Mux0~1_combout\ : std_logic;
SIGNAL \inst7|Selector30~4_combout\ : std_logic;
SIGNAL \inst7|Respond_Data[10]~feeder_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Selector30~3_combout\ : std_logic;
SIGNAL \inst7|Selector30~5_combout\ : std_logic;
SIGNAL \inst7|Selector30~7_combout\ : std_logic;
SIGNAL \inst7|Selector30~8_combout\ : std_logic;
SIGNAL \inst7|output_data~regout\ : std_logic;
SIGNAL \inst1|wait_counter~8_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|wait_counter~9_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|wait_counter~6_combout\ : std_logic;
SIGNAL \inst1|wait_counter~7_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \Reset_ADC_comm~combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|wait_counter~10_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|wait_counter~4_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|wait_counter~3_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|wait_flag~0_combout\ : std_logic;
SIGNAL \inst1|wait_flag~regout\ : std_logic;
SIGNAL \inst1|data_counter[3]~0_combout\ : std_logic;
SIGNAL \inst1|data_counter~7_combout\ : std_logic;
SIGNAL \inst1|data_counter~8_combout\ : std_logic;
SIGNAL \inst1|data_counter~1_combout\ : std_logic;
SIGNAL \inst1|data_counter~2_combout\ : std_logic;
SIGNAL \inst1|data_counter~5_combout\ : std_logic;
SIGNAL \inst1|data_counter~6_combout\ : std_logic;
SIGNAL \inst1|Add2~0_combout\ : std_logic;
SIGNAL \inst1|Add2~1_combout\ : std_logic;
SIGNAL \inst1|done_flag~2_combout\ : std_logic;
SIGNAL \inst1|done_flag~regout\ : std_logic;
SIGNAL \inst1|wait_conv~1_combout\ : std_logic;
SIGNAL \inst1|wait_conv~regout\ : std_logic;
SIGNAL \inst1|wait_conv~0_combout\ : std_logic;
SIGNAL \inst1|s_wait_conv~regout\ : std_logic;
SIGNAL \inst1|S_CLK~0_combout\ : std_logic;
SIGNAL \inst1|CS~0_combout\ : std_logic;
SIGNAL \inst1|CS~regout\ : std_logic;
SIGNAL \DOUT~combout\ : std_logic;
SIGNAL \inst7|LEDS[11]~feeder_combout\ : std_logic;
SIGNAL \inst7|LEDS[10]~feeder_combout\ : std_logic;
SIGNAL \inst7|LEDS[9]~feeder_combout\ : std_logic;
SIGNAL \inst7|LEDS[8]~feeder_combout\ : std_logic;
SIGNAL \inst7|LEDS[7]~feeder_combout\ : std_logic;
SIGNAL \inst7|LEDS[6]~feeder_combout\ : std_logic;
SIGNAL \inst7|LEDS[5]~feeder_combout\ : std_logic;
SIGNAL \inst7|LEDS[4]~feeder_combout\ : std_logic;
SIGNAL \inst7|LEDS[3]~0_combout\ : std_logic;
SIGNAL \inst7|LEDS[2]~1_combout\ : std_logic;
SIGNAL \inst7|LEDS[1]~2_combout\ : std_logic;
SIGNAL \inst7|LEDS[0]~3_combout\ : std_logic;
SIGNAL \inst7|respond_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|functioncode_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|address_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|Respond_Data\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst7|LEDS\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|wait_counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst1|data_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \In_switches~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Reset_ADC_comm~combout\ : std_logic;
SIGNAL \ALT_INV_Buffer_in~combout\ : std_logic;

BEGIN

R_DATA <= ww_R_DATA;
ww_Buffer_in <= Buffer_in;
ww_Reset_comm <= Reset_comm;
ww_DIN <= DIN;
ww_DOUT <= DOUT;
ww_Reset_ADC_comm <= Reset_ADC_comm;
ww_In_switches <= In_switches;
S_CLK <= ww_S_CLK;
CS <= ww_CS;
SHDN <= ww_SHDN;
Buffer_out <= ww_Buffer_out;
S_CLK_debug <= ww_S_CLK_debug;
CS_debug <= ww_CS_debug;
DOUT_debug <= ww_DOUT_debug;
BCD01s <= ww_BCD01s;
BCD10s <= ww_BCD10s;
BCD1s <= ww_BCD1s;
LEDS <= ww_LEDS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Reset_ADC_comm~combout\ <= NOT \Reset_ADC_comm~combout\;
\ALT_INV_Buffer_in~combout\ <= NOT \Buffer_in~combout\;

-- Location: LCCOMB_X64_Y24_N6
\inst1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|Add0~3\ & (\Reset_ADC_comm~combout\ & (\inst1|wait_counter\(2) & VCC))) # (!\inst1|Add0~3\ & ((((\Reset_ADC_comm~combout\ & \inst1|wait_counter\(2))))))
-- \inst1|Add0~5\ = CARRY((\Reset_ADC_comm~combout\ & (\inst1|wait_counter\(2) & !\inst1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_ADC_comm~combout\,
	datab => \inst1|wait_counter\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X64_Y24_N10
\inst1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|Add0~7\ & (\Reset_ADC_comm~combout\ & (\inst1|wait_counter\(4) & VCC))) # (!\inst1|Add0~7\ & ((((\Reset_ADC_comm~combout\ & \inst1|wait_counter\(4))))))
-- \inst1|Add0~9\ = CARRY((\Reset_ADC_comm~combout\ & (\inst1|wait_counter\(4) & !\inst1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_ADC_comm~combout\,
	datab => \inst1|wait_counter\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X62_Y21_N24
\inst7|Selector30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector30~2_combout\ = (\inst7|f_state.respond~regout\ & (\inst7|respond_counter\(4) $ (\inst7|respond_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|respond_counter\(4),
	datac => \inst7|f_state.respond~regout\,
	datad => \inst7|respond_counter\(3),
	combout => \inst7|Selector30~2_combout\);

-- Location: LCFF_X62_Y21_N21
\inst7|Respond_Data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|Respond_Data[8]~feeder_combout\,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(8));

-- Location: LCFF_X64_Y22_N7
\inst1|data_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|data_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|data_counter\(1));

-- Location: LCFF_X62_Y24_N11
\inst1|first_clock\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|first_clock~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|first_clock~regout\);

-- Location: LCCOMB_X64_Y22_N0
\inst1|done_flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|done_flag~0_combout\ = (\inst1|data_counter\(1) & (\Reset_ADC_comm~combout\ & (\inst1|data_counter\(0) & !\inst1|data_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_counter\(1),
	datab => \Reset_ADC_comm~combout\,
	datac => \inst1|data_counter\(0),
	datad => \inst1|data_counter\(2),
	combout => \inst1|done_flag~0_combout\);

-- Location: LCCOMB_X62_Y24_N12
\inst1|done_flag~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|done_flag~1_combout\ = (\inst1|first_clock~regout\ & (\inst1|wait_conv~regout\ & \inst1|done_flag~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|first_clock~regout\,
	datac => \inst1|wait_conv~regout\,
	datad => \inst1|done_flag~0_combout\,
	combout => \inst1|done_flag~1_combout\);

-- Location: LCFF_X63_Y24_N9
\inst1|wait_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|wait_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|wait_counter\(8));

-- Location: LCFF_X63_Y24_N15
\inst1|wait_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|wait_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|wait_counter\(5));

-- Location: LCFF_X63_Y23_N25
\inst7|m_a_bit4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|m_a_bit4~regout\);

-- Location: LCFF_X62_Y23_N21
\inst7|start_bit3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|start_bit3~regout\);

-- Location: LCFF_X61_Y23_N7
\inst7|start_bit8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|start_bit8~regout\);

-- Location: LCCOMB_X64_Y22_N22
\inst1|data_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|data_counter~3_combout\ = (\Reset_ADC_comm~combout\ & (\inst1|data_counter~1_combout\ & (\inst1|data_counter\(1) $ (\inst1|data_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_counter\(1),
	datab => \Reset_ADC_comm~combout\,
	datac => \inst1|data_counter\(0),
	datad => \inst1|data_counter~1_combout\,
	combout => \inst1|data_counter~3_combout\);

-- Location: LCCOMB_X64_Y22_N6
\inst1|data_counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|data_counter~4_combout\ = (\inst1|data_counter~3_combout\) # ((\inst1|data_counter[3]~0_combout\ & (\Reset_ADC_comm~combout\ & \inst1|data_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_counter[3]~0_combout\,
	datab => \Reset_ADC_comm~combout\,
	datac => \inst1|data_counter\(1),
	datad => \inst1|data_counter~3_combout\,
	combout => \inst1|data_counter~4_combout\);

-- Location: LCCOMB_X62_Y24_N4
\inst1|first_clock~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|first_clock~0_combout\ = (\inst1|wait_flag~regout\ & ((\inst1|done_flag~regout\) # ((!\inst1|first_clock~regout\ & !\inst1|wait_conv~regout\)))) # (!\inst1|wait_flag~regout\ & (!\inst1|first_clock~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|first_clock~regout\,
	datab => \inst1|wait_flag~regout\,
	datac => \inst1|wait_conv~regout\,
	datad => \inst1|done_flag~regout\,
	combout => \inst1|first_clock~0_combout\);

-- Location: LCCOMB_X62_Y24_N10
\inst1|first_clock~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|first_clock~1_combout\ = (!\inst1|first_clock~0_combout\ & \Reset_ADC_comm~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|first_clock~0_combout\,
	datad => \Reset_ADC_comm~combout\,
	combout => \inst1|first_clock~1_combout\);

-- Location: LCCOMB_X63_Y24_N8
\inst1|wait_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|wait_counter~2_combout\ = (\inst1|Add0~16_combout\ & !\inst1|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~16_combout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|wait_counter~2_combout\);

-- Location: LCCOMB_X63_Y24_N14
\inst1|wait_counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|wait_counter~5_combout\ = (\inst1|Add0~10_combout\ & !\inst1|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~10_combout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|wait_counter~5_combout\);

-- Location: LCFF_X64_Y24_N7
\inst7|m1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	sdata => \inst7|m1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|m1~regout\);

-- Location: LCFF_X64_Y24_N13
\inst7|manchester_bit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	sdata => \inst7|manchester_bit~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|manchester_bit~regout\);

-- Location: LCCOMB_X64_Y23_N26
\inst7|manchester_bit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|manchester_bit~0_combout\ = (\DIN~combout\ & (\inst7|m1~regout\ & \inst7|manchester_bit~regout\)) # (!\DIN~combout\ & ((\inst7|m1~regout\) # (\inst7|manchester_bit~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN~combout\,
	datac => \inst7|m1~regout\,
	datad => \inst7|manchester_bit~regout\,
	combout => \inst7|manchester_bit~0_combout\);

-- Location: LCCOMB_X63_Y23_N24
\inst7|Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector22~1_combout\ = (\inst7|Selector22~0_combout\ & ((\inst7|m_a_bit3~regout\) # ((\inst7|m_a_bit4~regout\ & \inst7|Selector23~0_combout\)))) # (!\inst7|Selector22~0_combout\ & (((\inst7|m_a_bit4~regout\ & \inst7|Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector22~0_combout\,
	datab => \inst7|m_a_bit3~regout\,
	datac => \inst7|m_a_bit4~regout\,
	datad => \inst7|Selector23~0_combout\,
	combout => \inst7|Selector22~1_combout\);

-- Location: LCCOMB_X62_Y24_N14
\inst7|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add1~0_combout\ = \inst7|functioncode_counter\(2) $ (((\inst7|functioncode_counter\(1) & \inst7|functioncode_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|functioncode_counter\(1),
	datac => \inst7|functioncode_counter\(2),
	datad => \inst7|functioncode_counter\(0),
	combout => \inst7|Add1~0_combout\);

-- Location: LCCOMB_X62_Y23_N20
\inst7|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector11~0_combout\ = (\inst7|f_state.respond~regout\ & ((\inst7|start_bit3~regout\) # ((\inst7|start_bit2~regout\ & !\inst7|f_state.idle~regout\)))) # (!\inst7|f_state.respond~regout\ & (\inst7|start_bit2~regout\ & 
-- ((!\inst7|f_state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.respond~regout\,
	datab => \inst7|start_bit2~regout\,
	datac => \inst7|start_bit3~regout\,
	datad => \inst7|f_state.idle~regout\,
	combout => \inst7|Selector11~0_combout\);

-- Location: LCCOMB_X61_Y23_N6
\inst7|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector6~0_combout\ = (\inst7|f_state.respond~regout\ & ((\inst7|start_bit8~regout\) # ((\inst7|start_bit7~regout\ & !\inst7|f_state.idle~regout\)))) # (!\inst7|f_state.respond~regout\ & (\inst7|start_bit7~regout\ & 
-- ((!\inst7|f_state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.respond~regout\,
	datab => \inst7|start_bit7~regout\,
	datac => \inst7|start_bit8~regout\,
	datad => \inst7|f_state.idle~regout\,
	combout => \inst7|Selector6~0_combout\);

-- Location: LCCOMB_X64_Y23_N24
\inst7|m1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|m1~0_combout\ = (\inst7|manchester_counter~regout\ & (\inst7|m1~regout\)) # (!\inst7|manchester_counter~regout\ & ((\inst7|f_state.manchester_converting~regout\ & ((\DIN~combout\))) # (!\inst7|f_state.manchester_converting~regout\ & 
-- (\inst7|m1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|m1~regout\,
	datab => \DIN~combout\,
	datac => \inst7|manchester_counter~regout\,
	datad => \inst7|f_state.manchester_converting~regout\,
	combout => \inst7|m1~0_combout\);

-- Location: LCCOMB_X63_Y24_N6
\inst7|manchester_bit~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|manchester_bit~1_combout\ = (\inst7|manchester_counter~regout\ & ((\inst7|f_state.manchester_converting~regout\ & (\inst7|manchester_bit~0_combout\)) # (!\inst7|f_state.manchester_converting~regout\ & ((\inst7|manchester_bit~regout\))))) # 
-- (!\inst7|manchester_counter~regout\ & (((\inst7|manchester_bit~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|manchester_counter~regout\,
	datab => \inst7|manchester_bit~0_combout\,
	datac => \inst7|f_state.manchester_converting~regout\,
	datad => \inst7|manchester_bit~regout\,
	combout => \inst7|manchester_bit~1_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(8),
	combout => \In_switches~combout\(8));

-- Location: LCCOMB_X62_Y21_N20
\inst7|Respond_Data[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Respond_Data[8]~feeder_combout\ = \In_switches~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \In_switches~combout\(8),
	combout => \inst7|Respond_Data[8]~feeder_combout\);

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
inst3 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Buffer_in,
	combout => \Buffer_in~combout\);

-- Location: LCCOMB_X62_Y24_N6
\inst7|respond_counter[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|respond_counter[0]~2_combout\ = !\inst7|respond_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|respond_counter\(0),
	combout => \inst7|respond_counter[0]~2_combout\);

-- Location: LCCOMB_X61_Y24_N0
\inst7|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector16~0_combout\ = (\inst7|f_state.respond~regout\) # ((\inst7|f_state.manchester_converting~regout\ & ((!\inst7|manchester_counter~regout\) # (!\inst7|r_state.check_functioncode~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|r_state.check_functioncode~regout\,
	datab => \inst7|manchester_counter~regout\,
	datac => \inst7|f_state.respond~regout\,
	datad => \inst7|f_state.manchester_converting~regout\,
	combout => \inst7|Selector16~0_combout\);

-- Location: LCCOMB_X61_Y24_N2
\inst7|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector17~0_combout\ = (\inst7|r_state.check_functioncode~regout\ & (\inst7|manchester_counter~regout\ & \inst7|f_state.manchester_converting~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|r_state.check_functioncode~regout\,
	datab => \inst7|manchester_counter~regout\,
	datad => \inst7|f_state.manchester_converting~regout\,
	combout => \inst7|Selector17~0_combout\);

-- Location: LCCOMB_X61_Y24_N4
\inst7|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector17~1_combout\ = (\inst7|functioncode_counter\(1) & ((\inst7|Selector16~0_combout\) # ((!\inst7|functioncode_counter\(0) & \inst7|Selector17~0_combout\)))) # (!\inst7|functioncode_counter\(1) & (\inst7|functioncode_counter\(0) & 
-- ((\inst7|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|functioncode_counter\(0),
	datab => \inst7|Selector16~0_combout\,
	datac => \inst7|functioncode_counter\(1),
	datad => \inst7|Selector17~0_combout\,
	combout => \inst7|Selector17~1_combout\);

-- Location: LCFF_X61_Y24_N5
\inst7|functioncode_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|functioncode_counter\(1));

-- Location: LCCOMB_X61_Y24_N24
\inst7|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector16~1_combout\ = (\inst7|Add1~0_combout\ & ((\inst7|Selector17~0_combout\) # ((\inst7|Selector16~0_combout\ & \inst7|functioncode_counter\(2))))) # (!\inst7|Add1~0_combout\ & (\inst7|Selector16~0_combout\ & 
-- (\inst7|functioncode_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~0_combout\,
	datab => \inst7|Selector16~0_combout\,
	datac => \inst7|functioncode_counter\(2),
	datad => \inst7|Selector17~0_combout\,
	combout => \inst7|Selector16~1_combout\);

-- Location: LCFF_X61_Y24_N25
\inst7|functioncode_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|functioncode_counter\(2));

-- Location: LCCOMB_X64_Y23_N22
\inst7|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector21~0_combout\ = (\inst7|f_state.manchester_converting~regout\ & (\inst7|address_counter\(0) $ (((\inst7|manchester_counter~regout\ & \inst7|r_state.check_address~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.manchester_converting~regout\,
	datab => \inst7|manchester_counter~regout\,
	datac => \inst7|address_counter\(0),
	datad => \inst7|r_state.check_address~regout\,
	combout => \inst7|Selector21~0_combout\);

-- Location: LCCOMB_X64_Y23_N2
\inst7|Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector21~1_combout\ = (\inst7|Selector21~0_combout\) # ((\inst7|f_state.respond~regout\ & \inst7|address_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.respond~regout\,
	datac => \inst7|address_counter\(0),
	datad => \inst7|Selector21~0_combout\,
	combout => \inst7|Selector21~1_combout\);

-- Location: LCFF_X64_Y23_N3
\inst7|address_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|address_counter\(0));

-- Location: LCCOMB_X64_Y23_N20
\inst7|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector20~0_combout\ = (\inst7|address_counter\(1) & ((\inst7|Selector23~0_combout\) # ((\inst7|Selector22~0_combout\ & !\inst7|address_counter\(0))))) # (!\inst7|address_counter\(1) & (\inst7|Selector22~0_combout\ & (\inst7|address_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector22~0_combout\,
	datab => \inst7|address_counter\(0),
	datac => \inst7|address_counter\(1),
	datad => \inst7|Selector23~0_combout\,
	combout => \inst7|Selector20~0_combout\);

-- Location: LCFF_X64_Y23_N21
\inst7|address_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|address_counter\(1));

-- Location: LCCOMB_X64_Y23_N0
\inst7|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = \inst7|address_counter\(2) $ (((\inst7|address_counter\(0) & \inst7|address_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|address_counter\(0),
	datac => \inst7|address_counter\(1),
	datad => \inst7|address_counter\(2),
	combout => \inst7|Add0~0_combout\);

-- Location: LCCOMB_X64_Y23_N12
\inst7|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector19~0_combout\ = (\inst7|Selector22~0_combout\ & ((\inst7|Add0~0_combout\) # ((\inst7|address_counter\(2) & \inst7|Selector23~0_combout\)))) # (!\inst7|Selector22~0_combout\ & (((\inst7|address_counter\(2) & \inst7|Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector22~0_combout\,
	datab => \inst7|Add0~0_combout\,
	datac => \inst7|address_counter\(2),
	datad => \inst7|Selector23~0_combout\,
	combout => \inst7|Selector19~0_combout\);

-- Location: LCFF_X64_Y23_N13
\inst7|address_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|address_counter\(2));

-- Location: LCCOMB_X63_Y23_N30
\inst7|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector1~4_combout\ = (\inst7|r_state.check_address~regout\ & ((\inst7|address_counter\(0)) # ((\inst7|address_counter\(1)) # (!\inst7|address_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|address_counter\(0),
	datab => \inst7|address_counter\(2),
	datac => \inst7|r_state.check_address~regout\,
	datad => \inst7|address_counter\(1),
	combout => \inst7|Selector1~4_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_comm~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset_comm,
	combout => \Reset_comm~combout\);

-- Location: LCCOMB_X61_Y23_N18
\inst7|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector7~0_combout\ = (\inst7|f_state.respond~regout\ & ((\inst7|start_bit7~regout\) # ((\inst7|start_bit6~regout\ & !\inst7|f_state.idle~regout\)))) # (!\inst7|f_state.respond~regout\ & (\inst7|start_bit6~regout\ & 
-- ((!\inst7|f_state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.respond~regout\,
	datab => \inst7|start_bit6~regout\,
	datac => \inst7|start_bit7~regout\,
	datad => \inst7|f_state.idle~regout\,
	combout => \inst7|Selector7~0_combout\);

-- Location: LCFF_X61_Y23_N19
\inst7|start_bit7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|start_bit7~regout\);

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DIN,
	combout => \DIN~combout\);

-- Location: LCCOMB_X61_Y23_N12
\inst7|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector13~0_combout\ = (\inst7|f_state.respond~regout\ & ((\inst7|start_bit1~regout\) # ((\DIN~combout\ & !\inst7|f_state.idle~regout\)))) # (!\inst7|f_state.respond~regout\ & (\DIN~combout\ & ((!\inst7|f_state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.respond~regout\,
	datab => \DIN~combout\,
	datac => \inst7|start_bit1~regout\,
	datad => \inst7|f_state.idle~regout\,
	combout => \inst7|Selector13~0_combout\);

-- Location: LCFF_X61_Y23_N13
\inst7|start_bit1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|start_bit1~regout\);

-- Location: LCCOMB_X61_Y23_N4
\inst7|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector12~0_combout\ = (\inst7|f_state.respond~regout\ & ((\inst7|start_bit2~regout\) # ((!\inst7|f_state.idle~regout\ & \inst7|start_bit1~regout\)))) # (!\inst7|f_state.respond~regout\ & (!\inst7|f_state.idle~regout\ & 
-- ((\inst7|start_bit1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.respond~regout\,
	datab => \inst7|f_state.idle~regout\,
	datac => \inst7|start_bit2~regout\,
	datad => \inst7|start_bit1~regout\,
	combout => \inst7|Selector12~0_combout\);

-- Location: LCFF_X61_Y23_N5
\inst7|start_bit2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|start_bit2~regout\);

-- Location: LCCOMB_X61_Y23_N16
\inst7|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (\inst7|start_bit8~regout\) # (((\inst7|start_bit2~regout\) # (!\inst7|start_bit1~regout\)) # (!\inst7|start_bit7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|start_bit8~regout\,
	datab => \inst7|start_bit7~regout\,
	datac => \inst7|start_bit2~regout\,
	datad => \inst7|start_bit1~regout\,
	combout => \inst7|Equal0~1_combout\);

-- Location: LCCOMB_X63_Y23_N16
\inst7|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector1~3_combout\ = (!\inst7|fault~regout\ & \Reset_comm~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|fault~regout\,
	datad => \Reset_comm~combout\,
	combout => \inst7|Selector1~3_combout\);

-- Location: LCCOMB_X62_Y23_N14
\inst7|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector0~1_combout\ = (\inst7|r_state.idle~regout\ & (((!\inst7|Selector1~3_combout\)))) # (!\inst7|r_state.idle~regout\ & ((\inst7|Equal0~0_combout\) # ((\inst7|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|r_state.idle~regout\,
	datab => \inst7|Equal0~0_combout\,
	datac => \inst7|Selector1~3_combout\,
	datad => \inst7|Equal0~1_combout\,
	combout => \inst7|Selector0~1_combout\);

-- Location: LCCOMB_X62_Y23_N0
\inst7|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector0~2_combout\ = (!\inst7|Selector3~2_combout\ & ((\inst7|Selector0~0_combout\ & ((\inst7|Equal2~0_combout\))) # (!\inst7|Selector0~0_combout\ & (!\inst7|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector0~0_combout\,
	datab => \inst7|Selector3~2_combout\,
	datac => \inst7|Selector0~1_combout\,
	datad => \inst7|Equal2~0_combout\,
	combout => \inst7|Selector0~2_combout\);

-- Location: LCFF_X62_Y23_N1
\inst7|r_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|r_state.idle~regout\);

-- Location: LCCOMB_X62_Y23_N12
\inst7|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector1~2_combout\ = (!\inst7|Equal0~1_combout\ & (!\inst7|r_state.idle~regout\ & !\inst7|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Equal0~1_combout\,
	datac => \inst7|r_state.idle~regout\,
	datad => \inst7|Equal0~0_combout\,
	combout => \inst7|Selector1~2_combout\);

-- Location: LCCOMB_X62_Y23_N22
\inst7|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector1~5_combout\ = (\inst7|Selector1~2_combout\) # ((!\inst7|fault~regout\ & (\inst7|Selector1~4_combout\ & \Reset_comm~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|fault~regout\,
	datab => \inst7|Selector1~4_combout\,
	datac => \Reset_comm~combout\,
	datad => \inst7|Selector1~2_combout\,
	combout => \inst7|Selector1~5_combout\);

-- Location: LCFF_X62_Y23_N23
\inst7|r_state.check_address\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|Selector1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|r_state.check_address~regout\);

-- Location: LCCOMB_X64_Y23_N28
\inst7|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector23~0_combout\ = (\inst7|f_state.respond~regout\) # ((\inst7|f_state.manchester_converting~regout\ & ((!\inst7|r_state.check_address~regout\) # (!\inst7|manchester_counter~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.manchester_converting~regout\,
	datab => \inst7|manchester_counter~regout\,
	datac => \inst7|f_state.respond~regout\,
	datad => \inst7|r_state.check_address~regout\,
	combout => \inst7|Selector23~0_combout\);

-- Location: LCCOMB_X63_Y23_N10
\inst7|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector22~0_combout\ = (\inst7|manchester_counter~regout\ & (\inst7|r_state.check_address~regout\ & \inst7|f_state.manchester_converting~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|manchester_counter~regout\,
	datab => \inst7|r_state.check_address~regout\,
	datad => \inst7|f_state.manchester_converting~regout\,
	combout => \inst7|Selector22~0_combout\);

-- Location: LCCOMB_X63_Y23_N18
\inst7|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector25~0_combout\ = (\inst7|manchester_bit~0_combout\ & ((\inst7|Selector22~0_combout\) # ((\inst7|Selector23~0_combout\ & \inst7|m_a_bit1~regout\)))) # (!\inst7|manchester_bit~0_combout\ & (\inst7|Selector23~0_combout\ & 
-- (\inst7|m_a_bit1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|manchester_bit~0_combout\,
	datab => \inst7|Selector23~0_combout\,
	datac => \inst7|m_a_bit1~regout\,
	datad => \inst7|Selector22~0_combout\,
	combout => \inst7|Selector25~0_combout\);

-- Location: LCFF_X63_Y23_N19
\inst7|m_a_bit1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|m_a_bit1~regout\);

-- Location: LCCOMB_X63_Y23_N0
\inst7|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector24~0_combout\ = (\inst7|Selector22~0_combout\ & ((\inst7|m_a_bit1~regout\) # ((\inst7|m_a_bit2~regout\ & \inst7|Selector23~0_combout\)))) # (!\inst7|Selector22~0_combout\ & (((\inst7|m_a_bit2~regout\ & \inst7|Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector22~0_combout\,
	datab => \inst7|m_a_bit1~regout\,
	datac => \inst7|m_a_bit2~regout\,
	datad => \inst7|Selector23~0_combout\,
	combout => \inst7|Selector24~0_combout\);

-- Location: LCFF_X63_Y23_N1
\inst7|m_a_bit2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|m_a_bit2~regout\);

-- Location: LCCOMB_X63_Y23_N14
\inst7|Selector23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector23~1_combout\ = (\inst7|Selector22~0_combout\ & ((\inst7|m_a_bit2~regout\) # ((\inst7|m_a_bit3~regout\ & \inst7|Selector23~0_combout\)))) # (!\inst7|Selector22~0_combout\ & (((\inst7|m_a_bit3~regout\ & \inst7|Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector22~0_combout\,
	datab => \inst7|m_a_bit2~regout\,
	datac => \inst7|m_a_bit3~regout\,
	datad => \inst7|Selector23~0_combout\,
	combout => \inst7|Selector23~1_combout\);

-- Location: LCFF_X63_Y23_N15
\inst7|m_a_bit3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|m_a_bit3~regout\);

-- Location: LCCOMB_X63_Y23_N22
\inst7|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal2~0_combout\ = (!\inst7|m_a_bit4~regout\ & (\inst7|m_a_bit1~regout\ & (!\inst7|m_a_bit3~regout\ & !\inst7|m_a_bit2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|m_a_bit4~regout\,
	datab => \inst7|m_a_bit1~regout\,
	datac => \inst7|m_a_bit3~regout\,
	datad => \inst7|m_a_bit2~regout\,
	combout => \inst7|Equal2~0_combout\);

-- Location: LCCOMB_X62_Y23_N16
\inst7|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector2~0_combout\ = (\Reset_comm~combout\ & (\inst7|r_state.check_functioncode~regout\ & !\inst7|fault~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset_comm~combout\,
	datac => \inst7|r_state.check_functioncode~regout\,
	datad => \inst7|fault~regout\,
	combout => \inst7|Selector2~0_combout\);

-- Location: LCCOMB_X62_Y23_N8
\inst7|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector2~1_combout\ = (!\inst7|Selector3~2_combout\ & ((\inst7|Selector0~0_combout\ & (\inst7|Equal2~0_combout\)) # (!\inst7|Selector0~0_combout\ & ((\inst7|Selector2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector0~0_combout\,
	datab => \inst7|Equal2~0_combout\,
	datac => \inst7|Selector2~0_combout\,
	datad => \inst7|Selector3~2_combout\,
	combout => \inst7|Selector2~1_combout\);

-- Location: LCFF_X62_Y23_N9
\inst7|r_state.check_functioncode\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|r_state.check_functioncode~regout\);

-- Location: LCCOMB_X61_Y24_N6
\inst7|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector18~0_combout\ = (\inst7|f_state.manchester_converting~regout\ & (\inst7|functioncode_counter\(0) $ (((\inst7|manchester_counter~regout\ & \inst7|r_state.check_functioncode~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|functioncode_counter\(0),
	datab => \inst7|manchester_counter~regout\,
	datac => \inst7|f_state.manchester_converting~regout\,
	datad => \inst7|r_state.check_functioncode~regout\,
	combout => \inst7|Selector18~0_combout\);

-- Location: LCCOMB_X61_Y24_N26
\inst7|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector18~1_combout\ = (\inst7|Selector18~0_combout\) # ((\inst7|f_state.respond~regout\ & \inst7|functioncode_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|f_state.respond~regout\,
	datac => \inst7|functioncode_counter\(0),
	datad => \inst7|Selector18~0_combout\,
	combout => \inst7|Selector18~1_combout\);

-- Location: LCFF_X61_Y24_N27
\inst7|functioncode_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|functioncode_counter\(0));

-- Location: LCCOMB_X61_Y24_N10
\inst7|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector3~2_combout\ = (\inst7|r_state.check_functioncode~regout\ & (!\inst7|functioncode_counter\(1) & (\inst7|functioncode_counter\(2) & !\inst7|functioncode_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|r_state.check_functioncode~regout\,
	datab => \inst7|functioncode_counter\(1),
	datac => \inst7|functioncode_counter\(2),
	datad => \inst7|functioncode_counter\(0),
	combout => \inst7|Selector3~2_combout\);

-- Location: LCCOMB_X61_Y24_N30
\inst7|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector26~0_combout\ = (\inst7|m_f_bit3~regout\ & ((\inst7|Selector17~0_combout\) # ((\inst7|Selector16~0_combout\ & \inst7|m_f_bit4~regout\)))) # (!\inst7|m_f_bit3~regout\ & (\inst7|Selector16~0_combout\ & (\inst7|m_f_bit4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|m_f_bit3~regout\,
	datab => \inst7|Selector16~0_combout\,
	datac => \inst7|m_f_bit4~regout\,
	datad => \inst7|Selector17~0_combout\,
	combout => \inst7|Selector26~0_combout\);

-- Location: LCFF_X61_Y24_N31
\inst7|m_f_bit4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|m_f_bit4~regout\);

-- Location: LCCOMB_X61_Y24_N14
\inst7|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector28~0_combout\ = (\inst7|m_f_bit1~regout\ & ((\inst7|Selector17~0_combout\) # ((\inst7|Selector16~0_combout\ & \inst7|m_f_bit2~regout\)))) # (!\inst7|m_f_bit1~regout\ & (\inst7|Selector16~0_combout\ & (\inst7|m_f_bit2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|m_f_bit1~regout\,
	datab => \inst7|Selector16~0_combout\,
	datac => \inst7|m_f_bit2~regout\,
	datad => \inst7|Selector17~0_combout\,
	combout => \inst7|Selector28~0_combout\);

-- Location: LCFF_X61_Y24_N15
\inst7|m_f_bit2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|m_f_bit2~regout\);

-- Location: LCCOMB_X61_Y24_N12
\inst7|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector29~0_combout\ = (\inst7|manchester_bit~0_combout\ & ((\inst7|Selector17~0_combout\) # ((\inst7|Selector16~0_combout\ & \inst7|m_f_bit1~regout\)))) # (!\inst7|manchester_bit~0_combout\ & (\inst7|Selector16~0_combout\ & 
-- (\inst7|m_f_bit1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|manchester_bit~0_combout\,
	datab => \inst7|Selector16~0_combout\,
	datac => \inst7|m_f_bit1~regout\,
	datad => \inst7|Selector17~0_combout\,
	combout => \inst7|Selector29~0_combout\);

-- Location: LCFF_X61_Y24_N13
\inst7|m_f_bit1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|m_f_bit1~regout\);

-- Location: LCCOMB_X61_Y24_N18
\inst7|Respond_Data[17]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Respond_Data[17]~0_combout\ = (!\inst7|m_f_bit3~regout\ & (!\inst7|m_f_bit4~regout\ & (\inst7|m_f_bit2~regout\ $ (\inst7|m_f_bit1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|m_f_bit3~regout\,
	datab => \inst7|m_f_bit4~regout\,
	datac => \inst7|m_f_bit2~regout\,
	datad => \inst7|m_f_bit1~regout\,
	combout => \inst7|Respond_Data[17]~0_combout\);

-- Location: LCCOMB_X64_Y23_N10
\inst7|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector0~0_combout\ = (\inst7|address_counter\(2) & (\inst7|r_state.check_address~regout\ & (!\inst7|address_counter\(1) & !\inst7|address_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|address_counter\(2),
	datab => \inst7|r_state.check_address~regout\,
	datac => \inst7|address_counter\(1),
	datad => \inst7|address_counter\(0),
	combout => \inst7|Selector0~0_combout\);

-- Location: LCCOMB_X63_Y23_N26
\inst7|Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector3~5_combout\ = (\inst7|respond_flag~regout\) # ((\inst7|Selector0~0_combout\ & !\inst7|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_flag~regout\,
	datac => \inst7|Selector0~0_combout\,
	datad => \inst7|Equal2~0_combout\,
	combout => \inst7|Selector3~5_combout\);

-- Location: LCCOMB_X61_Y24_N22
\inst7|Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add3~1_combout\ = \inst7|respond_counter\(2) $ (((\inst7|respond_counter\(1) & \inst7|respond_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(1),
	datac => \inst7|respond_counter\(2),
	datad => \inst7|respond_counter\(0),
	combout => \inst7|Add3~1_combout\);

-- Location: LCFF_X61_Y24_N23
\inst7|respond_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Add3~1_combout\,
	ena => \inst7|f_state.respond~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|respond_counter\(2));

-- Location: LCCOMB_X62_Y24_N24
\inst7|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal8~0_combout\ = (!\inst7|respond_counter\(3) & (\inst7|respond_counter\(1) & (\inst7|respond_counter\(0) & \inst7|respond_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(3),
	datab => \inst7|respond_counter\(1),
	datac => \inst7|respond_counter\(0),
	datad => \inst7|respond_counter\(2),
	combout => \inst7|Equal8~0_combout\);

-- Location: LCCOMB_X62_Y24_N2
\inst7|respond_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|respond_counter~0_combout\ = (\inst7|respond_counter\(4) & (!\inst7|Equal8~0_combout\ & (\inst7|Add3~2_combout\ $ (\inst7|respond_counter\(3))))) # (!\inst7|respond_counter\(4) & (\inst7|Add3~2_combout\ $ (((\inst7|respond_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(4),
	datab => \inst7|Add3~2_combout\,
	datac => \inst7|Equal8~0_combout\,
	datad => \inst7|respond_counter\(3),
	combout => \inst7|respond_counter~0_combout\);

-- Location: LCFF_X64_Y24_N9
\inst7|respond_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	sdata => \inst7|respond_counter~0_combout\,
	sload => VCC,
	ena => \inst7|f_state.respond~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|respond_counter\(3));

-- Location: LCCOMB_X62_Y24_N16
\inst7|Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal8~1_combout\ = (\inst7|Equal8~0_combout\ & (\inst7|respond_counter\(4) $ (((\inst7|Add3~2_combout\ & \inst7|respond_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(4),
	datab => \inst7|Add3~2_combout\,
	datac => \inst7|Equal8~0_combout\,
	datad => \inst7|respond_counter\(3),
	combout => \inst7|Equal8~1_combout\);

-- Location: LCCOMB_X64_Y23_N4
\inst7|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector15~0_combout\ = (\inst7|f_state.respond~regout\ & (((\inst7|respond_flag~regout\) # (\inst7|Equal8~1_combout\)))) # (!\inst7|f_state.respond~regout\ & (\inst7|f_state.manchester_converting~regout\ & (\inst7|respond_flag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.manchester_converting~regout\,
	datab => \inst7|f_state.respond~regout\,
	datac => \inst7|respond_flag~regout\,
	datad => \inst7|Equal8~1_combout\,
	combout => \inst7|Selector15~0_combout\);

-- Location: LCFF_X64_Y23_N5
\inst7|respond_flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|respond_flag~regout\);

-- Location: LCCOMB_X62_Y23_N6
\inst7|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector3~4_combout\ = (!\inst7|r_state.idle~regout\ & ((\inst7|respond_flag~regout\) # ((!\inst7|Equal0~0_combout\ & !\inst7|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|r_state.idle~regout\,
	datab => \inst7|Equal0~0_combout\,
	datac => \inst7|respond_flag~regout\,
	datad => \inst7|Equal0~1_combout\,
	combout => \inst7|Selector3~4_combout\);

-- Location: LCCOMB_X62_Y23_N2
\inst7|Selector3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector3~6_combout\ = (\inst7|Selector3~4_combout\ & (((!\inst7|Selector3~5_combout\)))) # (!\inst7|Selector3~4_combout\ & (\inst7|f_state.idle~regout\ & (\inst7|Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.idle~regout\,
	datab => \inst7|Selector3~3_combout\,
	datac => \inst7|Selector3~5_combout\,
	datad => \inst7|Selector3~4_combout\,
	combout => \inst7|Selector3~6_combout\);

-- Location: LCCOMB_X62_Y23_N28
\inst7|Selector3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector3~7_combout\ = (\inst7|Selector3~2_combout\ & (\inst7|Respond_Data[17]~0_combout\)) # (!\inst7|Selector3~2_combout\ & ((\inst7|Selector3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Selector3~2_combout\,
	datac => \inst7|Respond_Data[17]~0_combout\,
	datad => \inst7|Selector3~6_combout\,
	combout => \inst7|Selector3~7_combout\);

-- Location: LCFF_X62_Y23_N29
\inst7|f_state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|Selector3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|f_state.idle~regout\);

-- Location: LCCOMB_X62_Y23_N30
\inst7|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector8~0_combout\ = (\inst7|start_bit5~regout\ & (((\inst7|f_state.respond~regout\ & \inst7|start_bit6~regout\)) # (!\inst7|f_state.idle~regout\))) # (!\inst7|start_bit5~regout\ & (\inst7|f_state.respond~regout\ & (\inst7|start_bit6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|start_bit5~regout\,
	datab => \inst7|f_state.respond~regout\,
	datac => \inst7|start_bit6~regout\,
	datad => \inst7|f_state.idle~regout\,
	combout => \inst7|Selector8~0_combout\);

-- Location: LCFF_X62_Y23_N31
\inst7|start_bit6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|start_bit6~regout\);

-- Location: LCCOMB_X62_Y23_N4
\inst7|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector10~0_combout\ = (\inst7|start_bit3~regout\ & (((\inst7|f_state.respond~regout\ & \inst7|start_bit4~regout\)) # (!\inst7|f_state.idle~regout\))) # (!\inst7|start_bit3~regout\ & (\inst7|f_state.respond~regout\ & (\inst7|start_bit4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|start_bit3~regout\,
	datab => \inst7|f_state.respond~regout\,
	datac => \inst7|start_bit4~regout\,
	datad => \inst7|f_state.idle~regout\,
	combout => \inst7|Selector10~0_combout\);

-- Location: LCFF_X62_Y23_N5
\inst7|start_bit4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|start_bit4~regout\);

-- Location: LCCOMB_X62_Y23_N10
\inst7|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector9~0_combout\ = (\inst7|f_state.respond~regout\ & ((\inst7|start_bit5~regout\) # ((\inst7|start_bit4~regout\ & !\inst7|f_state.idle~regout\)))) # (!\inst7|f_state.respond~regout\ & (\inst7|start_bit4~regout\ & 
-- ((!\inst7|f_state.idle~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.respond~regout\,
	datab => \inst7|start_bit4~regout\,
	datac => \inst7|start_bit5~regout\,
	datad => \inst7|f_state.idle~regout\,
	combout => \inst7|Selector9~0_combout\);

-- Location: LCFF_X62_Y23_N11
\inst7|start_bit5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|start_bit5~regout\);

-- Location: LCCOMB_X62_Y23_N18
\inst7|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (\inst7|start_bit3~regout\) # (((\inst7|start_bit5~regout\) # (!\inst7|start_bit4~regout\)) # (!\inst7|start_bit6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|start_bit3~regout\,
	datab => \inst7|start_bit6~regout\,
	datac => \inst7|start_bit4~regout\,
	datad => \inst7|start_bit5~regout\,
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X63_Y23_N4
\inst7|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector4~4_combout\ = (!\inst7|r_state.check_functioncode~regout\ & (!\inst7|respond_flag~regout\ & !\inst7|r_state.check_address~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|r_state.check_functioncode~regout\,
	datac => \inst7|respond_flag~regout\,
	datad => \inst7|r_state.check_address~regout\,
	combout => \inst7|Selector4~4_combout\);

-- Location: LCCOMB_X61_Y24_N16
\inst7|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector4~0_combout\ = (\inst7|r_state.check_functioncode~regout\ & ((\inst7|functioncode_counter\(1)) # ((\inst7|functioncode_counter\(0)) # (!\inst7|functioncode_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|r_state.check_functioncode~regout\,
	datab => \inst7|functioncode_counter\(1),
	datac => \inst7|functioncode_counter\(2),
	datad => \inst7|functioncode_counter\(0),
	combout => \inst7|Selector4~0_combout\);

-- Location: LCCOMB_X63_Y23_N2
\inst7|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector4~1_combout\ = (\inst7|address_counter\(0)) # (((\inst7|address_counter\(1)) # (\inst7|Equal2~0_combout\)) # (!\inst7|address_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|address_counter\(0),
	datab => \inst7|address_counter\(2),
	datac => \inst7|address_counter\(1),
	datad => \inst7|Equal2~0_combout\,
	combout => \inst7|Selector4~1_combout\);

-- Location: LCCOMB_X63_Y23_N28
\inst7|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector4~2_combout\ = (!\inst7|r_state.check_functioncode~regout\ & ((\inst7|r_state.check_address~regout\ & ((\inst7|Selector4~1_combout\))) # (!\inst7|r_state.check_address~regout\ & (!\inst7|respond_flag~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|r_state.check_functioncode~regout\,
	datab => \inst7|r_state.check_address~regout\,
	datac => \inst7|respond_flag~regout\,
	datad => \inst7|Selector4~1_combout\,
	combout => \inst7|Selector4~2_combout\);

-- Location: LCCOMB_X63_Y23_N6
\inst7|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector4~3_combout\ = (\inst7|f_state.manchester_converting~regout\ & (\inst7|Selector1~3_combout\ & ((\inst7|Selector4~0_combout\) # (\inst7|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.manchester_converting~regout\,
	datab => \inst7|Selector1~3_combout\,
	datac => \inst7|Selector4~0_combout\,
	datad => \inst7|Selector4~2_combout\,
	combout => \inst7|Selector4~3_combout\);

-- Location: LCCOMB_X63_Y23_N12
\inst7|Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector4~5_combout\ = (\inst7|Selector4~3_combout\) # ((!\inst7|Equal0~1_combout\ & (!\inst7|Equal0~0_combout\ & \inst7|Selector4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~1_combout\,
	datab => \inst7|Equal0~0_combout\,
	datac => \inst7|Selector4~4_combout\,
	datad => \inst7|Selector4~3_combout\,
	combout => \inst7|Selector4~5_combout\);

-- Location: LCFF_X63_Y23_N13
\inst7|f_state.manchester_converting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|Selector4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|f_state.manchester_converting~regout\);

-- Location: LCCOMB_X63_Y23_N20
\inst7|manchester_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|manchester_counter~0_combout\ = \inst7|manchester_counter~regout\ $ (\inst7|f_state.manchester_converting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|manchester_counter~regout\,
	datad => \inst7|f_state.manchester_converting~regout\,
	combout => \inst7|manchester_counter~0_combout\);

-- Location: LCFF_X64_Y24_N19
\inst7|manchester_counter\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	sdata => \inst7|manchester_counter~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|manchester_counter~regout\);

-- Location: LCCOMB_X64_Y23_N18
\inst7|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector14~0_combout\ = (\inst7|manchester_counter~regout\ & (\inst7|f_state.manchester_converting~regout\ & (\inst7|m1~regout\ $ (!\DIN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|m1~regout\,
	datab => \inst7|manchester_counter~regout\,
	datac => \DIN~combout\,
	datad => \inst7|f_state.manchester_converting~regout\,
	combout => \inst7|Selector14~0_combout\);

-- Location: LCCOMB_X64_Y23_N14
\inst7|Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector14~1_combout\ = (\inst7|Selector14~0_combout\) # ((\inst7|fault~regout\ & ((\inst7|f_state.manchester_converting~regout\) # (\inst7|f_state.respond~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.manchester_converting~regout\,
	datab => \inst7|f_state.respond~regout\,
	datac => \inst7|fault~regout\,
	datad => \inst7|Selector14~0_combout\,
	combout => \inst7|Selector14~1_combout\);

-- Location: LCFF_X64_Y23_N15
\inst7|fault\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|fault~regout\);

-- Location: LCCOMB_X63_Y23_N8
\inst7|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector3~3_combout\ = (\Reset_comm~combout\ & (!\inst7|fault~regout\ & ((\inst7|Equal2~0_combout\) # (!\inst7|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_comm~combout\,
	datab => \inst7|fault~regout\,
	datac => \inst7|Selector0~0_combout\,
	datad => \inst7|Equal2~0_combout\,
	combout => \inst7|Selector3~3_combout\);

-- Location: LCCOMB_X62_Y23_N24
\inst7|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector5~0_combout\ = (\inst7|f_state.respond~regout\ & !\inst7|Selector3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|f_state.respond~regout\,
	datad => \inst7|Selector3~2_combout\,
	combout => \inst7|Selector5~0_combout\);

-- Location: LCCOMB_X61_Y21_N14
\inst7|Respond_Data[17]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Respond_Data[17]~1_combout\ = (\inst7|Respond_Data[17]~0_combout\ & \inst7|Selector3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Respond_Data[17]~0_combout\,
	datad => \inst7|Selector3~2_combout\,
	combout => \inst7|Respond_Data[17]~1_combout\);

-- Location: LCCOMB_X62_Y23_N26
\inst7|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector5~1_combout\ = (\inst7|Respond_Data[17]~1_combout\) # ((!\inst7|Selector3~4_combout\ & (\inst7|Selector3~3_combout\ & \inst7|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector3~4_combout\,
	datab => \inst7|Selector3~3_combout\,
	datac => \inst7|Selector5~0_combout\,
	datad => \inst7|Respond_Data[17]~1_combout\,
	combout => \inst7|Selector5~1_combout\);

-- Location: LCFF_X62_Y23_N27
\inst7|f_state.respond\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|f_state.respond~regout\);

-- Location: LCFF_X64_Y24_N3
\inst7|respond_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	sdata => \inst7|respond_counter[0]~2_combout\,
	sload => VCC,
	ena => \inst7|f_state.respond~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|respond_counter\(0));

-- Location: LCCOMB_X61_Y24_N8
\inst7|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add3~0_combout\ = \inst7|respond_counter\(1) $ (\inst7|respond_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|respond_counter\(1),
	datad => \inst7|respond_counter\(0),
	combout => \inst7|Add3~0_combout\);

-- Location: LCFF_X61_Y24_N9
\inst7|respond_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Add3~0_combout\,
	ena => \inst7|f_state.respond~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|respond_counter\(1));

-- Location: LCCOMB_X62_Y24_N18
\inst7|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add3~2_combout\ = (\inst7|respond_counter\(1) & (\inst7|respond_counter\(0) & \inst7|respond_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|respond_counter\(1),
	datac => \inst7|respond_counter\(0),
	datad => \inst7|respond_counter\(2),
	combout => \inst7|Add3~2_combout\);

-- Location: LCCOMB_X62_Y24_N20
\inst7|respond_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|respond_counter~1_combout\ = (!\inst7|Equal8~0_combout\ & (\inst7|respond_counter\(4) $ (((\inst7|Add3~2_combout\ & \inst7|respond_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(4),
	datab => \inst7|Add3~2_combout\,
	datac => \inst7|Equal8~0_combout\,
	datad => \inst7|respond_counter\(3),
	combout => \inst7|respond_counter~1_combout\);

-- Location: LCFF_X64_Y24_N11
\inst7|respond_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	sdata => \inst7|respond_counter~1_combout\,
	sload => VCC,
	ena => \inst7|f_state.respond~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|respond_counter\(4));

-- Location: LCCOMB_X61_Y24_N20
\inst7|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector27~0_combout\ = (\inst7|m_f_bit2~regout\ & ((\inst7|Selector17~0_combout\) # ((\inst7|Selector16~0_combout\ & \inst7|m_f_bit3~regout\)))) # (!\inst7|m_f_bit2~regout\ & (\inst7|Selector16~0_combout\ & (\inst7|m_f_bit3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|m_f_bit2~regout\,
	datab => \inst7|Selector16~0_combout\,
	datac => \inst7|m_f_bit3~regout\,
	datad => \inst7|Selector17~0_combout\,
	combout => \inst7|Selector27~0_combout\);

-- Location: LCFF_X61_Y24_N21
\inst7|m_f_bit3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|m_f_bit3~regout\);

-- Location: LCCOMB_X61_Y24_N28
\inst7|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal4~0_combout\ = ((\inst7|m_f_bit2~regout\) # ((\inst7|m_f_bit3~regout\) # (\inst7|m_f_bit4~regout\))) # (!\inst7|m_f_bit1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|m_f_bit1~regout\,
	datab => \inst7|m_f_bit2~regout\,
	datac => \inst7|m_f_bit3~regout\,
	datad => \inst7|m_f_bit4~regout\,
	combout => \inst7|Equal4~0_combout\);

-- Location: LCFF_X61_Y21_N17
\inst7|Respond_Data[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	sdata => \inst7|Equal4~0_combout\,
	sload => VCC,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(17));

-- Location: LCCOMB_X61_Y21_N16
\inst7|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector30~0_combout\ = (\inst7|respond_counter\(1) & (\inst7|respond_counter\(0) $ (((\inst7|respond_counter\(2) & \inst7|Respond_Data\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(1),
	datab => \inst7|respond_counter\(2),
	datac => \inst7|Respond_Data\(17),
	datad => \inst7|respond_counter\(0),
	combout => \inst7|Selector30~0_combout\);

-- Location: LCCOMB_X62_Y21_N2
\inst7|Selector30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector30~1_combout\ = (!\inst7|respond_counter\(3) & (!\inst7|respond_counter\(4) & (\inst7|f_state.respond~regout\ & \inst7|Selector30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(3),
	datab => \inst7|respond_counter\(4),
	datac => \inst7|f_state.respond~regout\,
	datad => \inst7|Selector30~0_combout\,
	combout => \inst7|Selector30~1_combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(3),
	combout => \In_switches~combout\(3));

-- Location: LCCOMB_X62_Y21_N8
\inst7|Respond_Data[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Respond_Data[3]~feeder_combout\ = \In_switches~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \In_switches~combout\(3),
	combout => \inst7|Respond_Data[3]~feeder_combout\);

-- Location: LCFF_X62_Y21_N9
\inst7|Respond_Data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|Respond_Data[3]~feeder_combout\,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(3));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(1),
	combout => \In_switches~combout\(1));

-- Location: LCFF_X62_Y21_N15
\inst7|Respond_Data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	sdata => \In_switches~combout\(1),
	sload => VCC,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(1));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(7),
	combout => \In_switches~combout\(7));

-- Location: LCFF_X62_Y21_N29
\inst7|Respond_Data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	sdata => \In_switches~combout\(7),
	sload => VCC,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(7));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(5),
	combout => \In_switches~combout\(5));

-- Location: LCCOMB_X62_Y21_N18
\inst7|Respond_Data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Respond_Data[5]~feeder_combout\ = \In_switches~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \In_switches~combout\(5),
	combout => \inst7|Respond_Data[5]~feeder_combout\);

-- Location: LCFF_X62_Y21_N19
\inst7|Respond_Data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|Respond_Data[5]~feeder_combout\,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(5));

-- Location: LCCOMB_X62_Y21_N28
\inst7|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~4_combout\ = (\inst7|respond_counter\(2) & (\inst7|respond_counter\(1))) # (!\inst7|respond_counter\(2) & ((\inst7|respond_counter\(1) & ((\inst7|Respond_Data\(5)))) # (!\inst7|respond_counter\(1) & (\inst7|Respond_Data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(2),
	datab => \inst7|respond_counter\(1),
	datac => \inst7|Respond_Data\(7),
	datad => \inst7|Respond_Data\(5),
	combout => \inst7|Mux0~4_combout\);

-- Location: LCCOMB_X62_Y21_N14
\inst7|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~5_combout\ = (\inst7|respond_counter\(2) & ((\inst7|Mux0~4_combout\ & ((\inst7|Respond_Data\(1)))) # (!\inst7|Mux0~4_combout\ & (\inst7|Respond_Data\(3))))) # (!\inst7|respond_counter\(2) & (((\inst7|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(2),
	datab => \inst7|Respond_Data\(3),
	datac => \inst7|Respond_Data\(1),
	datad => \inst7|Mux0~4_combout\,
	combout => \inst7|Mux0~5_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(2),
	combout => \In_switches~combout\(2));

-- Location: LCCOMB_X62_Y21_N4
\inst7|Respond_Data[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Respond_Data[2]~feeder_combout\ = \In_switches~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \In_switches~combout\(2),
	combout => \inst7|Respond_Data[2]~feeder_combout\);

-- Location: LCFF_X62_Y21_N5
\inst7|Respond_Data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|Respond_Data[2]~feeder_combout\,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(2));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(0),
	combout => \In_switches~combout\(0));

-- Location: LCFF_X62_Y21_N11
\inst7|Respond_Data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	sdata => \In_switches~combout\(0),
	sload => VCC,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(0));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(6),
	combout => \In_switches~combout\(6));

-- Location: LCFF_X62_Y21_N1
\inst7|Respond_Data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	sdata => \In_switches~combout\(6),
	sload => VCC,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(6));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(4),
	combout => \In_switches~combout\(4));

-- Location: LCCOMB_X62_Y21_N30
\inst7|Respond_Data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Respond_Data[4]~feeder_combout\ = \In_switches~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \In_switches~combout\(4),
	combout => \inst7|Respond_Data[4]~feeder_combout\);

-- Location: LCFF_X62_Y21_N31
\inst7|Respond_Data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|Respond_Data[4]~feeder_combout\,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(4));

-- Location: LCCOMB_X62_Y21_N0
\inst7|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~2_combout\ = (\inst7|respond_counter\(2) & (\inst7|respond_counter\(1))) # (!\inst7|respond_counter\(2) & ((\inst7|respond_counter\(1) & ((\inst7|Respond_Data\(4)))) # (!\inst7|respond_counter\(1) & (\inst7|Respond_Data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(2),
	datab => \inst7|respond_counter\(1),
	datac => \inst7|Respond_Data\(6),
	datad => \inst7|Respond_Data\(4),
	combout => \inst7|Mux0~2_combout\);

-- Location: LCCOMB_X62_Y21_N10
\inst7|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~3_combout\ = (\inst7|respond_counter\(2) & ((\inst7|Mux0~2_combout\ & ((\inst7|Respond_Data\(0)))) # (!\inst7|Mux0~2_combout\ & (\inst7|Respond_Data\(2))))) # (!\inst7|respond_counter\(2) & (((\inst7|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(2),
	datab => \inst7|Respond_Data\(2),
	datac => \inst7|Respond_Data\(0),
	datad => \inst7|Mux0~2_combout\,
	combout => \inst7|Mux0~3_combout\);

-- Location: LCCOMB_X62_Y21_N16
\inst7|Selector30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector30~6_combout\ = (\inst7|respond_counter\(0) & ((\inst7|Mux0~3_combout\))) # (!\inst7|respond_counter\(0) & (\inst7|Mux0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|respond_counter\(0),
	datac => \inst7|Mux0~5_combout\,
	datad => \inst7|Mux0~3_combout\,
	combout => \inst7|Selector30~6_combout\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(13),
	combout => \In_switches~combout\(13));

-- Location: LCFF_X61_Y21_N23
\inst7|Respond_Data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	sdata => \In_switches~combout\(13),
	sload => VCC,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(13));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(9),
	combout => \In_switches~combout\(9));

-- Location: LCFF_X61_Y21_N1
\inst7|Respond_Data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	sdata => \In_switches~combout\(9),
	sload => VCC,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(9));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(15),
	combout => \In_switches~combout\(15));

-- Location: LCFF_X61_Y21_N3
\inst7|Respond_Data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	sdata => \In_switches~combout\(15),
	sload => VCC,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(15));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(11),
	combout => \In_switches~combout\(11));

-- Location: LCCOMB_X61_Y21_N12
\inst7|Respond_Data[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Respond_Data[11]~feeder_combout\ = \In_switches~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \In_switches~combout\(11),
	combout => \inst7|Respond_Data[11]~feeder_combout\);

-- Location: LCFF_X61_Y21_N13
\inst7|Respond_Data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|Respond_Data[11]~feeder_combout\,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(11));

-- Location: LCCOMB_X61_Y21_N2
\inst7|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~1_combout\ = (\inst7|respond_counter\(1) & (\inst7|respond_counter\(2))) # (!\inst7|respond_counter\(1) & ((\inst7|respond_counter\(2) & ((\inst7|Respond_Data\(11)))) # (!\inst7|respond_counter\(2) & (\inst7|Respond_Data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(1),
	datab => \inst7|respond_counter\(2),
	datac => \inst7|Respond_Data\(15),
	datad => \inst7|Respond_Data\(11),
	combout => \inst7|Mux0~1_combout\);

-- Location: LCCOMB_X61_Y21_N0
\inst7|Selector30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector30~4_combout\ = (\inst7|respond_counter\(1) & ((\inst7|Mux0~1_combout\ & ((\inst7|Respond_Data\(9)))) # (!\inst7|Mux0~1_combout\ & (\inst7|Respond_Data\(13))))) # (!\inst7|respond_counter\(1) & (((\inst7|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(1),
	datab => \inst7|Respond_Data\(13),
	datac => \inst7|Respond_Data\(9),
	datad => \inst7|Mux0~1_combout\,
	combout => \inst7|Selector30~4_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(12),
	combout => \In_switches~combout\(12));

-- Location: LCFF_X62_Y21_N7
\inst7|Respond_Data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	sdata => \In_switches~combout\(12),
	sload => VCC,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(12));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(14),
	combout => \In_switches~combout\(14));

-- Location: LCFF_X61_Y21_N25
\inst7|Respond_Data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	sdata => \In_switches~combout\(14),
	sload => VCC,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(14));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\In_switches[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_In_switches(10),
	combout => \In_switches~combout\(10));

-- Location: LCCOMB_X61_Y21_N18
\inst7|Respond_Data[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Respond_Data[10]~feeder_combout\ = \In_switches~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \In_switches~combout\(10),
	combout => \inst7|Respond_Data[10]~feeder_combout\);

-- Location: LCFF_X61_Y21_N19
\inst7|Respond_Data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|Respond_Data[10]~feeder_combout\,
	ena => \inst7|Respond_Data[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Respond_Data\(10));

-- Location: LCCOMB_X61_Y21_N24
\inst7|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst7|respond_counter\(1) & (\inst7|respond_counter\(2))) # (!\inst7|respond_counter\(1) & ((\inst7|respond_counter\(2) & ((\inst7|Respond_Data\(10)))) # (!\inst7|respond_counter\(2) & (\inst7|Respond_Data\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|respond_counter\(1),
	datab => \inst7|respond_counter\(2),
	datac => \inst7|Respond_Data\(14),
	datad => \inst7|Respond_Data\(10),
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y21_N6
\inst7|Selector30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector30~3_combout\ = (\inst7|respond_counter\(1) & ((\inst7|Mux0~0_combout\ & (\inst7|Respond_Data\(8))) # (!\inst7|Mux0~0_combout\ & ((\inst7|Respond_Data\(12)))))) # (!\inst7|respond_counter\(1) & (((\inst7|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Respond_Data\(8),
	datab => \inst7|respond_counter\(1),
	datac => \inst7|Respond_Data\(12),
	datad => \inst7|Mux0~0_combout\,
	combout => \inst7|Selector30~3_combout\);

-- Location: LCCOMB_X62_Y21_N26
\inst7|Selector30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector30~5_combout\ = (\inst7|respond_counter\(0) & ((\inst7|Selector30~3_combout\))) # (!\inst7|respond_counter\(0) & (\inst7|Selector30~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|respond_counter\(0),
	datac => \inst7|Selector30~4_combout\,
	datad => \inst7|Selector30~3_combout\,
	combout => \inst7|Selector30~5_combout\);

-- Location: LCCOMB_X62_Y21_N22
\inst7|Selector30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector30~7_combout\ = (\inst7|Selector30~2_combout\ & ((\inst7|respond_counter\(4) & (\inst7|Selector30~6_combout\)) # (!\inst7|respond_counter\(4) & ((\inst7|Selector30~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector30~2_combout\,
	datab => \inst7|respond_counter\(4),
	datac => \inst7|Selector30~6_combout\,
	datad => \inst7|Selector30~5_combout\,
	combout => \inst7|Selector30~7_combout\);

-- Location: LCCOMB_X62_Y21_N12
\inst7|Selector30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector30~8_combout\ = (\inst7|Selector30~1_combout\) # ((\inst7|Selector30~7_combout\) # ((\inst7|f_state.manchester_converting~regout\ & \inst7|output_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|f_state.manchester_converting~regout\,
	datab => \inst7|Selector30~1_combout\,
	datac => \inst7|output_data~regout\,
	datad => \inst7|Selector30~7_combout\,
	combout => \inst7|Selector30~8_combout\);

-- Location: LCFF_X62_Y21_N13
\inst7|output_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst7|Selector30~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|output_data~regout\);

-- Location: LCCOMB_X64_Y24_N22
\inst1|wait_counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|wait_counter~8_combout\ = (\inst1|Add0~2_combout\ & !\inst1|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~2_combout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|wait_counter~8_combout\);

-- Location: LCFF_X64_Y24_N23
\inst1|wait_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|wait_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|wait_counter\(1));

-- Location: LCCOMB_X64_Y24_N2
\inst1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = (((\Reset_ADC_comm~combout\ & \inst1|wait_counter\(0))))
-- \inst1|Add0~1\ = CARRY((\Reset_ADC_comm~combout\ & \inst1|wait_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_ADC_comm~combout\,
	datab => \inst1|wait_counter\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X64_Y24_N0
\inst1|wait_counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|wait_counter~9_combout\ = (\inst1|Add0~0_combout\ & !\inst1|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~0_combout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|wait_counter~9_combout\);

-- Location: LCFF_X64_Y24_N1
\inst1|wait_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|wait_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|wait_counter\(0));

-- Location: LCCOMB_X64_Y24_N4
\inst1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|Add0~1\ & (((!\inst1|wait_counter\(1))) # (!\Reset_ADC_comm~combout\))) # (!\inst1|Add0~1\ & (((\Reset_ADC_comm~combout\ & \inst1|wait_counter\(1))) # (GND)))
-- \inst1|Add0~3\ = CARRY(((!\inst1|Add0~1\) # (!\inst1|wait_counter\(1))) # (!\Reset_ADC_comm~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_ADC_comm~combout\,
	datab => \inst1|wait_counter\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X63_Y24_N22
\inst1|wait_counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|wait_counter~6_combout\ = (\inst1|Add0~6_combout\ & !\inst1|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~6_combout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|wait_counter~6_combout\);

-- Location: LCFF_X63_Y24_N23
\inst1|wait_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|wait_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|wait_counter\(3));

-- Location: LCCOMB_X63_Y24_N16
\inst1|wait_counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|wait_counter~7_combout\ = (\inst1|Add0~4_combout\ & !\inst1|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|wait_counter~7_combout\);

-- Location: LCFF_X63_Y24_N17
\inst1|wait_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|wait_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|wait_counter\(2));

-- Location: LCCOMB_X64_Y24_N8
\inst1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|Add0~5\ & (((!\inst1|wait_counter\(3))) # (!\Reset_ADC_comm~combout\))) # (!\inst1|Add0~5\ & (((\Reset_ADC_comm~combout\ & \inst1|wait_counter\(3))) # (GND)))
-- \inst1|Add0~7\ = CARRY(((!\inst1|Add0~5\) # (!\inst1|wait_counter\(3))) # (!\Reset_ADC_comm~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_ADC_comm~combout\,
	datab => \inst1|wait_counter\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X64_Y24_N28
\inst1|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (\inst1|Add0~4_combout\ & (\inst1|Add0~6_combout\ & ((\inst1|Add0~2_combout\) # (\inst1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datab => \inst1|Add0~2_combout\,
	datac => \inst1|Add0~6_combout\,
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|LessThan0~2_combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_ADC_comm~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset_ADC_comm,
	combout => \Reset_ADC_comm~combout\);

-- Location: LCCOMB_X64_Y24_N12
\inst1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|Add0~9\ & (((!\Reset_ADC_comm~combout\)) # (!\inst1|wait_counter\(5)))) # (!\inst1|Add0~9\ & (((\inst1|wait_counter\(5) & \Reset_ADC_comm~combout\)) # (GND)))
-- \inst1|Add0~11\ = CARRY(((!\inst1|Add0~9\) # (!\Reset_ADC_comm~combout\)) # (!\inst1|wait_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wait_counter\(5),
	datab => \Reset_ADC_comm~combout\,
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X64_Y24_N18
\inst1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|Add0~15\ & (\inst1|wait_counter\(8) & (\Reset_ADC_comm~combout\ & VCC))) # (!\inst1|Add0~15\ & ((((\inst1|wait_counter\(8) & \Reset_ADC_comm~combout\)))))
-- \inst1|Add0~17\ = CARRY((\inst1|wait_counter\(8) & (\Reset_ADC_comm~combout\ & !\inst1|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wait_counter\(8),
	datab => \Reset_ADC_comm~combout\,
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X64_Y24_N20
\inst1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = \inst1|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\);

-- Location: LCCOMB_X64_Y24_N26
\inst1|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\inst1|Add0~18_combout\) # ((\inst1|Add0~16_combout\ & ((\inst1|Add0~14_combout\) # (\inst1|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~14_combout\,
	datab => \inst1|Add0~12_combout\,
	datac => \inst1|Add0~18_combout\,
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y24_N24
\inst1|wait_counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|wait_counter~10_combout\ = (\inst1|Add0~8_combout\ & (!\inst1|LessThan0~0_combout\ & ((!\inst1|Add0~16_combout\) # (!\inst1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~8_combout\,
	datab => \inst1|Add0~10_combout\,
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|wait_counter~10_combout\);

-- Location: LCFF_X63_Y24_N25
\inst1|wait_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|wait_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|wait_counter\(4));

-- Location: LCCOMB_X64_Y24_N14
\inst1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|Add0~11\ & (\Reset_ADC_comm~combout\ & (\inst1|wait_counter\(6) & VCC))) # (!\inst1|Add0~11\ & ((((\Reset_ADC_comm~combout\ & \inst1|wait_counter\(6))))))
-- \inst1|Add0~13\ = CARRY((\Reset_ADC_comm~combout\ & (\inst1|wait_counter\(6) & !\inst1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_ADC_comm~combout\,
	datab => \inst1|wait_counter\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X63_Y24_N28
\inst1|wait_counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|wait_counter~4_combout\ = (\inst1|Add0~12_combout\ & !\inst1|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~12_combout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|wait_counter~4_combout\);

-- Location: LCFF_X63_Y24_N29
\inst1|wait_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|wait_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|wait_counter\(6));

-- Location: LCCOMB_X64_Y24_N16
\inst1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|Add0~13\ & (((!\inst1|wait_counter\(7))) # (!\Reset_ADC_comm~combout\))) # (!\inst1|Add0~13\ & (((\Reset_ADC_comm~combout\ & \inst1|wait_counter\(7))) # (GND)))
-- \inst1|Add0~15\ = CARRY(((!\inst1|Add0~13\) # (!\inst1|wait_counter\(7))) # (!\Reset_ADC_comm~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_ADC_comm~combout\,
	datab => \inst1|wait_counter\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X63_Y24_N18
\inst1|wait_counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|wait_counter~3_combout\ = (\inst1|Add0~14_combout\ & !\inst1|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~14_combout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|wait_counter~3_combout\);

-- Location: LCFF_X63_Y24_N19
\inst1|wait_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|wait_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|wait_counter\(7));

-- Location: LCCOMB_X64_Y24_N24
\inst1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst1|Add0~10_combout\ & \inst1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~10_combout\,
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X64_Y24_N30
\inst1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = (\inst1|LessThan0~0_combout\) # ((\inst1|LessThan0~1_combout\ & ((\inst1|Add0~8_combout\) # (\inst1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~8_combout\,
	datab => \inst1|LessThan0~2_combout\,
	datac => \inst1|LessThan0~1_combout\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|LessThan0~3_combout\);

-- Location: LCCOMB_X63_Y24_N20
\inst1|wait_flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|wait_flag~0_combout\ = (\inst1|wait_flag~regout\ & (!\inst1|done_flag~regout\ & ((\Reset_ADC_comm~combout\) # (\inst1|LessThan0~3_combout\)))) # (!\inst1|wait_flag~regout\ & (((\inst1|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_ADC_comm~combout\,
	datab => \inst1|done_flag~regout\,
	datac => \inst1|wait_flag~regout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|wait_flag~0_combout\);

-- Location: LCFF_X63_Y24_N21
\inst1|wait_flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|wait_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|wait_flag~regout\);

-- Location: LCCOMB_X63_Y24_N26
\inst1|data_counter[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|data_counter[3]~0_combout\ = ((!\inst1|done_flag~regout\ & ((!\inst1|wait_conv~0_combout\) # (!\inst1|first_clock~regout\)))) # (!\inst1|wait_flag~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|first_clock~regout\,
	datab => \inst1|done_flag~regout\,
	datac => \inst1|wait_flag~regout\,
	datad => \inst1|wait_conv~0_combout\,
	combout => \inst1|data_counter[3]~0_combout\);

-- Location: LCCOMB_X62_Y24_N30
\inst1|data_counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|data_counter~7_combout\ = (\inst1|data_counter\(3) & \Reset_ADC_comm~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_counter\(3),
	datad => \Reset_ADC_comm~combout\,
	combout => \inst1|data_counter~7_combout\);

-- Location: LCCOMB_X63_Y24_N4
\inst1|data_counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|data_counter~8_combout\ = (\inst1|data_counter~1_combout\ & ((\inst1|Add2~1_combout\) # ((\inst1|data_counter[3]~0_combout\ & \inst1|data_counter~7_combout\)))) # (!\inst1|data_counter~1_combout\ & (\inst1|data_counter[3]~0_combout\ & 
-- (\inst1|data_counter~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_counter~1_combout\,
	datab => \inst1|data_counter[3]~0_combout\,
	datac => \inst1|data_counter~7_combout\,
	datad => \inst1|Add2~1_combout\,
	combout => \inst1|data_counter~8_combout\);

-- Location: LCFF_X63_Y24_N5
\inst1|data_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|data_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|data_counter\(3));

-- Location: LCCOMB_X63_Y24_N12
\inst1|data_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|data_counter~1_combout\ = (\inst1|first_clock~regout\ & (!\inst1|done_flag~regout\ & (\inst1|wait_flag~regout\ & \inst1|wait_conv~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|first_clock~regout\,
	datab => \inst1|done_flag~regout\,
	datac => \inst1|wait_flag~regout\,
	datad => \inst1|wait_conv~0_combout\,
	combout => \inst1|data_counter~1_combout\);

-- Location: LCCOMB_X64_Y22_N4
\inst1|data_counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|data_counter~2_combout\ = (\Reset_ADC_comm~combout\ & ((\inst1|data_counter\(0) & (\inst1|data_counter[3]~0_combout\)) # (!\inst1|data_counter\(0) & ((\inst1|data_counter~1_combout\))))) # (!\Reset_ADC_comm~combout\ & 
-- (((\inst1|data_counter~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_counter[3]~0_combout\,
	datab => \Reset_ADC_comm~combout\,
	datac => \inst1|data_counter\(0),
	datad => \inst1|data_counter~1_combout\,
	combout => \inst1|data_counter~2_combout\);

-- Location: LCFF_X64_Y22_N5
\inst1|data_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|data_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|data_counter\(0));

-- Location: LCCOMB_X64_Y22_N12
\inst1|data_counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|data_counter~5_combout\ = (\inst1|data_counter~1_combout\ & (\inst1|data_counter\(2) $ (((\inst1|data_counter\(1) & \inst1|data_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_counter\(1),
	datab => \inst1|data_counter\(2),
	datac => \inst1|data_counter\(0),
	datad => \inst1|data_counter~1_combout\,
	combout => \inst1|data_counter~5_combout\);

-- Location: LCCOMB_X64_Y22_N28
\inst1|data_counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|data_counter~6_combout\ = (\Reset_ADC_comm~combout\ & ((\inst1|data_counter~5_combout\) # ((\inst1|data_counter[3]~0_combout\ & \inst1|data_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_counter[3]~0_combout\,
	datab => \Reset_ADC_comm~combout\,
	datac => \inst1|data_counter\(2),
	datad => \inst1|data_counter~5_combout\,
	combout => \inst1|data_counter~6_combout\);

-- Location: LCFF_X64_Y22_N29
\inst1|data_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|data_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|data_counter\(2));

-- Location: LCCOMB_X64_Y22_N2
\inst1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~0_combout\ = (\inst1|data_counter\(1) & (\Reset_ADC_comm~combout\ & (\inst1|data_counter\(0) & \inst1|data_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|data_counter\(1),
	datab => \Reset_ADC_comm~combout\,
	datac => \inst1|data_counter\(0),
	datad => \inst1|data_counter\(2),
	combout => \inst1|Add2~0_combout\);

-- Location: LCCOMB_X63_Y24_N2
\inst1|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add2~1_combout\ = \inst1|Add2~0_combout\ $ (((\Reset_ADC_comm~combout\ & \inst1|data_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_ADC_comm~combout\,
	datac => \inst1|data_counter\(3),
	datad => \inst1|Add2~0_combout\,
	combout => \inst1|Add2~1_combout\);

-- Location: LCCOMB_X62_Y24_N28
\inst1|done_flag~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|done_flag~2_combout\ = (\inst1|wait_flag~regout\ & (\inst1|done_flag~1_combout\ & (!\inst1|done_flag~regout\ & \inst1|Add2~1_combout\))) # (!\inst1|wait_flag~regout\ & (((\inst1|done_flag~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|done_flag~1_combout\,
	datab => \inst1|wait_flag~regout\,
	datac => \inst1|done_flag~regout\,
	datad => \inst1|Add2~1_combout\,
	combout => \inst1|done_flag~2_combout\);

-- Location: LCFF_X62_Y24_N29
\inst1|done_flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|done_flag~2_combout\,
	sclr => \ALT_INV_Reset_ADC_comm~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|done_flag~regout\);

-- Location: LCCOMB_X63_Y24_N0
\inst1|wait_conv~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|wait_conv~1_combout\ = (\inst1|wait_flag~regout\ & (!\inst1|done_flag~regout\)) # (!\inst1|wait_flag~regout\ & (((\inst1|wait_conv~regout\ & \Reset_ADC_comm~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|wait_flag~regout\,
	datab => \inst1|done_flag~regout\,
	datac => \inst1|wait_conv~regout\,
	datad => \Reset_ADC_comm~combout\,
	combout => \inst1|wait_conv~1_combout\);

-- Location: LCFF_X63_Y24_N1
\inst1|wait_conv\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	datain => \inst1|wait_conv~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|wait_conv~regout\);

-- Location: LCCOMB_X63_Y24_N10
\inst1|wait_conv~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|wait_conv~0_combout\ = (\Reset_ADC_comm~combout\ & \inst1|wait_conv~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_ADC_comm~combout\,
	datad => \inst1|wait_conv~regout\,
	combout => \inst1|wait_conv~0_combout\);

-- Location: LCFF_X64_Y24_N21
\inst1|s_wait_conv\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	sdata => \inst1|wait_conv~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|s_wait_conv~regout\);

-- Location: LCCOMB_X64_Y23_N16
\inst1|S_CLK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|S_CLK~0_combout\ = (\Buffer_in~combout\ & \inst1|s_wait_conv~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Buffer_in~combout\,
	datad => \inst1|s_wait_conv~regout\,
	combout => \inst1|S_CLK~0_combout\);

-- Location: LCCOMB_X63_Y24_N30
\inst1|CS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|CS~0_combout\ = (\inst1|wait_flag~regout\ & (((\inst1|done_flag~regout\)))) # (!\inst1|wait_flag~regout\ & (((\inst1|CS~regout\)) # (!\Reset_ADC_comm~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset_ADC_comm~combout\,
	datab => \inst1|done_flag~regout\,
	datac => \inst1|wait_flag~regout\,
	datad => \inst1|CS~regout\,
	combout => \inst1|CS~0_combout\);

-- Location: LCFF_X64_Y24_N25
\inst1|CS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Buffer_in~combout\,
	sdata => \inst1|CS~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|CS~regout\);

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DOUT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DOUT,
	combout => \DOUT~combout\);

-- Location: LCCOMB_X64_Y20_N16
\inst7|LEDS[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LEDS[11]~feeder_combout\ = \inst7|r_state.check_functioncode~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|r_state.check_functioncode~regout\,
	combout => \inst7|LEDS[11]~feeder_combout\);

-- Location: LCFF_X64_Y20_N17
\inst7|LEDS[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|LEDS[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LEDS\(11));

-- Location: LCCOMB_X64_Y20_N18
\inst7|LEDS[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LEDS[10]~feeder_combout\ = \inst7|r_state.check_functioncode~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|r_state.check_functioncode~regout\,
	combout => \inst7|LEDS[10]~feeder_combout\);

-- Location: LCFF_X64_Y20_N19
\inst7|LEDS[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|LEDS[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LEDS\(10));

-- Location: LCCOMB_X64_Y20_N4
\inst7|LEDS[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LEDS[9]~feeder_combout\ = \inst7|r_state.check_functioncode~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|r_state.check_functioncode~regout\,
	combout => \inst7|LEDS[9]~feeder_combout\);

-- Location: LCFF_X64_Y20_N5
\inst7|LEDS[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|LEDS[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LEDS\(9));

-- Location: LCCOMB_X64_Y20_N6
\inst7|LEDS[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LEDS[8]~feeder_combout\ = \inst7|r_state.check_functioncode~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|r_state.check_functioncode~regout\,
	combout => \inst7|LEDS[8]~feeder_combout\);

-- Location: LCFF_X64_Y20_N7
\inst7|LEDS[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|LEDS[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LEDS\(8));

-- Location: LCCOMB_X62_Y24_N26
\inst7|LEDS[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LEDS[7]~feeder_combout\ = \inst7|r_state.check_address~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|r_state.check_address~regout\,
	combout => \inst7|LEDS[7]~feeder_combout\);

-- Location: LCFF_X62_Y24_N27
\inst7|LEDS[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|LEDS[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LEDS\(7));

-- Location: LCCOMB_X62_Y24_N0
\inst7|LEDS[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LEDS[6]~feeder_combout\ = \inst7|r_state.check_address~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|r_state.check_address~regout\,
	combout => \inst7|LEDS[6]~feeder_combout\);

-- Location: LCFF_X62_Y24_N1
\inst7|LEDS[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|LEDS[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LEDS\(6));

-- Location: LCCOMB_X62_Y24_N22
\inst7|LEDS[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LEDS[5]~feeder_combout\ = \inst7|r_state.check_address~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|r_state.check_address~regout\,
	combout => \inst7|LEDS[5]~feeder_combout\);

-- Location: LCFF_X62_Y24_N23
\inst7|LEDS[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|LEDS[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LEDS\(5));

-- Location: LCCOMB_X62_Y24_N8
\inst7|LEDS[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LEDS[4]~feeder_combout\ = \inst7|r_state.check_address~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|r_state.check_address~regout\,
	combout => \inst7|LEDS[4]~feeder_combout\);

-- Location: LCFF_X62_Y24_N9
\inst7|LEDS[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|LEDS[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LEDS\(4));

-- Location: LCCOMB_X64_Y20_N8
\inst7|LEDS[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LEDS[3]~0_combout\ = !\inst7|r_state.idle~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|r_state.idle~regout\,
	combout => \inst7|LEDS[3]~0_combout\);

-- Location: LCFF_X64_Y20_N9
\inst7|LEDS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|LEDS[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LEDS\(3));

-- Location: LCCOMB_X64_Y20_N10
\inst7|LEDS[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LEDS[2]~1_combout\ = !\inst7|r_state.idle~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|r_state.idle~regout\,
	combout => \inst7|LEDS[2]~1_combout\);

-- Location: LCFF_X64_Y20_N11
\inst7|LEDS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|LEDS[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LEDS\(2));

-- Location: LCCOMB_X64_Y20_N20
\inst7|LEDS[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LEDS[1]~2_combout\ = !\inst7|r_state.idle~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|r_state.idle~regout\,
	combout => \inst7|LEDS[1]~2_combout\);

-- Location: LCFF_X64_Y20_N21
\inst7|LEDS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|LEDS[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LEDS\(1));

-- Location: LCCOMB_X64_Y20_N22
\inst7|LEDS[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LEDS[0]~3_combout\ = !\inst7|r_state.idle~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|r_state.idle~regout\,
	combout => \inst7|LEDS[0]~3_combout\);

-- Location: LCFF_X64_Y20_N23
\inst7|LEDS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_Buffer_in~combout\,
	datain => \inst7|LEDS[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|LEDS\(0));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
inst : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|output_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_DATA);

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|S_CLK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S_CLK);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|CS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CS);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SHDN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SHDN);

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Buffer_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Buffer_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Buffer_out);

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\S_CLK_debug~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|S_CLK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_S_CLK_debug);

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CS_debug~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|CS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CS_debug);

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DOUT_debug~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \DOUT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_DOUT_debug);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD01s[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD01s(6));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD01s[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD01s(5));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD01s[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD01s(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD01s[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD01s(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD01s[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD01s(2));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD01s[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD01s(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD01s[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD01s(0));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD10s[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD10s(6));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD10s[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD10s(5));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD10s[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD10s(4));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD10s[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD10s(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD10s[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD10s(2));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD10s[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD10s(1));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD10s[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD10s(0));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1s[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1s(6));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1s[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1s(5));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1s[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1s(4));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1s[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1s(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1s[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1s(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1s[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1s(1));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1s[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1s(0));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|LEDS\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(11));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|LEDS\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(10));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|LEDS\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(9));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|LEDS\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(8));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|LEDS\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(7));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|LEDS\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(6));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|LEDS\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(5));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|LEDS\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(4));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|LEDS\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(3));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|LEDS\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(2));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|LEDS\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(1));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDS[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|LEDS\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDS(0));
END structure;

